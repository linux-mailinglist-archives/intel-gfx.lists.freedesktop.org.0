Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5D3900585
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30E210EC67;
	Fri,  7 Jun 2024 13:49:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGTZ67jt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E31D10EC67
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768185; x=1749304185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DJPxXBReG9FM9/4SmE99QcVQstOFoSnnRvxQTWT9IbE=;
 b=IGTZ67jt080Ey8iQ9yyX5pMLvYkuw6Tguf7FQ00kzS9AGUbLjB5cB1Sk
 p6SsSJrMTn4a6dNfDyTnV0bN2MLXq63G0oNxeWMhEqHVtFs2KBr2QIJlP
 XzQ353ymCUrKaByP6I0BKYlb1Iw7mMTuRUaK/OSwurhxOwI0ZHrc1UMlD
 q7QtXryWsUajiLAPDV0RU5mpB3duHn4LU2F525LWoOgvw4uO2HhHgITmR
 sumfs4dCF+NI70ySG3z/3Cmi8zcDGRZ9dvSrOB+oq7WwoUSfNI14F7v2m
 b62mP6ppqEeQY4B8sGQZdqjQ74BBK/jHRopdlbG6pYvnDg6uOxZWyEMyR g==;
X-CSE-ConnectionGUID: KfMh0m49RkKFMGYSFMRPFg==
X-CSE-MsgGUID: Ox9Pq93NSsOyUC8uJ1dx6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331661"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331661"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:45 -0700
X-CSE-ConnectionGUID: z9iMbqW3TYaByCtJ/6b0jw==
X-CSE-MsgGUID: LKcMUm6PTZWZ906cIUEKWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43459004"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 09/13] drm/i915/psr: Print Panel Replay status instead of
 frame lock status
Date: Fri,  7 Jun 2024 16:49:13 +0300
Message-Id: <20240607134917.1327574-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Currently Panel Replay status printout is printing frame lock status. It
should print Panel Replay status instead. Panel Replay status register
field follows PSR status register field. Use existing PSR code for that.

Fixes: ef75c25e8fed ("drm/i915/panelreplay: Debugfs support for panel replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 95281c2d401c..a292c6c5de30 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3579,16 +3579,9 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 		"reserved",
 		"sink internal error",
 	};
-	static const char * const panel_replay_status[] = {
-		"Sink device frame is locked to the Source device",
-		"Sink device is coasting, using the VTotal target",
-		"Sink device is governing the frame rate (frame rate unlock is granted)",
-		"Sink device in the process of re-locking with the Source device",
-	};
 	const char *str;
 	int ret;
 	u8 status, error_status;
-	u32 idx;
 
 	if (!(CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp))) {
 		seq_puts(m, "PSR/Panel-Replay Unsupported\n");
@@ -3602,16 +3595,11 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 	if (ret)
 		return ret;
 
-	str = "unknown";
-	if (intel_dp->psr.panel_replay_enabled) {
-		idx = (status & DP_SINK_FRAME_LOCKED_MASK) >> DP_SINK_FRAME_LOCKED_SHIFT;
-		if (idx < ARRAY_SIZE(panel_replay_status))
-			str = panel_replay_status[idx];
-	} else if (intel_dp->psr.enabled) {
-		idx = status & DP_PSR_SINK_STATE_MASK;
-		if (idx < ARRAY_SIZE(sink_status))
-			str = sink_status[idx];
-	}
+	status &= DP_PSR_SINK_STATE_MASK;
+	if (status < ARRAY_SIZE(sink_status))
+		str = sink_status[status];
+	else
+		str = "unknown";
 
 	seq_printf(m, "Sink %s status: 0x%x [%s]\n", psr_mode_str(intel_dp), status, str);
 
-- 
2.34.1

