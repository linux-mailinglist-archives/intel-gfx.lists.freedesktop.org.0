Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8719BCD0F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6EC10E590;
	Tue,  5 Nov 2024 12:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6013510E590;
 Tue,  5 Nov 2024 12:52:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5B1?=
 =?utf-8?q?/9=5D_drm/xe=3A_Remove_double_pageflip?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Nov 2024 12:52:12 -0000
Message-ID: <173081113238.1412034.9768100298239514772@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241105121857.17389-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20241105121857.17389-1-maarten.lankhorst@linux.intel.com>
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

Series: series starting with [1/9] drm/xe: Remove double pageflip
URL   : https://patchwork.freedesktop.org/series/140945/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_plane_initial.o
drivers/gpu/drm/i915/display/intel_plane_initial.c:17:1: error: parameter names (without types) in function declaration [-Werror]
   17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
      | ^~~~
drivers/gpu/drm/i915/display/intel_plane_initial.c:17:46: error: expected identifier or ‘(’ before ‘struct’
   17 | void intel_plane_initial_vblank_wait(plane);(struct intel_plane *plane)
      |                                              ^~~~~~
drivers/gpu/drm/i915/display/intel_plane_initial.c: In function ‘intel_initial_plane_config’:
drivers/gpu/drm/i915/display/intel_plane_initial.c:448:25: error: implicit declaration of function ‘intel_initial_vblank_wait’; did you mean ‘intel_plane_initial_vblank_wait’? [-Werror=implicit-function-declaration]
  448 |                         intel_initial_vblank_wait(crtc);
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~
      |                         intel_plane_initial_vblank_wait
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:229: drivers/gpu/drm/i915/display/intel_plane_initial.o] Error 1
make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


