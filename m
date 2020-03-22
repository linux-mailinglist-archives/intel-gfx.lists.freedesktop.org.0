Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 156A518EBBD
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 20:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FC289EEB;
	Sun, 22 Mar 2020 19:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5193689EB7;
 Sun, 22 Mar 2020 19:06:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47AE1A0088;
 Sun, 22 Mar 2020 19:06:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 19:06:05 -0000
Message-ID: <158490396526.23727.16908827451220215146@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322181946.22059-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322181946.22059-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_timeline-=3Ecacheline_as_destroyed_after_rcu_g?=
 =?utf-8?q?race_period?=
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

Series: drm/i915/gt: Mark timeline->cacheline as destroyed after rcu grace period
URL   : https://patchwork.freedesktop.org/series/74950/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8170 -> Patchwork_17048
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/index.html

Known issues
------------

  Here are the changes found in Patchwork_17048 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#1430] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-icl-y/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [INCOMPLETE][11] ([i915#283] / [i915#656]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (42 -> 43)
------------------------------

  Additional (6): fi-kbl-7560u fi-bsw-n3050 fi-hsw-peppy fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8170 -> Patchwork_17048

  CI-20190529: 20190529
  CI_DRM_8170: e464286ae9b7c18b0fab5fc638dff07c8afc5999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17048: d34794b80570ca685e79bfcd0ee3edb8648123c9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d34794b80570 drm/i915/gt: Mark timeline->cacheline as destroyed after rcu grace period

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17048/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
