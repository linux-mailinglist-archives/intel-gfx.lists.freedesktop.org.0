Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QObfOtAk32lcPQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 07:40:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C9D400853
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 07:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB4310E0F4;
	Wed, 15 Apr 2026 05:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLp/1AKv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0D610E67A;
 Wed, 15 Apr 2026 05:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776231630; x=1807767630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=imhwI7cBkRx6lDeZyqlPNBKKq8ew+w6ck4Jp2syREJo=;
 b=hLp/1AKv/Fu6u4mWMX7lmrKN13GCwvO+t9fK0WhCBx0P5+23jxV/P+hA
 sVJvu8aPCtRbtIOPC5Hmlanuvfedz3QzDtoT1jNQn7v9q2om9UHQqkq92
 UHFz+YlRKOifTvDea9U6plbRTZLdWDChVrWLtELSgREIom2MFtIGGf4qv
 hO1KX0bcCM3322vlmknqBpKVAuOJd7lA3waeivIYsAsucwlZ3y90s9PN8
 0CzzH0VT1GslciKWwxD854erJaTfx3JDlJRd+e/AXU+s3hqyoad8liled
 6HpHRBuhqZvXsqxDhX+Y08SXYjc2FCkcXC2GltsfefNgGxfeRzbE3NfvK A==;
X-CSE-ConnectionGUID: AaW11UedTxOQktJkAVZxzA==
X-CSE-MsgGUID: VOp7E3ZCRoiHNo1oxTrORQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="102657064"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102657064"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:40:30 -0700
X-CSE-ConnectionGUID: 0INnRTCbQOGjgEfa0GrZCw==
X-CSE-MsgGUID: +XzSYdTzSlm6+Hutef8Mcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227129791"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.37])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:40:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround for
 NVL
Date: Wed, 15 Apr 2026 08:40:00 +0300
Message-ID: <20260415054000.400070-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260415054000.400070-1-jouni.hogander@intel.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: C2C9D400853
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In NVL there is an HW optimization done. When there is an SU triggered in
Capture state, Link will be kept ON post Capture CRC SDP. Before valid SU
pixels Intel source will transmit dummy pixels. Some TCONS are improperly
considering these dummy pixels as a valid pixel data. Prior NVL link was
was turned of even if there was SU triggered in Capture state and no dummy
pixels were transmitted. These dummy pixels are problem only if SDP on
prior scanline is used and Early Transport is not in use. The workaround is
to start SU area always at scanline 0.

Bspec: 74741, 79482
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 341186622ed4..28668fed8347 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2910,6 +2910,11 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
 
+	/* Wa_16029024088 */
+	if (DISPLAY_VER(display) >= 35 && crtc_state->req_psr2_sdp_prior_scanline &&
+	    !crtc_state->enable_psr2_su_region_et)
+		crtc_state->psr2_su_area.y1 = 0;
+
 	/* Wa 14019834836 */
 	if (DISPLAY_VER(display) == 30)
 		intel_psr_apply_pr_link_on_su_wa(crtc_state);
-- 
2.43.0

