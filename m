Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F6D97ED1E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 16:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 963ED10E3FC;
	Mon, 23 Sep 2024 14:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8cM5Mlh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7232610E3FC;
 Mon, 23 Sep 2024 14:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727101359; x=1758637359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T07yc8YMoGWIJ8Xl3YnxsD3q6bRlLgSgHV4rCZS8UQE=;
 b=V8cM5MlhVF/RZoRVeRin7MCpRZBip3RzNjzcJOz2YHWKqjY1CjuAKVbW
 MdxadxDCkMbLPeh7SPUHnRwMrDgZ0PJMf0oQlZ/NO0t0lI/23q6YdD/XL
 w72zh8oR7OOsX1dWsiIIG434UYGIv0+Yx5btdeBucA45Kt1JtzA8TIomJ
 yy/7uaY4Ca1u+9tEcy3yUhkbrieu2/u61zP7v5tlLDGcnOXa8ZG4c/u5S
 8lpvJ+kNsBRN0gGiBJqtUeK4HvbvNqgGpkNnfptEbmjcaIfS9Lj7eOHIT
 sld8So6bw1Hb5teoM2NuovXJ6Bh7vLhvoalkDw6ptb/uvGsopd/3NLEXn A==;
X-CSE-ConnectionGUID: LzbYtQUbQRiTV+3z427XJw==
X-CSE-MsgGUID: uTNR59NyRK2yjv1Y9A7JUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37427107"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="37427107"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:22:38 -0700
X-CSE-ConnectionGUID: cK/S3Z6rSTyaay29UuJ68A==
X-CSE-MsgGUID: 4dqQpE72RYyxqrkxrl7APA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71227620"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 07:22:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 17:22:34 +0300
Date: Mon, 23 Sep 2024 17:22:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
Message-ID: <ZvF5qm-uT8yXt6p7@intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
 <87y13xf4p3.fsf@intel.com> <Zu2p3dlneXYbmWEu@intel.com>
 <87frpq7myg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87frpq7myg.fsf@intel.com>
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

On Mon, Sep 23, 2024 at 12:12:39PM +0300, Jani Nikula wrote:
> On Fri, 20 Sep 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Sep 12, 2024 at 03:15:52PM +0300, Jani Nikula wrote:
> >> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > Replace the three hand rolled "$VBT"s with a vbt_signature[]
> >> > to avoid accidents.
> >> >
> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
> >> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > index cbbda94c3dab..0b92b494117f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
> >> >  	return _vbt + vbt->bdb_offset;
> >> >  }
> >> >  
> >> > +static const char vbt_signature[4] = "$VBT";
> >> 
> >> Always a bit scary to add strings without termination, but I guess it's
> >> justified here.
> >
> > I guess we could make it look less like a string with eg.
> > static const u8 vbt_signature[] = { '$', 'V', 'B', 'T' };
> > ?
> 
> Alternatively,
> 
> static const char *vbt_signature = "$VBT";

Or could just be something like:

static const char vbt_signature[] = "$VBT";
static const int vbt_signature_len = 4;

BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
BUILD_BUG_ON(vbt_signature_len != sizeof(u32));

and use vbt_signature_len instead sizeof(vbt_signature) everwhere.

> 
> >
> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >> 
> >> 
> >> > +
> >> >  /**
> >> >   * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
> >> >   * @display:	display device
> >> > @@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_display *display,
> >> >  		return false;
> >> >  	}
> >> >  
> >> > -	if (memcmp(vbt->signature, "$VBT", 4)) {
> >> > +	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature))) {
> 
> But then this would need strlen()
> 
> >> >  		drm_dbg_kms(display->drm, "VBT invalid signature\n");
> >> >  		return false;
> >> >  	}
> >> > @@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
> >> >  	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
> >> >  	oprom_offset &= OROM_OFFSET_MASK;
> >> >  
> >> > +	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
> 
> And maybe this could be sizeof(vbt_signature) < sizeof(u32)
> 
> All of the alternatives are a bit disappointing, so maybe let's just
> roll with the patch you already have here?
> 
> BR,
> Jani.
> 
> >> > +
> >> >  	for (count = 0; count < oprom_size; count += 4) {
> >> >  		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
> >> > -		if (data == *((const u32 *)"$VBT")) {
> >> > +		if (data == *((const u32 *)vbt_signature)) {
> >> >  			found = oprom_offset + count;
> >> >  			break;
> >> >  		}
> >> > @@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
> >> >  	if (!oprom)
> >> >  		return NULL;
> >> >  
> >> > +	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
> >> > +
> >> >  	/* Scour memory looking for the VBT signature. */
> >> >  	for (i = 0; i + 4 < size; i += 4) {
> >> > -		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
> >> > +		if (ioread32(oprom + i) != *((const u32 *)vbt_signature))
> >> >  			continue;
> >> >  
> >> >  		p = oprom + i;
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
