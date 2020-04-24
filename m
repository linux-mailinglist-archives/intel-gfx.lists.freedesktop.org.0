Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1841B7DE3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 20:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6784E6EB09;
	Fri, 24 Apr 2020 18:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9163A6EB07;
 Fri, 24 Apr 2020 18:31:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81F7FA010F;
 Fri, 24 Apr 2020 18:31:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 24 Apr 2020 18:31:00 -0000
Message-ID: <158775306050.10803.7194165055716980367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Add_engine_scratch_regi?=
 =?utf-8?q?ster_to_live=5Flrc=5Ffixed_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915: Add engine scratch register to live_lrc_fixed (rev3)
URL   : https://patchwork.freedesktop.org/series/76443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8361 -> Patchwork_17458
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17458 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17458, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17458:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/fi-icl-guc/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/fi-icl-y/igt@i915_selftest@live@gt_lrc.html
    - fi-icl-u2:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-ehl-1}:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/fi-ehl-1/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (49 -> 19)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17458 prevented too many machines from booting.

  Missing    (30): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-skl-lmem fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8361 -> Patchwork_17458

  CI-20190529: 20190529
  CI_DRM_8361: b4686529aa525cedc337041c3e2741a93c1a0449 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17458: b9ae36b10e73ad42cf10969652d33a38fb45ba4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b9ae36b10e73 drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
433caccc67a1 drm/i915: Add live selftests for indirect ctx batchbuffers
c24957004e6a drm/i915: Add per ctx batchbuffer wa for timestamp
48f89e7502e0 drm/i915: Add engine scratch register to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17458/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
