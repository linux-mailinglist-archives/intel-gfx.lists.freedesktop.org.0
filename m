Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC18B8FC903
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EFF10E6C8;
	Wed,  5 Jun 2024 10:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JrxGsQQI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C2C10E554
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583197; x=1749119197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QG2CUZfWmj9PfbK64NMMiEBOLW/b43I6wuEXQpSOr+U=;
 b=JrxGsQQIFvI0Nqwh129vbnt7OyVcPey8Eb7TBoBF/NFkyRiXk9meE87X
 NGU6NyQbFd4qGbo/qoICVMo9XDAJlOjhkTNPkI18PFqipTT8T85a16upJ
 SFH9aPvwEDHhfS0P0EEa3mus+hU6PtlFAYZAJbSNslMhqKRCeFlIylx0b
 2coDOjVsUc6iMTJ06Lg0rcOD1ShAADT56GGgFcGI9SpuLRiDlHOa/D0eC
 XJUrGBBlrthesZ2STefe+V88JdTHiExzR7Z1kBlSfSWIfSbOo9L3FxthB
 zPB/gTXELA7nrgz5i947TNMbAeK3rrYfreaa5JWlLn3XF4xWVYreEBD7H Q==;
X-CSE-ConnectionGUID: +mrkZJo9QvqAGrmyLxoRIQ==
X-CSE-MsgGUID: VGEP3ZKFQImRlAna8i8tvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136115"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136115"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:37 -0700
X-CSE-ConnectionGUID: QYvcXBflTK+dCBh+V4fpUw==
X-CSE-MsgGUID: 024lm79tRCSDsoutTD0diQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686183"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead of
 frame lock status
Date: Wed,  5 Jun 2024 13:25:37 +0300
Message-Id: <20240605102553.187309-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7bdae0d0ea45..3530e5f44096 100644
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

