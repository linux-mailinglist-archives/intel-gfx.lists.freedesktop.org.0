Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C41C09E6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 00:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810486E279;
	Thu, 30 Apr 2020 22:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55D876EA1C;
 Thu, 30 Apr 2020 22:07:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FAEBA47DB;
 Thu, 30 Apr 2020 22:07:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 30 Apr 2020 22:07:39 -0000
Message-ID: <158828445932.31919.5878670667639835954@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev32=29?=
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

Series: SAGV support for Gen12+ (rev32)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8403 -> Patchwork_17531
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/index.html

Known issues
------------

  Here are the changes found in Patchwork_17531 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8403 -> Patchwork_17531

  CI-20190529: 20190529
  CI_DRM_8403: 09978e99929f6e5acfe1e959f6499a134f210887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5619: 94de923ca8d4cc8f532b8062d87aaad9da6ef956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17531: d476c016bc161fca38b14532185fe96d7cab1e04 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d476c016bc16 drm/i915: Enable SAGV support for Gen12
d4948b0fe076 drm/i915: Restrict qgv points which don't have enough bandwidth.
41c561f0dc26 drm/i915: Rename bw_state to new_bw_state
ce75f7bbf7e7 drm/i915: Added required new PCode commands
f2b4f78b7f22 drm/i915: Add TGL+ SAGV support
0cbc47e3c84c drm/i915: Separate icl and skl SAGV checking
c9d261232770 drm/i915: Track active_pipes in bw_state
9942ef866255 drm/i915: Use bw state for per crtc SAGV evaluation
bca922b59afd drm/i915: Introduce skl_plane_wm_level accessor.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17531/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
