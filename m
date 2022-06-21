Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259BB553380
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 15:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB40A10F5A0;
	Tue, 21 Jun 2022 13:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BFD210EBB3;
 Tue, 21 Jun 2022 13:24:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22D38A77A5;
 Tue, 21 Jun 2022 13:24:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tilak Tangudu" <tilak.tangudu@intel.com>
Date: Tue, 21 Jun 2022 13:24:02 -0000
Message-ID: <165581784211.13647.6103596743571924715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_D3Cold-Off_support_for_runtime-pm?=
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

Series: drm/i915: Add D3Cold-Off support for runtime-pm
URL   : https://patchwork.freedesktop.org/series/105427/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
drivers/gpu/drm/i915/i915_driver.c:108:6: error: no previous prototype for ‘i915_save_pci_state’ [-Werror=missing-prototypes]
 bool i915_save_pci_state(struct pci_dev *pdev)
      ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_driver.c:127:6: error: no previous prototype for ‘i915_load_pci_state’ [-Werror=missing-prototypes]
 void i915_load_pci_state(struct pci_dev *pdev)
      ^~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/i915_driver.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_driver.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1843: recipe for target 'drivers' failed
make: *** [drivers] Error 2


