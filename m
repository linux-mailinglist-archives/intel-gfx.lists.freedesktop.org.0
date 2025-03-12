Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5CA5E4FB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 21:06:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E3910E1AD;
	Wed, 12 Mar 2025 20:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXdOLwkd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3CB10E6B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 20:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741809987; x=1773345987;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0TW7UvQkCWkexakTA7U4bCrkr4nZFt4nxXaUAJnfK5c=;
 b=DXdOLwkd0Xe4sr7Yj9FDW81ZdvCngLL71nRR6d5i97UaXJ4cjn4km2te
 IfwWwAvtUrmu0ArLEiLRMN0h3CibQ4hWTDS/fhdj5huDcIbSvN1L0oknC
 Afrdv5I7Z4Kvy521T5jH8q2mm2V5TO1svNRsXXMxbIQ6tDeIGOOZfJoTn
 38U4MW/XDNAIj0+PXGL3WQd51Ztabh4Zvb6YrOSlOr3OSJBEYM/p5hNBz
 8W9aU3RP50DqNntTMhBhBoZ5+TJcgFCu2inl5OfQOrSdy02aWniH+Rnnn
 RxiR6lLlsRNfQxZY0FPWlyFCaAqtJRzMaleY4k5HeYuZOPAHMoGMlHqEm Q==;
X-CSE-ConnectionGUID: PikNVPD4Rd2CouhcbE1xdw==
X-CSE-MsgGUID: Dc61xLBFQDi7PyYg7S4aHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42769318"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="42769318"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 13:06:27 -0700
X-CSE-ConnectionGUID: /T9kSZF0R16bgNRA4Vf0yg==
X-CSE-MsgGUID: mT90ZtSGSieTIMdl5r16ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="120775672"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 13:06:26 -0700
Date: Wed, 12 Mar 2025 22:06:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z9HpQSrfoaRm0m30@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250312144310.7610-1-mohammed.thasleem@intel.com>
 <Z9GjYgbLPQA0ZM9b@ideak-desk.fi.intel.com>
 <29cd2d2d-5c10-4188-82e7-be83590426a1@intel.com>
 <Z9HXKtt30--kwB2Q@ideak-desk.fi.intel.com>
 <040232c9-1928-4324-a05f-07a879848734@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <040232c9-1928-4324-a05f-07a879848734@intel.com>
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

On Thu, Mar 13, 2025 at 01:02:09AM +0530, Naladala, Ramanaidu wrote:
> 
> On 3/13/2025 12:19 AM, Imre Deak wrote:
> > On Wed, Mar 12, 2025 at 11:44:20PM +0530, Naladala, Ramanaidu wrote:
> > > [...]
> > > > > +static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
> > > > The return type isn't compatible with the -ENODEV returned value. I'd
> > > > just return a bool, since the reason for an error is always the same.
> > > > 
> > > > > +{
> > > > > +	struct i915_power_domains *power_domains = &display->power.domains;
> > > > > +	struct intel_dmc *dmc = display_to_dmc(display);
> > > > > +
> > > > > +	if (DISPLAY_VER(display) < 14)
> > > > > +		return -ENODEV;
> > > > > +
> > > > > +	mutex_lock(&power_domains->lock);
> > > > > +	bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
> > > > > +			   intel_de_read(display, DC_STATE_EN);
> > > The dc6_enabled flag indicates only the DC state limit. If all conditions
> > > are met, the DMC can entry/exits DC6.
> > > 
> > > However, if the DC6 conditions are not met, the DMC can perform entry/exits
> > > up to DC5. Entry/exits from DC5 to DC3 can also change the DG1_DMC_DEBUG_DC5_COUNT
> > > counter values. It is better to add a pc10 check along with the dc6_enabled flag.
> > > 
> > > Correct me if my understanding is wrong.
> > According to HW people, the conditions for DC6 are met from the
> > _display_ side if the conditions for DC5 are met and DC6 is enabled. The
> > problem of making this dependent on package C states is that those
> > states also depend on non-display IPs. The purpose of this counter (DC6
> > allowed) is validating the display driver's DC6 programming, without
> > depending on the validity of the programming for all other IPs (by
> > non-display drivers) that could block actual DC6 transitions.
> 
> In that case, we have the DC3 entry/exit counter DG1_DMC_DEBUG_DC1_COUNT.
> Add a check to ensure it does not change when the DC5 counters are changing.
> 
> It will confirm the transaction entry/exits are between DC5 and DC6. If DC3
> counter is changed, don't increment the dc6 counter value.

We are using the DG1_DMC_DEBUG_DC5_COUNT (0x134154) register to check
for DC5 _entries_. This matches the bspec (49786) definition of the
register:

"Residency counter for DC5 state. Indicates the number of DC5 entries."

In fact all other DMC_DEBUG_ registers are specified in a similar way,
indicating the residency for a given state, that is entries. Counting
both entries and exits in the same counter would be ultimately broken in
any case.

> > 
> > > > > +	if (dc6_enabled)
> > > > > +		intel_dmc_update_dc6_allowed_count(display, false);
> > > > > +
> > > > > +	*count = dmc->dc6_allowed.count;
> > > > > +	mutex_unlock(&power_domains->lock);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
