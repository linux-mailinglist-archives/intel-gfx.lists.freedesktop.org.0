Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D401B7CD8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 19:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5AC6E158;
	Fri, 24 Apr 2020 17:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46FDE6E0AD;
 Fri, 24 Apr 2020 17:32:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E2E5A363B;
 Fri, 24 Apr 2020 17:32:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 17:32:13 -0000
Message-ID: <158774953322.10802.5370574362413994155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424162805.25920-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424162805.25920-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Trace_RPS_event?=
 =?utf-8?q?s?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Trace RPS events
URL   : https://patchwork.freedesktop.org/series/76442/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8361 -> Patchwork_17455
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/index.html

Known issues
------------

  Here are the changes found in Patchwork_17455 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [FAIL][1] ([i915#665] / [i915#704]) -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#665]: https://gitlab.freedesktop.org/drm/intel/issues/665
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8361 -> Patchwork_17455

  CI-20190529: 20190529
  CI_DRM_8361: b4686529aa525cedc337041c3e2741a93c1a0449 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17455: 1d1b796b4dd3fee70053d867ff15d517dd1f51cb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1d1b796b4dd3 drm/i915/gt: Use the RPM config register to determine clk frequencies
695be7381970 drm/i915/gt: Trace RPS events

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
