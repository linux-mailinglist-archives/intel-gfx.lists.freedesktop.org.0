Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA046D02A1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 13:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F61E10E246;
	Thu, 30 Mar 2023 11:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF70C10E232;
 Thu, 30 Mar 2023 11:10:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84032AADD6;
 Thu, 30 Mar 2023 11:10:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 30 Mar 2023 11:10:03 -0000
Message-ID: <168017460353.18828.2821974388712668741@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230330104243.2120761-1-jani.nikula@intel.com>
In-Reply-To: <20230330104243.2120761-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_log2=3A_make_is=5Fpower=5Fof=5F2=28=29_more_generic?=
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

Series: log2: make is_power_of_2() more generic
URL   : https://patchwork.freedesktop.org/series/115863/
State : warning

== Summary ==

Error: dim checkpatch failed
5c5c2de058cb log2: add helper __IS_POWER_OF_2()
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#24: FILE: include/linux/log2.h:36:
+#define __IS_POWER_OF_2(n) ((n) != 0 && (((n) & ((n) - 1)) == 0))

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
66a1c1b93361 log2: have is_power_of_2() support bigger types than unsigned long
-:28: WARNING:PREFER_DEFINED_ATTRIBUTE_MACRO: Prefer __attribute_const__ over __attribute__((const))
#28: FILE: include/linux/log2.h:38:
+static inline __attribute__((const))

-:34: WARNING:PREFER_DEFINED_ATTRIBUTE_MACRO: Prefer __attribute_const__ over __attribute__((const))
#34: FILE: include/linux/log2.h:44:
+static inline __attribute__((const))

-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#52: FILE: include/linux/log2.h:58:
+#define is_power_of_2(n)						\
+	__builtin_choose_expr(sizeof(n) > sizeof(unsigned long),	\
+			      __is_power_of_2_ull(n),			\
+			      __is_power_of_2(n))

total: 0 errors, 2 warnings, 1 checks, 33 lines checked
1d19fef56ddc log2: allow use of is_power_of_2() in constant expressions
385585e52a78 drm/i915/reg: use is_power_of_2() from log2.h


