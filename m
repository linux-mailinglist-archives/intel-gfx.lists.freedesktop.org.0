Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7904B69541E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B4710E762;
	Mon, 13 Feb 2023 22:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE27510E765
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328786; x=1707864786;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Oi/CvKj3BufOYUmMNK3zPdGHsn187ATmqGO81BY4Ei4=;
 b=hiw07qM5n1/Dh+ElDfQzfXjfmfd1LxIx+sWfd73uZSkXdDuFr7nI72X3
 Q1l102lWzKQKOmvaNfFuDAoE00//B+WNYtX1aRtpIaAWVlKkjIZEVOsKE
 9uBwNQ8laTMwnyBRWxKyp/Pe79AvAI2l0ocbFGwQ3X3UeAKe2L8OYIvhV
 YWa8Qj5pg3wl48ayjq4/qLWsqWjg4c7BUU8wnWoPwsrLRdVyoj6D5TYBo
 A1HiYmPVbYfdr8TDDR+C8OU/wmY4A8Sie72kPU6D7Iu6/DoVXBozdb7Og
 vdGX0I6WWHQnLe5SkYsTldfITSRHJb/dINcLEm5e+OT/ap5nUmTmwbdEk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237370"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237370"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766417"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766417"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:48 +0200
Message-Id: <20230213225258.2127-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Flatten intel_ddi_{enable,
 disable}_transcoder_clock()
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

Use an early return to get rid of the extra indentation level
in intel_ddi_{enable,disable}_transcoder_clock().

Also unify the platform handling in between the two while at
it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 39 ++++++++++++------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7f34c2b30073..a30175022621 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -957,33 +957,34 @@ void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	u32 val;
 
-	if (cpu_transcoder != TRANSCODER_EDP) {
-		if (DISPLAY_VER(dev_priv) >= 13)
-			val = TGL_TRANS_CLK_SEL_PORT(phy);
-		else if (DISPLAY_VER(dev_priv) >= 12)
-			val = TGL_TRANS_CLK_SEL_PORT(encoder->port);
-		else
-			val = TRANS_CLK_SEL_PORT(encoder->port);
+	if (cpu_transcoder == TRANSCODER_EDP)
+		return;
 
-		intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
-	}
+	if (DISPLAY_VER(dev_priv) >= 13)
+		val = TGL_TRANS_CLK_SEL_PORT(phy);
+	else if (DISPLAY_VER(dev_priv) >= 12)
+		val = TGL_TRANS_CLK_SEL_PORT(encoder->port);
+	else
+		val = TRANS_CLK_SEL_PORT(encoder->port);
+
+	intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
 }
 
 void intel_ddi_disable_transcoder_clock(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val;
 
-	if (cpu_transcoder != TRANSCODER_EDP) {
-		if (DISPLAY_VER(dev_priv) >= 12)
-			intel_de_write(dev_priv,
-				       TRANS_CLK_SEL(cpu_transcoder),
-				       TGL_TRANS_CLK_SEL_DISABLED);
-		else
-			intel_de_write(dev_priv,
-				       TRANS_CLK_SEL(cpu_transcoder),
-				       TRANS_CLK_SEL_DISABLED);
-	}
+	if (cpu_transcoder == TRANSCODER_EDP)
+		return;
+
+	if (DISPLAY_VER(dev_priv) >= 12)
+		val = TGL_TRANS_CLK_SEL_DISABLED;
+	else
+		val = TRANS_CLK_SEL_DISABLED;
+
+	intel_de_write(dev_priv, TRANS_CLK_SEL(cpu_transcoder), val);
 }
 
 static void _skl_ddi_set_iboost(struct drm_i915_private *dev_priv,
-- 
2.39.1

