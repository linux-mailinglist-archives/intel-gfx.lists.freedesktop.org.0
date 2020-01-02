Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B632912E9C7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 19:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9446E124;
	Thu,  2 Jan 2020 18:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B71E26E0BE;
 Thu,  2 Jan 2020 18:13:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE818A0099;
 Thu,  2 Jan 2020 18:13:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 18:13:01 -0000
Message-ID: <157798878168.8913.7550528967458269800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Support_discontiguous_lmem_object_maps_=28rev2=29?=
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

Series: drm/i915/gem: Support discontiguous lmem object maps (rev2)
URL   : https://patchwork.freedesktop.org/series/71557/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7667 -> Patchwork_15975
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15975 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15975, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15975:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_hugepages:
    - fi-skl-lmem:        NOTRUN -> [DMESG-FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-skl-lmem/igt@i915_selftest@live_hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_15975 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][2] -> [INCOMPLETE][3] ([i915#505])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][4] -> [DMESG-FAIL][5] ([i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][6] -> [DMESG-FAIL][7] ([i915#419])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_reset:
    - fi-cfl-guc:         [PASS][8] -> [DMESG-FAIL][9] ([i915#889]) +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-cfl-guc/igt@i915_selftest@live_reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-cfl-guc/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_workarounds:
    - fi-cfl-guc:         [PASS][10] -> [DMESG-WARN][11] ([i915#889]) +23 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-cfl-guc/igt@i915_selftest@live_workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-cfl-guc/igt@i915_selftest@live_workarounds.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][12] ([i915#671]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_workarounds:
    - fi-bwr-2160:        [FAIL][14] ([i915#878]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bwr-2160/igt@i915_selftest@live_workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-bwr-2160/igt@i915_selftest@live_workarounds.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [DMESG-WARN][16] ([i915#889]) -> [INCOMPLETE][17] ([fdo#103927])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 46)
------------------------------

  Additional (6): fi-bdw-5557u fi-skl-6770hq fi-kbl-7500u fi-ivb-3770 fi-blb-e6850 fi-skl-6600u 
  Missing    (6): fi-hsw-4770r fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15975

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15975: 1d5e8b6368cf6e9fca9936e437487ab42ea8439b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1d5e8b6368cf drm/i915/gem: Support discontiguous lmem object maps

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15975/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
