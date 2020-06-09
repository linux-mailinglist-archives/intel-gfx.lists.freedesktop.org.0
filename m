Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F91C1F3F00
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 17:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999166E2BC;
	Tue,  9 Jun 2020 15:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C3F6E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 15:15:45 +0000 (UTC)
IronPort-SDR: HVCcs2LZzuZhtzQ6bVvvm8biimFSeuWKCcK7di20NX9vkvhxP1E3oRs7SCOAkOf90QKr/J3XOi
 kWnO+Emcq/5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 08:15:45 -0700
IronPort-SDR: +KMbQNCUfgYF068Y2XwcJz2Mg1n3lBY+7BapVBreTLPdHgIf3aU69OqHmtuS675CIUmlNVL9dj
 s36KFVAqGtLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="306291229"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2020 08:15:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Jun 2020 18:15:41 +0300
Date: Tue, 9 Jun 2020 18:15:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200609151541.GS6112@intel.com>
References: <20200606025740.3308880-1-matthew.d.roper@intel.com>
 <20200606025740.3308880-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606025740.3308880-5-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 4/7] drm/i915/rkl: Don't try to read out
 DSI transcoders
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 05, 2020 at 07:57:37PM -0700, Matt Roper wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> =

> RKL doesn't have DSI outputs, so we shouldn't try to read out the DSI
> transcoder registers.
> =

> v2(MattR):
>  - Just set the 'extra panel mask' to edp | dsi0 | dsi1 and then mask
>    against the platform's cpu_transcoder_mask to filter out the ones
>    that don't exist on a given platform.  (Ville)
> =

> v3(MattR):
>  - Only include DSI transcoders on gen11+ again. (Ville)
>  - Use for_each_cpu_transcoder_masked() for loop. (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9820874d3ea2..6c2bb3354b86 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10904,7 +10904,7 @@ static bool hsw_get_transcoder_state(struct intel=
_crtc *crtc,
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum intel_display_power_domain power_domain;
> -	unsigned long panel_transcoder_mask =3D 0;
> +	unsigned long panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
>  	unsigned long enabled_panel_transcoders =3D 0;

Could get rid of the longs now that we're no longer using
for_each_set_bit()

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	enum transcoder panel_transcoder;
>  	intel_wakeref_t wf;
> @@ -10914,9 +10914,6 @@ static bool hsw_get_transcoder_state(struct intel=
_crtc *crtc,
>  		panel_transcoder_mask |=3D
>  			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
>  =

> -	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP))
> -		panel_transcoder_mask |=3D BIT(TRANSCODER_EDP);
> -
>  	/*
>  	 * The pipe->transcoder mapping is fixed with the exception of the eDP
>  	 * and DSI transcoders handled below.
> @@ -10927,9 +10924,8 @@ static bool hsw_get_transcoder_state(struct intel=
_crtc *crtc,
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
>  	 * consistency and less surprising code; it's in always on power).
>  	 */
> -	for_each_set_bit(panel_transcoder,
> -			 &panel_transcoder_mask,
> -			 ARRAY_SIZE(INTEL_INFO(dev_priv)->trans_offsets)) {
> +	for_each_cpu_transcoder_masked(dev_priv, panel_transcoder,
> +				       panel_transcoder_mask) {
>  		bool force_thru =3D false;
>  		enum pipe trans_pipe;
>  =

> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
