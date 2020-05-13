Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E11D106D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 13:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B546EA05;
	Wed, 13 May 2020 11:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5AAB6EA01;
 Wed, 13 May 2020 11:02:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0A9BA011B;
 Wed, 13 May 2020 11:02:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 11:02:29 -0000
Message-ID: <158936774963.25404.4899364927000006095@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513100120.11617-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513100120.11617-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Reset_execlists_registers_before_HWSP_=28rev3=29?=
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

Series: drm/i915/gt: Reset execlists registers before HWSP (rev3)
URL   : https://patchwork.freedesktop.org/series/77207/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8471 -> Patchwork_17642
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17642/index.html

Known issues
------------

  Here are the changes found in Patchwork_17642 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [{ABORT}][1] ([i915#1814]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17642/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [INCOMPLETE][3] ([i915#489]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8471/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17642/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 36)
------------------------------

  Missing    (13): fi-ilk-m540 fi-cml-s fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-kbl-7500u fi-kbl-8809g fi-elk-e7500 fi-tgl-y fi-byt-clapper fi-bsw-nick fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8471 -> Patchwork_17642

  CI-20190529: 20190529
  CI_DRM_8471: 3c84a88ed50e99b200fac400a9b817a23d399c01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17642: fa61592fb85d0f73104bc1934d5b5d1b739973da @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fa61592fb85d drm/i915/gt: Reset execlists registers before HWSP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17642/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
