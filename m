Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB25A5F7428
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 08:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D56910E571;
	Fri,  7 Oct 2022 06:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A0C10E571
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 06:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665123673; x=1696659673;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UByQK4UP1TA+4t57ByrP+77ly4lTRjFkQcoMAsHEG7U=;
 b=hKUS08JCh+Lzl8jyTCNxy5RUUSPjIXLr+htaXf4/XLrFBogVuONvI4BS
 aNVWYjVigEezXjOISQ+kjVDE/7AUwHz7PWr8uikOnnRmyi7+mEgbO3iRJ
 HE+bjZ0OvQBzTnPqf9+AK1g2fUMsHBpwXJJ8+YQNavbFHl3ppChdFJBoA
 E4Eq0V8dkqgC0FbmKuNxY8ItYZUk2ATuUQX9j6ImZhQ6c777H7wXB+IwV
 fSPbe1ulOAJt0CVhyTNezWbMD4zCy7n5Y8rR3zl+WWyB48SadQugXomVm
 UGfs5A83vPW4uVTXAH+4Q4ImHBFy8xByJM03y8B/MwbjGx+KF/+3p15My w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="367789572"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="367789572"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 23:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="620125501"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="620125501"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 06 Oct 2022 23:21:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Oct 2022 09:21:09 +0300
Date: Fri, 7 Oct 2022 09:21:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yz/FVcnoGp3ELyeK@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-8-ville.syrjala@linux.intel.com>
 <Yz/Avhm/L5k8AiFP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yz/Avhm/L5k8AiFP@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915: Fix pipe gamma
 enable/disable vs. CxSR on gmch platforms
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

On Fri, Oct 07, 2022 at 09:01:34AM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Jun 22, 2022 at 06:54:50PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Like most other plane control register bits, the pipe gamma
> > enable bit is also blocked by CxSR. So make sure we kick the
> > machine out of CxSR before trying to change that bit.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Should that new i9xx_must_disable_cxsr function be extended
> to be used here as well?

That stuff happens far too early.

> 
> Besides that
> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index a27ce874a9e8..bc01a7d3b0d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1305,6 +1305,10 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
> >  			return PTR_ERR(plane_state);
> >  
> >  		new_crtc_state->update_planes |= BIT(plane->id);
> > +
> > +		/* plane control register changes blocked by CxSR */
> > +		if (HAS_GMCH(dev_priv))
> > +			new_crtc_state->disable_cxsr = true;
> >  	}
> >  
> >  	return 0;
> > -- 
> > 2.35.1
> > 

-- 
Ville Syrjälä
Intel
