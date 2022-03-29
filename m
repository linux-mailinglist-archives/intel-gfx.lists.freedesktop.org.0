Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A24EB6E6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 01:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5058B10E4D3;
	Tue, 29 Mar 2022 23:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5432A10E4D3;
 Tue, 29 Mar 2022 23:39:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FE57A00E8;
 Tue, 29 Mar 2022 23:39:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Tue, 29 Mar 2022 23:39:29 -0000
Message-ID: <164859716929.5796.493491500730562280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220329233518.1008877-1-casey.g.bowman@intel.com>
In-Reply-To: <20220329233518.1008877-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?plitting_intel-gtt_calls_for_non-x86_platforms_=28rev2=29?=
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

Series: Splitting intel-gtt calls for non-x86 platforms (rev2)
URL   : https://patchwork.freedesktop.org/series/101552/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_gt_gmch.o
drivers/gpu/drm/i915/gt/intel_gt_gmch.c: In function ‘gen6_get_total_gtt_size’:
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:411:19: error: ‘SNB_GMCH_GGMS_SHIFT’ undeclared (first use in this function); did you mean ‘SHM_HUGE_SHIFT’?
  snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
                   ^~~~~~~~~~~~~~~~~~~
                   SHM_HUGE_SHIFT
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:411:19: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:412:18: error: ‘SNB_GMCH_GGMS_MASK’ undeclared (first use in this function); did you mean ‘SHM_HUGE_MASK’?
  snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
                  ^~~~~~~~~~~~~~~~~~
                  SHM_HUGE_MASK
drivers/gpu/drm/i915/gt/intel_gt_gmch.c: In function ‘gen8_get_total_gtt_size’:
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:418:19: error: ‘BDW_GMCH_GGMS_SHIFT’ undeclared (first use in this function); did you mean ‘HSW_CAGF_SHIFT’?
  bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
                   ^~~~~~~~~~~~~~~~~~~
                   HSW_CAGF_SHIFT
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:419:18: error: ‘BDW_GMCH_GGMS_MASK’ undeclared (first use in this function); did you mean ‘BITMAP_MEM_MASK’?
  bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
                  ^~~~~~~~~~~~~~~~~~
                  BITMAP_MEM_MASK
drivers/gpu/drm/i915/gt/intel_gt_gmch.c: In function ‘intel_gt_gmch_gen6_probe’:
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:547:29: error: ‘SNB_GMCH_CTRL’ undeclared (first use in this function); did you mean ‘VDBX_MOD_CTRL’?
  pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
                             ^~~~~~~~~~~~~
                             VDBX_MOD_CTRL
drivers/gpu/drm/i915/gt/intel_gt_gmch.c: In function ‘chv_get_total_gtt_size’:
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:583:16: error: ‘SNB_GMCH_GGMS_SHIFT’ undeclared (first use in this function); did you mean ‘SHM_HUGE_SHIFT’?
  gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
                ^~~~~~~~~~~~~~~~~~~
                SHM_HUGE_SHIFT
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:584:15: error: ‘SNB_GMCH_GGMS_MASK’ undeclared (first use in this function); did you mean ‘SHM_HUGE_MASK’?
  gmch_ctrl &= SNB_GMCH_GGMS_MASK;
               ^~~~~~~~~~~~~~~~~~
               SHM_HUGE_MASK
drivers/gpu/drm/i915/gt/intel_gt_gmch.c: In function ‘intel_gt_gmch_gen8_probe’:
drivers/gpu/drm/i915/gt/intel_gt_gmch.c:605:29: error: ‘SNB_GMCH_CTRL’ undeclared (first use in this function); did you mean ‘VDBX_MOD_CTRL’?
  pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
                             ^~~~~~~~~~~~~
                             VDBX_MOD_CTRL
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/intel_gt_gmch.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_gt_gmch.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


