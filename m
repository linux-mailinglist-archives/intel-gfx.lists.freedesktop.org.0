Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F0718765A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 00:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E086E525;
	Mon, 16 Mar 2020 23:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28C236E51D;
 Mon, 16 Mar 2020 23:47:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21688A0094;
 Mon, 16 Mar 2020 23:47:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 23:47:53 -0000
Message-ID: <158440247310.18995.15090045018376266004@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316161447.18410-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316161447.18410-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Check_for_a_closed_context_when_looking_up_an_engi?=
 =?utf-8?q?ne?=
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

Series: drm/i915/gem: Check for a closed context when looking up an engine
URL   : https://patchwork.freedesktop.org/series/74750/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8138 -> Patchwork_16984
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/index.html

Known issues
------------

  Here are the changes found in Patchwork_16984 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([CI#94] / [i915#470] / [i915#529])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-tgl-y/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/fi-tgl-y/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/fi-skl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6] ([i915#1457])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-bwr-2160/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/fi-bwr-2160/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [FAIL][7] ([i915#217]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1457]: https://gitlab.freedesktop.org/drm/intel/issues/1457
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (40 -> 44)
------------------------------

  Additional (8): fi-bdw-5557u fi-hsw-peppy fi-skl-6770hq fi-ilk-650 fi-gdg-551 fi-ivb-3770 fi-cfl-8109u fi-snb-2600 
  Missing    (4): fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16984

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16984: a3c39e8196a999b51e95f43ebf36887facede60d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a3c39e8196a9 drm/i915/gem: Check for a closed context when looking up an engine

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16984/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
