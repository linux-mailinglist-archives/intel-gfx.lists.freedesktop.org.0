Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B277E6A596C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 13:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AD310E6A6;
	Tue, 28 Feb 2023 12:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6FD10E6A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 12:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677588631; x=1709124631;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IDJG915d87nyXCg2L0Z7svccPPAuCggAPV92FRaZuGg=;
 b=XtsfUTg6ikV/bl0q0cWWU9GuC+5EiTGuBK2qIYcn/9tg3HvfXtzR/MS5
 yPT7SQHLfzovtyezviGIr7yJ1aq3VFblCAI4+nxUmZcRMX1a6SOlXzIIE
 YdnH06W/gxxOKn1F7zpT1051O4DEAxdjr31ZViVxN9iUGtee2kQrIdaIG
 hES90W9lDS/me+h10HEXOGWXlFhUEh/PUslPhedhqlF2W0OlClYSIe5mk
 tcUeLmZmvZAn101ju12IlE0fC2NUsNAQKWUMobPIpujER9lHUMh24YVsN
 I4cjrd8tL9BEdTL4y+fzg5r+Fm1nNR0mshSb84ja4+9y46l1N5ovFwxtW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335611517"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="335611517"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 04:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="738149705"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="738149705"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 28 Feb 2023 04:50:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Feb 2023 14:50:27 +0200
Date: Tue, 28 Feb 2023 14:50:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y/34k0p0S30+xgIT@intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-6-ville.syrjala@linux.intel.com>
 <87k002ynd7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87k002ynd7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 05/22] drm/i915: Introduce
 intel_hpd_detection()
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

On Tue, Feb 28, 2023 at 02:40:20PM +0200, Jani Nikula wrote:
> On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add a mechanism by which we can toggle the HPD sense for
> > individual encoders.
> >
> > This will be used during eDP probing to figure out if
> > anything is actually connected. The normal intel_hpd_irq_setup()
> > thing doesn't work since we only do that after probing the
> > outputs, and we only enable HPD sense for encoders that were
> > successfully probed.
> >
> > The other idea that crossed my minds was to just turn on
> > HPD sense for all pins before output probing and let hpd_irq_setup()
> > clean it up afterwards. But that doesn't work for BXT/GLK where
> > the HPD invert information comes from the VBT child device.
> > So looks like this really needs to be per-encoder.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 132 ++++++++++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_irq.h |   2 +
> >  2 files changed, 134 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index ecfa6dad145a..c5058d834f99 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -2893,8 +2893,17 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> >  			 ibx_hotplug_mask(dev_priv, HPD_PORT_D),
> >  			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
> >  }
> >  
> > +static void ibx_hpd_detection(struct intel_encoder *encoder, bool enable)
> 
> Just quickly skimming through the series...
> 
> ...and nitpicking, *_detection() should really be a verb.
> 
> It isn't obvious to me what intel_hpd_detection() does without looking
> at the implementation.

I was origianlly musing about foo_enable_hpd_detection(), but then
passing in a 'bool enable' for an enable() function seems a bit
crap. I guess it could be foo_set_hpd_detection() or something like
that.

-- 
Ville Syrjälä
Intel
