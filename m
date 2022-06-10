Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A9546F51
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 23:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067D511A4D0;
	Fri, 10 Jun 2022 21:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C338B11A4D6;
 Fri, 10 Jun 2022 21:38:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBBD6AA0EB;
 Fri, 10 Jun 2022 21:38:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 10 Jun 2022 21:38:21 -0000
Message-ID: <165489710174.16749.6471313126830677142@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610211817.2909-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20220610211817.2909-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/guc/slpc=3A_Add_a_new_SLPC_selftest?=
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

Series: drm/i915/guc/slpc: Add a new SLPC selftest
URL   : https://patchwork.freedesktop.org/series/105005/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_rps.o
In file included from drivers/gpu/drm/i915/gt/intel_rps.c:2530:
drivers/gpu/drm/i915/gt/selftest_slpc.c:44:5: error: no previous prototype for ‘vary_max_freq’ [-Werror=missing-prototypes]
 int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
     ^~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_slpc.c:83:5: error: no previous prototype for ‘vary_min_freq’ [-Werror=missing-prototypes]
 int vary_min_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
     ^~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/selftest_slpc.c:123:5: error: no previous prototype for ‘max_granted_freq’ [-Werror=missing-prototypes]
 int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps, u32 *max_act_freq)
     ^~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gt/intel_rps.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_rps.o] Error 1
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:466: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1839: recipe for target 'drivers' failed
make: *** [drivers] Error 2


