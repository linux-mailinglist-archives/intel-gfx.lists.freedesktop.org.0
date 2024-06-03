Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C2E8D8328
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BFC10E394;
	Mon,  3 Jun 2024 13:01:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIOqPBJZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A7410E35C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419671; x=1748955671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1xXgv/Hs9OghNJmnWOkKMybnzwFvv3JZcXTSzYEKKwo=;
 b=lIOqPBJZ40b0wiZPKi4QgoFBUzehlc7cPXVEB0k87XJ0t+9XmHio62rl
 1erhHxI73Oeo5YzI/Hm+5pp6FM6HFL2hVBu/TlTXSDdknWPgnfJzySq6f
 T2YmLl5C8a9QcPoi3AlOyrCaQScQTqXDILsZtRCTYHOk8/Izx3DxzRTKx
 WmwIW0Q1lsWzR7jxBiRZChBuD1TxDLk9mRaERUqmvhNr8dSNs5fTam0Bo
 VTyHYq9kG2q8c9LDTV6YNPdw7P92+yunyJL9HrnTNMDSxcvbEXTMgvShg
 xtp9P3IcoyhSYt4OeNPEuJqpisVSOQOIKT/CfmbRF6Efl5N6sXy0OM3Nw w==;
X-CSE-ConnectionGUID: cwon/5vxSGC4D5iZuIEyJg==
X-CSE-MsgGUID: Cs8Hiy1WTG2w9NmSjXpP6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774454"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774454"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:01 -0700
X-CSE-ConnectionGUID: yFAvo/FfSGyTvTKGuALVQA==
X-CSE-MsgGUID: aqSbF2WRQ1CID/lt9t42+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291692"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:00:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 02/19] drm/i915/alpm: Write also AUX Less Wake lines into
 ALPM_CTL
Date: Mon,  3 Jun 2024 16:00:26 +0300
Message-Id: <20240603130043.2615716-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

Currently AUX Less Wake lines are not written into ALPM_CTL. Fix this.

Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index aa15f57cec66..fd35056237e5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -323,7 +323,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
+			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
+			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(dev_priv,
 			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
-- 
2.34.1

