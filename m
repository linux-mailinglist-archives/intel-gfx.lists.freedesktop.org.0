Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0675F605004
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 20:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E4C10E05B;
	Wed, 19 Oct 2022 18:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972C310E052;
 Wed, 19 Oct 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666205785; x=1697741785;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=irC9xvvXvPuX13b9Ea8QJpMtVzt+5qEy2xZhZLZQUj8=;
 b=leUfCmp2CP5TcCYkqDSAIbi6P8akw45NVn04zGyaIiKdzAtAbTcfNGil
 KjLhOansI+JoBhmRXFuuGzrzMOXnoAAKBfzXa9+7MoNnUvRtKlKvLW+5M
 ekNiElXcAMNT9G3dgrY9aZ7BLWXYG2dYzChiLOKYxZb0tVfLkLaAxirvj
 9ueZB3p5ch/Dnkt5VazFEKl4j/pm4xgv9fUXaAoA4O4gBd436qnouI2Bl
 NRl0pNfOD2ZkwVCgGjh6VRORYjIPDplJq9xZ5a0CcugIFqXpXC5opsA0I
 RKtjbY3uRK7s0OhmOTLMTNK+Yoq+K7pHUg/21ImJgrAvjGyN7lxqu9oJv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370718726"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="370718726"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 11:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631811409"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631811409"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2022 11:56:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 21:56:21 +0300
Date: Wed, 19 Oct 2022 21:56:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y1BIVWHKxkEcReaI@intel.com>
References: <cover.1665496046.git.jani.nikula@intel.com>
 <20fb913a93c60fd24fc51b441ccea7bc75e82dd1.1665496046.git.jani.nikula@intel.com>
 <Y0hb0VOaYZk5TptS@intel.com> <Y0hmBn6NrUrBexyY@intel.com>
 <87o7uestxo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7uestxo.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/hdmi: do dual mode detect
 only if connected
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 14, 2022 at 11:14:43AM +0300, Jani Nikula wrote:
> On Thu, 13 Oct 2022, Ville Syrj�l� <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Oct 13, 2022 at 09:41:21PM +0300, Ville Syrj�l� wrote:
> >> On Tue, Oct 11, 2022 at 04:49:35PM +0300, Jani Nikula wrote:
> >> > For normal connector detect, there's really no point in trying dual mode
> >> > detect if the connector is disconnected. We can simplify the detect
> >> > sequence by skipping it. Since intel_hdmi_dp_dual_mode_detect() is only
> >> > called when EDID is present, we can drop the has_edid parameter.
> >> > 
> >> > The functional effect is speeding up disconnected connector detection
> >> > ever so slightly, and, combined with firmware EDID, also stop logging
> >> > about assuming dual mode adaptor.
> >> > 
> >> > It's a bit subtle, but this will also skip dual mode detect if the
> >> > connector is force connected and a) there's no EDID of any kind, normal
> >> > or override/firmare or b) there's EDID but it does not indicate
> >> > digital. These are corner cases no matter what, and arguably forcing
> >> > should not be limited by dual mode detect.
> >> > 
> >> > Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 17 +++++++----------
> >> >  1 file changed, 7 insertions(+), 10 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > index 93519fb23d9d..a332eaac86cd 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >> > @@ -2355,7 +2355,7 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
> >> >  }
> >> >  
> >> >  static void
> >> > -intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
> >> > +intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
> >> >  {
> >> >  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> >> >  	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
> >> > @@ -2371,16 +2371,13 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
> >> >  	 * CONFIG1 pin, but no such luck on our hardware.
> >> >  	 *
> >> >  	 * The only method left to us is to check the VBT to see
> >> > -	 * if the port is a dual mode capable DP port. But let's
> >> > -	 * only do that when we sucesfully read the EDID, to avoid
> >> > -	 * confusing log messages about DP dual mode adaptors when
> >> > -	 * there's nothing connected to the port.
> >> > +	 * if the port is a dual mode capable DP port.
> >> >  	 */
> >> >  	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
> >> >  		/* An overridden EDID imply that we want this port for testing.
> >> >  		 * Make sure not to set limits for that port.
> >> >  		 */
> >> > -		if (has_edid && !connector->override_edid &&
> >> > +		if (!connector->override_edid &&
> >> >  		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
> >> >  			drm_dbg_kms(&dev_priv->drm,
> >> >  				    "Assuming DP dual mode adaptor presence based on VBT\n");
> >> > @@ -2435,18 +2432,18 @@ intel_hdmi_set_edid(struct drm_connector *connector)
> >> >  		intel_gmbus_force_bit(i2c, false);
> >> >  	}
> >> >  
> >> > -	intel_hdmi_dp_dual_mode_detect(connector, edid != NULL);
> >> > -
> >> > -	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
> >> > -
> >> >  	to_intel_connector(connector)->detect_edid = edid;
> >> >  	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
> >> 
> >> We didn't have this digital input thing before. What happens with
> >> HDMI->VGA dongles for example?
> >> 
> >> Hmm. This whole thing might already be broken on those. I suspect
> >> I've only used my HDMI->VGA dongle on LSPCON machines, so never
> >> noticed this. Need to go plug that thing into a native HDMI port...
> >
> > Except I must have left it elsewhere since I can't find it here.
> > So can't test right now unfortunately.
> >
> > I first thought this digital check thing might be due to
> > the DVI-I shenanigans in intel_crt_detect_ddc(), but that
> > was added for am unspecified gen2 machine in commit f5afcd3dd0dc
> > ("drm/i915/crt: Check for a analog monitor in case of DVI-I")
> > so not even relevant here. And I don't think I've ever seen
> > a g4x+ machine with an actual DVI-I port.
> >
> > commit aa93d632c496 ("drm/i915: Require digital monitor
> > on HDMI ports for detect") is where this check was added,
> > but there is no actual justification for checking the
> > digital thing vs. just making sure the edid read succeeded.
> >
> > So looks to me like this check can just be removed. And
> > if we do come across some real DVI-I use cases we should
> > probably check the VBT DDC pin assignments before we go
> > assuming anything about the wiring.
> 
> Are you saying remove the "edid->input & DRM_EDID_INPUT_DIGITAL"
> altogether? Or turn this into:
> 
> 	if (edid) {
> 		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
> 			intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
> 			intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
> 		}
> 		connected = true;
> 	}
> 
> Since e.g. DP wraps the audio/hdmi detect calls in digital check.

I'm thinking they should just all go. But I guess that's a separate
topic for the most part.

-- 
Ville Syrj�l�
Intel
