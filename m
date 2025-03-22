Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E782EA6C8EC
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Mar 2025 11:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AFB10E031;
	Sat, 22 Mar 2025 10:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FB410E031;
 Sat, 22 Mar 2025 10:07:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGJpdHM6IEZpeGVkLXR5?=
 =?utf-8?b?cGUgR0VOTUFTS19VKigpIGFuZCBCSVRfVSooKSAocmV2Mik=?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Mar 2025 10:07:38 -0000
Message-ID: <174263805892.66720.1560153090223481590@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250322-fixed-type-genmasks-v7-0-da380ff1c5b9@wanadoo.fr>
In-Reply-To: <20250322-fixed-type-genmasks-v7-0-da380ff1c5b9@wanadoo.fr>
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

Series: bits: Fixed-type GENMASK_U*() and BIT_U*() (rev2)
URL   : https://patchwork.freedesktop.org/series/146088/
State : warning

== Summary ==

Error: dim checkpatch failed
66702fd9fb3b bits: introduce fixed-type GENMASK_U*()
-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 't' - possible side-effects?
#89: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'h' - possible side-effects?
#89: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

-:89: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'l' - possible side-effects?
#89: FILE: include/linux/bits.h:48:
+#define GENMASK_TYPE(t, h, l)					\
+	((t)(GENMASK_INPUT_CHECK(h, l) +			\
+	     (type_max(t) << (l) &				\
+	      type_max(t) >> (BITS_PER_TYPE(t) - 1 - (h)))))

total: 0 errors, 0 warnings, 3 checks, 66 lines checked
78a9e8e9feff bits: introduce fixed-type BIT_U*()
-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'nr' - possible side-effects?
#42: FILE: include/linux/bits.h:69:
+#define BIT_TYPE(type, nr) ((type)(BIT_INPUT_CHECK(type, nr) + BIT_ULL(nr)))

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
2c7dada269ed drm/i915: Convert REG_GENMASK*() to fixed-width GENMASK_U*()
300efb11156e test_bits: add tests for GENMASK_U*()
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
56e1dfba3900 test_bits: add tests for BIT_U*()


