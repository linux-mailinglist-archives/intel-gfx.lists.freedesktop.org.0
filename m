Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9A4180C31
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 00:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6A26E3D6;
	Tue, 10 Mar 2020 23:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976FE6E3D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 23:18:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 16:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="415367538"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with SMTP; 10 Mar 2020 16:18:22 -0700
Date: Tue, 10 Mar 2020 16:18:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200310231822.GA1789758@mdroper-desk1.amr.corp.intel.com>
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
 <158386140664.5456.1315860918521157128@emeril.freedesktop.org>
 <7699d7c4b06d13b5a5d253a9f92b73ce855e9646.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7699d7c4b06d13b5a5d253a9f92b73ce855e9646.camel@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIEdl?=
 =?utf-8?q?n11_workarounds?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 03:28:01PM -0700, Souza, Jose wrote:
> On Tue, 2020-03-10 at 17:30 +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Gen11 workarounds
> > URL   : https://patchwork.freedesktop.org/series/74475/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_8106 -> Patchwork_16900
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_16900 absolutely need
> > to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the
> > changes
> >   introduced in Patchwork_16900, please notify your bug team to allow
> > them
> >   to document this new failure mode, which will reduce false
> > positives in CI.
> > 
> >   External URL: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/index.html
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in
> > Patchwork_16900:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@i915_selftest@live@dmabuf:
> >     - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] +33 similar
> > issues
> >    [1]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
> >    [2]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
> 
> Looks like there some problem with the WAs in patch 4 and 7.

Wa_1406306137 should actually move to the context section; that register
is part of the context on gen11, but not on gen12, so I'll do that in
version 2.

Wa_1409178092 had problems when it was first implemented in the driver
(under a different name).  My hope was that other MCR changes (and
moving the WA to the proper place) would fix those problems, but it
still seems that the workaround doesn't stick.  I'll probably just drop
it again in v2 while we seek more guidance from the hardware people.


Matt


