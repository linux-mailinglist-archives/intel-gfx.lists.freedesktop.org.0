Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA2114BD43
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3D36EE8E;
	Tue, 28 Jan 2020 15:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B014E6EE8E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:51:18 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 07:51:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="309113331"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 28 Jan 2020 07:51:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 17:51:14 +0200
Date: Tue, 28 Jan 2020 17:51:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200128155114.GK13686@intel.com>
References: <20200128151942.2590-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128151942.2590-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: remove VBT data about DRRS
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

On Tue, Jan 28, 2020 at 05:19:42PM +0200, Jani Nikula wrote:
> The debugfs is not the place to print duplicated info about VBT data.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 8992698510ee..7f4976c10cea 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -2921,16 +2921,7 @@ static void drrs_status_per_crtc(struct seq_file *=
m,
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  =

> -	if (dev_priv->vbt.drrs_type =3D=3D STATIC_DRRS_SUPPORT)
> -		seq_puts(m, "\tVBT: DRRS_type: Static");
> -	else if (dev_priv->vbt.drrs_type =3D=3D SEAMLESS_DRRS_SUPPORT)
> -		seq_puts(m, "\tVBT: DRRS_type: Seamless");
> -	else if (dev_priv->vbt.drrs_type =3D=3D DRRS_NOT_SUPPORTED)
> -		seq_puts(m, "\tVBT: DRRS_type: None");
> -	else
> -		seq_puts(m, "\tVBT: DRRS_type: FIXME: Unrecognized Value");
> -
> -	seq_puts(m, "\n\n");
> +	seq_puts(m, "\n");

Less stuff to worry about for my fix drrs branch.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  	if (to_intel_crtc_state(intel_crtc->base.state)->has_drrs) {
>  		struct intel_panel *panel;
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
