Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF71E60AD67
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF8B010E779;
	Mon, 24 Oct 2022 14:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3B0710E779
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666621374; x=1698157374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fDPivvMBDhb/QBOBAp6R6clyQLbxF/w1zOoYdmUBA8I=;
 b=cPbMR/9lBm9FP+nhav9oIicGQ8xoY1HIBsC04CyGaVQjFjxmQMKcgsR9
 yl1Xl6y/kqIptaHa+irLeUR0FFIZ6ZPotJ8TjvjxxFRPQ6mZQ6KkyWGfn
 6AvmJAxfaMuRoLEUexwrVuuprDML4mXMDqzkPxzv1nhlfB5s5I1PoMp8S
 76vypXv5wqwmnsteTM9Ps5VSxKa8+osFoEW/lr09mBmwH3uERZVy2WKFS
 jFtvN7p64YV8frPH8oD8GaHvFC7HNcUgInVRwn8umMidqCKladik2vGYm
 F2LqP3kNs0jfydvu627QZ6P9WJouKtXLgxGbp9uwZTDTcXQ07+OK8HExu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="307418501"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="307418501"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="582429831"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="582429831"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga003.jf.intel.com with SMTP; 24 Oct 2022 07:21:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Oct 2022 17:21:05 +0300
Date: Mon, 24 Oct 2022 17:21:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20221024064004.1879-1-shawn.c.lee@intel.com"
 <20221024064004.1879-1-shawn.c.lee@intel.com>
Message-ID: <Y1afUdAwfVTACJoK@intel.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <Y1aQNHDIujgQts/G@intel.com>
 <BYAPR11MB271072A339A7501A1075981AA32E9@BYAPR11MB2710.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BYAPR11MB271072A339A7501A1075981AA32E9@BYAPR11MB2710.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: improve eDP power on flow.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 24, 2022 at 01:47:56PM +0000, Lee, Shawn C wrote:
> 
> On Monday, October 24, 2022 9:17 PM, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >On Mon, Oct 24, 2022 at 02:40:04PM +0800, Lee Shawn C wrote:
> >> Driver always apply panel power off cycle delay before eDP enable.
> >> If eDP display was enabled at pre-os stage, driver would always 
> >> trigger modeset to optimize cdclk setting after boot into kernel.
> >> So last_power_on and last_backlight_off value will be updated.
> >> 
> >> We can check last_power_on and last_backlight_off before insert panel 
> >> power cycle delay. If these values are the same, it means eDP was off 
> >> until now and driver should bypass this delay to save some times to 
> >> speed up eDP power on sequence.
> >> 
> >> Cc: Shankar Uma <uma.shankar@intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_pps.c | 13 +++++++++++--
> >>  1 file changed, 11 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c 
> >> b/drivers/gpu/drm/i915/display/intel_pps.c
> >> index 21944f5bf3a8..f3485a4fbfd0 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
> >>  	ktime_t panel_power_on_time;
> >>  	s64 panel_power_off_duration;
> >>  
> >> +	/* When last_power_on equal to last_backlight_off, it means driver did not
> >> +	 * turn on or off eDP panel so far.
> >
> >But someone else may have turned it off just before we were handed control, we have no idea. The pessimistic estimate is the safe one.
> 
> Thanks! It looks to me this situation should not be happpened. Right?

What situation? We have no idea when the panel was powered off, so we
have to make a pessimistic estimate.

> 
> >
> >Also I don't understand what this has to do with the story in the comit message. In that story you say eDP was already on, so the power cycle delay is not relevant at all. /me confused.
> >
> 
> I will modify commit messages and send patch v2 later.
> 
> Best regards,
> Shawn
> 
> >> So we can bypass power cycle delay to
> >> +	 * save some times here.
> >> +	 */
> >> +	if (intel_dp->pps.last_power_on == intel_dp->pps.last_backlight_off)
> >> +		return;
> >> +
> >>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
> >>  
> >>  	/* take the difference of current time and panel power off time @@ 
> >> -1098,9 +1105,11 @@ bool intel_pps_have_panel_power_or_vdd(struct 
> >> intel_dp *intel_dp)
> >>  
> >>  static void pps_init_timestamps(struct intel_dp *intel_dp)  {
> >> +	unsigned long tmp_jiffies = jiffies;
> >> +
> >>  	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
> >> -	intel_dp->pps.last_power_on = jiffies;
> >> -	intel_dp->pps.last_backlight_off = jiffies;
> >> +	intel_dp->pps.last_power_on = tmp_jiffies;
> >> +	intel_dp->pps.last_backlight_off = tmp_jiffies;
> >>  }
> >>  
> >>  static void
> >> --
> >> 2.17.1
> >
> >--
> >Ville Syrjälä
> >Intel
> >

-- 
Ville Syrjälä
Intel
