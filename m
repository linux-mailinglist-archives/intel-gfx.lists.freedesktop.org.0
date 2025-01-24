Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BFFA1B883
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6BE10E99A;
	Fri, 24 Jan 2025 15:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b9/nKr6e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8848710E9A4;
 Fri, 24 Jan 2025 15:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731509; x=1769267509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gNxrcZ8FNorJcbEWUd18vGWfyUaI7e3eGJ2cIVBChic=;
 b=b9/nKr6ehs8E2s+HcOxx4r1eqOusEyHl9P9oZ3VNS2MKtYo82n2lMZrJ
 jwhiFYH+RhI+mqOBbLSgnINuQ9vB91dN14MIrQTM7ZUyNSY2unA3Z22tb
 EhJe7jwTHm5KWNgJRia1KSrXhO1wnAJpf9YbBrv5/pBtcUsit+WRK336i
 ScMxaPHQwT2lHxWsRBOjRjRgI9EqkfSOR2FWL2tyFFDil9+dBxbUSqRSj
 eyojF4AG4VUEvx/P2QPCdoo4DGmdZ6qesYYbwYXjlwEz/uKps9Pag8TL3
 RTMDrAQIil5ZLt6hztyzw1FqCcyRAKT/nH8n2gMSQi/JUAEm54RssMPiX g==;
X-CSE-ConnectionGUID: Dq5OHRWJTQ6rV76JaYwpXA==
X-CSE-MsgGUID: QEqgkWjnTKCMAcVwk/wp7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177381"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177381"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:48 -0800
X-CSE-ConnectionGUID: 5PjPkyyyS5+Lp3SdsbYGHA==
X-CSE-MsgGUID: qVw3J08RRCK+DzyWYsE88w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221186"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 06/35] drm/i915/display: Move as sdp params change to fastset
Date: Fri, 24 Jan 2025 20:29:51 +0530
Message-ID: <20250124150020.2271747-7-ankit.k.nautiyal@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

as_sdp param changes from vrr to cmrr should happen to fastset.
Changing as_sdp params should not trigger any modeset.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d68d652c1bc..60867b5b03ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5752,10 +5752,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	if (!fastset)
+	if (!fastset) {
 		PIPE_CONF_CHECK_INFOFRAME(drm);
+		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
+	}
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
-	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-- 
2.45.2

