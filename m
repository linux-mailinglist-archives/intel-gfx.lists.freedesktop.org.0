Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4479F3975
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 20:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6E1F10E724;
	Mon, 16 Dec 2024 19:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638B110E724;
 Mon, 16 Dec 2024 19:05:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_warning_for_drm/i915/display=3A_drop_?=
 =?utf-8?q?unnecessary_i915=5Fdrv=2Eh_includes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 19:05:28 -0000
Message-ID: <173437592840.3387022.17583634870737869104@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241216171133.1511619-1-jani.nikula@intel.com>
In-Reply-To: <20241216171133.1511619-1-jani.nikula@intel.com>
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

Series: drm/i915/display: drop unnecessary i915_drv.h includes
URL   : https://patchwork.freedesktop.org/series/142669/
State : warning

== Summary ==

Error: make ARCH=i386 failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_display_params.o
drivers/gpu/drm/i915/display/intel_display_params.c: In function ‘_param_free_charp’:
drivers/gpu/drm/i915/display/intel_display_params.c:219:9: error: implicit declaration of function ‘kfree’ [-Werror=implicit-function-declaration]
  219 |         kfree(*valp);
      |         ^~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_display_params.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2


