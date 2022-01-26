Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2949D283
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 20:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD8010E587;
	Wed, 26 Jan 2022 19:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71FB10E767
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643225518; x=1674761518;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=y2dKW3UlcAhkToQIN6XMSIPG3fSDVgP2WJRW+VL32Cs=;
 b=nhYipv/dQrKU6G+CPVVJMpK+/TGtaEgEe+TFzaRiS2lzZQdyV7NMkAnc
 j2MyScL3gaQsURqQTJq/eMRD1/ZuFbwSlm25elfHCB4pgixHcA9OV+TJa
 CZ6psPTy/+jSpi9MEofzCtXajO4pLSRfA/8VTidkOZd54WcZPwNX0JCJR
 6QReaZhLPcR8i1eu9f68x3Artl8uV94Flab5vj+FJCdQKj16Ae2HRWWqc
 j4JnjZJ5ON7O6ZkNbnJarWCAiaaMDu2wkkK2mh5t2whduk+pUjzUG4y6n
 KZuJ4WvanRlDp3VTw5wz3tXuO0ClUlt3L0I7ROEP4LsYHea9Jx+QF6efj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246852471"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246852471"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 11:31:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="520913060"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 11:31:57 -0800
Date: Wed, 26 Jan 2022 21:31:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20220126193153.GG1958725@ideak-desk.fi.intel.com>
References: <20220126104356.2022975-1-imre.deak@intel.com>
 <164322285388.25401.4062608184852578490@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164322285388.25401.4062608184852578490@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Fix_TypeC_PHY-ready_status_readout?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 06:47:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp: Fix TypeC PHY-ready status readout
> URL   : https://patchwork.freedesktop.org/series/99359/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11145 -> Patchwork_22111
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22111 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22111, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/index.html
> 
> Participating hosts (46 -> 43)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22111:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hugepages:
>     - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-rkl-guc/igt@i915_selftest@live@hugepages.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-rkl-guc/igt@i915_selftest@live@hugepages.html

Looks like some GuC related issue, the patch shouldn't have an effect on
RKL, which doesn't support TypeC outputs.

<3> [219.132608] i915 0000:00:02.0: [drm] *ERROR* CT: Failed to process request 6000 (-EOPNOTSUPP)
<3> [219.132641] DMAR: [DMA Write NO_PASID] Request device [00:02.0] fault addr 0xfcffc000 [fault reason 0x07] Next page table ptr is invalid
<3> [219.132665] i915 0000:00:02.0: [drm] *ERROR* CT: Failed to process CT message (-EOPNOTSUPP) 02 00 00 00 00 60 00 90 1b 10 00 00

> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-6:          [DMESG-FAIL][3] ([i915#4494]) -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22111 that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - fi-ilk-650:         [FAIL][5] -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-ilk-650/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-ilk-650/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_cs_nop@nop-compute0:
>     - fi-ilk-650:         NOTRUN -> [SKIP][7] ([fdo#109271]) +39 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - fi-bdw-5557u:       [PASS][8] -> [INCOMPLETE][9] ([i915#146])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#2190])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][12] -> [INCOMPLETE][13] ([i915#2940])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2600:        [PASS][14] -> [INCOMPLETE][15] ([i915#3921])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - fi-ilk-650:         NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][18] ([fdo#109271]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#533])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-skl-6600u:       NOTRUN -> [FAIL][20] ([i915#4547])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][21] ([fdo#109271]) +57 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-pnv-d510/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-bsw-n3050:       NOTRUN -> [FAIL][22] ([fdo#109271] / [i915#1436] / [i915#2722] / [i915#3428] / [i915#4312])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-bsw-n3050/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_flink_basic@bad-flink:
>     - fi-skl-6600u:       [FAIL][23] ([i915#4547]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11145/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
>   [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11145 -> Patchwork_22111
> 
>   CI-20190529: 20190529
>   CI_DRM_11145: 348109d01999f0feea85e8f336dc804b782ab870 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6335: 2b30115edd692b60d16cb10375730a87f51f0e37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22111: 305a38156d67a5ebcfdd5953d4db9d0fe10e0e1a @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 305a38156d67 drm/i915/adlp: Fix TypeC PHY-ready status readout
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22111/index.html
