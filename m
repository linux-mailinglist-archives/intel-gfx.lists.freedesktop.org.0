Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C51C88A8BA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 17:17:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1095210E168;
	Mon, 25 Mar 2024 16:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kk34k+iH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC6F10E168
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 16:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711383442; x=1742919442;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gx3K3Cs3C81ma+IrLcWq7vcsCsbIYTUnBaTz9s8uaXE=;
 b=Kk34k+iH8e+qsCFlDxcnSlg7aglivuPxck3EGXDde/MroVFjSOo0wu2E
 11Tqr6RZimTRcTmRyNCzixoZDk9STiaIv+BJyh0qhLA0rp9OMKj9hvbko
 ZISAl5HMk+NhCxoDqIpEFBc8y6/wkTUU7rlOdY9QoTU+KnVm6MtxK9jEd
 8CR388eyddBs7PfoiJWwB/YpLlCuDugHZm4MpdGYt0b8ps2fdJQHLqM5n
 dxXDO1jX0cETrjzxoWmyAHY7BEgCUTFUlqAR548Li6c0dcqpUiBUP81oB
 m854JPySSGifK6BfZqlU7hGVIrL+QEafQk3T7y13irsm7FquR1HB+bnmP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6524501"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6524501"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 09:17:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="827784740"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784740"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 09:17:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 18:17:17 +0200
Date: Mon, 25 Mar 2024 18:17:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v8 4/4] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Message-ID: <ZgGjjenPT1WGF4Ev@intel.com>
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
 <20240325130156.205726-5-vinod.govindapillai@intel.com>
 <ZgGSKCaoUUieIja5@intel.com>
 <e5cf6ed3867e04c645bc1103b9ce1f4a0e65db68.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e5cf6ed3867e04c645bc1103b9ce1f4a0e65db68.camel@intel.com>
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

On Mon, Mar 25, 2024 at 04:11:27PM +0000, Govindapillai, Vinod wrote:
> Hi Ville,
> 
> On Mon, 2024-03-25 at 17:03 +0200, Ville Syrjälä wrote:
> > On Mon, Mar 25, 2024 at 03:01:56PM +0200, Vinod Govindapillai wrote:
> > > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > 
> > > There could be multiple qgv and psf gv points with similar values
> > > In case if we need to set one such QGV or psf gv  point where there
> > > could be duplicate entries, we would have to select all those
> > > points. Otherwise pcode might reject the GV configuration. We do
> > > handle this when we set appropriate qgv and psf gv as part of
> > > intel_bw_atomic_check calls. But during the bw_init force disable
> > > QGV points phase, we need to select all those points corresponding
> > > to the maximum bw as well.
> > > 
> > > v1: - use the same treatment to qgv points as well (Vinod)
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index 844d2d9efeb4..20c67474154e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -847,6 +847,8 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
> > >                 if (max_data_rate > max_bw) {
> > >                         max_bw_point_mask = BIT(i);
> > >                         max_bw = max_data_rate;
> > > +               } else if (max_data_rate == max_bw) {
> > > +                       max_bw_point_mask |= BIT(i);
> > >                 }
> > >         }
> > >  
> > > @@ -866,6 +868,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private
> > > *i915)
> > >                 if (max_data_rate > max_bw) {
> > >                         max_bw_point_mask = BIT(i);
> > >                         max_bw = max_data_rate;
> > > +               } else if (max_data_rate == max_bw) {
> > > +                       max_bw_point_mask |= BIT(i);
> > 
> > This doesn't seem entirely safe. What happens if we somehow
> > have two qgv points with the same bandwidth but different
> > uderlying clock/gear ratio/etc.?
> > 
> > While such behaviour may not seem entirely sensible, given
> > that we need to do this stuff at all, I don't think we can
> > assume any kind of sensible behaviour from pcode here.
> > 
> > So I think we will need to check that the qgv points
> > being used here are in fact 100% identical.
> 
> Main thing is we need to match the comparison what pcode is doing.. right? 
> We compare the deratedbw of different QGV points calculated using the rest of the information
> provided as part of qgv info. I assume pcode is also going to do the same kind of comparison or that
> is what I understood from one of the email conversation.
> 
> Do you want this clarified from pcode team?

If pcode is only checking the bandwidth then it might be
technically broken as then we can't be 100% sure we can
actually disable sagv. The only way that can work is if
pcode then never ever switches between two qgv points
that have provide the same bandwidth.

> 
> BR
> vinod
> 
> > 
> > >                 }
> > >         }
> > >  
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
