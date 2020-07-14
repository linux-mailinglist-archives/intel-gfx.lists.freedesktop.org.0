Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EADE221F630
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CAB6E8A3;
	Tue, 14 Jul 2020 15:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F0389F75
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:31:49 +0000 (UTC)
IronPort-SDR: Tzz1h+gVOt+8PNhV7dxj66eK+zzdxcWNY/3Uwe/L6urz/Z7w1PJKb9/NjYTavX0+k9XRAF18BT
 KP+Y4ka1nwPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="148936996"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="148936996"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:31:49 -0700
IronPort-SDR: fGw4c2w548Za+DEIYXMtR7cf9l1DRbSgm/T8gqVkKJtvMdxhcC0nDwdXFX3IQsrLCF46Wc27+B
 AX+n+hAGkcag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="281784260"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga003.jf.intel.com with ESMTP; 14 Jul 2020 08:31:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 18:31:41 +0300
Message-Id: <20200714153141.10280-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200714153141.10280-1-imre.deak@intel.com>
References: <20200714153141.10280-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/ddi: Don't rewrite DDI_BUF_CTL reg
 during DP link training
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The driver enables the DDI function in the DDI_BUF_CTL register before
starting the link training and disables it when disabling the output. It
also gets disabled/re-enabled during link re-trainining.

Except of the above the value we program to the register (intel_dp->DP)
doesn't change, so no need to reprogram the register when changing the
link training patterns.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c467f18d5e1b..424d59671561 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4060,7 +4060,6 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 train_pat_mask = drm_dp_training_pattern_mask(intel_dp->dpcd);
-	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 temp;
 
 	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
@@ -4085,9 +4084,6 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 	}
 
 	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, temp);
-
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 }
 
 static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp)
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
