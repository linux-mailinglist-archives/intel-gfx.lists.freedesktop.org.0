Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03FA19F8A4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA6B6E40D;
	Mon,  6 Apr 2020 15:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E14A6E409;
 Mon,  6 Apr 2020 15:14:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16D94A0BC6;
 Mon,  6 Apr 2020 15:14:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 06 Apr 2020 15:14:39 -0000
Message-ID: <158618607906.4194.1859567728910627528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?fer_drm=5FWARN*_over_WARN*_=28rev2=29?=
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

Series: Prefer drm_WARN* over WARN* (rev2)
URL   : https://patchwork.freedesktop.org/series/75543/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8260 -> Patchwork_17221
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17221/index.html

Known issues
------------

  Here are the changes found in Patchwork_17221 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1581])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-icl-guc/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17221/fi-icl-guc/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][3] -> [SKIP][4] ([fdo#109271]) +24 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17221/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [DMESG-WARN][5] ([i915#1612]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17221/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#1612]: https://gitlab.freedesktop.org/drm/intel/issues/1612


Participating hosts (53 -> 45)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8260 -> Patchwork_17221

  CI-20190529: 20190529
  CI_DRM_8260: fa5519e01f097b7f69259be38606ff5f1bc3cc6c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5572: 6c124b5c8501d900966c033ac86c3dc55c16a2da @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17221: 0fd60ba248422a0d5663452133f23baad2764749 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0fd60ba24842 drm/i915/runtime_pm: Prefer drm_WARN* over WARN*
5597bb572e9b drm/i915/pm: Prefer drm_WARN_ON over WARN_ON
7de0dff58893 drm/i915/pmu: Prefer drm_WARN_ON over WARN_ON
3b4763bebc0e drm/i915/i915_drv: Prefer drm_WARN_ON over WARN_ON
ae80b0409828 drm/i915/gem: Prefer drm_WARN* over WARN*
cd2d48c2fb37 drm/i915/display/vlv_dsi: Prefer drm_WARN_ON over WARN_ON
0856fae10111 drm/i915/display/tc: Prefer drm_WARN_ON over WARN_ON
b9632947474b drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
da0de795981b drm/i915/display/overlay: Prefer drm_WARN_ON over WARN_ON
e5fb265bcdfc drm/i915/display/global_state: Prefer drm_WARN* over WARN*
8ec55548bc42 drm/i915/display/frontbuffer: Prefer drm_WARN_ON over WARN_ON
22c03725bfb6 drm/i915/display/dpll_mgr: Prefer drm_WARN_ON over WARN_ON
81a6c4600fea drm/i915/display/dp: Prefer drm_WARN* over WARN*
1703f9a2f458 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
7154962ac9f6 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
04cffffd23fe drm/i915/display/ddi: Prefer drm_WARN* over WARN*
5a021e68d20b drm/i915/display/atomic_plane: Prefer drm_WARN_ON over WARN_ON
fd886b340869 drm/i915/display/icl_dsi: Prefer drm_WARN_ON over WARN_ON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17221/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
