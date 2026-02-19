Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH8NB4B0lmlqfQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:25:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7E15BB3F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEA510E657;
	Thu, 19 Feb 2026 02:25:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UlM/WePF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1123D10E243;
 Thu, 19 Feb 2026 02:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771467900; x=1803003900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJ4Oni6HSx4i1hd4ONxEih2IpRNJ/QY1wi095R7As48=;
 b=UlM/WePFzSmlWs0MquIkUIj3IObbT+/nKmLczxonvBInl61NvccCThwL
 C3wZqc57Id53k5wRyeaVtblstS6yVgEJWLE0X+n3iO0ZW+wjbl9rZIX0c
 GsKAp+UgGkULkHdg/4h1dObP0YZqk+xHiCHT3OHv6ivmVSjRpBAmo1xrV
 DqV6k9vhEMfoHAYW1lRSplw58FigfEP7z08l4CHHZRfiyq2Q0cNIjIVs+
 8bu3KBWXKaxwGuGsiE5BS5rDdiqNF0rxkEwkQgPX9gt7HGUIzIfBUVWOE
 ZpyOV0tepTWXw5Ijs71eVlYBjTgeNPUjTWb2U/jt6H47NLp4v4EGJsfG0 w==;
X-CSE-ConnectionGUID: w7wPAiIrT6W5fgsDtFV34A==
X-CSE-MsgGUID: UZyJfY+oQlWvVlUnsuL9yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="89962309"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="89962309"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 18:25:00 -0800
X-CSE-ConnectionGUID: yQQSuatWR3CUaqXfezH27g==
X-CSE-MsgGUID: j8iXubPYTpSqQhs5NrowpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="244979204"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 18 Feb 2026 18:24:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/backlight: Cleanup try_vesa_interface assignments
Date: Thu, 19 Feb 2026 07:54:54 +0530
Message-Id: <20260219022454.2417063-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260219022454.2417063-1-suraj.kandpal@intel.com>
References: <20260219022454.2417063-1-suraj.kandpal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: E3F7E15BB3F
X-Rspamd-Action: no action

Now that try_vesa_interface is the default fallback mechanism it
need not be reassigned to true based on certain checks.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index f14abc48a2a7..e0d0eee30ef4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
 			try_intel_interface = true;
 
-		try_vesa_interface = true;
-		break;
-	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
-		try_vesa_interface = true;
 		break;
 	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
 		try_intel_interface = true;
 		break;
 	}
 
-	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
-	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
-		try_vesa_interface = true;
-
 	/*
 	 * Since Intel has their own backlight control interface, the majority of machines out there
 	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
-- 
2.34.1

