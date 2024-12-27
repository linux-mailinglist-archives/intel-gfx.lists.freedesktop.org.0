Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6709FD855
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2024 00:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD51F10E2C0;
	Fri, 27 Dec 2024 23:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D621C10E2C0;
 Fri, 27 Dec 2024 23:47:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/uc=3A_Include_re?=
 =?utf-8?q?quested_frequency_in_slow_firmware_load_messages_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2024 23:47:17 -0000
Message-ID: <173534323788.4021711.10564253827651611021@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241221014329.4048408-1-John.C.Harrison@Intel.com>
In-Reply-To: <20241221014329.4048408-1-John.C.Harrison@Intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/uc: Include requested frequency in slow firmware load messages (rev2)
URL   : https://patchwork.freedesktop.org/series/142901/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15892 -> Patchwork_142901v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142901v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142901v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-twl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142901v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_142901v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@fbdev@info:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([i915#1849])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-bsw-nick/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] +42 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][7] -> [FAIL][8] ([i915#13401])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][9] -> [DMESG-FAIL][10] ([i915#13393]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][11] -> [DMESG-WARN][12] ([i915#12253])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][15] +31 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [DMESG-WARN][16] ([i915#13400]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [ABORT][18] ([i915#13399]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adlp-9/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-adlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][20] ([i915#13393]) -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][22] ([i915#13169]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15892 -> Patchwork_142901v2

  CI-20190529: 20190529
  CI_DRM_15892: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142901v2: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142901v2/index.html
