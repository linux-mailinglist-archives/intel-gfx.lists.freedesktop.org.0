Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CP3Arnry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA336BF8E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302F910EAD4;
	Tue, 31 Mar 2026 15:43:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iTbrZTyE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A0AF10EAD4;
 Tue, 31 Mar 2026 15:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971830; x=1806507830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wdo44Vo+v4WZ6sHlct7SuLKYH+JJRHB/3NCrhLxXy4E=;
 b=iTbrZTyE87cKfcQ7fLbYcy2OJpIPHV2RmNuFY5jJHw4wte8cGJNiNIvj
 uq2aZqArGefh9x114Qm8ZAHwIO4m3/oVA7nnCYuh0ABuKmRk5zqJSI/P8
 KRT6LUljgZUCRswinQEyFmLihesIW6Tdc7EzYqxYHFS7T7JU1nPHb+AUm
 lhqPn3oenZ2luMrF8Bq1SqvHgqTZXVYSldhtoCIu/MYt1EbsKVVxkMWSn
 dUnPY728mGFjbOXcPyb7sB/0GliqeadC6CQcpIace8fLIFJ/Jg7YYLmda
 iJ25x2RcoHlw8fuCDH3+d7deaWj3O3VSR7d9V1ryUC8kjH3zU3S7lexC2 w==;
X-CSE-ConnectionGUID: XEQzrcsKSDKtM3DNTIJaEw==
X-CSE-MsgGUID: IsS+fVzZQB2MnsSZ9vZmvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76181021"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76181021"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:50 -0700
X-CSE-ConnectionGUID: gSpjszI4S1ezqSNOK43FpA==
X-CSE-MsgGUID: Mcoq3tq2RtKI7+7ZDOsZDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223519406"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:48 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/12] drm/i915/mchbar: Use intel_de_read*() for MCHBAR
 register accesses
Date: Tue, 31 Mar 2026 18:42:58 +0300
Message-ID: <20260331154259.24600-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: A4FA336BF8E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked intel_uncore_read*() with intel_de_read*()
in the MCHBAR code.

v2: Rebase due to intel_uncore_read64_2x32()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_mchbar.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
index a404fa38c9bd..16fcfe1e93ec 100644
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
@@ -59,28 +59,21 @@ static void assert_is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
 
 u16 intel_mchbar_read16(struct intel_display *display, i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
 	assert_is_mchbar_reg(display, reg);
 
-	return intel_uncore_read16(uncore, reg);
+	return intel_de_read16(display, reg);
 }
 
 u32 intel_mchbar_read(struct intel_display *display, i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
 	assert_is_mchbar_reg(display, reg);
 
-	return intel_uncore_read(uncore, reg);
+	return intel_de_read(display, reg);
 }
 
 u64 intel_mchbar_read64_2x32(struct intel_display *display, i915_reg_t reg)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-	i915_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
-
 	assert_is_mchbar_reg(display, reg);
 
-	return intel_uncore_read64_2x32(uncore, reg, upper_reg);
+	return intel_de_read64_2x32(display, reg);
 }
-- 
2.52.0

