Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857B1182625
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 01:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDB86E87A;
	Thu, 12 Mar 2020 00:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D29816E231;
 Thu, 12 Mar 2020 00:16:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C87B4A363B;
 Thu, 12 Mar 2020 00:16:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 00:16:40 -0000
Message-ID: <158397220079.4947.17710657708986671951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311160739.21475-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311160739.21475-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_cached_obj-=3Ebind=5Fcount?=
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

Series: drm/i915/gem: Drop cached obj->bind_count
URL   : https://patchwork.freedesktop.org/series/74593/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8124 -> Patchwork_16935
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16935 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16935, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16935:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16935 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#92]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-6770hq/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [PASS][5] -> [SKIP][6] ([fdo#109271]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-y/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6770hq:      [PASS][9] -> [DMESG-FAIL][10] ([i915#188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][11] ([i915#877]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][13] ([i915#217]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (46 -> 33)
------------------------------

  Additional (1): fi-gdg-551 
  Missing    (14): fi-bdw-5557u fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-elk-e7500 fi-skl-lmem fi-byt-clapper fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8124 -> Patchwork_16935

  CI-20190529: 20190529
  CI_DRM_8124: b720e4b68d27d8d72bbe56abfcdc91ef2bebc2c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16935: a6b8e6fc24fe8e1c50ef204cb2f95e218e6f7bf2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a6b8e6fc24fe drm/i915/gem: Drop cached obj->bind_count

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16935/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
