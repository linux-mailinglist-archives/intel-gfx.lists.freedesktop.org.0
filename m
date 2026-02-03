Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHM2FS+4gWm7JAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:56:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F124D678A
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 09:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3709D10E1C0;
	Tue,  3 Feb 2026 08:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEWKdpYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1234A10E147;
 Tue,  3 Feb 2026 08:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770108971; x=1801644971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHzsZ4tbGlQcmE+wei9iT59H2MaOMX7mPZZcc1exAL0=;
 b=XEWKdpYQuDLl9Eq740W+JJycIq24S92a2aqyV3+lsl0KqgEUnRKsxx1j
 SOk7OsPGG+RvFyvqwxYk+v8D6SajDVYWJ6ESYrA3Gt4ouGrgjcFhBeL1Y
 feg1tEEknVPMlO/rNC/FuVd2oNzuoyV60XsBWjHPbFiIsq5d7ZMKdRRmy
 PFAhezgFRDVjZxFCeAraxTUVGcWEdQlCivUFMY3acXX/Wr1VQpQnjP2Uz
 EuzPkqSNyIDVwg0ZnKSlekDXRHV7tyh1M/u8j1R4kwFzMCxjL2gDkF/+Q
 BP4rT+Lg9u76TEMgeOdL3E0cohFSsPMPzFf7N7y9VP847kJ0jLZNGe/VC A==;
X-CSE-ConnectionGUID: rLpbGYoMRruXq7O9zfQmFA==
X-CSE-MsgGUID: eX58ft0RT3GmX731zHyDmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75131568"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75131568"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 00:56:09 -0800
X-CSE-ConnectionGUID: +xOIZH3cTqiF5iELjnE5bQ==
X-CSE-MsgGUID: Qx10RRU/Q32BxjMay0WfVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208888157"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 00:56:08 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v3 1/1] drm/i915/display: Implement Wa_16024710867
Date: Tue,  3 Feb 2026 14:15:57 +0530
Message-ID: <20260203084557.1447691-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260203084557.1447691-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260203084557.1447691-1-mitulkumar.ajitkumar.golani@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 0F124D678A
X-Rspamd-Action: no action

Defeature port sync feature for xe3lpd onwards.

--v1:
- Use xe3lpd naming (Suraj)
- Use IS_DISPLAY_VER (Suraj)

--v2:
- Comments update and Adding Bspec link (Suraj)

Bspec: 69965
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d8739e2bb004..a3e6f9a31b20 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 	/*
 	 * We don't enable port sync on BDW due to missing w/as and
 	 * due to not having adjusted the modeset sequence appropriately.
+	 *
+	 * Wa_16024710867
+	 * Deprecate port sync support for xe3lpd+
 	 */
-	if (DISPLAY_VER(display) < 9)
+	if (!IS_DISPLAY_VER(display, 9, 20))
 		return 0;
 
 	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
-- 
2.48.1

