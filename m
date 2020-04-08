Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F5D1A2214
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 14:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DC36EA58;
	Wed,  8 Apr 2020 12:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DBA86E0FA;
 Wed,  8 Apr 2020 12:33:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E03EA00E7;
 Wed,  8 Apr 2020 12:33:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 12:33:49 -0000
Message-ID: <158634922948.19348.10362010880206938585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408092916.5355-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200408092916.5355-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_racy_check_of_breadcrumb_irq_enabled?=
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

Series: drm/i915/gt: Mark up racy check of breadcrumb irq enabled
URL   : https://patchwork.freedesktop.org/series/75663/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8274 -> Patchwork_17250
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/index.html

Known issues
------------

  Here are the changes found in Patchwork_17250 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][1] -> [SKIP][2] ([fdo#109271]) +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [SKIP][3] ([fdo#109271]) -> [PASS][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8274/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Participating hosts (51 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8274 -> Patchwork_17250

  CI-20190529: 20190529
  CI_DRM_8274: 860acd37e552def563b63ac3f77ad002b58fada0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5580: fb488389a7a263b649361ec9c29e8b3b69851122 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17250: 3fc532718c8a0bba71f95c542817b955487663d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3fc532718c8a drm/i915/gt: Mark up racy check of breadcrumb irq enabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17250/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
