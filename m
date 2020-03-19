Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B861418B235
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 12:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2576E9FC;
	Thu, 19 Mar 2020 11:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47AED6E291;
 Thu, 19 Mar 2020 11:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EC6CA432F;
 Thu, 19 Mar 2020 11:17:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 19 Mar 2020 11:17:08 -0000
Message-ID: <158461662822.17935.17292564754833317384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_drm_scaling_filter_property_=28rev3=29?=
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

Series: Introduce drm scaling filter property (rev3)
URL   : https://patchwork.freedesktop.org/series/73883/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8158 -> Patchwork_17023
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17023/index.html

Known issues
------------

  Here are the changes found in Patchwork_17023 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-FAIL][2] ([i915#933])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8158/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17023/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [INCOMPLETE][3] ([i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8158/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17023/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8158/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17023/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (40 -> 33)
------------------------------

  Additional (4): fi-icl-dsi fi-elk-e7500 fi-gdg-551 fi-bsw-n3050 
  Missing    (11): fi-kbl-soraka fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-kbl-7500u fi-ivb-3770 fi-cfl-8109u fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8158 -> Patchwork_17023

  CI-20190529: 20190529
  CI_DRM_8158: 513c064047e872bab4113465459e67bece56b99d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17023: b7639a6e88a87032d41d66477b5fb79306ec0f54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b7639a6e88a8 drm/i915: Enable scaling filter for plane and CRTC
2bda386ae840 drm/i915/display: Add Nearest-neighbor based integer scaling support
c0c485082dda drm/i915: Introduce scaling filter related registers and bit fields.
dbd02a4bbf34 drm/drm-kms.rst: Add plane and CRTC scaling filter property documentation
51d1ea0ac87f drm: Introduce plane and CRTC scaling filter properties

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17023/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
