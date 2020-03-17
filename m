Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3853C188894
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 16:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACD76E5B4;
	Tue, 17 Mar 2020 15:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B63C76E5B4;
 Tue, 17 Mar 2020 15:07:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEA61A00C7;
 Tue, 17 Mar 2020 15:07:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Tue, 17 Mar 2020 15:07:16 -0000
Message-ID: <158445763668.5177.10362572691758853707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317135736.14305-1-swati2.sharma@intel.com>
In-Reply-To: <20200317135736.14305-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/color=3A_Extract_icl=5Fread=5Fluts=28=29?=
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

Series: drm/i915/color: Extract icl_read_luts()
URL   : https://patchwork.freedesktop.org/series/74777/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8142 -> Patchwork_16995
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/index.html

Known issues
------------

  Here are the changes found in Patchwork_16995 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][1] -> [SKIP][2] ([fdo#109271]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [INCOMPLETE][3] ([i915#1430] / [i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [INCOMPLETE][5] ([fdo#112259] / [i915#1430] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (43 -> 42)
------------------------------

  Additional (5): fi-bdw-5557u fi-glk-dsi fi-cfl-8109u fi-blb-e6850 fi-skl-6700k2 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8142 -> Patchwork_16995

  CI-20190529: 20190529
  CI_DRM_8142: 13dfeddee92ca6b9d134e036ae315e93b96023db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5514: 921758a91a453e8148b3146ad874bbd4ae4364ec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16995: af4d857eacf32bdd7d3599e4d6ba1711e385efb5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af4d857eacf3 drm/i915/color: Extract icl_read_luts()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16995/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
