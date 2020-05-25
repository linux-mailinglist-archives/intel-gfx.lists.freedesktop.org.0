Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3020D1E0961
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBA789CF8;
	Mon, 25 May 2020 08:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1738989CF7;
 Mon, 25 May 2020 08:53:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11449A47E6;
 Mon, 25 May 2020 08:53:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 08:53:53 -0000
Message-ID: <159039683304.4528.4166469580310153599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525080731.2244-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525080731.2244-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revert_CDCLK_changes_to_unbreak_geminilake?=
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

Series: drm/i915: Revert CDCLK changes to unbreak geminilake
URL   : https://patchwork.freedesktop.org/series/77628/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8529 -> Patchwork_17768
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17768/index.html

Known issues
------------

  Here are the changes found in Patchwork_17768 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1580] / [i915#926])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17768/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [TIMEOUT][3] ([i915#1288]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17768/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@coherency:
    - fi-bwr-2160:        [INCOMPLETE][5] ([i915#489]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bwr-2160/igt@i915_selftest@live@coherency.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17768/fi-bwr-2160/igt@i915_selftest@live@coherency.html

  
  [i915#1288]: https://gitlab.freedesktop.org/drm/intel/issues/1288
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926


Participating hosts (45 -> 43)
------------------------------

  Additional (3): fi-hsw-4770 fi-kbl-7560u fi-cfl-guc 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8529 -> Patchwork_17768

  CI-20190529: 20190529
  CI_DRM_8529: 9ae23ae1b437ee0d75ed2153eca05ecbd8c417bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5676: ff03d458f708583c8f9296f97c38df312055651a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17768: c692f23a099e2662e3ca395fb39187c1d7e71284 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c692f23a099e drm/i915: Revert CDCLK changes to unbreak geminilake

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17768/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
