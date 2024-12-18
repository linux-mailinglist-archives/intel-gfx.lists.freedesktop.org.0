Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F409F6023
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 09:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9341B10E434;
	Wed, 18 Dec 2024 08:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE7A10E434;
 Wed, 18 Dec 2024 08:31:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/ci=3A_uprev_IGT_=28re?=
 =?utf-8?q?v3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2024 08:31:59 -0000
Message-ID: <173451071996.4180241.17611257239826455271@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217160655.2371138-1-vignesh.raman@collabora.com>
In-Reply-To: <20241217160655.2371138-1-vignesh.raman@collabora.com>
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

Series: drm/ci: uprev IGT (rev3)
URL   : https://patchwork.freedesktop.org/series/135749/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15861 -> Patchwork_135749v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_135749v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][1] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][2] -> [FAIL][3] ([i915#12903])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][4] -> [ABORT][5] ([i915#12061]) +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-8/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-13:         [PASS][6] -> [FAIL][7] ([i915#12986])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][8] -> [SKIP][9] ([i915#9197]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][10] +31 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [INCOMPLETE][11] ([i915#13050]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6600u:       [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [ABORT][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][17] ([i915#13169]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15861/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12986]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12986
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15861 -> Patchwork_135749v3

  CI-20190529: 20190529
  CI_DRM_15861: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8160: 4f10d98c56498ab29445ae0b06aab6f5a8ec2eca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135749v3: 561947cbde53a2d22434977709610f42e4f0229b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135749v3/index.html
