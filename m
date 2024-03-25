Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6974988AD85
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 19:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA93010EA7C;
	Mon, 25 Mar 2024 18:17:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwFfhASh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1A910EA7C
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 18:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711390624; x=1742926624;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lASTIDcsoutKmwi/7glvhSVU55L1gjZ+Ic1TEkcppBA=;
 b=GwFfhAShUpmngZHEETufByUhgI2Bm9Y7ntxo47ShdavJhsJbN9ly0T8A
 KewjIW+EfAKkdvRhUR+Q8s8TOVvSlyGkO1WFH+1OGRNdiGQlJL+I0bSCi
 foBypsHy7skqEtidFcdDeH2JiVYJ3ekun25eoP7Lv8XodPQ7MZcFclCu9
 bPbRqnidRSGnT2bsHs+OCWG2TEwdCOfYMH06InOEHqooJVPaliJvrdWRg
 gyxrJU1rHs6k31YdycagXb9kD88AEbKE+5E0OSxemnxRE0B5xEjtgJ/We
 7cG0oBSr2+L3WotavsmHjQsme6ZK2tIEwCXTWgwcOgxIEJS4ZFXhGIzPl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6539707"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6539707"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20382372"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:17:02 -0700
Date: Mon, 25 Mar 2024 20:16:55 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <ZgG/lzawZxE4FAcF@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
 <ZgGKdnlh5Kw5mY_V@intel.com> <ZgGsW3xQCJXGru1v@intel.com>
 <ZgGt_AJK-iD6eSBw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgGt_AJK-iD6eSBw@intel.com>
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

On Mon, Mar 25, 2024 at 07:01:48PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 06:55:21PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 25, 2024 at 04:30:14PM +0200, Ville Syrjälä wrote:
> > > On Mon, Mar 25, 2024 at 01:23:27PM +0200, Stanislav Lisovskiy wrote:
> > > > In order to make sure we are not breaking the proper sequence
> > > > lets to updates step by step and don't change MBUS join value
> > > > during MDCLK/CDCLK programming stage.
> > > > MBUS join programming would be taken care by pre/post ddb hooks.
> > > > 
> > > > v2: - Reworded comment about using old mbus_join value in
> > > >       intel_set_cdclk(Ville Syrjälä)
> > > > 
> > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
> > > >  1 file changed, 11 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > index 31aaa9780dfcf..c7813d433c424 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > > >  
> > > >  	if (pipe == INVALID_PIPE ||
> > > >  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> > > > +		struct intel_cdclk_config cdclk_config;
> > > > +
> > > >  		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > > >  
> > > > -		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> > > > +		/*
> > > > +		 * By this hack we want to prevent mbus_join to be changed
> > > > +		 * beforehand
> > > 
> > > That sentence is still confusing.
> > 
> > Write it yourself then. I'm not going to rephrase it anymore.
> 
> You didn't rephrase it at all AFAIK.
> 
> Something like
> "MBUS joining will be changed later by
>  intel_dbuf_mbus_{pre,post}_ddb_update(), thus
>  keep using the old joined_mbus state during cdclk
>  programming to match the actual hardware state."

Basically my comment says exactly same stuff but with other
words, i.e preventing changing mbus join value beforehand,
until intel_dbuf_mbus_post_ddb_update takes care of that.

> 
> > 
> > > 
> > > > - we will take care of this later in
> > > > +		 * intel_dbuf_mbus_post_ddb_update
> > > > +		 */
> > > > +		cdclk_config = new_cdclk_state->actual;
> > > > +		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
> > > > +
> > > > +		intel_set_cdclk(i915, &cdclk_config, pipe);
> > > >  	}
> > > >  }
> > > >  
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
