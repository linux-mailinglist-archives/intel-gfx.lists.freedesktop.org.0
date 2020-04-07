Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 172C31A0E9B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 15:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E23D6E881;
	Tue,  7 Apr 2020 13:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E49F66E881;
 Tue,  7 Apr 2020 13:47:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE0A7A0BC6;
 Tue,  7 Apr 2020 13:47:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 07 Apr 2020 13:47:28 -0000
Message-ID: <158626724887.26328.2375559222095037892@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev8=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev8)
URL   : https://patchwork.freedesktop.org/series/74739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8264 -> Patchwork_17235
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/index.html

Known issues
------------

  Here are the changes found in Patchwork_17235 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1581])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-u2/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/fi-icl-u2/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][3] ([i915#1580]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][5] ([i915#1158]) -> [INCOMPLETE][6] ([i915#460])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17235

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17235: 20fd5967e21bef1bd29fd91bd13a058a31876063 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

20fd5967e21b drm/i915: Remove unneeded hack now for CDCLK
d94782227906 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
460156f3ab0b drm/i915: Introduce for_each_dbuf_slice_in_mask macro
9fe9c8a12e97 drm/i915: Force recalculate min_cdclk if planes config changed
a2d97b3a68fc drm/i915: Decouple cdclk calculation from modeset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
