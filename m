Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8236719E699
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 19:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B226E15C;
	Sat,  4 Apr 2020 17:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6E746E0AA;
 Sat,  4 Apr 2020 17:10:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1115A0091;
 Sat,  4 Apr 2020 17:10:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 04 Apr 2020 17:10:12 -0000
Message-ID: <158602021270.1392.15954569067987523676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404163301.9879-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200404163301.9879-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Make_exclusive_awaits_o?=
 =?utf-8?q?n_i915=5Factive_optional?=
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

Series: series starting with [1/3] drm/i915: Make exclusive awaits on i915_active optional
URL   : https://patchwork.freedesktop.org/series/75505/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8254 -> Patchwork_17213
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/index.html

Known issues
------------

  Here are the changes found in Patchwork_17213 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][1] -> [DMESG-WARN][2] ([IGT#4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] ([i915#34])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [DMESG-WARN][5] ([i915#1612]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  * {igt@gem_wait@busy@all}:
    - fi-kbl-soraka:      [FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-kbl-soraka/igt@gem_wait@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/fi-kbl-soraka/igt@gem_wait@busy@all.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [SKIP][9] ([fdo#109271]) -> [PASS][10] +24 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1612]: https://gitlab.freedesktop.org/drm/intel/issues/1612
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (50 -> 39)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (12): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-byt-j1900 fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-elk-e7500 fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8254 -> Patchwork_17213

  CI-20190529: 20190529
  CI_DRM_8254: 48a3176bdce701e44ccba0fbdf3497b0dae3ae48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17213: ba7e1afa2e7f648f28288957068b1ef433b7a083 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ba7e1afa2e7f drm/i915/gem: Wait until the context is finally retired before releasing engines
8d948e0a37e0 drm/i915: Allow asynchronous waits on the i915_active barriers
649c3dc599d8 drm/i915: Make exclusive awaits on i915_active optional

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17213/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
