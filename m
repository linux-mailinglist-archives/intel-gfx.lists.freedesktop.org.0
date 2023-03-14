Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C8A6B90D7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFCF10E776;
	Tue, 14 Mar 2023 11:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AF4610E773;
 Tue, 14 Mar 2023 11:00:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70B61A47EB;
 Tue, 14 Mar 2023 11:00:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 14 Mar 2023 11:00:41 -0000
Message-ID: <167879164145.26413.17532628172930597739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230221125737.1813187-1-imre.deak@intel.com>
In-Reply-To: <20230221125737.1813187-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915/opregion=3A_Fix_opregion?=
 =?utf-8?q?_setup_during_system_resume_on_platforms_without_display_=28rev?=
 =?utf-8?q?2=29?=
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

Series: series starting with [1/4] drm/i915/opregion: Fix opregion setup during system resume on platforms without display (rev2)
URL   : https://patchwork.freedesktop.org/series/114222/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
drivers/gpu/drm/i915/i915_driver.c: In function ‘i915_driver_register’:
drivers/gpu/drm/i915/i915_driver.c:635:24: error: ‘i915’ undeclared (first use in this function); did you mean ‘to_i915’?
  635 |  intel_opregion_resume(i915);
      |                        ^~~~
      |                        to_i915
drivers/gpu/drm/i915/i915_driver.c:635:24: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/i915_driver.c: In function ‘i915_driver_unregister’:
drivers/gpu/drm/i915/i915_driver.c:662:25: error: ‘i915’ undeclared (first use in this function); did you mean ‘to_i915’?
  662 |  intel_opregion_suspend(i915, PCI_D1);
      |                         ^~~~
      |                         to_i915
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/i915_driver.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2028: .] Error 2


