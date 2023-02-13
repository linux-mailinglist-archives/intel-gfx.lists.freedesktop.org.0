Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9833695427
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3591410E771;
	Mon, 13 Feb 2023 22:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D206910E773
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328811; x=1707864811;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6WJRlDwVgplA3/h0efMAZqqit2LBzPXTcpLaEBUvT0E=;
 b=bBARIKyI5XGMiWOgRIHuCcor3Qy0KB7LU+gkCsltJvnDoXHNdwk9N0PO
 AR7b0B6sq7zvuSQwG3tjX+cEZek8RwS3dvh1yFy+w0vVTvg0LS9rVYM89
 aUApWaQa4cDMyfKkhxZavrXPrxvtPsJLZwRv0PEk8lH2Wm2QyC0JlIJnv
 q1F+qzbEksEmZIDKtLlyg5eB4kFlKAUf3ni+w7U+5jPQtuSoKh0HTBImG
 vIzz0RVJRoylnZD+cV1LTKDBlu7bbthwOnbA+fqC/dlO8/oJ5SDWy7gdd
 TVihEC1INzWXUX+5XJKPRCTr3GGZSu9/5aUL+HniTWbSEU2x9VZF6qfml w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237425"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237425"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766454"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766454"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:57 +0200
Message-Id: <20230213225258.2127-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Sprinkle some FIXMEs about TGL+
 DSI transcoder timing mess
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

The DSI code has some local hacks to program TRANS_H/VBLANK on
TGL+ (ICL DSI transcoders didn't have these registers). That
will not work when we need to start using the delayed vblank
(for DSB purposes). Too lazy to figure out what the is going
on there, so just sprinkle FIXMEs in the hopes someone else
will spot them eventually.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index def3aff4d717..b5316715bb3b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -957,7 +957,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		}
 	}
 
-	/* program TRANS_VBLANK register, should be same as vtotal programmed */
+	/*
+	 * program TRANS_VBLANK register, should be same as vtotal programmed
+	 *
+	 * FIXME get rid of these local hacks and do it right,
+	 * this will not handle eg. delayed vblank correctly.
+	 */
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 92306246e907..4210ede5e52e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2938,6 +2938,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
+	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
 		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
@@ -2952,6 +2953,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
+	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
 		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
 		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
@@ -2967,6 +2969,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vblank_end += 1;
 	}
 
+	/* FIXME ADL+ DSI transcoders have this! */
 	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder))
 		adjusted_mode->crtc_vblank_start =
 			adjusted_mode->crtc_vdisplay +
-- 
2.39.1

