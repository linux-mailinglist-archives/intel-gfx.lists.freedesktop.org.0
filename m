Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E343715296C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 11:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5986F53C;
	Wed,  5 Feb 2020 10:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB3E16F53D;
 Wed,  5 Feb 2020 10:50:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9DF5A0087;
 Wed,  5 Feb 2020 10:50:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 05 Feb 2020 10:50:45 -0000
Message-ID: <158089984573.17319.8232996278651893871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205173316.21739-1-shawn.c.lee@intel.com>
In-Reply-To: <20200205173316.21739-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/lspcon=3A_Make_sure_link_rate_did_not_exceed_downstream_a?=
 =?utf-8?q?nd_lspcon_limitation?=
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

Series: drm/i915/lspcon: Make sure link rate did not exceed downstream and lspcon limitation
URL   : https://patchwork.freedesktop.org/series/73012/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7868 -> Patchwork_16428
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16428 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16428, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16428:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      NOTRUN -> [FAIL][1] +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16428 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][2] ([i915#553] / [i915#725]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7868/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][4] ([fdo#108569]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7868/fi-icl-y/igt@i915_selftest@live_execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][6] ([i915#722]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7868/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-guc:         [INCOMPLETE][8] ([fdo#108569]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7868/fi-icl-guc/igt@i915_selftest@live_hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-icl-guc/igt@i915_selftest@live_hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][10] ([i915#725]) -> [DMESG-FAIL][11] ([i915#553] / [i915#725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7868/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (48 -> 41)
------------------------------

  Additional (5): fi-bdw-5557u fi-skl-6770hq fi-snb-2520m fi-cfl-8109u fi-byt-n2820 
  Missing    (12): fi-kbl-soraka fi-icl-1065g7 fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-byt-squawks fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7868 -> Patchwork_16428

  CI-20190529: 20190529
  CI_DRM_7868: 2a4eeb761e833082eed9cb82fb775a862b7cccca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16428: ecce0d80a8a519aedaa0dff37a48198ec03ee348 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ecce0d80a8a5 drm/i915/lspcon: Make sure link rate did not exceed downstream and lspcon limitation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16428/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
