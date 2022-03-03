Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E70F4CC8E6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 23:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8F010E35F;
	Thu,  3 Mar 2022 22:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59D3110E35F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 22:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646346543; x=1677882543;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lHNL3/TaxLJzfG1KYu+uRAarxZ5o0Tb/gWmrgXuYqV0=;
 b=KfXRdAAFRNqMCYxbpDIQpSc7UFJ+DB73lYK5D55whKAAuOgjN6tA2sPO
 iau7ug11ePOBwy9FmB8oPp+7zRjiGTo0mJBPtIXArDzPfaaxt6mdMohwa
 R8mVOmNt4RQ528naKc9qP92Qn62AQ6KWB6mZQTplEITpU0Rfm9WmZrFrc
 d3aXq9IDAfNDbUbchGBjRodfevSSNRSYG1JarVFx0kIhPWv0HCJx53xf6
 SATWP1KjP1Gr75iqQFLivKLsmnP2yg9Pi0o3O7jv+EVT5Wlvpy/UuyPyU
 5Se6n9cGInLuYQIg2PHf+9zbd366/LQ6RYgL0KPbT4mhC6cMaj3oylCHl Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="254024202"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="254024202"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:29:02 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="536041551"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:29:02 -0800
Date: Thu, 3 Mar 2022 14:29:52 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220303222951.GA17231@labuser-Z97X-UD5H>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
 <20220223131315.18016-13-ville.syrjala@linux.intel.com>
 <20220223200022.GC9839@labuser-Z97X-UD5H>
 <Yhdfj3T+VWOumMYZ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yhdfj3T+VWOumMYZ@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 12/13] drm/i915: Use bigjoiner_pipes more
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

On Thu, Feb 24, 2022 at 12:35:59PM +0200, Ville Syrjälä wrote:
> On Wed, Feb 23, 2022 at 12:00:28PM -0800, Navare, Manasi wrote:
> > On Wed, Feb 23, 2022 at 03:13:14PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Replace the hardcoded 2 pipe assumptions when we're massaging
> > > pipe_mode and the pipe_src rect to be suitable for bigjoiner.
> > > Instead we can just count the number of pipes in the bitmask.
> > > 
> > > v2: Introduce intel_bigjoiner_num_pipes()
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++-------
> > >  1 file changed, 20 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 9b4013ed3d98..7a09bb33c1eb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -368,6 +368,11 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
> > >  		crtc->pipe == bigjoiner_master_pipe(crtc_state);
> > >  }
> > >  
> > > +static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
> > > +{
> > > +	return hweight8(crtc_state->bigjoiner_pipes);
> > > +}
> > 
> > Okay yes makes sense. Although bigjoiner will always be between just 2 pipes so why not hardcode to 2 and
> > use the  if (!crtc_state->bigjoiner_pipes) as the check instead of num_pipes < 2.
> > When we have a joiner for 4 pipes, in that case also bigjoiner will still be only between 2 pipes.
> > So in bigjoiner_pipe mask, it will always only have 2 pipes.
> 
> It'll be whatever pipes we have when we have more pipes.

Okay agreed might be good from scalability pov

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> 
> -- 
> Ville Syrjälä
> Intel
