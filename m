Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CEE6E1496
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 20:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C9F10EBD6;
	Thu, 13 Apr 2023 18:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFEF610EBD6;
 Thu, 13 Apr 2023 18:49:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C31C9AA917;
 Thu, 13 Apr 2023 18:49:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0405807885231199491=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 13 Apr 2023 18:49:25 -0000
Message-ID: <168141176575.3695.3855402452133024552@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_CTM_stuff_mostly_=28rev3=29?=
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

--===============0405807885231199491==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: CTM stuff mostly (rev3)
URL   : https://patchwork.freedesktop.org/series/116345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13003 -> Patchwork_116345v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116345v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116345v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/index.html

Participating hosts (36 -> 36)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116345v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@ctm-red-to-blue@pipe-a (NEW):
    - bat-dg2-11:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-11/igt@kms_color@ctm-red-to-blue@pipe-a.html
    - bat-dg2-8:          NOTRUN -> [ABORT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_color@ctm-red-to-blue@pipe-a.html
    - bat-dg2-9:          NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-a.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13003 and Patchwork_116345v3:

### New IGT tests (37) ###

  * igt@kms_color@ctm-0-25@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-25@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-50@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-0-75@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-blue-to-red@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-green-to-red@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-max@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-negative@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-a:
    - Statuses : 3 abort(s) 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-red-to-blue@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_color@ctm-signed@pipe-a:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-b:
    - Statuses : 20 pass(s) 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-c:
    - Statuses : 20 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_color@ctm-signed@pipe-d:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_116345v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][6] -> [DMESG-FAIL][7] ([i915#5334] / [i915#7872])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8109u:       [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][11] -> [ABORT][12] ([i915#7911])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-rpls-1/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][13] ([i915#6367] / [i915#7913] / [i915#7996])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271]) +16 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][15] ([i915#7828])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adlp-9:         NOTRUN -> [SKIP][16] ([i915#7828])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_color@ctm-0-25@pipe-b (NEW):
    - {bat-kbl-2}:        NOTRUN -> [SKIP][17] ([fdo#109271]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html

  * igt@kms_color@ctm-0-50@pipe-b (NEW):
    - fi-bsw-n3050:       NOTRUN -> [SKIP][18] ([fdo#109271]) +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_color@ctm-0-75@pipe-a (NEW):
    - bat-rpls-2:         NOTRUN -> [SKIP][19] ([i915#5354]) +17 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_color@ctm-0-75@pipe-a.html

  * igt@kms_color@ctm-blue-to-red@pipe-c (NEW):
    - fi-bsw-nick:        NOTRUN -> [SKIP][20] ([fdo#109271]) +26 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][21] ([fdo#109271]) +26 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html

  * igt@kms_color@ctm-green-to-red@pipe-c (NEW):
    - fi-kbl-8809g:       NOTRUN -> [SKIP][22] ([fdo#109271]) +26 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html

  * igt@kms_color@ctm-max@pipe-b (NEW):
    - bat-dg1-7:          NOTRUN -> [SKIP][23] ([i915#5354]) +35 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html

  * {igt@kms_color@ctm-signed@pipe-a} (NEW):
    - fi-kbl-x1275:       NOTRUN -> [SKIP][24] ([fdo#109271]) +26 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html

  * {igt@kms_color@ctm-signed@pipe-b} (NEW):
    - fi-elk-e7500:       NOTRUN -> [SKIP][25] ([fdo#109271]) +19 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][26] -> [FAIL][27] ([i915#7932])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][28] ([i915#3546]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][29] ([i915#1845])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][30] ([i915#4983] / [i915#7913] / [i915#7981]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-rpls-2/igt@i915_selftest@live@reset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@uncore:
    - bat-adlp-9:         [ABORT][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-adlp-9/igt@i915_selftest@live@uncore.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@i915_selftest@live@uncore.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][34] ([i915#7932]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * IGT: IGT_7254 -> IGTPW_8780
  * Linux: CI_DRM_13003 -> Patchwork_116345v3

  CI-20190529: 20190529
  CI_DRM_13003: 9452fe4b47da924d60188cd39d263e5a980db5df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116345v3: 9452fe4b47da924d60188cd39d263e5a980db5df @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1ebc4ff8110f drm/i915: Do state check for color management changes
58bb4021515b drm/i915: No 10bit gamma on desktop gen3 parts
43f193c0b1c9 drm/i915: Implement CTM property support for VLV
5cc6f8550ee4 drm/i915: Always enable CGM CSC on CHV
e249909a0b1e drm/i915: Fix CHV CGM CSC coefficient sign handling
a8f97b8c86aa drm/i915: Expose crtc CTM property on ilk/snb
f47e7db4c997 drm/uapi: Document CTM matrix better

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/index.html

--===============0405807885231199491==
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
<tr><td><b>Series:</b></td><td>drm/i915: CTM stuff mostly (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116345/">https://patchwork.freedesktop.org/series/116345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13003 -&gt; Patchwork_116345v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116345v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116345v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116345v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a (NEW):</p>
<ul>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-11/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-9/igt@kms_color@ctm-red-to-blue@pipe-a.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13003 and Patchwork_116345v3:</p>
<h3>New IGT tests (37)</h3>
<ul>
<li>
<p>igt@kms_color@ctm-0-25@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-a:</p>
<ul>
<li>Statuses : 3 abort(s) 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-a:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-b:</p>
<ul>
<li>Statuses : 20 pass(s) 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-c:</p>
<ul>
<li>Statuses : 20 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-d:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116345v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b (NEW):</p>
<ul>
<li>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-kbl-2/igt@kms_color@ctm-0-25@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b (NEW):</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-bsw-n3050/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-a (NEW):</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_color@ctm-0-75@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-c (NEW):</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-bsw-nick/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-guc/igt@kms_color@ctm-blue-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-c (NEW):</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-8809g/igt@kms_color@ctm-green-to-red@pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b (NEW):</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg1-7/igt@kms_color@ctm-max@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-a} (NEW):</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-kbl-x1275/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_color@ctm-signed@pipe-b} (NEW):</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/fi-elk-e7500/igt@kms_color@ctm-signed@pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-adlp-9/igt@i915_selftest@live@uncore.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-adlp-9/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13003/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116345v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7254 -&gt; IGTPW_8780</li>
<li>Linux: CI_DRM_13003 -&gt; Patchwork_116345v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13003: 9452fe4b47da924d60188cd39d263e5a980db5df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8780: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8780/index.html<br />
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116345v3: 9452fe4b47da924d60188cd39d263e5a980db5df @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1ebc4ff8110f drm/i915: Do state check for color management changes<br />
58bb4021515b drm/i915: No 10bit gamma on desktop gen3 parts<br />
43f193c0b1c9 drm/i915: Implement CTM property support for VLV<br />
5cc6f8550ee4 drm/i915: Always enable CGM CSC on CHV<br />
e249909a0b1e drm/i915: Fix CHV CGM CSC coefficient sign handling<br />
a8f97b8c86aa drm/i915: Expose crtc CTM property on ilk/snb<br />
f47e7db4c997 drm/uapi: Document CTM matrix better</p>

</body>
</html>

--===============0405807885231199491==--
