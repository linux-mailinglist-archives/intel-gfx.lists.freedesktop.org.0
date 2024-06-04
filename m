Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AC48FB754
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF33D10E51C;
	Tue,  4 Jun 2024 15:31:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eWqtDJGd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EE110E50C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515085; x=1749051085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xbC/PkxzzNtm+ip+5439t3OOpsNj0ToHdY1+bTTdHWU=;
 b=eWqtDJGdVixZTDCz8FWyLR+KRudXVjEESb7iscM67huF8NntumRn1SXi
 oOk5e8ASg75oYEDZF7YF/V0D9acPL+0yJRlhJ70s7K+FBsTFn4qRU+frz
 BfnPmfgzEEWWJsl0n0+6VN3pVLq2UFfWkeXrml2wuXJxp3dYqDT9c5L+Q
 WLulAUuMRysvA2wolwekl8D10SXPFJI4O/CkMKZDmGU6tWenso5rgnL0y
 /vFSBH37kap+TqWGa6AsdlPKie5GRvZhh6JcuuL7txCtonnJl3v7XHHLz
 ZgY5odwcKW5VAubZw+Nb16wb8AdWcT7mNJ42F9HhFfqMnKArbcywCirjv A==;
X-CSE-ConnectionGUID: 9VOxQ9ESTjuriTkDKMfN+Q==
X-CSE-MsgGUID: fi0gFJbMQ9uO/IG29K518A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733642"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733642"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:25 -0700
X-CSE-ConnectionGUID: cJXbqAC4Rz+yoJvusI0FYA==
X-CSE-MsgGUID: itBIvHmdT0WLEtEP6IJDew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828102"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 62/65] drm/i915: pass dev_priv explicitly to TGL_DP_TP_STATUS
Date: Tue,  4 Jun 2024 18:26:20 +0300
Message-Id: <c7aaf0e981324bfc5b3aec31f30a7b1a158ba568.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TGL_DP_TP_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 135c2e7964fc..368cd1312d8a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2196,7 +2196,8 @@ i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		return TGL_DP_TP_STATUS(tgl_dp_tp_transcoder(crtc_state));
+		return TGL_DP_TP_STATUS(dev_priv,
+				        tgl_dp_tp_transcoder(crtc_state));
 	else
 		return DP_TP_STATUS(encoder->port);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1547ecdc352..3de6e4f54bc0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4048,7 +4048,7 @@ enum skl_power_gate {
 #define _DP_TP_STATUS_B			0x64144
 #define _TGL_DP_TP_STATUS_A		0x60544
 #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
-#define TGL_DP_TP_STATUS(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
+#define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
 #define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
 #define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
 #define  DP_TP_STATUS_ACT_SENT			(1 << 24)
-- 
2.39.2

