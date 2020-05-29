Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DE31E81BF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 17:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1F76E932;
	Fri, 29 May 2020 15:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 983F06E939;
 Fri, 29 May 2020 15:24:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9230EA0099;
 Fri, 29 May 2020 15:24:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 15:24:53 -0000
Message-ID: <159076589356.3331.16793897257410228172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29_=28rev5=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active() (rev5)
URL   : https://patchwork.freedesktop.org/series/77781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8553 -> Patchwork_17819
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17819/index.html

Known issues
------------

  Here are the changes found in Patchwork_17819 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [TIMEOUT][1] ([i915#1288]) -> [TIMEOUT][2] ([i915#1288] / [i915#1958])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17819/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  [i915#1288]: https://gitlab.freedesktop.org/drm/intel/issues/1288
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8553 -> Patchwork_17819

  CI-20190529: 20190529
  CI_DRM_8553: 9f1b8b4fcb466dc714b1f825fd93e3bbd29c7de6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5683: 757b6e72d546fd2dbc3801a73796d67b0854021b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17819: 2192b036ccb7f6662671f183f6f643094daeb84b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2192b036ccb7 drm/i915: Check for awaits on still currently executing requests
3e1109ea7977 drm/i915: Add a few asserts around handling of i915_request_is_active()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17819/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
