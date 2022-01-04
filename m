Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E09E484493
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 16:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E3010E470;
	Tue,  4 Jan 2022 15:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 284A210E470;
 Tue,  4 Jan 2022 15:30:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25A81A0169;
 Tue,  4 Jan 2022 15:30:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 04 Jan 2022 15:30:52 -0000
Message-ID: <164131025214.30367.4030655070429794711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220104112853.495572-1-jani.nikula@intel.com>
In-Reply-To: <20220104112853.495572-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915=3A_split_out_intel=5Fvtd?=
 =?utf-8?b?LltjaF0gZnJvbSBpOTE1X2Rydi5o?=
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

Series: series starting with [1/2] drm/i915: split out intel_vtd.[ch] from i915_drv.h
URL   : https://patchwork.freedesktop.org/series/98471/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  HDRTEST drivers/gpu/drm/i915/intel_vtd.h
In file included from ./drivers/gpu/drm/i915/intel_vtd.h:9,
                 from <command-line>:
./arch/x86/include/asm/hypervisor.h:78:15: error: unknown type name ‘bool’
 static inline bool hypervisor_is_type(enum x86_hypervisor_type type)
               ^~~~
drivers/gpu/drm/i915/Makefile:343: recipe for target 'drivers/gpu/drm/i915/intel_vtd.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/intel_vtd.hdrtest] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


