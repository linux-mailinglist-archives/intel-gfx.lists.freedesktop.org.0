Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5357E5E978B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 02:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D3510E4B1;
	Mon, 26 Sep 2022 00:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC14D10E4B1;
 Mon, 26 Sep 2022 00:41:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CAD5AAA91;
 Mon, 26 Sep 2022 00:41:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Mon, 26 Sep 2022 00:41:30 -0000
Message-ID: <166415289054.15112.13084667735581750808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923082628.3061408-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220923082628.3061408-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBG?=
 =?utf-8?q?ixes_integer_overflow_or_integer_truncation_issues_in_page_look?=
 =?utf-8?q?ups=2C_ttm_place_configuration_and_scatterlist_creation_=28rev2?=
 =?utf-8?q?=29?=
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

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev2)
URL   : https://patchwork.freedesktop.org/series/108945/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  arch/x86/kvm/../../../virt/kvm/kvm_main.o
In file included from ./include/linux/mm.h:26,
                 from ./include/linux/kvm_host.h:16,
                 from arch/x86/kvm/../../../virt/kvm/kvm_main.c:18:
./include/linux/overflow.h:237: error: "overflows_type" redefined [-Werror]
 #define overflows_type(x, T) __must_check_overflow(({ \
 
./include/linux/overflow.h:158: note: this is the location of the previous definition
 #define overflows_type(n, T)     \
 
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'arch/x86/kvm/../../../virt/kvm/kvm_main.o' failed
make[2]: *** [arch/x86/kvm/../../../virt/kvm/kvm_main.o] Error 1
scripts/Makefile.build:465: recipe for target 'arch/x86/kvm' failed
make[1]: *** [arch/x86/kvm] Error 2
Makefile:1852: recipe for target 'arch/x86' failed
make: *** [arch/x86] Error 2


