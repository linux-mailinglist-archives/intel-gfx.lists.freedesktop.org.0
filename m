Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2343946BF3A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 16:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E1CEB673;
	Tue,  7 Dec 2021 15:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1717EB62F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 15:23:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="224855053"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="224855053"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 07:23:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515315601"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 07:23:36 -0800
Date: Tue, 7 Dec 2021 20:53:17 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211207152317.GA8154@intel.com>
References: <20211207003845.12419-1-yu.bruce.chang@intel.com>
 <163884580746.10818.3494580626939614756@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163884580746.10818.3494580626939614756@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Follow__up_on_increase_timeout_in_i915=5Fgem?=
 =?utf-8?q?=5Fcontexts_selftests_=28rev2=29?=
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

On 2021-12-07 at 02:56:47 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Follow up on increase timeout in i915_gem_contexts selftests (rev2)
> URL   : https://patchwork.freedesktop.org/series/97577/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10965_full -> Patchwork_21767_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21767_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21767_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21767_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@coherency:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl8/igt@i915_selftest@live@coherency.html

IMHO, This failure is not related the change. So going ahead with the
merger of the commit.

Ram.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21767_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#4386])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl1/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl8/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl8/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl8/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl6/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl6/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl7/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +7 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][54] ([i915#4547])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl10/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#2842]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842]) +4 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_params@readonly:
>     - shard-skl:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@gem_exec_params@readonly.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@gem_exec_params@readonly.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked:
>     - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#118]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk7/igt@gem_exec_whisper@basic-fds-forked.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111656])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3323])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen7_exec_parse@cmd-crossing-page:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109289])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@gen7_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][71] -> [DMESG-WARN][72] ([i915#1436] / [i915#716])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         NOTRUN -> [FAIL][73] ([i915#454])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#4387])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][75] ([i915#1886] / [i915#2291])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl8/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278] / [i915#3886])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#3689]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111615] / [i915#3689])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109284] / [fdo#111827])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-max:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][86] ([i915#1319])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#3359])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109278])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-iclb:         [PASS][90] -> [FAIL][91] ([i915#2346])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@dpms-vs-vblank-race-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#407])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk9/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-hdmi-a1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk1/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>     - shard-apl:          [PASS][94] -> [FAIL][95] ([i915#79])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [PASS][96] -> [SKIP][97] ([i915#3701])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-iclb:         [PASS][98] -> [FAIL][99] ([i915#2546])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>     - shard-glk:          [PASS][100] -> [FAIL][101] ([i915#1888] / [i915#2546])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109280])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][103] ([i915#180])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#111825]) +10 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][108] -> [SKIP][109] ([fdo#109441]) +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-tglb:         NOTRUN -> [FAIL][110] ([i915#132] / [i915#3467])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl8/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109502])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@kms_vrr@flip-suspend.html
> 
>   * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
>     - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271]) +32 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +122 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          NOTRUN -> [FAIL][115] ([i915#1542])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_pcopy@test3_5:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109291])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@prime_nv_pcopy@test3_5.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#109295])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb5/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl6/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl8/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2994])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb1/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][121] ([i915#658]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb5/igt@feature_discovery@psr2.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][123] ([i915#3063] / [i915#3648]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb6/igt@gem_eio@unwedge-stress.html
>     - shard-skl:          [TIMEOUT][125] ([i915#3063]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@gem_eio@unwedge-stress.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [INCOMPLETE][127] ([i915#4547]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][129] ([i915#2846]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
>     - shard-glk:          [FAIL][131] ([i915#2846]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][133] ([i915#2842]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][135] ([i915#2842]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][137] ([i915#2842]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_reloc@basic-scanout@vecs0:
>     - {shard-rkl}:        [SKIP][139] ([i915#3639]) -> [PASS][140] +3 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@gem_exec_reloc@basic-scanout@vecs0.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-forked-all:
>     - shard-glk:          [DMESG-WARN][141] ([i915#118]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-skl:          [INCOMPLETE][143] ([i915#198]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl10/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_backlight@bad-brightness:
>     - {shard-rkl}:        [SKIP][145] ([i915#3012]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][147] ([i915#2521]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [DMESG-FAIL][149] ([i915#118] / [i915#1888]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        ([SKIP][151], [SKIP][152]) ([i915#1845]) -> [PASS][153]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][154] ([i915#1845]) -> [PASS][155] +10 similar issues
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-b-ctm-max:
>     - {shard-rkl}:        [SKIP][156] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_color@pipe-b-ctm-max.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
>     - shard-glk:          [FAIL][158] ([i915#3444]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
>     - {shard-rkl}:        [SKIP][160] ([fdo#112022] / [i915#4070]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
>     - {shard-rkl}:        [SKIP][162] ([fdo#111825] / [i915#4070]) -> [PASS][163] +1 similar issue
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][164] ([i915#2346]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [FAIL][166] ([i915#2346]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
>     - {shard-rkl}:        [SKIP][168] ([fdo#1
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21767/index.html
