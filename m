Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9898ECC24C9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 12:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE23410E7D5;
	Tue, 16 Dec 2025 11:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E5610E7D5;
 Tue, 16 Dec 2025 11:35:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Dec 2025 11:35:25 -0000
Message-ID: <176588492540.93218.3039874163622232016@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251216092226.1777909-18-dev@lankhorst.se>
In-Reply-To: <20251216092226.1777909-18-dev@lankhorst.se>
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

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev2)
URL   : https://patchwork.freedesktop.org/series/159035/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_vblank.o
drivers/gpu/drm/i915/display/intel_vblank.c:245:12: error: static declaration of ‘__intel_get_crtc_scanline’ follows non-static declaration
  245 | static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/display/intel_vblank.c:19:
drivers/gpu/drm/i915/display/intel_vblank.h:41:5: note: previous declaration of ‘__intel_get_crtc_scanline’ with type ‘int(struct intel_crtc *)’
   41 | int __intel_get_crtc_scanline(struct intel_crtc *crtc);
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c: In function ‘scanline_in_safe_range’:
drivers/gpu/drm/i915/display/intel_vblank.c:739:49: error: ‘display’ undeclared (first use in this function)
  739 |                 intel_vblank_section_enter_irqf(display, &irqflags);
      |                                                 ^~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:739:49: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/display/intel_vblank.c:741:9: error: ‘position’ undeclared (first use in this function)
  741 |         position = __intel_get_crtc_scanline(crtc);
      |         ^~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:741:46: error: ‘crtc’ undeclared (first use in this function)
  741 |         position = __intel_get_crtc_scanline(crtc);
      |                                              ^~~~
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/display/intel_vblank.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2054: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


