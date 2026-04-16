Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MB6gB8lQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E0F409D0E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7772110E7E9;
	Thu, 16 Apr 2026 03:00:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9iwKLZV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1798910E7E9;
 Thu, 16 Apr 2026 03:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308422; x=1807844422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3y8C9rn3ZpqqZl2zus9JbTdmo80u0YA+aPZJ+2A4W/4=;
 b=F9iwKLZVxm9fahbrq3JLT5FWd4QVybGwEAzTSRcMsttyFtLvuaPIaYsk
 G4MewLK/L/+LcNr0gdrpBoAkerfNASvPTX02qEsX4AUx0km6h3FMeYTvB
 drVLVj0nlcOM9tqfvrPE3pHG8G84+z8ulSMH6m6PiuMq3ryQ/tmf6Qxq5
 wyJK0BxW6xp6Vb+CiP9HOXglDhPIM29GfZVD7f6WKCn0Hm4i/CivldAbK
 IvemMyuT2BwuM+Beh2J//lRyoP30lcZBjFgMqA3y1eLwbX1x36PfvAOVL
 AoS77OuyTAzTJfZ8Zc9IoxLwEBtao55Td4u37j+Yz8zPSAPO/Q4GlSLfI g==;
X-CSE-ConnectionGUID: aHREW8I2TY+5Q02ejl+h6w==
X-CSE-MsgGUID: +bDMYu4wTKKKTZQftA6vYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997585"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997585"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:22 -0700
X-CSE-ConnectionGUID: eVgZHl8URzW5d0i9TfZ0fw==
X-CSE-MsgGUID: BWLjLMVPQnineHJBYru0ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755295"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/12] drm/i915/display: Dump DIP Transmission lines
Date: Thu, 16 Apr 2026 08:15:02 +0530
Message-ID: <20260416024504.1925195-13-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: E5E0F409D0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add DIP transmission lines to the CRTC state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index c85ba9a95322..d625f46ccb99 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -251,6 +251,15 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 		drm_printf(&p, "minimum hblank: %d\n", pipe_config->min_hblank);
+
+		drm_printf(&p, "DIP Transmission Lines: EMP/AS SDP: %u\n",
+			   pipe_config->dip.emp_as_sdp_tl);
+		drm_printf(&p, "DIP Transmission Lines: Common Base SDP: %u, GMP SDP: %u, PPS SDP: %u, VSC SDP: %u, VSC_EXT SDP: %u\n",
+			   pipe_config->dip.cmn_sdp_tl,
+			   pipe_config->dip.gmp_sdp_tl,
+			   pipe_config->dip.pps_sdp_tl,
+			   pipe_config->dip.vsc_sdp_tl,
+			   pipe_config->dip.vsc_ext_sdp_tl);
 	}
 
 	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-- 
2.45.2

