Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7325C897E04
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388B21131A8;
	Thu,  4 Apr 2024 03:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N28+0XB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48131131AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201538; x=1743737538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N06PNUC7LknWmxxJ/52xcy7miV/A74W73T95uk00bqU=;
 b=N28+0XB97lLbeAMpTFRWcoKI2LiZZKLpRfOogGFbh7csxvCpTnQwCYxh
 Ui6rSvXMRhkuY6ztWnPzgqfcRFBzHo0FxfTaxGh0V+FiIdedP6UZHneCE
 isLF7tCpBsZFraby8Htt90zuN3Gk451DoL+2AydZufOnVXFFs6uG2LvIr
 wPPwkMeE8/B4Dt1ittZ9/WWEJ+TKkUIlVFiyv4dk99GB9Gh1Vfm97JaIP
 o2mCZ5buwBtlXJwkMhSl+45mY5NaMGAwD1vZMgoHfUD5nfWqx7t28qY8E
 feSrTH8U5pa6BUSiGwiAmku0QC/8mJ/KdybJ4azJZc5Z6tehz3bOJhvlR w==;
X-CSE-ConnectionGUID: 89ZnZxMHQvyAW+25M0IVDg==
X-CSE-MsgGUID: yGhDGQvxTIGyaA62j6Ya5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282646"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282646"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:18 -0700
X-CSE-ConnectionGUID: WKpljlVQQxKC8grDVV6rMg==
X-CSE-MsgGUID: 8C6q+1juQ/26LFBtF7Q7Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747759"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:32:15 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 7/7] drm/i915/dp: Limit brightness level to 20
Date: Thu,  4 Apr 2024 08:59:31 +0530
Message-ID: <20240404032931.380887-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-2-suraj.kandpal@intel.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Limit minimum brightness to 20 when using aux based brightness
control to avoid letting the screen going completely blank.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 20dd5a6a0f3f..b54ea7e46954 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -211,6 +211,9 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	u8 buf[4] = {};
 
+	if (level < 20)
+		level = 20;
+
 	buf[0] = level & 0xFF;
 	buf[1] = (level & 0xFF00) >> 8;
 
-- 
2.43.2

