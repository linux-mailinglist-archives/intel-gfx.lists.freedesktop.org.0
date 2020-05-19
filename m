Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A610C1DA56C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DC26E453;
	Tue, 19 May 2020 23:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 342D86E453;
 Tue, 19 May 2020 23:26:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E33EA3C0D;
 Tue, 19 May 2020 23:26:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 19 May 2020 23:26:52 -0000
Message-ID: <158993081216.31239.18296490094360839654@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Extend_w/a_14010685332_to_JSP/MCC_=28rev2=29?=
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

Series: drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC (rev2)
URL   : https://patchwork.freedesktop.org/series/77382/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8506 -> Patchwork_17717
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/index.html

Known issues
------------

  Here are the changes found in Patchwork_17717 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([i915#765])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-icl-y/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/fi-icl-y/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#489])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-8809g:       [INCOMPLETE][5] ([i915#1874]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17717

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17717: e71c461a0da44e3fd095719790961a6606eb4e8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e71c461a0da4 drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17717/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
