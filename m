Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD096195735
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 13:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B4D6E37F;
	Fri, 27 Mar 2020 12:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36C676E095;
 Fri, 27 Mar 2020 12:39:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FA00A0088;
 Fri, 27 Mar 2020 12:39:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 12:39:51 -0000
Message-ID: <158531279116.17234.5143869052690762605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200327112212.16046-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Allow_for_different_mod?=
 =?utf-8?q?es_of_interruptible_i915=5Factive=5Fwait?=
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

Series: series starting with [1/3] drm/i915: Allow for different modes of interruptible i915_active_wait
URL   : https://patchwork.freedesktop.org/series/75166/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8201 -> Patchwork_17115
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17115/index.html

Known issues
------------

  Here are the changes found in Patchwork_17115 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-elk-e7500:       [PASS][1] -> [FAIL][2] ([i915#34])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17115/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][3] ([i915#579]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17115/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (46 -> 42)
------------------------------

  Additional (2): fi-skl-6770hq fi-byt-n2820 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8201 -> Patchwork_17115

  CI-20190529: 20190529
  CI_DRM_8201: df2dc60809f02d714ddc26136c24d6fc6f5268b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5541: f3d9a3a5fa9ea281b859a5b81201e6147b9fbad1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17115: 4dc34cd0a34d2ae8cd197ef18469c472361aa03a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4dc34cd0a34d drm/i915/perf: Schedule oa_config after modifying the contexts
0505b0ddd01b drm/i915: Wrap i915_active in a simple kreffed struct
78b0c269c4db drm/i915: Allow for different modes of interruptible i915_active_wait

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17115/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
