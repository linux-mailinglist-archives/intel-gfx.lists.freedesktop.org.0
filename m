Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02E48BA9F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 23:19:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6566310E3F1;
	Tue, 11 Jan 2022 22:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E13610E3F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 22:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641939565; x=1673475565;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gpIR2TAbel3cRCxoHVuclP4I9x0IlUApypG+Hhz/fZU=;
 b=fu7n5/ZWkAzVUEh0DQkET96ElF9D7qU6liztVb6VON8DI6BsXguIt4lk
 00lhgGpovgBow529VCt1Wi611vGDZCE4O+PGnhWusa/SVuM/PeG4tsFxy
 EcXytIdd4to2XULfs47WmIsJdaV+Qbjox9x3rhACk27DvRjDMv/GydKrx
 tS3TCIIvrvT5Zl1MILiF4rDbWXeZZCR+ZMAl6SMZENxtfUN4Qgd2rMHFK
 hhhdZrCXn+ZexzwJxgnhZyEUX7v5nGy8PU4GpSAZrWSNa5T0p8sJuen5d
 i7kVSCvFU6QUw+w50ZUmn2la3xYavGEx3IweZPPxqBloKfbmgnDRJSuy6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="267936802"
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="267936802"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 14:19:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="558498185"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 14:19:24 -0800
Date: Tue, 11 Jan 2022 14:19:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yd4Cam54fv2NvtMi@mdroper-desk1.amr.corp.intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <164189793873.24978.16664189900300655352@emeril.freedesktop.org>
 <Yd4CB5zgthVQm+mk@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yd4CB5zgthVQm+mk@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU3Rh?=
 =?utf-8?q?rt_cleaning_up_register_definitions_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 tejasreex.illipilli@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Cc Tejasree since Lakshmi is out at the moment.


Matt

