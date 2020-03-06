Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 756F217C0D1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D650F6ED33;
	Fri,  6 Mar 2020 14:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979716E20B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 14:46:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:46:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="352751218"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 06 Mar 2020 06:46:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 16:46:24 +0200
Date: Fri, 6 Mar 2020 16:46:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Message-ID: <20200306144624.GS13686@intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-3-ville.syrjala@linux.intel.com>
 <7c3a6b6b-9bf3-73a4-46de-de9c3a3a0429@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c3a6b6b-9bf3-73a4-46de-de9c3a3a0429@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915: Clean up
 i9xx_load_luts_internal()
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

On Fri, Mar 06, 2020 at 08:12:22PM +0530, Sharma, Swati2 wrote:
> =

> =

> On 03-Mar-20 11:03 PM, Ville Syrjala wrote:
> > +static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	const struct drm_property_blob *gamma_lut =3D crtc_state->hw.gamma_lu=
t;
> > +
> > +	assert_pll_enabled(dev_priv, crtc->pipe);
> Just a query:
> Why won't we have following condition here?
> if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> 		assert_dsi_pll_enabled(dev_priv);
> or is it applicable only for i965_load_luts() and not for i9xx_load_luts(=
)?

No DSI on these platforms. Only VLV/CHV can have it, and they use
i965_load_luts().

> =

> > +
> > +	i9xx_load_lut_8(crtc, gamma_lut);
> > +}
> > +
> The patch looks good to me.
> =

> Reviewed-by: Swati Sharma <swati2.sharma@intel.com>
> =

> -- =

> ~Swati Sharma

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
