Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D0249F769
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3BA10ED9D;
	Fri, 28 Jan 2022 10:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3938410EDCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366289; x=1674902289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=q6v/VK4XEMdCT/Qe+uNQjWXIQWN6TynsuowVdBd18hg=;
 b=jRvlRSI3ktdYXuP5THmTQ3HpRvE8damQKCT/DSTOvc6HRS28xorrsfKK
 ne3S2ybaVQY3m+asn1l0eBEyn6hd/ozAz5pIYp0fmK8cfAeryuYJd4u5e
 muZYuqV2hQQ8lMG980BNyEZSlKnN9K0p6rINnQcCqrPUbyasM3O3wY+E0
 4d/OQO62uqgif0sTa+YS1jabtSxuaBnmq/vEFqOvAPqyd3UDx/dEfVPo4
 fIMTptquJkCBkO4muzWjktqGQiluS7bjmpgxvs1Nxhyr1Q5pgOj2pV+xs
 JmeRu6VHMtvVRJIvLXuzNjkNmtO3VXh4xmAGPQZTTt0VzTG8gvc1aKkIv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="244698655"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="244698655"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="625596043"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga002.fm.intel.com with SMTP; 28 Jan 2022 02:38:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:43 +0200
Message-Id: <20220128103757.22461-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/17] drm/i915: Nuke ilk_get_fdi_m_n_config()
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

Get rid of the entirely pointless ilk_get_fdi_m_n_config() wrapper
and just call the CPU transcoder function directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 7 -------
 drivers/gpu/drm/i915/display/intel_display.h     | 2 --
 drivers/gpu/drm/i915/display/intel_pch_display.c | 6 ++++--
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fd12740408e8..25681197fd41 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3893,13 +3893,6 @@ void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 	}
 }
 
-void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
-			    struct intel_crtc_state *pipe_config)
-{
-	intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
-				     &pipe_config->fdi_m_n, NULL);
-}
-
 static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
 				  u32 pos, u32 size)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac05ee47c6a7..2747a7f2c6cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -613,8 +613,6 @@ void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 				  struct intel_link_m_n *m2_n2);
 void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 				  struct intel_link_m_n *m_n);
-void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
-			    struct intel_crtc_state *pipe_config);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 7ef2d40997b2..b464633b551b 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -386,7 +386,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	ilk_get_fdi_m_n_config(crtc, crtc_state);
+	intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
+				     &crtc_state->fdi_m_n, NULL);
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/*
@@ -509,7 +510,8 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	ilk_get_fdi_m_n_config(crtc, crtc_state);
+	intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
+				     &crtc_state->fdi_m_n, NULL);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
-- 
2.34.1

