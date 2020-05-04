Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F3B1C49DE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6CC6E4D2;
	Mon,  4 May 2020 22:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DAB96E4C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:43 +0000 (UTC)
IronPort-SDR: Xthsb7SxBzdmmEC9elPdegqyqFTxAzLd1ujJxNVP8zLC4NHISe0s+oSdY4eqDWiNAB78f78tE/
 hDO5BAFHusTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:43 -0700
IronPort-SDR: ESKZGS+MM2zT3SRRe6hfRqEFB4/KXywkbSo5PMk2tPhsFlJLgToBXcJwdtmaZgCI3L50Ggf9mZ
 PgHJadJRPo/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646749"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:22 -0700
Message-Id: <20200504225227.464666-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/22] drm/i915/rkl: Don't try to read out
 DSI transcoders
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

From: Aditya Swarup <aditya.swarup@intel.com>

RKL doesn't have DSI outputs, so we shouldn't try to read out the DSI
transcoder registers.

Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2eeafda82188..e63221b8a9a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10901,7 +10901,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	intel_wakeref_t wf;
 	u32 tmp;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (!IS_ROCKETLAKE(dev_priv) && INTEL_GEN(dev_priv) >= 11)
 		panel_transcoder_mask |=
 			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
