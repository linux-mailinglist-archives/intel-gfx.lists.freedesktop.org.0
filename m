Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C80190F0FD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 16:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94D710ECE2;
	Wed, 19 Jun 2024 14:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOv8feHt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8064D10ECE2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 14:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718808252; x=1750344252;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aMKiR/7alCNCK7SfGkEb5DDJj8CvOr5E8G8YH/3RvQ0=;
 b=LOv8feHtDa6KYo3Ts+xLuL8I3TyU6+owiXp0tbztlTDSmp1OAuKT1KC5
 wNOabLVqdoaFg/d/tKHXSZUMsQTf+jGCv6MQVAWIyVF1FaMuIziH8LDvr
 cOnK+vRDYjXzG92hP7EV2ardPfuJTMq+ThOL419rJS/Gh5aH7gXK8GkpH
 NUpXowyRti8dGxHd4b6oK3ZuGnevSDj3p/C7r8cy9IgoTptItvwArhQsw
 xO/lHjwFAzBY3i4S2a9LHeoueYQEl9V26iI+Qj4f1fXSXBjFS8GD79uck
 SDPhaHQzsCbC+MH+y1A7CqckgwEHChSlyq9vDa2bOxQrw/JRJkvq2hgTH w==;
X-CSE-ConnectionGUID: 5MW+6wH6SHSCe0rMHtPh/w==
X-CSE-MsgGUID: 2uNTsOBkSL2AfDsla5nGFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15983886"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15983886"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 07:44:11 -0700
X-CSE-ConnectionGUID: sPybO1YPT0+naOI51YKphQ==
X-CSE-MsgGUID: vasC3T4yS6Kc5I1MJ1FBCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41893563"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Jun 2024 07:44:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2024 17:44:08 +0300
Date: Wed, 19 Jun 2024 17:44:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
Message-ID: <ZnLuuAk42hp7lveq@intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-9-ville.syrjala@linux.intel.com>
 <875xu6h5kj.fsf@intel.com> <ZnLA_a8zAukixdI-@intel.com>
 <8734p9f577.fsf@intel.com> <ZnLcAIsrEPObe679@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZnLcAIsrEPObe679@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jun 19, 2024 at 04:24:16PM +0300, Ville Syrjälä wrote:
> On Wed, Jun 19, 2024 at 04:11:08PM +0300, Jani Nikula wrote:
> > On Wed, 19 Jun 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > > On Tue, Jun 18, 2024 at 02:07:56PM +0300, Jani Nikula wrote:
> > >> On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >> >
> > >> > As we extend the use of DSB for critical pipe/plane register
> > >> > programming, it'll be nice to have an escape valve at hand,
> > >> > in case things go very poorly. To that end, add a i915.enable_dsb
> > >> > modparam by which we can force the driver to take the pure mmio
> > >> > path instead.
> > >> >
> > >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >> > ---
> > >> >  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
> > >> >  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
> > >> >  drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
> > >> >  3 files changed, 7 insertions(+)
> > >> >
> > >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> > >> > index aebdb7b59dbf..449a31767791 100644
> > >> > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > >> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > >> > @@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
> > >> >  intel_display_param_named_unsafe(enable_dpt, bool, 0400,
> > >> >  	"Enable display page table (DPT) (default: true)");
> > >> >  
> > >> > +intel_display_param_named_unsafe(enable_dsb, bool, 0600,
> > >> > +	"Enable display state buffer (DSB) (default: true)");
> > >> 
> > >> Not much point in leaving the module param 0600, is there?
> > >
> > > It'll let you try both dsb and mmio paths at runtime without
> > > having to do a full reboot/reload.
> > 
> > I mean does any code actually look at the *module* parameter runtime?
> > It's only the initial value for the device param?
> 
> You can change it via the debugfs i915_params/* thing.

Apparently the modparam vs. debugfs permissions are specified in two
different places. This is rather confusing.

Is there no way to put them in the same place? Or can we just nuke
the permission stuff from the modparam macro entirely so it won't
end up confusing me again? Looks like there is exactly one (gem related)
modparam that uses 0600, everything else seems to be 0400.

-- 
Ville Syrjälä
Intel
