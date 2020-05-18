Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE01D7C00
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B615989C1F;
	Mon, 18 May 2020 14:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36FB789C1C;
 Mon, 18 May 2020 14:57:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F506A47E1;
 Mon, 18 May 2020 14:57:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 18 May 2020 14:57:55 -0000
Message-ID: <158981387503.31686.5220885777610667353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_dbuf_slice_mask_when_turning_off_all_the_pipes_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Fix dbuf slice mask when turning off all the pipes (rev2)
URL   : https://patchwork.freedesktop.org/series/77322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8494 -> Patchwork_17690
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/index.html

Known issues
------------

  Here are the changes found in Patchwork_17690 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-FAIL][2] ([i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-bsw-nick/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/fi-bsw-nick/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][3] -> [INCOMPLETE][4] ([i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/fi-kbl-r/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-whl-u:           [INCOMPLETE][5] ([i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8494/fi-whl-u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/fi-whl-u/igt@i915_selftest@live@execlists.html

  
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8494 -> Patchwork_17690

  CI-20190529: 20190529
  CI_DRM_8494: 3d15348fde9b998e754da0b0655baf02b98e7f17 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5657: 649eae5c905a7460b44305800f95db83a6dd47cb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17690: fed553859a0fa75b2dac63ac5738561c2094e1ed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fed553859a0f drm/i915: Fix dbuf slice mask when turning off all the pipes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17690/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
