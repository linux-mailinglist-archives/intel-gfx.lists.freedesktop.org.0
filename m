Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4C27DF765
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 17:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752AC10E91E;
	Thu,  2 Nov 2023 16:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB7610E92F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 16:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698941302; x=1730477302;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nNkdldxVRO44ixjeBkZb8cakJkY1vMbC/SsSPl6gFKU=;
 b=ONRLIx7CjMPdfSqnNXgKloN3L2CQcpNK6E0rsRjbLUBLnao1rz+xAZ4l
 ZqbnhFE4SIW1zZ7KnmeM9Dx7JiqVaB73wcuCWozjGv1fIjVLejCu7VjIs
 ZXQcb5zs2QrOjDBYxt/6d/oZ64MHNdraGYRYnyCY0cTNPKwgD/aGfFkEM
 iUEOC7j0sr5Ad8h7Gr8wigb9GOStmNdEBzC1Smv7LRKuAJIzoXDewGBGb
 2eAIHQ/B2NE84mpuf2+VO1J1B85lVZqOwKttfVO7wf/7H0jGMe39M9cgZ
 Yfxg0MJaKg3aGGwWKngHob0H6sXZXWLXYEOhibXC6OeLDPOUQBH6IpNDN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="7386599"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="7386599"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:08:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="790430785"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="790430785"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:08:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 09:06:44 -0700
Message-Id: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d is
 enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Experiments were conducted with different multipliers to VTD_GUARD macro
with multiplier of 185 we were observing occasional pipe faults when
running kms_cursor_legacy --run-subtest single-bo

There could possibly be an underlying issue that is being investigated, for
now bump the guard pages for MTL.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 3770828f2eaf..b65f84c6bb3f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	if (intel_scanout_needs_vtd_wa(i915)) {
 		unsigned int guard = VTD_GUARD;
 
+		if (IS_METEORLAKE(i915))
+			guard *= 200;
+
 		if (i915_gem_object_is_tiled(obj))
 			guard = max(guard,
 				    i915_gem_object_get_tile_row_size(obj));
-- 
2.34.1

