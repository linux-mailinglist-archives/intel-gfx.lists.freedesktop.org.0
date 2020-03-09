Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C03217E0EE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 14:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACAE6E440;
	Mon,  9 Mar 2020 13:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29AB86E43B;
 Mon,  9 Mar 2020 13:16:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B0FAA0094;
 Mon,  9 Mar 2020 13:16:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 13:16:41 -0000
Message-ID: <158375980108.9451.4774391630507215736@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309113623.24208-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200309113623.24208-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_intel=5Frps=2Eactive_for_racy_reads?=
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

Series: drm/i915/gt: Mark up intel_rps.active for racy reads
URL   : https://patchwork.freedesktop.org/series/74448/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8097 -> Patchwork_16879
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16879/index.html

Known issues
------------

  Here are the changes found in Patchwork_16879 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][1] ([i915#424]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16879/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][3] ([fdo#111407]) -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16879/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (46 -> 43)
------------------------------

  Additional (5): fi-glk-dsi fi-snb-2520m fi-elk-e7500 fi-bsw-kefka fi-tgl-y 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8097 -> Patchwork_16879

  CI-20190529: 20190529
  CI_DRM_8097: 2e46e269a2843c5d0b6c72bfb7fa9d9913c15415 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5499: 2e23cf6f63fc6ba1d9543f8327698d6f21813cec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16879: e3fe3d282bea9e1aff79c4bf0c0e2c513f94cbe6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3fe3d282bea drm/i915/gt: Mark up intel_rps.active for racy reads

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16879/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
