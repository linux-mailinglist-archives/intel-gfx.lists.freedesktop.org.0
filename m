Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC545EA2EC
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 13:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFB210E2C2;
	Mon, 26 Sep 2022 11:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E357210E043
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 11:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664190992; x=1695726992;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nzHic9/97cNYuBmmAfQNyonBwF+cHfGSqYbftQJEsSI=;
 b=Lnk26LRDLYlHVkX5lZRhv4/qEkuWBuRsMVdcB4HFJcGi8SdbAe85Ctc/
 6sA2iz5pobkrdNQKCBFyJmFu7CHfFRy+muvGPqU+CB5DCLSc16HHqTFH4
 7lTTDvHy8L9QvvZPG2bKAdlgzNxaSjS9kPnWWh5OBFwQ3uecs69H6XwAH
 PirIbDw63ABDPI/5buN7XIqjMwBcDWctZ1jKGrrdu7JeYSpImeVBhw7cc
 rNRulHukaKe19YZref5uYf79Op2chp2JqdQe7lKlWQirX/353FABzBW9M
 fnKhQ5hLqrgIKL2DosVQBRMVhsKF/EO0lEW3W8F7hrPsbmfZPcB1CeJDw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="280726064"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="280726064"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 04:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="763399390"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="763399390"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 26 Sep 2022 04:16:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 14:16:29 +0300
Date: Mon, 26 Sep 2022 14:16:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <YzGKDRz0412ilvVI@intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-7-ville.syrjala@linux.intel.com>
 <6992a0ec208145381c0d587f7d7241684e3e1d09.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6992a0ec208145381c0d587f7d7241684e3e1d09.camel@coelho.fi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Extract
 intel_edp_backlight_setup()
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

On Mon, Sep 26, 2022 at 01:58:42PM +0300, Luca Coelho wrote:
> On Mon, 2022-09-12 at 14:18 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Pull the eDP backlight setup ino its own function. No
> > reason to pollute intel_edp_init_connector() with all
> > the mundane details.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 51 +++++++++++++++----------
> >  1 file changed, 30 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index a5eca5396fed..de5a4d2df78e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5217,6 +5217,35 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
> >  						       fixed_mode->vdisplay);
> >  }
> >  
> > +static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
> > +				      struct intel_connector *connector)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	enum pipe pipe = INVALID_PIPE;
> > +
> > +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> 
> Isn't this too restrictive? Isn't there another way to check whether
> the hardware supports backlight?

That's not what we're checking.

Only VLV/CHV have per-pipe backlight registers, whereas
other platforms have less insane design. So we only need
to figure out the pipe on VLV/CHV.

> 
> 
> > +		/*
> > +		 * Figure out the current pipe for the initial backlight setup.
> > +		 * If the current pipe isn't valid, try the PPS pipe, and if that
> > +		 * fails just assume pipe A.
> > +		 */
> > +		pipe = vlv_active_pipe(intel_dp);
> > +
> > +		if (pipe != PIPE_A && pipe != PIPE_B)
> > +			pipe = intel_dp->pps.pps_pipe;
> > +
> > +		if (pipe != PIPE_A && pipe != PIPE_B)
> > +			pipe = PIPE_A;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\n",
> > +			    connector->base.base.id, connector->base.name,
> > +			    pipe_name(pipe));
> > +	}
> > +
> > +	intel_backlight_setup(connector, pipe);
> 
> In most cases we will call intel_backlight_setup() with INVALID_PIPE. 
> Wouldn't it be better to skip this call completely in that case?

INVALD_PIPE doesn't mean "no backlight", it just means we don't
care about the pipe.

-- 
Ville Syrjälä
Intel
