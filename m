Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F0B4734AE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 20:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246C010E8A0;
	Mon, 13 Dec 2021 19:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BBC10E8A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 19:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639422586; x=1670958586;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0b2+twGj7rm471zMkcjoIpqvS1mxiFPqMiay+yzvt1k=;
 b=PZhoFeP6ptPaelpaiuA9K9KAVLKJ8YaGLZQ7z2viwWk2BSgGapoYF31m
 vlPQCS07yaVADuhdLcxdG88AC7LVGrSvMjkTWpTDtRjhfTvMMXnXz07ID
 ggRcgfJaiu97qDjR7RIBJeN+yDPZhVw8sbReC7y+KUsBQctndE3xPKBY7
 mGrGPP9GW3/B7n2LTfEemaq0NAruPzwRNQksf0UIIE0FO9Yx1Be90SH2h
 NI41BVDfbyCW9v/LyZrbTCgaAMlzcVz17IYE5sDGxcouo9nDjNXmxlB8e
 unXUzIECACqymeHPyu/qY73KdsbsS+3kFchBzPKn8kqFL1NRsX0SBaF6Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238751907"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="238751907"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:09:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="481623686"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:09:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211213151435.9700-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <20211213151435.9700-1-ville.syrjala@linux.intel.com>
Date: Mon, 13 Dec 2021 21:09:40 +0200
Message-ID: <878rwo724r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/fbc: Register per-crtc
 debugfs files
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

On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Expose FBC debugfs files for each crtc. These may or may not point
> to the same FBC instance depending on the platform.
>
> We leave the old global debugfs files in place until
> igt catches up to the new per-crtc approach.
>
> v2: Take a trip via intel_crtc_debugfs_add() (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  |  7 +++--
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 31 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  1 +
>  3 files changed, 25 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 572445299b04..f4de004d470f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2402,6 +2402,9 @@ void intel_connector_debugfs_add(struct intel_conne=
ctor *intel_connector)
>   */
>  void intel_crtc_debugfs_add(struct drm_crtc *crtc)
>  {
> -	if (crtc->debugfs_entry)
> -		crtc_updates_add(crtc);
> +	if (!crtc->debugfs_entry)
> +		return;

I think this is probably unnecessary, but that's for another patch.

> +
> +	crtc_updates_add(crtc);
> +	intel_fbc_crtc_debugfs_add(to_intel_crtc(crtc));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 53c93387710c..987ea4c4b5d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1798,25 +1798,32 @@ DEFINE_SIMPLE_ATTRIBUTE(intel_fbc_debugfs_false_c=
olor_fops,
>  			intel_fbc_debugfs_false_color_set,
>  			"%llu\n");
>=20=20
> -static void intel_fbc_debugfs_add(struct intel_fbc *fbc)
> +static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
> +				  struct dentry *parent)
>  {
> -	struct drm_i915_private *i915 =3D fbc->i915;
> -	struct drm_minor *minor =3D i915->drm.primary;
> -
> -	debugfs_create_file("i915_fbc_status", 0444,
> -			    minor->debugfs_root, fbc,
> -			    &intel_fbc_debugfs_status_fops);
> +	debugfs_create_file("i915_fbc_status", 0444, parent,
> +			    fbc, &intel_fbc_debugfs_status_fops);
>=20=20
>  	if (fbc->funcs->set_false_color)
> -		debugfs_create_file("i915_fbc_false_color", 0644,
> -				    minor->debugfs_root, fbc,
> -				    &intel_fbc_debugfs_false_color_fops);
> +		debugfs_create_file("i915_fbc_false_color", 0644, parent,
> +				    fbc, &intel_fbc_debugfs_false_color_fops);
>  }
>=20=20
> +void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +
> +	if (plane->fbc)
> +		intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> +}
> +
> +/* FIXME: remove this once igt is on board with per-crtc stuff */
>  void intel_fbc_debugfs_register(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc[INTEL_FBC_A];
> +	struct drm_minor *minor =3D i915->drm.primary;
> +	struct intel_fbc *fbc;
>=20=20
> +	fbc =3D i915->fbc[INTEL_FBC_A];
>  	if (fbc)
> -		intel_fbc_debugfs_add(fbc);
> +		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i=
915/display/intel_fbc.h
> index 7b7631aec527..8c5a7339a27f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -42,6 +42,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plan=
e);
>  void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
>  void intel_fbc_reset_underrun(struct drm_i915_private *i915);
> +void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct drm_i915_private *i915);
>=20=20
>  #endif /* __INTEL_FBC_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
