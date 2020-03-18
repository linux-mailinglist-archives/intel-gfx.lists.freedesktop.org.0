Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF76318A928
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 00:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8116E993;
	Wed, 18 Mar 2020 23:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D58646E993;
 Wed, 18 Mar 2020 23:22:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF4D2A47EB;
 Wed, 18 Mar 2020 23:22:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 23:22:31 -0000
Message-ID: <158457375182.25100.7163423627372879660@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305174538.16234-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200305174538.16234-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_crtc_nv12_etc=2E_plane_bitmasks_for_DPMS_off_=28re?=
 =?utf-8?b?djMp?=
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

Series: drm/i915: Fix crtc nv12 etc. plane bitmasks for DPMS off (rev3)
URL   : https://patchwork.freedesktop.org/series/74346/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8154 -> Patchwork_17016
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17016/index.html

Known issues
------------

  Here are the changes found in Patchwork_17016 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17016/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - {fi-tgl-dsi}:       [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-dsi/igt@i915_selftest@live@active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17016/fi-tgl-dsi/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - {fi-kbl-7560u}:     [INCOMPLETE][5] ([fdo#112259] / [i915#1430] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7560u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17016/fi-kbl-7560u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 41)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17016

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17016: 8e25aebc066eeff2e34cde892ae2798f236662cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e25aebc066e drm/i915: Fix crtc nv12 etc. plane bitmasks for DPMS off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17016/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
