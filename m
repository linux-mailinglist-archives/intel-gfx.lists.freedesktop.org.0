Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F919C950
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 21:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033926EADC;
	Thu,  2 Apr 2020 19:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC4FE6EADA;
 Thu,  2 Apr 2020 19:00:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B41C4A00E7;
 Thu,  2 Apr 2020 19:00:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Thu, 02 Apr 2020 19:00:49 -0000
Message-ID: <158585404971.24294.13901116836324395148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402174417.83739-1-andi@etezian.org>
In-Reply-To: <20200402174417.83739-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev3)
URL   : https://patchwork.freedesktop.org/series/75333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8238 -> Patchwork_17188
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17188:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@busy@all}:
    - fi-gdg-551:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-gdg-551/igt@gem_wait@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/fi-gdg-551/igt@gem_wait@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17188 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (50 -> 37)
------------------------------

  Missing    (13): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17188

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17188: db515ae2c79c34e64b3c0909064d21358cbf1170 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

db515ae2c79c drm/i915/gt: move remaining debugfs interfaces into gt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17188/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
