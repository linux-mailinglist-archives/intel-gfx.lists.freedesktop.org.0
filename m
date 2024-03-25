Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0D688AA8A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 18:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C6110E9EC;
	Mon, 25 Mar 2024 17:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gz3UZZ3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFCF10E9E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 17:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711386112; x=1742922112;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OF19juBDqFrGs5XfkUIFjZyZAWtuTcNZHsYc4e5eebE=;
 b=gz3UZZ3i6+8M+8OrcSeDU/Llz3jZkl+vvXD+Jj2SC5hmFXZ7Go6n94cY
 L84oTk2qa6mYaDyfObVrtdgbxu4tAJ6tG6t3Fipb1aClb7GGpsGMdM09s
 /gzEhHeixbh9mzTrpgyZV/yBFm7NHj8u7RPgb88X2LnfemTqxsDPIWNJ0
 /btzkpxqAiLCHZAVrSS/K+KxQSzufqTv4GGyO7vCkO9FACBVNPFTeLO82
 efecvDehlRZEvSnu8Y2KgTwlqRodA31XhYQ4bLgVPaOcnXbf7v3rbGXEi
 DMDJ8bm885HV2YsWr8PJsTc+epI4cUKS/uMpK4oablJ4uHCnvfTxzOvzg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6612698"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6612698"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 10:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="827784765"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 10:01:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 19:01:48 +0200
Date: Mon, 25 Mar 2024 19:01:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <ZgGt_AJK-iD6eSBw@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
 <ZgGKdnlh5Kw5mY_V@intel.com> <ZgGsW3xQCJXGru1v@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgGsW3xQCJXGru1v@intel.com>
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

On Mon, Mar 25, 2024 at 06:55:21PM +0200, Lisovskiy, Stanislav wrote:
> On Mon, Mar 25, 2024 at 04:30:14PM +0200, Ville Syrjälä wrote:
> > On Mon, Mar 25, 2024 at 01:23:27PM +0200, Stanislav Lisovskiy wrote:
> > > In order to make sure we are not breaking the proper sequence
> > > lets to updates step by step and don't change MBUS join value
> > > during MDCLK/CDCLK programming stage.
> > > MBUS join programming would be taken care by pre/post ddb hooks.
> > > 
> > > v2: - Reworded comment about using old mbus_join value in
> > >       intel_set_cdclk(Ville Syrjälä)
> > > 
> > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
> > >  1 file changed, 11 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 31aaa9780dfcf..c7813d433c424 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > >  
> > >  	if (pipe == INVALID_PIPE ||
> > >  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> > > +		struct intel_cdclk_config cdclk_config;
> > > +
> > >  		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > >  
> > > -		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> > > +		/*
> > > +		 * By this hack we want to prevent mbus_join to be changed
> > > +		 * beforehand
> > 
> > That sentence is still confusing.
> 
> Write it yourself then. I'm not going to rephrase it anymore.

You didn't rephrase it at all AFAIK.

Something like
"MBUS joining will be changed later by
 intel_dbuf_mbus_{pre,post}_ddb_update(), thus
 keep using the old joined_mbus state during cdclk
 programming to match the actual hardware state."

> 
> > 
> > > - we will take care of this later in
> > > +		 * intel_dbuf_mbus_post_ddb_update
> > > +		 */
> > > +		cdclk_config = new_cdclk_state->actual;
> > > +		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
> > > +
> > > +		intel_set_cdclk(i915, &cdclk_config, pipe);
> > >  	}
> > >  }
> > >  
> > > -- 
> > > 2.37.3
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
