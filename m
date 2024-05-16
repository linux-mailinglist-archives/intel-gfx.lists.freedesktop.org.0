Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A2C8C7804
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF9510ED2D;
	Thu, 16 May 2024 13:56:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HlhxRMTo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8419410ED2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867796; x=1747403796;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/viYDfEcM4oGo0XGg2LjB/E02BQ80zqZEQ7miftRV50=;
 b=HlhxRMTo4wGiImR4vkQ3faFE5Uqv/Peo+2JOfMQ4KyoDUXBisHqC9qbN
 4aEokY8LAeBo6NKyk+C7S9wBSrSpLHifgftK+t5wS4XLpgCgt3PwpxRiK
 n7cGkbmNdcGjSgireDb8cLlGC7X5zq9+GwNpLQsIubxf/3VcT68RmcQVK
 hrWSrG7Tw2bWT+J42Pviw6yql3rijN6/0wLerqbeUAQyfQDEeO15U+cuD
 naE/7ixyG7d/u2M9oRxM56+AZ+OCr8+yKfvTS6hTHTQuKaZrY81ieYWaw
 A9BM3oUcun4lxrLOZRydnbPbbi4iz4zTnCJ9S5cFBIWuExutwzqpF9Sdj A==;
X-CSE-ConnectionGUID: Z1t5uepXR7ey8ZKyiTd1rA==
X-CSE-MsgGUID: 4DFy4ebLR1qrCB4FEJdzfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357180"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357180"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:36 -0700
X-CSE-ConnectionGUID: CovA1GLAQJ+wmJHQPYEsDw==
X-CSE-MsgGUID: oFdPcOzdT0q0dwcWXm1OSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435103"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/13] drm/i915: Simplify PIPESRC_ERLY_TPT definition
Date: Thu, 16 May 2024 16:56:13 +0300
Message-ID: <20240516135622.3498-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

PIPESRC_ERLY_TPT is a pipe register, and it lives in the 0x70000 range.
so using _MMIO_TRANS2() for it is not really correct. Also since this
is a pipe register, and not present on CHV, the registers will be
equally spaced out, so we can use the simpler _MMIO_PIPE() instead
of _MMIO_PIPE2().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index b44809899502..7983cbaf83f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -525,7 +525,7 @@ static void wa_16021440873(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
 		       PIPESRC_HEIGHT(et_y_position));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index df0d14a5023f..d49e869f6be2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2381,7 +2381,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 	if (!crtc_state->enable_psr2_su_region_et)
 		return;
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, crtc->pipe),
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
 		       crtc_state->pipe_srcsz_early_tpt);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index e14cb48f2614..47e3a2e2977c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -248,8 +248,8 @@
 
 /* PSR2 Early transport */
 #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
-
-#define PIPE_SRCSZ_ERLY_TPT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPE_SRCSZ_ERLY_TPT_A)
+#define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
+#define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
 
 #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
 #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
-- 
2.44.1

