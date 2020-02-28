Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031DF173EC0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5933A6F4A1;
	Fri, 28 Feb 2020 17:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 914436F494;
 Fri, 28 Feb 2020 17:45:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E874A41FB;
 Fri, 28 Feb 2020 17:45:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Fri, 28 Feb 2020 17:45:15 -0000
Message-ID: <158291191551.7476.17297836276788595690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228141413.qfjf4abr323drlo4@kili.mountain>
In-Reply-To: <20200228141413.qfjf4abr323drlo4@kili.mountain>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Fix_return_in_assert=5Fmmap=5Foffset=28=29?=
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

Series: drm/i915/selftests: Fix return in assert_mmap_offset()
URL   : https://patchwork.freedesktop.org/series/74081/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8032 -> Patchwork_16763
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/index.html

Known issues
------------

  Here are the changes found in Patchwork_16763 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_fd_dup:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/fi-tgl-y/igt@prime_self_import@basic-with_fd_dup.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][3] ([CI#94]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][7] ([i915#704]) -> [FAIL][8] ([i915#579])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#1209]) -> [FAIL][10] ([i915#192] / [i915#193] / [i915#194])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (47 -> 45)
------------------------------

  Additional (4): fi-byt-j1900 fi-bdw-5557u fi-bsw-kefka fi-kbl-r 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8032 -> Patchwork_16763

  CI-20190529: 20190529
  CI_DRM_8032: e61f34133ad908d4b455344daa7b4edb9fcf680c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16763: b5ac082a9130804ebed1ded7b0b2dc7ea28e9f84 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b5ac082a9130 drm/i915/selftests: Fix return in assert_mmap_offset()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16763/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
