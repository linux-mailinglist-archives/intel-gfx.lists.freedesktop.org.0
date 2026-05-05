Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ATSkEZq1+WmNBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:17:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82514C96F5
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4846910E0F1;
	Tue,  5 May 2026 09:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DJkAzmti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E8510E0F1;
 Tue,  5 May 2026 09:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777972632; x=1809508632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UnT6XCus51VEK1/MPzejO4nF5Hr/qFBrNPmjQbvOSCU=;
 b=DJkAzmtiizqhm0RzcC/k+Te2R6Ls4vLlFsqnHVWuWb46XPX2qhYygP3R
 DNoXvQQZuYqKAApc6LkIwyROcIEqvELAZpKf/OO07afPTnnxNXdj5pQnf
 e4eOwjLxbIm8YaTEqDNeueS0ZL5c3TgjVnpRIHvVH3DATFucHAXMQIKVM
 IzyNI2dFibT6LnXoMl/tCWVJl3YyX0WfQpnMWhXTWUIX6ck2pE7rUUBTB
 3BQ/WMrgbbS0Z6KqxFBJt9DoNIWvmcOrI8xDpHwJioSqM0vC64TPGrsd4
 fCKtZD8m01qz6JIOPtSh6j+4/nWV6tr/ekrp3WT5YvM2Tx9rCS3TpEj9p w==;
X-CSE-ConnectionGUID: 10rM7Y13Rl2Fk5OJZ3B4/Q==
X-CSE-MsgGUID: O+mJsEGYRIqw5NDZ+WtI5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78887975"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="78887975"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 02:17:11 -0700
X-CSE-ConnectionGUID: euM7gfM7S9a5BVnQWz37kg==
X-CSE-MsgGUID: up9frIiyRE2DavVI1oLoKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="234752645"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 02:17:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [RESEND 3/4] drm/i915/display: add struct intel_error_regs and use it
Date: Tue,  5 May 2026 12:16:47 +0300
Message-ID: <7f909c6b1f7ae623792b5abc3d31d4a682006e24.1777972548.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777972548.git.jani.nikula@intel.com>
References: <cover.1777972548.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: C82514C96F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Add struct intel_error_regs, a display version of struct
i915_error_regs, and use it. The goal is to reduce the dependency on
i915 core types and headers.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_reg_defs.h | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_regs.h     | 2 +-
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0c9c21b1290b..b679992cb1e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -73,7 +73,7 @@ static void irq_init(struct intel_display *display, struct intel_irq_regs regs,
 	intel_de_posting_read(display, regs.imr);
 }
 
-static void error_reset(struct intel_display *display, struct i915_error_regs regs)
+static void error_reset(struct intel_display *display, struct intel_error_regs regs)
 {
 	intel_de_write(display, regs.emr, 0xffffffff);
 	intel_de_posting_read(display, regs.emr);
@@ -84,7 +84,7 @@ static void error_reset(struct intel_display *display, struct i915_error_regs re
 	intel_de_posting_read(display, regs.eir);
 }
 
-static void error_init(struct intel_display *display, struct i915_error_regs regs,
+static void error_init(struct intel_display *display, struct intel_error_regs regs,
 		       u32 emr_val)
 {
 	intel_de_write(display, regs.eir, 0xffffffff);
diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
index d044967aa6d9..a56f8ed055f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -20,6 +20,14 @@ struct intel_irq_regs {
 #define INTEL_IRQ_REGS(_imr, _ier, _iir) \
 	((const struct intel_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
 
+struct intel_error_regs {
+	intel_reg_t emr;
+	intel_reg_t eir;
+};
+
+#define INTEL_ERROR_REGS(_emr, _eir) \
+	((const struct intel_error_regs){ .emr = (_emr), .eir = (_eir) })
+
 #define VLV_DISPLAY_BASE		0x180000
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4fc18e5ee239..d87e52d278c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -117,7 +117,7 @@
 #define   VLV_ERROR_PAGE_TABLE				(1 << 4)
 #define   VLV_ERROR_CLAIM				(1 << 0)
 
-#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
+#define VLV_ERROR_REGS		INTEL_ERROR_REGS(VLV_EMR, VLV_EIR)
 
 #define _MBUS_ABOX0_CTL			0x45038
 #define _MBUS_ABOX1_CTL			0x45048
-- 
2.47.3

