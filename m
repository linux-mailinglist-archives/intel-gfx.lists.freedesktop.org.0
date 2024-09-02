Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CB2968154
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B8810E239;
	Mon,  2 Sep 2024 08:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efDX+NZW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6753110E240
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264318; x=1756800318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=01TI6opKis2D5vpCt2AiVC4+l1KGvKSUhCR7gRbq13c=;
 b=efDX+NZWB3UD8R4GpTGftpMEWT1hrIV2QjFkRlH7tU20wLQhAHtDWznj
 feSE1vgV6EH/jZ/Rvq/QW3KRgU8usAk0MVPEhWT8RvcoNXhsZ/xfiwbOL
 mBJQKzhHBOdzO862r3N0pOGd4INjfrN8xPx/DTRn21N9wDQOgPBkEd8DF
 HXtXyZDggzhNkUcGoH514OfrJ+Oqvml1GyVzxLIMOZpb35zBrR182NOHd
 0Iq2bieMhUs46nOlgni5jo+1r7iI/2Hc3jCaZazYfSA42J0XP7F4VJO3U
 0rrYOlYx2SOo5asuXlyx8jKcYncaf9cd/smUOpLCVfHXMvib0XYDzwq4b g==;
X-CSE-ConnectionGUID: YvfWbcbjTOCjUtblK8VPpg==
X-CSE-MsgGUID: PY20M6jQToy9ZBn4NxOqtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967403"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967403"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:18 -0700
X-CSE-ConnectionGUID: cj1qQcb2SRa3Mv720IDI9A==
X-CSE-MsgGUID: 5N3t6pBQQF+P9z1CAUP3Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039915"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/13] drm/i915/vrr: Avoid sending PUSH when VRR TG is used
 with Fixed refresh rate
Date: Mon,  2 Sep 2024 13:36:31 +0530
Message-ID: <20240902080635.2946858-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

As per Bspec:68925: Push enable must be set if not configuring for a
fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 03af50b9f9eb..5e947465c6e0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -313,7 +313,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -325,7 +325,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return false;
 
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -339,8 +339,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	if (!crtc_state->vrr.fixed_rr)
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
-- 
2.45.2

