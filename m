Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CF7B21D4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8281110E68B;
	Thu, 28 Sep 2023 15:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928CB10E68B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695916514; x=1727452514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=987imVvR1FxDoe7x/fL+euleRwAbAYQZ4tg+mGYVLOU=;
 b=oCSlvUsm7kc5dE9usd5pZuBFlje4X4jFCGDulRbaU6fASIjsth6wptGq
 Fp3VCHUfckB9hk6pamtNezrH52C4jAd+tSZSx2m2VKseaks96qJ9yV5KA
 OTVksQKVKhqYVfUeysIckSyagogXJ4YAURQpCW4/SgpdDew5BviiJcrPl
 0H3U63RBJ2ZKNLzcWWb+cyp4O9ZeYbj90u8HVPCmaypROuixtPBTEOEfN
 NAaO3OGFJudaXFJpkePwarJfWpgzZkc8rFQaDyX11RHH7sFXW7N71w02V
 5xwiP8mavZbPaWPkPDWzLFNEMzJyN+pzr+rcH/f6g3X0Oa1UWyR9LL9m/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="413006262"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="413006262"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 08:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="996609009"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="996609009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga006.fm.intel.com with SMTP; 28 Sep 2023 08:55:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Sep 2023 18:55:05 +0300
Date: Thu, 28 Sep 2023 18:55:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZRWh2RGfvGJuKz0Q@intel.com>
References: <20230922133003.150578-1-vinod.govindapillai@intel.com>
 <169543387597.3502.5441803509076450419@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169543387597.3502.5441803509076450419@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGZi?=
 =?utf-8?q?c_on_any_planes_=28rev3=29?=
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

On Sat, Sep 23, 2023 at 01:51:15AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: fbc on any planes (rev3)
> URL   : https://patchwork.freedesktop.org/series/123180/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13671 -> Patchwork_123180v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**

I was going to push these, but looks like CI wasn't happy. Please figure
out what happened.

> 
>   Serious unknown changes coming with Patchwork_123180v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123180v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/index.html
> 
> Participating hosts (39 -> 38)
> ------------------------------
> 
>   Additional (2): bat-dg2-8 fi-hsw-4770 
>   Missing    (3): fi-kbl-soraka bat-dg2-9 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_123180v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-elk-e7500:       [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_123180v3 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - fi-hsw-4770:        NOTRUN -> [FAIL][3] ([i915#8293])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/fi-hsw-4770/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_mmap@basic:
>     - bat-dg2-8:          NOTRUN -> [SKIP][4] ([i915#4083])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - bat-dg2-8:          NOTRUN -> [SKIP][5] ([i915#4077]) +2 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-dg2-8:          NOTRUN -> [SKIP][6] ([i915#4079]) +1 other test skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-8:          NOTRUN -> [SKIP][7] ([i915#6621])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-dg2-8:          NOTRUN -> [SKIP][8] ([i915#6645])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-8:          NOTRUN -> [SKIP][9] ([i915#5190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-8:          NOTRUN -> [SKIP][10] ([i915#4215] / [i915#5190])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-8:          NOTRUN -> [SKIP][11] ([i915#4212]) +6 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - bat-dg2-8:          NOTRUN -> [SKIP][12] ([i915#4212] / [i915#5608])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-8:          NOTRUN -> [SKIP][13] ([i915#4103] / [i915#4213] / [i915#5608]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-8:          NOTRUN -> [SKIP][14] ([fdo#109285])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-dg2-8:          NOTRUN -> [SKIP][15] ([i915#5274])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [PASS][16] -> [FAIL][17] ([IGT#3])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [PASS][18] -> [ABORT][19] ([i915#8668])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - bat-dg2-8:          NOTRUN -> [SKIP][20] ([i915#1072]) +3 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-8:          NOTRUN -> [SKIP][21] ([i915#3555])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-8:          NOTRUN -> [SKIP][22] ([i915#3708])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-8:          NOTRUN -> [SKIP][23] ([i915#3708] / [i915#4077]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-dg2-8:          NOTRUN -> [SKIP][24] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-8/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - {bat-dg2-13}:       [DMESG-WARN][25] ([i915#7952]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13671 -> Patchwork_123180v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13671: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7498: 05d14fd260a3cf9dc00ed24733d5589eee32ec08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_123180v3: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 17b0d1ae438d drm/i915/lnl: update the supported plane formats with FBC
> 61b1ba4b7137 drm/i915/lnl: possibility to enable FBC on first three planes
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123180v3/index.html

-- 
Ville Syrjälä
Intel
