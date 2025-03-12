Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE14A5E3D5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 19:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9664C10E008;
	Wed, 12 Mar 2025 18:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cmD0qjsm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ABF710E008
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 18:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741805356; x=1773341356;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=mmEuBVZWp4GmOEz9WNZk0PXr2i518RvOiK1ENUsVtXY=;
 b=cmD0qjsmfjv1DJgKDGMCMZbuU4JNndi4/fAUF1Ano36qeySB7F69ARZV
 VCoU+yj3HuEwU8xu+2ayGfh0bIj+zsLTFAMKPnHHMtPyn8+u4+tds002V
 fw3BjTGG7t7uF/2GuhfM+SG0GCFqnEYrz1X16r0VzBJX2pWjg/PcNrO8H
 kMvrhTdXWQ13jAseD48FRoFH/iP9/QZwSH9pDbE8GovU5FB0D6YPCQy2o
 levUrmzKi1gXDHvaVqumfi/OGHzarSxRAFuscjBNvMkmcrsEXWV60Zssi
 CcH1DPhko2zCoQch39UoBBe/CF6iVhHbFjNtrFgtMQIKlIaIovBb+4xHk w==;
X-CSE-ConnectionGUID: qJGYOXfjT5moJFEagkrhKg==
X-CSE-MsgGUID: nR7gdaW3TPK3cFbH42IdkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42761576"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="42761576"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 11:49:16 -0700
X-CSE-ConnectionGUID: XFcuuF6LRXWFwqWF/g3zcA==
X-CSE-MsgGUID: WeGUS1GZTlmkf12cDJ0xGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="151681837"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 11:49:16 -0700
Date: Wed, 12 Mar 2025 20:49:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z9HXKtt30--kwB2Q@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250312144310.7610-1-mohammed.thasleem@intel.com>
 <Z9GjYgbLPQA0ZM9b@ideak-desk.fi.intel.com>
 <29cd2d2d-5c10-4188-82e7-be83590426a1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29cd2d2d-5c10-4188-82e7-be83590426a1@intel.com>
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

On Wed, Mar 12, 2025 at 11:44:20PM +0530, Naladala, Ramanaidu wrote:
> [...]
> > > +static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
> > The return type isn't compatible with the -ENODEV returned value. I'd
> > just return a bool, since the reason for an error is always the same.
> > 
> > > +{
> > > +	struct i915_power_domains *power_domains = &display->power.domains;
> > > +	struct intel_dmc *dmc = display_to_dmc(display);
> > > +
> > > +	if (DISPLAY_VER(display) < 14)
> > > +		return -ENODEV;
> > > +
> > > +	mutex_lock(&power_domains->lock);
> > > +	bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
> > > +			   intel_de_read(display, DC_STATE_EN);
> 
> The dc6_enabled flag indicates only the DC state limit. If all conditions
> are met, the DMC can entry/exits DC6.
> 
> However, if the DC6 conditions are not met, the DMC can perform entry/exits
> up to DC5. Entry/exits from DC5 to DC3 can also change the DG1_DMC_DEBUG_DC5_COUNT
> counter values. It is better to add a pc10 check along with the dc6_enabled flag.
> 
> Correct me if my understanding is wrong.

According to HW people, the conditions for DC6 are met from the
_display_ side if the conditions for DC5 are met and DC6 is enabled. The
problem of making this dependent on package C states is that those
states also depend on non-display IPs. The purpose of this counter (DC6
allowed) is validating the display driver's DC6 programming, without
depending on the validity of the programming for all other IPs (by
non-display drivers) that could block actual DC6 transitions.

> > > +	if (dc6_enabled)
> > > +		intel_dmc_update_dc6_allowed_count(display, false);
> > > +
> > > +	*count = dmc->dc6_allowed.count;
> > > +	mutex_unlock(&power_domains->lock);
> > > +
> > > +	return 0;
> > > +}
> > > +
