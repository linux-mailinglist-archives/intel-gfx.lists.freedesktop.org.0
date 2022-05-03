Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF289519269
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 01:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7F610FD89;
	Tue,  3 May 2022 23:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 332DD10FD89;
 Tue,  3 May 2022 23:45:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25DE6A7DFB;
 Tue,  3 May 2022 23:45:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 03 May 2022 23:45:04 -0000
Message-ID: <165162150412.30556.3952424784370495826@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503233640.617433-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220503233640.617433-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dmc=3A_Add_MMIO_range_restrictions_=28rev5=29?=
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

Series: drm/i915/dmc: Add MMIO range restrictions (rev5)
URL   : https://patchwork.freedesktop.org/series/102168/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_dmc.o
In file included from drivers/gpu/drm/i915/display/intel_dmc.c:27:
drivers/gpu/drm/i915/display/intel_dmc.c: In function ‘dmc_mmio_addr_sanity_check’:
drivers/gpu/drm/i915/display/intel_dmc.c:399:20: error: ‘dev_priv’ undeclared (first use in this function); did you mean ‘dev_crit’?
      IS_ROCKETLAKE(dev_priv)) {
                    ^~~~~~~~
./drivers/gpu/drm/i915/i915_drv.h:1059:45: note: in definition of macro ‘IS_ROCKETLAKE’
 #define IS_ROCKETLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
                                             ^~~~~~~~
drivers/gpu/drm/i915/display/intel_dmc.c:399:20: note: each undeclared identifier is reported only once for each function it appears in
      IS_ROCKETLAKE(dev_priv)) {
                    ^~~~~~~~
./drivers/gpu/drm/i915/i915_drv.h:1059:45: note: in definition of macro ‘IS_ROCKETLAKE’
 #define IS_ROCKETLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
                                             ^~~~~~~~
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_dmc.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_dmc.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1834: recipe for target 'drivers' failed
make: *** [drivers] Error 2


