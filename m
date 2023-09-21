Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C847A7A9169
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 06:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F5E110E462;
	Thu, 21 Sep 2023 04:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC77610E462;
 Thu, 21 Sep 2023 04:14:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D689CA00E8;
 Thu, 21 Sep 2023 04:14:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1583460476695558694=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Date: Thu, 21 Sep 2023 04:14:51 -0000
Message-ID: <169526969183.7233.4189419940521440945@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230920215624.3482244-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230920215624.3482244-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Allow_users_to_disable_waitboost?=
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

--===============1583460476695558694==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Allow users to disable waitboost
URL   : https://patchwork.freedesktop.org/series/124016/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13659 -> Patchwork_124016v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124016v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124016v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/index.html

Participating hosts (40 -> 35)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (6): bat-kbl-2 fi-bsw-n3050 fi-apl-guc fi-snb-2520m fi-cfl-8109u fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124016v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-atsm-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_basic@basic:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@gem_exec_basic@basic.html
    - bat-dg2-11:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@gem_exec_basic@basic.html
    - bat-atsm-1:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@gem_exec_basic@basic.html
    - bat-dg2-9:          NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@gem_exec_basic@basic.html
    - bat-dg2-8:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_exec_basic@basic.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - bat-dg1-5:          [PASS][8] -> [FAIL][9] +100 other tests fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@basic-wait@vcs1:
    - bat-dg2-8:          NOTRUN -> [FAIL][10] +120 other tests fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_exec_fence@basic-wait@vcs1.html

  * igt@gem_sync@basic-each:
    - bat-atsm-1:         [PASS][11] -> [FAIL][12] +65 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-atsm-1/igt@gem_sync@basic-each.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@gem_sync@basic-each.html

  * igt@gem_wait@busy@all-engines:
    - fi-skl-guc:         [PASS][13] -> [FAIL][14] +1 other test fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-skl-guc/igt@gem_wait@busy@all-engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-skl-guc/igt@gem_wait@busy@all-engines.html
    - fi-kbl-x1275:       [PASS][15] -> [FAIL][16] +1 other test fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html
    - bat-adln-1:         [PASS][17] -> [FAIL][18] +1 other test fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adln-1/igt@gem_wait@busy@all-engines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adln-1/igt@gem_wait@busy@all-engines.html
    - fi-kbl-8809g:       [PASS][19] -> [FAIL][20] +1 other test fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-8809g/igt@gem_wait@busy@all-engines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-8809g/igt@gem_wait@busy@all-engines.html
    - fi-ivb-3770:        [PASS][21] -> [FAIL][22] +1 other test fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-ivb-3770/igt@gem_wait@busy@all-engines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-ivb-3770/igt@gem_wait@busy@all-engines.html
    - fi-elk-e7500:       [PASS][23] -> [FAIL][24] +1 other test fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-elk-e7500/igt@gem_wait@busy@all-engines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-elk-e7500/igt@gem_wait@busy@all-engines.html
    - fi-bsw-nick:        [PASS][25] -> [FAIL][26] +1 other test fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-bsw-nick/igt@gem_wait@busy@all-engines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-bsw-nick/igt@gem_wait@busy@all-engines.html
    - fi-kbl-guc:         [PASS][27] -> [FAIL][28] +1 other test fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-guc/igt@gem_wait@busy@all-engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-guc/igt@gem_wait@busy@all-engines.html
    - bat-adlm-1:         [PASS][29] -> [FAIL][30] +1 other test fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlm-1/igt@gem_wait@busy@all-engines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlm-1/igt@gem_wait@busy@all-engines.html
    - bat-rplp-1:         [PASS][31] -> [FAIL][32] +1 other test fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-rplp-1/igt@gem_wait@busy@all-engines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-rplp-1/igt@gem_wait@busy@all-engines.html
    - fi-ilk-650:         [PASS][33] -> [FAIL][34] +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-ilk-650/igt@gem_wait@busy@all-engines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-ilk-650/igt@gem_wait@busy@all-engines.html
    - fi-tgl-1115g4:      [PASS][35] -> [FAIL][36] +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-tgl-1115g4/igt@gem_wait@busy@all-engines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-tgl-1115g4/igt@gem_wait@busy@all-engines.html
    - fi-cfl-guc:         [PASS][37] -> [FAIL][38] +1 other test fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-cfl-guc/igt@gem_wait@busy@all-engines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-cfl-guc/igt@gem_wait@busy@all-engines.html
    - bat-mtlp-6:         [PASS][39] -> [FAIL][40] +1 other test fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-6/igt@gem_wait@busy@all-engines.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-6/igt@gem_wait@busy@all-engines.html
    - fi-hsw-4770:        [PASS][41] -> [FAIL][42] +1 other test fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-hsw-4770/igt@gem_wait@busy@all-engines.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-hsw-4770/igt@gem_wait@busy@all-engines.html
    - bat-mtlp-8:         [PASS][43] -> [FAIL][44] +1 other test fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-8/igt@gem_wait@busy@all-engines.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@gem_wait@busy@all-engines.html
    - bat-jsl-1:          [PASS][45] -> [FAIL][46] +1 other test fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-jsl-1/igt@gem_wait@busy@all-engines.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-jsl-1/igt@gem_wait@busy@all-engines.html
    - fi-cfl-8700k:       [PASS][47] -> [FAIL][48] +1 other test fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-cfl-8700k/igt@gem_wait@busy@all-engines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-cfl-8700k/igt@gem_wait@busy@all-engines.html
    - fi-blb-e6850:       [PASS][49] -> [FAIL][50] +1 other test fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-blb-e6850/igt@gem_wait@busy@all-engines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-blb-e6850/igt@gem_wait@busy@all-engines.html
    - bat-rpls-1:         [PASS][51] -> [FAIL][52] +1 other test fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-rpls-1/igt@gem_wait@busy@all-engines.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-rpls-1/igt@gem_wait@busy@all-engines.html

  * igt@gem_wait@wait@all-engines:
    - bat-adlp-6:         [PASS][53] -> [FAIL][54] +1 other test fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlp-6/igt@gem_wait@wait@all-engines.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlp-6/igt@gem_wait@wait@all-engines.html
    - fi-rkl-11600:       [PASS][55] -> [FAIL][56] +1 other test fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-rkl-11600/igt@gem_wait@wait@all-engines.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-rkl-11600/igt@gem_wait@wait@all-engines.html
    - bat-adls-5:         [PASS][57] -> [FAIL][58] +1 other test fail
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adls-5/igt@gem_wait@wait@all-engines.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adls-5/igt@gem_wait@wait@all-engines.html
    - fi-pnv-d510:        [PASS][59] -> [FAIL][60] +1 other test fail
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-pnv-d510/igt@gem_wait@wait@all-engines.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-pnv-d510/igt@gem_wait@wait@all-engines.html
    - bat-jsl-3:          [PASS][61] -> [FAIL][62] +1 other test fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-jsl-3/igt@gem_wait@wait@all-engines.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-jsl-3/igt@gem_wait@wait@all-engines.html
    - fi-glk-j4005:       [PASS][63] -> [FAIL][64] +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-glk-j4005/igt@gem_wait@wait@all-engines.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-glk-j4005/igt@gem_wait@wait@all-engines.html
    - bat-adlp-9:         [PASS][65] -> [FAIL][66] +1 other test fail
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlp-9/igt@gem_wait@wait@all-engines.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlp-9/igt@gem_wait@wait@all-engines.html

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3:
    - bat-dg2-11:         [PASS][67] -> [FAIL][68] +91 other tests fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp1:
    - bat-dg2-9:          [PASS][69] -> [FAIL][70] +120 other tests fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         NOTRUN -> [FAIL][71] +16 other tests fail
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [PASS][72] -> [FAIL][73] +2 other tests fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-13/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-13/igt@i915_module_load@load.html

  * {igt@kms_dsc@dsc-basic@pipe-a-dp-1}:
    - bat-dg2-9:          [PASS][74] -> [FAIL][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html
    - bat-dg2-8:          NOTRUN -> [FAIL][76]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_124016v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-dg2-9:          [PASS][77] -> [ABORT][78] ([i915#8213])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-5:          [PASS][79] -> [ABORT][80] ([i915#8213])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-11:         [PASS][81] -> [ABORT][82] ([i915#8213])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
    - bat-dg2-8:          NOTRUN -> [ABORT][83] ([i915#8213])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-mtlp-8:         NOTRUN -> [ABORT][84] ([i915#9262])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_mmap@basic:
    - bat-dg2-8:          NOTRUN -> [SKIP][85] ([i915#4083])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-8:          NOTRUN -> [SKIP][86] ([i915#4077]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg2-8:          NOTRUN -> [SKIP][87] ([i915#4079]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-8:          NOTRUN -> [SKIP][88] ([i915#6621])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][89] ([i915#6645])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-8:          NOTRUN -> [SKIP][90] ([i915#5190])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-8:          NOTRUN -> [SKIP][91] ([i915#4215] / [i915#5190])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-8:          NOTRUN -> [SKIP][92] ([i915#4212]) +6 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg2-8:          NOTRUN -> [SKIP][93] ([i915#4212] / [i915#5608])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-8:          NOTRUN -> [SKIP][94] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-8:          NOTRUN -> [SKIP][95] ([fdo#109285])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-8:          NOTRUN -> [SKIP][96] ([i915#5274])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_psr@cursor_plane_move:
    - bat-dg2-8:          NOTRUN -> [SKIP][97] ([i915#1072]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-8:          NOTRUN -> [SKIP][98] ([i915#3555])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-8:          NOTRUN -> [SKIP][99] ([i915#3708])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-8:          NOTRUN -> [SKIP][100] ([i915#3708] / [i915#4077]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-8:          NOTRUN -> [SKIP][101] ([i915#3291] / [i915#3708]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [DMESG-FAIL][102] ([i915#5334]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][104] ([i915#9262]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - {bat-dg2-13}:       [DMESG-WARN][106] ([i915#7952]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262


Build changes
-------------

  * Linux: CI_DRM_13659 -> Patchwork_124016v1

  CI-20190529: 20190529
  CI_DRM_13659: b64f074fa9711dea043833b2d0990d1a4f7a36ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7494: 8b5be5770319f47d71782bc89e4738aa63d6906d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124016v1: b64f074fa9711dea043833b2d0990d1a4f7a36ac @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b484991f8048 drm/i915/gem: Allow users to disable waitboost

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/index.html

--===============1583460476695558694==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/gem: Allow users to disable waitboost</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124016/">https://patchwork.freedesktop.org/series/124016/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13659 -&gt; Patchwork_124016v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124016v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124016v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (6): bat-kbl-2 fi-bsw-n3050 fi-apl-guc fi-snb-2520m fi-cfl-8109u fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124016v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@gem_exec_basic@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@gem_exec_basic@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@gem_exec_basic@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@gem_exec_basic@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_exec_basic@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@rcs0:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@gem_exec_fence@basic-wait@rcs0.html">FAIL</a> +100 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs1:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_exec_fence@basic-wait@vcs1.html">FAIL</a> +120 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-atsm-1/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-atsm-1/igt@gem_sync@basic-each.html">FAIL</a> +65 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all-engines:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-skl-guc/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-skl-guc/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-x1275/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adln-1/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adln-1/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-8809g/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-8809g/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-ivb-3770/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-ivb-3770/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-elk-e7500/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-elk-e7500/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-bsw-nick/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-bsw-nick/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-kbl-guc/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-kbl-guc/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlm-1/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlm-1/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-rplp-1/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-rplp-1/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-ilk-650/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-ilk-650/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-tgl-1115g4/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-tgl-1115g4/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-cfl-guc/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-cfl-guc/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-6/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-6/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-hsw-4770/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-hsw-4770/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-8/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-jsl-1/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-jsl-1/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-cfl-8700k/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-cfl-8700k/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-blb-e6850/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-blb-e6850/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-rpls-1/igt@gem_wait@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-rpls-1/igt@gem_wait@busy@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all-engines:</p>
<ul>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlp-6/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlp-6/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-rkl-11600/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-rkl-11600/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adls-5/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adls-5/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-pnv-d510/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-pnv-d510/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-jsl-3/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-jsl-3/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-glk-j4005/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-glk-j4005/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-adlp-9/igt@gem_wait@wait@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-adlp-9/igt@gem_wait@wait@all-engines.html">FAIL</a> +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a3.html">FAIL</a> +91 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">FAIL</a> +120 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-3.html">FAIL</a> +16 other tests fail</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-13/igt@i915_module_load@load.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>{igt@kms_dsc@dsc-basic@pipe-a-dp-1}:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124016v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13659/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7952">i915#7952</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124016v1/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13659 -&gt; Patchwork_124016v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13659: b64f074fa9711dea043833b2d0990d1a4f7a36ac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7494: 8b5be5770319f47d71782bc89e4738aa63d6906d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124016v1: b64f074fa9711dea043833b2d0990d1a4f7a36ac @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b484991f8048 drm/i915/gem: Allow users to disable waitboost</p>

</body>
</html>

--===============1583460476695558694==--
