Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35EE6F82B4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 14:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0435D10E5E1;
	Fri,  5 May 2023 12:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4894810E5E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 12:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683288739; x=1714824739;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=HWJQZrfq9GA0ikBGP92kV0KfNSWSIERhZ4d7NFUfnt4=;
 b=GvpuhxxMtUHSdDYOh3Y1FRl4T0oZgHqpcCehyRgNuo3J9vmxXVGvVcCr
 lafsoYde1SOTtgfpE1nOrLQqOKK6b/ZEAn3uMDogxHywIQELSDtAKdOhS
 PDSck38S2KGejcZG8X8ZEOc2RAUUFlSzvHz8fN9fW0BFFZpkKe0xx4jMX
 r+RQ2j9q9iLObz94pP8iXqvrLHVaC4QGULjvvZr6ml5Q5oa31FkxA9lOX
 xYcJJcPAeGshQ3btrrnVwzCLt5RL/VuNAoOcvJA+bm8tjZxL79fpEUVvO
 rc4fef13y1LF+aM0vY11bQJdHljbmn9QCg6Tu+fiNpOdeuh3P5QvvKBq5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="329551726"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="329551726"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 05:12:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="675047422"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="675047422"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 05:12:17 -0700
Date: Fri, 5 May 2023 15:12:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZFTyxiCJ0IUnJDS8@ideak-desk.fi.intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-9-imre.deak@intel.com>
 <058076d9802657c59f846856e1fb5f692cb8692a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <058076d9802657c59f846856e1fb5f692cb8692a.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 05, 2023 at 11:22:36AM +0300, Govindapillai, Vinod wrote:
> On Thu, 2023-05-04 at 02:10 +0300, Imre Deak wrote:
> > If a sink is disconnected it's expected that link training actions will
> > fail on it, so downgrade the error messages about such actions to be a
> > debug message. Such - expected - link training failures are more
> > frequent after a follow up patch, after which an active TypeC link is
> > reset after the sink is disconnected which also involves a link
> > training.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c               |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.h               |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 11 +++++++++--
> >  3 files changed, 11 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 4361c1ac65c3a..1942a05719776 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4179,7 +4179,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
> >         return ret;
> >  }
> >
> > -static bool intel_dp_is_connected(struct intel_dp *intel_dp)
> > +bool intel_dp_is_connected(struct intel_dp *intel_dp)
> >  {
> >         struct intel_connector *connector = intel_dp->attached_connector;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index ef39e4f7a329e..488da392fafe5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -42,6 +42,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >                               int link_rate, int lane_count);
> >  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >                                             int link_rate, u8 lane_count);
> > +bool intel_dp_is_connected(struct intel_dp *intel_dp);
> >  int intel_dp_retrain_link(struct intel_encoder *encoder,
> >                           struct drm_modeset_acquire_ctx *ctx);
> >  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f83944eaac128..2fe076e2d64b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -33,6 +33,7 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
> >         struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >         struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >         struct intel_connector *connector = intel_dp->attached_connector;
> > +       const char *discon_str = "";
> >         struct va_format vaf;
> >         va_list args;
> >
> > @@ -43,6 +44,11 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
> >         vaf.fmt = format;
> >         vaf.va = &args;
> >
> > +       if (is_error && !intel_dp_is_connected(intel_dp)) {
> > +               discon_str = " (sink disconnected)";
> > +               is_error = false;
> > +       }
> > +
> Hi imre,
> 
> If the ignore long HPD env variable is set, in case of spurious HPDs
> we will ignore the long HPDs and the connector status remains
> unchanged. So don't we need to downgrade the error messages to debug
> messages if dev_priv->display.hotplug.ignore_long_hpd is set?

Yes, if the connector state is forced in general, we should check here
the actual HPD state instead (as reported by intel_digital_port_connected()).

> 
> BR
> vinod
> 
> >         if (is_error)
> >                 drm_err(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
> >                         connector->base.base.id, connector->base.name,
> > @@ -50,11 +56,12 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
> >                         drm_dp_phy_name(dp_phy),
> >                         &vaf);
> >         else
> > -               drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
> > +               drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV%s\n",
> >                             connector->base.base.id, connector->base.name,
> >                             encoder->base.base.id, encoder->base.name,
> >                             drm_dp_phy_name(dp_phy),
> > -                           &vaf);
> > +                           &vaf,
> > +                           discon_str);
> >  }
> >
> >  #define lt_err(intel_dp, dp_phy, format, ...) \
> 
