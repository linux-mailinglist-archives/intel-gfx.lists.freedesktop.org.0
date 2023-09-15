Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1156F7A23F8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F0510E657;
	Fri, 15 Sep 2023 16:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3576A10E657
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694796844; x=1726332844;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RkbUU6+pixf+LUmaZ+Bttco8KGRP6PiCS441+vfBJwg=;
 b=PD9vhaQB7C+7JOuQPHgrb4WIX21AlB68aOyCD0NLAWrLlubZKXfD6cvc
 HjRCdCIq1SGERun+0FBktSxIRjK2N+uh45AcMkRpMtX+VAyDgDKTQHx6G
 2Su7CWm1jLNF2Gon+nhxze9UCSDW21u4NvFUq0Sxvdu+0yYyxZtIGpXQa
 y5H1NX+guUswq1Aet5MN9WGd/Cv3M5j6a7XPU8IiguuG29PoZdppv+VQL
 5gmnsk03UJbIIY88wsGAeLvDBciUVvZ8Q9jg99la3Hz1u1IK94p4RIuiG
 +u+mQ12pKumgx6RAzsHMLyX/M0RC3D1dnZl6XAao17i9ZrlloXXIXEx09 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="465654987"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="465654987"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="774381800"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="774381800"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga008.jf.intel.com with SMTP; 15 Sep 2023 09:54:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Sep 2023 19:54:00 +0300
Date: Fri, 15 Sep 2023 19:54:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZQSMKGTxsKlqhUBZ@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230915164854.GA2706891@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230915164854.GA2706891@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/fbc: Remove ancient 16k plane
 stride limit
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

On Fri, Sep 15, 2023 at 09:48:54AM -0700, Matt Roper wrote:
> On Thu, Sep 14, 2023 at 02:38:50PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The 16k max plane stride limit seems to be originally from
> > i965gm, and no limit explicit limit has been specified since (g4x+).
> 
> There are maximum limits specified on the PLANE_STRIDE register pages
> (bspec 7667, 50416, 69877).
> 
> display version 9 - 10:   max 8k pixels and 32k bytes
> display version 11 - 12:  max 8k pixels
> display version 13 - 20:  max 128k bytes

Sure, but those are handled elsewhere. Here we're only
interested in limits specific to FBC.

> 
> 
> Matt
> 
> > So let's assume the max plane stride itself is a suitable limit
> > also for the more recent FBC hardware.
> > 
> > In fact even for i965gm the max X-tiled stride is also 16k so
> > technically we don't need the check there either, but let's
> > keep it there anyway since it's explicitly mentioned in the
> > spec. Gen2/3 have more strict limits checked separately.
> > 
> > Cc: Swati Sharma <swati2.sharma@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 817e5784660b..1b3358a0fbfb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -866,7 +866,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
> >  	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
> >  		return stride == 4096 || stride == 8192;
> >  
> > -	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
> > +	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
> > +	    (stride < 2048 || stride > 16384))
> >  		return false;
> >  
> >  	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> > @@ -874,9 +875,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
> >  	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
> >  		return false;
> >  
> > -	if (stride > 16384)
> > -		return false;
> > -
> >  	return true;
> >  }
> >  
> > -- 
> > 2.41.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Ville Syrjälä
Intel
