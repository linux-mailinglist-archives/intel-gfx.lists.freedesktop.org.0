Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97069194A7E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 22:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634156E34C;
	Thu, 26 Mar 2020 21:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFFA36E34C;
 Thu, 26 Mar 2020 21:26:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8463A011B;
 Thu, 26 Mar 2020 21:26:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 26 Mar 2020 21:26:36 -0000
Message-ID: <158525799685.23001.18399684461711980772@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU0FH?=
 =?utf-8?q?V_support_for_Gen12+_=28rev3=29?=
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

Series: SAGV support for Gen12+ (rev3)
URL   : https://patchwork.freedesktop.org/series/75129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8195 -> Patchwork_17103
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/index.html

Known issues
------------

  Here are the changes found in Patchwork_17103 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#103927])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [DMESG-FAIL][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][5] ([fdo#108569]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569


Participating hosts (49 -> 37)
------------------------------

  Missing    (12): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17103

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17103: 17b1ab4ef65f19f4159f1dcf8939b989d1cf83b9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

17b1ab4ef65f drm/i915: Enable SAGV support for Gen12
9ab9d139acd7 drm/i915: Restrict qgv points which don't have enough bandwidth.
7ddef9fc5a42 drm/i915: Rename bw_state to new_bw_state
5ac95b3960a7 drm/i915: Added required new PCode commands
37f392cf14b8 drm/i915: Add proper SAGV support for TGL+
345239c1e284 drm/i915: Extract gen specific functions from intel_can_enable_sagv
9cd6396bdbd9 drm/i915: Add intel_atomic_get_bw_*_state helpers
b76321aa6824 drm/i915: Introduce skl_plane_wm_level accessor.
930754956920 drm/i915: Eliminate magic numbers "0" and "1" from color plane
ad8810ff373a drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17103/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
