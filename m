Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE0969651A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB6210E8D7;
	Tue, 14 Feb 2023 13:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12DE10E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382232; x=1707918232;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VhbWQvbwlVSzJcOdoJ/w/zvuZ2g+uYbWP91P21XBJSY=;
 b=D2VrGj9YXiAT3ZMbPfz88SutAEMu0ENuoZj1pwN3s6Gxsnnt6cyLS+JH
 KrbpqzuW16Arq3nyOtSuclms+jsZaPCmBM/ude6IZnUkM1bBzh/WeXmAA
 XNRywrGn3xqEXlQ84ragEIbyvWZILB2ZXu0clZBlO0eTADapo8EuYsM3w
 4Ez+bZX5CE4IKBXkpRenZYu0utl53EjGr2J3279EqkrU77mgtAhq1ZKU/
 s6iiBQrI8FiZM34Z8fhWSaJofBVJV14KEERYbg6be5qmrD8FBHdHKafz8
 bcgGFkhHjiNuQOPe3zMpbrqFTesfOY/rdjsu09yml5ifgV+ju/RHlURMv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311518939"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311518939"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:43:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540392"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540392"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:43:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:43:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:43:46 +0200
Message-Id: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Don't switch to TPS1 when
 disabling DP_TP_CTL
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

AFAICS Bspec has never asked us to switch to TPS1 when *disabling*
DP_TP_CTL. Let's stop doing that in case it confuses something.
We do have to switch before we *enable* DP_TP_CTL, but that
is already being handled correctly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bfd1e30a27b4..4af2ba2dfcad 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2624,8 +2624,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
+		val &= ~DP_TP_CTL_ENABLE;
 		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
 	}
 
@@ -3153,8 +3152,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 			wait = true;
 		}
 
-		dp_tp_ctl &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		dp_tp_ctl |= DP_TP_CTL_LINK_TRAIN_PAT1;
+		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
 		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
 		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
-- 
2.39.1

