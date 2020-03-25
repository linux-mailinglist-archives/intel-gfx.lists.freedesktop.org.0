Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88B219312E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 20:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D2C6E829;
	Wed, 25 Mar 2020 19:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EB456E115;
 Wed, 25 Mar 2020 19:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07953A47EB;
 Wed, 25 Mar 2020 19:33:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Wed, 25 Mar 2020 19:33:39 -0000
Message-ID: <158516481900.29636.3584250420465001221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>
In-Reply-To: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers
URL   : https://patchwork.freedesktop.org/series/75085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8189 -> Patchwork_17089
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17089/index.html

Known issues
------------

  Here are the changes found in Patchwork_17089 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][1] ([fdo#109271]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8189/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17089/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@requests:
    - fi-icl-y:           [INCOMPLETE][3] ([fdo#109644] / [fdo#110464]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8189/fi-icl-y/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17089/fi-icl-y/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464


Participating hosts (43 -> 34)
------------------------------

  Additional (6): fi-byt-j1900 fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-cfl-8109u fi-skl-lmem 
  Missing    (15): fi-ilk-m540 fi-bdw-samus fi-bdw-5557u fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-bsw-kefka fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8189 -> Patchwork_17089

  CI-20190529: 20190529
  CI_DRM_8189: b851880963f76b6dd67d6abdcd2f365b268c23d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5538: 47becbc9cd1fc7b1b78692f90fd3dcd5a9066965 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17089: 4ae4b0d8852e66433949ce70d39b7c5a75c308d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4ae4b0d8852e drm/i915/perf: Do not clear pollin for small user read buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17089/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
