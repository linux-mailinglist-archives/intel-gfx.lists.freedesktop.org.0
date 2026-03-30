Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAZKMnp0ymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1655B35B927
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9835C10E767;
	Mon, 30 Mar 2026 13:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUkIER/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FBA910E768;
 Mon, 30 Mar 2026 13:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774875767; x=1806411767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8l/haszAM7t3l9Zk8PQNyCvj8lB1FD5Aihm0n59Dr40=;
 b=UUkIER/C+zwRAopBnRbpMz1ekk9gXtlwW7BOkrMZSqXXwc95WNphdWTv
 ABSDZSpU11MGVB+yAd9lXQP5T/tQ3KknJsab+iqtLKDmdkxyP6XRVmu3K
 iVnS9hF11QFVq0D0hWtK1NzHnRnWw09GpEQWH1MdDfRmeriOz8jQQqaOi
 Cnx/tXIDLmhAeGviFtmN+COkI0t7nmxHvLskNm4hpCl+W6C5pCmxHzNXz
 zVbHrLlcPGrNgBn0uLOaLyJU5+iAqqY/4eZ7/XyKxuQ443rMU/+u2q0kD
 yh7MyMLJrnlgcBaoXBTGXCH3B5L/xyqe/o3rPwI+yU99aGJGZXLLF23VP Q==;
X-CSE-ConnectionGUID: 9brZ7wnwT+KjOienPTzp3A==
X-CSE-MsgGUID: XQAIoFuYThitSm5QZDw58Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="78462867"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="78462867"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:47 -0700
X-CSE-ConnectionGUID: VBZzI4K8Quam66M2Eh62PQ==
X-CSE-MsgGUID: SH7m0+DdSra/29UkQcXWvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="263988636"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/xe/step: switch to the shared step definitions with
 i915
Date: Mon, 30 Mar 2026 16:02:34 +0300
Message-ID: <8173d9d753b343ba127d86277344248a6b1d0c3f.1774875688.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774875688.git.jani.nikula@intel.com>
References: <cover.1774875688.git.jani.nikula@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 1655B35B927
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use the shared stepping enums from include/drm/intel/step.h.

For now, define xe_step as intel_step to avoid mass renames at the same
time. For compat, we can remove the reverse macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/xe/compat-i915-headers/intel_step.h   |  4 +-
 drivers/gpu/drm/xe/xe_step_types.h            | 63 ++-----------------
 2 files changed, 5 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
index 0eabe2866f5f..cb55a659856b 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
@@ -6,8 +6,6 @@
 #ifndef __INTEL_STEP_H__
 #define __INTEL_STEP_H__
 
-#include "xe_step_types.h"
-
-#define intel_step xe_step
+#include <drm/intel/step.h>
 
 #endif /* __INTEL_STEP_H__ */
diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
index 43ca73850739..808385f81804 100644
--- a/drivers/gpu/drm/xe/xe_step_types.h
+++ b/drivers/gpu/drm/xe/xe_step_types.h
@@ -8,6 +8,10 @@
 
 #include <linux/types.h>
 
+#include <drm/intel/step.h>
+
+#define xe_step intel_step
+
 struct xe_step_info {
 	u8 platform;
 	u8 graphics;
@@ -15,63 +19,4 @@ struct xe_step_info {
 	u8 basedie;
 };
 
-#define STEP_ENUM_VAL(name)  STEP_##name,
-
-/*
- * Always define four minor steppings 0-3 for each stepping to match GMD ID
- * spacing of values. See xe_step_gmdid_get().
- */
-#define STEP_NAME_LIST(func)		\
-	func(A0)			\
-	func(A1)			\
-	func(A2)			\
-	func(A3)			\
-	func(B0)			\
-	func(B1)			\
-	func(B2)			\
-	func(B3)			\
-	func(C0)			\
-	func(C1)			\
-	func(C2)			\
-	func(C3)			\
-	func(D0)			\
-	func(D1)			\
-	func(D2)			\
-	func(D3)			\
-	func(E0)			\
-	func(E1)			\
-	func(E2)			\
-	func(E3)			\
-	func(F0)			\
-	func(F1)			\
-	func(F2)			\
-	func(F3)			\
-	func(G0)			\
-	func(G1)			\
-	func(G2)			\
-	func(G3)			\
-	func(H0)			\
-	func(H1)			\
-	func(H2)			\
-	func(H3)			\
-	func(I0)			\
-	func(I1)			\
-	func(I2)			\
-	func(I3)			\
-	func(J0)			\
-	func(J1)			\
-	func(J2)			\
-	func(J3)
-
-/*
- * Symbolic steppings that do not match the hardware. These are valid both as gt
- * and display steppings as symbolic names.
- */
-enum xe_step {
-	STEP_NONE = 0,
-	STEP_NAME_LIST(STEP_ENUM_VAL)
-	STEP_FUTURE,
-	STEP_FOREVER,
-};
-
 #endif
-- 
2.47.3

