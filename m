Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AA5849046
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 21:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA4310EDFD;
	Sun,  4 Feb 2024 20:05:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5837410EDF6;
 Sun,  4 Feb 2024 20:05:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Cursor_Fault_Fixes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 04 Feb 2024 20:05:55 -0000
Message-ID: <170707715536.1023984.10635156911682064665@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
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

Series: Cursor Fault Fixes
URL   : https://patchwork.freedesktop.org/series/129517/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_display.o
drivers/gpu/drm/i915/display/intel_display.c: In function ‘intel_commit_modeset_disables’:
drivers/gpu/drm/i915/display/intel_display.c:6785:3: error: implicit declaration of function ‘drm_vblank_work_flush_all’; did you mean ‘drm_vblank_work_flush’? [-Werror=implicit-function-declaration]
 6785 |   drm_vblank_work_flush_all(&crtc->base);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~
      |   drm_vblank_work_flush
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_display.o] Error 1
make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1921: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


