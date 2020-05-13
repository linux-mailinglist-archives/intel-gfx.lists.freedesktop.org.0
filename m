Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5C61D142F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 15:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2136E16F;
	Wed, 13 May 2020 13:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40CF46E056;
 Wed, 13 May 2020 13:12:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AE7DA47E1;
 Wed, 13 May 2020 13:12:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 13:12:30 -0000
Message-ID: <158937555021.25404.11397956224353267407@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513122826.27484-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513122826.27484-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Suspend_tasklets_before_resume_sanitization?=
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

Series: drm/i915/gt: Suspend tasklets before resume sanitization
URL   : https://patchwork.freedesktop.org/series/77223/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8472 -> Patchwork_17645
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/index.html

Known issues
------------

  Here are the changes found in Patchwork_17645 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2] ([i915#1250] / [i915#1436])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [INCOMPLETE][3] ([i915#1874]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [INCOMPLETE][5] ([i915#1803]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2}:
    - fi-bsw-n3050:       [FAIL][11] ([i915#34]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (39 -> 44)
------------------------------

  Additional (9): fi-cml-s fi-cfl-8700k fi-kbl-7500u fi-pnv-d510 fi-kbl-8809g fi-elk-e7500 fi-tgl-y fi-bsw-nick fi-kbl-r 
  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8472 -> Patchwork_17645

  CI-20190529: 20190529
  CI_DRM_8472: 57acc5ba2cfb81691917a3da729573a99c893e5a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17645: a06430f11a8054e6b4ee2cbae13fd781319329aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a06430f11a80 drm/i915/gt: Suspend tasklets before resume sanitization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17645/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
