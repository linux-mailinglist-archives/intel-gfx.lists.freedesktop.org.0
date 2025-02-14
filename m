Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03041A366CF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 21:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E4C10ED3B;
	Fri, 14 Feb 2025 20:21:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngojlH72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85C610E4A1;
 Fri, 14 Feb 2025 20:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739564464; x=1771100464;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=MY9pgzb0f53V9rlajRTFR2EFojFvCg39p9LLfCEmTRI=;
 b=ngojlH72pDYi9TWyaV7maTnK24Ov9LlWP1RdqUgbzOQ/w5YsqQktG/SC
 ZLHN1NBOmM0/ea8dcGYlfvjNlfTMLYkTz6TU9cyIXM3iaG3HGicNbvjey
 XpGtS9sl+iBnQk2xPI5ebw7rd8E4VxtRjZGaspAJoZD61wBSDJoWEvzhY
 PBSK+Lm9gAERH6GL60Att6DKp5b30xGI5Is4BXGbZAqfnngF08waqHsMm
 cUGh7whbu2cX5tAsZWUxpXr2NPoQQ2P1lOEK2K0W8rwkYiA9TVBRcVpHN
 3ok0UouK3A+nosDPtONa7Nrm0CL6AH/PCSq92qQCwsND2lJJLqI7k6ljF w==;
X-CSE-ConnectionGUID: vo+6njohRYOqoscLrV6Nbw==
X-CSE-MsgGUID: WN8aQ18fQSKppziJQe15/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="65678763"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="65678763"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 12:21:03 -0800
X-CSE-ConnectionGUID: a9IosU3nQOGar8hC3+nU8g==
X-CSE-MsgGUID: T0Id/SwkQGe+D95E4YMiIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150712232"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 12:21:01 -0800
Date: Fri, 14 Feb 2025 22:22:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 I915-ci-infra@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lur?=
 =?utf-8?Q?e?= for drm/i915/ddi: Fix/simplify port enabling/disabling (rev2)
Message-ID: <Z6-l6KwKXLvWba5q@ideak-desk.fi.intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
 <173955352969.2109164.181860447842218857@b555e5b46a47>
 <Z6-kXVkhMtKsVixV@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6-kXVkhMtKsVixV@ideak-desk.fi.intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 14, 2025 at 10:15:25PM +0200, Imre Deak wrote:
