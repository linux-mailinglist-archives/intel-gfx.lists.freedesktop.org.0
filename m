Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E36DB1B460B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 15:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B726E9F5;
	Wed, 22 Apr 2020 13:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6A516E9F5;
 Wed, 22 Apr 2020 13:14:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF4D9A00E6;
 Wed, 22 Apr 2020 13:14:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Wed, 22 Apr 2020 13:14:18 -0000
Message-ID: <158756125884.5177.15002824631056788444@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F1406680159_as_a_clk=5Fgating_workaround?=
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

Series: Apply Wa_1406680159 as a clk_gating workaround
URL   : https://patchwork.freedesktop.org/series/76334/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8348 -> Patchwork_17420
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/index.html

Known issues
------------

  Here are the changes found in Patchwork_17420 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - fi-snb-2600:        [PASS][1] -> [FAIL][2] ([i915#1763])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/fi-snb-2600/igt@i915_selftest@live@mman.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [FAIL][3] ([i915#1763]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-cml-u2 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5604 -> IGTPW_4238
  * Linux: CI_DRM_8348 -> Patchwork_17420

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4238: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4238/index.html
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17420: 678cbd8d33b743b7312a20652f15e8c368cbb917 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

678cbd8d33b7 drm/i915: Apply Wa_1406680159 as a clk_gating workaround

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
