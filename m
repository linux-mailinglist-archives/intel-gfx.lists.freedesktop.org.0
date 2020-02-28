Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 589D9173E5F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D906F49F;
	Fri, 28 Feb 2020 17:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97E3F6F494;
 Fri, 28 Feb 2020 17:24:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9128EA011B;
 Fri, 28 Feb 2020 17:24:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 17:24:39 -0000
Message-ID: <158291067956.7474.15453710178812004802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Expose_engine_proper?=
 =?utf-8?q?ties_via_sysfs?=
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

Series: series starting with [1/7] drm/i915/gt: Expose engine properties via sysfs
URL   : https://patchwork.freedesktop.org/series/74080/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8032 -> Patchwork_16762
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/index.html

Known issues
------------

  Here are the changes found in Patchwork_16762 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][3] ([fdo#111096] / [i915#323]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][7] ([i915#704]) -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (47 -> 44)
------------------------------

  Additional (4): fi-byt-j1900 fi-bdw-5557u fi-bsw-kefka fi-kbl-r 
  Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8032 -> Patchwork_16762

  CI-20190529: 20190529
  CI_DRM_8032: e61f34133ad908d4b455344daa7b4edb9fcf680c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16762: 5d649480e8d65d575734e7c7831df72be1d91c6b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5d649480e8d6 drm/i915/gt: Expose heartbeat interval via sysfs
60fac5998627 drm/i915/gt: Expose preempt reset timeout via sysfs
6e9daee1bf88 drm/i915/gt: Expose reset stop timeout via sysfs
e01f8abc4a64 drm/i915/gt: Expose busywait duration to sysfs
ac66efa1d295 drm/i915/gt: Expose timeslice duration to sysfs
25aedca1dd0a drm/i915/gt: Expose engine->mmio_base via sysfs
d3b9bcf44547 drm/i915/gt: Expose engine properties via sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16762/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
