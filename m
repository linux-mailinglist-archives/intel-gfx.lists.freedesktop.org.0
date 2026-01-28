Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PtwLKobemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F75A2AD0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D52310E6DE;
	Wed, 28 Jan 2026 14:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFS3fa9E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AFC610E6DE;
 Wed, 28 Jan 2026 14:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610152; x=1801146152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AqaRnquji9DKg2cv0KwZF82vvj8XZtY3gDDTcYzJojM=;
 b=jFS3fa9EvNzofKnkI/MsLOl28xYyQwZGBJ3RnMocoeBYW+qQq0NcWD6Z
 49Iwqa9V+iNYe8fj+Eoxd0bmgUZPBI+IW5aPzf/EQML/VOLzjOrvszgLO
 vT7T3qo/RuPSCN0FbIQ3ionHqXeJTYNtBduD0u+oR/r2T2m6r+sb3kZ4N
 jpr/HTo4zenGu2S9i265A3MmwZJ1vhCUtnX25/R0PCrxO30vYfHLas4t3
 K/E5ScPgxRaKhGoZTFXCtMnyVTfIDrFgtNREaajYCxAsvyCc6AicLcNkj
 /6O1atxFgV0Ei8jzs3FwL19kuuCa7gQCFpPpNJvgGAMT9CleMAV+bWLl4 Q==;
X-CSE-ConnectionGUID: Lp7kOPjsS6iKhr5e3VlF2A==
X-CSE-MsgGUID: EKJyrYPnSbeC6YU1V7mubg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400910"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400910"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:32 -0800
X-CSE-ConnectionGUID: 9HwtDetcTTOFMgTjn1gCAg==
X-CSE-MsgGUID: jxxkk6trT5KlrkIBI4+sdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881336"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/16] drm/i915/dp: Extract helper to get the hdisplay limit
Date: Wed, 28 Jan 2026 19:36:23 +0530
Message-ID: <20260128140636.3527799-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 88F75A2AD0
X-Rspamd-Action: no action

Separate out function to get the hdisplay limit for a given platform.

v2: Rename the helper to intel_dp_max_hdisplay_per_pipe(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a8ffac6312..4c3a1b6d0015 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1371,6 +1371,12 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static
+int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
+}
+
 static
 bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   struct intel_connector *connector,
@@ -1378,17 +1384,14 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
-	hdisplay_limit = DISPLAY_VER(display) >= 30 ? 6144 : 5120;
-
 	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * hdisplay_limit;
+	       hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display);
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.45.2

