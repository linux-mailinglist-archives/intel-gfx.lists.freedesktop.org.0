Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p8doFmRjMWqJiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D5A690AFC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GdC0iWqc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA0910EC32;
	Tue, 16 Jun 2026 14:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B0D10EC25;
 Tue, 16 Jun 2026 14:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781621600; x=1813157600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iJuC1DxE1dhLnKJFSYx9lTGBR1/6kFCjkEqbNmj7BdM=;
 b=GdC0iWqcCNnpLbvm9pStRf8GDkkA3bd2QicZCdffOvXIaVoCk9YeU3j5
 c4Zy/CDS5Byb8aVp+DT0GM+Di6A8/mP3uufv3+ez1wJY1sOCSShRTVyMm
 e4EzArDaHlk9t+8wO17B2zMGxKs5yezZFMDnARg1rEZiaTNT+2i8BjpfC
 l4NiUsQ0CAtPw+qu9+nHyMaOUvr/yYnoWAapzf5JJ9+xML1wB1/6CWaJB
 nkM/bjeAueCKLqUpXQTW+qjaKXfv+Nl4saTtg2gbcfsBicfBrJWUnTOVA
 KOJqfB/XYvBidLzbJALRw3pTSCN6+dobgIwKvQ6XmY0biBAjBePY3i2UE w==;
X-CSE-ConnectionGUID: WSdHGrqdTBWB1bznM7NGeQ==
X-CSE-MsgGUID: 5AgZK+y9Qh+p4dsFHQlXCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69932829"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69932829"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 07:53:20 -0700
X-CSE-ConnectionGUID: Zm5L2oDRT7et21wEXNedYg==
X-CSE-MsgGUID: 6dTAgr0cQWy5zce9Oc1MiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285896310"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2026 07:53:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 04/11] drm/i915/vrr: Move CMRR hw registers to fix refresh
 rate path
Date: Tue, 16 Jun 2026 20:12:25 +0530
Message-ID: <20260616144233.832276-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28D5A690AFC

Move CMRR register writes to fix refresh rate register write path
to consolidate with fix refresh rate implementation.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e36c0cab096a..5678c3a86796 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -329,6 +329,17 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(display, TRANS_CMRR_M_HI(display, transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(display, TRANS_CMRR_M_LO(display, transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(display, TRANS_CMRR_N_HI(display, transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_n));
+		intel_de_write(display, TRANS_CMRR_N_LO(display, transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_n));
+	}
+
 	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
 		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
@@ -641,17 +652,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	if (crtc_state->cmrr.enable) {
-		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_m));
-		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_m));
-		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_n));
-		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_n));
-	}
-
 	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
 	intel_cmtg_set_vrr_timings(crtc_state);
 
-- 
2.48.1

