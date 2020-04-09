Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFF81A344B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 14:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207A26E11D;
	Thu,  9 Apr 2020 12:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98C496E130;
 Thu,  9 Apr 2020 12:43:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9257EA3ECB;
 Thu,  9 Apr 2020 12:43:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Apr 2020 12:43:14 -0000
Message-ID: <158643619459.11550.1747966408987184210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409110101.18400-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200409110101.18400-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_dma-buf=3A_Prettify_typecasts_for_d?=
 =?utf-8?q?ma-fence-chain?=
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

Series: series starting with [1/3] dma-buf: Prettify typecasts for dma-fence-chain
URL   : https://patchwork.freedesktop.org/series/75743/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8283 -> Patchwork_17267
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17267 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17267, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17267/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17267:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17267/fi-icl-y/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8283 and Patchwork_17267:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 43 pass(s)
    - Exec time: [7.47, 31.83] s

  

Known issues
------------

  Here are the changes found in Patchwork_17267 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#1531] / [i915#1581])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-icl-dsi/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17267/fi-icl-dsi/igt@i915_selftest@live@requests.html

  
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-skl-6770hq 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8283 -> Patchwork_17267

  CI-20190529: 20190529
  CI_DRM_8283: a6f4f55d343fea03e11e754b1094dda8cf2538ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5585: 13c0be2fe8669fef08c0d1c44b147c43d1f53d2b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17267: 9118ea143e62d62cfa3d9e4a254b40dddcec845b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9118ea143e62 dma-buf: Exercise dma-fence-chain under selftests
38f765418273 dma-buf: Report signaled links inside dma-fence-chain
5fe27cc9dd40 dma-buf: Prettify typecasts for dma-fence-chain

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17267/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
