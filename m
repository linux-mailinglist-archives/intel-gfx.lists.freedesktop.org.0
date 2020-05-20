Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5FB1DC214
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 00:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7524C6E8BF;
	Wed, 20 May 2020 22:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A4BC6E8C0;
 Wed, 20 May 2020 22:33:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 343CCA47E9;
 Wed, 20 May 2020 22:33:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 20 May 2020 22:33:52 -0000
Message-ID: <159001403218.30688.2478729917668423995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520212756.354623-1-jose.souza@intel.com>
In-Reply-To: <20200520212756.354623-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_psr=5Fsafest=5Fparams?=
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

Series: drm/i915: Add psr_safest_params
URL   : https://patchwork.freedesktop.org/series/77491/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8515 -> Patchwork_17738
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/index.html

Known issues
------------

  Here are the changes found in Patchwork_17738 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2] ([i915#151] / [i915#1844] / [i915#392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-guc:         [PASS][3] -> [FAIL][4] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][5] ([i915#1803]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#1844]: https://gitlab.freedesktop.org/drm/intel/issues/1844
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8515 -> Patchwork_17738

  CI-20190529: 20190529
  CI_DRM_8515: 41f9bb782f3bb2f30be09683184bbeecb1fd31bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17738: 7f3095d8f257cc9646071b19df534a8a5df7ed60 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7f3095d8f257 drm/i915: Add psr_safest_params

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17738/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
