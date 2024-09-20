Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5E397D8BF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 18:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A7C10E857;
	Fri, 20 Sep 2024 16:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GFfBu3Lt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B9110E856;
 Fri, 20 Sep 2024 16:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726851553; x=1758387553;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=etDG+o8v7Y9qZ/pecU5J8zqjzwyYVejlPPl5ksZlXJc=;
 b=GFfBu3LtCTE8A16DlHIno8ABeopm5CvfTrBkYbriuryWScVVIikas0KC
 j5QULor15pq1B9FFOCnGFxJ63hvO/HmhdFVKCQOedtN8aoE++eSIMp/ip
 zXGCrmjIooxIwOsdmUY7JSlqhEeLedo/a7JmUJBKuI/7Kmq5Isce3wB7w
 nPBqxQ1qzYXYJ8O8jOdpYHLAjSyTI4phufl7/k1gxOd5oH+/L9GfSokt7
 9S4/0AVHAD3f0VP+opf1iYVW71SOQPn2m+o2ubGyeviEBV4yuxnT/6Zgd
 pbH354copB0H2fhNTVeuyjm/DTvLIHC+t/IPJ4Tc1W4lDi0b9w7uH8zQS w==;
X-CSE-ConnectionGUID: z+WNf73aT62N3HFtd6wQ4g==
X-CSE-MsgGUID: 4ztFfytrShyJa4HD12MxzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="25385783"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25385783"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 09:59:13 -0700
X-CSE-ConnectionGUID: 2bQUSoo/Q4Sgmt17mzisAA==
X-CSE-MsgGUID: 7/002r6bSBixDuHg7LJycg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70510903"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Sep 2024 09:59:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2024 19:59:09 +0300
Date: Fri, 20 Sep 2024 19:59:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
Message-ID: <Zu2p3dlneXYbmWEu@intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
 <87y13xf4p3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y13xf4p3.fsf@intel.com>
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

On Thu, Sep 12, 2024 at 03:15:52PM +0300, Jani Nikula wrote:
> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Replace the three hand rolled "$VBT"s with a vbt_signature[]
> > to avoid accidents.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index cbbda94c3dab..0b92b494117f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
> >  	return _vbt + vbt->bdb_offset;
> >  }
> >  
> > +static const char vbt_signature[4] = "$VBT";
> 
> Always a bit scary to add strings without termination, but I guess it's
> justified here.

I guess we could make it look less like a string with eg.
static const u8 vbt_signature[] = { '$', 'V', 'B', 'T' };
?

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +
> >  /**
> >   * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
> >   * @display:	display device
> > @@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_display *display,
> >  		return false;
> >  	}
> >  
> > -	if (memcmp(vbt->signature, "$VBT", 4)) {
> > +	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature))) {
> >  		drm_dbg_kms(display->drm, "VBT invalid signature\n");
> >  		return false;
> >  	}
> > @@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >  	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
> >  	oprom_offset &= OROM_OFFSET_MASK;
> >  
> > +	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
> > +
> >  	for (count = 0; count < oprom_size; count += 4) {
> >  		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
> > -		if (data == *((const u32 *)"$VBT")) {
> > +		if (data == *((const u32 *)vbt_signature)) {
> >  			found = oprom_offset + count;
> >  			break;
> >  		}
> > @@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
> >  	if (!oprom)
> >  		return NULL;
> >  
> > +	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
> > +
> >  	/* Scour memory looking for the VBT signature. */
> >  	for (i = 0; i + 4 < size; i += 4) {
> > -		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
> > +		if (ioread32(oprom + i) != *((const u32 *)vbt_signature))
> >  			continue;
> >  
> >  		p = oprom + i;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
