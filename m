Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9E915C931
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 18:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC766F60D;
	Thu, 13 Feb 2020 17:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 180956F60D;
 Thu, 13 Feb 2020 17:10:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07F28A0087;
 Thu, 13 Feb 2020 17:10:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 13 Feb 2020 17:10:22 -0000
Message-ID: <158161382202.17961.11932511750068210183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_modeset_transitions_related_to_DBuf?=
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

Series: Fix modeset transitions related to DBuf
URL   : https://patchwork.freedesktop.org/series/73414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7932 -> Patchwork_16559
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16559/index.html

Known issues
------------

  Here are the changes found in Patchwork_16559 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16559/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][3] ([fdo#112271] / [i915#1084]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16559/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (44 -> 42)
------------------------------

  Additional (8): fi-hsw-peppy fi-skl-6770hq fi-bwr-2160 fi-gdg-551 fi-skl-lmem fi-bsw-nick fi-skl-6600u fi-kbl-r 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-kbl-8809g fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7932 -> Patchwork_16559

  CI-20190529: 20190529
  CI_DRM_7932: da6301c2a1bda78897e67fb22e011c1574b7c6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16559: 26edb118d8a4d148c4bd28316ff3093b67a39b9d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

26edb118d8a4 drm/i915: Force state->modeset=true when distrust_bios_wm==true
20b3246d036d drm/i915/dsc: force full modeset whenever DSC is enabled at probe
2ec3cae3ec8f drm/i915: Ensure no conflicts with BIOS when updating Dbuf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16559/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
