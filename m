Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96F21B432E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 13:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9036E3EC;
	Wed, 22 Apr 2020 11:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B502C6E3E1;
 Wed, 22 Apr 2020 11:26:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF18BA47E6;
 Wed, 22 Apr 2020 11:26:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 11:26:03 -0000
Message-ID: <158755476368.5177.15378644163009002043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422100903.25216-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422100903.25216-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Try_to_detect_rollback_during_batchbuffer_pr?=
 =?utf-8?q?eemption_=28rev2=29?=
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

Series: drm/i915/selftests: Try to detect rollback during batchbuffer preemption (rev2)
URL   : https://patchwork.freedesktop.org/series/76279/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8348 -> Patchwork_17417
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17417/index.html

Known issues
------------

  Here are the changes found in Patchwork_17417 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-snb-2600:        [PASS][1] -> [FAIL][2] ([i915#1763])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17417/fi-snb-2600/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [FAIL][3] ([i915#1763]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17417/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8348 -> Patchwork_17417

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17417: 1f59338755f11ce43bafa2dc0dbd4a1d68c3d1b5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1f59338755f1 drm/i915/selftests: Try to detect rollback during batchbuffer preemption

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17417/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
