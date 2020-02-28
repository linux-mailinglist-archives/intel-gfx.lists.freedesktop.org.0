Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135DF172EF7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0B46E9A6;
	Fri, 28 Feb 2020 02:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AF5F6E9A7;
 Fri, 28 Feb 2020 02:59:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92C38A0019;
 Fri, 28 Feb 2020 02:59:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Josh Poimboeuf" <jpoimboe@redhat.com>
Date: Fri, 28 Feb 2020 02:59:06 -0000
Message-ID: <158285874659.7475.8099703276392019168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
In-Reply-To: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Minimize_uaccess_exposure_in_i915=5Fgem=5Fexecbuffer2?=
 =?utf-8?b?X2lvY3RsKCk=?=
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

Series: drm/i915: Minimize uaccess exposure in i915_gem_execbuffer2_ioctl()
URL   : https://patchwork.freedesktop.org/series/74045/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8023 -> Patchwork_16749
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16749/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16749:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16749/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16749 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@perf:
    - fi-apl-guc:         [PASS][2] -> [INCOMPLETE][3] ([fdo#103927])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-apl-guc/igt@i915_selftest@live@perf.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16749/fi-apl-guc/igt@i915_selftest@live@perf.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][4] ([i915#217] / [i915#976]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16749/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (46 -> 41)
------------------------------

  Additional (3): fi-blb-e6850 fi-bdw-5557u fi-snb-2600 
  Missing    (8): fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8023 -> Patchwork_16749

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16749: 6e4938bfd3cb47ed0b6c76fabbc93b7015d2a998 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e4938bfd3cb drm/i915: Minimize uaccess exposure in i915_gem_execbuffer2_ioctl()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16749/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
