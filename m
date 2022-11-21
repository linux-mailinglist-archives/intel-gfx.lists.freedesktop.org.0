Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0065A632FC9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 23:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6BF10E33D;
	Mon, 21 Nov 2022 22:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6204810E33D;
 Mon, 21 Nov 2022 22:26:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C5C2A00E6;
 Mon, 21 Nov 2022 22:26:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Mon, 21 Nov 2022 22:26:39 -0000
Message-ID: <166906959937.22097.11429544831716653825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221121211815.30950-1-gustavo.sousa@intel.com>
In-Reply-To: <20221121211815.30950-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dmc=3A_Update_DG2_DMC_version_to_v2=2E08?=
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

Series: drm/i915/dmc: Update DG2 DMC version to v2.08
URL   : https://patchwork.freedesktop.org/series/111164/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/intel_dmc.o
drivers/gpu/drm/i915/display/intel_dmc.c: In function ‘intel_dmc_ucode_init’:
drivers/gpu/drm/i915/display/intel_dmc.c:56:49: error: invalid digit "8" in octal constant
 #define DG2_DMC_VERSION_REQUIRED DMC_VERSION(2, 08)
                                                 ^~
drivers/gpu/drm/i915/display/intel_dmc.c:41:53: note: in definition of macro ‘DMC_VERSION’
 #define DMC_VERSION(major, minor) ((major) << 16 | (minor))
                                                     ^~~~~
drivers/gpu/drm/i915/display/intel_dmc.c:906:27: note: in expansion of macro ‘DG2_DMC_VERSION_REQUIRED’
   dmc->required_version = DG2_DMC_VERSION_REQUIRED;
                           ^~~~~~~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/display/intel_dmc.o' failed
make[5]: *** [drivers/gpu/drm/i915/display/intel_dmc.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