> On Fri, Feb 14, 2025 at 05:18:49PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/ddi: Fix/simplify port enabling/disabling (rev2)
> > URL   : https://patchwork.freedesktop.org/series/144122/
> > State : failure
> 
> Patchset is merged to drm-intel-next, thanks for the reviews.
> 
> The failure is probably unrelated, see below.
> 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_16134_full -> Patchwork_144122v2_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_144122v2_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_144122v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (11 -> 10)
> > ------------------------------
> > 
> >   Missing    (1): shard-dg2-set2 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_144122v2_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_exec_fence@syncobj-channel:
> >     - shard-dg1:          [PASS][1] -> [ABORT][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-13/igt@gem_exec_fence@syncobj-channel.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-15/igt@gem_exec_fence@syncobj-channel.html
> 
> The changes are relevant to the DDI HDMI output, but nothing indicates
> that the issue would relate to the changes. It's a GEM problem with many
> errors like
> 
> <0> [124.654876] kworker/-179       3..... 105808505us : intel_rps_mark_interactive: 0000:03:00.0 mark interactive: no
> 
> with a few successful modesets earlier. I couldn't find an open ticket,
> but similar looking issues occured in CI several times:
> 
> CI_DRM_16078/shard-snb2/24/35/dmesg.txt
> CI_DRM_16080/shard-snb5/24/35/dmesg.txt
> CI_DRM_16080/shard-mtlp-6/22/dmesg.log
> CI_DRM_16086/shard-mtlp-5/14/dmesg.log
> CI_DRM_16099/bat-arls-6/0/159/dmesg.txt
> CI_DRM_16107/shard-mtlp-1/3/dmesg.log
> CI_DRM_16114/shard-mtlp-6/3/dmesg.log
> CI_DRM_16119/shard-dg1-12/2/dmesg.log
> 
> >   * igt@gem_tiled_swapping@non-threaded:
> >     - shard-snb:          [PASS][3] -> [FAIL][4]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb2/igt@gem_tiled_swapping@non-threaded.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb2/igt@gem_tiled_swapping@non-threaded.html
> 
> This is not a DDI platform, so the changes are unrelated. It looks the
> same as:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
> 
> > #### Warnings ####
> > 
> >   * igt@gem_exec_big@single:
> >     - shard-tglu:         [ABORT][5] ([i915#11713]) -> [ABORT][6]
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-5/igt@gem_exec_big@single.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-6/igt@gem_exec_big@single.html
> 
> 
> The changes are relevant to the DDI HDMI output, but nothing indicates that
> the issue would be related. A GEM issue, looks similar to:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941

The above link correctly:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713

> 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_144122v2_full that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@api_intel_bb@blit-reloc-keep-cache:
> >     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8411])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@api_intel_bb@blit-reloc-keep-cache.html
> > 
> >   * igt@api_intel_bb@object-reloc-keep-cache:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#8411])
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@api_intel_bb@object-reloc-keep-cache.html
> > 
> >   * igt@device_reset@cold-reset-bound:
> >     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#11078])
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@device_reset@cold-reset-bound.html
> > 
> >   * igt@device_reset@unbind-cold-reset-rebind:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#11078])
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
> > 
> >   * igt@device_reset@unbind-reset-rebind:
> >     - shard-tglu:         [PASS][11] -> [ABORT][12] ([i915#12817] / [i915#5507])
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-5/igt@device_reset@unbind-reset-rebind.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-7/igt@device_reset@unbind-reset-rebind.html
> > 
> >   * igt@drm_fdinfo@busy@rcs0:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][13] ([i915#8414]) +7 other tests skip
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@drm_fdinfo@busy@rcs0.html
> > 
> >   * igt@drm_fdinfo@most-busy-check-all@vcs0:
> >     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8414]) +6 other tests skip
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@drm_fdinfo@most-busy-check-all@vcs0.html
> > 
> >   * igt@drm_fdinfo@virtual-busy-idle:
> >     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8414])
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@drm_fdinfo@virtual-busy-idle.html
> > 
> >   * igt@gem_ccs@large-ctrl-surf-copy:
> >     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#13008])
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@gem_ccs@large-ctrl-surf-copy.html
> > 
> >   * igt@gem_ccs@suspend-resume:
> >     - shard-dg2:          NOTRUN -> [INCOMPLETE][17] ([i915#13356])
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_ccs@suspend-resume.html
> > 
> >   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
> >     - shard-dg2:          NOTRUN -> [INCOMPLETE][18] ([i915#12392] / [i915#13356])
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> > 
> >   * igt@gem_close_race@multigpu-basic-process:
> >     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#7697])
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html
> > 
> >   * igt@gem_close_race@multigpu-basic-threads:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][20] ([i915#7697])
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html
> > 
> >   * igt@gem_create@create-ext-set-pat:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][21] ([i915#8562])
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_create@create-ext-set-pat.html
> > 
> >   * igt@gem_ctx_isolation@preservation-s3@rcs0:
> >     - shard-glk:          [PASS][22] -> [INCOMPLETE][23] ([i915#12353])
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-glk7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> > 
> >   * igt@gem_ctx_persistence@engines-cleanup:
> >     - shard-snb:          NOTRUN -> [SKIP][24] ([i915#1099])
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb7/igt@gem_ctx_persistence@engines-cleanup.html
> > 
> >   * igt@gem_ctx_shared@q-smoketest-all:
> >     - shard-snb:          NOTRUN -> [SKIP][25] +6 other tests skip
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb7/igt@gem_ctx_shared@q-smoketest-all.html
> > 
> >   * igt@gem_ctx_sseu@engines:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#280])
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_ctx_sseu@engines.html
> > 
> >   * igt@gem_ctx_sseu@mmap-args:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][27] ([i915#280])
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> > 
> >   * igt@gem_eio@in-flight-10ms:
> >     - shard-mtlp:         [PASS][28] -> [ABORT][29] ([i915#13193])
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-5/igt@gem_eio@in-flight-10ms.html
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-7/igt@gem_eio@in-flight-10ms.html
> > 
> >   * igt@gem_eio@reset-stress:
> >     - shard-dg1:          [PASS][30] -> [FAIL][31] ([i915#12543] / [i915#5784])
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-12/igt@gem_eio@reset-stress.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@gem_eio@reset-stress.html
> > 
> >   * igt@gem_exec_balancer@bonded-dual:
> >     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4771])
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html
> > 
> >   * igt@gem_exec_balancer@bonded-true-hang:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][33] ([i915#4812])
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_exec_balancer@bonded-true-hang.html
> > 
> >   * igt@gem_exec_balancer@noheartbeat:
> >     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#8555]) +1 other test skip
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_exec_balancer@noheartbeat.html
> > 
> >   * igt@gem_exec_balancer@parallel-balancer:
> >     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4525]) +1 other test skip
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html
> > 
> >   * igt@gem_exec_balancer@parallel-bb-first:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#4525])
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gem_exec_balancer@parallel-bb-first.html
> > 
> >   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
> >     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4525])
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> > 
> >   * igt@gem_exec_capture@capture-recoverable:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#6344])
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html
> > 
> >   * igt@gem_exec_fence@submit:
> >     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4812]) +1 other test skip
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_exec_fence@submit.html
> > 
> >   * igt@gem_exec_flush@basic-uc-pro-default:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#3539] / [i915#4852]) +1 other test skip
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_exec_flush@basic-uc-pro-default.html
> > 
> >   * igt@gem_exec_flush@basic-uc-prw-default:
> >     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3539])
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html
> > 
> >   * igt@gem_exec_reloc@basic-gtt-read:
> >     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3281]) +10 other tests skip
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_exec_reloc@basic-gtt-read.html
> > 
> >   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
> >     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3281]) +5 other tests skip
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> > 
> >   * igt@gem_exec_reloc@basic-softpin:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#3281]) +7 other tests skip
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_exec_reloc@basic-softpin.html
> > 
> >   * igt@gem_exec_reloc@basic-write-wc-noreloc:
> >     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#3281]) +2 other tests skip
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> > 
> >   * igt@gem_exec_schedule@reorder-wide:
> >     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4537] / [i915#4812])
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-6/igt@gem_exec_schedule@reorder-wide.html
> >     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4812])
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@gem_exec_schedule@reorder-wide.html
> > 
> >   * igt@gem_exec_schedule@semaphore-power:
> >     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4537] / [i915#4812]) +1 other test skip
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@gem_exec_schedule@semaphore-power.html
> > 
> >   * igt@gem_exec_schedule@wide:
> >     - shard-tglu:         [PASS][49] -> [INCOMPLETE][50] ([i915#13391]) +1 other test incomplete
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-6/igt@gem_exec_schedule@wide.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-9/igt@gem_exec_schedule@wide.html
> > 
> >   * igt@gem_fence_thrash@bo-write-verify-x:
> >     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4860]) +1 other test skip
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-x.html
> > 
> >   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4860])
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> > 
> >   * igt@gem_lmem_swapping@basic:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#4613])
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gem_lmem_swapping@basic.html
> > 
> >   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
> >     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4613])
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> > 
> >   * igt@gem_lmem_swapping@smem-oom:
> >     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#4613])
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_lmem_swapping@smem-oom.html
> > 
> >   * igt@gem_media_fill@media-fill:
> >     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8289])
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@gem_media_fill@media-fill.html
> > 
> >   * igt@gem_media_vme:
> >     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#284])
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@gem_media_vme.html
> > 
> >   * igt@gem_mmap_gtt@big-bo-tiledy:
> >     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4077]) +2 other tests skip
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_mmap_gtt@big-bo-tiledy.html
> > 
> >   * igt@gem_mmap_gtt@cpuset-big-copy:
> >     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4077]) +9 other tests skip
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy.html
> > 
> >   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4077]) +6 other tests skip
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> > 
> >   * igt@gem_mmap_wc@coherency:
> >     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4083]) +2 other tests skip
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_mmap_wc@coherency.html
> > 
> >   * igt@gem_mmap_wc@fault-concurrent:
> >     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4083]) +3 other tests skip
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@gem_mmap_wc@fault-concurrent.html
> > 
> >   * igt@gem_mmap_wc@read-write-distinct:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#4083]) +2 other tests skip
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html
> > 
> >   * igt@gem_partial_pwrite_pread@reads:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#3282]) +1 other test skip
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_partial_pwrite_pread@reads.html
> > 
> >   * igt@gem_partial_pwrite_pread@writes-after-reads:
> >     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#3282]) +1 other test skip
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_partial_pwrite_pread@writes-after-reads.html
> > 
> >   * igt@gem_pread@self:
> >     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3282]) +3 other tests skip
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_pread@self.html
> > 
> >   * igt@gem_pwrite@basic-exhaustion:
> >     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3282]) +1 other test skip
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
> > 
> >   * igt@gem_pxp@display-protected-crc:
> >     - shard-rkl:          NOTRUN -> [TIMEOUT][68] ([i915#12917] / [i915#12964])
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@gem_pxp@display-protected-crc.html
> > 
> >   * igt@gem_pxp@regular-baseline-src-copy-readible:
> >     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4270]) +3 other tests skip
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@gem_pxp@regular-baseline-src-copy-readible.html
> > 
> >   * igt@gem_pxp@verify-pxp-stale-buf-execution:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#4270])
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> > 
> >   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> >     - shard-rkl:          [PASS][71] -> [TIMEOUT][72] ([i915#12917] / [i915#12964])
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> > 
> >   * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
> >     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5190] / [i915#8428]) +4 other tests skip
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
> > 
> >   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
> >     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#8428]) +1 other test skip
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> > 
> >   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#5190] / [i915#8428]) +1 other test skip
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
> > 
> >   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
> >     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#8411])
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> > 
> >   * igt@gem_tiled_pread_basic:
> >     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4079])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gem_tiled_pread_basic.html
> > 
> >   * igt@gem_userptr_blits@access-control:
> >     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@gem_userptr_blits@access-control.html
> > 
> >   * igt@gem_userptr_blits@create-destroy-unsync:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#3297]) +2 other tests skip
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html
> > 
> >   * igt@gem_userptr_blits@dmabuf-sync:
> >     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3297] / [i915#3323])
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html
> > 
> >   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
> >     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3297] / [i915#4880])
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> > 
> >   * igt@gen9_exec_parse@allowed-all:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#2856]) +1 other test skip
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html
> > 
> >   * igt@gen9_exec_parse@allowed-single:
> >     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#2527])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@gen9_exec_parse@allowed-single.html
> >     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#2527] / [i915#2856])
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@gen9_exec_parse@allowed-single.html
> > 
> >   * igt@gen9_exec_parse@batch-zero-length:
> >     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#2856]) +2 other tests skip
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@gen9_exec_parse@batch-zero-length.html
> > 
> >   * igt@gen9_exec_parse@bb-start-out:
> >     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#2856])
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gen9_exec_parse@bb-start-out.html
> > 
> >   * igt@gen9_exec_parse@bb-start-param:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#2527] / [i915#2856])
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html
> > 
> >   * igt@i915_module_load@reload-with-fault-injection:
> >     - shard-snb:          [PASS][88] -> [ABORT][89] ([i915#9820])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
> > 
> >   * igt@i915_module_load@resize-bar:
> >     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#6412])
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@i915_module_load@resize-bar.html
> > 
> >   * igt@i915_pm_freq_api@freq-basic-api:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#8399])
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html
> > 
> >   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> >     - shard-mtlp:         NOTRUN -> [SKIP][92] +2 other tests skip
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> > 
> >   * igt@i915_pm_rps@basic-api:
> >     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#11681] / [i915#6621])
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@i915_pm_rps@basic-api.html
> > 
> >   * igt@i915_power@sanity:
> >     - shard-mtlp:         [PASS][94] -> [SKIP][95] ([i915#7984])
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-6/igt@i915_power@sanity.html
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-5/igt@i915_power@sanity.html
> > 
> >   * igt@i915_selftest@mock@memory_region:
> >     - shard-dg2:          NOTRUN -> [DMESG-WARN][96] ([i915#9311]) +1 other test dmesg-warn
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@i915_selftest@mock@memory_region.html
> > 
> >   * igt@i915_suspend@basic-s3-without-i915:
> >     - shard-tglu:         NOTRUN -> [INCOMPLETE][97] ([i915#7443])
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html
> > 
> >   * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
> >     - shard-dg1:          [PASS][98] -> [DMESG-WARN][99] ([i915#4423]) +1 other test dmesg-warn
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-19/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-17/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
> > 
> >   * igt@kms_addfb_basic@basic-x-tiled-legacy:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][100] ([i915#4212])
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> > 
> >   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
> >     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#8709]) +15 other tests skip
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> > 
> >   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
> >     - shard-tglu:         [PASS][102] -> [FAIL][103] ([i915#11808]) +1 other test fail
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> > 
> >   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
> >     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#1769] / [i915#3555])
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> > 
> >   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
> >     - shard-dg1:          [PASS][105] -> [FAIL][106] ([i915#5956]) +1 other test fail
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-14/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-19/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> > 
> >   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
> >     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5286]) +3 other tests skip
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> > 
> >   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> >     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#5286]) +1 other test skip
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#5286])
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> > 
> >   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#4538] / [i915#5190]) +3 other tests skip
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> >     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4538] / [i915#5190]) +9 other tests skip
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> > 
> >   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
> >     - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#6095]) +4 other tests skip
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> > 
> >   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
> >     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#10307] / [i915#6095]) +194 other tests skip
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> > 
> >   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#12313]) +1 other test skip
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> > 
> >   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
> >     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> > 
> >   * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#6095]) +4 other tests skip
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> > 
> >   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> >     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#6095]) +65 other tests skip
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> > 
> >   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
> >     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#6095]) +24 other tests skip
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html
> > 
> >   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
> >     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#12805])
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> > 
> >   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
> >     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#6095]) +25 other tests skip
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html
> > 
> >   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#6095]) +4 other tests skip
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> > 
> >   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
> >     - shard-rkl:          [PASS][122] -> [DMESG-FAIL][123] ([i915#12964]) +1 other test dmesg-fail
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
> > 
> >   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#12313])
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> > 
> >   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
> >     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#12313])
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> > 
> >   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
> >     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#6095]) +67 other tests skip
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
> > 
> >   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-2:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][127] ([i915#10307] / [i915#6095]) +29 other tests skip
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-2.html
> > 
> >   * igt@kms_cdclk@mode-transition-all-outputs:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#11616] / [i915#7213])
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html
> > 
> >   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
> >     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4087]) +4 other tests skip
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> > 
> >   * igt@kms_chamelium_audio@dp-audio:
> >     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#11151] / [i915#7828]) +1 other test skip
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_chamelium_audio@dp-audio.html
> >     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828])
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_chamelium_audio@dp-audio.html
> > 
> >   * igt@kms_chamelium_audio@dp-audio-edid:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#11151] / [i915#7828]) +2 other tests skip
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_chamelium_audio@dp-audio-edid.html
> > 
> >   * igt@kms_chamelium_color@ctm-0-25:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][133] +6 other tests skip
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_chamelium_color@ctm-0-25.html
> > 
> >   * igt@kms_chamelium_color@ctm-green-to-red:
> >     - shard-dg2:          NOTRUN -> [SKIP][134] +4 other tests skip
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_chamelium_color@ctm-green-to-red.html
> > 
> >   * igt@kms_chamelium_frames@dp-crc-multiple:
> >     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#11151] / [i915#7828]) +6 other tests skip
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-multiple.html
> > 
> >   * igt@kms_chamelium_frames@hdmi-frame-dump:
> >     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#11151] / [i915#7828]) +5 other tests skip
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html
> > 
> >   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][137] ([i915#11151] / [i915#7828]) +3 other tests skip
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> > 
> >   * igt@kms_content_protection@dp-mst-lic-type-1:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][138] ([i915#3299])
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-1.html
> > 
> >   * igt@kms_content_protection@dp-mst-type-1:
> >     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3116])
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
> > 
> >   * igt@kms_content_protection@legacy:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][140] ([i915#7118] / [i915#9424])
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_content_protection@legacy.html
> > 
> >   * igt@kms_content_protection@uevent:
> >     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#7118] / [i915#9424])
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_content_protection@uevent.html
> > 
> >   * igt@kms_cursor_crc@cursor-random-512x512:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][142] ([i915#13049]) +1 other test skip
> >    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x512.html
> > 
> >   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
> >     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#3555]) +6 other tests skip
> >    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> > 
> >   * igt@kms_cursor_crc@cursor-sliding-32x10:
> >     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3555]) +1 other test skip
> >    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-32x10.html
> >     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3555])
> >    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
> > 
> >   * igt@kms_cursor_crc@cursor-sliding-512x170:
> >     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#13049])
> >    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x170.html
> > 
> >   * igt@kms_cursor_crc@cursor-sliding-512x512:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#13049])
> >    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html
> > 
> >   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> >     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#9809]) +1 other test skip
> >    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> > 
> >   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
> >     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#13046] / [i915#5354]) +2 other tests skip
> >    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> > 
> >   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
> >     - shard-rkl:          NOTRUN -> [SKIP][150] +9 other tests skip
> >    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> >     - shard-dg1:          NOTRUN -> [SKIP][151] +2 other tests skip
> >    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#13046] / [i915#5354])
> >    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> >     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#4103])
> >    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> > 
> >   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
> >     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#4213])
> >    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> > 
> >   * igt@kms_display_modes@mst-extended-mode-negative:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#8588])
> >    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_display_modes@mst-extended-mode-negative.html
> >     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#8588])
> >    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@kms_display_modes@mst-extended-mode-negative.html
> > 
> >   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
> >     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3804])
> >    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> > 
> >   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
> >     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#3840])
> >    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> > 
> >   * igt@kms_dsc@dsc-with-bpc:
> >     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840])
> >    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_dsc@dsc-with-bpc.html
> >     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#3555] / [i915#3840])
> >    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_dsc@dsc-with-bpc.html
> > 
> >   * igt@kms_dsc@dsc-with-bpc-formats:
> >     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3555] / [i915#3840]) +1 other test skip
> >    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html
> > 
> >   * igt@kms_dsc@dsc-with-formats:
> >     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#3840]) +1 other test skip
> >    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html
> > 
> >   * igt@kms_fbcon_fbt@psr:
> >     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3955])
> >    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
> > 
> >   * igt@kms_feature_discovery@dp-mst:
> >     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#9337])
> >    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_feature_discovery@dp-mst.html
> > 
> >   * igt@kms_flip@2x-flip-vs-dpms:
> >     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#9934]) +6 other tests skip
> >    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html
> > 
> >   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][166] ([i915#9934]) +3 other tests skip
> >    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> > 
> >   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
> >     - shard-glk:          NOTRUN -> [INCOMPLETE][167] ([i915#12745] / [i915#1982] / [i915#4839])
> >    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk3/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> > 
> >   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
> >     - shard-glk:          NOTRUN -> [INCOMPLETE][168] ([i915#1982] / [i915#4839])
> >    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk3/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@2x-plain-flip-fb-recreate:
> >     - shard-snb:          [PASS][169] -> [FAIL][170] ([i915#11989]) +5 other tests fail
> >    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate.html
> >    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate.html
> > 
> >   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
> >     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#3637])
> >    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> > 
> >   * igt@kms_flip@2x-plain-flip-interruptible:
> >     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#9934]) +1 other test skip
> >    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_flip@2x-plain-flip-interruptible.html
> >     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3637]) +1 other test skip
> >    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_flip@2x-plain-flip-interruptible.html
> > 
> >   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#3637]) +2 other tests skip
> >    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> > 
> >   * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
> >     - shard-glk:          [PASS][175] -> [FAIL][176] ([i915#13690]) +2 other tests fail
> >    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
> >    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
> > 
> >   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
> >     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#9934]) +6 other tests skip
> >    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> > 
> >   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
> >     - shard-rkl:          NOTRUN -> [DMESG-WARN][178] ([i915#12964]) +10 other tests dmesg-warn
> >    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
> > 
> >   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
> >     - shard-mtlp:         [PASS][179] -> [FAIL][180] ([i915#11989]) +1 other test fail
> >    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-6/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
> >    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
> > 
> >   * igt@kms_flip@flip-vs-fences:
> >     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#8381])
> >    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_flip@flip-vs-fences.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
> >     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#2672]) +4 other tests skip
> >    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
> >     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
> >    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
> >     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#2672] / [i915#3555])
> >    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
> >     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#2587] / [i915#2672])
> >    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
> >     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#2672] / [i915#3555])
> >    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
> >     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#2672])
> >    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
> >     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#2672] / [i915#8813]) +1 other test skip
> >    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> >     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
> >    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][190] ([i915#2672] / [i915#3555])
> >    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#2672])
> >    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
> >     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#2672] / [i915#3555]) +4 other tests skip
> >    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][193] ([i915#8708]) +6 other tests skip
> >    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
> >     - shard-snb:          [PASS][194] -> [SKIP][195] +4 other tests skip
> >    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> >    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
> >     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#1825]) +17 other tests skip
> >    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
> >     - shard-dg2:          [PASS][197] -> [FAIL][198] ([i915#6880])
> >    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> >    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][199] ([i915#10055])
> >    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][200] +16 other tests skip
> >    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#3458]) +8 other tests skip
> >    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
> >     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#1825]) +6 other tests skip
> >    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][203] ([i915#5354]) +16 other tests skip
> >    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
> >     - shard-tglu:         NOTRUN -> [SKIP][204] +6 other tests skip
> >    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> >     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#8708]) +15 other tests skip
> >    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
> >     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3023]) +13 other tests skip
> >    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
> >     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#10055])
> >    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> >     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3458])
> >    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> > 
> >   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#9766])
> >    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
> >     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3458]) +11 other tests skip
> >    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
> >     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#10433] / [i915#3458])
> >    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
> >     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#5354]) +26 other tests skip
> >    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
> >     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#8708]) +2 other tests skip
> >    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> > 
> >   * igt@kms_hdr@static-toggle:
> >     - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#3555] / [i915#8228])
> >    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@kms_hdr@static-toggle.html
> >    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_hdr@static-toggle.html
> > 
> >   * igt@kms_hdr@static-toggle-suspend:
> >     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8228]) +1 other test skip
> >    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
> > 
> >   * igt@kms_joiner@basic-force-ultra-joiner:
> >     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#10656]) +1 other test skip
> >    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_joiner@basic-force-ultra-joiner.html
> > 
> >   * igt@kms_joiner@invalid-modeset-big-joiner:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#10656])
> >    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html
> > 
> >   * igt@kms_joiner@invalid-modeset-ultra-joiner:
> >     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#12339])
> >    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> > 
> >   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
> >     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#13522])
> >    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> > 
> >   * igt@kms_plane@pixel-format-source-clamping:
> >     - shard-dg1:          NOTRUN -> [INCOMPLETE][221] ([i915#13026]) +1 other test incomplete
> >    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@kms_plane@pixel-format-source-clamping.html
> > 
> >   * igt@kms_plane_lowres@tiling-y:
> >     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8821])
> >    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_plane_lowres@tiling-y.html
> > 
> >   * igt@kms_plane_lowres@tiling-yf:
> >     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8821])
> >    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@kms_plane_lowres@tiling-yf.html
> > 
> >   * igt@kms_plane_multiple@tiling-y:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][224] ([i915#8806])
> >    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html
> > 
> >   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
> >     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#13046] / [i915#5354] / [i915#9423])
> >    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> > 
> >   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
> >     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#12247] / [i915#6953] / [i915#9423])
> >    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> > 
> >   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
> >     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#12247]) +3 other tests skip
> >    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#12247] / [i915#3555])
> >    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#12247]) +3 other tests skip
> >    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
> >     - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#12247] / [i915#6953])
> >    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
> >     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#12247]) +5 other tests skip
> >    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html
> > 
> >   * igt@kms_pm_backlight@fade:
> >     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#9812])
> >    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@kms_pm_backlight@fade.html
> > 
> >   * igt@kms_pm_backlight@fade-with-suspend:
> >     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#5354])
> >    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_pm_backlight@fade-with-suspend.html
> > 
> >   * igt@kms_pm_dc@dc3co-vpb-simulation:
> >     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#9685])
> >    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_pm_dc@dc3co-vpb-simulation.html
> > 
> >   * igt@kms_pm_dc@dc6-dpms:
> >     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3361])
> >    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html
> > 
> >   * igt@kms_pm_lpsp@kms-lpsp:
> >     - shard-dg2:          [PASS][236] -> [SKIP][237] ([i915#9340])
> >    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
> >    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html
> > 
> >   * igt@kms_pm_lpsp@screens-disabled:
> >     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#8430])
> >    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_pm_lpsp@screens-disabled.html
> > 
> >   * igt@kms_pm_rpm@dpms-lpsp:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][239] ([i915#9519])
> >    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html
> > 
> >   * igt@kms_pm_rpm@modeset-lpsp-stress:
> >     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#9519])
> >    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> > 
> >   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
> >     - shard-dg2:          [PASS][241] -> [SKIP][242] ([i915#9519]) +1 other test skip
> >    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> >    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> > 
> >   * igt@kms_pm_rpm@modeset-non-lpsp:
> >     - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#9519])
> >    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> > 
> >   * igt@kms_prime@basic-modeset-hybrid:
> >     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#6524])
> >    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
> > 
> >   * igt@kms_prime@d3hot:
> >     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#6524] / [i915#6805])
> >    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_prime@d3hot.html
> > 
> >   * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
> >     - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#12316])
> >    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
> > 
> >   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#11520]) +3 other tests skip
> >    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> > 
> >   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
> >     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#11520]) +1 other test skip
> >    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> > 
> >   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
> >     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#11520]) +5 other tests skip
> >    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> > 
> >   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
> >     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#11520]) +4 other tests skip
> >    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> > 
> >   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#11520]) +2 other tests skip
> >    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> > 
> >   * igt@kms_psr2_su@page_flip-p010:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][252] ([i915#9683])
> >    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html
> > 
> >   * igt@kms_psr@fbc-psr-primary-render:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#9732]) +4 other tests skip
> >    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_psr@fbc-psr-primary-render.html
> > 
> >   * igt@kms_psr@fbc-psr2-no-drrs:
> >     - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#9688]) +4 other tests skip
> >    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@kms_psr@fbc-psr2-no-drrs.html
> > 
> >   * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
> >     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#1072] / [i915#9732]) +17 other tests skip
> >    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
> > 
> >   * igt@kms_psr@pr-cursor-mmap-gtt:
> >     - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#9732])
> >    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@kms_psr@pr-cursor-mmap-gtt.html
> > 
> >   * igt@kms_psr@pr-primary-render:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][257] ([i915#1072] / [i915#9732]) +8 other tests skip
> >    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_psr@pr-primary-render.html
> > 
> >   * igt@kms_psr@psr2-sprite-mmap-cpu:
> >     - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#1072] / [i915#9732]) +9 other tests skip
> >    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_psr@psr2-sprite-mmap-cpu.html
> > 
> >   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][259] ([i915#9685])
> >    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> > 
> >   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
> >     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#5289])
> >    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> > 
> >   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#5190]) +2 other tests skip
> >    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> > 
> >   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> >     - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#5289])
> >    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> > 
> >   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
> >     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#12755] / [i915#5190]) +1 other test skip
> >    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> > 
> >   * igt@kms_rotation_crc@sprite-rotation-90:
> >     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#12755]) +1 other test skip
> >    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90.html
> > 
> >   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][265] ([i915#12755])
> >    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> > 
> >   * igt@kms_setmode@invalid-clone-exclusive-crtc:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#3555]) +1 other test skip
> >    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> > 
> >   * igt@kms_tiled_display@basic-test-pattern:
> >     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#8623])
> >    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> > 
> >   * igt@kms_vrr@flip-suspend:
> >     - shard-glk:          NOTRUN -> [SKIP][268]
> >    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk3/igt@kms_vrr@flip-suspend.html
> > 
> >   * igt@kms_vrr@max-min:
> >     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#9906])
> >    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@kms_vrr@max-min.html
> > 
> >   * igt@kms_vrr@negative-basic:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][270] ([i915#3555] / [i915#9906])
> >    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@kms_vrr@negative-basic.html
> > 
> >   * igt@kms_vrr@seamless-rr-switch-virtual:
> >     - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#9906]) +1 other test skip
> >    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-virtual.html
> > 
> >   * igt@kms_writeback@writeback-check-output-xrgb2101010:
> >     - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#2437] / [i915#9412])
> >    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> > 
> >   * igt@perf@mi-rpc:
> >     - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#2434])
> >    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@perf@mi-rpc.html
> > 
> >   * igt@perf@non-zero-reason:
> >     - shard-dg2-9:        NOTRUN -> [FAIL][274] ([i915#9100]) +1 other test fail
> >    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@perf@non-zero-reason.html
> > 
> >   * igt@perf_pmu@busy-double-start@vecs0:
> >     - shard-dg1:          [PASS][275] -> [FAIL][276] ([i915#4349])
> >    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html
> >    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-19/igt@perf_pmu@busy-double-start@vecs0.html
> >     - shard-mtlp:         [PASS][277] -> [FAIL][278] ([i915#4349]) +1 other test fail
> >    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-7/igt@perf_pmu@busy-double-start@vecs0.html
> >    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-4/igt@perf_pmu@busy-double-start@vecs0.html
> > 
> >   * igt@perf_pmu@invalid-init:
> >     - shard-tglu:         NOTRUN -> [FAIL][279] ([i915#13663])
> >    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-10/igt@perf_pmu@invalid-init.html
> >     - shard-dg2-9:        NOTRUN -> [FAIL][280] ([i915#13663])
> >    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-9/igt@perf_pmu@invalid-init.html
> > 
> >   * igt@perf_pmu@rc6-all-gts:
> >     - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#8516])
> >    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html
> > 
> >   * igt@prime_vgem@basic-fence-read:
> >     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#3291] / [i915#3708])
> >    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-6/igt@prime_vgem@basic-fence-read.html
> >     - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#3291] / [i915#3708])
> >    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@prime_vgem@basic-fence-read.html
> >     - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#3708])
> >    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@prime_vgem@basic-fence-read.html
> > 
> >   * igt@prime_vgem@basic-read:
> >     - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#3708])
> >    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@prime_vgem@basic-read.html
> > 
> >   * igt@prime_vgem@fence-wait:
> >     - shard-rkl:          [PASS][286] -> [DMESG-WARN][287] ([i915#12964]) +2 other tests dmesg-warn
> >    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-5/igt@prime_vgem@fence-wait.html
> >    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-7/igt@prime_vgem@fence-wait.html
> > 
> >   * igt@sriov_basic@bind-unbind-vf:
> >     - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#9917]) +1 other test skip
> >    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-2/igt@sriov_basic@bind-unbind-vf.html
> > 
> >   * igt@sriov_basic@enable-vfs-autoprobe-off:
> >     - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#9917])
> >    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@sriov_basic@enable-vfs-autoprobe-off.html
> > 
> >   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
> >     - shard-tglu-1:       NOTRUN -> [FAIL][290] ([i915#12910]) +8 other tests fail
> >    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_ctx_persistence@engines-mixed-process:
> >     - shard-mtlp:         [ABORT][291] ([i915#13193]) -> [PASS][292] +2 other tests pass
> >    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process.html
> >    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-8/igt@gem_ctx_persistence@engines-mixed-process.html
> > 
> >   * igt@gem_exec_fence@syncobj-channel:
> >     - shard-dg2:          [DMESG-WARN][293] -> [PASS][294]
> >    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-5/igt@gem_exec_fence@syncobj-channel.html
> >    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@gem_exec_fence@syncobj-channel.html
> > 
> >   * igt@gem_lmem_swapping@smem-oom@lmem0:
> >     - shard-dg1:          [TIMEOUT][295] ([i915#5493]) -> [PASS][296] +1 other test pass
> >    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> >    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> > 
> >   * igt@gem_mmap_offset@mmap-unmap@smem0:
> >     - shard-snb:          [INCOMPLETE][297] -> [PASS][298] +1 other test pass
> >    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb2/igt@gem_mmap_offset@mmap-unmap@smem0.html
> >    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb7/igt@gem_mmap_offset@mmap-unmap@smem0.html
> > 
> >   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
> >     - shard-rkl:          [TIMEOUT][299] ([i915#12964]) -> [PASS][300] +1 other test pass
> >    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> >    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> > 
> >   * igt@gem_pxp@reject-modify-context-protection-off-3:
> >     - shard-rkl:          [TIMEOUT][301] ([i915#12917] / [i915#12964]) -> [PASS][302]
> >    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-3.html
> >    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
> > 
> >   * igt@i915_module_load@load:
> >     - shard-dg2:          ([PASS][303], [PASS][304], [FAIL][305], [PASS][306], [PASS][307], [PASS][308], [PASS][309], [PASS][310], [PASS][311], [PASS][312], [PASS][313], [PASS][314], [PASS][315], [PASS][316], [PASS][317], [PASS][318], [PASS][319], [PASS][320], [PASS][321], [PASS][322], [PASS][323], [PASS][324], [PASS][325]) -> ([PASS][326], [PASS][327], [PASS][328], [PASS][329], [PASS][330], [PASS][331], [PASS][332], [PASS][333], [PASS][334], [PASS][335], [PASS][336], [PASS][337], [PASS][338], [PASS][339], [PASS][340], [PASS][341], [PASS][342], [PASS][343], [PASS][344], [PASS][345], [PASS][346], [PASS][347], [PASS][348])
> >    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-10/igt@i915_module_load@load.html
> >    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@i915_module_load@load.html
> >    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@i915_module_load@load.html
> >    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@i915_module_load@load.html
> >    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@i915_module_load@load.html
> >    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-1/igt@i915_module_load@load.html
> >    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-1/igt@i915_module_load@load.html
> >    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-2/igt@i915_module_load@load.html
> >    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-2/igt@i915_module_load@load.html
> >    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-2/igt@i915_module_load@load.html
> >    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-3/igt@i915_module_load@load.html
> >    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-3/igt@i915_module_load@load.html
> >    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-4/igt@i915_module_load@load.html
> >    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-4/igt@i915_module_load@load.html
> >    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-5/igt@i915_module_load@load.html
> >    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-5/igt@i915_module_load@load.html
> >    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-6/igt@i915_module_load@load.html
> >    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-6/igt@i915_module_load@load.html
> >    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-7/igt@i915_module_load@load.html
> >    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-7/igt@i915_module_load@load.html
> >    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-7/igt@i915_module_load@load.html
> >    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-8/igt@i915_module_load@load.html
> >    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-8/igt@i915_module_load@load.html
> >    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@i915_module_load@load.html
> >    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@i915_module_load@load.html
> >    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-11/igt@i915_module_load@load.html
> >    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@i915_module_load@load.html
> >    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@i915_module_load@load.html
> >    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@i915_module_load@load.html
> >    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@i915_module_load@load.html
> >    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-11/igt@i915_module_load@load.html
> >    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@i915_module_load@load.html
> >    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@i915_module_load@load.html
> >    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@i915_module_load@load.html
> >    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-11/igt@i915_module_load@load.html
> >    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@i915_module_load@load.html
> >    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-5/igt@i915_module_load@load.html
> >    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-1/igt@i915_module_load@load.html
> >    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-2/igt@i915_module_load@load.html
> >    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-10/igt@i915_module_load@load.html
> >    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@i915_module_load@load.html
> >    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-10/igt@i915_module_load@load.html
> >    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-6/igt@i915_module_load@load.html
> >    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-1/igt@i915_module_load@load.html
> >    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-3/igt@i915_module_load@load.html
> >    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-7/igt@i915_module_load@load.html
> > 
> >   * igt@i915_module_load@reload-with-fault-injection:
> >     - shard-rkl:          [ABORT][349] ([i915#9820]) -> [PASS][350]
> >    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
> >    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
> >     - shard-dg1:          [ABORT][351] ([i915#9820]) -> [PASS][352]
> >    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
> >    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
> >     - shard-tglu:         [ABORT][353] ([i915#10887] / [i915#12817] / [i915#13592] / [i915#9820]) -> [PASS][354]
> >    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
> >    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
> >     - shard-dg2:          [ABORT][355] ([i915#9820]) -> [PASS][356]
> >    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
> >    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
> > 
> >   * igt@i915_pm_rc6_residency@rc6-idle:
> >     - shard-dg1:          [FAIL][357] ([i915#3591]) -> [PASS][358]
> >    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html
> >    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle.html
> > 
> >   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
> >     - shard-dg1:          [FAIL][359] ([i915#12739] / [i915#3591]) -> [PASS][360]
> >    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> >    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> > 
> >   * igt@kms_cursor_crc@cursor-onscreen-256x85:
> >     - shard-tglu:         [FAIL][361] ([i915#13566]) -> [PASS][362] +5 other tests pass
> >    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> >    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> > 
> >   * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:
> >     - shard-rkl:          [FAIL][363] ([i915#13566]) -> [PASS][364] +1 other test pass
> >    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html
> >    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html
> > 
> >   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
> >     - shard-glk:          [FAIL][365] ([i915#2346]) -> [PASS][366]
> >    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-glk8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> >    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> > 
> >   * igt@kms_flip@2x-wf_vblank-ts-check:
> >     - shard-snb:          [FAIL][367] ([i915#11989]) -> [PASS][368] +1 other test pass
> >    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb7/igt@kms_flip@2x-wf_vblank-ts-check.html
> >    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check.html
> > 
> >   * igt@kms_flip@plain-flip-ts-check-interruptible:
> >     - shard-tglu:         [FAIL][369] ([i915#11989]) -> [PASS][370] +3 other tests pass
> >    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html
> >    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
> >     - shard-dg2:          [FAIL][371] ([i915#6880]) -> [PASS][372]
> >    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
> >    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
> >     - shard-snb:          [SKIP][373] -> [PASS][374] +7 other tests pass
> >    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> >    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> > 
> >   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
> >     - shard-dg2:          [SKIP][375] ([i915#9519]) -> [PASS][376]
> >    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> >    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> > 
> >   * igt@kms_pm_rpm@modeset-lpsp:
> >     - shard-rkl:          [SKIP][377] ([i915#9519]) -> [PASS][378]
> >    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
> >    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
> > 
> >   * igt@kms_universal_plane@cursor-fb-leak:
> >     - shard-mtlp:         [FAIL][379] ([i915#9196]) -> [PASS][380] +1 other test pass
> >    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html
> >    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html
> > 
> >   * igt@kms_vblank@wait-idle@pipe-c-hdmi-a-1:
> >     - shard-glk:          [DMESG-WARN][381] ([i915#118]) -> [PASS][382] +1 other test pass
> >    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-glk8/igt@kms_vblank@wait-idle@pipe-c-hdmi-a-1.html
> >    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-glk4/igt@kms_vblank@wait-idle@pipe-c-hdmi-a-1.html
> > 
> >   * igt@perf_pmu@busy-double-start@ccs0:
> >     - shard-dg2:          [FAIL][383] ([i915#4349]) -> [PASS][384]
> >    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-7/igt@perf_pmu@busy-double-start@ccs0.html
> >    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-1/igt@perf_pmu@busy-double-start@ccs0.html
> > 
> >   * igt@perf_pmu@busy-idle-check-all@vecs0:
> >     - shard-rkl:          [DMESG-WARN][385] ([i915#12964]) -> [PASS][386] +4 other tests pass
> >    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-1/igt@perf_pmu@busy-idle-check-all@vecs0.html
> >    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-8/igt@perf_pmu@busy-idle-check-all@vecs0.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@i915_module_load@reload-with-fault-injection:
> >     - shard-mtlp:         [ABORT][387] ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][388] ([i915#10131])
> >    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
> >    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
> > 
> >   * igt@kms_content_protection@lic-type-0:
> >     - shard-dg2:          [FAIL][389] ([i915#7173]) -> [SKIP][390] ([i915#9424])
> >    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> >    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-1/igt@kms_content_protection@lic-type-0.html
> > 
> >   * igt@kms_content_protection@mei-interface:
> >     - shard-snb:          [INCOMPLETE][391] ([i915#9878]) -> [SKIP][392]
> >    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-snb7/igt@kms_content_protection@mei-interface.html
> >    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-snb5/igt@kms_content_protection@mei-interface.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
> >     - shard-dg2:          [SKIP][393] ([i915#3458]) -> [SKIP][394] ([i915#10433] / [i915#3458]) +3 other tests skip
> >    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> >    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
> >     - shard-dg1:          [SKIP][395] -> [SKIP][396] ([i915#4423])
> >    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> >    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
> >     - shard-dg2:          [SKIP][397] ([i915#10433] / [i915#3458]) -> [SKIP][398] ([i915#3458]) +2 other tests skip
> >    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> >    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> > 
> >   * igt@kms_hdr@brightness-with-hdr:
> >     - shard-mtlp:         [SKIP][399] ([i915#12713]) -> [SKIP][400] ([i915#1187] / [i915#12713])
> >    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html
> >    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
> >     - shard-dg2:          [SKIP][401] ([i915#12713]) -> [SKIP][402] ([i915#13331])
> >    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html
> >    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
> >     - shard-rkl:          [SKIP][403] ([i915#12713]) -> [SKIP][404] ([i915#1187] / [i915#12713])
> >    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16134/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
> >    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
> > 
> >   
> >   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
> >   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
> >   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
> >   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
> >   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
> >   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
> >   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
> >   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
> >   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
> >   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
> >   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
> >   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
> >   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
> >   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
> >   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
> >   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
> >   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
> >   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
> >   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
> >   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
> >   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
> >   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
> >   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
> >   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
> >   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
> >   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
> >   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
> >   [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
> >   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
> >   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
> >   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
> >   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
> >   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
> >   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
> >   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
> >   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
> >   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
> >   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
> >   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
> >   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
> >   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
> >   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
> >   [i915#13391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13391
> >   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
> >   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
> >   [i915#13592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
> >   [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
> >   [i915#13690]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13690
> >   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
> >   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
> >   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
> >   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
> >   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
> >   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
> >   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
> >   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
> >   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
> >   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
> >   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
> >   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
> >   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
> >   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
> >   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
> >   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
> >   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
> >   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
> >   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
> >   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
> >   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
> >   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
> >   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
> >   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
> >   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
> >   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
> >   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
> >   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
> >   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
> >   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
> >   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
> >   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
> >   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
> >   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
> >   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
> >   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
> >   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
> >   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
> >   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
> >   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
> >   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
> >   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
> >   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
> >   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
> >   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
> >   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
> >   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
> >   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
> >   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
> >   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
> >   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
> >   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
> >   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
> >   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
> >   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> >   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
> >   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
> >   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
> >   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
> >   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
> >   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
> >   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
> >   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
> >   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
> >   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
> >   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
> >   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
> >   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
> >   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
> >   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
> >   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
> >   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
> >   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
> >   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
> >   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
> >   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
> >   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
> >   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
> >   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
> >   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
> >   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
> >   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
> >   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
> >   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
> >   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
> >   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
> >   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
> >   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
> >   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
> >   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
> >   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
> >   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
> >   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
> >   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
> >   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
> >   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
> >   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
> >   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
> >   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
> >   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
> >   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
> >   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
> >   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
> >   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
> >   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
> >   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
> >   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
> >   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
> >   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
> >   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
> >   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
> >   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_16134 -> Patchwork_144122v2
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_16134: 57457d93f156d8b4bdff8d138127d81b8f97d8c9 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_8229: 8229
> >   Patchwork_144122v2: 57457d93f156d8b4bdff8d138127d81b8f97d8c9 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144122v2/index.html
