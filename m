Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF3ACAE0D6
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 20:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B1710E3B4;
	Mon,  8 Dec 2025 19:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA1910E3B4;
 Mon,  8 Dec 2025 19:11:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/vga=3A_Try_to_so?=
 =?utf-8?q?rt_out_the_VGA_decode_mess?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Dec 2025 19:11:22 -0000
Message-ID: <176522108284.67190.14315825912610298837@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/vga: Try to sort out the VGA decode mess
URL   : https://patchwork.freedesktop.org/series/158651/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      drivers/pci/pci-sysfs.o
In file included from ./include/linux/vgaarb.h:15,
                 from drivers/pci/pci-sysfs.c:28:
./include/video/vga.h:489:1: error: expected identifier or ‘(’ before ‘?’ token
  489 | ?
      | ^
make[4]: *** [scripts/Makefile.build:287: drivers/pci/pci-sysfs.o] Error 1
make[3]: *** [scripts/Makefile.build:556: drivers/pci] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2010: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


