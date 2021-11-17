Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6CA455026
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 23:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9176E1F4;
	Wed, 17 Nov 2021 22:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD9C66E1F4;
 Wed, 17 Nov 2021 22:05:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C53EAA73C7;
 Wed, 17 Nov 2021 22:05:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Wed, 17 Nov 2021 22:05:41 -0000
Message-ID: <163718674177.18222.1990838215823722639@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211117151914.627778-1-mika.kahola@intel.com>
In-Reply-To: <20211117151914.627778-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display/dg2=3A_Set_CD_clock_squashing_registers?=
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

Series: drm/i915/display/dg2: Set CD clock squashing registers
URL   : https://patchwork.freedesktop.org/series/97033/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_cdclk.o
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘cdclk_squash_waveform’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1641:19: error: ‘const struct intel_cdclk_vals’ has no member named ‘waveform’
    return table[i].waveform;
                   ^
drivers/gpu/drm/i915/display/intel_cdclk.c: In function ‘bxt_set_cdclk’:
drivers/gpu/drm/i915/display/intel_cdclk.c:1708:6: error: implicit declaration of function ‘has_cdclk_squasher’ [-Werror=implicit-function-declaration]
  if (has_cdclk_squasher(dev_priv)) {
      ^~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/display/intel_cdclk.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_cdclk.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


