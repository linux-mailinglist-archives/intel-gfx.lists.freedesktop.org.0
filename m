Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDD81729A1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 21:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1957E6E0FB;
	Thu, 27 Feb 2020 20:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38E2E6E0FB;
 Thu, 27 Feb 2020 20:43:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 317C1A0088;
 Thu, 27 Feb 2020 20:43:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 27 Feb 2020 20:43:39 -0000
Message-ID: <158283621919.29657.17772264644189478337@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Proper_dbuf_global_state_=28rev3=29?=
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

Series: drm/i915: Proper dbuf global state (rev3)
URL   : https://patchwork.freedesktop.org/series/73421/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8021 -> Patchwork_16739
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/index.html

Known issues
------------

  Here are the changes found in Patchwork_16739 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([i915#217])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217


Participating hosts (49 -> 41)
------------------------------

  Additional (2): fi-skl-lmem fi-tgl-dsi 
  Missing    (10): fi-ilk-m540 fi-tgl-u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-8809g fi-icl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8021 -> Patchwork_16739

  CI-20190529: 20190529
  CI_DRM_8021: 98e43281da271731d056080d696c143ca7e07e35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16739: 9cba9c99fb782757a79cbec8dd06e5a207d1220e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9cba9c99fb78 drm/i915: Check slice mask for holes
1fc35297be7f drm/i915: Do a bit more initial readout for dbuf
5d4ec45f7e49 drm/i915: Encapsulate dbuf state handling harder
80543eb34ce4 drm/i915: Extract intel_crtc_dbuf_weights()
aa3deb4ba4f5 drm/i915: Move pipe ddb entries into the dbuf state
373ddcca596a drm/i915: Introduce skl_ddb_entry_for_slices()
3f877cd02847 drm/i915: Introduce intel_dbuf_slice_size()
45c49c9f3b73 drm/i915: Pass the crtc to skl_compute_dbuf_slices()
7f9190b0dc0b drm/i915: Extract intel_crtc_ddb_weight()
35835c92bd7f drm/i915: Clean up dbuf debugs during .atomic_check()
2b355bb11548 drm/i915: Move the dbuf pre/post plane update
071b62e2fe20 drm/i915: Nuke skl_ddb_get_hw_state()
e3028c82388d drm/i915: Introduce proper dbuf state
a684f63e9f43 drm/i915: Unify the low level dbuf code
391eab3b022c drm/i915: Polish some dbuf debugs
047f693c4cfa drm/i915: Make skl_compute_dbuf_slices() behave consistently for all platforms
73430ed2f955 drm/i915: Use a sentinel to terminate the dbuf slice arrays
2786de40d65c drm/i915: Add missing commas to dbuf tables
c2f2161d6505 drm/i915: Remove garbage WARNs
3643e15727b1 drm/i915: Handle some leftover s/intel_crtc/crtc/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16739/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
