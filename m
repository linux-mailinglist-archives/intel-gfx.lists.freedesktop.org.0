Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB6C670CA4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 00:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC1810E5F2;
	Tue, 17 Jan 2023 23:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B808210E5EF;
 Tue, 17 Jan 2023 23:05:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1625A00CC;
 Tue, 17 Jan 2023 23:05:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2572954537497660030=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 17 Jan 2023 23:05:45 -0000
Message-ID: <167399674571.21230.12836227378609756442@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230117213630.2897570-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230117213630.2897570-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWxs?=
 =?utf-8?q?ow_error_capture_without_a_request_/_on_reset_failure_=28rev3?=
 =?utf-8?q?=29?=
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

--===============2572954537497660030==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Allow error capture without a request / on reset failure (rev3)
URL   : https://patchwork.freedesktop.org/series/111454/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12594 -> Patchwork_111454v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111454v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111454v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/index.html

Participating hosts (42 -> 44)
------------------------------

  Additional (3): fi-kbl-soraka bat-rpls-2 fi-skl-6700k2 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111454v3:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-8809g:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - fi-ctg-p8600:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ctg-p8600/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ctg-p8600/igt@debugfs_test@read_all_entries.html
    - fi-blb-e6850:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-blb-e6850/igt@debugfs_test@read_all_entries.html
    - fi-bsw-n3050:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - fi-skl-6600u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6600u/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-glk-j4005:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
    - fi-snb-2600:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-snb-2600/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-snb-2600/igt@debugfs_test@read_all_entries.html
    - fi-skl-guc:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-skl-guc/igt@debugfs_test@read_all_entries.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-guc/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - fi-bsw-nick:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
    - fi-bsw-kefka:       [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html
    - fi-adl-ddr5:        [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-adl-ddr5/igt@debugfs_test@read_all_entries.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-adl-ddr5/igt@debugfs_test@read_all_entries.html

  * igt@i915_hangman@error-state-basic:
    - bat-dg1-5:          [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-5/igt@i915_hangman@error-state-basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-5/igt@i915_hangman@error-state-basic.html
    - fi-rkl-guc:         [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-rkl-guc/igt@i915_hangman@error-state-basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-guc/igt@i915_hangman@error-state-basic.html
    - bat-dg1-6:          [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-6/igt@i915_hangman@error-state-basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-6/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-5/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-guc/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-6/igt@runner@aborted.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [ABORT][51] ([i915#7763]) -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-jsl-1}:        [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-jsl-1/igt@debugfs_test@read_all_entries.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-jsl-1/igt@debugfs_test@read_all_entries.html
    - {fi-jsl-1}:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-jsl-1/igt@debugfs_test@read_all_entries.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-jsl-1/igt@debugfs_test@read_all_entries.html
    - {bat-kbl-2}:        [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-kbl-2/igt@debugfs_test@read_all_entries.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-kbl-2/igt@debugfs_test@read_all_entries.html
    - {bat-adls-5}:       [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adls-5/igt@debugfs_test@read_all_entries.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adls-5/igt@debugfs_test@read_all_entries.html
    - {bat-jsl-3}:        [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-jsl-3/igt@debugfs_test@read_all_entries.html

  * igt@i915_hangman@error-state-basic:
    - {bat-dg2-9}:        [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-9/igt@i915_hangman@error-state-basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-9/igt@i915_hangman@error-state-basic.html
    - {bat-adln-1}:       [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adln-1/igt@i915_hangman@error-state-basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adln-1/igt@i915_hangman@error-state-basic.html
    - {bat-rpls-2}:       NOTRUN -> [INCOMPLETE][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rpls-2/igt@i915_hangman@error-state-basic.html
    - {bat-dg2-8}:        [PASS][68] -> [INCOMPLETE][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-8/igt@i915_hangman@error-state-basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-8/igt@i915_hangman@error-state-basic.html
    - {bat-adlm-1}:       [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlm-1/igt@i915_hangman@error-state-basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlm-1/igt@i915_hangman@error-state-basic.html
    - {bat-rpls-1}:       [PASS][72] -> [INCOMPLETE][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-rpls-1/igt@i915_hangman@error-state-basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rpls-1/igt@i915_hangman@error-state-basic.html
    - {bat-adlp-6}:       [PASS][74] -> [INCOMPLETE][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlp-6/igt@i915_hangman@error-state-basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlp-6/igt@i915_hangman@error-state-basic.html
    - {bat-dg1-7}:        [PASS][76] -> [INCOMPLETE][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-7/igt@i915_hangman@error-state-basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-7/igt@i915_hangman@error-state-basic.html
    - {bat-adlp-9}:       [PASS][78] -> [INCOMPLETE][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlp-9/igt@i915_hangman@error-state-basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlp-9/igt@i915_hangman@error-state-basic.html
    - {bat-dg2-11}:       [PASS][80] -> [INCOMPLETE][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-11/igt@i915_hangman@error-state-basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-11/igt@i915_hangman@error-state-basic.html
    - {bat-dg2-oem1}:     [PASS][82] -> [INCOMPLETE][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-oem1/igt@i915_hangman@error-state-basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-oem1/igt@i915_hangman@error-state-basic.html
    - {bat-rplp-1}:       [PASS][84] -> [INCOMPLETE][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-rplp-1/igt@i915_hangman@error-state-basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rplp-1/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - {bat-dg2-9}:        NOTRUN -> [FAIL][86]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_111454v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-ilk-650:         [PASS][87] -> [FAIL][88] ([i915#7350])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ilk-650/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ilk-650/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][89] ([i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][90] ([i915#4312])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8109u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][91] ([i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][92] ([i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][93] ([i915#4312])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-snb-2600/igt@runner@aborted.html
    - fi-ctg-p8600:       NOTRUN -> [FAIL][94] ([i915#4312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ctg-p8600/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][95] ([i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][96] ([i915#4312])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-n3050/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][97] ([i915#4312])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6600u/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][98] ([i915#4312])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][99] ([i915#4312])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-glk-j4005/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][100] ([i915#4312])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][101] ([i915#4312] / [i915#4991])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][102] ([i915#4312])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][103] ([i915#4312])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][104] ([i915#4312])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-nick/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][105] ([i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-11600/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][106] ([i915#4312])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][107] ([i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][108] ([i915#4312])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#7350]: https://gitlab.freedesktop.org/drm/intel/issues/7350
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7763]: https://gitlab.freedesktop.org/drm/intel/issues/7763


Build changes
-------------

  * Linux: CI_DRM_12594 -> Patchwork_111454v3

  CI-20190529: 20190529
  CI_DRM_12594: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111454v3: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bbfe814bb44f drm/i915/guc: Add a debug print on GuC triggered reset
820c31964ca3 drm/i915/guc: Look for a guilty context when an engine reset fails
3c3cc3702cb7 drm/i915: Allow error capture of a pending request
7b9165e8a786 drm/i915: Allow error capture without a request
94efccec5768 drm/i915: Fix request locking during error capture & debugfs dump

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/index.html

--===============2572954537497660030==
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
<tr><td><b>Series:</b></td><td>Allow error capture without a request / on reset failure (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111454/">https://patchwork.freedesktop.org/series/111454/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12594 -&gt; Patchwork_111454v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111454v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111454v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/index.html</p>
<h2>Participating hosts (42 -&gt; 44)</h2>
<p>Additional (3): fi-kbl-soraka bat-rpls-2 fi-skl-6700k2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111454v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-8809g/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ctg-p8600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ctg-p8600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ctg-p8600/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-blb-e6850/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-n3050/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6600u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-snb-2600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-snb-2600/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-skl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-guc/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-nick/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-kefka/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-adl-ddr5/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-adl-ddr5/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-5/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-5/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-guc/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-6/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-apl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-6/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-icl-u2/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7763">i915#7763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-icl-u2/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-jsl-1/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-jsl-1/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-kbl-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-kbl-2/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adls-5}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adls-5/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adls-5/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-jsl-3/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-9/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-9/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adln-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adln-1/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rpls-2/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-8/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-8/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlm-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlm-1/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-rpls-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rpls-1/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlp-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlp-6/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg1-7/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg1-7/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-adlp-9/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-adlp-9/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-11/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-11/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-oem1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-dg2-oem1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-oem1/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/bat-rplp-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-rplp-1/igt@i915_hangman@error-state-basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/bat-dg2-9/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111454v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ilk-650/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7350">i915#7350</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ctg-p8600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-ctg-p8600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111454v3/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12594 -&gt; Patchwork_111454v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12594: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111454v3: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bbfe814bb44f drm/i915/guc: Add a debug print on GuC triggered reset<br />
820c31964ca3 drm/i915/guc: Look for a guilty context when an engine reset fails<br />
3c3cc3702cb7 drm/i915: Allow error capture of a pending request<br />
7b9165e8a786 drm/i915: Allow error capture without a request<br />
94efccec5768 drm/i915: Fix request locking during error capture &amp; debugfs dump</p>

</body>
</html>

--===============2572954537497660030==--
