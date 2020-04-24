Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 377A41B6ADF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 03:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9626EA68;
	Fri, 24 Apr 2020 01:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8E6A6E063;
 Fri, 24 Apr 2020 01:38:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A33FA00FD;
 Fri, 24 Apr 2020 01:38:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 01:38:00 -0000
Message-ID: <158769228060.10802.1399727980423152663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423234729.7993-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423234729.7993-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_engine_scratch_register_to_live=5Flrc=5Ffixed?=
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

Series: drm/i915: Add engine scratch register to live_lrc_fixed
URL   : https://patchwork.freedesktop.org/series/76415/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8357 -> Patchwork_17450
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17450/index.html

Known issues
------------

  Here are the changes found in Patchwork_17450 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1}:
    - fi-bsw-kefka:       [FAIL][1] ([i915#34]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8357/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17450/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8357 -> Patchwork_17450

  CI-20190529: 20190529
  CI_DRM_8357: 95fef3b4fb9f6c72d65af138cdffb68e0f062910 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5609: c100fe19f7b144538549415e8503093053883ec6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17450: a0e635ff729aad8e4b772a2d3753d2d4ee3b2409 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a0e635ff729a drm/i915: Add engine scratch register to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17450/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
