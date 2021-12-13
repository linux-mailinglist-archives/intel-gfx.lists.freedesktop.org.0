Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D30C472E6C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 15:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCD310E79C;
	Mon, 13 Dec 2021 14:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CAB10E79C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 14:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639404152; x=1670940152;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZCh9t44rMnmAOHXxSbK6prmRL4A4GND7IN1+l6JAzS8=;
 b=UkOxb7Fy1e25NkhaQHTVHZcyF3nqz0aQVDExq8vzLGT5Xhxz7Zn5Rzr0
 UlHmtmMGGbgZbwmGQB2vA3Gi98f7ZPeiK8JkHoCX6crO0FzSlvk7BM4OP
 Pqrj58CTSHiK0ml/p6hkvQyKdyAqBI9nsqkeSEC8pb8HbPMrYrqs9dQf/
 /OFsVOlm8+LFg0OkTtuRrV1GtDECJur1AnKoVnokXLdJ94K8EOlndzHep
 99D+Nhm+eCT5A3Os7iznvvmJUFTbC5mZf0/tbqGZ9eBU2n+bX/Kgg4J/L
 WrPT7ffWFpNZ0WMGb7v+nddHsRjW2jYRJOThE+B2FwH/Iuq+CJtdbL+L1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238679981"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238679981"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 06:01:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="609027017"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 06:01:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-5-ville.syrjala@linux.intel.com>
Date: Mon, 13 Dec 2021 16:01:15 +0200
Message-ID: <87ilvs7ges.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/fbc: Register per-crtc
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
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 31 +++++++++++++++---------
>  1 file changed, 19 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 53c93387710c..eafd84e7f058 100644
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
>  void intel_fbc_debugfs_register(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc[INTEL_FBC_A];
> +	struct drm_minor *minor =3D i915->drm.primary;
> +	struct intel_crtc *crtc;
> +	struct intel_fbc *fbc;
>=20=20
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +
> +		if (plane->fbc)
> +			intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> +	}

I think the per-crtc debugfs files should be registered via
intel_crtc_debugfs_add(). Maybe leave the current
intel_fbc_debugfs_register() function as-is and remove once igt is
fixed.

BR,
Jani.


> +
> +	/* FIXME: remove this once igt is on board with per-crtc stuff */
> +	fbc =3D i915->fbc[INTEL_FBC_A];
>  	if (fbc)
> -		intel_fbc_debugfs_add(fbc);
> +		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
