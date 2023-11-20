Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FA07F13E1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 14:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED83110E3BB;
	Mon, 20 Nov 2023 13:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89D210E3C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 13:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700485419; x=1732021419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mh2GQIpFB7fz3PhGA66hwEH40BBS8F5rA5O2g6JOZd4=;
 b=XNJ8Fh48QPnAvhAk5/fDQViensOUzn95NXmpvT+/UG7K3IZHY/kaYDGL
 B5Aa7QVE5yTTRPmgJFtPa/7zQ1456RRy7lxqPNDemYumVJ8RVI1ImxnO5
 mV4Q6k7q9a3VGsycGycqiO850qhh/rS7GcRHhX1PbzFY+7yUCc0N00+fE
 XjVlhPWGFa/cVipXeX8YLsVoc+MpJTru7MQWPmq/er2LykOcmI3biIg/U
 d0oO/5alxp3TIKv5Ky0H3rbixgLiytken0ps211Kknk/HNZY99vl2CCVA
 l7ZTGkfBy3mQWl3ejgIPsdXnrpSo6O2ruPZ0/9+wLLayYdGNAv4VNzNJi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="371789378"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="371789378"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 05:03:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="716198030"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="716198030"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 05:03:07 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 15:02:14 +0200
Message-Id: <20231120130214.3332726-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Do not check psr2 if
 psr/panel replay is not supported
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

Do not continue to psr2 checks if psr or panel replay is not supported.

Cc: Animesh Manna <animesh.manna@intel.com>

Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute config for panel replay")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9670
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8d180132a74b..9aa1c269cfef 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1373,6 +1373,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	else
 		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
+	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
+		return;
+
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
-- 
2.34.1

