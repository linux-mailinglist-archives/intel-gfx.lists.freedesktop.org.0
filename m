Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C305398FC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 23:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6759410E9D5;
	Tue, 31 May 2022 21:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D214D10E9D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 21:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654033771; x=1685569771;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=WkTQLEVVR59UJGYsvyuklTcm9+t0fnTzV+C56BO2KDM=;
 b=NXfZ9CWIZorGhZbok4rLs4KkXt0UTtWOEe534wmh90umf/ZNIfnJ98Kq
 Zk3+O+469NMWr3+/bvOyndMK5GN9ziWVLXPQno/Pf2IEPDCCTqWXsrP5K
 y/dtTeTXEFwLdSALL7J2SMDJ1c9r+1D9qKrmH3aq8HANTG6og6AR9jZse
 neO6+C8WOSyVpDZdLVBicVvLzV0l8Cv/XLZYh7f9tehQSwho16YqW+oIm
 Gy0rT27ZmbfRbJ7S1M/HkAFMw6DRh5keoQawTuipqMwPPu2NYdlmaRRoA
 /d4QvEeVcetSvoerrRBV2fASlcNsOSdnNj8e0AVLm9pmBEfcF5JD/LesH Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="255265068"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="255265068"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 14:49:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="904165572"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 14:49:31 -0700
Date: Tue, 31 May 2022 14:49:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpaNaiUJd86g20Nh@mdroper-desk1.amr.corp.intel.com>
References: <20220527163348.1936146-1-matthew.d.roper@intel.com>
 <165374496624.24492.18103759099345656111@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165374496624.24492.18103759099345656111@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_PVC_steppings_and_initial_workarounds?=
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

On Sat, May 28, 2022 at 01:36:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: PVC steppings and initial workarounds
> URL   : https://patchwork.freedesktop.org/series/104461/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11705_full -> Patchwork_104461v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Matt Atwood for the review.


Matt

