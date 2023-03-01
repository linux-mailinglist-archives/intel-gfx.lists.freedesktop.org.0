Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FD76A7042
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 16:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E92510E2BC;
	Wed,  1 Mar 2023 15:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE09A10E2BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 15:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677685891; x=1709221891;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/ONDnpSUf9xLvqH4ss3/sz/JkkF1XrCWSfMTiuDUXHo=;
 b=mQhzOi4uZlcFq+XPAEF4dL+P/muSTCkKd6PpRI1z7ubhwE8SgWoZx4Ij
 RNQ/LbRzetR+6w5aG+XEQp6OjRvf0jTjQmEMDXZbH+01ORYvNJPCuwzsf
 6MaE6gugLd9cw/pE8+EKFdlDozcTmP2XRAF15C2q5rgtpzW37FSFVBsef
 RkQDiyDWf/gynssy99jdNymnZf9XOfffzWbKB2dy9qDh+dE/PUvsdHyhe
 83L7Ai/EsUb/xWgf9KRSCsi7HwBdef/Jh5vxozsBdiaZh7omfOBKtB5V7
 8A8UyBIkKxyQhGcu3A2hmoNgVQNONZD2RyrqiW32Yim/WgN5AwSZcMPbT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="331920739"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="331920739"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 07:51:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674606993"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674606993"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 07:51:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 17:51:27 +0200
Date: Wed, 1 Mar 2023 17:51:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y/90fwlyYgwK3O6o@intel.com>
References: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
 <be14b11efdafb5ae249d81e318d5d81d1d403a8e.camel@intel.com>
 <878rggwl95.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rggwl95.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
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

On Wed, Mar 01, 2023 at 05:21:10PM +0200, Jani Nikula wrote:
> On Wed, 01 Mar 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> > On Mon, 2023-02-20 at 18:47 +0200, Ville Syrjala wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> 
> >> Grab the HDR DPCD refresh timeout (time we need to wait after
> >> writing the sourc OUI before the HDR DPCD registers are ready)
> >> from the VBT.
> >> 
> >> Windows doesn't even seem to have any default value for this,
> >> which is perhaps a bit weird since the VBT value is documented
> >> as TGL+ and I thought the HDR backlight stuff might already be
> >> used on earlier platforms. To play it safe I left the old
> >> hardcoded 30ms default in place. Digging through some internal
> >> stuff that seems to have been a number given by the vendor for
> >> one particularly slow TCON. Although I did see 50ms mentioned
> >> somewhere as well.
> >> 
> >> Let's also include the value in the debug print to ease
> >> debugging, and toss in the customary connector id+name as well.
> >> 
> >> The TGL Thinkpad T14 I have sets this to 0 btw. So the delay
> >> is now gone on this machine:
> >>  [CONNECTOR:308:eDP-1] Detected Intel HDR backlight interface version
> >> 1
> >>  [CONNECTOR:308:eDP-1] Using Intel proprietary eDP backlight controls
> >>  [CONNECTOR:308:eDP-1] SDR backlight is controlled through PWM
> >>  [CONNECTOR:308:eDP-1] Using native PCH PWM for backlight control
> >> (controller=0)
> >>  [CONNECTOR:308:eDP-1] Using AUX HDR interface for backlight control
> >> (range 0..496)
> >>  [CONNECTOR:308:eDP-1] Performing OUI wait (0 ms)
> >
> > Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> Cc: stable@vger.kernel.org
> 
> ?

Not aware of anythigng actually getting fixed by this. I suspect
it's usually more of an optimization since the original 30ms was
supposedly only needed by some especially slow TCONs.

> 
> >
> >> 
> >> Cc: Lyude Paul <lyude@redhat.com>
> >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
> >>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> >>  drivers/gpu/drm/i915/display/intel_dp.c            | 9 +++++++--
> >>  3 files changed, 14 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> >> b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index f35ef3675d39..f16887aed56d 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -1084,6 +1084,12 @@ parse_lfp_backlight(struct drm_i915_private
> >> *i915,
> >>                 panel->vbt.backlight.min_brightness = entry-
> >> >min_brightness;
> >>         }
> >>  
> >> +       if (i915->display.vbt.version >= 239)
> >> +               panel->vbt.backlight.hdr_dpcd_refresh_timeout =
> >> +                       DIV_ROUND_UP(backlight_data-
> >> >hdr_dpcd_refresh_timeout[panel_type], 100);
> >> +       else
> >> +               panel->vbt.backlight.hdr_dpcd_refresh_timeout = 30;
> >> +
> >>         drm_dbg_kms(&i915->drm,
> >>                     "VBT backlight PWM modulation frequency %u Hz, "
> >>                     "active %s, min brightness %u, level %u,
> >> controller %u\n",
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 748b0cd411fa..76f47ba3be45 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -326,6 +326,7 @@ struct intel_vbt_panel_data {
> >>         struct {
> >>                 u16 pwm_freq_hz;
> >>                 u16 brightness_precision_bits;
> >> +               u16 hdr_dpcd_refresh_timeout;
> >>                 bool present;
> >>                 bool active_low_pwm;
> >>                 u8 min_brightness;      /* min_brightness/255 of max
> >> */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index b77bd4565864..3734e7567230 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -2293,10 +2293,15 @@ intel_edp_init_source_oui(struct intel_dp
> >> *intel_dp, bool careful)
> >>  
> >>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> >>  {
> >> +       struct intel_connector *connector = intel_dp-
> >> >attached_connector;
> >>         struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >>  
> >> -       drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
> >> -       wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
> >> +       drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Performing OUI
> >> wait (%u ms)\n",
> >> +                   connector->base.base.id, connector->base.name,
> >> +                   connector-
> >> >panel.vbt.backlight.hdr_dpcd_refresh_timeout);
> >> +
> >> +       wait_remaining_ms_from_jiffies(intel_dp->last_oui_write,
> >> +                                      connector-
> >> >panel.vbt.backlight.hdr_dpcd_refresh_timeout);
> >>  }
> >>  
> >>  /* If the device supports it, try to set the power state
> >> appropriately */
> >
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
