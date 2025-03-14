Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66852A61648
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 17:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063C510E1E0;
	Fri, 14 Mar 2025 16:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E81A10E1E0;
 Fri, 14 Mar 2025 16:30:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Underrun_on_idle_PSR_work?=
 =?utf-8?q?around_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Mar 2025 16:30:24 -0000
Message-ID: <174196982457.35791.16159779555082956985@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
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

Series: Underrun on idle PSR workaround (rev2)
URL   : https://patchwork.freedesktop.org/series/145986/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_psr.o
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘is_dc5_dc6_blocked’:
drivers/gpu/drm/i915/display/intel_psr.c:937:32: error: implicit declaration of function ‘intel_display_power_get_current_dc_state’; did you mean ‘intel_display_power_set_target_dc_state’? [-Werror=implicit-function-declaration]
  937 |         u32 current_dc_state = intel_display_power_get_current_dc_state(display);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                                intel_display_power_set_target_dc_state
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:207: drivers/gpu/drm/i915/display/intel_psr.o] Error 1
make[5]: *** [scripts/Makefile.build:465: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:465: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:465: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:465: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1994: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


