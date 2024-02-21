Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 642B285D1D3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 08:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1F510E433;
	Wed, 21 Feb 2024 07:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhFg7lD9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194C910E433
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 07:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708502031; x=1740038031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LGcV7j4krfzzzKF15tSmIxYwITQKpjKkJh+vIqRoiUg=;
 b=lhFg7lD9dTdeZmmEB/XNc36yYESxZqZTEWtjwztFd65qDKNWFbRMcyw6
 LJ3yxfqFbDgqFxzHJe1u9IW+TSrQrGvLnRzWXniNE3at3O9/bSAOeSdS+
 X+XXCOoGYnl2kaCldiF92OCdetp26Uuj1OTxjATy7/NONRx5ukNeqF/Ud
 N6gX9NBg4IgeCYv2Q514khtu4QY0IVMa7GM6KIaYdPVVcArJx5/eMKc3p
 qlzSM6InZsrzhc8Grv6CxAeKanEACkONTHMOOdsnIk9tv+SS2WK8t5UA9
 Y/Gq/BqNgC+s0a1yH8WhwGnQgKTEi6icxoAsite0M7xOAz8Z2VhME00TD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20082037"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="20082037"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="827302727"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="827302727"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.221.77])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:49 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Add aux function pointer for fast wake
 sync pulse count
Date: Wed, 21 Feb 2024 09:53:20 +0200
Message-Id: <20240221075322.2764209-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240221075322.2764209-1-jouni.hogander@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
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
wake and fast wake lines.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dp_aux.c        | 12 +++++++-----
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0d4012097db1..1231d374aeec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1798,6 +1798,12 @@ struct intel_dp {
 	u32 (*get_aux_send_ctl)(struct intel_dp *dp, int send_bytes,
 				u32 aux_clock_divider);
 
+	/*
+	 * This function returns the number of fast wake sync pulses. It is
+	 * needed by PSR code to calculate needed fast wake and io wake lines.
+	 */
+	u8 (*get_aux_fw_sync_len)(void);
+
 	i915_reg_t (*aux_ch_ctl_reg)(struct intel_dp *dp);
 	i915_reg_t (*aux_ch_data_reg)(struct intel_dp *dp, int index);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 4f4a0e3b3114..fad39b2e3022 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -143,10 +143,10 @@ static int intel_dp_aux_sync_len(void)
 	return precharge + preamble;
 }
 
-static int intel_dp_aux_fw_sync_len(void)
+static u8 intel_dp_aux_fw_sync_len(void)
 {
-	int precharge = 10; /* 10-16 */
-	int preamble = 8;
+	u8 precharge = 10; /* 10-16 */
+	u8 preamble = 8;
 
 	return precharge + preamble;
 }
@@ -793,10 +793,12 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
 
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(i915) >= 9) {
 		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
-	else
+		intel_dp->get_aux_fw_sync_len = intel_dp_aux_fw_sync_len;
+	} else {
 		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
+	}
 
 	intel_dp->aux.drm_dev = &i915->drm;
 	drm_dp_aux_init(&intel_dp->aux);
-- 
2.34.1

