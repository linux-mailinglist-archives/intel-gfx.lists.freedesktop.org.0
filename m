Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291AC164FEA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7405C6E856;
	Wed, 19 Feb 2020 20:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABF836E856;
 Wed, 19 Feb 2020 20:32:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1DDBA0087;
 Wed, 19 Feb 2020 20:32:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 19 Feb 2020 20:32:18 -0000
Message-ID: <158214433864.21061.12998529309514720997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219125910.89147-1-christian.koenig@amd.com>
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_dma-buf=3A_add_dynamic_DMA-buf_hand?=
 =?utf-8?q?ling_v15?=
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

Series: series starting with [1/7] dma-buf: add dynamic DMA-buf handling v15
URL   : https://patchwork.freedesktop.org/series/73665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16629
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16629 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16629, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16629:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bwr-2160:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bwr-2160/igt@i915_selftest@live_gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/fi-bwr-2160/igt@i915_selftest@live_gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_16629 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [TIMEOUT][5] ([fdo#112271] / [i915#690]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][7] ([i915#694]) -> [TIMEOUT][8] ([fdo#112271] / [i915#1084])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 39)
------------------------------

  Additional (1): fi-skl-6600u 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16629

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16629: ab64183605a5e61b02a5f12b58f30a899210ca26 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab64183605a5 dma-buf: make move_notify mandatory if importer_ops are provided
6a48a4358556 dma-buf: drop dynamic_mapping flag
2d6a296d68e9 drm/amdgpu: implement amdgpu_gem_prime_move_notify v2
4b91a843ed4c drm/amdgpu: add amdgpu_dma_buf_pin/unpin v2
745ab3baba32 drm/amdgpu: use allowed_domains for exported DMA-bufs
c574d9957711 drm/ttm: remove the backing store if no placement is given
49072c39a5b6 dma-buf: add dynamic DMA-buf handling v15

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16629/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
