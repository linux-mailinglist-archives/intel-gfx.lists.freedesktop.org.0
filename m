Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 607436ED49E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 20:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEA510E5D2;
	Mon, 24 Apr 2023 18:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAC310E5D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 18:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682361655; x=1713897655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xU+t6jPDoku00/FDz586fmv6ZYegxOK35dC1goCPolo=;
 b=bLYkhSKRx3cRdfZxJxccY00rSNyAPA8WxbDGbHFlJUh2Cnv9WsvMrcf8
 Bju2icnyynxlCKPsLW2RTZAmI3i6oJN1MUNVdb2ZkcQ3T5VncLuuPUnCr
 8BDD/rg54DeLPuVJgBF8r/l8OmtdPu7FPJi7uk4fnGBZo6Y4Gk6Oh4qf3
 EX3ykxJGSBCtgaSc0TuxaRU5/j2oSFkVVNlOdPghKxq6IYGeqpTihqJZH
 Wd3kiuXVGQFyFBkD2DPdVIOBKTKV4yccQtWskQrkJvkG7fZPy7+/K5WAf
 WXzKbCFnqZGJnV+3UGYCcJotr6UedngUd6k1ZZI9mGBi9I//+zNcz1Twm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="409466935"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="409466935"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 11:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="1022821046"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="1022821046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 24 Apr 2023 11:34:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 21:34:42 +0300
Date: Mon, 24 Apr 2023 21:34:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ZEbLwrS+CoH/dBBv@intel.com>
References: <20230422184359.56503-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230422184359.56503-1-hdegoede@redhat.com>
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

On Sat, Apr 22, 2023 at 08:43:59PM +0200, Hans de Goede wrote:
> The intel_dsi_msleep() helper skips sleeping if the MIPI-sequences have
> a version of 3 or newer and the panel is in vid-mode.
> 
> This is based on the big comment around line 730 which starts with
> "Panel enable/disable sequences from the VBT spec.", where
> the "v3 video mode seq" column does not have any wait t# entries.
> 
> Commit 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for
> the panel_on_delay when there is no reset-deassert MIPI-sequence")
> switched to a direct msleep() instead of intel_dsi_msleep()
> when there is no MIPI_SEQ_DEASSERT_RESET sequence, to fix
> the panel on an Acer Aspire Switch 10 E SW3-016 not turning on.
> 
> This was done under the assumption that when there is a v3
> MIPI_SEQ_DEASSERT_RESET sequence it will take care of any
> necessary delays.
> 
> On the Nextbook Ares 8A (a Cherry Trail device like the Acer SW3-016)
> there is a MIPI_SEQ_DEASSERT_RESET sequence, yet panel_on_delay
> must still be honored otherwise the panel will not turn on.
> 
> Switch to always using an unconditional msleep() for
> the panel_on_delay instead of making this depend on
> the presence of a MIPI_SEQ_DEASSERT_RESET sequence.

I just checked what Windows does, and at least for icl+ it
always waits for the panel power delays regardless of what
the VBT MIPI sequences are doing.

So I suspect we should just get rid of intel_dsi_msleep()
entirely and do what the power sequencing delays tell us.
Anything else is untested territory. If the VBT actually
wanted us to skip the delays then it should really be
setting them to zero.

> 
> Fixes: 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence")
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index a6d6d8b33f3f..1b87f8f5f7fd 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -788,7 +788,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	enum port port;
> @@ -836,21 +835,10 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>  	if (!IS_GEMINILAKE(dev_priv))
>  		intel_dsi_prepare(encoder, pipe_config);
>  
> +	/* Give the panel time to power-on and then deassert its reset */
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> -
> -	/*
> -	 * Give the panel time to power-on and then deassert its reset.
> -	 * Depending on the VBT MIPI sequences version the deassert-seq
> -	 * may contain the necessary delay, intel_dsi_msleep() will skip
> -	 * the delay in that case. If there is no deassert-seq, then an
> -	 * unconditional msleep is used to give the panel time to power-on.
> -	 */
> -	if (connector->panel.vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
> -		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> -		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> -	} else {
> -		msleep(intel_dsi->panel_on_delay);
> -	}
> +	msleep(intel_dsi->panel_on_delay);
> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
>  		glk_cold_boot = glk_dsi_enable_io(encoder);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
