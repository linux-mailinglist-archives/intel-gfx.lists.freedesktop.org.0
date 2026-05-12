Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCi1I28vA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63953521947
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879DA10EADE;
	Tue, 12 May 2026 13:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSBwRhe9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384D010EAC9;
 Tue, 12 May 2026 13:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593645; x=1810129645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Xm7qa05sL1/2NcEGqxibzNC3p0MOuoi/m8+a/Cvv1c=;
 b=GSBwRhe9zRhYbTcP2vBmAY70PJ+bTnoOuAKqYkrOrUqUbBand0JI6YR9
 uDhni7mUnefe0bzdoqQ2bAcqP9WKbwbfLFO8M+iPHKtiuiEU5DVyNhHaS
 5WzlmQVg/wpk4YVwehb/GjvzbaHFNyXYUCcmQUspl3Q/lqdpF3StibMXP
 /Jnl0XopoFv5hLOiduPdPY1v50Ohlahnrfgjo99lCt3dKYSle4u9yiNEp
 hYEUXlKvaTREpeFMhldlDVvMy5GZMdMZ5mxXtS8EdNZw2p/dX/GHvnj6b
 GOCHY0EU+KOZyljAZybCSsnqVfGv/fFU30ebp5zJ5vPbJG3D4Vw3VAkbX Q==;
X-CSE-ConnectionGUID: jW47lsxkT+u5kcfKLgsmgg==
X-CSE-MsgGUID: 00j4ImlFSYezifNcnRWDKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604317"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604317"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:24 -0700
X-CSE-ConnectionGUID: NEMCmyJTRsCtZwGMSIn4Pw==
X-CSE-MsgGUID: MJqQ5lx5TUWzuiUCr/SZTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257377"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/6] drm/i915/panel: Preserve Vtotal-Vsync distance while
 adjusting vtotal
Date: Tue, 12 May 2026 19:02:45 +0530
Message-ID: <20260512133249.2475882-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 63953521947
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

As we increase the vtotal to accomodate lower resfresh rate for fixed
modes, adjust the vtotal-vsync distance also.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 20c548eea6da..14c7eea8ccb1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -237,11 +237,18 @@ int intel_panel_compute_config(struct intel_connector *connector,
 
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
-	if (is_vrr && fixed_mode_vrefresh != vrefresh)
+	if (is_vrr && fixed_mode_vrefresh != vrefresh) {
+		int vsync_start_diff = adjusted_mode->vtotal - adjusted_mode->vsync_start;
+		int vsync_end_diff = adjusted_mode->vtotal - adjusted_mode->vsync_end;
+
 		adjusted_mode->vtotal =
 			DIV_ROUND_CLOSEST(adjusted_mode->clock * 1000,
 					  adjusted_mode->htotal * vrefresh);
 
+		adjusted_mode->vsync_start = adjusted_mode->vtotal - vsync_start_diff;
+		adjusted_mode->vsync_end = adjusted_mode->vtotal - vsync_end_diff;
+	}
+
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
 
 	return 0;
-- 
2.45.2

