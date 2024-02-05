Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB9684940D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 07:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4419A10F351;
	Mon,  5 Feb 2024 06:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLmQ+kVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075D31123E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707116133; x=1738652133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iJyuCVPR1X8NzVR47MPCtXwcbsDBL0g0BJjA6kJI9sE=;
 b=jLmQ+kVKe7TOgVyDJ1Wqgkj1GxL9tqvMcJ9OqcQZu6kDtQGjOBQBWvjV
 0JyARzzxKWC05v1fxtsivEZoKoheu9UeaQE/qEGZ1F3r2S983bOje16+d
 mfptLPkulybWnzUHYFaozZfYy/ccMJD+58xddrFUnmCaEsE1vgLRajS8z
 nlrr55RuVv5RU5HzMQO/K6w5jnkKiowtyse5XjhJJgAlAcd0gYhzcniaT
 4FfBf/o729JG9E9AFrsfWNvkuB8lToC+GmKmU/mXhCFmWWD8RzG3dMUPD
 Aa8kvsEuWNoWxwbqvp3I4jJgtKoOBtny6xOb9lSFU1dpIG4pQmrC0wdQK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="11819707"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="11819707"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 22:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31438007"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 04 Feb 2024 22:55:31 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/6] drm/i915: Add sanity check before accessing fb buffer
 object
Date: Mon,  5 Feb 2024 12:18:35 +0530
Message-Id: <20240205064836.3645402-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
References: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Now that cursor plane fb unpinning can be deferred to vblank work
access the fb object only when vblank unpin worker is not scheduled.

v2: - Remove misleading error log
    - Change condition for accessing fb object

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a585e4aca309..8395cba243dd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1171,12 +1171,16 @@ static void
 intel_cleanup_plane_fb(struct drm_plane *plane,
 		       struct drm_plane_state *_old_plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(_old_plane_state->plane->dev);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(_old_plane_state);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(old_plane_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(plane->dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(old_plane_state->hw.fb);
+	struct drm_i915_gem_object *obj = NULL;
+
+	if (!old_plane_state->unpin_work.vblank)
+		obj = intel_fb_obj(old_plane_state->hw.fb);
 
 	if (!obj)
 		return;
-- 
2.25.1

