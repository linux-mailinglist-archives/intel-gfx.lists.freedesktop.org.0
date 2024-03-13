Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501EB87A87B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF5310E1E3;
	Wed, 13 Mar 2024 13:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsTIbrZ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FF110E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 13:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710336760; x=1741872760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jVubC4QvMl5CmJtOrF5RFRN26DjYEMh8jVLXHb0pQBE=;
 b=AsTIbrZ8ua0mvlDVq7rIz9sS59oytvl3VRoNdfq/R769EV52bWh60/9J
 K242gPMWpSdVIrjMEI75KYW2gufVHncYOdMD3gUAZLCHPU1ZFynLiK4u4
 bPNkgO0jbuTDBdr5dnnYuJNAMboEChysk5G/w7WcpQ29ki3CFb9kU/1oU
 M9SV1SwbYcYPIYSUeHCBcjW3AzTztFxhM5YwfrhZXiBcTsCajbBR1ckez
 P5gjLLOD1tsm4WeSJpdTgfwBZTioZps4LILO0WGZdGaNWXFRiEoA/s1XK
 H2HTDwO3q7+zTrewg0VDtDx7VetDMr22pLRS0ShPWq7ULJdTdSvuGNnby w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="30537780"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="30537780"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11977911"
Received: from dgaudrex-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 1/4] drm/i915/display: Make intel_dp_aux_fw_sync_len
 available for PSR code
Date: Wed, 13 Mar 2024 15:32:18 +0200
Message-Id: <20240313133221.868391-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313133221.868391-1-jouni.hogander@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
wake and fast wake lines. Convert intel_dp_aux_fw_sync_len as non-static
to make it available for PSR code.

v2: use int instead of u8

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 4f4a0e3b3114..7e69be100d90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -143,7 +143,7 @@ static int intel_dp_aux_sync_len(void)
 	return precharge + preamble;
 }
 
-static int intel_dp_aux_fw_sync_len(void)
+int intel_dp_aux_fw_sync_len(void)
 {
 	int precharge = 10; /* 10-16 */
 	int preamble = 8;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 8447f3e601fe..76d1f2ed7c2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -20,5 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
 void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
 u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
+int intel_dp_aux_fw_sync_len(void);
 
 #endif /* __INTEL_DP_AUX_H__ */
-- 
2.34.1

