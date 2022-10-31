Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A015613FE5
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 22:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84F910E0F3;
	Mon, 31 Oct 2022 21:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB47F10E0D0;
 Mon, 31 Oct 2022 21:29:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A42C9A77A5;
 Mon, 31 Oct 2022 21:29:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Mon, 31 Oct 2022 21:29:24 -0000
Message-ID: <166725176464.2019.7604359354618580758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221031172655.606165-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221031172655.606165-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/hwmon=3A_Don=27t_use_FIELD=5FPREP_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/hwmon: Don't use FIELD_PREP (rev2)
URL   : https://patchwork.freedesktop.org/series/110301/
State : warning

== Summary ==

Error: dim checkpatch failed
6a7780f724ae drm/i915/hwmon: Don't use FIELD_PREP
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:70:
+#define __REG_FIELD_PREP_CHK(__mask, __val) \
+	(BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) + \
+	 BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) + \
+	 BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0)))

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:70:
+#define __REG_FIELD_PREP_CHK(__mask, __val) \
+	(BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) + \
+	 BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) + \
+	 BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0)))

-:50: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:74:
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0)))

-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:76:
+#define __REG_FIELD_PREP(__mask, __val) \
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask))))

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:79:
+#define REG_FIELD_PREP(__mask, __val) \
+	(__REG_FIELD_PREP(__mask, __val) + __REG_FIELD_PREP_CHK(__mask, __val))

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:79:
+#define REG_FIELD_PREP(__mask, __val) \
+	(__REG_FIELD_PREP(__mask, __val) + __REG_FIELD_PREP_CHK(__mask, __val))

total: 0 errors, 1 warnings, 5 checks, 31 lines checked


