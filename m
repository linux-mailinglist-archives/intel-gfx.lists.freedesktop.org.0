Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C217541DED4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 18:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91B76EC06;
	Thu, 30 Sep 2021 16:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CFAA6EC06
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 16:21:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247768301"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="247768301"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 09:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="564266842"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 30 Sep 2021 09:16:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 19:16:10 +0300
Date: Thu, 30 Sep 2021 19:16:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVXiyl86FHr1eL/v@intel.com>
References: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
 <20210930134310.31669-3-ville.syrjala@linux.intel.com>
 <20210930160903.GE2418125@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930160903.GE2418125@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Remove DP_PORT_EN stuff from
 link training code
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

On Thu, Sep 30, 2021 at 07:09:03PM +0300, Imre Deak wrote:
> On Thu, Sep 30, 2021 at 04:43:09PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > 
> > Setting DP_PORT_EN in intel_dp->DP is already handled by
> > intel_dp_enable_port() so there is no point in setting it also
> > from the link training code.
> > 
> > For DDI platforms a bit with that name doesn't even exist. The
> > counterpart is DDI_BUF_CTL_ENABLE, which is already set up by
> > intel_ddi_prepare_link_retrain(). Fortunately it is the same bit
> > so there was no harm in doing this from the platform independent
> > code as well. But it's just confusing when platform independent
> > code sets platform specific bits in intel_dp->DP. Just get rid
> > of it.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Imre Deak <imre.deak.intel.com>
> 
> On pre-DDI platforms intel_dp_enable_port() may not be called before
> short HPD/link-retraining, but the init/resume time HW readout will
> set DP_PORT_EN for that case.

I actually wonder what happens on DDI platforms. We don't do the resume
readout there AFAICS, so if link retraining happens before any modesets
are we just screwed atm?

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 449499a5c4c1..053ed9302cda 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -499,8 +499,6 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
> >  		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> >  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
> >  
> > -	intel_dp->DP |= DP_PORT_EN;
> > -
> >  	return true;
> >  }
> >  
> > -- 
> > 2.32.0
> > 

-- 
Ville Syrj�l�
Intel