> 
> > 
> >   * igt@i915_selftest@live@memory_region:
> >     - fi-icl-y:           [PASS][3] -> [DMESG-WARN][4] +35 similar
> > issues
> >    [3]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-y/igt@i915_selftest@live@memory_region.html
> >    [4]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-y/igt@i915_selftest@live@memory_region.html
> > 
> >   * igt@i915_selftest@live@perf:
> >     - fi-icl-guc:         [PASS][5] -> [DMESG-WARN][6] +35 similar
> > issues
> >    [5]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-guc/igt@i915_selftest@live@perf.html
> >    [6]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-guc/igt@i915_selftest@live@perf.html
> > 
> >   * igt@i915_selftest@live@vma:
> >     - fi-icl-dsi:         [PASS][7] -> [DMESG-WARN][8] +35 similar
> > issues
> >    [7]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-dsi/igt@i915_selftest@live@vma.html
> >    [8]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-dsi/igt@i915_selftest@live@vma.html
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or
> > statuses.
> >   They do not affect the overall result.
> > 
> >   * igt@i915_selftest@live@mman:
> >     - {fi-ehl-1}:         [PASS][9] -> [DMESG-WARN][10] +36 similar
> > issues
> >    [9]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ehl-1/igt@i915_selftest@live@mman.html
> >    [10]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-ehl-1/igt@i915_selftest@live@mman.html
> > 
> >   * {igt@i915_selftest@live@ring_submission}:
> >     - fi-icl-y:           [PASS][11] -> [DMESG-WARN][12]
> >    [11]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-y/igt@i915_selftest@live@ring_submission.html
> >    [12]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-y/igt@i915_selftest@live@ring_submission.html
> >     - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14]
> >    [13]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-u2/igt@i915_selftest@live@ring_submission.html
> >    [14]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-u2/igt@i915_selftest@live@ring_submission.html
> >     - fi-icl-dsi:         [PASS][15] -> [DMESG-WARN][16]
> >    [15]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-dsi/igt@i915_selftest@live@ring_submission.html
> >    [16]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-dsi/igt@i915_selftest@live@ring_submission.html
> >     - fi-icl-guc:         [PASS][17] -> [DMESG-WARN][18]
> >    [17]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-guc/igt@i915_selftest@live@ring_submission.html
> >    [18]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-guc/igt@i915_selftest@live@ring_submission.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_16900 that come from known
> > issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_exec_suspend@basic-s4-devices:
> >     - fi-tgl-y:           [PASS][19] -> [FAIL][20] ([CI#94])
> >    [19]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
> >    [20]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
> > 
> >   * igt@i915_selftest@live@requests:
> >     - fi-icl-dsi:         [PASS][21] -> [DMESG-WARN][22]
> > ([fdo#109644] / [fdo#110464])
> >    [21]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-dsi/igt@i915_selftest@live@requests.html
> >    [22]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-dsi/igt@i915_selftest@live@requests.html
> >     - fi-icl-u2:          [PASS][23] -> [DMESG-WARN][24]
> > ([fdo#109644] / [fdo#110464])
> >    [23]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-u2/igt@i915_selftest@live@requests.html
> >    [24]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-u2/igt@i915_selftest@live@requests.html
> >     - fi-icl-y:           [PASS][25] -> [DMESG-WARN][26]
> > ([fdo#109644] / [fdo#110464])
> >    [25]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-y/igt@i915_selftest@live@requests.html
> >    [26]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-y/igt@i915_selftest@live@requests.html
> >     - fi-icl-guc:         [PASS][27] -> [DMESG-WARN][28]
> > ([fdo#109644] / [fdo#110464])
> >    [27]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-guc/igt@i915_selftest@live@requests.html
> >    [28]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-guc/igt@i915_selftest@live@requests.html
> > 
> >   * igt@kms_chamelium@common-hpd-after-suspend:
> >     - fi-icl-u2:          [PASS][29] -> [DMESG-WARN][30] ([IGT#4] /
> > [i915#263])
> >    [29]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
> >    [30]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
> > 
> >   * igt@vgem_basic@dmabuf-fence:
> >     - fi-tgl-y:           [PASS][31] -> [DMESG-WARN][32] ([CI#94] /
> > [i915#402]) +1 similar issue
> >    [31]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
> >    [32]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_flink_basic@bad-open:
> >     - fi-tgl-y:           [DMESG-WARN][33] ([CI#94] / [i915#402]) ->
> > [PASS][34]
> >    [33]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@gem_flink_basic@bad-open.html
> >    [34]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/fi-tgl-y/igt@gem_flink_basic@bad-open.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when
> > computing
> >           the status of the difference (SUCCESS, WARNING, or
> > FAILURE).
> > 
> >   [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
> >   [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
> >   [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
> >   [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
> >   [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
> >   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
> > 
> > 
> > Participating hosts (44 -> 36)
> > ------------------------------
> > 
> >   Additional (3): fi-bdw-5557u fi-cfl-8109u fi-kbl-7500u 
> >   Missing    (11): fi-bsw-n3050 fi-hsw-4200u fi-skl-6770hq fi-hsw-
> > peppy fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-byt-clapper
> > fi-bdw-samus fi-kbl-r 
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * CI: CI-20190529 -> None
> >   * Linux: CI_DRM_8106 -> Patchwork_16900
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @
> > git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> >   Patchwork_16900: a995cd45a7e572470849cf32c088b872f7dd8aa1 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > 
> > == Linux commits ==
> > 
> > a995cd45a7e5 drm/i915: Add Wa_1409178092:icl,ehl
> > 4d09f0159ae0 drm/i915: Add Wa_1605460711 / Wa_1408767742 to ICL and
> > EHL
> > e33fb022adac drm/i915: Apply Wa_1406680159:icl, ehl as an engine
> > workaround
> > 9a81ad532448 drm/i915: Add Wa_1406306137:icl,ehl
> > 682a3994e88f drm/i915: Add Wa_1604278689:icl,ehl
> > c6b5ba431538 drm/i915: Add Wa_1207131216:icl,ehl
> > 76da0301fb50 drm/i915: Handle all MCR ranges
> > 
> > == Logs ==
> > 
> > For more details see: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16900/index.html
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
