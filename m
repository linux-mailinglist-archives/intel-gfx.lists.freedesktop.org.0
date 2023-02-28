Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 569636A5FFC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 20:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD18910E06C;
	Tue, 28 Feb 2023 19:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F3810E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 19:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677613930; x=1709149930;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RGRzMtgw8jz5cc/ZOo2TtRatJ6BQK6UZZMH2RfOXu0w=;
 b=nVgmV6KeDe3Z0CdLNrm3h61OYXqhKv5h7IfEt63T9Y3OqRNtvEUPNe1e
 4goSRUI4qdvUbDZqJcvQz46DRt2G+t7uNP22MrG5YNB2rWuy1Cf4aGJZl
 BCSJB0J33gSO5bRDEZvzjDgTWOlr1c1VbFxZNfYNDqxU09JRpzDGljBeW
 XMouZiiJrIOEo14mhMZB+r3e4QSY0xpy+VuSruXjA1xw9xgg07ZrwpM27
 KpeSxZq+AGzbKZNSAhvrfjz2v/7oNGrZcUFIo1GXbfWoBb6AByOkyycs/
 9jWBpGpKvzNkZtqxnrO2wwKlo7F8kpXwXo+pOPN3YzT6xNsoaAN6RsyZu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="399017487"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="399017487"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:52:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="674282476"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="674282476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 28 Feb 2023 11:52:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Feb 2023 21:52:06 +0200
Date: Tue, 28 Feb 2023 21:52:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y/5bZkc4E0TIRwvt@intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-5-ville.syrjala@linux.intel.com>
 <871qm9y6vz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871qm9y6vz.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 04/22] drm/i915: Introduce
 <platoform>_hotplug_mask()
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

On Tue, Feb 28, 2023 at 08:36:16PM +0200, Jani Nikula wrote:
> On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Pair each <platform>_hotplug_enables() function with
> > a corresponding <platform>_hotplug_mask() function so that
> > we can determine right bits to clear on a per hpd_pin basis.
> > We'll need this for turning on HPD sense for a specific
> > encoder rather than just all of them.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 231 ++++++++++++++++++++++----------
> >  1 file changed, 160 insertions(+), 71 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index 13ada0916c2a..ecfa6dad145a 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -2835,8 +2835,25 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >  		vlv_display_irq_reset(dev_priv);
> >  	spin_unlock_irq(&dev_priv->irq_lock);
> >  }
> >  
> > +static u32 ibx_hotplug_mask(struct drm_i915_private *i915,
> > +			    enum hpd_pin hpd_pin)
> 
> 
> What's the reason for passing i915 to these functions? I see no use in
> this series, am I missing something? Seems like it makes some calls a
> bit convoluted.
> 
> BR,
> Jani.
> 
> > +{
> > +	switch (hpd_pin) {
> > +	case HPD_PORT_A:

I think I initially copied over the LPT-LP check from
ibx_hotplug_enables(), which is what needed i915. But
apparently I got rid of it later, and so looks like 
i915 can go too.

> > +		return PORTA_HOTPLUG_ENABLE;
> > +	case HPD_PORT_B:
> > +		return PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_MASK;
> > +	case HPD_PORT_C:
> > +		return PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_MASK;
> > +	case HPD_PORT_D:
> > +		return PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_MASK;
> > +	default:
> > +		return 0;
> > +	}
> > +}
> > +
> >  static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  
> > @@ -2869,15 +2886,12 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> >  	 * duration to 2ms (which is the minimum in the Display Port spec).
> >  	 * The pulse duration bits are reserved on LPT+.
> >  	 */
> >  	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> > -			 PORTA_HOTPLUG_ENABLE |

No LPT-LP check here either, so presumably clearing the bit
unconditionally is fine... Yeah, doesn't look like there was
anything else there, ever.

> > -			 PORTB_HOTPLUG_ENABLE |
> > -			 PORTC_HOTPLUG_ENABLE |
> > -			 PORTD_HOTPLUG_ENABLE |
> > -			 PORTB_PULSE_DURATION_MASK |
> > -			 PORTC_PULSE_DURATION_MASK |
> > -			 PORTD_PULSE_DURATION_MASK,
> > +			 ibx_hotplug_mask(dev_priv, HPD_PORT_A) |
> > +			 ibx_hotplug_mask(dev_priv, HPD_PORT_B) |
> > +			 ibx_hotplug_mask(dev_priv, HPD_PORT_C) |
> > +			 ibx_hotplug_mask(dev_priv, HPD_PORT_D),
> >  			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
> >  }
> >  

-- 
Ville Syrjälä
Intel
