Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA9E7C495B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 07:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE7710E0D6;
	Wed, 11 Oct 2023 05:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5C5D10E0D6;
 Wed, 11 Oct 2023 05:45:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 847FBAADD7;
 Wed, 11 Oct 2023 05:45:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Wed, 11 Oct 2023 05:45:18 -0000
Message-ID: <169700311852.26512.5816342289976783907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
In-Reply-To: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_new_DG2_PCI_IDs?=
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

Series: drm/i915: Add new DG2 PCI IDs
URL   : https://patchwork.freedesktop.org/series/124937/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      arch/x86/kernel/early-quirks.o
In file included from arch/x86/kernel/early-quirks.c:21:
./include/drm/i915_pciids.h:695:2: error: expected ‘;’ before ‘extern’
  695 | h
      |  ^
      |  ;
make[4]: *** [scripts/Makefile.build:243: arch/x86/kernel/early-quirks.o] Error 1
make[3]: *** [scripts/Makefile.build:480: arch/x86/kernel] Error 2
make[2]: *** [scripts/Makefile.build:480: arch/x86] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


