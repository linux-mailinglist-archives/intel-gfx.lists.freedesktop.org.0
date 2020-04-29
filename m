Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A8F1BD9C1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF506EE7B;
	Wed, 29 Apr 2020 10:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4407E6EE7A;
 Wed, 29 Apr 2020 10:37:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BEF4A47E6;
 Wed, 29 Apr 2020 10:37:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>
Date: Wed, 29 Apr 2020 10:37:14 -0000
Message-ID: <158815663424.6696.12195821963672181606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420130118.7a866fd5@canb.auug.org.au>
In-Reply-To: <20200420130118.7a866fd5@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_build_failure_after_merge_of_the_drm-misc_tree?=
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

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/76709/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8390 -> Patchwork_17505
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/index.html

Known issues
------------

  Here are the changes found in Patchwork_17505 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#1580])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17505

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17505: 4cb00cc7b2f7e895d430b9bf376db1a803fddd6a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4cb00cc7b2f7 linux-next: build failure after merge of the drm-misc tree

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17505/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
