Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F081A56D25
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 17:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EDA10E2A2;
	Fri,  7 Mar 2025 16:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953C610E2A2;
 Fri,  7 Mar 2025 16:07:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_bits=3A_Fixed-type_G?=
 =?utf-8?q?ENMASK=28=29/BIT=28=29_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 16:07:47 -0000
Message-ID: <174136366760.3031.3112029929590388163@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250305-fixed-type-genmasks-v4-0-1873dcdf6723@wanadoo.fr>
In-Reply-To: <20250305-fixed-type-genmasks-v4-0-1873dcdf6723@wanadoo.fr>
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

Series: bits: Fixed-type GENMASK()/BIT() (rev2)
URL   : https://patchwork.freedesktop.org/series/145997/
State : warning

== Summary ==

Error: dim checkpatch failed
f96fba907aff bits: fix typo 'unsigned __init128' -> 'unsigned __int128'
fdc85516eb83 bits: split the definition of the asm and non-asm GENMASK()
3444ee4c6891 bits: introduce fixed-type genmasks
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#71: FILE: include/linux/bits.h:39:
+#define GENMASK_t(t, h, l)				\
+	(GENMASK_INPUT_CHECK(h, l) +			\
+	 (((t)~ULL(0) - ((t)1 << (l)) + 1) &		\
+	  ((t)~ULL(0) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#71: FILE: include/linux/bits.h:39:
+#define GENMASK_t(t, h, l)				\
+	(GENMASK_INPUT_CHECK(h, l) +			\
+	 (((t)~ULL(0) - ((t)1 << (l)) + 1) &		\
+	  ((t)~ULL(0) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#71: FILE: include/linux/bits.h:39:
+#define GENMASK_t(t, h, l)				\
+	(GENMASK_INPUT_CHECK(h, l) +			\
+	 (((t)~ULL(0) - ((t)1 << (l)) + 1) &		\
+	  ((t)~ULL(0) >> (BITS_PER_TYPE(t) - 1 - (h)))))

total: 0 errors, 0 warnings, 3 checks, 56 lines checked
041791be97ad bits: introduce fixed-type BIT
-:32: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#32: FILE: include/linux/bits.h:82:
+#define BIT_U8(b) (BIT_INPUT_CHECK(u8, b) + (unsigned int)BIT(b))

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#33: FILE: include/linux/bits.h:83:
+#define BIT_U16(b) (BIT_INPUT_CHECK(u16, b) + (unsigned int)BIT(b))

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#34: FILE: include/linux/bits.h:84:
+#define BIT_U32(b) (BIT_INPUT_CHECK(u32, b) + (u32)BIT(b))

-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#35: FILE: include/linux/bits.h:85:
+#define BIT_U64(b) (BIT_INPUT_CHECK(u64, b) + (u64)BIT_ULL(b))

total: 0 errors, 0 warnings, 4 checks, 22 lines checked
a4780cb0f51e drm/i915: Convert REG_GENMASK* to fixed-width GENMASK_*
669a27a65a3a test_bits: add tests for __GENMASK() and __GENMASK_ULL()
d734241f0452 test_bits: add tests for fixed-type genmasks
-:26: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#26: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)
                                        ^

-:26: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#26: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)
                                                    ^

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#26: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)

total: 2 errors, 0 warnings, 1 checks, 37 lines checked
78ae5fb1ad3d test_bits: add tests for fixed-type BIT


