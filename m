Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7612EA09
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 19:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9D76E090;
	Thu,  2 Jan 2020 18:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 473136E083;
 Thu,  2 Jan 2020 18:45:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D408A432F;
 Thu,  2 Jan 2020 18:45:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 18:45:36 -0000
Message-ID: <157799073622.8910.5231072217101348788@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Include_a_bunch_more?=
 =?utf-8?q?_rcs_image_state?=
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

Series: series starting with [1/5] drm/i915/gt: Include a bunch more rcs image state
URL   : https://patchwork.freedesktop.org/series/71565/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7667 -> Patchwork_15976
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/index.html

Known issues
------------

  Here are the changes found in Patchwork_15976 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-byt-j1900/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-hsw-4770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][7] ([i915#671]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bxt-dsi:         [DMESG-FAIL][9] ([i915#889]) -> [PASS][10] +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][11] ([i915#889]) -> [PASS][12] +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_workarounds:
    - fi-bwr-2160:        [FAIL][13] ([i915#878]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bwr-2160/igt@i915_selftest@live_workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-bwr-2160/igt@i915_selftest@live_workarounds.html

  * igt@kms_busy@basic-flip-pipe-a:
    - {fi-tgl-guc}:       [DMESG-WARN][15] ([i915#402]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/fi-tgl-guc/igt@kms_busy@basic-flip-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 45)
------------------------------

  Additional (5): fi-bdw-5557u fi-skl-6770hq fi-kbl-7500u fi-ivb-3770 fi-blb-e6850 
  Missing    (6): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15976

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15976: 0c77ece7c3e9c3078d5347bfd87b06045a20c904 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c77ece7c3e9 drm/i915/gt: Always poison the kernel_context image before unparking
3af8edaa285a drm/i915/gt: Discard stale context state from across idling
ed9d9bc9491f drm/i915/gt: Ignore stale context state upon resume
ad10e072d9a8 drm/i915/gt: Clear LRC image inline
45be0b74860c drm/i915/gt: Include a bunch more rcs image state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
