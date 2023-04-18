Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A06E5D22
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 11:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F1A10E10F;
	Tue, 18 Apr 2023 09:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3582D10E10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 09:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681809338; x=1713345338;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gm4o7yJc356Xs4JXhBvmQsmPKJw0tWPMaY5P6dxR3t0=;
 b=cZJ2EmygpufPV3Q8zVHOSvNZTscItCpMO5IJns6I258ThpTw7NZqhNvc
 4ThI/kZvrt0goGQ2Ik4UklbglTv2ZCdEO+dCmhQybJ120wu2Y2vOwKL0f
 a96Q4tG/IoC7I5WmAwmjU2CIUBEEFNoPljXTfn/cewGbvCo7nQ9QbAZgo
 no/S0onmBBUU9Cfls+PxcgcyFdy7SGO5U3qdGA7z3FErJ4C45/QXuJliz
 ySqwp/LMeYVM56cO0Cn8vKWUUS0/2c3lx5YBlW9OnGkxI26EnY5wHUMPP
 zypZgpdE2txFEUIniwwGsNJqzc2vE5a6WEHfPbtyTV6GCr6svQz51hiLg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="431405756"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="431405756"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="755642816"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="755642816"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:15:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <gi54slbykiwpc4elze5rt2fb2dsevbjs4l5en5r2iguysxuut3@zgx7gksjvq3a>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
 <20230412090911.811254-2-bhanuprakash.modem@intel.com>
 <87ttxlcv4k.fsf@intel.com>
 <gi54slbykiwpc4elze5rt2fb2dsevbjs4l5en5r2iguysxuut3@zgx7gksjvq3a>
Date: Tue, 18 Apr 2023 12:15:33 +0300
Message-ID: <87jzy91rgq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/debugfs: New debugfs for
 display clock frequencies
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Apr 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Apr 12, 2023 at 12:22:51PM +0300, Jani Nikula wrote:
>>On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
>>> +
>>>  static ssize_t i915_displayport_test_active_write(struct file *file,
>>>  						  const char __user *ubuf,
>>>  						  size_t len, loff_t *offp)
>>> @@ -1065,6 +1080,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>>>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>>>  	{"i915_ddb_info", i915_ddb_info, 0},
>>>  	{"i915_lpsp_status", i915_lpsp_status, 0},
>>> +	{"i915_disply_clock_info", i915_display_clock_info, 0},
>>
>>Maybe "i915_cdclk_info"? (Also, disply has a typo there.)
>
> hijacking this a little bit since I saw the new version of this commit
> applied without the display_ part. Should we consider moving all the
> display-related debugfs files to display/ directory?  I think that would
> make it clearer for the xe integration while also cleaning up a little
> bit the various files on i915. Downside would be synchronizing this with
> the tools reading those files. I guess it's only igt and CI that care about
> them?

While I agree in principle, I see potential for inflicting a lot of
paper cuts here.

We've moved individual files in the past, and it's generally been
fine. The pain is manageable. But seems like moving tons of files needs
to have some transition period with symlinks in kernel or igt checking
both places or something. Imagine bisecting a kernel bug using an igt
test, and needing two different igt builds depending on where the file
is.

On the other hand, maybe display/ directory is something that should be
reserved for drm to create. Anythin driver specific should be
prefixed. So either you'd have files named i915_display/* or
display/i915_*. Needs consideration.

I'm just leaning towards avoiding trouble at this time.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
