Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC8AA13248
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 06:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6879A10E8AD;
	Thu, 16 Jan 2025 05:19:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5d1LUwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A1010E551;
 Thu, 16 Jan 2025 05:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737004789; x=1768540789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wtj6hJ/A3xVA67luFkOHDqExv5PFNG0X9M5bpXSm+pI=;
 b=Q5d1LUwRsAFQZK14332SkRzVCyZNMVFWfpww93VJ8wQ5El3d/Kgs27NR
 0WOWTFCX7jweBd5X7f9n4nO2c+9PKzMI7xqx2RJzzRSyWvKZa6EB7APR6
 CfVWteKLJ4fhffk3gNGah+4LRrEzZ3u/2EhVCOVKH0Tn4MYxR0tWeZ3pu
 hs9Ydrpwuyz0CExI+s5sjF0jGM6AzTFiSe/vNfd122PYsXAfl8NiL+uCq
 X28nO+z5MeeV5qIsim7XTATR/EOsucsZgCt4SlVEYTq6x7mmIHtlEXOpv
 nZ1T+6P6GictHovWAFI0BU0cAjkMFKPSNBNK7kkUwBA9x4lKdgmoQpo5G g==;
X-CSE-ConnectionGUID: 2OXFNrc6RjGcHa+H69yegw==
X-CSE-MsgGUID: jE55WohZSFqCV5kAOXeWfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37533063"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37533063"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:19:48 -0800
X-CSE-ConnectionGUID: I/UIMnirTZG1D5sYDw/ALw==
X-CSE-MsgGUID: IW7Z5rvjRm+cYLiAzfHj7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109403413"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jan 2025 21:19:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Use correct function to check if encoder is
 HDMI
Date: Thu, 16 Jan 2025 10:49:28 +0530
Message-Id: <20250116051928.981578-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Use intel_encoder_is_hdmi function which was recently introduced to
see if encoder is HDMI or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7464b44c8bb3..378bc5c2927b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -41,7 +41,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
 	u32 rekey_bit = 0;
 
 	/* Here we assume HDMI is in TMDS mode of operation */
-	if (encoder->type != INTEL_OUTPUT_HDMI)
+	if (intel_encoder_is_hdmi(encoder))
 		return;
 
 	if (DISPLAY_VER(display) >= 30) {
-- 
2.34.1

