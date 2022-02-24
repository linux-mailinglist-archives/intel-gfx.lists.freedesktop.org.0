Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CD44C3987
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 00:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4531F10E92D;
	Thu, 24 Feb 2022 23:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A5F410E92D;
 Thu, 24 Feb 2022 23:08:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35015A00E8;
 Thu, 24 Feb 2022 23:08:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 24 Feb 2022 23:08:17 -0000
Message-ID: <164574409721.24969.9685249479903246471@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220223234607.903551-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220223234607.903551-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/cdclk=3A_Add_cdclk_check_to_atomic_check?=
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

Series: drm/i915/cdclk: Add cdclk check to atomic check
URL   : https://patchwork.freedesktop.org/series/100671/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_cdclk.o
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘bxt_set_cdclk’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1706:36: error: initialization discards ‘const’ qualifier from pointer target type [-Werror=discarded-qualifiers]
  struct cdclk_steps *cdclk_steps = new_cdclk_state->steps;
                                    ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘intel_cdclk_needs_modeset’:
drivers/gpu/drm/i915/display/intel_cdclk.c:2034:41: error: initialization discards ‘const’ qualifier from pointer target type [-Werror=discarded-qualifiers]
  struct cdclk_steps *cdclk_transition = new_cdclk_state->steps;
                                         ^~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_cdclk.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_cdclk.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


