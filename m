Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD71A33F1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 14:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6F06E123;
	Thu,  9 Apr 2020 12:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB4656E123;
 Thu,  9 Apr 2020 12:17:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0EB6A47DF;
 Thu,  9 Apr 2020 12:17:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 09 Apr 2020 12:17:25 -0000
Message-ID: <158643464562.11550.6118337414753799154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409091706.690045-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200409091706.690045-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/4=5D_drm/i915/perf=3A_break_OA_conf?=
 =?utf-8?q?ig_buffer_object_in_2?=
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

Series: series starting with [v5,1/4] drm/i915/perf: break OA config buffer object in 2
URL   : https://patchwork.freedesktop.org/series/75741/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8283 -> Patchwork_17266
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17266 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17266, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17266:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/fi-hsw-4770/igt@i915_selftest@live@perf.html
    - fi-hsw-peppy:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-hsw-peppy/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/fi-hsw-peppy/igt@i915_selftest@live@perf.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-skl-lmem:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/fi-skl-lmem/igt@kms_flip@basic-flip-vs-modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_17266 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8] ([i915#1580])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-skl-6770hq 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8283 -> Patchwork_17266

  CI-20190529: 20190529
  CI_DRM_8283: a6f4f55d343fea03e11e754b1094dda8cf2538ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5585: 13c0be2fe8669fef08c0d1c44b147c43d1f53d2b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17266: 83a8d4534edeb24530274e72d90fc293c9439e13 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

83a8d4534ede drm/i915/perf: enable filtering on multiple contexts
8a7d87df6de1 drm/i915/perf: prepare driver to receive multiple ctx handles
ef7148882b7e drm/i915/perf: stop using the kernel context
579ee6f9f229 drm/i915/perf: break OA config buffer object in 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17266/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
