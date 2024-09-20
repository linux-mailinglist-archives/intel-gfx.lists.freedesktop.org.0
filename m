Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C78A97D8C2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 19:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E12910E856;
	Fri, 20 Sep 2024 17:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXmvmSJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC5E10E2F6;
 Fri, 20 Sep 2024 17:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726851663; x=1758387663;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zY1+emdSiZiH3UObY3yotdTetv5JV704FSm0+TzfGpM=;
 b=dXmvmSJrMjjabAu/jf9CUFGlFsA/Yuky05V7oESCkl9o/UBHrz3DAQDG
 QPk+lww2mBXy+p/g6aXU/bwZiok0WZyS95AIqiqn6BthS73YZHs6u3iAZ
 zjZskG55sZvrYWyczjfo/IwsBxS02rljBUxzEF0VACZ7TEbgrKaLHxkrH
 noTaZkZo7hwTlOKNG+ly0yRdjVV4z3s1b+fd0aAwbnLVTmuxv/mjPKfFk
 6+qdTp+IUcutQf3Ywwt3avwcx3NiIpqMUM/ATzdx/JjYaSp4ivP00O2ir
 OYvkb7wDekVofnTN/a7HXthnzfMg+1nZe7S4xDPthV8qpOCihw5g82Fx7 w==;
X-CSE-ConnectionGUID: 7qT4uLb+Q02sz2Cxru7UVw==
X-CSE-MsgGUID: tRUw4S4fQgOi1yue8NohzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="25385943"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25385943"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 10:00:54 -0700
X-CSE-ConnectionGUID: Nyblpzw/Tsymx+p7izvPUw==
X-CSE-MsgGUID: UE7UVvGvQ1C6r6Qn7WPh2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70511415"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Sep 2024 10:00:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2024 20:00:51 +0300
Date: Fri, 20 Sep 2024 20:00:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/bios: Extract intel_spi_read16()
Message-ID: <Zu2qQ15qcJxbE6-N@intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-4-ville.syrjala@linux.intel.com>
 <871q1pgjwk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871q1pgjwk.fsf@intel.com>
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

On Thu, Sep 12, 2024 at 03:02:03PM +0300, Jani Nikula wrote:
> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The SPI VBT codepath only knows how to read 4 bytes at a time.
> > So to read the 2 byte vbt_size it masks out the unwanted msbs.
> > Hide that little implementation detail inside a new intel_spi_read16()
> > helper. Alse rename the existing intel_spi_read() to intel_spi_read32()
> > to make it clear what it does.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index cc4a4cc2bf3e..cbbda94c3dab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3053,13 +3053,18 @@ static struct vbt_header *firmware_get_vbt(struct intel_display *display,
> >  	return vbt;
> >  }
> >  
> > -static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
> > +static u32 intel_spi_read32(struct intel_uncore *uncore, u32 offset)
> >  {
> >  	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
> >  
> >  	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
> >  }
> >  
> > +static u16 intel_spi_read16(struct intel_uncore *uncore, u32 offset)
> > +{
> > +	return intel_spi_read32(uncore, offset) & 0xffff;
> > +}
> > +
> >  static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >  					    size_t *size)
> >  {
> > @@ -3078,7 +3083,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >  	oprom_offset &= OROM_OFFSET_MASK;
> >  
> >  	for (count = 0; count < oprom_size; count += 4) {
> > -		data = intel_spi_read(&i915->uncore, oprom_offset + count);
> > +		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
> >  		if (data == *((const u32 *)"$VBT")) {
> >  			found = oprom_offset + count;
> >  			break;
> > @@ -3094,9 +3099,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >  	}
> >  
> >  	/* Get VBT size and allocate space for the VBT */
> > -	vbt_size = intel_spi_read(&i915->uncore,
> > -				  found + offsetof(struct vbt_header, vbt_size));
> > -	vbt_size &= 0xffff;
> > +	vbt_size = intel_spi_read16(&i915->uncore,
> > +				    found + offsetof(struct vbt_header, vbt_size));
> 
> Pedantically if vbt_size was the last member of struct vbt_header this
> could read past the checked size, but it's not and meh. Also nothing to
> do with this change, apart from this hiding the detail. Still meh.

This code raises a lot of other lingering questions as well:
- do 8/16 bit accesses not work at all?
- what happens on an unaligned 32bit access?

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  
> >  	if (vbt_size > oprom_size - count) {
> >  		drm_dbg(display->drm,
> > @@ -3109,7 +3113,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >  		goto err_not_found;
> >  
> >  	for (count = 0; count < vbt_size; count += 4)
> > -		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
> > +		*(vbt + store++) = intel_spi_read32(&i915->uncore, found + count);
> >  
> >  	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
> >  		goto err_free_vbt;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
