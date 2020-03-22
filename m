Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611F18EAAA
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 18:15:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04B36E0E0;
	Sun, 22 Mar 2020 17:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FD0489B5F;
 Sun, 22 Mar 2020 17:15:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 684E4A00C7;
 Sun, 22 Mar 2020 17:15:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 17:15:45 -0000
Message-ID: <158489734539.23729.14419518813135930680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322163225.28791-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322163225.28791-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Treat_idling_as_a_RP?=
 =?utf-8?q?S_downclock_event?=
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

Series: series starting with [1/2] drm/i915/gt: Treat idling as a RPS downclock event
URL   : https://patchwork.freedesktop.org/series/74948/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8170 -> Patchwork_17046
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/index.html

Known issues
------------

  Here are the changes found in Patchwork_17046 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [INCOMPLETE][5] ([i915#283] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (42 -> 37)
------------------------------

  Additional (5): fi-kbl-7560u fi-bsw-n3050 fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (10): fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-elk-e7500 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8170 -> Patchwork_17046

  CI-20190529: 20190529
  CI_DRM_8170: e464286ae9b7c18b0fab5fc638dff07c8afc5999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17046: a737b46fd748c6d73ef215809fd34c3244752717 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a737b46fd748 drm/i915/gt: Leave rps->cur_freq on unpark
8a2204a05919 drm/i915/gt: Treat idling as a RPS downclock event

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
