Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB2083A1E7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 07:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD5310E2FC;
	Wed, 24 Jan 2024 06:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BD910E132;
 Wed, 24 Jan 2024 06:15:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fixed-type_GENMASK/B?=
 =?utf-8?q?IT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 24 Jan 2024 06:15:46 -0000
Message-ID: <170607694609.685200.3474649150155175990@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240124050205.3646390-1-lucas.demarchi@intel.com>
In-Reply-To: <20240124050205.3646390-1-lucas.demarchi@intel.com>
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

Series: Fixed-type GENMASK/BIT
URL   : https://patchwork.freedesktop.org/series/129116/
State : warning

== Summary ==

Error: dim checkpatch failed
8ab0681c6133 bits: introduce fixed-type genmasks
-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#48: FILE: include/linux/bits.h:35:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#48: FILE: include/linux/bits.h:35:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#48: FILE: include/linux/bits.h:35:
+#define __GENMASK(t, h, l) \
+	(GENMASK_INPUT_CHECK(h, l) + \
+	 (((t)~0ULL - ((t)(1) << (l)) + 1) & \
+	 ((t)~0ULL >> (BITS_PER_TYPE(t) - 1 - (h)))))

total: 0 errors, 0 warnings, 3 checks, 41 lines checked
8a3bc4a2a64a bits: Introduce fixed-type BIT
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#19: FILE: include/linux/bits.h:27:
+#define BIT_INPUT_CHECK(type, b) \
+	((BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
+		__is_constexpr(b), (b) >= BITS_PER_TYPE(type), 0))))

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#36: FILE: include/linux/bits.h:51:
+#define BIT_U8(b)		((u8)(BIT_INPUT_CHECK(u8, b) + BIT(b)))

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#37: FILE: include/linux/bits.h:52:
+#define BIT_U16(b)		((u16)(BIT_INPUT_CHECK(u16, b) + BIT(b)))

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#38: FILE: include/linux/bits.h:53:
+#define BIT_U32(b)		((u32)(BIT_INPUT_CHECK(u32, b) + BIT(b)))

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#39: FILE: include/linux/bits.h:54:
+#define BIT_U64(b)		((u64)(BIT_INPUT_CHECK(u64, b) + BIT(b)))

total: 0 errors, 0 warnings, 5 checks, 25 lines checked
0b741f2d90b2 drm/i915: Convert REG_GENMASK* to fixed-width GENMASK_*