On Tue, Jan 11, 2022 at 02:17:45PM -0800, Matt Roper wrote:
> On Tue, Jan 11, 2022 at 10:45:38AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Start cleaning up register definitions (rev3)
> > URL   : https://patchwork.freedesktop.org/series/98575/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_11061_full -> Patchwork_21961_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_21961_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_21961_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (10 -> 10)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_21961_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@drm_mm@all@insert:
> >     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl10/igt@drm_mm@all@insert.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@drm_mm@all@insert.html
> 
> Timeout:
>         [IGT] Per-test timeout exceeded. Killing the current test with SIGQUIT.
> 
> Seems that https://gitlab.freedesktop.org/drm/intel/-/issues/2485 is
> still an issue.
> 
> > 
> >   * igt@i915_pm_rpm@modeset-lpsp-stress:
> >     - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb5/igt@i915_pm_rpm@modeset-lpsp-stress.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
> Seems like an ext4 filesystem panic after some disk I/O errors:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb7/pstore4-1641881385_Panic_1.txt
> 
> Failing hard drive?
> 
> 
> Neither issue is caused by the register cleanup here.  Patches applied
> to drm-intel-next; thanks for the reviews.
> 
> 
> Matt
> 
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_21961_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_ctx_shared@q-in-order:
> >     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +35 similar issues
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-snb5/igt@gem_ctx_shared@q-in-order.html
> > 
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-skl:          [PASS][6] -> [TIMEOUT][7] ([i915#3063])
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl6/igt@gem_eio@unwedge-stress.html
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl4/igt@gem_eio@unwedge-stress.html
> > 
> >   * igt@gem_exec_balancer@parallel-keep-submit-fence:
> >     - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525])
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> > 
> >   * igt@gem_exec_capture@pi@bcs0:
> >     - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#4547])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl10/igt@gem_exec_capture@pi@bcs0.html
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@gem_exec_capture@pi@bcs0.html
> > 
> >   * igt@gem_exec_capture@userptr:
> >     - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +1 similar issue
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl2/igt@gem_exec_capture@userptr.html
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl5/igt@gem_exec_capture@userptr.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs0:
> >     - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +4 similar issues
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vcs0:
> >     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842])
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vcs1:
> >     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2842])
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> > 
> >   * igt@gem_lmem_swapping@basic:
> >     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl6/igt@gem_lmem_swapping@basic.html
> > 
> >   * igt@gem_lmem_swapping@heavy-verify-random:
> >     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@gem_lmem_swapping@heavy-verify-random.html
> > 
> >   * igt@gem_lmem_swapping@smem-oom:
> >     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613]) +1 similar issue
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl2/igt@gem_lmem_swapping@smem-oom.html
> > 
> >   * igt@gem_pwrite@basic-exhaustion:
> >     - shard-kbl:          NOTRUN -> [WARN][22] ([i915#2658])
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html
> >     - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658])
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl8/igt@gem_pwrite@basic-exhaustion.html
> > 
> >   * igt@gem_pxp@regular-baseline-src-copy-readible:
> >     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4270])
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@gem_pxp@regular-baseline-src-copy-readible.html
> > 
> >   * igt@gem_userptr_blits@dmabuf-sync:
> >     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#3323])
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync.html
> > 
> >   * igt@gem_userptr_blits@input-checking:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl1/igt@gem_userptr_blits@input-checking.html
> > 
> >   * igt@gem_userptr_blits@vma-merge:
> >     - shard-tglb:         NOTRUN -> [FAIL][27] ([i915#3318])
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@gem_userptr_blits@vma-merge.html
> > 
> >   * igt@gen9_exec_parse@bb-start-cmd:
> >     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856]) +1 similar issue
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@gen9_exec_parse@bb-start-cmd.html
> > 
> >   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
> >     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111644] / [i915#1397] / [i915#2411])
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> > 
> >   * igt@kms_async_flips@alternate-sync-async-flip:
> >     - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#2521])
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
> > 
> >   * igt@kms_async_flips@crc:
> >     - shard-skl:          NOTRUN -> [FAIL][32] ([i915#4272])
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_async_flips@crc.html
> > 
> >   * igt@kms_big_fb@linear-32bpp-rotate-0:
> >     - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118])
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-0.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> >     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3743])
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> > 
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> >     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777])
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > 
> >   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
> >     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111614])
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][39] ([i915#3763])
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
> >     - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +1 similar issue
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> > 
> >   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#3689]) +2 similar issues
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html
> > 
> >   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> >     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +7 similar issues
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#111615] / [i915#3689]) +2 similar issues
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
> >     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +2 similar issues
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +3 similar issues
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl8/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_chamelium@hdmi-crc-fast:
> >     - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +8 similar issues
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl8/igt@kms_chamelium@hdmi-crc-fast.html
> > 
> >   * igt@kms_chamelium@hdmi-hpd-storm:
> >     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +5 similar issues
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl7/igt@kms_chamelium@hdmi-hpd-storm.html
> > 
> >   * igt@kms_chamelium@hdmi-mode-timings:
> >     - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +2 similar issues
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-snb5/igt@kms_chamelium@hdmi-mode-timings.html
> > 
> >   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
> >     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +3 similar issues
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> >     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +6 similar issues
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> > 
> >   * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
> >     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359]) +4 similar issues
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html
> > 
> >   * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
> >     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3319]) +1 similar issue
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html
> > 
> >   * igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding:
> >     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109279] / [i915#3359]) +1 similar issue
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-sliding.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> >     - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2346])
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> > 
> >   * igt@kms_fbcon_fbt@fbc-suspend:
> >     - shard-kbl:          [PASS][56] -> [INCOMPLETE][57] ([i915#636])
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> > 
> >   * igt@kms_flip@2x-dpms-vs-vblank-race:
> >     - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109274] / [fdo#111825]) +3 similar issues
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_flip@2x-dpms-vs-vblank-race.html
> > 
> >   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> >     - shard-apl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +3 similar issues
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> >     - shard-iclb:         [PASS][61] -> [SKIP][62] ([i915#3701])
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
> >     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109280] / [fdo#111825]) +12 similar issues
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-suspend:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][64] ([i915#180])
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
> >     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +113 similar issues
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-suspend:
> >     - shard-tglb:         [PASS][66] -> [DMESG-WARN][67] ([i915#2411] / [i915#2867])
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html
> > 
> >   * igt@kms_hdr@bpc-switch:
> >     - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1188])
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl2/igt@kms_hdr@bpc-switch.html
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl1/igt@kms_hdr@bpc-switch.html
> > 
> >   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
> >     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> > 
> >   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> >     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> >     - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]) +1 similar issue
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> >     - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265])
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
> >     - shard-kbl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265]) +2 similar issues
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> >     - shard-apl:          NOTRUN -> [FAIL][76] ([i915#265])
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> >     - shard-skl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> > 
> >   * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
> >     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +50 similar issues
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl4/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html
> > 
> >   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
> >     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2733])
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> > 
> >   * igt@kms_psr2_su@frontbuffer-xrgb8888:
> >     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#1911])
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> > 
> >   * igt@kms_psr@psr2_suspend:
> >     - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#109441]) +4 similar issues
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb2/igt@kms_psr@psr2_suspend.html
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb6/igt@kms_psr@psr2_suspend.html
> > 
> >   * igt@kms_setmode@basic:
> >     - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#31])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-apl4/igt@kms_setmode@basic.html
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl1/igt@kms_setmode@basic.html
> >     - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#31])
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-glk7/igt@kms_setmode@basic.html
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-glk4/igt@kms_setmode@basic.html
> > 
> >   * igt@kms_sysfs_edid_timing:
> >     - shard-kbl:          NOTRUN -> [FAIL][87] ([IGT#2])
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl7/igt@kms_sysfs_edid_timing.html
> > 
> >   * igt@kms_vblank@pipe-a-accuracy-idle:
> >     - shard-skl:          NOTRUN -> [FAIL][88] ([i915#43])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@kms_vblank@pipe-a-accuracy-idle.html
> > 
> >   * igt@kms_writeback@writeback-check-output:
> >     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2437]) +1 similar issue
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl2/igt@kms_writeback@writeback-check-output.html
> > 
> >   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
> >     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +109 similar issues
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-skl:          NOTRUN -> [FAIL][91] ([i915#1542])
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl7/igt@perf@polling-parameterized.html
> > 
> >   * igt@prime_nv_api@i915_nv_import_vs_close:
> >     - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109291]) +1 similar issue
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb8/igt@prime_nv_api@i915_nv_import_vs_close.html
> > 
> >   * igt@sysfs_clients@fair-0:
> >     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994])
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl6/igt@sysfs_clients@fair-0.html
> > 
> >   * igt@sysfs_clients@split-25:
> >     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +1 similar issue
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl3/igt@sysfs_clients@split-25.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@feature_discovery@psr2:
> >     - shard-iclb:         [SKIP][95] ([i915#658]) -> [PASS][96]
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb7/igt@feature_discovery@psr2.html
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb2/igt@feature_discovery@psr2.html
> > 
> >   * igt@gem_exec_fair@basic-deadline:
> >     - shard-glk:          [FAIL][97] ([i915#2846]) -> [PASS][98]
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-glk5/igt@gem_exec_fair@basic-deadline.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs0:
> >     - shard-glk:          [FAIL][99] ([i915#2842]) -> [PASS][100] +1 similar issue
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html
> > 
> >   * igt@gem_exec_parallel@engines@basic:
> >     - shard-glk:          [DMESG-WARN][101] ([i915#118]) -> [PASS][102] +1 similar issue
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-glk7/igt@gem_exec_parallel@engines@basic.html
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-glk7/igt@gem_exec_parallel@engines@basic.html
> > 
> >   * igt@gem_huc_copy@huc-copy:
> >     - shard-tglb:         [SKIP][103] ([i915#2190]) -> [PASS][104]
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-tglb3/igt@gem_huc_copy@huc-copy.html
> > 
> >   * igt@gem_workarounds@reset-context:
> >     - shard-snb:          [TIMEOUT][105] -> [PASS][106]
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-snb2/igt@gem_workarounds@reset-context.html
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-snb2/igt@gem_workarounds@reset-context.html
> > 
> >   * igt@i915_selftest@live@hangcheck:
> >     - shard-snb:          [INCOMPLETE][107] ([i915#3921]) -> [PASS][108]
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-snb7/igt@i915_selftest@live@hangcheck.html
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-snb5/igt@i915_selftest@live@hangcheck.html
> > 
> >   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
> >     - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +4 similar issues
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> > 
> >   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
> >     - shard-skl:          [FAIL][111] ([i915#2346]) -> [PASS][112] +1 similar issue
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> >     - shard-skl:          [FAIL][113] ([i915#2122]) -> [PASS][114]
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> >     - shard-skl:          [FAIL][115] ([i915#79]) -> [PASS][116]
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> > 
> >   * igt@kms_hdr@bpc-switch-dpms:
> >     - shard-skl:          [FAIL][117] ([i915#1188]) -> [PASS][118]
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> >     - shard-apl:          [DMESG-WARN][119] ([i915#180]) -> [PASS][120] +3 similar issues
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> >     - shard-skl:          [FAIL][121] ([fdo#108145] / [i915#265]) -> [PASS][122]
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> > 
> >   * igt@kms_psr@psr2_cursor_blt:
> >     - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124] +2 similar issues
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> > 
> >   * igt@perf@polling-small-buf:
> >     - shard-skl:          [FAIL][125] ([i915#1722]) -> [PASS][126]
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-skl4/igt@perf@polling-small-buf.html
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-skl8/igt@perf@polling-small-buf.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@gem_exec_fair@basic-none-rrul@rcs0:
> >     - shard-iclb:         [FAIL][127] ([i915#2852]) -> [FAIL][128] ([i915#2842])
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> > 
> >   * igt@i915_pm_rc6_residency@rc6-fence:
> >     - shard-iclb:         [WARN][129] ([i915#2684]) -> [WARN][130] ([i915#1804] / [i915#2684])
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
> > 
> >   * igt@i915_pm_rc6_residency@rc6-idle:
> >     - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [FAIL][132] ([i915#2680])
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
> > 
> >   * igt@runner@aborted:
> >     - shard-kbl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][139], [FAIL][140]) ([i915#3002] / [i915#4312])
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl6/igt@runner@aborted.html
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl7/igt@runner@aborted.html
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl7/igt@runner@aborted.html
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl1/igt@runner@aborted.html
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl7/igt@runner@aborted.html
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-kbl7/igt@runner@aborted.html
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl1/igt@runner@aborted.html
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/shard-kbl4/igt@runner@aborted.html
> >     - shard-apl:          ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#4312]) -> ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-apl6/igt@runner@aborted.html
> >    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11061/shard-apl3/igt@runner@aborted.html
> >    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21961/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
