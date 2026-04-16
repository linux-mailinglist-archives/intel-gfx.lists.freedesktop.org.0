Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ92M7RQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6817409CD3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA8610E7CD;
	Thu, 16 Apr 2026 03:00:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7WHDLuM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A990F10E7C6;
 Thu, 16 Apr 2026 03:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308401; x=1807844401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=STCqNfrh/8iRb9+u/F/gOReVK+Cx6la4U0qU7FY221c=;
 b=A7WHDLuMuIcC1j2JTgsTGppss7ltVw9WUpG4LzDGh+gNv0yBT1xMaHH7
 aRRzaXK2HspxljVQ8ywpS6NBdBA9o/ejlxjqJzAMJ/k/0U1HUABM6Gx8L
 zqUGnfPNVX2FAVxa1WCMp7UM16C9uoactfWHHLVUuFTJ9+lIwxlahknN9
 wrr4lmRY4zCxvkrQ1q6XAEQqa1VFoCVBG/uxMLWGkFACuo3bGD10yGlkg
 GHMw0spLTaXEbWdZNGI12dILWZxB3K3gZxecSZbgouI4ePgLbH0l5uCWH
 /H9oOKRExEUWcPwuz0V8qFzr0FMLlXNuVqLgXZanSXtmJ9Vtgt7GVrjHU Q==;
X-CSE-ConnectionGUID: LyGBJYwDT2qN6BJHvteeQQ==
X-CSE-MsgGUID: Y5f8dtyaTv+6fMOw7aEf5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997527"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997527"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:01 -0700
X-CSE-ConnectionGUID: TKyPete9ScaBr2sJSp0r0Q==
X-CSE-MsgGUID: jRz7/aXKQ36eAPc15I7uUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755049"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/12] drm/i915/intel_dip: Add check for DP encoder
Date: Thu, 16 Apr 2026 08:14:53 +0530
Message-ID: <20260416024504.1925195-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: A6817409CD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

At the moment, the common register for programming Transmission line for
Extended Metadata Packet and Adaptive-Sync Secondary Data Packet
(EMP_AS_SDP_TL) is only used to program Adaptive-Sync SDP (AS SDP).

Though VRR and Video Timing Extended Metadat Packet (VTEMP) are not yet
implemented for HDMI, add an explicit check to write the register only
for DP encoders (that may use AS SDP).

In subsequent changes, instead of directly writing the value,
appropriate helpers will be called, that will supply the transmission line
for these packets.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index 2e2bdb2b199c..2e3f303de74b 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -33,7 +33,8 @@ void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 	 * Since currently we support VRR only for DP/eDP, so this is programmed
 	 * only for Adaptive Sync SDP to Vsync start.
 	 */
-	intel_de_write(display,
-		       EMP_AS_SDP_TL(display, cpu_transcoder),
-		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_de_write(display,
+			       EMP_AS_SDP_TL(display, cpu_transcoder),
+			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
-- 
2.45.2

