Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8281B5833
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 11:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE996E4A5;
	Thu, 23 Apr 2020 09:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 805BD6E4A5;
 Thu, 23 Apr 2020 09:30:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79DFFA3ECB;
 Thu, 23 Apr 2020 09:30:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 23 Apr 2020 09:30:50 -0000
Message-ID: <158763425046.26749.16636448330081396287@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev27=29?=
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

Series: SAGV support for Gen12+ (rev27)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8350 -> Patchwork_17434
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17434/index.html

Known issues
------------

  Here are the changes found in Patchwork_17434 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62]) -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17434/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (48 -> 44)
------------------------------

  Additional (1): fi-icl-dsi 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8350 -> Patchwork_17434

  CI-20190529: 20190529
  CI_DRM_8350: 018bab6d1c4ac37bff9306384383fab59750e140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5606: 678afb3954bec6227c8762756a0ad6d9946d49b2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17434: f1e652ab88416c2f154b474bce71a23d4e3ae3ee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1e652ab8841 drm/i915: Enable SAGV support for Gen12
c8050b966b6e drm/i915: Restrict qgv points which don't have enough bandwidth.
a7b5caac439f drm/i915: Rename bw_state to new_bw_state
2eadba427c66 drm/i915: Added required new PCode commands
44aab96e8376 drm/i915: Add TGL+ SAGV support
38d87c8a7846 drm/i915: Separate icl and skl SAGV checking
b0cc5c6eec63 drm/i915: Track active_pipes in bw_state
75ab029a2591 drm/i915: Use bw state for per crtc SAGV evaluation
f963df93cc7d drm/i915: Introduce skl_plane_wm_level accessor.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17434/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
