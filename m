Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CE949D6F1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 01:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8907910E72F;
	Thu, 27 Jan 2022 00:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FCED10E72F;
 Thu, 27 Jan 2022 00:48:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F47BA77A5;
 Thu, 27 Jan 2022 00:48:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 27 Jan 2022 00:48:04 -0000
Message-ID: <164324448405.23659.6511148594756441355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127001529.978596-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220127001529.978596-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Fix_KMD_and_GuC_r?=
 =?utf-8?q?ace_on_accessing_busyness?=
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

Series: series starting with [1/2] drm/i915/pmu: Fix KMD and GuC race on accessing busyness
URL   : https://patchwork.freedesktop.org/series/99386/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c: In function ‘guc_update_pm_timestamp’:
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: error: ‘uncore’ undeclared (first use in this function); did you mean ‘node’?
  gpm_ts = intel_uncore_read64_2x32(uncore, MISC_STATUS0, MISC_STATUS1) >>
                                    ^~~~~~
                                    node
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1217:36: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1210:19: error: unused variable ‘gt’ [-Werror=unused-variable]
  struct intel_gt *gt = guc_to_gt(guc);
                   ^~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


