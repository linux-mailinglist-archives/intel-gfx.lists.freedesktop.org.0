Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ACF191464
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C2A6E3A0;
	Tue, 24 Mar 2020 15:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DA6C6E39C;
 Tue, 24 Mar 2020 15:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D6D0A008A;
 Tue, 24 Mar 2020 15:29:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 24 Mar 2020 15:29:36 -0000
Message-ID: <158506377611.5746.13536580971482282795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324134232.8773-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324134232.8773-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Select_the_deepest_available_parking_mode_for_rc6_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gt: Select the deepest available parking mode for rc6 (rev2)
URL   : https://patchwork.freedesktop.org/series/75009/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8182 -> Patchwork_17069
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/index.html

Known issues
------------

  Here are the changes found in Patchwork_17069 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([fdo#112259] / [i915#1430] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@gem_linear_blits@basic:
    - fi-glk-dsi:         [SKIP][5] ([fdo#109271]) -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-glk-dsi/igt@gem_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/fi-glk-dsi/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][7] ([i915#481]) -> [DMESG-FAIL][8] ([i915#730] / [i915#933])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [INCOMPLETE][9] ([i915#424]) -> [DMESG-FAIL][10] ([i915#481])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8182 -> Patchwork_17069

  CI-20190529: 20190529
  CI_DRM_8182: e5245084567cd7f6f93b07baaebf8a2b4d914620 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5531: 79e7382202c104b247a672c61a6186d1f51e4958 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17069: 13af5126ab2c821dc4598239827f1508ea657df7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

13af5126ab2c drm/i915/gt: Select the deepest available parking mode for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17069/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
