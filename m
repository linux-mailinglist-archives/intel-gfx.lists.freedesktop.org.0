Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB39BCAFC65
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F8B10E4FA;
	Tue,  9 Dec 2025 11:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Du8Q3dDV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F00810E4FA;
 Tue,  9 Dec 2025 11:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279862; x=1796815862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AjLKgkQQiDfDc+HF/Rk7EKHDYmLtxUfpOTjyM8uYW0A=;
 b=Du8Q3dDVWSwzu488ujJedXM2DsciHqlr6TGWeFL58BOl6ZVdSGwj6+CL
 p3KWpObooqfgxd02FtRf52JdL30ocEe802InPXdezyOvQDdU8r6vxHmwR
 1FxRdPIOgtED3MLf3WRknUKqq6JpYCkyiE8UDhzVTvktpMWjTjzbbOdKY
 HPXcG+IshSI2urAy9YBfAomuDpSteSfRqmIRC//IvBeojbTvOPKWyo5WX
 KU6DQ6QuFFNqIYCbvi9QPDv6gKttxW7ltfVwtAfcGgMxm8HCSPJ9SRj/M
 /RH95pV9dDbjQxJIX7/ptRIw65TkigMLnVI33ZMCvvCl699WihLZx0Epa Q==;
X-CSE-ConnectionGUID: WiHHGwmZQwOZyZxaLHk6Ng==
X-CSE-MsgGUID: eEnaD7klQvOvtVLep+BipA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699657"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699657"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:02 -0800
X-CSE-ConnectionGUID: E+Bf2UEtRamucx25Nho+tA==
X-CSE-MsgGUID: uriF0VAvRUiWHUqQAVBwTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213407"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:01 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 6/9] drm/i915/display: alpm enable DC3CO support
Date: Tue,  9 Dec 2025 17:03:29 +0530
Message-ID: <20251209113332.2770263-7-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
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

if DC3CO allowed set PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL
in ALPM_CTL and update dc3co_source

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 4 ++++
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 7ce8c674bb03..28a95f6ddfab 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -347,6 +347,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state->alpm_state.check_entry_lines);
 
+	if (intel_dc3co_allowed(display)) {
+		alpm_ctl |= (PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL);
+		intel_dc3co_source_set(display, DC3CO_SOURCE_ALPM);
+	}
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
 	mutex_unlock(&intel_dp->alpm.lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8afbf5a38335..16a9e3af198d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -268,6 +268,7 @@
 
 #define _PR_ALPM_CTL_A	0x60948
 #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
+#define  PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL			BIT(7)
 #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
 #define  PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
 #define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
-- 
2.43.0

