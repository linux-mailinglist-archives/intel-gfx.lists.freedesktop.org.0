Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CE198F762
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 21:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4765910E8E7;
	Thu,  3 Oct 2024 19:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B1B10E0EE;
 Thu,  3 Oct 2024 19:53:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/xe=3A_Reduce_flickeri?=
 =?utf-8?q?ng_when_inheriting_BIOS_fb=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Oct 2024 19:53:37 -0000
Message-ID: <172798521774.1170272.9479622426775587606@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
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

Series: drm/xe: Reduce flickering when inheriting BIOS fb.
URL   : https://patchwork.freedesktop.org/series/139517/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/skl_universal_plane.o
drivers/gpu/drm/i915/display/skl_universal_plane.c: In function ‘skl_fixup_initial_plane_config’:
drivers/gpu/drm/i915/display/skl_universal_plane.c:2818:21: error: implicit declaration of function ‘intel_read’; did you mean ‘intel_de_read’? [-Werror=implicit-function-declaration]
 2818 |         plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
      |                     ^~~~~~~~~~
      |                     intel_de_read
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:229: drivers/gpu/drm/i915/display/skl_universal_plane.o] Error 1
make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


