Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE454970CF3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 07:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BA410E2B2;
	Mon,  9 Sep 2024 05:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C1E10E2B2;
 Mon,  9 Sep 2024 05:26:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/psr=3A_Implment_?=
 =?utf-8?q?WA_to_help_reach_PC10_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 05:26:33 -0000
Message-ID: <172585959334.972554.6957323607413798450@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
In-Reply-To: <20240902050214.127352-1-suraj.kandpal@intel.com>
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

Series: drm/i915/psr: Implment WA to help reach PC10 (rev4)
URL   : https://patchwork.freedesktop.org/series/138065/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_psr.o
drivers/gpu/drm/i915/display/intel_psr.c: In function ‘intel_psr_is_dc5_entry_possible’:
drivers/gpu/drm/i915/display/intel_psr.c:933:12: error: implicit declaration of function ‘drm_crtc_vblank_crtc’ [-Werror=implicit-function-declaration]
  933 |   vblank = drm_crtc_vblank_crtc(crtc);
      |            ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_psr.c:933:10: error: assignment to ‘struct drm_vblank_crtc *’ from ‘int’ makes pointer from integer without a cast [-Werror=int-conversion]
  933 |   vblank = drm_crtc_vblank_crtc(crtc);
      |          ^
drivers/gpu/drm/i915/display/intel_psr.c:935:13: error: dereferencing pointer to incomplete type ‘struct drm_vblank_crtc’
  935 |   if (vblank->enabled)
      |             ^~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/display/intel_psr.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1925: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


