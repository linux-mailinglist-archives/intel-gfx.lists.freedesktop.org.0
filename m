Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363CE9ABF46
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E7610E754;
	Wed, 23 Oct 2024 06:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrzwbihS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2814110E752;
 Wed, 23 Oct 2024 06:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666248; x=1761202248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1F65pNLn0D24U+0KhF+Wug4i181TXtUPq/nQpIEbOTo=;
 b=QrzwbihSayNvFwrxRxsiEzT6py7FZqdjW6HulSPVyOy3c/KM4JVRkm7p
 TMOdWWmxud64ejFboL2wdngHcGP3xVfZxmdQV2R6nxR68Vd1HJld+XD52
 3MrD2LVbXBp7/K0JPINO5qcniLkR85dSLQITyceNUEOsJe9+BAPyBSitt
 j58q1II8kB95nDHAg/Bv1BitmdFppOurpWxTx1ebhHM854HO7HWyJlU6n
 /25vRzQbIbuZY4wkKUcdDdV+K1rPvgKoF+LZSAleK0rMOz3lg2M3l26Iw
 dRkZlK6kSzY0kWp2YDJrNdPPNsxWYWNhM2vXCkOSjF3cWEUUl2UKownHB Q==;
X-CSE-ConnectionGUID: npcoydrMTZ64TZGhAdrYGg==
X-CSE-MsgGUID: 9a/wOesrStucwEUD60r3Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097468"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097468"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:48 -0700
X-CSE-ConnectionGUID: 7C3JKX0/QfO/RSD4KRFVgQ==
X-CSE-MsgGUID: N3hLZ7qhT9iKe/qbrWXoCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691503"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 04/16] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Date: Wed, 23 Oct 2024 12:22:45 +0530
Message-ID: <20241023065257.190035-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Introduce the register bits to enable the 3rd DSC engine VDSC2.
Add support to read/write these bits.

v2: Only introduce bits that are used and update the subject and commit
message. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 10 +++++++++-
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  2 ++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 159f83edd5b0..29b1aa7f4f94 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -775,6 +775,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
+
+	if (vdsc_instances_per_pipe > 2) {
+		dss_ctl2_val |= VDSC2_ENABLE;
+		dss_ctl2_val |= SMALL_JOINER_CONFIG_3_ENGINES;
+	}
+
 	if (crtc_state->joiner_pipes) {
 		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
 			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
@@ -977,7 +983,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		goto out;
 
 	if (dss_ctl1 & JOINER_ENABLE) {
-		if (dss_ctl2 & VDSC1_ENABLE)
+		if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
+			crtc_state->dsc.num_streams = 3;
+		else if (dss_ctl2 & VDSC1_ENABLE)
 			crtc_state->dsc.num_streams = 2;
 		else
 			crtc_state->dsc.num_streams = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index d7a72b95ee7e..474a7f9f3881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -22,6 +22,8 @@
 
 #define DSS_CTL2				_MMIO(0x67404)
 #define  VDSC0_ENABLE				REG_BIT(31)
+#define  VDSC2_ENABLE				REG_BIT(30)
+#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
 #define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-- 
2.45.2

