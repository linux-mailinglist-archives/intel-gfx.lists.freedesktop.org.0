Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6C436B630
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 17:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24FD6E0C9;
	Mon, 26 Apr 2021 15:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08996E0C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 15:55:09 +0000 (UTC)
IronPort-SDR: C9Rnm2Erf0pdwot+JOXUDEffafLvaw1rterhuPsAM7f4mVoM4RNJKF/iyBv61teBh2uaRUE5Gg
 ds05ipvs39Gw==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="281686717"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="281686717"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 08:55:09 -0700
IronPort-SDR: Vz0f+x8bb82IT/w9pZuID3RjIxgRkTw470N+c1tkbBcHmKjW6vK/c4PsJqU8cRw85gocRDxGOM
 CtcdUbKmR8DQ==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="429440904"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 08:55:07 -0700
Date: Mon, 26 Apr 2021 18:55:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210426155504.GG3777213@ideak-desk.fi.intel.com>
References: <20210318181039.17260-1-ville.syrjala@linux.intel.com>
 <20210318181039.17260-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318181039.17260-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove stray newlines
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

On Thu, Mar 18, 2021 at 08:10:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> A bunch of files have a stray newline at the end. Remove it.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviwed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 1 -
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c | 1 -
>  drivers/gpu/drm/i915/i915_params.h                 | 1 -
>  drivers/gpu/drm/i915/i915_vma_types.h              | 1 -
>  5 files changed, 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 8a52beaed2da..7391cd195d41 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1038,4 +1038,3 @@ i9xx_get_initial_plane_config(struct intel_crtc *cr=
tc,
>  =

>  	plane_config->fb =3D intel_fb;
>  }
> -
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 1f335cb09149..a06c474223c1 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2263,4 +2263,3 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  error:
>  	kfree(intel_fb);
>  }
> -
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers=
/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> index 129e0cf7dfe2..64e0b86bf258 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> @@ -121,4 +121,3 @@ void intel_guc_log_debugfs_register(struct intel_guc_=
log *log,
>  =

>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), log);
>  }
> -
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 48f47e44e848..18bbc92b642d 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -96,4 +96,3 @@ void i915_params_copy(struct i915_params *dest, const s=
truct i915_params *src);
>  void i915_params_free(struct i915_params *params);
>  =

>  #endif
> -
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index f5cb848b7a7e..c7614fbabb9c 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -282,4 +282,3 @@ struct i915_vma {
>  };
>  =

>  #endif
> -
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
