Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8C01A83D9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 17:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091176E22C;
	Tue, 14 Apr 2020 15:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DF0C6E22C;
 Tue, 14 Apr 2020 15:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A7D8A3ECB;
 Tue, 14 Apr 2020 15:55:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Tue, 14 Apr 2020 15:55:36 -0000
Message-ID: <158687973621.30379.18174507010680430330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200413063420.20668-1-animesh.manna@intel.com>
In-Reply-To: <20200413063420.20668-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer_=28rev?=
 =?utf-8?q?3=29?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer (rev3)
URL   : https://patchwork.freedesktop.org/series/73036/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8295 -> Patchwork_17284
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17284/index.html

Known issues
------------

  Here are the changes found in Patchwork_17284 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-FAIL][2] ([i915#666])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/fi-bxt-dsi/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17284/fi-bxt-dsi/igt@i915_selftest@live@active.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#34])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17284/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [INCOMPLETE][5] ([i915#69]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8295/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17284/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69


Participating hosts (49 -> 44)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8295 -> Patchwork_17284

  CI-20190529: 20190529
  CI_DRM_8295: 4cb6dbe0a641129fd07ad1fbfcd6e7b4f03ec5c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17284: 5cb8627a887d840870f43c69355eea329635b677 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5cb8627a887d drm/i915/dsb: Pre allocate and late cleanup of cmd buffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17284/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
