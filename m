Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GD/FSJV1mm8DQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:16:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0DF3BCB60
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3F210E648;
	Wed,  8 Apr 2026 13:16:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l32KimaN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3001710E63C;
 Wed,  8 Apr 2026 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775654175; x=1807190175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bHmDtJqIP3oG7Kxp2gN+n5ufJ4nCVwT20JYDYyaywH8=;
 b=l32KimaNLrhDVg9xK1DAmj4F+DT7Bwad5KaaxoHn4WIHhCEJUnyFH3UF
 nXzi/Sc7zwFXj2dVmIOle8nolRZ18vbD0anyhxWuMErF1RA2ZZT8QE923
 gpSRGiGrIbld3G9Pcvl6+j0DFBkVwNIkRt9HPFWyvglvjPppY3teIlk8A
 bf9ytT2NdhyJ5B3CEdk2bCjshadvbSfDsVHlbq3dchtCF/BB8sVqKxCb1
 sWFn6oYNhNcYpGxcsh+bL/TMRbxHjKeVBAEhBAOICrVWagsuScBVC6B2e
 rl0I3XzM8Fk/Nohb3m24ObA4T2wX7di9S2YJlrn6rqCgWWVlYwkN7IYuG g==;
X-CSE-ConnectionGUID: u7vY43iURj2PlR9SAxWFPw==
X-CSE-MsgGUID: Jt9kh1YLQGCVgk9Kt3qcnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94216457"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94216457"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:16:15 -0700
X-CSE-ConnectionGUID: vGrzNeCySNyy7+7q8IRSJQ==
X-CSE-MsgGUID: atTr77gOSsaj5pL881n/zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="266457418"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:16:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/display: add struct intel_error_regs and use it
Date: Wed,  8 Apr 2026 16:15:50 +0300
Message-ID: <08aab16c568f7a19dd9514cc92168abc00cf4834.1775653994.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775653994.git.jani.nikula@intel.com>
References: <cover.1775653994.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: CD0DF3BCB60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add struct intel_error_regs, a display version of struct
i915_error_regs, and use it. The goal is to reduce the dependency on
i915 core types and headers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_reg_defs.h | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_regs.h     | 2 +-
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8b6b4709989e..3869551cb9fd 100644
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

