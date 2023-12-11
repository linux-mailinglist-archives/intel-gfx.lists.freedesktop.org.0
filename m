Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7212280C09F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 06:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCA410E00B;
	Mon, 11 Dec 2023 05:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E4F10E00B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702271828; x=1733807828;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9FiSDG6goASYquUMVd4AbF+oYBXZIqvFLeKAam1I8V4=;
 b=POP32kMSaxScko2cuINJUJ9ffof2rKTn9XXeZc4xvTbW+I+xKgFIVpWh
 Oj39UT6VQs3JsNcIkY9Cdb+6RC8Xtdsck6Lpl2ZANYT7cshNw587h5eqK
 8uCy0FAjfRSCc8Z5bkakO1Ot5+rCQ1tXYoNcRUlBoirKpxX4bq8xLFy5d
 SR6c8pHuj8ThvBnthrBwA0YwKl4DZgdFEf/0X+osziYwNyFloxjvpUOcP
 us5/euqGOnChk3PsexG+LotjkkmWhzKyq67L2IemFrD/YB+ldRr9T+1Re
 NsTFOfH9BC7HpYiGNooI3hM7frrw8hCiJgvVRiaI+dArTNgL9wF1pHzg6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="374098770"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="374098770"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 21:17:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="14278043"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 21:17:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Update dfp caps only if its a branch device
Date: Mon, 11 Dec 2023 10:41:27 +0530
Message-Id: <20231211051127.2774407-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Avoid checking for Downstream Facing Port capabilities,
if its not a DP branch device.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b2482bf683f..bef797b63000 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5502,6 +5502,9 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return;
+
 	intel_dp->dfp.max_bpc =
 		drm_dp_downstream_max_bpc(intel_dp->dpcd,
 					  intel_dp->downstream_ports, drm_edid);
-- 
2.40.1

