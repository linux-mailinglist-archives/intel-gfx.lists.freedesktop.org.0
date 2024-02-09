Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BDC84FAF8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 18:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EA610F827;
	Fri,  9 Feb 2024 17:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6971710F828;
 Fri,  9 Feb 2024 17:23:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5Bv?=
 =?utf-8?q?3=2C1/2=5D_drm/i915=3A_Prevent_HW_access_during_init_from_SDVO_TV?=
 =?utf-8?q?_get=5Fmodes_hook?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 Feb 2024 17:23:08 -0000
Message-ID: <170749938843.1129907.10081916788868767063@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240209160316.2160747-1-imre.deak@intel.com>
In-Reply-To: <20240209160316.2160747-1-imre.deak@intel.com>
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

Series: series starting with [v3,1/2] drm/i915: Prevent HW access during init from SDVO TV get_modes hook
URL   : https://patchwork.freedesktop.org/series/129727/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_sdvo.o
drivers/gpu/drm/i915/display/intel_sdvo.c: In function ‘intel_sdvo_get_tv_modes’:
drivers/gpu/drm/i915/display/intel_sdvo.c:2305:41: error: ‘i915’ undeclared (first use in this function); did you mean ‘I915’?
 2305 |  if (!intel_display_driver_check_access(i915))
      |                                         ^~~~
      |                                         I915
drivers/gpu/drm/i915/display/intel_sdvo.c:2305:41: note: each undeclared identifier is reported only once for each function it appears in
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_sdvo.o] Error 1
make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1921: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


