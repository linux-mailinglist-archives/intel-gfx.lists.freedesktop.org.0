Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18BC50A1CC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 16:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA99F10E4CA;
	Thu, 21 Apr 2022 14:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBF910E906
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 14:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650550316; x=1682086316;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5E5+aDcFxKYA7w+3UjF0X/Q7TnfWDpEEAfzyGHA4sLg=;
 b=DABpU/4VQnQgKG65efg8Ju8D2jhiClytvXWoZlXy2l4rOqL/8cztWsBS
 OU1358VFR+pd5wdmqznWV5T+VcOkbR57AtC3zeL9f255E+GirK9HSqrNj
 ZnVgU1EmdQYlrf+OsKw3abk0PaP19/gsdbWBaNQqQJZga8Z/hvAdjBJ2x
 l0T8BayawPKcRYO9SHp8fkwqXtKdlZ5Vi7Gwh5FzdA7ks2CenZWa0Fr22
 oZqU5vo9yZd0Bxn4FrUwNbWonc0bfrGIWRMvlTS199CzLusF35/0QDayL
 tO8mSTIffkM6nXwgXLCUMO3FeQPnZpTnEgTQUUP0krG+uZ+qN7DKBt4N9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="246256604"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="246256604"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 07:11:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="530311940"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 21 Apr 2022 07:11:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Apr 2022 17:11:52 +0300
Date: Thu, 21 Apr 2022 17:11:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <YmFmKEW5EfGPoKyv@intel.com>
References: <20220413082826.120634-1-jouni.hogander@intel.com>
 <ac1c0383b20eeec0f86e439d4889a55fcbf8cd4e.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac1c0383b20eeec0f86e439d4889a55fcbf8cd4e.camel@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check EDID for HDR static
 metadata when choosing blc
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Filippo Falezza <filippo.falezza@outlook.it>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 04:44:13PM -0400, Lyude Paul wrote:
> Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks for the patch and review. Pushed to drm-intel-next.

> 
> On Wed, 2022-04-13 at 11:28 +0300, Jouni Högander wrote:
> > We have now seen panel (XMG Core 15 e21 laptop) advertizing support
> > for Intel proprietary eDP backlight control via DPCD registers, but
> > actually working only with legacy pwm control.
> > 
> > This patch adds panel EDID check for possible HDR static metadata and
> > Intel proprietary eDP backlight control is used only if that exists.
> > Missing HDR static metadata is ignored if user specifically asks for
> > Intel proprietary eDP backlight control via enable_dpcd_backlight
> > parameter.
> > 
> > v2 :
> > - Ignore missing HDR static metadata if Intel proprietary eDP
> >   backlight control is forced via i915.enable_dpcd_backlight
> > - Printout info message if panel is missing HDR static metadata and
> >   support for Intel proprietary eDP backlight control is detected
> > 
> > Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface
> > (only SDR for now)")
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Filippo Falezza <filippo.falezza@outlook.it>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 34 ++++++++++++++-----
> >  1 file changed, 26 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 97cf3cac0105..fb6cf30ee628 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -97,6 +97,14 @@
> >  
> >  #define INTEL_EDP_BRIGHTNESS_OPTIMIZATION_1                           
> > 0x359
> >  
> > +enum intel_dp_aux_backlight_modparam {
> > +       INTEL_DP_AUX_BACKLIGHT_AUTO = -1,
> > +       INTEL_DP_AUX_BACKLIGHT_OFF = 0,
> > +       INTEL_DP_AUX_BACKLIGHT_ON = 1,
> > +       INTEL_DP_AUX_BACKLIGHT_FORCE_VESA = 2,
> > +       INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
> > +};
> > +
> >  /* Intel EDP backlight callbacks */
> >  static bool
> >  intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> > @@ -126,6 +134,24 @@ intel_dp_aux_supports_hdr_backlight(struct
> > intel_connector *connector)
> >                 return false;
> >         }
> >  
> > +       /*
> > +        * If we don't have HDR static metadata there is no way to
> > +        * runtime detect used range for nits based control. For now
> > +        * do not use Intel proprietary eDP backlight control if we
> > +        * don't have this data in panel EDID. In case we find panel
> > +        * which supports only nits based control, but doesn't provide
> > +        * HDR static metadata we need to start maintaining table of
> > +        * ranges for such panels.
> > +        */
> > +       if (i915->params.enable_dpcd_backlight !=
> > INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
> > +           !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
> > +             BIT(HDMI_STATIC_METADATA_TYPE1))) {
> > +               drm_info(&i915->drm,
> > +                        "Panel is missing HDR static metadata. Possible
> > support for Intel HDR backlight interface is not used. If your backlight
> > controls don't work try booting with i915.enable_dpcd_backlight=%d. needs
> > this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for
> > details.\n",
> > +                        INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
> > +               return false;
> > +       }
> > +
> >         panel->backlight.edp.intel.sdr_uses_aux =
> >                 tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> >  
> > @@ -413,14 +439,6 @@ static const struct intel_panel_bl_funcs
> > intel_dp_vesa_bl_funcs = {
> >         .get = intel_dp_aux_vesa_get_backlight,
> >  };
> >  
> > -enum intel_dp_aux_backlight_modparam {
> > -       INTEL_DP_AUX_BACKLIGHT_AUTO = -1,
> > -       INTEL_DP_AUX_BACKLIGHT_OFF = 0,
> > -       INTEL_DP_AUX_BACKLIGHT_ON = 1,
> > -       INTEL_DP_AUX_BACKLIGHT_FORCE_VESA = 2,
> > -       INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
> > -};
> > -
> >  int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> >  {
> >         struct drm_device *dev = connector->base.dev;
> 
> -- 
> Cheers,
>  Lyude Paul (she/her)
>  Software Engineer at Red Hat

-- 
Ville Syrjälä
Intel
