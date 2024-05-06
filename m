Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8942F8BCD1C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 13:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379BD10EF7E;
	Mon,  6 May 2024 11:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMWZmYGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACE710EF7E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 11:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714996046; x=1746532046;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8UzoLJdDQCZbkcyEKf6nYIGXoPeLturJsfiBb/fDPOQ=;
 b=OMWZmYGT5pdOfdGhBBSt8gJ9cpOwu7nwcNwj7tOW+0wSusgMy8U9DraK
 HKrcJlXluzwPBozMzyPxZeIlatpH6iyieJdV5tke9ExVGVp3ZEQW2LlTb
 verHegoUs9wwaK89NfjPQhkZdTQDzykgoi63TPFNvoaBIQRRa8yXLTbfa
 R5vo8LMn/4olKg9ZJwMhZ6PhYMBKSSZzbNAaYzrWeQGswGQlVyzRb3lV0
 OQcCmH14XodHW810Hvo44jdkO5plV1VvE3Gobghr8kI9oiguupHK4Gi94
 tESpqYruhNDr0SUI4BmvOwGb+2TCkBdTmNT2QEqq75cBSFaAwPVaxU2d/ w==;
X-CSE-ConnectionGUID: htr5PZWWTaW2spqYd4k0OQ==
X-CSE-MsgGUID: i9XoJ8rZRP2/yEt0G1r/mw==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10859202"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10859202"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 04:47:19 -0700
X-CSE-ConnectionGUID: uZDcN0F9SOyO+6ktkEMDkA==
X-CSE-MsgGUID: Elc+k27tSqudPhcXWHbYAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28152326"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 04:47:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 14:47:15 +0300
Date: Mon, 6 May 2024 14:47:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 31/35] drm/i915/bios: Define VBT block 57 (Vswing
 PreEmphasis Table) contents
Message-ID: <ZjjDQ9r675jsaXzY@intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-32-ville.syrjala@linux.intel.com>
 <87ikzrmg44.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ikzrmg44.fsf@intel.com>
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

On Mon, May 06, 2024 at 12:42:03PM +0300, Jani Nikula wrote:
> On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Define the contents of VBT block 57 (Vswing PreEmphasis Table).
> >
> > The contents is highly platform specific. The columns of the
> > table corresponding to some set of PHY/etc registers. The rows
> > corresponding to all legal vswing+pre-emphasis combinations
> > (ie. should be 10 rows in each table). And each table
> > corresponds to a platform specific (mostly undocumented)
> > mapping based on link rate/eDP low-vswing/etc. parameters.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I guess we should use this... but I'm not sure how.

Yeah. Based on he bug report there are at least some 
ICL machines that need this.

My rough idea is:
1. change our buf_trans structs to match this (ie. make
   everything u32 basically), and get the column->register
   mapping from the Windows code to make sure the struct
   members are in the correct order. Sadly none of this 
   is docuemnted in the VBT spec
2. also snoop the rules for selecting the correct table 
   from the Windows code, since that too is undocumented.
   I think there is some kind of note about this for ICL
   specifically, but even that might have been outdated
3. point at the correct VBT provided table rather than
   an in kernel table when appropriate

But I think there are some additional complications due to
mg/dkl vs. combo PHY as well. So probably not 100% trivial.

I don't totally like step 1 of that plan as it'll increase
the size of the in kernel buf_trans tables needlessly. But
the alternative would involve converting the VBT layout
into our layout as needed, which is perhaps a bit less
straightforward. Dunno.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 50d0d96fca67..0e5a2bf429f4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -184,6 +184,7 @@ enum bdb_block_id {
> >  	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
> >  	BDB_RGB_PALETTE			= 54, /* 180+ */
> >  	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
> > +	BDB_VSWING_PREEMPH		= 57, /* 218+ */
> >  	BDB_GENERIC_DTD			= 58, /* 229+ */
> >  	BDB_SKIP			= 254, /* VBIOS only */
> >  };
> > @@ -1486,6 +1487,16 @@ struct bdb_compression_parameters {
> >  	struct dsc_compression_parameters_entry data[16];
> >  } __packed;
> >  
> > +/*
> > + * Block 57 -  Vswing PreEmphasis Table
> > + */
> > +
> > +struct bdb_vswing_preemph {
> > +	u8 num_tables;
> > +	u8 num_columns;
> > +	u32 tables[];
> > +} __packed;
> > +
> >  /*
> >   * Block 58 - Generic DTD Block
> >   */
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
