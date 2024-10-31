Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE6E9B7943
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA14410E87F;
	Thu, 31 Oct 2024 11:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUeuVZf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23D3010E873
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 11:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730372551; x=1761908551;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pxhxJ7ADGw8c5ZFFXdGWFKlMZ6uYF/3qyC4Ds/gJ2xQ=;
 b=iUeuVZf52ScJL8QV0kRPKLHnN22+XG+YztpzJevA8k9ld54Pe9hxdlTU
 oAVkPfUF+ebsGDJkbVPUj9v6T4UE28fx9NkoWOVkqR0RCbYWiNkC/WSyT
 F6x0IginCBzqr7MHZvtA20//kHOr4GRYB41j6mWUlzF2V7e235yjEIevp
 y3+ufqc1XWi6j88JM9dusECadYh73kZk+Y1MKHjteymEWJWvVHEiNbUb1
 ai2s2kgWB2r0cSOWu4SV1pAXXIkXBzDvA7LajOYeuJMSYqBOCR5CZeZgK
 qq+7dqgUcHiHGDJ7E0DZHb5cWPoiWbQ9BoxkvAxyN5o/+1qXRv5xNph3p Q==;
X-CSE-ConnectionGUID: aNfYb0BTQmCy/pnDZGz2NA==
X-CSE-MsgGUID: 47nVBDETQO2uHgu6Lh6Xag==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41474203"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="41474203"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:02:30 -0700
X-CSE-ConnectionGUID: M+73a91rTbCnJWQEAYmMNw==
X-CSE-MsgGUID: EH6OFQqVQx6rIEfiwYDM5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82134465"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:02:28 -0700
Date: Thu, 31 Oct 2024 13:02:25 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <ZyNjwZgLX85wG5r8@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <875xp9l9jw.fsf@intel.com> <ZyNFEJxRklBuzFc3@black.fi.intel.com>
 <871pzwlj12.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871pzwlj12.fsf@intel.com>
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

On Thu, Oct 31, 2024 at 11:27:05AM +0200, Jani Nikula wrote:
> On Thu, 31 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > On Wed, Oct 30, 2024 at 08:39:31PM +0200, Jani Nikula wrote:
> > > On Wed, 30 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > > > G8 power state entry is disabled due to a limitation on DG2, so we
> > > > enable it from driver with Wa_14022698537. For now we enable it for
> > > > all DG2 devices with the exception of a few, for which, we enable
> > > > only when paired with whitelisted CPU models. This works with Native
> > > > ASMP and reduces idle power consumption.
> > 
> >  ...
> > 
> > > > +/* Wa_14022698537:dg2 */
> > > > +static void i915_enable_g8(struct drm_i915_private *i915)
> > > > +{
> > > > +	if (IS_DG2(i915)) {
> > > > +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> > > > +			return;
> > > 
> > > You don't need to check for DG2 twice.
> >
> > My understanding is that DG2_D is a subset of DG2.
> 
> Sorry, I misread the code. *facepalm*.

Yeah, we definitely need the coffee :D

Raag