> 
>   
> 
> Participating hosts (13 -> 10)
> ------------------------------
> 
>   Missing    (3): shard-rkl shard-dg1 shard-tglu 
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11705_full and Patchwork_104461v1_full:
> 
> ### New IGT tests (124) ###
> 
>   * igt@gem_create@create-ext-placement-all:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_create@create-ext-placement-each:
>     - Statuses : 4 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_create@create-ext-placement-sanity-check:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_balancer@hog:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_balancer@sliced:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 13.55] s
> 
>   * igt@gem_exec_basic@basic@bcs0-smem:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@gem_exec_basic@basic@rcs0-smem:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_basic@basic@vcs0-smem:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@gem_exec_basic@basic@vcs1-smem:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@gem_exec_basic@basic@vecs0-smem:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@gem_exec_endless@dispatch:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - Statuses : 2 pass(s) 4 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.04] s
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_endless@dispatch@vcs1:
>     - Statuses : 3 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.04] s
> 
>   * igt@gem_exec_reloc@basic-concurrent0:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.39, 5.69] s
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.40, 5.80] s
> 
>   * igt@gem_exec_schedule@preempt-engines:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_schedule@submit-early-slice:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_schedule@submit-early-slice@bcs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.03, 0.20] s
> 
>   * igt@gem_exec_schedule@submit-early-slice@rcs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.03, 0.23] s
> 
>   * igt@gem_exec_schedule@submit-early-slice@vcs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.03, 0.21] s
> 
>   * igt@gem_exec_schedule@submit-early-slice@vcs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03, 0.04] s
> 
>   * igt@gem_exec_schedule@submit-early-slice@vecs0:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.03, 0.19] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice@bcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.07] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice@rcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.07] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice@vcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.07] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice@vcs1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.03, 0.04] s
> 
>   * igt@gem_exec_schedule@submit-golden-slice@vecs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.06] s
> 
>   * igt@gem_exec_schedule@submit-late-slice:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_schedule@submit-late-slice@bcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.08] s
> 
>   * igt@gem_exec_schedule@submit-late-slice@rcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.08] s
> 
>   * igt@gem_exec_schedule@submit-late-slice@vcs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.07] s
> 
>   * igt@gem_exec_schedule@submit-late-slice@vcs1:
>     - Statuses : 3 pass(s)
>     - Exec time: [0.03] s
> 
>   * igt@gem_exec_schedule@submit-late-slice@vecs0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.03, 0.06] s
> 
>   * igt@gem_gpgpu_fill@basic:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_gpgpu_fill@basic@smem:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.04] s
> 
>   * igt@gem_media_fill@media-fill:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@i915_pciid:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.04, 0.41] s
> 
>   * igt@i915_pm_lpsp@kms-lpsp:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.13, 0.16] s
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - Statuses : 4 pass(s) 1 warn(s)
>     - Exec time: [12.21, 15.38] s
> 
>   * igt@i915_query@engine-info:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@i915_query@engine-info-invalid:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.28, 32.31] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.31, 18.85] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.01, 0.25] s
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.28] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - Statuses : 3 pass(s)
>     - Exec time: [1.40, 31.55] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.56, 30.34] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.01, 0.24] s
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.01, 0.21] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.65, 16.72] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.27] s
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.26] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.13, 9.96] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - Statuses : 4 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.33] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.27] s
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.01, 0.28] s
> 
>   * igt@kms_big_fb@linear-addfb:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
>     - Statuses : 6 pass(s)
>     - Exec time: [1.17, 24.33] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
>     - Statuses : 5 pass(s)
>     - Exec time: [1.15, 4.04] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - Statuses : 4 skip(s)
>     - Exec time: [0.04, 0.30] s
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - Statuses : 4 skip(s)
>     - Exec time: [0.03, 0.26] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - Statuses : 5 pass(s)
>     - Exec time: [1.31, 39.98] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - Statuses : 6 pass(s)
>     - Exec time: [1.34, 5.49] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.02, 0.29] s
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - Statuses : 4 skip(s)
>     - Exec time: [0.01, 0.27] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.59, 23.27] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - Statuses : 5 pass(s)
>     - Exec time: [1.60, 28.28] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.01, 0.29] s
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.29] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.04, 17.35] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
>     - Statuses : 6 pass(s)
>     - Exec time: [1.05, 3.38] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.29] s
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.01, 0.28] s
> 
>   * igt@kms_big_fb@x-tiled-addfb:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
>     - Statuses : 3 pass(s) 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@x-tiled-addfb-size-overflow:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 37.12] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
>     - Statuses : 4 pass(s)
>     - Exec time: [1.27, 41.15] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
>     - Statuses : 2 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.64] s
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
>     - Statuses : 2 pass(s) 5 skip(s)
>     - Exec time: [0.0, 1.68] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 67.15] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - Statuses : 4 pass(s) 1 skip(s)
>     - Exec time: [0.0, 5.53] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 68.89] s
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - Statuses : 3 pass(s) 2 skip(s)
>     - Exec time: [0.0, 8.54] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 8.61] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0, 0.26] s
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.28] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
>     - Statuses : 5 pass(s) 1 skip(s)
>     - Exec time: [0.0, 5.23] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 24.23] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0, 0.25] s
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.25] s
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - Statuses : 4 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - Statuses : 4 pass(s) 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - Statuses : 3 pass(s) 1 skip(s)
>     - Exec time: [0.0, 40.39] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - Statuses : 1 pass(s) 6 skip(s)
>     - Exec time: [0.0, 1.62] s
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - Statuses : 1 pass(s) 6 skip(s)
>     - Exec time: [0.0, 1.74] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 65.59] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - Statuses : 4 pass(s) 2 skip(s)
>     - Exec time: [0.0, 5.43] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 63.21] s
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - Statuses : 4 pass(s) 2 skip(s)
>     - Exec time: [0.0, 5.40] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - Statuses : 4 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - Statuses : 3 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104461v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][1] ([fdo#111827])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@feature_discovery@chamelium.html
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([fdo#111827])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#3555] / [i915#5325])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@gem_ccs@block-copy-compressed.html
>     - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#5327])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglb:         NOTRUN -> [SKIP][5] ([i915#280])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#5784])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb6/igt@gem_eio@kms.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         NOTRUN -> [TIMEOUT][8] ([i915#3063])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         NOTRUN -> [FAIL][11] ([i915#2842]) +6 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271]) +184 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-snb:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +4 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb4/igt@gem_exec_flush@basic-wb-ro-default.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb6/igt@gem_exec_flush@basic-wb-ro-default.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#109283])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl7/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4613]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@gem_lmem_swapping@verify.html
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@gem_lmem_swapping@verify.html
>     - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk9/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#284])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-snb:          [PASS][24] -> [INCOMPLETE][25] ([i915#5161])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_gtt@hang-user:
>     - shard-glk:          [PASS][26] -> [SKIP][27] ([fdo#109271])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk4/igt@gem_mmap_gtt@hang-user.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk7/igt@gem_mmap_gtt@hang-user.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#4270]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@gem_pxp@create-regular-context-2.html
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#4270]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb6/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#768]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-glk:          NOTRUN -> [FAIL][31] ([i915#4171])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk6/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][32] ([i915#4991])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-glk:          NOTRUN -> [FAIL][33] ([i915#3318])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109289]) +5 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@gen7_exec_parse@basic-allowed.html
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109289]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#2527] / [i915#2856]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2856]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#4281])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#1902])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@i915_pm_lpsp@screens-disabled.html
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#1902])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb6/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111644] / [i915#1397] / [i915#2411]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109293] / [fdo#109506])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110892]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#109303])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@i915_query@query-topology-known-pci-ids.html
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109303])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb1/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][47] ([i915#1886])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl6/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][48] ([i915#180])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][49] ([i915#4272])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_async_flips@crc.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#5286]) +3 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#5286]) +7 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90 (NEW):
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#110725] / [fdo#111614]) +3 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb6/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270 (NEW):
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#111614]) +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][54] ([i915#3743])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][55] ([i915#3763])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#110723])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278]) +30 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [i915#3886]) +6 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3689] / [i915#3886]) +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111615] / [i915#3689]) +8 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3689]) +9 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@kms_chamelium@dp-mode-timings.html
>     - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb7/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-audio (NEW):
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk5/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-d-degamma:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278] / [i915#1149]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@kms_color@pipe-d-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109284] / [fdo#111827]) +17 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109300] / [fdo#111066])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@kms_content_protection@lic.html
>     - shard-kbl:          NOTRUN -> [TIMEOUT][75] ([i915#1319])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@kms_content_protection@lic.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][76] ([i915#1319])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl2/igt@kms_content_protection@lic.html
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#1063])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109279] / [i915#3359]) +6 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [fdo#109279])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#3319]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#3359]) +5 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109274] / [fdo#111825]) +15 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#4103]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5287])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled.html
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#5287]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][87] -> [FAIL][88] ([i915#4767])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][89] ([i915#180])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109274]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb4/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2587])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#3701])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#3701])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109280]) +24 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109280] / [fdo#111825]) +41 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#3555]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb3/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-apl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533]) +2 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][102] ([fdo#108145] / [i915#265]) +6 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][103] ([fdo#108145] / [i915#265]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][104] ([i915#265])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-128:
>     - shard-skl:          [PASS][105] -> [SKIP][106] ([fdo#109271]) +16 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#3536])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#111615]) +6 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-c-tiling-4:
>     - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#5288])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-c-tiling-4.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-c-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#5176]) +23 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-b-edp-1-downscale-with-rotation:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#5176]) +27 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-b-edp-1-downscale-with-rotation.html
> 
>   * igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-b-vga-1-downscale-with-rotation:
>     - shard-snb:          NOTRUN -> [SKIP][112] ([fdo#109271]) +140 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb6/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-b-vga-1-downscale-with-rotation.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#5235]) +15 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1-planes-upscale-downscale:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#5235]) +11 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-c-hdmi-a-1-planes-upscale-downscale:
>     - shard-glk:          NOTRUN -> [SKIP][115] ([fdo#109271]) +132 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-c-hdmi-a-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-a-dp-1-scaler-with-rotation:
>     - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +112 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-a-dp-1-scaler-with-rotation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#2920]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#658])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2920])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#1911]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-tglb:         NOTRUN -> [FAIL][124] ([i915#132] / [i915#3467]) +5 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][125] -> [SKIP][126] ([fdo#109441]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109441]) +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglb:         NOTRUN -> [SKIP][128] ([fdo#111615] / [i915#5289]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180]) +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#3555]) +3 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb3/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#2437])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-kbl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2437])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#2530]) +5 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#2530]) +2 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@nouveau_crc@pipe-d-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][136] ([fdo#109278] / [i915#2530]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-rg.html
> 
>   * igt@prime_nv_api@i915_nv_import_vs_close:
>     - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109291])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb5/igt@prime_nv_api@i915_nv_import_vs_close.html
> 
>   * igt@prime_nv_pcopy@test1_micro:
>     - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109291]) +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb5/igt@prime_nv_pcopy@test1_micro.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglb:         NOTRUN -> [SKIP][139] ([fdo#109295]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109295]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-snb:          NOTRUN -> [DMESG-FAIL][141] ([i915#5098])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb5/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][142] ([i915#5098])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb1/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-glk:          NOTRUN -> [DMESG-FAIL][143] ([i915#5098])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk8/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][144] ([i915#5098])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl2/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-iclb:         NOTRUN -> [DMESG-FAIL][145] ([i915#5098])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb1/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][146] ([i915#5098])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl3/igt@syncobj_timeline@transfer-timeline-point.html
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][147] ([i915#5098])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#2994]) +2 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb8/igt@sysfs_clients@busy.html
>     - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#2994])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-kbl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@sysfs_clients@fair-0.html
>     - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2994])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl9/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-glk:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2994])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk5/igt@sysfs_clients@fair-7.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-kbl:          NOTRUN -> [SKIP][153] ([fdo#109271]) +311 similar issues
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][154] ([i915#658]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@feature_discovery@psr2.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-iclb:         [INCOMPLETE][156] ([i915#3371]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][158] ([i915#2846]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk7/igt@gem_exec_fair@basic-deadline.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-kbl:          [FAIL][160] ([i915#2842]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][162] ([i915#2842]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][164] ([i915#2842]) -> [PASS][165] +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [FAIL][166] ([i915#2842]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-snb:          [SKIP][168] ([fdo#109271]) -> [PASS][169] +1 similar issue
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb6/igt@gem_exec_flush@basic-wb-prw-default.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-snb4/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][170] ([i915#5566] / [i915#716]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@gen9_exec_parse@allowed-single.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-apl:          [SKIP][172] ([fdo#109271]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@i915_pm_dc@dc9-dpms.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl1/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [INCOMPLETE][174] ([i915#3614]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270 (NEW):
>     - shard-glk:          [FAIL][176] ([i915#1888] / [i915#5138]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-glk4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>     - shard-iclb:         [FAIL][178] ([i915#1888]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_color@pipe-c-ctm-blue-to-red:
>     - shard-skl:          [SKIP][180] ([fdo#109271]) -> [PASS][181] +3 similar issues
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/igt@kms_color@pipe-c-ctm-blue-to-red.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl9/igt@kms_color@pipe-c-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][182] ([i915#180]) -> [PASS][183] +1 similar issue
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-skl:          [FAIL][184] ([i915#2346]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][186] ([i915#2122]) -> [PASS][187] +1 similar issue
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl5/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@nonexisting-fb@a-edp1:
>     - shard-skl:          [DMESG-WARN][188] ([i915#1982]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/igt@kms_flip@nonexisting-fb@a-edp1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_flip@nonexisting-fb@a-edp1.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
>     - shard-tglb:         [INCOMPLETE][190] -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][192] ([fdo#108145] / [i915#265]) -> [PASS][193] +2 similar issues
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [SKIP][194] ([fdo#109441]) -> [PASS][195] +2 similar issues
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb5/igt@kms_psr@psr2_basic.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [SKIP][196] ([i915#5519]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][198] ([i915#5519]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][200] ([i915#5639]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/igt@perf@polling-parameterized.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl1/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-skl:          [SKIP][202] ([fdo#109271]) -> [SKIP][203] ([fdo#109271] / [i915#1888]) +2 similar issues
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-iclb:         [FAIL][204] ([i915#2842]) -> [FAIL][205] ([i915#2852])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          [FAIL][206] ([i915#3743]) -> [SKIP][207] ([fdo#109271])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          [SKIP][208] ([fdo#109271] / [i915#3886]) -> [SKIP][209] ([fdo#109271]) +1 similar issue
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-tglb:         [SKIP][210] ([fdo#109300]) -> [SKIP][211] ([i915#1063])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb2/igt@kms_content_protection@mei_interface.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-tglb7/igt@kms_content_protection@mei_interface.html
>     - shard-iclb:         [SKIP][212] ([fdo#109300]) -> [SKIP][213] ([fdo#109300] / [fdo#111066])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb8/igt@kms_content_protection@mei_interface.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb6/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>     - shard-skl:          [SKIP][214] ([fdo#109271] / [i915#1888]) -> [SKIP][215] ([fdo#109271]) +1 similar issue
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][216] ([fdo#111068] / [i915#658]) -> [SKIP][217] ([i915#2920])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][218] ([i915#658]) -> [SKIP][219] ([i915#2920])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][220] ([i915#5939]) -> [SKIP][221] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          [SKIP][222] ([fdo#109271] / [i915#533]) -> [SKIP][223] ([fdo#109271])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][228], [FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl2/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl7/igt@runner@aborted.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl8/igt@runner@aborted.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@runner@aborted.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@runner@aborted.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@runner@aborted.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl3/igt@runner@aborted.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@runner@aborted.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-apl6/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244], [FAIL][245], [FAIL][246], [FAIL][247], [FAIL][248]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254], [FAIL][255], [FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl3/igt@runner@aborted.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl3/igt@runner@aborted.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@runner@aborted.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl3/igt@runner@aborted.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl1/igt@runner@aborted.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@runner@aborted.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl7/igt@runner@aborted.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl6/igt@runner@aborted.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4272]: https://gitlab.freedesktop.org/drm/intel/issues/4272
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * IGT: IGT_6495 -> IGT_6484
>   * Linux: CI_DRM_11705 -> Patchwork_104461v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6484: 14ad49f5b6ed861eda93e9d6b6ed0f3c77d228d1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104461v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104461v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
