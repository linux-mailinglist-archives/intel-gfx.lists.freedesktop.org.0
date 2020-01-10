Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B96137A18
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 00:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1340D6E138;
	Fri, 10 Jan 2020 23:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E72D16E138;
 Fri, 10 Jan 2020 23:23:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF20DA0114;
 Fri, 10 Jan 2020 23:23:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 10 Jan 2020 23:23:34 -0000
Message-ID: <157869861489.30835.14444748071676352823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110222723.14724-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200110222723.14724-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_ops_to_intel=5Fuc_=28rev4=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add ops to intel_uc (rev4)
URL   : https://patchwork.freedesktop.org/series/70716/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2e1f188d8ce3 drm/i915/uc: Add ops to intel_uc
-:147: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#147: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:147: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_OPS' - possible side-effects?
#147: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:147: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_OPS' may be better as '(_OPS)' to avoid precedence issues
#147: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:154: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#154: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
+}
+intel_uc_ops_function(init_hw, init_hw, int, 0);

-:155: ERROR:SPACING: space prohibited before that close parenthesis ')'
#155: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:81:
+intel_uc_ops_function(fini_hw, fini_hw, void, );

total: 2 errors, 0 warnings, 3 checks, 119 lines checked
f899ba846e7d drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
-:79: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#79: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
 }
+intel_uc_ops_function(fetch_firmwares, init_fw, void, );

-:79: ERROR:SPACING: space prohibited before that close parenthesis ')'
#79: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
+intel_uc_ops_function(fetch_firmwares, init_fw, void, );

-:80: ERROR:SPACING: space prohibited before that close parenthesis ')'
#80: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:81:
+intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );

total: 2 errors, 0 warnings, 1 checks, 55 lines checked
cb2532cf174b drm/i915/uc: Add init/fini to to intel_uc_ops
-:81: ERROR:SPACING: space prohibited before that close parenthesis ')'
#81: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:82:
+intel_uc_ops_function(init, init, void, );

-:82: ERROR:SPACING: space prohibited before that close parenthesis ')'
#82: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:83:
+intel_uc_ops_function(fini, fini, void, );

total: 2 errors, 0 warnings, 0 checks, 57 lines checked
ab06f9906171 drm/i915/uc: Add sanitize to to intel_uc_ops
-:67: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#67: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
 }
+intel_uc_ops_function(sanitize, sanitize, int, 0);

total: 0 errors, 0 warnings, 1 checks, 43 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
