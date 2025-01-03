Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB03CA0065D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 10:00:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB35310E6FA;
	Fri,  3 Jan 2025 09:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD80210E0E5;
 Fri,  3 Jan 2025 09:00:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Prefer_IS?=
 =?utf-8?q?=5FENABLED=28=29_instead_of_defined=28=29_on_config_option_=28rev?=
 =?utf-8?q?2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jan 2025 09:00:49 -0000
Message-ID: <173589484971.2502919.14626517436521159946@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250103062651.798249-1-nitin.r.gote@intel.com>
In-Reply-To: <20250103062651.798249-1-nitin.r.gote@intel.com>
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

Series: drm/i915/gt: Prefer IS_ENABLED() instead of defined() on config option (rev2)
URL   : https://patchwork.freedesktop.org/series/143083/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15896 -> Patchwork_143083v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-snb-2520m fi-elk-e7500 

Known issues
------------

  Here are the changes found in Patchwork_143083v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][1] -> [FAIL][2] ([i915#13401])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][3] -> [SKIP][4] ([i915#9197]) +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][5] ([i915#13393]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-mtlp-8/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-2:          [ABORT][7] ([i915#12919] / [i915#13397]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-twl-2/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [ABORT][9] ([i915#12919]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][11] ([i915#13393]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-mtlp-9}:       [FAIL][13] ([i915#11989]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15896/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13397]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13397
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15896 -> Patchwork_143083v2

  CI-20190529: 20190529
  CI_DRM_15896: 048d83e7f9dae81c058d31c371634c1c317b3013 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8174: d2004b0623dbccd08502525849b4eef881aa199e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143083v2: 048d83e7f9dae81c058d31c371634c1c317b3013 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143083v2/index.html
