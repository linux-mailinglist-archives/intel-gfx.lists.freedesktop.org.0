Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95B21378C9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 23:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA80789E3B;
	Fri, 10 Jan 2020 22:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 394C989E3B;
 Fri, 10 Jan 2020 22:00:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31550A00C7;
 Fri, 10 Jan 2020 22:00:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 10 Jan 2020 22:00:08 -0000
Message-ID: <157869360818.30836.5717600446253222475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110162930.88968-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200110162930.88968-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_ops_to_intel=5Fuc_=28rev3=29?=
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

Series: Add ops to intel_uc (rev3)
URL   : https://patchwork.freedesktop.org/series/70716/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb5e4aea2877 drm/i915/uc: Add ops to intel_uc
-:142: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#142: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_OPS' - possible side-effects?
#142: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:142: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_OPS' may be better as '(_OPS)' to avoid precedence issues
#142: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:73:
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}

-:149: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#149: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
+}
+intel_uc_ops_function(init_hw, init_hw, int, 0);

-:150: ERROR:SPACING: space prohibited before that close parenthesis ')'
#150: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:81:
+intel_uc_ops_function(fini_hw, fini_hw, void, );

total: 2 errors, 0 warnings, 3 checks, 117 lines checked
def878150533 drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
-:87: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
 }
+intel_uc_ops_function(fetch_firmwares, init_fw, void, );

-:87: ERROR:SPACING: space prohibited before that close parenthesis ')'
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
+intel_uc_ops_function(fetch_firmwares, init_fw, void, );

-:88: ERROR:SPACING: space prohibited before that close parenthesis ')'
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:81:
+intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );

total: 2 errors, 0 warnings, 1 checks, 63 lines checked
71565950a620 drm/i915/uc: Add init/fini to to intel_uc_ops
-:89: ERROR:SPACING: space prohibited before that close parenthesis ')'
#89: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:82:
+intel_uc_ops_function(init, init, void, );

-:90: ERROR:SPACING: space prohibited before that close parenthesis ')'
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:83:
+intel_uc_ops_function(fini, fini, void, );

total: 2 errors, 0 warnings, 0 checks, 65 lines checked
0960b20d5549 drm/i915/uc: Add sanitize to to intel_uc_ops
-:74: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.h:80:
 }
+intel_uc_ops_function(sanitize, sanitize, int, 0);

total: 0 errors, 0 warnings, 1 checks, 49 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
