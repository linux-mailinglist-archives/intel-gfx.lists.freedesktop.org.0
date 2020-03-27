Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F951960F6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 23:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008876EA92;
	Fri, 27 Mar 2020 22:24:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 768BE6E02F;
 Fri, 27 Mar 2020 22:24:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FC3CA0094;
 Fri, 27 Mar 2020 22:24:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 27 Mar 2020 22:24:56 -0000
Message-ID: <158534789642.17236.9964286527430778804@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327213413.166623-1-jose.souza@intel.com>
In-Reply-To: <20200327213413.166623-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/dp=3A_Return_the_right_vsw?=
 =?utf-8?q?ing_tables?=
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

Series: series starting with [1/3] drm/i915/dp: Return the right vswing tables
URL   : https://patchwork.freedesktop.org/series/75183/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8206 -> Patchwork_17120
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/index.html

Known issues
------------

  Here are the changes found in Patchwork_17120 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([fdo#112259] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [DMESG-WARN][5] ([i915#289]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_parallel@contexts:
    - fi-icl-dsi:         [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8206/fi-icl-dsi/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/fi-icl-dsi/igt@gem_exec_parallel@contexts.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (49 -> 35)
------------------------------

  Missing    (14): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8206 -> Patchwork_17120

  CI-20190529: 20190529
  CI_DRM_8206: 584fcbd287863a6ba897f1b671acd7115d611362 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5543: 779d43cda49c230afd32c37730ad853f02e9d749 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17120: 74823ea17853c6c0a0af0e717ede201b293cccab @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

74823ea17853 drm/i915/tc/icl: Update TC vswing tables
593784ef4b5c drm/i915/dp/ehl: Update vswing table for HBR and RBR
86b6374af310 drm/i915/dp: Return the right vswing tables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17120/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
