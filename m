Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CACE601123
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 16:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E54F10E718;
	Mon, 17 Oct 2022 14:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98EB10E760
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 14:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666017019; x=1697553019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NHwvLUe6Yt0Yjsf7tGagzCm7NzD93SP4NZ1zk/kHn1M=;
 b=HpkAaDE/2n+cSuP9UyEU7vll9zv8CY7SAkDAPQFL6Cis2MHYHATq+Sy9
 xxKqMLz/L8qCi0nBNHbUN5fZVeTaTqGsICNyQ0kUm1TqbatgOqFX668we
 +RUmpWeCdf8kZKuIF56PYiKgg4bwhhroInNvo2RWekHYN5BQxItOcQpYE
 qLqceyXnvl/d1ZTVnnYPmmxik5HJQx22Dflxv9hYGuYQUF7qm1uSHimEH
 iNRS15aumf8CnbD8OkDnjUecvTtV6K+cG2ZUJ9ru+X9Ltcbtg6TDM/Vv4
 9jKiXiAngi3D2yMQkTVZIZQ0EgbMicCVSxa0v2evKrU8Dh+B5WqrBpqZy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="332348792"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="332348792"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957353063"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="957353063"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 20:00:37 +0530
Message-Id: <20221017143038.1748319-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Drop check for doublescan
 mode in modevalid
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

Since the DP/HDMI connector do not set connector->doublescan_allowed,
the doublescan modes will get automatically filtered during
drm_helper_probe_single_connector_modes().

Therefore check for double scan modes is not required and is dropped
from modevalid functions for both DP and HDMI.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 3 ---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a060903891b2..1f83ddf13928 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -973,9 +973,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	enum drm_mode_status status;
 	bool dsc = false, bigjoiner = false;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..e21deb6ef7fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1987,9 +1987,6 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
 		clock *= 2;
 
-- 
2.25.1

