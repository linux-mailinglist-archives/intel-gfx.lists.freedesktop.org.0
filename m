Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D34399B4A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9AD6F400;
	Thu,  3 Jun 2021 07:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578156F400
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:11:25 +0000 (UTC)
IronPort-SDR: Td/qCQP3N2qcvweajWo6h1Cq4Oi/WMutaQHwMUGkP1p4KHRC94U0aS3JOsm1CrZLa3vrL1wZ6X
 IporqNu7ciVw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="225279086"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="225279086"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 00:11:24 -0700
IronPort-SDR: rLCzqH1Kyls2cUAG85ZDtWECDOWgK9F+j4y1ZpZyK1mZWjC+boNgyr6dr+6ZymspJfLN3RLM7m
 SfuWEkO1hc5w==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="446190831"
Received: from vandita-desktop.iind.intel.com ([10.223.74.52])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Jun 2021 00:11:22 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Jun 2021 12:23:56 +0530
Message-Id: <20210603065356.15435-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There can be a chance that pre os has enabled
DSC and driver's compute config would not need
dsc to be enabled, in such case if we check on
compute config's compression state to disable,
we might end up in state mismatch.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 19cd9531c115..b05a96011d93 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1161,10 +1161,6 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!(old_crtc_state->dsc.compression_enable &&
-	      old_crtc_state->bigjoiner))
-		return;
-
 	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
 	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
 }
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
