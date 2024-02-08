Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D07884DB7B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 09:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0788010E258;
	Thu,  8 Feb 2024 08:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FF210E284;
 Thu,  8 Feb 2024 08:25:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fixed-type_GENMASK/B?=
 =?utf-8?q?IT_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 Feb 2024 08:25:42 -0000
Message-ID: <170738074275.1092524.1314513572189759647@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240208074521.577076-1-lucas.demarchi@intel.com>
In-Reply-To: <20240208074521.577076-1-lucas.demarchi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fixed-type GENMASK/BIT (rev2)
URL   : https://patchwork.freedesktop.org/series/129116/
State : warning

== Summary ==

Error: dim checkpatch failed
0a7165f6a0f1 bits: introduce fixed-type genmasks
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#72: FILE: include/linux/bits.h:45:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#72: FILE: include/linux/bits.h:45:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#72: FILE: include/linux/bits.h:45:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

total: 0 errors, 0 warnings, 3 checks, 51 lines checked
e4ae97c3eede bits: Introduce fixed-type BIT
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#20: FILE: include/linux/bits.h:27:
+#define BIT_INPUT_CHECK(type, b) \
+	((BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
+		__is_constexpr(b), (b) >= BITS_PER_TYPE(type), 0))))

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#45: FILE: include/linux/bits.h:69:
+#define BIT_U8(b)		((u8)(BIT_INPUT_CHECK(u8, b) + BIT(b)))

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#46: FILE: include/linux/bits.h:70:
+#define BIT_U16(b)		((u16)(BIT_INPUT_CHECK(u16, b) + BIT(b)))

-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#47: FILE: include/linux/bits.h:71:
+#define BIT_U32(b)		((u32)(BIT_INPUT_CHECK(u32, b) + BIT(b)))

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#48: FILE: include/linux/bits.h:72:
+#define BIT_U64(b)		((u64)(BIT_INPUT_CHECK(u64, b) + BIT(b)))

total: 0 errors, 0 warnings, 5 checks, 33 lines checked
079bece4e2e7 drm/i915: Convert REG_GENMASK* to fixed-width GENMASK_*


