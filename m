Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C903F423A29
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 11:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050606ED24;
	Wed,  6 Oct 2021 09:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9386ED24
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 09:01:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="249220785"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="249220785"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 02:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="522161245"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 06 Oct 2021 02:01:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 12:01:14 +0300
Date: Wed, 6 Oct 2021 12:01:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Swati Sharma <swati2.sharma@intel.com>
Message-ID: <YV1l2vHcEqovAFR6@intel.com>
References: <20211005175636.24669-1-jani.nikula@intel.com>
 <YVyULvQxOEembOvq@intel.com> <875yub1d8j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yub1d8j.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: gracefully disable dual eDP
 for now
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

On Tue, Oct 05, 2021 at 10:30:04PM +0300, Jani Nikula wrote:
> On Tue, 05 Oct 2021, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Oct 05, 2021 at 08:56:36PM +0300, Jani Nikula wrote:
> >> For the time being, neither the power sequencer nor the backlight code
> >> properly support two eDP panels simultaneously. While the software
> >> states will be independent, the same sets of registers will be used for
> >> both eDP panels, clobbering the hardware state and leading to errors.
> >> 
> >> Gracefully disable dual eDP until proper support has been added.
> >> 
> >> Cc: José Roberto de Souza <jose.souza@intel.com>
> >> Cc: Uma Shankar <uma.shankar@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Swati Sharma <swati2.sharma@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c | 47 +++++++++++++++++++++++
> >>  1 file changed, 47 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index f9776ca85de3..b99907c656bb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -1930,6 +1930,50 @@ static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devd
> >>  	}
> >>  }
> >>  
> >> +static enum port get_edp_port(struct drm_i915_private *i915)
> >> +{
> >> +	const struct intel_bios_encoder_data *devdata;
> >> +	enum port port;
> >> +
> >> +	for_each_port(port) {
> >> +		devdata = i915->vbt.ports[port];
> >> +
> >> +		if (devdata && intel_bios_encoder_supports_edp(devdata))
> >> +			return port;
> >> +	}
> >> +
> >> +	return PORT_NONE;
> >> +}
> >> +
> >> +/*
> >> + * FIXME: The power sequencer and backlight code currently do not support more
> >> + * than one set registers, at least not on anything other than VLV/CHV. It will
> >> + * clobber the registers. As a temporary workaround, gracefully prevent more
> >> + * than one eDP from being registered.
> >> + */
> >> +static void sanitize_dual_edp(struct intel_bios_encoder_data *devdata,
> >> +			      enum port port)
> >> +{
> >> +	struct drm_i915_private *i915 = devdata->i915;
> >> +	struct child_device_config *child = &devdata->child;
> >> +	enum port p;
> >> +
> >> +	/* CHV might not clobber PPS registers. */
> >> +	if (IS_CHERRYVIEW(i915))
> >
> > vlv and chv should both behave identically. At least I don't remember
> > any single eDP assumptions in the code for either.
> 
> This bit of code is not run on VLV, only CHV and DDI. It's subtle.

Oh right. Maybe we should just flip the switch for VLV. VLV and
HSW did come out around the same time I think, and I have some
vbt specs which are labeled as VLV/HSW. So if it works for HSW
and CHV then I think there's a fair chance VLV will be fine.

> 
> > Hmm. Quick glance suggest bxt/glk should handle this correctly
> > as well? But the more recent platforms are certainly borked.
> > Well, that's assuming the vbt related bits are correct for bxt/glk.
> 
> VLV/CHV figure out the PPS in a complicated manner, and use pipe
> specific backlight. They might work.

Yeah, the assignment only depends on the current pipe driving the port.
Which is a horrible design, but kinda works after you deal with all
the madness (the pps kick stuff).

> 
> BXT/GLK look at VBT for the pps/backlight index, but that's just the
> *one* number. All the structures are set up nicely, but then they use
> the same set of registers for all panels.

Ah, right. So the low level mechanism is there, just not utilized.

> The recent failure mode was a really weird looking VDD warn, and it just
> turned out to be two intel_pps instances using the same registers and
> getting royally confused about the sw/hw states.
> 
> We'd need to figure out the per-panel pps/backlight to use from VBT, for
> each panel, and then set that up.

I guess one concern is which of the listed eDP ports we're going to
nuke, and does the port that is left have some chance of working.
Hard to know I guess. But at least the bug report should be a clear
"my display isn't lighting up!" type of thing.

Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
