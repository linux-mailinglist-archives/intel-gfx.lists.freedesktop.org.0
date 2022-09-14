Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2545B8ADF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 16:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D816210E941;
	Wed, 14 Sep 2022 14:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2305210E941
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663166588; x=1694702588;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TJ4Qv+2AlUsaQ3CaDJatz43eEvUVyq5ievlO/StCZUI=;
 b=R1dZNKaICboFCJwmVE5pBvn+em10HjehJ3mCFaEdv5naj7edy62Jf8Yw
 tg9ajs8SfTj1RYp2JvGt4/Jay4r/mN9zPX0qqeynnTeGCDAqUkLJA4CUF
 6vA0jRWgjeE6t7Hh5U7XSoVigly7aQDkXHolH8J/VsfhF/4JHjAKGbRtJ
 LBlbe6R/gIuXIAmtA0cRQuaYANbjF+ryv8zPAWorrEdV7Hn1KXgaJXjRB
 /jpfm/ymvpWilsVhIi7ikJUFoBtNIHLk8flBxUKndVeaGN+R80EFKp1df
 KTMmVUNUoO75vakSJtZ4nHG5pixFEmNmCPX3cYxAeZUKuatFo42sUg8kN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="285486752"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="285486752"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:43:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679076579"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:43:05 -0700
Date: Wed, 14 Sep 2022 16:43:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YyHod22zbMjkh8iY@alfio.lan>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <YyHmK0sc2r1G7x5i@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YyHmK0sc2r1G7x5i@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

On Wed, Sep 14, 2022 at 10:33:15AM -0400, Rodrigo Vivi wrote:
> On Wed, Sep 14, 2022 at 07:45:53PM +0530, Anshuman Gupta wrote:
> > DG1 and DG2 has lmem, and cpu can access the lmem objects
> > via mmap and i915 internal i915_gem_object_pin_map() for
> > i915 own usages. Both of these methods has pre-requisite
> > requirement to keep GFX PCI endpoint in D0 for a supported
> > iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> > 
> > TODO:
> > With respect to i915_gem_object_pin_map(), every caller
> > has to grab a wakeref if gem object lies in lmem.
> > 
> > Till we fix all issues related to runtime PM, we need
> > to keep runtime PM disable on both DG1 and DG2.
> > 
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 77e7df21f539..f31d7f5399cc 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -931,6 +931,26 @@ static const struct intel_device_info dg1_info = {
> >  		BIT(VCS0) | BIT(VCS2),
> >  	/* Wa_16011227922 */
> >  	.__runtime.ppgtt_size = 47,
> > +
> > +	/*
> > +	 *  FIXME: Temporary hammer to disable rpm.
> > +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
> > +	 *  function will be unsupported in case PCIe endpoint function is in D3.
> > +	 *  But both DG1/DG2 has a hardware bug that violates the PCIe specs

/has/have/

> > +	 *  and supports the iomem read write transaction over PCIe bus despite

/supports/support/

> > +	 *  endpoint is D3 state.
> > +	 *  Due to above H/W bug, we had never observed any issue with i915 runtime
> > +	 *  PM versus lmem access.
> > +	 *  But this issue gets discover when PCIe gfx endpoint's upstream

/gets discover/becomes visible/

> > +	 *  bridge enters to D3, at this point any lmem read/write access will be
> > +	 *  returned as unsupported request. But again this issue is not observed
> > +	 *  on every platform because it has been observed on few host machines
> > +	 *  DG1/DG2 endpoint's upstream bridge does not binds with pcieport driver.

/binds/bind/

> > +	 *  which really disables the PCIe power savings and leaves the bridge to D0
> > +	 *  state.
> > +	 *  Let's disable i915 rpm till we fix all known issue with lmem access in D3.
> > +	 */
> > +	.has_runtime_pm = 0,
> >  };
> >  
> >  static const struct intel_device_info adl_s_info = {
> > @@ -1076,6 +1096,7 @@ static const struct intel_device_info dg2_info = {
> >  	XE_LPD_FEATURES,
> >  	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> >  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> > +	.has_runtime_pm = 0,
> 
> The FIXME msg can be smaller, but it also needs to be here.

I actually like the comment, is very clear and helps
understanding the issue :)

Thanks again for addressing the issue and with the hope to see
the proper fix soon:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> With this in place fell free to use:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Since the proper solution might take a while let's protect from this case,
> regardless of any other on going discussion about the force_probe protection.
> 
> 
> >  	.require_force_probe = 1,
> >  };
> >  
> > -- 
> > 2.26.2
> > 
