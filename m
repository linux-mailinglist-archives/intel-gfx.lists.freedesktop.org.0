Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F30741937BD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 06:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661D16E0D0;
	Thu, 26 Mar 2020 05:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C8BC6E0D0;
 Thu, 26 Mar 2020 05:29:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 116D5A0088;
 Thu, 26 Mar 2020 05:29:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Thu, 26 Mar 2020 05:29:08 -0000
Message-ID: <158520054804.23004.7053834521257863342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <6ec4772094094bb6967f0bd68e68c5e9e5613557.1585197556.git.ashutosh.dixit@intel.com>
In-Reply-To: <6ec4772094094bb6967f0bd68e68c5e9e5613557.1585197556.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers_?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers (rev2)
URL   : https://patchwork.freedesktop.org/series/75085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8190 -> Patchwork_17092
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17092/index.html

Known issues
------------

  Here are the changes found in Patchwork_17092 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [DMESG-FAIL][1] ([i915#656]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17092/fi-tgl-u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17092/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (40 -> 35)
------------------------------

  Additional (7): fi-glk-dsi fi-ivb-3770 fi-elk-e7500 fi-bsw-kefka fi-blb-e6850 fi-bsw-nick fi-snb-2600 
  Missing    (12): fi-hsw-4770r fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-hsw-4770 fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8190 -> Patchwork_17092

  CI-20190529: 20190529
  CI_DRM_8190: 73f711b364bc85c8a7189487c09431eb1f515ed0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5538: 47becbc9cd1fc7b1b78692f90fd3dcd5a9066965 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17092: fae3ed433b36110cf2f05ca2bc9100632293334d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fae3ed433b36 drm/i915/perf: Do not clear pollin for small user read buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17092/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
