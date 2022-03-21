Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABEB4E1E94
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 02:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E119D10E15A;
	Mon, 21 Mar 2022 01:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CC7110E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 01:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647825105; x=1679361105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ji9BD/VEMQqjrNEkSADN8q1fCfWtXFbiNk6AUO2PuW8=;
 b=AzcAnR1nsEC/GDHa7jLhJGhay+21oqLBTkyckeanVRynz5AWXsHXLHEG
 65Goucs5fMAstHhTO4EBD8355umTuhRsUWHAOHFEDDxmoS4jvORAcjn6G
 lhkn4P9XeQRdg1eE3ARzCsgffaJRTi65ms02vyHSgmmi3BJ15TDAOgsJg
 TdmZzBOSTxJs1i8Jb62J6xZnVj/e9vcXZjKnjVjrmXBl79KBabtvRcktS
 vQLJ8HzzA7HinonkRVxu2a2BAo7hEsgzR0jBByqdQy39ZR649BZZtBJaR
 LbHrRMd2te3evyzsFRus5KCx5rUih/YxdqOIrOrRLtfwWIC/RuLPFUfaN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="257164689"
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="257164689"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2022 18:11:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,197,1643702400"; d="scan'208";a="824056212"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2022 18:11:44 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Mar 2022 17:54:31 -0700
Message-Id: <20220321005431.1113890-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <f2d2fcab-447a-4e18-19ed-3615cd5d1cd4@linux.intel.com>
References: <f2d2fcab-447a-4e18-19ed-3615cd5d1cd4@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Don't evict unmappable VMAs
 when pinning with PIN_MAPPABLE (v2)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
more framebuffers/scanout buffers results in only one that is mappable/
fenceable. Therefore, pageflipping between these 2 FBs where only one
is mappable/fenceable creates latencies large enough to miss alternate
vblanks thereby producing less optimal framerate.

This mainly happens because when i915_gem_object_pin_to_display_plane()
is called to pin one of the FB objs, the associated vma is identified
as misplaced -- because there is no space for it in the aperture --
and therefore i915_vma_unbind() is called which unbinds and evicts it.
This misplaced vma gets subseqently pinned only when
i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This whole
thing results in a latency of ~10ms and happens every other repaint cycle.
Therefore, to fix this issue, we just ensure that the misplaced VMA
does not get evicted when we try to pin it with PIN_MAPPABLE -- by
returning early if the mappable/fenceable flag is not set.

Testcase:
Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
with a 8K@60 mode results in only ~40 FPS (compared to ~59 FPS with
this patch). Since upstream Weston submits a frame ~7ms before the
next vblank, the latencies seen between atomic commit and flip event
are 7, 24 (7 + 16.66), 7, 24..... suggesting that it misses the
vblank every other frame.

Here is the ftrace snippet that shows the source of the ~10ms latency:
              i915_gem_object_pin_to_display_plane() {
0.102 us   |    i915_gem_object_set_cache_level();
                i915_gem_object_ggtt_pin_ww() {
0.390 us   |      i915_vma_instance();
0.178 us   |      i915_vma_misplaced();
                  i915_vma_unbind() {
                  __i915_active_wait() {
0.082 us   |        i915_active_acquire_if_busy();
0.475 us   |      }
                  intel_runtime_pm_get() {
0.087 us   |        intel_runtime_pm_acquire();
0.259 us   |      }
                  __i915_active_wait() {
0.085 us   |        i915_active_acquire_if_busy();
0.240 us   |      }
                  __i915_vma_evict() {
                    ggtt_unbind_vma() {
                      gen8_ggtt_clear_range() {
10507.255 us |        }
10507.689 us |      }
10508.516 us |   }

v2:
- Expand the code comments to describe the ping-pong issue.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9747924cc57b..44741f842852 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -939,8 +939,19 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 			if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
 				return ERR_PTR(-ENOSPC);
 
+			/*
+			 * If this misplaced vma is too big (i.e, at-least
+			 * half the size of aperture) or hasn't been pinned
+			 * mappable before, we ignore the misplacement when
+			 * PIN_NONBLOCK is set in order to avoid the ping-pong
+			 * issue described above. In other words, we try to
+			 * avoid the costly operation of unbinding this vma
+			 * from the GGTT and rebinding it back because there
+			 * may not be enough space for this vma in the aperture.
+			 */
 			if (flags & PIN_MAPPABLE &&
-			    vma->fence_size > ggtt->mappable_end / 2)
+			    (vma->fence_size > ggtt->mappable_end / 2 ||
+			    !i915_vma_is_map_and_fenceable(vma)))
 				return ERR_PTR(-ENOSPC);
 		}
 
-- 
2.35.1

