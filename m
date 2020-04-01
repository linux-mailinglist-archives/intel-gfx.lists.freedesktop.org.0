Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3105C19B923
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 01:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3682A6E9C2;
	Wed,  1 Apr 2020 23:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63C006E9BF;
 Wed,  1 Apr 2020 23:55:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D0AFA00E6;
 Wed,  1 Apr 2020 23:55:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 23:55:19 -0000
Message-ID: <158578531935.25628.2861896032237361154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401223924.16667-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401223924.16667-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_cached_obj-=3Ebind=5Fcount_=28rev3=29?=
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

Series: drm/i915/gem: Drop cached obj->bind_count (rev3)
URL   : https://patchwork.freedesktop.org/series/74593/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8235 -> Patchwork_17173
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17173/index.html

Known issues
------------

  Here are the changes found in Patchwork_17173 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * {igt@gem_exec_parallel@engines@contexts}:
    - {fi-tgl-dsi}:       [INCOMPLETE][1] ([i915#529]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8235/fi-tgl-dsi/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17173/fi-tgl-dsi/igt@gem_exec_parallel@engines@contexts.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [DMESG-WARN][3] ([i915#62] / [i915#92]) -> [DMESG-WARN][4] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8235/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17173/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][6] ([i915#62] / [i915#92]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8235/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17173/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 38)
------------------------------

  Additional (3): fi-gdg-551 fi-cfl-8109u fi-skl-6700k2 
  Missing    (12): fi-ilk-m540 fi-bdw-samus fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-bsw-kefka fi-kbl-7560u fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8235 -> Patchwork_17173

  CI-20190529: 20190529
  CI_DRM_8235: 8e658041c38badcc50eb074ae0797989fe1fa776 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17173: c3b89dcced3239d5ac1cffcb2a6b4110ba062370 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c3b89dcced32 drm/i915/gem: Drop cached obj->bind_count

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17173/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
