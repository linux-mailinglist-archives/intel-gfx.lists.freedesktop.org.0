Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD34A811A07
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 17:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E93B10E2AD;
	Wed, 13 Dec 2023 16:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD53D10E2AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 16:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702486170; x=1734022170;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1sJR6qj2udt9LQ7MkIXXYbdRryJ1MdrCxGROArUSDvs=;
 b=c82l8CErzGRY1Kk1TK+KTK5LPyCSB3q0HCrLnEU1eNbspZGw6DaWz6LM
 u/ldZTyDOfH//yzwT/XXJqGNKz9kXSvwgueNHSdQ2nl5+FZj7SksBgdPt
 fptOwcbTf7XU7fz4O74QXLjZkCPSTyyzt5SBiS3ZJQXRLrzhUGZRqJ+7Z
 q69AabMYRnfrdLBrl80zsGU/4dkqPjkNKMnaLXoULyUU+UejDVv3jwlew
 RYQ1IUNzEFbeMVTQ9SzYPUsrNyXtIU5x3H4flr0qBDRmLEPN96oIUoyMD
 myNF9PRq5MTBocF0x45v1rEFWwGY/ZK31KzHKgh5nTS6gbv1UeLKcqHXa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397776786"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="397776786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:49:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767272849"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767272849"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 08:49:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 18:49:27 +0200
Date: Wed, 13 Dec 2023 18:49:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH 02/12] drm/i915: Print memory region info during probe
Message-ID: <ZXnglzrBM79U-Mv1@intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-3-ville.syrjala@linux.intel.com>
 <fc2dbf45-cd58-460a-99c5-fc8934331e0e@intel.com>
 <ZXnbJYwjA6xrldnX@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXnbJYwjA6xrldnX@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 06:26:13PM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 05:05:21PM +0100, Andrzej Hajda wrote:
> > On 13.12.2023 01:42, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Dump the details about every memory region into dmesg at probe time.
> > > Avoids having to dig those out from random places when debugging stuff.
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/intel_memory_region.c | 18 ++++++++++++++++++
> > >   1 file changed, 18 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> > > index b2708f8cac2a..52d998e5c21a 100644
> > > --- a/drivers/gpu/drm/i915/intel_memory_region.c
> > > +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> > > @@ -372,6 +372,24 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
> > >   		i915->mm.regions[i] = mem;
> > >   	}
> > >   
> > > +	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
> > > +		struct intel_memory_region *mem = i915->mm.regions[i];
> > > +		u64 region_size, io_size;
> > > +
> > > +		if (!mem)
> > > +			continue;
> > > +
> > > +		region_size = resource_size(&mem->region) >> 20;
> > > +		io_size = resource_size(&mem->io) >> 20;
> > > +
> > > +		if (resource_size(&mem->io))
> > > +			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: %llu MiB %pR\n",
> > > +				mem->id, mem->name, region_size, &mem->region, io_size, &mem->io);
> > > +		else
> > > +			drm_dbg(&i915->drm, "Memory region(%d): %s: %llu MiB %pR, io: n/a\n",
> > > +				mem->id, mem->name, region_size, &mem->region);
> > 
> > Doesn't printk handle properly 0-length resources?
> 
> Not without extra help. Apparently there is IORESOURCE_UNSET
> that would just print the size, but you have to explicitly
> set that yourself, which I suppose we could do.

This is what we get with nothing:
Memory region(6): stolen-local: 20 MiB [mem 0x3fe800000-0x3ffbfffff], io: 0 MiB [mem 0x00000000-0xffffffffffffffff]

This is with IORESOURCE_UNSET:
Memory region(6): stolen-local: 20 MiB [mem 0x3fe800000-0x3ffbfffff], io: 0 MiB [mem size 0x00000000]

And this is the original:
Memory region(6): stolen-local: 20 MiB [mem 0x3fe800000-0x3ffbfffff], io: n/a

I kinda like the explicit 'n/a' to make it obvious there is noting
there.

Also using IORESOURCE_UNSET would be a bit more annoying as we'd have
to explicitly preserve it in places where we resize the resource
(stolen reseved handling and selftests). But I suppose it would be
just a matter of using the full DEFINE_RES_NAMED() instead of
DEFINE_RES_MEM(). Hmm, maybe I should do that anyway just to be
safe in case someone starts to use some extra flags on these...

> 
> > 
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > 
> > Regards
> > Andrzej
> > 
> > 
> > > +	}
> > > +
> > >   	return 0;
> > >   
> > >   out_cleanup:
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
