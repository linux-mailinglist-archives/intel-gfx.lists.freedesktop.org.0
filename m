Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E04191710
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167BB6E178;
	Tue, 24 Mar 2020 16:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 823376E174;
 Tue, 24 Mar 2020 16:58:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 747A0A0071;
 Tue, 24 Mar 2020 16:58:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Tue, 24 Mar 2020 16:58:22 -0000
Message-ID: <158506910244.5746.16372327477329982377@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324153212.6303-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20200324153212.6303-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_use_forced_codec_wake_on_all_gen9+_platforms?=
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

Series: drm/i915: use forced codec wake on all gen9+ platforms
URL   : https://patchwork.freedesktop.org/series/75024/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8183 -> Patchwork_17070
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17070/index.html

Known issues
------------

  Here are the changes found in Patchwork_17070 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17070/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][3] ([i915#481]) -> [INCOMPLETE][4] ([i915#424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17070/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][5] ([fdo#106070] / [i915#424]) -> [DMESG-FAIL][6] ([i915#481])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17070/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481


Participating hosts (45 -> 38)
------------------------------

  Additional (4): fi-skl-lmem fi-blb-e6850 fi-cfl-8109u fi-kbl-7500u 
  Missing    (11): fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8183 -> Patchwork_17070

  CI-20190529: 20190529
  CI_DRM_8183: 795894daf2cc32246af94541733e08649d082470 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17070: 0d0abab0d1054b2a6cdc0ae5dbab122c231bc502 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0d0abab0d105 drm/i915: use forced codec wake on all gen9+ platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17070/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
