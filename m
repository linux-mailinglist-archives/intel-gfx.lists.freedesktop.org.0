Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECED4B9AA4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771C410E9D1;
	Thu, 17 Feb 2022 08:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2E610E9CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645085321; x=1676621321;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=T/+5IsReqCiv+IUUslSeni+fKEKmEzvLpsEpjw7Jh/c=;
 b=KMydSKlFT5ZSO18wD8fnpbX5Hmc0MqHd9DRzaC9faYA87UmvwqZLqJVG
 p3thswWtiC7i6+Y8ZksLSbSdb69gkMzOEVxzslrzuFMA4j8vKYtPffiJn
 prMblTa/Sds7AJlsXk9LZ1RjBDvqZqer0nB5QsEjs5BjjHnm8bWikq4A6
 IxcwOiVI0DOxBXfZJGV2Fnxi22r0tnTJT+KJMW9VrBGcZbzoaS0v7s0HN
 qTuR0NhchGQRnDaZKatRbIzJUkp8I5qFU650+yniZUPIeInwqcuDLyHxL
 mWrtV54Dce3oeDMZB71Iv/cUBROYWfr+Je7Pg+MdGhz/OFIEuttQQUAZm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="337264032"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="337264032"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:08:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="540820723"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2022 00:08:39 -0800
Date: Thu, 17 Feb 2022 13:38:54 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220217080852.GA11187@intel.com>
References: <20220215053115.6023-1-ramalingam.c@intel.com>
 <164500697066.16091.18233488500324306265@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <164500697066.16091.18233488500324306265@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Skip_the_i915=5Fperf=5Finit_for_dg2?=
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

On 2022-02-16 at 10:22:50 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/perf: Skip the i915_perf_init for dg2
> URL   : https://patchwork.freedesktop.org/series/100150/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11230_full -> Patchwork_22276_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22276_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22276_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22276_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
>     - shard-iclb:         [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
>     - shard-glk:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

These failures are not related to the change.

Ram
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_ctx_shared@q-smoketest@vcs0:
>     - {shard-rkl}:        ([PASS][6], [PASS][7]) -> [DMESG-WARN][8]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_ctx_shared@q-smoketest@vcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@gem_ctx_shared@q-smoketest@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/igt@gem_ctx_shared@q-smoketest@vcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - {shard-rkl}:        NOTRUN -> [DMESG-WARN][9]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][10] +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22276_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - {shard-rkl}:        ([PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][46] ([i915#4991])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl2/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@bsd2:
>     - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#2410])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-hostile@bsd2.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][49] ([i915#3371])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][50] ([i915#4547])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl8/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-kbl:          [PASS][51] -> [FAIL][52] ([i915#2842]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-kbl7/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#2842])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][55] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-iclb:         [PASS][58] -> [INCOMPLETE][59] ([i915#1895])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2190])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#3297])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109289])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@gen3_mixed_blits.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109289]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][64] -> [DMESG-WARN][65] ([i915#1436] / [i915#716])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][66] -> [INCOMPLETE][67] ([i915#3921])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-snb4/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][68] ([i915#3763])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3777]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615] / [i915#3689])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278]) +5 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-cmp-planar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][80] ([i915#1319])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#3444])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278] / [fdo#109279])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109274] / [fdo#109278])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][85] -> [FAIL][86] ([i915#2346])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>     - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#2346] / [i915#533])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [PASS][90] -> [INCOMPLETE][91] ([i915#4839])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [PASS][92] -> [DMESG-WARN][93] ([i915#180]) +6 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#4911])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][96] -> [SKIP][97] ([i915#3701]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#2546]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +48 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +54 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109280]) +4 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +22 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-kbl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#1188])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_invalid_mode@clock-too-high:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#4278])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb6/igt@kms_invalid_mode@clock-too-high.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#533])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][112] ([i915#265])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#3536])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-tglb:         NOTRUN -> [FAIL][115] ([i915#132] / [i915#3467])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][118] -> [FAIL][119] ([i915#31])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk3/igt@kms_setmode@basic.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2530])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb5/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#2530])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb7/igt@nouveau_crc@pipe-c-source-outp-inactive.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#2994])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-iclb6/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-apl2/igt@sysfs_clients@pidname.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_allocator@two-level-inception-interruptible:
>     - {shard-rkl}:        [INCOMPLETE][124] -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@api_intel_allocator@two-level-inception-interruptible.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-5/igt@api_intel_allocator@two-level-inception-interruptible.html
> 
>   * igt@fbdev@read:
>     - {shard-rkl}:        [SKIP][126] ([i915#2582]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@fbdev@read.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@gem_ctx_isolation@dirty-switch@vecs0:
>     - {shard-rkl}:        [DMESG-WARN][128] -> [PASS][129] +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_ctx_isolation@dirty-switch@vecs0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-1/igt@gem_ctx_isolation@dirty-switch@vecs0.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [INCOMPLETE][130] ([i915#4547]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@bcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-skl8/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - {shard-rkl}:        [INCOMPLETE][132] ([i915#3371]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@gem_exec_capture@pi@rcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][134] ([i915#2846]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][136] ([i915#2842]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl7/igt@i915_suspend@debugfs-reader.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-kbl3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][140] ([i915#118]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][142] ([i915#1845]) -> [PASS][143] +4 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        ([SKIP][144], [SKIP][145]) ([i915#1845] / [i915#4098]) -> [PASS][146]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][147] ([i915#1845] / [i915#4098]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - {shard-rkl}:        [SKIP][149] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-75.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        ([SKIP][151], [SKIP][152]) ([fdo#112022] / [i915#4070]) -> [PASS][153]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
>     - {shard-rkl}:        [SKIP][154] ([fdo#112022] / [i915#4070]) -> [PASS][155] +1 similar issue
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cu
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22276/index.html
