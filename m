Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955D25A5447
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 21:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E5310E0D4;
	Mon, 29 Aug 2022 19:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B01B610E0D4;
 Mon, 29 Aug 2022 19:02:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A95E2AA0EA;
 Mon, 29 Aug 2022 19:02:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxime Ripard" <maxime@cerno.tech>
Date: Mon, 29 Aug 2022 19:02:04 -0000
Message-ID: <166179972466.11950.8305556904394708994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Analog_TV_Improvements?=
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

Series: drm: Analog TV Improvements
URL   : https://patchwork.freedesktop.org/series/107892/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC      drivers/gpu/drm/drm_connector.o
drivers/gpu/drm/drm_connector.c:1030:1: error: expected ‘;’ before ‘static’
 static const struct drm_prop_enum_list drm_tv_select_enum_list[] = {
 ^~~~~~
In file included from ./include/linux/cpumask.h:10,
                 from ./include/linux/smp.h:13,
                 from ./include/linux/lockdep.h:14,
                 from ./include/linux/radix-tree.h:14,
                 from ./include/linux/idr.h:15,
                 from ./include/drm/drm_auth.h:31,
                 from drivers/gpu/drm/drm_connector.c:23:
drivers/gpu/drm/drm_connector.c: In function ‘drm_get_tv_select_name’:
drivers/gpu/drm/drm_connector.c:1037:42: error: ‘drm_tv_select_enum_list’ undeclared (first use in this function); did you mean ‘drm_dvi_i_select_enum_list’?
 DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
                                          ^~~~~~~~~~~~~~~~~~~~~~~
./include/linux/kernel.h:55:33: note: in definition of macro ‘ARRAY_SIZE’
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                 ^~~
drivers/gpu/drm/drm_connector.c:1037:1: note: in expansion of macro ‘DRM_ENUM_NAME_FN’
 DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/drm_connector.c:1037:42: note: each undeclared identifier is reported only once for each function it appears in
 DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
                                          ^~~~~~~~~~~~~~~~~~~~~~~
./include/linux/kernel.h:55:33: note: in definition of macro ‘ARRAY_SIZE’
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                 ^~~
drivers/gpu/drm/drm_connector.c:1037:1: note: in expansion of macro ‘DRM_ENUM_NAME_FN’
 DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
 ^~~~~~~~~~~~~~~~
In file included from ./include/linux/bits.h:22,
                 from ./include/linux/bitops.h:6,
                 from ./include/linux/radix-tree.h:11,
                 from ./include/linux/idr.h:15,
                 from ./include/drm/drm_auth.h:31,
                 from drivers/gpu/drm/drm_connector.c:23:
./include/linux/build_bug.h:16:51: error: bit-field ‘<anonymous>’ width not an integer constant
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                   ^
./include/linux/compiler.h:240:28: note: in expansion of macro ‘BUILD_BUG_ON_ZERO’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                            ^~~~~~~~~~~~~~~~~
./include/linux/kernel.h:55:59: note: in expansion of macro ‘__must_be_array’
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                                           ^~~~~~~~~~~~~~~
./include/drm/drm_mode_object.h:114:19: note: in expansion of macro ‘ARRAY_SIZE’
   for (i = 0; i < ARRAY_SIZE(list); i++) { \
                   ^~~~~~~~~~
drivers/gpu/drm/drm_connector.c:1037:1: note: in expansion of macro ‘DRM_ENUM_NAME_FN’
 DRM_ENUM_NAME_FN(drm_get_tv_select_name, drm_tv_select_enum_list)
 ^~~~~~~~~~~~~~~~
drivers/gpu/drm/drm_connector.c: In function ‘drm_mode_create_tv_properties_legacy’:
drivers/gpu/drm/drm_connector.c:1718:8: error: ‘drm_tv_select_enum_list’ undeclared (first use in this function); did you mean ‘drm_dvi_i_select_enum_list’?
        drm_tv_select_enum_list,
        ^~~~~~~~~~~~~~~~~~~~~~~
        drm_dvi_i_select_enum_list
In file included from ./include/linux/bits.h:22,
                 from ./include/linux/bitops.h:6,
                 from ./include/linux/radix-tree.h:11,
                 from ./include/linux/idr.h:15,
                 from ./include/drm/drm_auth.h:31,
                 from drivers/gpu/drm/drm_connector.c:23:
./include/linux/build_bug.h:16:51: error: bit-field ‘<anonymous>’ width not an integer constant
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                   ^
./include/linux/compiler.h:240:28: note: in expansion of macro ‘BUILD_BUG_ON_ZERO’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                            ^~~~~~~~~~~~~~~~~
./include/linux/kernel.h:55:59: note: in expansion of macro ‘__must_be_array’
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                                           ^~~~~~~~~~~~~~~
drivers/gpu/drm/drm_connector.c:1719:8: note: in expansion of macro ‘ARRAY_SIZE’
        ARRAY_SIZE(drm_tv_select_enum_list));
        ^~~~~~~~~~
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/drm_connector.o' failed
make[3]: *** [drivers/gpu/drm/drm_connector.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1853: recipe for target 'drivers' failed
make: *** [drivers] Error 2


