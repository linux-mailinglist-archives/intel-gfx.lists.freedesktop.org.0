Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C3318A04E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 17:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784866E91C;
	Wed, 18 Mar 2020 16:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBFCF6E91B;
 Wed, 18 Mar 2020 16:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4A92A47EB;
 Wed, 18 Mar 2020 16:16:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Mar 2020 16:16:51 -0000
Message-ID: <158454821184.25101.17519835231382984819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318150407.17083-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200318150407.17083-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Wait_until_the_context_is_finally_retired_before_r?=
 =?utf-8?q?eleasing_engines_=28rev2=29?=
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

Series: drm/i915/gem: Wait until the context is finally retired before releasing engines (rev2)
URL   : https://patchwork.freedesktop.org/series/74836/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8148 -> Patchwork_17009
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17009 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17009, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17009:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-skl-lmem/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-skl-lmem/igt@gem_exec_parallel@fds.html
    - fi-kbl-r:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-kbl-r/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-kbl-r/igt@gem_exec_parallel@fds.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
    - fi-kbl-x1275:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-skl-6600u/igt@gem_exec_parallel@fds.html
    - fi-skl-6700k2:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-skl-6700k2/igt@gem_exec_parallel@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-skl-6700k2/igt@gem_exec_parallel@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17009 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-cml-s:           [PASS][11] -> [INCOMPLETE][12] ([i915#283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-cml-s/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-cml-s/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-bxt-dsi:         [PASS][13] -> [INCOMPLETE][14] ([fdo#103927])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-u2:          [PASS][15] -> [INCOMPLETE][16] ([i915#283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-cml-u2/igt@gem_exec_parallel@fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-cml-u2/igt@gem_exec_parallel@fds.html
    - fi-icl-y:           [PASS][17] -> [INCOMPLETE][18] ([i915#1147])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-icl-y/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-icl-y/igt@gem_exec_parallel@fds.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bwr-2160:        [FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8148/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1147]: https://gitlab.freedesktop.org/drm/intel/issues/1147
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470


Participating hosts (36 -> 40)
------------------------------

  Additional (7): fi-glk-dsi fi-kbl-7500u fi-cfl-8109u fi-elk-e7500 fi-kbl-7560u fi-skl-6600u fi-snb-2600 
  Missing    (3): fi-ctg-p8600 fi-byt-clapper fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8148 -> Patchwork_17009

  CI-20190529: 20190529
  CI_DRM_8148: 461a6f2c7c0296c282114ac8c0e63536e9f7d095 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17009: be5c49d70e436ba2eee9393e9804f97b0bc7c63f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

be5c49d70e43 drm/i915/gem: Wait until the context is finally retired before releasing engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17009/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
