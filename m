Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4072718E930
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 14:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8848C6E0AC;
	Sun, 22 Mar 2020 13:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 798606E0AB;
 Sun, 22 Mar 2020 13:42:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 472A6A008A;
 Sun, 22 Mar 2020 13:42:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 13:42:03 -0000
Message-ID: <158488452326.23729.11068377167775137031@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322123241.17694-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322123241.17694-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Use_the_correct_err=5Funlock_unwind_path_for_a_clos?=
 =?utf-8?q?ed_context?=
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

Series: drm/i915/gt: Use the correct err_unlock unwind path for a closed context
URL   : https://patchwork.freedesktop.org/series/74943/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8169 -> Patchwork_17044
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17044:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-tgl-u/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17044 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4] ([i915#151])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#1430] / [i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-elk-e7500:       [PASS][7] -> [FAIL][8] ([i915#34])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][9] ([i915#730] / [i915#933]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([i915#323]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8169/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (42 -> 37)
------------------------------

  Additional (5): fi-ehl-1 fi-hsw-peppy fi-cfl-8109u fi-bsw-kefka fi-skl-lmem 
  Missing    (10): fi-bdw-samus fi-kbl-7560u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-gdg-551 fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8169 -> Patchwork_17044

  CI-20190529: 20190529
  CI_DRM_8169: f8f703bc3068d0c29abfeb3288d3f58381e417c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17044: 3a2d994c819482eb125453e5418cbd19b034ef38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3a2d994c8194 drm/i915/gt: Use the correct err_unlock unwind path for a closed context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17044/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
