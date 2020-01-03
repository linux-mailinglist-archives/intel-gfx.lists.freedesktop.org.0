Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5486812F210
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 01:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4298C6E15F;
	Fri,  3 Jan 2020 00:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EBDD6E15E;
 Fri,  3 Jan 2020 00:17:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E6A3A0134;
 Fri,  3 Jan 2020 00:17:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 00:17:50 -0000
Message-ID: <157801067055.20613.5946560386092774169@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102231604.1669010-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102231604.1669010-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_ongoing_retires_during_wait=5Ffor=5Fidle_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/gt: Flush ongoing retires during wait_for_idle (rev2)
URL   : https://patchwork.freedesktop.org/series/71575/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7668 -> Patchwork_15982
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/index.html

Known issues
------------

  Here are the changes found in Patchwork_15982 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4] ([i915#505])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#656])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#553] / [i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem:
    - fi-bdw-5557u:       [FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-bdw-5557u/igt@i915_selftest@live_gem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-bdw-5557u/igt@i915_selftest@live_gem.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][15] ([fdo#109635]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (48 -> 37)
------------------------------

  Additional (5): fi-skl-guc fi-bwr-2160 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 
  Missing    (16): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-apl-guc fi-snb-2520m fi-ctg-p8600 fi-kbl-x1275 fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-bdw-samus fi-byt-clapper fi-kbl-r fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7668 -> Patchwork_15982

  CI-20190529: 20190529
  CI_DRM_7668: e63e1b81764ac9d3edbf178821a6cbbc8d7eab9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15982: 2d91290589a7b59496d0936d861e89f068c6f986 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d91290589a7 drm/i915/gt: Flush ongoing retires during wait_for_idle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15982/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
