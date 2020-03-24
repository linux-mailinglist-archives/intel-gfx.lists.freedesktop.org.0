Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5B3191B7C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 21:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64BFB898C6;
	Tue, 24 Mar 2020 20:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AEB489A74;
 Tue, 24 Mar 2020 20:51:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03D8DA47EB;
 Tue, 24 Mar 2020 20:51:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 24 Mar 2020 20:51:38 -0000
Message-ID: <158508309898.5745.7478721702393815104@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324201429.29153-1-jose.souza@intel.com>
In-Reply-To: <20200324201429.29153-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/6=5D_drm/i915/tc/tgl=3A_Implement_T?=
 =?utf-8?q?CCOLD_sequences?=
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

Series: series starting with [v3,1/6] drm/i915/tc/tgl: Implement TCCOLD sequences
URL   : https://patchwork.freedesktop.org/series/75034/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8183 -> Patchwork_17073
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/index.html

Known issues
------------

  Here are the changes found in Patchwork_17073 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1185])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gtt:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#1493])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-kbl-soraka/igt@i915_selftest@live@gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/fi-kbl-soraka/igt@i915_selftest@live@gtt.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][5] ([fdo#106070] / [i915#424]) -> [DMESG-FAIL][6] ([i915#481])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1493]: https://gitlab.freedesktop.org/drm/intel/issues/1493
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481


Participating hosts (45 -> 40)
------------------------------

  Additional (4): fi-skl-lmem fi-blb-e6850 fi-cfl-8109u fi-kbl-7500u 
  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8183 -> Patchwork_17073

  CI-20190529: 20190529
  CI_DRM_8183: 795894daf2cc32246af94541733e08649d082470 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17073: ae9ffbf9a4cc21805d5481a736c331b8140b4ba9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ae9ffbf9a4cc drm/i915/dp: Get TC link reference during DP detection
3b031f0ded4f drm/i915/tc/icl: Implement the TC cold exit sequence
4b5d60dcb2a5 drm/i915/display: Add intel_aux_ch_to_power_domain()
bb6945d8d8cf drm/i915/display: Implement intel_display_power_wait_enable_ack()
ca5b103fb97c drm/i915/display: Add intel_display_power_get_without_ack()
125d3dc52b2a drm/i915/tc/tgl: Implement TCCOLD sequences

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17073/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
