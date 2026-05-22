Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKZaD3FdEGrbWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1170B5B5613
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BEC110F5E5;
	Fri, 22 May 2026 13:43:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJHBX73I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E58110E1FF;
 Fri, 22 May 2026 13:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457387; x=1810993387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yOtRNmhctbzcan/950a50PLnYU2Bc0yiMQv8r4UAwPc=;
 b=iJHBX73IAYgqzaCcezxUGPK9XUuiEuxeJ+IAgSyjF0tIHwVHAE2Tq1z9
 2FZ1WDEWtMg4nx9F9uBvpYsibl87DW2wqEhonZwNJqbHsTy04OB8mVTIN
 2D6eN6OfCx+XNq9Dc3l2I829p8567vEm/cIQxkGeOUBvq8JoR2zLs0lCv
 Wp2ojvgEClybYixkV/8erbX8Q1M9pwQekW0TfaB2aXGAckpdIDujoSzEd
 BWE/5LzTjDAX0Krc/ETWsE6fXB8nwX7uCLX0uFYOfNpfVG1SFNmKZEKHd
 IQNY9xuj2R9PwRBjqEbMz3hlz+8/h/xm3TDqNNBVL5GpYs1OOZdumAyVb Q==;
X-CSE-ConnectionGUID: /FV01igST4WSV3dhj09LPQ==
X-CSE-MsgGUID: L/FnsoczQiySp/q2QLv3hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850598"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850598"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:07 -0700
X-CSE-ConnectionGUID: BhziLtrzQl6jnziJ8pbSHw==
X-CSE-MsgGUID: JGcYCymKSj+zcOe8rf86Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317176"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/6] drm/i915/panel: Preserve Vtotal-Vsync distance while
 adjusting vtotal
Date: Fri, 22 May 2026 18:55:07 +0530
Message-ID: <20260522132511.321540-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1170B5B5613
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As we increase the vtotal to accommodate lower resfresh rate for fixed
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

