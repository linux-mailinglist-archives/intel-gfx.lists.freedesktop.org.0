Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447074D9206
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 02:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4DCC10E390;
	Tue, 15 Mar 2022 01:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4308310E390;
 Tue, 15 Mar 2022 01:09:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40605AADD1;
 Tue, 15 Mar 2022 01:09:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 15 Mar 2022 01:09:32 -0000
Message-ID: <164730657223.20491.11625603928904140686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
In-Reply-To: <20220314225837.42816-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?uppress_the_wrong_long_hotplug_events?=
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

Series: suppress the wrong long hotplug events
URL   : https://patchwork.freedesktop.org/series/101366/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_display_debugfs.o
In file included from ./include/drm/ttm/ttm_resource.h:32,
                 from ./include/drm/ttm/ttm_device.h:30,
                 from ./drivers/gpu/drm/i915/i915_drv.h:41,
                 from drivers/gpu/drm/i915/display/intel_de.h:9,
                 from drivers/gpu/drm/i915/display/intel_display_debugfs.c:12:
drivers/gpu/drm/i915/display/intel_display_debugfs.c: In function ‘i915_suppress_wakeup_hpd_set’:
drivers/gpu/drm/i915/display/intel_display_debugfs.c:1984:60: error: implicit declaration of function ‘yesno’ [-Werror=implicit-function-declaration]
  drm_dbg(&i915->drm, "Suppress wakeup HPDs enabled: %s\n", yesno(val));
                                                            ^~~~~
./include/drm/drm_print.h:461:63: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                               ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_debugfs.c:1984:22: error: format ‘%s’ expects argument of type ‘char *’, but argument 4 has type ‘int’ [-Werror=format=]
  drm_dbg(&i915->drm, "Suppress wakeup HPDs enabled: %s\n", yesno(val));
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~~
./include/drm/drm_print.h:461:56: note: in definition of macro ‘drm_dbg’
  drm_dev_dbg((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                        ^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_display_debugfs.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_display_debugfs.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


