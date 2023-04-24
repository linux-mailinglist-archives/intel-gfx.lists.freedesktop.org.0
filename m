Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A55CC6ED4FD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 21:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155B110E5D7;
	Mon, 24 Apr 2023 19:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE43F10E5D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682362942; x=1713898942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=02JZFIV9BvNQ4TYltUi2ee7COnUcwgMbSHV+GuQbO24=;
 b=YxsOrAjqtd0jv17/5bLuhayIZlRj+HFuXCroTaHYWuQ6HDAZanJBR93G
 oYj04KGtTpDKnZkvsot9zFN54gRK4Jk2tIY0Z7JeXWvgHz3H5Re2a4iOt
 PnuSPAxyP8TD7B+jYHqrFxrIfwbpeszJ4SB4zDg0BNx9bd5XO4J2i97sc
 rdJKjTckIiYIL+/mw51QPW4YhIvEkboUHem0Czn4dR2JStQ8xyAMOsnKa
 djgLdbE8vW4H7d5CZw4nME2xb+BsKZzspRUEDGY3n3/+G6WKD3cF35EEq
 4K7Ix8xxAncAxniwIj16xrAH+Y7YPw6dTKu3W8n4R6HnfyAp1rZWTGgFO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="345289150"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="345289150"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 12:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="643480397"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="643480397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 24 Apr 2023 12:02:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 22:02:17 +0300
Date: Mon, 24 Apr 2023 22:02:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ZEbSORYAjkUbFA8B@intel.com>
References: <20230422184359.56503-1-hdegoede@redhat.com>
 <ZEbLwrS+CoH/dBBv@intel.com>
 <c31b63cf-235a-b8de-438a-bc4adbb9f282@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c31b63cf-235a-b8de-438a-bc4adbb9f282@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Always use unconditional
 msleep() for the panel_on_delay
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 24, 2023 at 08:54:27PM +0200, Hans de Goede wrote:
> Hi Ville,
> 
> On 4/24/23 20:34, Ville Syrjälä wrote:
> > On Sat, Apr 22, 2023 at 08:43:59PM +0200, Hans de Goede wrote:
> >> The intel_dsi_msleep() helper skips sleeping if the MIPI-sequences have
> >> a version of 3 or newer and the panel is in vid-mode.
> >>
> >> This is based on the big comment around line 730 which starts with
> >> "Panel enable/disable sequences from the VBT spec.", where
> >> the "v3 video mode seq" column does not have any wait t# entries.
> >>
> >> Commit 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for
> >> the panel_on_delay when there is no reset-deassert MIPI-sequence")
> >> switched to a direct msleep() instead of intel_dsi_msleep()
> >> when there is no MIPI_SEQ_DEASSERT_RESET sequence, to fix
> >> the panel on an Acer Aspire Switch 10 E SW3-016 not turning on.
> >>
> >> This was done under the assumption that when there is a v3
> >> MIPI_SEQ_DEASSERT_RESET sequence it will take care of any
> >> necessary delays.
> >>
> >> On the Nextbook Ares 8A (a Cherry Trail device like the Acer SW3-016)
> >> there is a MIPI_SEQ_DEASSERT_RESET sequence, yet panel_on_delay
> >> must still be honored otherwise the panel will not turn on.
> >>
> >> Switch to always using an unconditional msleep() for
> >> the panel_on_delay instead of making this depend on
> >> the presence of a MIPI_SEQ_DEASSERT_RESET sequence.
> > 
> > I just checked what Windows does, and at least for icl+ it
> > always waits for the panel power delays regardless of what
> > the VBT MIPI sequences are doing.
> > 
> > So I suspect we should just get rid of intel_dsi_msleep()
> > entirely and do what the power sequencing delays tell us.
> > Anything else is untested territory. If the VBT actually
> > wanted us to skip the delays then it should really be
> > setting them to zero.
> 
> So I checked and there are only 4 (before this patch) /
> 3 (after this patch) callers of intel_dsi_msleep().
> 
> So just getting rid of it entirely sounds good to me.
> 
> Shall I prepare a v2 patch which does this ?

Please do.

> 
> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> >> Fixes: 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence")
> >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/vlv_dsi.c | 18 +++---------------
> >>  1 file changed, 3 insertions(+), 15 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> index a6d6d8b33f3f..1b87f8f5f7fd 100644
> >> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >> @@ -788,7 +788,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>  {
> >>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> >>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>  	enum pipe pipe = crtc->pipe;
> >>  	enum port port;
> >> @@ -836,21 +835,10 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
> >>  	if (!IS_GEMINILAKE(dev_priv))
> >>  		intel_dsi_prepare(encoder, pipe_config);
> >>  
> >> +	/* Give the panel time to power-on and then deassert its reset */
> >>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> >> -
> >> -	/*
> >> -	 * Give the panel time to power-on and then deassert its reset.
> >> -	 * Depending on the VBT MIPI sequences version the deassert-seq
> >> -	 * may contain the necessary delay, intel_dsi_msleep() will skip
> >> -	 * the delay in that case. If there is no deassert-seq, then an
> >> -	 * unconditional msleep is used to give the panel time to power-on.
> >> -	 */
> >> -	if (connector->panel.vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
> >> -		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> >> -		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> >> -	} else {
> >> -		msleep(intel_dsi->panel_on_delay);
> >> -	}
> >> +	msleep(intel_dsi->panel_on_delay);
> >> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> >>  
> >>  	if (IS_GEMINILAKE(dev_priv)) {
> >>  		glk_cold_boot = glk_dsi_enable_io(encoder);
> >> -- 
> >> 2.39.2
> > 

-- 
Ville Syrjälä
Intel
