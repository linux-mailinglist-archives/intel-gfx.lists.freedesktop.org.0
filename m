Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91944A01671
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2025 19:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54D810E486;
	Sat,  4 Jan 2025 18:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFFE10E486;
 Sat,  4 Jan 2025 18:49:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/cmtg=3A_Disable_?=
 =?utf-8?q?the_CMTG_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 04 Jan 2025 18:49:35 -0000
Message-ID: <173601657524.3237387.8638813015000137582@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250104172937.64015-1-gustavo.sousa@intel.com>
In-Reply-To: <20250104172937.64015-1-gustavo.sousa@intel.com>
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

Series: drm/i915/cmtg: Disable the CMTG (rev4)
URL   : https://patchwork.freedesktop.org/series/142947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15903 -> Patchwork_142947v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_142947v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][1] -> [FAIL][2] ([i915#13401])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [DMESG-FAIL][4] ([i915#13393]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [PASS][5] -> [DMESG-WARN][6] ([i915#12253])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][7] -> [SKIP][8] ([i915#9197]) +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][9] ([i915#13393]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - {bat-arls-6}:       [DMESG-FAIL][11] ([i915#13393]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15903/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15903 -> Patchwork_142947v4

  CI-20190529: 20190529
  CI_DRM_15903: 3491399dc8f0c0c3bcec5316c66e60f5f44e1f10 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8174: d2004b0623dbccd08502525849b4eef881aa199e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142947v4: 3491399dc8f0c0c3bcec5316c66e60f5f44e1f10 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v4/index.html
