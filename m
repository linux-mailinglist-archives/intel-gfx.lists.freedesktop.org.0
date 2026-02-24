Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDYyNC2tnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878E718807C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB7010E588;
	Tue, 24 Feb 2026 13:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/I00DNv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5C510E14D;
 Tue, 24 Feb 2026 13:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941162; x=1803477162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zezaLf4QjVDrPKiPVH51aXVKH/YVjGYtF6niYVCGHHQ=;
 b=K/I00DNva6XeDXTxkT52d4CdBsuDtMBuF+L2F6whfSjD2z6WMZGp7ndn
 /okS8ZtRjaMKkmj8e6BK0G6ejuqK84uOrGwLzf0qyKbhhxAzW0dskUr3O
 Nu/hEAXE0la1lRCa67WYgDnbHQ3s9/jZYO13B2kg8eN23X7SbTTXQlbs6
 mL/6q78wPVFOZDk9htoL8cOcGqtFNd68guwjpD61sdBoPYPaLQmOb6AZG
 77lkbYCfZQTm45CW7HGtk0gi2YmtfDyI/GkImaMtSP1eMnozRmuIrY0VY
 ecdVlH47xFze7rNEvmCX5YFAhG8NLFdj4aM9Ts4qYtjGbPGH20GJmWcb+ g==;
X-CSE-ConnectionGUID: awXpkp1mQRCq/1qMsrGWpg==
X-CSE-MsgGUID: 05SVGnEqTfioOFSYuSUETQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60531013"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60531013"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:42 -0800
X-CSE-ConnectionGUID: ogUZGbixRdWPskN5/85kOw==
X-CSE-MsgGUID: 0ntpEVuFTHiKEeFgkO6lYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925240"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:40 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 07/16] drm/i915/display: convert W/As in intel_display.c to
 new framework
Date: Tue, 24 Feb 2026 15:49:54 +0200
Message-ID: <20260224135208.140752-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 878E718807C
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eea2d3ca942a..7212f267dd9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -454,7 +454,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	}
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(display) == 13)
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_22012358565))
 		intel_de_rmw(display, PIPE_ARB_CTL(display, pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
@@ -708,7 +708,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-	if (display->platform.dg2)
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14010547955))
 		tmp |= DG2_RENDER_CCSTAG_4_3_EN;
 
 	intel_de_write(display, PIPE_CHICKEN(pipe), tmp);
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index e7243e4dba4f..f51e5a86164b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -77,6 +77,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_13012396614:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 3500;
+	case INTEL_DISPLAY_WA_14010547955:
+		return display->platform.dg2;
 	case INTEL_DISPLAY_WA_14010685332:
 		return INTEL_PCH_TYPE(display) >= PCH_CNP &&
 			INTEL_PCH_TYPE(display) < PCH_DG1;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index de0ed7698c61..a9346e763112 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_1409767108,
 	INTEL_DISPLAY_WA_13012396614,
+	INTEL_DISPLAY_WA_14010547955,
 	INTEL_DISPLAY_WA_14010685332,
 	INTEL_DISPLAY_WA_14011294188,
 	INTEL_DISPLAY_WA_14011503030,
-- 
2.51.0

