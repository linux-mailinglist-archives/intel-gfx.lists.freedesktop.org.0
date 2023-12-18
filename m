Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676258179B2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C673410E37C;
	Mon, 18 Dec 2023 18:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97D5010E28C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tZiIUAOwhditCqSxZVZlhUMGDbK/b2JQMamMYDut+k=;
 b=iOeL44ChqjgPbWyWbwCW9po9XLEHu8FdJwmlZxpf52rKkv2MopaezuA4
 wzQg/DNHWYaodjyrTAMFYkcHZ8tRSAO042XbjR6uMAn8Swl5lq5nf940e
 l4V09mL8AzFMlleYm0QTvtYxc2Y0w2QrfiRwWfY4nvZG/ZiO64YzI9Jel
 wVk5Fp3xOYuX2PSbHqoE91+fHccUfXmZ24ZVgCjOU5+98lYwheLwgjfQN
 7bZIfZuVPLqWEAqU0eg+41EKUu5V3M2KPjFQSIKwnpiqJ5zUZF5rxSkFH
 NS6gsPCwBK1K+lYR0mSO2py41w4tNbU6hwON33ahoeKZ+nX3h6GMA+EQC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714143"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714143"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176596"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176596"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2
 early transport
Date: Mon, 18 Dec 2023 19:50:02 +0200
Message-Id: <20231218175004.52875-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
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

There is a new register used to configure selective update area size
for early transport.

Configure PIPE_SRCSZ_ERLY_TPT using calculated selective update area
carried in crtc_state->su_area.

Bspec: 68927

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  5 +++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f1e58163277d..8d250209999a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -104,6 +104,7 @@
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
+#include "intel_psr_regs.h"
 #include "intel_sdvo.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
@@ -2706,6 +2707,15 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	 */
 	intel_de_write(dev_priv, PIPESRC(pipe),
 		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
+
+	if (!crtc_state->enable_psr2_su_region_et)
+		return;
+
+	width = drm_rect_width(&crtc_state->psr2_su_area);
+	height = drm_rect_height(&crtc_state->psr2_su_area);
+
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
+		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index efe4306b37e0..ceefcc70e8f9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -245,6 +245,11 @@
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
 
+/* PSR2 Early transport */
+#define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
+
+#define PIPE_SRCSZ_ERLY_TPT(trans)	_MMIO_TRANS2(trans, _PIPE_SRCSZ_ERLY_TPT_A)
+
 #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
 #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
 #define _SEL_FETCH_PLANE_BASE_3_A		0x708D0
-- 
2.34.1

