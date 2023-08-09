Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCCF775535
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 10:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB8510E245;
	Wed,  9 Aug 2023 08:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E72810E245
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691569762; x=1723105762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P+JmZ98wW5GoVuz7/GdcYOJRH4PWUEtb+JQvrsOfYC8=;
 b=EHGnIpZs2QzuFHg1Xk4DcZav95kMY8uTxoQpALgh3FdsMeRLFcsbnRYE
 IVo1+TQxo+AwipUHCWI60DnVSh/gn8O21+HAD+08KdMxIUWuBQVeA98Ly
 svQZea/4YxVR0DAI0ABe6SKoEwdeRY32m6jKbnNn5LSDy9Rr0mwq7XNO9
 vvRUxZkPdBHUQHiNpZHNuWVmuDXewpaLgr2kiX15uYutcEVeBpMhXeO9V
 kTikUjBVqmvS7PlYsu5ba9sjdF3PiqbZVfL2VnuMvzBbPIm4QszUfjumY
 D/XjVXdz+9+jTGt0LhgI8WAPOHzWpNuMT5ih6+mcPSxKckkh7kt6D0ODX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="374773163"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="374773163"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="734913210"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="734913210"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga007.fm.intel.com with ESMTP; 09 Aug 2023 01:29:19 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 11:29:18 +0300
Message-Id: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix mistake in
 intel_modeset_all_pipes condition
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is supposed to be "!intel_crtc_needs_modeset" - otherwise,
we are active exactly vice versa for active pipes: skipping if modeset
is needed and not skipping if not needed.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f32..4b1d7034078ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5439,7 +5439,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			return PTR_ERR(crtc_state);
 
 		if (!crtc_state->hw.active ||
-		    intel_crtc_needs_modeset(crtc_state))
+		    !intel_crtc_needs_modeset(crtc_state))
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
-- 
2.37.3

