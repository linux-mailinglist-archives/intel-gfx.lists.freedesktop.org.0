Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4873D52ABCF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 21:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E21410E433;
	Tue, 17 May 2022 19:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6839A10E134
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 19:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652815180; x=1684351180;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I4tUS6KR2w3nYdDiXW8z1y+PLoLUklfj3bBKdSsqtz4=;
 b=QuS9ARSjA8vFdgA20N7kzgqq/01o0rSMhh3Z4kuRUFbAUU2YhgsUetC/
 Kgzwn+cbyNJYW01+vJbLp7EAt2/dnaPYmjTxFdCjn/AljOw4iCtZ/+/o0
 Two05cj+f6W6gTzsf0m3KOBliNEUuhwRYNPdLTLS5FuX3JiqDQzN2xYWD
 2fYigug+zuamfLTBx4PXiPj31r+dW13QmG6h306u+N6T20y4UrwyMTfTt
 b0fy6o7NHCN/W6SE6+e4rNm8alsxRI7fZf5RueeW3IL3iRX8MnXU6I6zF
 0kT1AxbB/7AFqnIAYZpWxzhOBX64wXnB9ZK2LZghz6jLAHsTPPkVAEf4q w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="296582481"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="296582481"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 12:19:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="673007455"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 12:19:39 -0700
Date: Tue, 17 May 2022 12:19:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YoP1SaYgzmXUUA8X@mdroper-desk1.amr.corp.intel.com>
References: <20220517032005.2694737-1-matthew.d.roper@intel.com>
 <165281448805.31034.8218319283462524431@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165281448805.31034.8218319283462524431@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_SSEU_handling_updates_=28rev4=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 17, 2022 at 07:08:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: SSEU handling updates (rev4)
> URL   : https://patchwork.freedesktop.org/series/103244/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11666 -> Patchwork_103244v4
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103244v4 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103244v4, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/index.html
> 
> Participating hosts (41 -> 41)
> ------------------------------
> 
>   Additional (1): fi-skl-guc 
>   Missing    (1): bat-rpls-2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103244v4:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@prime_vgem@basic-fence-read:
>     - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/fi-kbl-soraka/igt@prime_vgem@basic-fence-read.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-kbl-soraka/igt@prime_vgem@basic-fence-read.html

The results link shows 'SUCCESS' so I'm not sure why this was marked as
INCOMPLETE here?

Doesn't appear to be related to this series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103244v4 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-skl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-skl-guc/igt@gem_lmem_swapping@basic.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-kefka:       [PASS][4] -> [INCOMPLETE][5] ([i915#2940] / [i915#5801])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@gem:
>     - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][6] ([i915#4528])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-pnv-d510/igt@i915_selftest@live@gem.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2600:        [PASS][7] -> [INCOMPLETE][8] ([i915#3921])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-skl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-skl-guc:         NOTRUN -> [SKIP][10] ([fdo#109271]) +11 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-skl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#533])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@runner@aborted:
>     - fi-bsw-kefka:       NOTRUN -> [FAIL][12] ([fdo#109271] / [i915#3428] / [i915#4312])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-bsw-kefka/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@objects:
>     - {bat-dg2-9}:        [DMESG-WARN][13] ([i915#5763]) -> [PASS][14] +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/bat-dg2-9/igt@i915_selftest@live@objects.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/bat-dg2-9/igt@i915_selftest@live@objects.html
> 
>   * igt@i915_selftest@live@requests:
>     - fi-pnv-d510:        [DMESG-FAIL][15] ([i915#4528]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/fi-pnv-d510/igt@i915_selftest@live@requests.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-pnv-d510/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_selftest@live@reset:
>     - {fi-jsl-1}:         [INCOMPLETE][17] -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/fi-jsl-1/igt@i915_selftest@live@reset.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/fi-jsl-1/igt@i915_selftest@live@reset.html
> 
>   * igt@kms_busy@basic@flip:
>     - {bat-adlp-6}:       [DMESG-WARN][19] ([i915#3576]) -> [PASS][20] +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/bat-adlp-6/igt@kms_busy@basic@flip.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/bat-adlp-6/igt@kms_busy@basic@flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
>   [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
>   [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801
>   [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11666 -> Patchwork_103244v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11666: 73bb9fa49db3df15c6024a743a48139b1fcdcf7e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6476: 08aa9296163b94cf4c529fc890ae3e90e21c3cdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103244v4: 73bb9fa49db3df15c6024a743a48139b1fcdcf7e @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> f79229c733a2 drm/i915/pvc: Add SSEU changes
> 995c1647a0d6 drm/i915/sseu: Disassociate internal subslice mask representation from uapi
> 6e28799e6216 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
> 95fd2c3dc7e9 drm/i915/sseu: Simplify gen11+ SSEU handling
> 9db3639b067c drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
> 0f70c4e7a760 drm/i915/xehp: Use separate sseu init function
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
