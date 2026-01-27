Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIPmIdBveGmjpwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 08:57:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C62690E00
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 08:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BC810E4D0;
	Tue, 27 Jan 2026 07:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fR/I/88/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DAE10E468;
 Tue, 27 Jan 2026 07:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769500620; x=1801036620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uCv3pGgErWDgTQjmtYedWPhWT8BqUXsAhqVpTGRhU/Q=;
 b=fR/I/88/Et+x4owIe87bj8R6lIroNluGlhAj32exUeKgDzerzinI9Odf
 1b9ULfwxIicOxpoR+1q+uPIWecHrcOHKhETpYY8iQLdYJYETq6PVNesOM
 GG8J2ds3unGcSUA9y65pBJodc8YDzjJRCyuyk0hY56e6JPflEKA2m+KnO
 Gz+nQ89UYMXJALHgw3MPmOJ107i+2DntlPyImVAyRZkQjhHhtcuN6dDOp
 IhS3EnyJGG1XR3I7JrAg0RfuowSljgWytrCYBvAP2NQnOLTsrF8X4MGuz
 4StP1nxor2cEQ5a6P2ak1RFN1IDHwz/ksk4ptxGt137yaCfA4JzysCZc3 Q==;
X-CSE-ConnectionGUID: a7kicRRTQda3y62yUmtUkQ==
X-CSE-MsgGUID: pBSWyKduRyeVaXQjsMO62Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="81320948"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="81320948"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 23:57:00 -0800
X-CSE-ConnectionGUID: bKQyGOPAQzKCTJJB+pp4vA==
X-CSE-MsgGUID: 5zdZDW9dQJW8BtwxOeIu3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207026714"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 26 Jan 2026 23:57:00 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Date: Tue, 27 Jan 2026 13:16:44 +0530
Message-ID: <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260127074644.991015-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260127074644.991015-1-mitulkumar.ajitkumar.golani@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5C62690E00
X-Rspamd-Action: no action

Defeature port sync feature for xe3lpd onwards.

--v1:
- Use xe3lpd naming (Suraj)
- Use IS_DISPLAY_VER (Suraj)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
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

