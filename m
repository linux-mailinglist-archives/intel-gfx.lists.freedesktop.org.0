Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DE41D5E39
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 05:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC856ED22;
	Sat, 16 May 2020 03:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 233636ED22;
 Sat, 16 May 2020 03:26:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BD13A0BD0;
 Sat, 16 May 2020 03:26:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <natechancellor@gmail.com>
Date: Sat, 16 May 2020 03:26:09 -0000
Message-ID: <158959956901.12903.10862959299459381815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516023545.3332334-1-natechancellor@gmail.com>
In-Reply-To: <20200516023545.3332334-1-natechancellor@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_check=5Fshadow=5Fcontext=5Fppgtt_as_maybe_unused?=
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

Series: drm/i915: Mark check_shadow_context_ppgtt as maybe unused
URL   : https://patchwork.freedesktop.org/series/77317/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8491 -> Patchwork_17678
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/index.html

Known issues
------------

  Here are the changes found in Patchwork_17678 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4] ([i915#1795] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][5] -> [INCOMPLETE][6] ([i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [INCOMPLETE][7] ([i915#1795] / [i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/fi-skl-guc/igt@i915_selftest@live@execlists.html

  
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (50 -> 44)
------------------------------

  Additional (2): fi-kbl-7560u fi-skl-6600u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8491 -> Patchwork_17678

  CI-20190529: 20190529
  CI_DRM_8491: 45b04894467fea442ac135a64318220fbf42cae5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5656: 3996584aa3fad5dd7a52cb90bb3cda87f645addf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17678: e8b666a33069df3d77f0c0ec0764f8dc69f8e56f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8b666a33069 drm/i915: Mark check_shadow_context_ppgtt as maybe unused

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17678/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
