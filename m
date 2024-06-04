Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2918FB756
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DC210E519;
	Tue,  4 Jun 2024 15:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZmWvYF8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF63B10E522
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515090; x=1749051090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yC2TgFzyh8/ULkDwfF0A/iJTUvzHBCjiJixZYJ1TG+c=;
 b=eZmWvYF84k75Sq3PYLZhCe/e2t2XjIVet16jIa0hSxmOWucF10/4E+W2
 eWk+KRY1q0LsYhh/iU+jR2beZiWC+cTseHQjnufFt3uYeifLgc0CYDe5F
 srZgOyWNbKyobwWSJOqJZYw2D52dIh198ozjywf8YnWgbKuV/o6dghjc5
 6qLWiAAeM7lZd61t98YsXnvMc2aMajnqgwVQccEfWFIImPuRPri4PaYIs
 zKRU4xyVeLHOYGh1Lrs/WZqsZfnNRnj35YgShfcT2KKFSMuXOynTrr4iR
 MCi95YzeuEj4VhwJL7BpaGAjwSSmZneFL2RqRTTs9t8MKHrua+GpewgtH A==;
X-CSE-ConnectionGUID: RNJQyuqpTh29rWUU0jeEKw==
X-CSE-MsgGUID: 5a6WnBYySkS+WvSAwBm5pg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733660"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733660"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:30 -0700
X-CSE-ConnectionGUID: PK5zvf7DQzqID8rjbRYurw==
X-CSE-MsgGUID: 2shgFW5KR5y12axCXf7U1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828151"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 63/65] drm/i915: pass dev_priv explicitly to TRANS_MSA_MISC
Date: Tue,  4 Jun 2024 18:26:21 +0300
Message-Id: <1a9c0a0f8c5bba31138f0c7aebdf839b9b30298c.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_MSA_MISC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 368cd1312d8a..327f748d3774 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -440,7 +440,8 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state))
 		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
 
-	intel_de_write(dev_priv, TRANS_MSA_MISC(cpu_transcoder), temp);
+	intel_de_write(dev_priv, TRANS_MSA_MISC(dev_priv, cpu_transcoder),
+		       temp);
 }
 
 static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3de6e4f54bc0..3fcebccb9f3c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4229,7 +4229,7 @@ enum skl_power_gate {
 #define _TRANSB_MSA_MISC		0x61410
 #define _TRANSC_MSA_MISC		0x62410
 #define _TRANS_EDP_MSA_MISC		0x6f410
-#define TRANS_MSA_MISC(tran) _MMIO_TRANS2(dev_priv, tran, _TRANSA_MSA_MISC)
+#define TRANS_MSA_MISC(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _TRANSA_MSA_MISC)
 /* See DP_MSA_MISC_* for the bit definitions */
 
 #define _TRANS_A_SET_CONTEXT_LATENCY		0x6007C
-- 
2.39.2

