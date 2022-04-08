Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4B4F9798
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0986110E2DD;
	Fri,  8 Apr 2022 14:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B0E10E2DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649426652; x=1680962652;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=82ojsq+j6r/ye3TZo0Err3gxtayMUZbW5K0jfstJ4Do=;
 b=ZuLlzbBPE1UfiAHcQoTyVsLcDn2pYrysgnVqj9mKMvo5GwQtljNacPtF
 anBjGJZJ+84IJjEus3nff/9ap+Nmskf7ACgEfA2pjImrvrWTCyS1G3Ac3
 ZRcF1+2dh3odNfjyHeGjWEnOQoSxSYj4/7N9urt0Ym8e7Zk5bSLVa5ErD
 XPuqhSEtnEX62FKDZwyo0Cbai8Xg/Lxp8iGsbdO4eWVpDEL/f4w4StUt4
 2Fm//2oPp3JMS0eiV3CmSlBIluXO+DjcsWhGqkDmjfMceh7ENRBpMhXa5
 3sbivVJdBxt8m4XJwFkpBf4fqdXpNutp/a9kAa+HpAS+fqhVE1OrteVJQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241530855"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="241530855"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:04:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="698191529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 08 Apr 2022 07:04:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 17:04:09 +0300
Date: Fri, 8 Apr 2022 17:04:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlBA2Vq4daHiKwLV@intel.com>
References: <20220405173410.11436-10-ville.syrjala@linux.intel.com>
 <20220406134002.30761-1-ville.syrjala@linux.intel.com>
 <87lewg4yb7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87lewg4yb7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 09/22] drm/i915/bios: Get access to the
 tail end of the LFP data block
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

On Thu, Apr 07, 2022 at 08:07:24PM +0300, Jani Nikula wrote:
> On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We need to start parsing stuff from the tail end of the LFP data block.
> > This is made awkward by the fact that the fp_timing table has variable
> > size. So we must use a bit more finesse to get the tail end, and to
> > make sure we allocate enough memory for it to make sure our struct
> > representation fits.
> >
> > v2: Rebase due to the preallocation of BDB blocks
> > v3: Rebase due to min_size WARN relocation
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 39 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 ++++++++
> >  2 files changed, 55 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index d32091dad1b0..9a14d55b636c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -188,7 +188,7 @@ static const struct {
> >  	{ .section_id = BDB_LVDS_LFP_DATA_PTRS,
> >  	  .min_size = sizeof(struct bdb_lvds_lfp_data_ptrs), },
> >  	{ .section_id = BDB_LVDS_LFP_DATA,
> > -	  .min_size = sizeof(struct bdb_lvds_lfp_data), },
> > +	  .min_size = 0, /* special case */ },
> >  	{ .section_id = BDB_LVDS_BACKLIGHT,
> >  	  .min_size = sizeof(struct bdb_lfp_backlight_data), },
> >  	{ .section_id = BDB_LFP_POWER,
> > @@ -203,6 +203,23 @@ static const struct {
> >  	  .min_size = sizeof(struct bdb_generic_dtd), },
> >  };
> >  
> > +static size_t lfp_data_min_size(struct drm_i915_private *i915)
> > +{
> > +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> > +	size_t size;
> > +
> > +	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> 
> This depends on that block having been initialized before. Maybe the
> ordering requirement deserves a comment in bdb_blocks[].

Sure.

> 
> > +	if (!ptrs)
> > +		return 0;
> > +
> > +	size = sizeof(struct bdb_lvds_lfp_data);
> 
> Basically that and the struct definition are bogus, though? They assume
> a rigid structure. It might be true for some specific platforms, but
> generally likely not.
> 
> Or we could of course just add a comment about that in intel_vbt_defs.h.

I think I had that at some point. But I guess I lost it during
one of the many rewrites I did to this stuff.

> 
> > +	if (ptrs->panel_name.table_size)
> > +		size = max(size, ptrs->panel_name.offset +
> > +			   sizeof(struct bdb_lvds_lfp_data_tail));
> > +
> > +	return size;
> > +}
> > +
> >  static bool validate_lfp_data_ptrs(const void *bdb,
> >  				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
> >  {
> > @@ -492,6 +509,9 @@ static void init_bdb_blocks(struct drm_i915_private *i915,
> >  		enum bdb_block_id section_id = bdb_blocks[i].section_id;
> >  		size_t min_size = bdb_blocks[i].min_size;
> >  
> > +		if (section_id == BDB_LVDS_LFP_DATA)
> > +			min_size = lfp_data_min_size(i915);
> 
> Nitpick, could also leave the "default" min size in bdb_blocks[], have
> lfp_data_min_size() return the other value or 0, and have the max()
> here. *shrug*

Could work. I was also pondering making .min_size a vfunc, but that
would lead to excessive boilerplate for all the other blocks. If only
we had lambdas...

> 
> > +
> >  		init_bdb_block(i915, bdb, section_id, min_size);
> >  	}
> >  }
> > @@ -562,6 +582,16 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
> >  	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
> >  }
> >  
> > +static const struct bdb_lvds_lfp_data_tail *
> > +get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> > +		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
> > +{
> > +	if (ptrs->panel_name.table_size)
> > +		return (const void *)data + ptrs->panel_name.offset;
> > +	else
> > +		return NULL;
> > +}
> > +
> >  /* Parse general panel options */
> >  static void
> >  parse_panel_options(struct drm_i915_private *i915)
> > @@ -666,6 +696,7 @@ static void
> >  parse_lfp_data(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_lvds_lfp_data *data;
> > +	const struct bdb_lvds_lfp_data_tail *tail;
> >  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> >  
> >  	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> > @@ -678,6 +709,12 @@ parse_lfp_data(struct drm_i915_private *i915)
> >  
> >  	if (!i915->vbt.lfp_lvds_vbt_mode)
> >  		parse_lfp_panel_dtd(i915, data, ptrs);
> > +
> > +	tail = get_lfp_data_tail(data, ptrs);
> > +	if (!tail)
> > +		return;
> > +
> > +	(void)tail;
> 
> Mmmkay.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >  }
> >  
> >  static void
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index e4a11c3e3f3e..64551d206aeb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -783,6 +783,23 @@ struct lvds_lfp_panel_name {
> >  	u8 name[13];
> >  } __packed;
> >  
> > +struct lvds_lfp_black_border {
> > +	u8 top; /*  227 */
> > +	u8 bottom; /*  227 */
> > +	u8 left; /* 238 */
> > +	u8 right; /* 238 */
> > +} __packed;
> > +
> > +struct bdb_lvds_lfp_data_tail {
> > +	struct lvds_lfp_panel_name panel_name[16]; /* 156-163? */
> > +	u16 scaling_enable; /* 187 */
> > +	u8 seamless_drrs_min_refresh_rate[16]; /* 188 */
> > +	u8 pixel_overlap_count[16]; /* 208 */
> > +	struct lvds_lfp_black_border black_border[16]; /* 227 */
> > +	u16 dual_lfp_port_sync_enable; /* 231 */
> > +	u16 gpu_dithering_for_banding_artifacts; /* 245 */
> > +} __packed;
> > +
> >  /*
> >   * Block 43 - LFP Backlight Control Data Block
> >   */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
