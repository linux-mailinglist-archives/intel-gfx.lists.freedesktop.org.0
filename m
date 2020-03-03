Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F9E17850F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 22:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E9576E0FC;
	Tue,  3 Mar 2020 21:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79C346E0F5;
 Tue,  3 Mar 2020 21:48:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71C8EA47E6;
 Tue,  3 Mar 2020 21:48:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 21:48:25 -0000
Message-ID: <158327210543.15379.12682335755840633625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303204345.1859734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303204345.1859734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Drop_inspection_of?=
 =?utf-8?q?_execbuf_flags_during_evict?=
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

Series: series starting with [CI,1/3] drm/i915: Drop inspection of execbuf flags during evict
URL   : https://patchwork.freedesktop.org/series/74217/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8057 -> Patchwork_16804
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/index.html

Known issues
------------

  Here are the changes found in Patchwork_16804 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@prime_vgem@basic-write.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/fi-tgl-y/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-tgl-y/igt@vgem_basic@mmap.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/fi-tgl-y/igt@vgem_basic@mmap.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][9] ([i915#1209]) -> [FAIL][10] ([i915#192] / [i915#193] / [i915#194])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8057/fi-kbl-8809g/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 44)
------------------------------

  Additional (7): fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-kefka fi-skl-lmem fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8057 -> Patchwork_16804

  CI-20190529: 20190529
  CI_DRM_8057: 45ca41e870e508bf9040b308d9ff1ccf7ab779e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5488: 5b6930b4d267f7002c2e9442262e21a725941db5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16804: 2454120ffcb04afbb397c2f1d69a3ae603542992 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2454120ffcb0 drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl
c211e319b482 drm/i915/gem: Extract transient execbuf flags from i915_vma
9535cc82ae64 drm/i915: Drop inspection of execbuf flags during evict

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16804/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
