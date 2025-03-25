Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC18A70CCC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 23:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1B110E604;
	Tue, 25 Mar 2025 22:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6432B10E604;
 Tue, 25 Mar 2025 22:22:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGJpdHM6IEZpeGVkLXR5?=
 =?utf-8?b?cGUgR0VOTUFTS19VKigpIGFuZCBCSVRfVSooKSAocmV2Myk=?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Mar 2025 22:22:55 -0000
Message-ID: <174294137540.2941.11142533953373969841@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250326-fixed-type-genmasks-v8-0-24afed16ca00@wanadoo.fr>
In-Reply-To: <20250326-fixed-type-genmasks-v8-0-24afed16ca00@wanadoo.fr>
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

Series: bits: Fixed-type GENMASK_U*() and BIT_U*() (rev3)
URL   : https://patchwork.freedesktop.org/series/146088/
State : warning

== Summary ==

Error: dim checkpatch failed
7dfb8a68364e bits: add comments and newlines to #if, #else and #endif directives
bea86a07c2ae bits: introduce fixed-type GENMASK_U*()
-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#95: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#95: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#95: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

total: 0 errors, 0 warnings, 3 checks, 54 lines checked
cfdf0e232526 bits: introduce fixed-type BIT_U*()
-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nr' - possible side-effects?
#43: FILE: include/linux/bits.h:69:
+#define BIT_TYPE(type, nr) ((type)(BIT_INPUT_CHECK(type, nr) + BIT_ULL(nr)))

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
4b8bd815061c drm/i915: Convert REG_GENMASK*() to fixed-width GENMASK_U*()
25d130311905 test_bits: add tests for GENMASK_U*()
-:27: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#27: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)
                                        ^

-:27: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#27: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)
                                                    ^

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#27: FILE: lib/test_bits.c:10:
+#define assert_type(t, x) _Generic(x, t: x, default: 0)

total: 2 errors, 0 warnings, 1 checks, 37 lines checked
8035be959954 test_bits: add tests for BIT_U*()


