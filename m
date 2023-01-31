Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707DF68258E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735FD10E33D;
	Tue, 31 Jan 2023 07:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E50510E33D
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675150180; x=1706686180;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EMLGiIVeUb7HZLUEJgfW05q8Go7Cl5D+pQL/JWIh4K0=;
 b=GotIRahBurlRn1GZ6wCaM1Y07ALpAGhC5diHYEK5U072yOgiz0i8yiDc
 NFUSirwZWjkW6gK1q5sF2H7FIIbR8Dfx8C476zs0SgaEU1MTG6+N6eFhj
 faraE2RYUmfdm38xJ2NmgRtgSZSc98dq0nLdBVKXoMP+5LUvVfAe0Ts+P
 /aXyCdZEfTD+JnuwH9lzEwFs0m3vMyi4G3KpfZQjuv8S83TKlCkDXYeWS
 mG5XWHI6/gY6vMUTw9EEQqRbKsReE2iZV76mcUAtUDE2SfLeBlpnBkprr
 RmLSL2vM5lhIfRZvbbTYmyBuC1vkdYBYVTGbNci7cLKnc9qrw1kjt6emB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392321533"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="392321533"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:29:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="838262689"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="838262689"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:29:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230131002127.29305-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
 <20230131002127.29305-4-ville.syrjala@linux.intel.com>
Date: Tue, 31 Jan 2023 09:29:24 +0200
Message-ID: <87ilgn2mcr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Expose SAGV state via debugfs
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

On Tue, 31 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since SAGV is controlled via unidirectional pcode commands
> we have no way to query the current state. So instead let's
> expose the last programmed state via debugfs. This way we
> can at least know whether SAGV should be enabled or not
> (which can be important to know when dealing with underruns/etc.).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 31 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/skl_watermark.h  |  2 +-
>  3 files changed, 28 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 7bcd90384a46..9e2fb8626c96 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1622,7 +1622,7 @@ void intel_display_debugfs_register(struct drm_i915=
_private *i915)
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
>  	intel_hpd_debugfs_register(i915);
> -	skl_watermark_ipc_debugfs_register(i915);
> +	skl_watermark_debugfs_register(i915);
>  }
>=20=20
>  static int i915_panel_show(struct seq_file *m, void *data)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 5916694f147c..022aed8dd440 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3545,13 +3545,34 @@ static const struct file_operations skl_watermark=
_ipc_status_fops =3D {
>  	.write =3D skl_watermark_ipc_status_write
>  };
>=20=20
> -void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915)
> +static int intel_sagv_status_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 =3D m->private;
> +	static const char * const sagv_status[] =3D {
> +		[I915_SAGV_UNKNOWN] =3D "unknown",
> +		[I915_SAGV_DISABLED] =3D "disabled",
> +		[I915_SAGV_ENABLED] =3D "enabled",
> +		[I915_SAGV_NOT_CONTROLLED] =3D "not controlled",
> +	};
> +
> +	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
> +	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.statu=
s]);
> +	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_ti=
me_us);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
> +
> +void skl_watermark_debugfs_register(struct drm_i915_private *i915)
>  {
>  	struct drm_minor *minor =3D i915->drm.primary;
>=20=20
> -	if (!HAS_IPC(i915))
> -		return;
> +	if (HAS_IPC(i915))
> +		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
> +				    &skl_watermark_ipc_status_fops);
>=20=20
> -	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
> -			    &skl_watermark_ipc_status_fops);
> +	if (HAS_SAGV(i915))
> +		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i91=
5,
> +				    &intel_sagv_status_fops);
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> index 37954c472070..1f81e1a5a4a3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -47,7 +47,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
>  void skl_watermark_ipc_init(struct drm_i915_private *i915);
>  void skl_watermark_ipc_update(struct drm_i915_private *i915);
>  bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
> -void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915);
> +void skl_watermark_debugfs_register(struct drm_i915_private *i915);
>=20=20
>  void skl_wm_init(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel Open Source Graphics Center
