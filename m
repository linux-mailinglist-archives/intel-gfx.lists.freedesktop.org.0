Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8568F17C961
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 01:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB656EDB3;
	Sat,  7 Mar 2020 00:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 191466E433;
 Sat,  7 Mar 2020 00:04:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 118E1A00C7;
 Sat,  7 Mar 2020 00:04:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 07 Mar 2020 00:04:54 -0000
Message-ID: <158353949403.20976.5757958729060029625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Close_race_between_cacheline=5Fretire_and_free?=
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

Series: drm/i915/gt: Close race between cacheline_retire and free
URL   : https://patchwork.freedesktop.org/series/74397/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8087 -> Patchwork_16865
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/index.html

Known issues
------------

  Here are the changes found in Patchwork_16865 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][3] ([CI#94]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * {igt@i915_selftest@live@ring_submission}:
    - fi-hsw-peppy:       [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html

  * igt@prime_vgem@basic-sync-default:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-tgl-y/igt@prime_vgem@basic-sync-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/fi-tgl-y/igt@prime_vgem@basic-sync-default.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [TIMEOUT][9] -> [DMESG-WARN][10] ([i915#289])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8087/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (49 -> 40)
------------------------------

  Additional (1): fi-icl-y 
  Missing    (10): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8087 -> Patchwork_16865

  CI-20190529: 20190529
  CI_DRM_8087: 2eecd3619f1f227c890414a0730a723f1c5a3a60 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16865: bdc6f49063104b1a5038deb2bc562c5bacdef941 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bdc6f4906310 drm/i915/gt: Close race between cacheline_retire and free

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16865/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
