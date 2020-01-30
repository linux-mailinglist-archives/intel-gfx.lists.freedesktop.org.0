Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5414DB04
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 13:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4907B6F9A0;
	Thu, 30 Jan 2020 12:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD0C46F9A0;
 Thu, 30 Jan 2020 12:54:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4661A011C;
 Thu, 30 Jan 2020 12:54:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 30 Jan 2020 12:54:27 -0000
Message-ID: <158038886771.21035.10108823128689722992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200130113108.10441-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/2=5D_drm/i915/tgl=3A_WaEnablePreem?=
 =?utf-8?q?ptionGranularityControlByUMD?=
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

Series: series starting with [RFC,1/2] drm/i915/tgl: WaEnablePreemptionGranularityControlByUMD
URL   : https://patchwork.freedesktop.org/series/72769/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7842 -> Patchwork_16333
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16333/index.html

Known issues
------------

  Here are the changes found in Patchwork_16333 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][1] -> [FAIL][2] ([i915#178])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16333/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][3] ([fdo#112271] / [i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16333/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][5] ([fdo#112271]) -> [FAIL][6] ([i915#694])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16333/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (48 -> 41)
------------------------------

  Additional (4): fi-glk-dsi fi-tgl-y fi-tgl-u fi-bwr-2160 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-whl-u fi-icl-u3 fi-bsw-kefka fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7842 -> Patchwork_16333

  CI-20190529: 20190529
  CI_DRM_7842: 34f535513361a22f81bc3b7388755872b73b18f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16333: 90e4a022f6ef8dbbdb224d61d2e1ab3d6244c4ec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

90e4a022f6ef drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
8a809eb98bb6 drm/i915/tgl: WaEnablePreemptionGranularityControlByUMD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16333/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
