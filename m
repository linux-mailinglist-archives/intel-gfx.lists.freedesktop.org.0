Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFqEKmcvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5C332AD92
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFF110E880;
	Wed, 25 Mar 2026 18:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGA5pzzZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D96810E873;
 Wed, 25 Mar 2026 18:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464867; x=1806000867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y1VudpP9Gk1T1EuN5Ikj5nFiPMH3HO5TFUn7KWCzIeU=;
 b=MGA5pzzZdPoJFvJoXf7X4TEHh2jQKeLb8jZkr4T8pVdBChlxk1sRex/+
 cuuPSjokpbKkWUIDxNvnsPp2N2xFr3tmR0lmYquBk32/MQ/UZ+QYhk3Wr
 e1V+zhUbRjbdRhfXvdEUyufkke+48gHCpci0AigbY+GSW4MTZzUm+q/Gx
 XwOFcZVK9DWA5PMgGp9bemqIbNuST8POOR9JhHDRXGBOBD7VYy40Si4TN
 US+IvdDU4TIfEes5X6D88qqVxeU2gE3Brtq1bejRsU/JeJn9YEt2BaX0F
 g5x7HDyLijM7rioqMbVqAsbpHaXd1yocywPW6wtsAyU7+H6HNARMOeC0b g==;
X-CSE-ConnectionGUID: XVtvRWsQQWmbARWx3e4U+A==
X-CSE-MsgGUID: /XHrDelwS46MUDtFm3t3uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86991694"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86991694"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:26 -0700
X-CSE-ConnectionGUID: GJ+L8gMfTmqJ2IbBz529IQ==
X-CSE-MsgGUID: oFUbzmOTSBC8ArP2R8ZIAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221448793"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915/mchbar: Use intel_de_read*() for MCHBAR
 register accesses
Date: Wed, 25 Mar 2026 20:53:40 +0200
Message-ID: <20260325185342.11482-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4A5C332AD92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked intel_uncore_read*() with intel_de_read*()
in the MCHBAR code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_mchbar.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
index 82b47c00101a..da74147f471e 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.c
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -7,10 +7,10 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_mchbar.h"
 #include "intel_mchbar_regs.h"
-#include "intel_uncore.h"
 
 static bool has_mchbar_mirror(struct intel_display *display)
 {
@@ -53,29 +53,23 @@ static bool is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
 u16 intel_mchbar_read16(struct intel_display *display,
 			i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
 	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
 
-	return intel_uncore_read16(uncore, reg);
+	return intel_de_read16(display, reg);
 }
 
 u32 intel_mchbar_read(struct intel_display *display,
 		      i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
 	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
 
-	return intel_uncore_read(uncore, reg);
+	return intel_de_read(display, reg);
 }
 
 u64 intel_mchbar_read64(struct intel_display *display,
 			i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
 	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
 
-	return intel_uncore_read64(uncore, reg);
+	return intel_de_read64_2x32(display, reg);
 }
-- 
2.52.0

