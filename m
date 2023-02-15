Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E059697A17
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 11:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EAEE10EA95;
	Wed, 15 Feb 2023 10:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C2110EA95
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 10:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676457672; x=1707993672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JkY342leeqyaERCy9FZZTKMP9OJocw3iYYDLj8+4J98=;
 b=IiQohO2IrC72GQcQ1OxXA8GxdR53AhwHCxc2XWnxnztNC+rPzoUHoIf2
 osG1BI8y/clstTBtgBFkFLhVhE949kZlAR7ozM3DDWHC/jMeLSUQTuSy0
 bh/fo5qzniE/EC9H/T1FzK1Bkg9H1JMsP8qF0camuneC4IHM6zwdmLRmd
 uHOHzCaHalWNih7sDuYHJA9VZNneK1pBbEJmNzIGFhi4XMgi+ApghTxHy
 0QQfr9N37kUaC8e4ZHEE+Rjl8ylFGCil95sc7Y/1zEFQoGI9X8hebE1LT
 tbZnn4vctpWOBkrIxA2HHSBZs7d3WdAuM4Io9J1ugkVg73SR2OBFc9wzX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329114250"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329114250"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="699912403"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="699912403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 15 Feb 2023 02:41:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 12:41:08 +0200
Date: Wed, 15 Feb 2023 12:41:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+y2xGtK6UOE2NGH@intel.com>
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
 <873577s09o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <873577s09o.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Make backlight setup debugs
 consistent
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

On Wed, Feb 15, 2023 at 12:14:59PM +0200, Jani Nikula wrote:
> On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > It's confusing to debug backlight issues when one can't
> > easily even tell what kind of backlight control was
> > selected. Sprinkle uniform debug messages to all the
> > backlight setup functions.
> >
> > Also the one that was already there (ext_pwm) was
> > using drm_info() for some reason. I don't think that's
> > warranted so switch it to drm_dbg_kms() as well.
> 
> Maybe add similar in intel_dp_aux_backlight.c to the two setup functions
> there?

Forgot about that one. But I think that one also calls the
pwm setup function so might need to think about the ordering
a bit so that the log makes at least some sense.

> Also the message in intel_backlight_setup() could use some
> tweaking.

I'll take a gander at it.

> 
> > @@ -1392,6 +1408,10 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
> >  
> >  	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
> >  
> > +	drm_dbg_kms(&i915->drm,
> > +		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
> > +		    connector->base.base.id, connector->base.name);
> 
> Maybe log the pipe here similar to controller in bxt/cnp?

In this case it's just the initial pipe. But I guess we 
could log it. Looks like we have a debug message for it
already in intel_edp_backlight_setup(). I suppose I could
remove that one and include the information here instead.

> 
> Otherwise, LGTM.
> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
