Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1605337E3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 10:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842D510F288;
	Wed, 25 May 2022 08:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E698C10F141;
 Wed, 25 May 2022 08:00:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF1C6AADD7;
 Wed, 25 May 2022 08:00:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 25 May 2022 08:00:11 -0000
Message-ID: <165346561189.16573.17121500215804678237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220525075410.1226160-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220525075410.1226160-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dg2=3A_Support_4k=4030_on_HDMI_=28rev2=29?=
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

Series: drm/i915/dg2: Support 4k@30 on HDMI (rev2)
URL   : https://patchwork.freedesktop.org/series/103862/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_snps_phy.o
In file included from drivers/gpu/drm/i915/display/intel_ddi.h:9,
                 from drivers/gpu/drm/i915/display/intel_snps_phy.c:8:
./drivers/gpu/drm/i915/i915_reg_defs.h:71:2: error: initialized field overwritten [-Werror=override-init]
  ((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) + \
  ^
drivers/gpu/drm/i915/display/intel_snps_phy.c:537:3: note: in expansion of macro ‘REG_FIELD_PREP’
   REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
   ^~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:71:2: note: (near initialization for ‘dg2_hdmi_297.mpllb_div2’)
  ((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) + \
  ^
drivers/gpu/drm/i915/display/intel_snps_phy.c:537:3: note: in expansion of macro ‘REG_FIELD_PREP’
   REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
   ^~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/display/intel_snps_phy.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_snps_phy.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1834: recipe for target 'drivers' failed
make: *** [drivers] Error 2


