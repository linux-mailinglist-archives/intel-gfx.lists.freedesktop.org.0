Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0BC1D7D60
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 17:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A5C6E213;
	Mon, 18 May 2020 15:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C09489E43;
 Mon, 18 May 2020 15:51:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06736A0099;
 Mon, 18 May 2020 15:51:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Mon, 18 May 2020 15:51:57 -0000
Message-ID: <158981711799.31686.16461252099386550222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518121256.14354-1-animesh.manna@intel.com>
In-Reply-To: <20200518121256.14354-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer_=28rev?=
 =?utf-8?q?9=29?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer (rev9)
URL   : https://patchwork.freedesktop.org/series/73036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8494 -> Patchwork_17692
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17692 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17692, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17692:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-icl-y:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-y/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-u2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-icl-u2/boot.html
    - fi-icl-dsi:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-dsi/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-icl-dsi/boot.html
    - fi-icl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-icl-guc/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-icl-guc/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-ehl-1}:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-ehl-1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-ehl-1/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_17692 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hugepages:
    - fi-bwr-2160:        [PASS][11] -> [INCOMPLETE][12] ([i915#489])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bwr-2160/igt@i915_selftest@live@hugepages.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-bwr-2160/igt@i915_selftest@live@hugepages.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-whl-u:           [INCOMPLETE][13] ([i915#656]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-whl-u/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/fi-whl-u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17692

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17692: 694f96b3dba2b289b03894cad2c6eb35d7c63dfb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

694f96b3dba2 drm/i915/dsb: Pre allocate and late cleanup of cmd buffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17692/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
