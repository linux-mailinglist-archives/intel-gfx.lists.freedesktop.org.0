Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0120A658F60
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 18:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997A410E404;
	Thu, 29 Dec 2022 17:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8D4510E3FF;
 Thu, 29 Dec 2022 17:02:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E50BA7E03;
 Thu, 29 Dec 2022 17:02:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2916874344390284752=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 29 Dec 2022 17:02:53 -0000
Message-ID: <167233337359.3304.16841460878298008580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
In-Reply-To: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Expand_force=5Fprobe_to_block_probe_of_devices_as_well?=
 =?utf-8?q?=2E?=
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

--===============2916874344390284752==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Expand force_probe to block probe of devices as well.
URL   : https://patchwork.freedesktop.org/series/112292/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12528 -> Patchwork_112292v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112292v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112292v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/index.html

Participating hosts (40 -> 44)
------------------------------

  Additional (4): fi-kbl-soraka fi-bsw-kefka bat-dg2-9 bat-atsm-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112292v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-adl-ddr5:        [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-5:          [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-guc:         [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-6:          [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_module_load@load:
    - fi-kbl-8809g:       [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-adlp-4:         [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_module_load@load.html

  * igt@i915_selftest@live@client:
    - fi-elk-e7500:       [PASS][18] -> [FAIL][19] +37 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@i915_selftest@live@client.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - fi-bwr-2160:        [PASS][20] -> [FAIL][21] +37 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bwr-2160/igt@i915_selftest@live@coherency.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@i915_selftest@live@coherency.html
    - fi-hsw-4770:        [PASS][22] -> [FAIL][23] +28 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@i915_selftest@live@coherency.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@evict:
    - fi-pnv-d510:        [PASS][24] -> [FAIL][25] +37 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-pnv-d510/igt@i915_selftest@live@evict.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][26] -> [FAIL][27] +37 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][28] -> [FAIL][29] +37 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][30] -> [FAIL][31] +37 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][32] -> [FAIL][33] +37 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - fi-ivb-3770:        [PASS][34] -> [FAIL][35] +37 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][36] +37 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg1-6:          [PASS][37] -> [FAIL][38] +37 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_selftest@live@gt_heartbeat.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-6700k2:      [PASS][39] -> [FAIL][40] +37 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-icl-u2:          [PASS][41] -> [FAIL][42] +37 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-glk-j4005:       [PASS][43] -> [FAIL][44] +37 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@guc:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][45] +37 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-kefka/igt@i915_selftest@live@guc.html
    - fi-adl-ddr5:        [PASS][46] -> [FAIL][47] +36 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_selftest@live@guc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@perf:
    - fi-hsw-4770:        NOTRUN -> [FAIL][48] +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - fi-bsw-nick:        [PASS][49] -> [FAIL][50] +37 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@i915_selftest@live@requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [PASS][51] -> [FAIL][52] +36 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@i915_selftest@live@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@i915_selftest@live@reset.html
    - bat-dg1-5:          [PASS][53] -> [FAIL][54] +37 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_selftest@live@reset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][55] -> [FAIL][56] +36 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
    - bat-adlp-4:         NOTRUN -> [FAIL][57] +36 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][58] -> [FAIL][59] +37 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][60] -> [FAIL][61] +37 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@vma:
    - fi-rkl-guc:         [PASS][62] -> [FAIL][63] +37 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_selftest@live@vma.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_selftest@live@vma.html
    - fi-snb-2600:        [PASS][64] -> [FAIL][65] +37 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@i915_selftest@live@vma.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@i915_selftest@live@vma.html
    - fi-skl-guc:         [PASS][66] -> [FAIL][67] +37 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@i915_selftest@live@vma.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@i915_selftest@live@vma.html

  * igt@i915_selftest@live@workarounds:
    - fi-blb-e6850:       [PASS][68] -> [FAIL][69] +37 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-blb-e6850/igt@i915_selftest@live@workarounds.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][70] -> [FAIL][71] +37 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][72] +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck:
    - fi-icl-u2:          NOTRUN -> [SKIP][73] +6 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][74] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-4:         NOTRUN -> [SKIP][75] +11 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-rkl-11600:       NOTRUN -> [SKIP][76] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-adl-ddr5:        [SKIP][77] ([i915#4613]) -> [SKIP][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          [SKIP][79] ([i915#4613]) -> [SKIP][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [DMESG-WARN][81] ([i915#6899]) -> [DMESG-FAIL][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@i915_module_load@reload.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [DMESG-FAIL][83] ([i915#5334]) -> [FAIL][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [DMESG-WARN][85] ([i915#5591]) -> [FAIL][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [INCOMPLETE][87] ([i915#4785]) -> [FAIL][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-ehl-2}:         [PASS][89] -> [SKIP][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
    - {bat-rpls-2}:       [PASS][91] -> [SKIP][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html
    - {fi-jsl-1}:         [PASS][93] -> [SKIP][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html
    - {bat-adlp-6}:       [PASS][95] -> [SKIP][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
    - {bat-dg1-7}:        [PASS][97] -> [SKIP][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html
    - {bat-jsl-3}:        [PASS][99] -> [SKIP][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
    - {bat-adlp-9}:       [PASS][101] -> [SKIP][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_lmem_swapping@basic:
    - {bat-jsl-3}:        [SKIP][103] ([i915#4613]) -> [SKIP][104] +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@gem_lmem_swapping@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
    - {bat-adlp-9}:       [SKIP][105] ([i915#4613]) -> [SKIP][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@gem_lmem_swapping@basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html
    - {bat-adln-1}:       [SKIP][107] ([i915#4613]) -> [SKIP][108] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@gem_lmem_swapping@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - {bat-adlm-1}:       [SKIP][109] ([i915#4613]) -> [SKIP][110] +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - {fi-jsl-1}:         [SKIP][111] ([i915#4613]) -> [SKIP][112] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html
    - {bat-rpls-1}:       [SKIP][113] ([i915#4613]) -> [SKIP][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html
    - {bat-adlp-6}:       [SKIP][115] ([i915#4613]) -> [SKIP][116] +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html
    - {fi-ehl-2}:         [SKIP][117] ([i915#4613]) -> [SKIP][118] +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - {bat-rpls-2}:       [SKIP][119] ([i915#4613]) -> [SKIP][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@reload:
    - {bat-adlp-6}:       [PASS][121] -> [FAIL][122] +37 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@i915_module_load@reload.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-rpls-1}:       [PASS][123] -> [SKIP][124] +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@client:
    - {bat-dg2-8}:        [PASS][125] -> [FAIL][126] +37 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@i915_selftest@live@client.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@i915_selftest@live@client.html
    - {bat-adlm-1}:       [PASS][127] -> [FAIL][128] +37 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@i915_selftest@live@client.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - {bat-jsl-3}:        [PASS][129] -> [FAIL][130] +37 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@i915_selftest@live@coherency.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@i915_selftest@live@coherency.html
    - {bat-dg2-9}:        NOTRUN -> [FAIL][131] +37 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-rpls-2}:       [PASS][132] -> [FAIL][133] +25 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - {fi-ehl-2}:         [PASS][134] -> [FAIL][135] +37 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-adlp-9}:       [PASS][136] -> [FAIL][137] +37 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [PASS][138] -> [FAIL][139] +37 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
    - {bat-rpls-2}:       [DMESG-FAIL][140] ([i915#4258]) -> [FAIL][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@late_gt_pm:
    - {bat-adln-1}:       [PASS][142] -> [FAIL][143] +36 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@perf:
    - {bat-dg2-11}:       [PASS][144] -> [FAIL][145] +37 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@i915_selftest@live@perf.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - {bat-kbl-2}:        [PASS][146] -> [FAIL][147] +37 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-kbl-2/igt@i915_selftest@live@requests.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-kbl-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][148] ([i915#4983]) -> [FAIL][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@reset.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@ring_submission:
    - {bat-rpls-2}:       NOTRUN -> [FAIL][150] +9 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@slpc:
    - {bat-atsm-1}:       NOTRUN -> [FAIL][151] +37 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-atsm-1/igt@i915_selftest@live@slpc.html
    - {bat-adln-1}:       [DMESG-FAIL][152] ([i915#6997]) -> [FAIL][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@i915_selftest@live@slpc.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - {bat-dg1-7}:        [PASS][154] -> [FAIL][155] +37 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - {bat-rpls-1}:       [PASS][156] -> [FAIL][157] +37 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-dg2-8}:        [PASS][158] -> [WARN][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html
    - {bat-dg2-9}:        NOTRUN -> [WARN][160] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - {fi-ehl-2}:         [PASS][161] -> [INCOMPLETE][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@i915_suspend@basic-s3-without-i915.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@i915_suspend@basic-s3-without-i915.html
    - {bat-dg2-11}:       [PASS][163] -> [WARN][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html
    - {bat-adlp-6}:       [PASS][165] -> [INCOMPLETE][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - {bat-dg2-11}:       [SKIP][167] ([i915#4212]) -> [SKIP][168] +7 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - {bat-adlm-1}:       [PASS][169] -> [SKIP][170] +43 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - {bat-dg2-8}:        [SKIP][171] ([i915#4212]) -> [SKIP][172] +7 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - {bat-adln-1}:       [PASS][173] -> [SKIP][174] +43 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_addfb_basic@invalid-set-prop.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - {bat-dg2-9}:        NOTRUN -> [SKIP][175] +64 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html
    - {bat-dg2-11}:       [PASS][176] -> [SKIP][177] +30 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html

  * igt@kms_addfb_basic@unused-offsets:
    - {bat-dg2-8}:        [PASS][178] -> [SKIP][179] +30 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html

  * igt@kms_chamelium@hdmi-edid-read:
    - {bat-dg2-8}:        [SKIP][180] ([fdo#111827]) -> [SKIP][181] +8 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html
    - {bat-adlm-1}:       [SKIP][182] ([fdo#111827]) -> [SKIP][183] +8 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - {bat-dg2-11}:       [SKIP][184] ([fdo#111827]) -> [SKIP][185] +8 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - {bat-adln-1}:       [SKIP][186] ([fdo#111827]) -> [SKIP][187] +8 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_chamelium@vga-edid-read.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - {bat-adln-1}:       [SKIP][188] ([i915#4213]) -> [SKIP][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - {bat-dg2-11}:       [SKIP][190] ([i915#4103] / [i915#4213]) -> [SKIP][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - {bat-atsm-1}:       NOTRUN -> [SKIP][192] +7 similar issues
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor.html
    - {bat-jsl-3}:        NOTRUN -> [SKIP][193] +6 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_flip@basic-plain-flip:
    - {bat-adln-1}:       NOTRUN -> [SKIP][194] +12 similar issues
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_flip@basic-plain-flip.html
    - {bat-adlm-1}:       [SKIP][195] ([i915#3637]) -> [SKIP][196] +3 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_flip@basic-plain-flip.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - {bat-adln-1}:       [SKIP][197] ([fdo#109285]) -> [SKIP][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html
    - {bat-adlm-1}:       [SKIP][199] ([fdo#109285]) -> [SKIP][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html
    - {bat-dg2-8}:        [SKIP][201] ([fdo#109285]) -> [SKIP][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
    - {bat-dg2-11}:       [SKIP][203] ([fdo#109285]) -> [SKIP][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - {bat-dg2-11}:       [SKIP][205] ([i915#5274]) -> [SKIP][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - {bat-dg2-8}:        [SKIP][207] ([i915#5274]) -> [SKIP][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck:
    - {bat-rpls-1}:       [SKIP][209] ([i915#1845]) -> [SKIP][210] +5 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
    - {bat-adlp-6}:       NOTRUN -> [SKIP][211] +5 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html
    - {fi-ehl-2}:         NOTRUN -> [SKIP][212] +5 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - {bat-adlm-1}:       [SKIP][213] ([i915#1845]) -> [SKIP][214] +9 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - {bat-dg2-11}:       NOTRUN -> [SKIP][215] +9 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - {bat-adlp-9}:       NOTRUN -> [SKIP][216] +6 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
    - {bat-dg2-11}:       [SKIP][217] ([i915#5354]) -> [SKIP][218] +2 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - {bat-rpls-2}:       [SKIP][219] ([i915#1845]) -> [SKIP][220] +5 similar issues
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - {bat-dg2-8}:        [SKIP][221] ([i915#5354]) -> [SKIP][222] +13 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][223] +6 similar issues
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - {bat-rpls-1}:       NOTRUN -> [SKIP][224]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - {bat-rpls-2}:       NOTRUN -> [SKIP][225]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - {bat-dg2-11}:       [SKIP][226] ([i915#3555] / [i915#4579]) -> [SKIP][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
    - {bat-adln-1}:       [SKIP][228] ([i915#3555] / [i915#4579]) -> [SKIP][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
    - {bat-dg2-8}:        [SKIP][230] ([i915#3555] / [i915#4579]) -> [SKIP][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
    - {bat-adlm-1}:       [SKIP][232] ([i915#3555]) -> [SKIP][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_112292v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-rkl-guc:         [PASS][234] -> [SKIP][235] ([i915#2575]) +42 similar issues
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@core_auth@basic-auth.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][236] ([fdo#109271]) +140 similar issues
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
    - fi-hsw-4770:        [PASS][237] -> [SKIP][238] ([fdo#109271] / [fdo#109315]) +45 similar issues
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@debugfs_test@read_all_entries.html
    - fi-skl-6700k2:      [PASS][239] -> [SKIP][240] ([fdo#109271]) +98 similar issues
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html

  * igt@fbdev@eof:
    - bat-dg1-6:          [PASS][241] -> [SKIP][242] ([i915#2582]) +4 similar issues
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@fbdev@eof.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@fbdev@eof.html

  * igt@gem_basic@create-close:
    - fi-elk-e7500:       [PASS][243] -> [SKIP][244] ([fdo#109271]) +92 similar issues
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@gem_basic@create-close.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@gem_basic@create-close.html
    - fi-bsw-nick:        [PASS][245] -> [SKIP][246] ([fdo#109271]) +88 similar issues
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@gem_basic@create-close.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@gem_basic@create-close.html

  * igt@gem_busy@busy:
    - fi-elk-e7500:       NOTRUN -> [SKIP][247] ([fdo#109271]) +26 similar issues
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@gem_busy@busy.html

  * igt@gem_ctx_create@basic-files:
    - fi-bsw-n3050:       [PASS][248] -> [SKIP][249] ([fdo#109271]) +89 similar issues
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_basic@basic:
    - fi-ilk-650:         NOTRUN -> [SKIP][250] ([fdo#109271]) +26 similar issues
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@gem_exec_basic@basic.html

  * igt@gem_exec_fence@basic-await:
    - fi-skl-6600u:       NOTRUN -> [SKIP][251] ([fdo#109271]) +26 similar issues
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_exec_fence@basic-await.html

  * igt@gem_exec_fence@basic-wait:
    - bat-adlp-4:         NOTRUN -> [SKIP][252] ([i915#2575]) +35 similar issues
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@gem_exec_fence@basic-wait.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][253] ([fdo#109271]) +11 similar issues
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][254] ([fdo#109271]) +9 similar issues
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_exec_fence@basic-wait.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][255] ([fdo#109271]) +11 similar issues
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html

  * igt@gem_exec_fence@nb-await:
    - fi-hsw-4770:        NOTRUN -> [SKIP][256] ([fdo#109271] / [fdo#109315]) +12 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_parallel@engines:
    - fi-rkl-guc:         NOTRUN -> [SKIP][257] ([fdo#109315]) +12 similar issues
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_exec_parallel@engines.html
    - fi-skl-guc:         NOTRUN -> [SKIP][258] ([fdo#109271]) +25 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@gem_exec_parallel@engines.html
    - bat-dg1-6:          NOTRUN -> [SKIP][259] ([i915#2575]) +25 similar issues
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_exec_parallel@engines.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][260] ([fdo#109271]) +25 similar issues
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_exec_parallel@engines.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-icl-u2:          NOTRUN -> [SKIP][261] ([fdo#109315]) +13 similar issues
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][262] ([fdo#109271]) +26 similar issues
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@bad-flink:
    - fi-kbl-8809g:       [PASS][263] -> [SKIP][264] ([fdo#109271]) +91 similar issues
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@gem_flink_basic@bad-flink.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_flink_basic@bad-flink.html
    - fi-ivb-3770:        [PASS][265] -> [SKIP][266] ([fdo#109271]) +89 similar issues
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html

  * igt@gem_flink_basic@bad-open:
    - fi-apl-guc:         [PASS][267] -> [SKIP][268] ([fdo#109271]) +92 similar issues
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@gem_flink_basic@bad-open.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@gem_flink_basic@bad-open.html

  * igt@gem_flink_basic@basic:
    - fi-bwr-2160:        [PASS][269] -> [SKIP][270] ([fdo#109271]) +88 similar issues
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bwr-2160/igt@gem_flink_basic@basic.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@gem_flink_basic@basic.html

  * igt@gem_lmem_swapping@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][271] ([i915#5775]) +3 similar issues
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_lmem_swapping@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][272] ([i915#5775]) +3 similar issues
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_lmem_swapping@basic.html

  * igt@gem_render_linear_blits@basic:
    - fi-rkl-11600:       [PASS][273] -> [SKIP][274] ([fdo#109315]) +43 similar issues
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_render_linear_blits@basic.html
    - fi-icl-u2:          [PASS][275] -> [SKIP][276] ([fdo#109315]) +51 similar issues
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_render_linear_blits@basic.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_render_linear_blits@basic.html

  * igt@gem_softpin@allocator-basic:
    - fi-rkl-guc:         [PASS][277] -> [SKIP][278] ([fdo#109315]) +43 similar issues
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_softpin@allocator-basic.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_softpin@allocator-basic.html
    - bat-dg1-6:          [PASS][279] -> [SKIP][280] ([i915#2575]) +70 similar issues
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_softpin@allocator-basic.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_softpin@allocator-basic.html

  * igt@gem_wait@wait:
    - fi-rkl-11600:       NOTRUN -> [SKIP][281] ([fdo#109315]) +12 similar issues
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_wait@wait.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - bat-dg1-5:          [PASS][282] -> [SKIP][283] ([i915#2575]) +70 similar issues
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_getparams_basic@basic-subslice-total.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-rkl-guc:         [PASS][284] -> [SKIP][285] ([i915#5174]) +2 similar issues
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - bat-dg1-6:          [PASS][286] -> [SKIP][287] ([i915#5174]) +2 similar issues
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-4:         [PASS][288] -> [SKIP][289] ([i915#5174])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-11600:       [PASS][290] -> [SKIP][291] ([i915#5174]) +2 similar issues
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html
    - fi-adl-ddr5:        [PASS][292] -> [SKIP][293] ([i915#5174]) +2 similar issues
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [PASS][294] -> [SKIP][295] ([i915#5174]) +2 similar issues
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-5:          [PASS][296] -> [SKIP][297] ([i915#5174]) +2 similar issues
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-4:         NOTRUN -> [SKIP][298] ([i915#5174])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [PASS][299] -> [FAIL][300] ([i915#7511])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-glk-j4005:       [PASS][301] -> [SKIP][302] ([fdo#109271]) +94 similar issues
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-icl-u2:          [PASS][303] -> [SKIP][304] ([i915#2575]) +42 similar issues
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_addfb_basic@bad-pitch-0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_addfb_basic@bad-pitch-0.html

  * igt@kms_addfb_basic@basic:
    - fi-hsw-4770:        [PASS][305] -> [SKIP][306] ([fdo#109271]) +46 similar issues
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_addfb_basic@basic.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_addfb_basic@basic.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-blb-e6850:       [PASS][307] -> [SKIP][308] ([fdo#109271]) +83 similar issues
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-rkl-11600:       [PASS][309] -> [SKIP][310] ([i915#2575]) +42 similar issues
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - fi-snb-2600:        [PASS][311] -> [SKIP][312] ([fdo#109271]) +94 similar issues
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-cfl-8109u:       [PASS][313] -> [SKIP][314] ([fdo#109271]) +94 similar issues
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html
    - bat-adlp-4:         [PASS][315] -> [SKIP][316] ([i915#2575]) +77 similar issues
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html
    - fi-kbl-7567u:       [PASS][317] -> [SKIP][318] ([fdo#109271]) +92 similar issues
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_addfb_basic@size-max:
    - fi-adl-ddr5:        [PASS][319] -> [SKIP][320] ([i915#2575]) +87 similar issues
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html
    - fi-cfl-guc:         [PASS][321] -> [SKIP][322] ([fdo#109271]) +95 similar issues
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@kms_addfb_basic@size-max.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_addfb_basic@size-max.html

  * igt@kms_addfb_basic@small-bo:
    - fi-skl-6600u:       [PASS][323] -> [SKIP][324] ([fdo#109271]) +98 similar issues
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8700k:       [PASS][325] -> [SKIP][326] ([fdo#109271]) +94 similar issues
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html

  * igt@kms_busy@basic:
    - fi-ivb-3770:        NOTRUN -> [SKIP][327] ([fdo#109271]) +26 similar issues
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - fi-cfl-guc:         NOTRUN -> [SKIP][328] ([fdo#109271]) +25 similar issues
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor:
    - fi-icl-u2:          NOTRUN -> [SKIP][329] ([i915#2575]) +5 similar issues
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][330] ([i915#2575]) +5 similar issues
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][331] ([i915#2575]) +18 similar issues
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-dpms.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][332] ([fdo#109271]) +9 similar issues
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-cfl-8700k:       NOTRUN -> [SKIP][333] ([fdo#109271]) +25 similar issues
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][334] ([fdo#109271]) +15 similar issues
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][335] ([i915#2575]) +6 similar issues
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-apl-guc:         NOTRUN -> [SKIP][336] ([fdo#109271]) +25 similar issues
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-dg1-5:          NOTRUN -> [SKIP][337] ([i915#2575]) +25 similar issues
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][338] ([fdo#109271]) +26 similar issues
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][339] ([fdo#109271]) +25 similar issues
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - fi-rkl-guc:         NOTRUN -> [SKIP][340] ([i915#6914]) +2 similar issues
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
    - fi-snb-2600:        NOTRUN -> [SKIP][341] ([fdo#109271]) +23 similar issues
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][342] ([i915#6914]) +2 similar issues
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-hsw-4770:        NOTRUN -> [SKIP][343] ([fdo#109271]) +14 similar issues
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_pipe_crc_basic@read-crc.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][344] ([fdo#109271]) +25 similar issues
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-ilk-650:         [PASS][345] -> [SKIP][346] ([fdo#109271]) +93 similar issues
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][347] ([fdo#109271]) +144 similar issues
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - fi-pnv-d510:        [PASS][348] -> [SKIP][349] ([fdo#109271]) +89 similar issues
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-read:
    - fi-skl-guc:         [PASS][350] -> [SKIP][351] ([fdo#109271]) +95 similar issues
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@prime_vgem@basic-read.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@prime_vgem@basic-read.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][352] ([i915#4991])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][353] ([i915#4817]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@debugfs_test@basic-hwmon:
    - fi-rkl-11600:       [SKIP][355] ([i915#7456]) -> [SKIP][356] ([fdo#109315])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
    - fi-icl-u2:          [SKIP][357] ([i915#7456]) -> [SKIP][358] ([fdo#109315])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@debugfs_test@basic-hwmon.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@debugfs_test@basic-hwmon.html
    - fi-rkl-guc:         [SKIP][359] ([i915#7456]) -> [SKIP][360] ([fdo#109315])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@debugfs_test@basic-hwmon.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@debugfs_test@basic-hwmon.html
    - bat-adlp-4:         [SKIP][361] ([i915#7456]) -> [SKIP][362] ([i915#2575])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@debugfs_test@basic-hwmon.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@debugfs_test@basic-hwmon.html
    - fi-adl-ddr5:        [SKIP][363] ([i915#7456]) -> [SKIP][364] ([i915#2575])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       [SKIP][365] ([fdo#109271] / [i915#2190]) -> [SKIP][366] ([fdo#109271])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7567u:       [SKIP][367] ([fdo#109271] / [i915#2190]) -> [SKIP][368] ([fdo#109271])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-8809g:       [SKIP][369] ([fdo#109271] / [i915#2190]) -> [SKIP][370] ([fdo#109271])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][371] ([fdo#109271] / [i915#2190]) -> [SKIP][372] ([fdo#109271])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
    - fi-rkl-11600:       [SKIP][373] ([i915#2190]) -> [SKIP][374] ([fdo#109315])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6600u:       [SKIP][375] ([fdo#109271] / [i915#2190]) -> [SKIP][376] ([fdo#109271])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-icl-u2:          [SKIP][377] ([i915#2190]) -> [SKIP][378] ([fdo#109315])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_huc_copy@huc-copy.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-glk-j4005:       [SKIP][379] ([fdo#109271] / [i915#2190]) -> [SKIP][380] ([fdo#109271])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      [SKIP][381] ([fdo#109271] / [i915#2190]) -> [SKIP][382] ([fdo#109271])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         [SKIP][383] ([fdo#109271] / [i915#4613]) -> [SKIP][384] ([fdo#109271]) +3 similar issues
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@gem_lmem_swapping@basic.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-glk-j4005:       [SKIP][385] ([fdo#109271] / [i915#4613]) -> [SKIP][386] ([fdo#109271]) +3 similar issues
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
    - fi-rkl-guc:         [SKIP][387] ([i915#4613]) -> [SKIP][388] ([i915#5775]) +3 similar issues
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_lmem_swapping@basic.html
    - fi-skl-guc:         [SKIP][389] ([fdo#109271] / [i915#4613]) -> [SKIP][390] ([fdo#109271]) +3 similar issues
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@gem_lmem_swapping@basic.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html
    - fi-skl-6700k2:      [SKIP][391] ([fdo#109271] / [i915#4613]) -> [SKIP][392] ([fdo#109271]) +3 similar issues
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html
    - fi-kbl-7567u:       [SKIP][393] ([fdo#109271] / [i915#4613]) -> [SKIP][394] ([fdo#109271]) +3 similar issues
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - fi-cfl-8700k:       [SKIP][395] ([fdo#109271] / [i915#4613]) -> [SKIP][396] ([fdo#109271]) +3 similar issues
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-rkl-11600:       [SKIP][397] ([i915#4613]) -> [SKIP][398] ([i915#5775]) +3 similar issues
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       [SKIP][399] ([fdo#109271] / [i915#4613]) -> [SKIP][400] ([fdo#109271]) +3 similar issues
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-guc:         [SKIP][401] ([fdo#109271] / [i915#4613]) -> [SKIP][402] ([fdo#109271]) +3 similar issues
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
    - fi-cfl-8109u:       [SKIP][403] ([fdo#109271] / [i915#4613]) -> [SKIP][404] ([fdo#109271]) +3 similar issues
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          [SKIP][405] ([i915#4083]) -> [SKIP][406] ([i915#2575])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_mmap@basic.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_mmap@basic.html
    - bat-dg1-6:          [SKIP][407] ([i915#4083]) -> [SKIP][408] ([i915#2575])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_mmap@basic.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg1-6:          [SKIP][409] ([i915#4079]) -> [SKIP][410] ([i915#2575]) +1 similar issue
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        [SKIP][411] ([fdo#109271]) -> [SKIP][412] ([fdo#109271] / [fdo#109315]) +5 similar issues
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-dg1-6:          [SKIP][413] ([i915#4077]) -> [SKIP][414] ([i915#2575]) +2 similar issues
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html
    - bat-dg1-5:          [SKIP][415] ([i915#4077]) -> [SKIP][416] ([i915#2575]) +2 similar issues
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       [SKIP][417] ([i915#3282]) -> [SKIP][418] ([fdo#109315])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_tiled_pread_basic.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
    - bat-dg1-5:          [SKIP][419] ([i915#4079]) -> [SKIP][420] ([i915#2575]) +1 similar issue
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_tiled_pread_basic.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_tiled_pread_basic.html
    - fi-rkl-guc:         [SKIP][421] ([i915#3282]) -> [SKIP][422] ([fdo#109315])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_tiled_pread_basic.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_tiled_pread_basic.html
    - bat-adlp-4:         [SKIP][423] ([i915#3282]) -> [SKIP][424] ([i915#2575])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@gem_tiled_pread_basic.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@gem_tiled_pread_basic.html
    - fi-adl-ddr5:        [SKIP][425] ([i915#3282]) -> [SKIP][426] ([i915#2575])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@gem_tiled_pread_basic.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-adl-ddr5:        [SKIP][427] ([i915#7561]) -> [SKIP][428] ([i915#2575])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-guc:         [SKIP][429] ([i915#7561]) -> [SKIP][430] ([fdo#109315])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-6:          [SKIP][431] ([i915#7561]) -> [SKIP][432] ([i915#2575])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html
    - fi-rkl-11600:       [SKIP][433] ([i915#7561]) -> [SKIP][434] ([fdo#109315])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
    - bat-dg1-5:          [SKIP][435] ([i915#7561]) -> [SKIP][436] ([i915#2575])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - bat-adlp-4:         [DMESG-WARN][437] ([i915#7077]) -> [SKIP][438] ([i915#5174])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rps@basic-api:
    - fi-rkl-guc:         [SKIP][439] ([i915#6621]) -> [SKIP][440] ([fdo#109315])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
    - bat-dg1-6:          [SKIP][441] ([i915#6621]) -> [SKIP][442] ([i915#2575])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [SKIP][443] ([i915#6621]) -> [SKIP][444] ([i915#2575])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          [SKIP][445] ([i915#4212]) -> [SKIP][446] ([i915#2575]) +7 similar issues
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          [SKIP][447] ([i915#4215]) -> [SKIP][448] ([i915#2575])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          [SKIP][449] ([i915#4215]) -> [SKIP][450] ([i915#2575])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - bat-dg1-6:          [SKIP][451] ([i915#4212]) -> [SKIP][452] ([i915#2575]) +7 similar issues
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-ivb-3770:        [SKIP][453] ([fdo#109271] / [fdo#111827]) -> [SKIP][454] ([fdo#109271]) +8 similar issues
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cfl-guc:         [SKIP][455] ([fdo#109271] / [fdo#111827]) -> [SKIP][456] ([fdo#109271]) +8 similar issues
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html
    - fi-hsw-4770:        [SKIP][457] ([fdo#109271] / [fdo#111827]) -> [SKIP][458] ([fdo#109271]) +7 similar issues
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html
    - fi-cfl-8109u:       [SKIP][459] ([fdo#109271] / [fdo#111827]) -> [SKIP][460] ([fdo#109271]) +8 similar issues
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html
    - bat-adlp-4:         [SKIP][461] ([fdo#111827]) -> [SKIP][462] ([i915#2575]) +7 similar issues
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-bsw-n3050:       [SKIP][463] ([fdo#109271] / [fdo#111827]) -> [SKIP][464] ([fdo#109271]) +8 similar issues
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@kms_chamelium@dp-edid-read.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@kms_chamelium@dp-edid-read.html
    - fi-adl-ddr5:        [SKIP][465] ([fdo#111827]) -> [SKIP][466] ([i915#2575]) +8 similar issues
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-kbl-7567u:       [SKIP][467] ([fdo#109271] / [fdo#111827]) -> [SKIP][468] ([fdo#109271]) +8 similar issues
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cfl-8700k:       [SKIP][469] ([fdo#109271] / [fdo#111827]) -> [SKIP][470] ([fdo#109271]) +8 similar issues
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6600u:       [SKIP][471] ([fdo#109271] / [fdo#111827]) -> [SKIP][472] ([fdo#109271]) +8 similar issues
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-apl-guc:         [SKIP][473] ([fdo#109271] / [fdo#111827]) -> [SKIP][474] ([fdo#109271]) +8 similar issues
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-glk-j4005:       [SKIP][475] ([fdo#109271] / [fdo#111827]) -> [SKIP][476] ([fdo#109271]) +8 similar issues
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-rkl-guc:         [SKIP][477] ([fdo#111827]) -> [SKIP][478] ([i915#2575]) +8 similar issues
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-skl-guc:         [SKIP][479] ([fdo#109271] / [fdo#111827]) -> [SKIP][480] ([fdo#109271]) +8 similar issues
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html
    - bat-dg1-6:          [SKIP][481] ([fdo#111827]) -> [SKIP][482] ([i915#2575]) +8 similar issues
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-elk-e7500:       [SKIP][483] ([fdo#109271] / [fdo#111827]) -> [SKIP][484] ([fdo#109271]) +8 similar issues
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@kms_chamelium@hdmi-edid-read.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@kms_chamelium@hdmi-edid-read.html
    - fi-ilk-650:         [SKIP][485] ([fdo#109271] / [fdo#111827]) -> [SKIP][486] ([fdo#109271]) +8 similar issues
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bsw-nick:        [SKIP][487] ([fdo#109271] / [fdo#111827]) -> [SKIP][488] ([fdo#109271]) +8 similar issues
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-rkl-11600:       [SKIP][489] ([fdo#111827]) -> [SKIP][490] ([i915#2575]) +7 similar issues
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-icl-u2:          [SKIP][491] ([fdo#111827]) -> [SKIP][492] ([i915#2575]) +8 similar issues
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - bat-dg1-5:          [SKIP][493] ([fdo#111827]) -> [SKIP][494] ([i915#2575]) +8 similar issues
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-kbl-8809g:       [SKIP][495] ([fdo#109271] / [fdo#111827]) -> [SKIP][496] ([fdo#109271]) +7 similar issues
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@kms_chamelium@vga-edid-read.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-snb-2600:        [SKIP][497] ([fdo#109271] / [fdo#111827]) -> [SKIP][498] ([fdo#109271]) +8 similar issues
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       [SKIP][499] ([i915#4103]) -> [SKIP][500] ([i915#2575])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-adl-ddr5:        [SKIP][501] ([i915#4103]) -> [SKIP][502] ([i915#2575])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - bat-adlp-4:         [SKIP][503] ([i915#4103]) -> [SKIP][504] ([i915#2575])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-icl-u2:          [SKIP][505] ([i915#4103]) -> [SKIP][506] ([i915#2575])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - bat-dg1-5:          [SKIP][507] ([i915#4103] / [i915#4213]) -> [SKIP][508] ([i915#2575])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - fi-rkl-guc:         [SKIP][509] ([i915#4103]) -> [SKIP][510] ([i915#2575])
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
    - bat-dg1-6:          [SKIP][511] ([i915#4103] / [i915#4213]) -> [SKIP][512] ([i915#2575])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       [SKIP][513] ([fdo#109285] / [i915#4098]) -> [SKIP][514] ([i915#2575])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
    - fi-adl-ddr5:        [SKIP][515] ([fdo#109285]) -> [SKIP][516] ([i915#2575])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html
    - fi-icl-u2:          [SKIP][517] ([fdo#109285]) -> [SKIP][518] ([i915#2575])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-5:          [SKIP][519] ([fdo#109285]) -> [SKIP][520] ([i915#2575])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
    - fi-rkl-guc:         [SKIP][521] ([fdo#109285]) -> [SKIP][522] ([i915#2575])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html
    - bat-dg1-6:          [SKIP][523] ([fdo#109285]) -> [SKIP][524] ([i915#2575])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         [SKIP][525] ([i915#4093]) -> [SKIP][526] ([i915#2575]) +3 similar issues
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_psr@cursor_plane_move:
    - fi-adl-ddr5:        [SKIP][527] ([i915#1072]) -> [SKIP][528] ([i915#2575]) +3 similar issues
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-rkl-guc:         [SKIP][529] ([i915#1072]) -> [SKIP][530] ([fdo#109315]) +3 similar issues
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-dg1-6:          [SKIP][531] ([i915#1072] / [i915#4078]) -> [SKIP][532] ([i915#2575]) +3 similar issues
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html
    - fi-rkl-11600:       [SKIP][533] ([i915#1072]) -> [SKIP][534] ([fdo#109315]) +3 similar issues
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html
    - bat-dg1-5:          [SKIP][535] ([i915#1072] / [i915#4078]) -> [SKIP][536] ([i915#2575]) +3 similar issues
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        [SKIP][537] ([fdo#109271] / [i915#1072]) -> [SKIP][538] ([fdo#109271] / [fdo#109315]) +3 similar issues
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-guc:         [SKIP][539] ([i915#3555] / [i915#4098]) -> [SKIP][540] ([i915#2575])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-6:          [SKIP][541] ([i915#3555]) -> [SKIP][542] ([i915#2575])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       [SKIP][543] ([i915#3555] / [i915#4098]) -> [SKIP][544] ([i915#2575])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-icl-u2:          [SKIP][545] ([i915#3555]) -> [SKIP][546] ([i915#2575])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          [SKIP][547] ([i915#3555]) -> [SKIP][548] ([i915#2575])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-adl-ddr5:        [SKIP][549] ([i915#3555]) -> [SKIP][550] ([i915#2575])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-4:         [SKIP][551] ([i915#3555] / [i915#4579]) -> [SKIP][552] ([i915#2575])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-5:          [SKIP][553] ([i915#3708]) -> [SKIP][554] ([i915#2575]) +3 similar issues
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@prime_vgem@basic-fence-read.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html
    - fi-rkl-guc:         [SKIP][555] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][556] ([fdo#109315]) +2 similar issues
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          [SKIP][557] ([i915#3708] / [i915#4077]) -> [SKIP][558] ([i915#2575]) +1 similar issue
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@prime_vgem@basic-gtt.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html
    - bat-dg1-6:          [SKIP][559] ([i915#3708] / [i915#4077]) -> [SKIP][560] ([i915#2575]) +1 similar issue
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@prime_vgem@basic-gtt.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - bat-dg1-6:          [SKIP][561] ([i915#3708]) -> [SKIP][562] ([i915#2575]) +3 similar issues
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@prime_vgem@basic-read.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@prime_vgem@basic-read.html
    - fi-rkl-11600:       [SKIP][563] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][564] ([fdo#109315]) +2 similar issues
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@prime_vgem@basic-read.html
   [56

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/index.html

--===============2916874344390284752==
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
<tr><td><b>Series:</b></td><td>drm/i915: Expand force_probe to block probe of devices as well.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112292/">https://patchwork.freedesktop.org/series/112292/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12528 -&gt; Patchwork_112292v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112292v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112292v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/index.html</p>
<h2>Participating hosts (40 -&gt; 44)</h2>
<p>Additional (4): fi-kbl-soraka fi-bsw-kefka bat-dg2-9 bat-atsm-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112292v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@i915_module_load@load.html">FAIL</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_module_load@load.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@i915_selftest@live@client.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bwr-2160/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@i915_selftest@live@coherency.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@coherency.html">FAIL</a> +28 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-pnv-d510/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@i915_selftest@live@evict.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_selftest@live@gem.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@i915_selftest@live@gt_engines.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@i915_selftest@live@gt_lrc.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-kefka/igt@i915_selftest@live@guc.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_selftest@live@guc.html">FAIL</a> +36 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@perf.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@i915_selftest@live@requests.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@i915_selftest@live@reset.html">FAIL</a> +36 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_selftest@live@reset.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">FAIL</a> +36 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_selftest@live@ring_submission.html">FAIL</a> +36 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_selftest@live@vma.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@i915_selftest@live@vma.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@i915_selftest@live@vma.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#6899]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> ([i915#5334]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> ([i915#5591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#4785]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@core_hotunplug@unbind-rebind.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-7/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@gem_lmem_swapping@basic.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@i915_module_load@reload.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@i915_selftest@live@client.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@i915_selftest@live@client.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-jsl-3/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@i915_selftest@live@coherency.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@i915_selftest@live@coherency.html">FAIL</a> +37 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">FAIL</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@i915_selftest@live@gt_lrc.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#4258]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html">FAIL</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@i915_selftest@live@perf.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-kbl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-kbl-2/igt@i915_selftest@live@requests.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> ([i915#4983]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@reset.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@i915_selftest@live@ring_submission.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-atsm-1/igt@i915_selftest@live@slpc.html">FAIL</a> +37 similar issues</p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> ([i915#6997]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@i915_selftest@live@slpc.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html">FAIL</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ehl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_addfb_basic@bad-pitch-63.html">SKIP</a> +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-9/igt@kms_addfb_basic@invalid-set-prop-any.html">SKIP</a> +64 similar issues</p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_addfb_basic@invalid-set-prop-any.html">SKIP</a> +30 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_addfb_basic@unused-offsets.html">SKIP</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> +8 similar issues</p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_chamelium@vga-edid-read.html">SKIP</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>
<p>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> +7 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> +12 similar issues</p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +5 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ehl-2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck.html">SKIP</a> +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>{bat-dg2-11}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>
<p>{bat-adlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> +13 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-jsl-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> +6 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112292v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@core_auth@basic-auth.html">SKIP</a> ([i915#2575]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">SKIP</a> ([fdo#109271]) +140 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@debugfs_test@read_all_entries.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +45 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@debugfs_test@read_all_entries.html">SKIP</a> ([fdo#109271]) +98 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@gem_basic@create-close.html">SKIP</a> ([fdo#109271]) +92 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@gem_basic@create-close.html">SKIP</a> ([fdo#109271]) +88 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@gem_busy@busy.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@gem_ctx_create@basic-files.html">SKIP</a> ([fdo#109271]) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@gem_exec_basic@basic.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_exec_fence@basic-await.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([i915#2575]) +35 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([fdo#109271]) +11 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([fdo#109271]) +9 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@gem_exec_fence@basic-wait.html">SKIP</a> ([fdo#109271]) +11 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@gem_exec_fence@nb-await.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_exec_parallel@engines.html">SKIP</a> ([fdo#109315]) +12 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@gem_exec_parallel@engines.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_exec_parallel@engines.html">SKIP</a> ([i915#2575]) +25 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_exec_parallel@engines.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html">SKIP</a> ([fdo#109315]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_flink_basic@bad-flink.html">SKIP</a> ([fdo#109271]) +91 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@gem_flink_basic@bad-flink.html">SKIP</a> ([fdo#109271]) +89 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@gem_flink_basic@bad-open.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@gem_flink_basic@bad-open.html">SKIP</a> ([fdo#109271]) +92 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bwr-2160/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@gem_flink_basic@basic.html">SKIP</a> ([fdo#109271]) +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#5775]) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#5775]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_render_linear_blits@basic.html">SKIP</a> ([fdo#109315]) +43 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_render_linear_blits@basic.html">SKIP</a> ([fdo#109315]) +51 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_softpin@allocator-basic.html">SKIP</a> ([fdo#109315]) +43 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_softpin@allocator-basic.html">SKIP</a> ([i915#2575]) +70 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_wait@wait.html">SKIP</a> ([fdo#109315]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_getparams_basic@basic-subslice-total.html">SKIP</a> ([i915#2575]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#5174])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_pm_rpm@basic-rte.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#5174]) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">SKIP</a> ([i915#5174])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">FAIL</a> ([i915#7511])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_addfb_basic@addfb25-bad-modifier.html">SKIP</a> ([fdo#109271]) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-0:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_addfb_basic@bad-pitch-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_addfb_basic@bad-pitch-0.html">SKIP</a> ([i915#2575]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_addfb_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_addfb_basic@basic.html">SKIP</a> ([fdo#109271]) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([fdo#109271]) +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#2575]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_addfb_basic@invalid-get-prop-any.html">SKIP</a> ([fdo#109271]) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> ([fdo#109271]) +94 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> ([i915#2575]) +77 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@kms_addfb_basic@invalid-set-prop.html">SKIP</a> ([fdo#109271]) +92 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_addfb_basic@size-max.html">SKIP</a> ([i915#2575]) +87 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@kms_addfb_basic@size-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_addfb_basic@size-max.html">SKIP</a> ([fdo#109271]) +95 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@kms_addfb_basic@small-bo.html">SKIP</a> ([fdo#109271]) +98 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_addfb_basic@too-high.html">SKIP</a> ([fdo#109271]) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@kms_busy@basic.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> ([fdo#109271]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor.html">SKIP</a> ([i915#2575]) +5 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor.html">SKIP</a> ([i915#2575]) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([i915#2575]) +18 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bwr-2160/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([fdo#109271]) +9 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-blb-e6850/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> ([fdo#109271]) +15 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> ([i915#2575]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([i915#2575]) +25 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +26 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> ([i915#6914]) +2 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> ([fdo#109271]) +23 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> ([i915#6914]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> ([fdo#109271]) +14 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> ([fdo#109271]) +25 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-bad:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@prime_self_import@basic-llseek-bad.html">SKIP</a> ([fdo#109271]) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> ([fdo#109271]) +144 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-pnv-d510/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> ([fdo#109271]) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109271]) +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> ([i915#4991])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#4817]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#7456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#7456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#7456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#7456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#7456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#5775]) +3 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6700k2/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([i915#5775]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#2575]) +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html">SKIP</a> ([i915#2575]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575]) +1 similar issue</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@gem_tiled_pread_basic.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> ([i915#7077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@i915_pm_rpm@basic-rte.html">SKIP</a> ([i915#5174])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@i915_pm_rps@basic-api.html">SKIP</a> ([fdo#109315])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#2575]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#2575]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271]) +7 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8109u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([i915#2575]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-n3050/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-n3050/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> ([i915#2575]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-cfl-8700k/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([i915#2575]) +8 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([i915#2575]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-elk-e7500/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-elk-e7500/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([i915#2575]) +7 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([i915#2575]) +8 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([i915#2575]) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-kbl-8809g/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-kbl-8809g/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#4093]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#2575]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_psr@cursor_plane_move.html">SKIP</a> ([i915#2575]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> ([fdo#109315]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#1072] / [i915#4078]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#2575]) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([fdo#109315]) +3 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#1072] / [i915#4078]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([i915#2575]) +3 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([fdo#109271] / [i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> ([fdo#109271] / [fdo#109315]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-adl-ddr5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#4579]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#2575])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#2575]) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/fi-rkl-guc/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([fdo#109315]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#2575]) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#2575]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/bat-dg1-6/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v1/bat-dg1-6/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#2575]) +3 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12528/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708]) -&gt; [SKIP][564] ([fdo#109315]) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<p>[56</p>

</body>
</html>

--===============2916874344390284752==--
