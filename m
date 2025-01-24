Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69507A1B892
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF43610E9BB;
	Fri, 24 Jan 2025 15:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W08Pbz+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3397710E9B3;
 Fri, 24 Jan 2025 15:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731537; x=1769267537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FIarnSyR5u2LuHjE6gCrwJ3NDemyblHJobQQwh+igCA=;
 b=W08Pbz+LT9NnRxcGV+LNzB4GGF1oNX6z+g5ecAPypliZ6nfBEsfRmqnr
 Jb8pZokoOtatqIw/kVV9ZrTzHRCqo6V2x+2eEu7GmyzKxKPryzGX85WK1
 09Ci8iBcM1mytD28OfTHqS1lR7nnwz7kiTLblPJOCKKwpoFHoIW726pHF
 axB+DbJAeZuTQcB/Deu/pMWOBkVhoAgdG6j4QApq6SFrMFLiZ/rvGqmeF
 QN5Zacj5GT1WV2iGeUAsi+/CQRSad202j7zORa3S1K6s49rtU8QF1e9kY
 ZJBuWULHHsojoiQGIqRFnmSSeU7ZAZGj/tQk/3SQ4RiBXDpjKCV+xkPvh g==;
X-CSE-ConnectionGUID: 6sGDIYLXQwqq7RJTJNKRnQ==
X-CSE-MsgGUID: sGTAQE3dTMOodoGEYJ7jEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177419"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177419"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:17 -0800
X-CSE-ConnectionGUID: 2ati9raHSKSMf0WWaT4P+Q==
X-CSE-MsgGUID: fPu2bLvgQ6iikMa1o4oCYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221346"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:15 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/35] drm/i915/dp: Avoid vrr compute config for HDMI sink
Date: Fri, 24 Jan 2025 20:30:03 +0530
Message-ID: <20250124150020.2271747-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Currently we do not support VRR with HDMI so skip vrr compute
config step for DP with HDMI sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c25e363ac5b2..853f68eec291 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3208,7 +3208,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
 
-	intel_vrr_compute_config(pipe_config, conn_state);
+	/*
+	 * VRR via PCON is currently unsupported.
+	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
+	 */
+	if (!intel_dp_has_hdmi_sink(intel_dp))
+		intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
-- 
2.45.2

