Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A791D559D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D3E06ECE0;
	Fri, 15 May 2020 16:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 008516E193;
 Fri, 15 May 2020 16:09:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE4CDA3C0D;
 Fri, 15 May 2020 16:09:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 May 2020 16:09:16 -0000
Message-ID: <158955895694.26212.1216969833076103234@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514165436.17380-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200514165436.17380-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Add_tests_for?=
 =?utf-8?q?_timeslicing_virtual_engines?=
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

Series: series starting with [1/4] drm/i915/selftests: Add tests for timeslicing virtual engines
URL   : https://patchwork.freedesktop.org/series/77274/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8488 -> Patchwork_17666
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17666/index.html

Known issues
------------

  Here are the changes found in Patchwork_17666 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-whl-u:           [INCOMPLETE][1] ([i915#656]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8488/fi-whl-u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17666/fi-whl-u/igt@i915_selftest@live@execlists.html

  
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8488 -> Patchwork_17666

  CI-20190529: 20190529
  CI_DRM_8488: d40ec60813532e485e9c63623c91babf556cfbe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5655: 2cc4c1edc3065590f9917930b6d049a90c4a38fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17666: c391d6f84f905212fdc986357b120dae52e1989b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c391d6f84f90 drm/i915/execlists: Optimise away false timeslicing on virtual engines
408949995022 drm/i915/gt: Incorporate the virtual engine into timeslicing
155df023a532 drm/i915/gt: Kick virtual siblings on timeslice out
175d05822d38 drm/i915/selftests: Add tests for timeslicing virtual engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17666/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
