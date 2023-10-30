Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D7D7DBA0F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 13:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC4F10E2AF;
	Mon, 30 Oct 2023 12:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB2210E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 12:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698669771; x=1730205771;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zkZtWwIfeETsZ1CVhsJIJTUUWtEJGf0GXLwRKEJI1xA=;
 b=OXNbMiR8H1kxz9ZX1ZujBr+vWBUpXnkvJnIk7UoE9NV50L0HKktOeBgO
 zBbfUwEBT0pRGXKPDUrRJs7eHwDuOmntK3r6wk4uffHZO0KHM/H73uAdU
 UYt4chnN/mDv4i6bH2mMfnfNP6w1ie4pgbM7feBPKfHkmpEP7HfKIH3tx
 jS4XxcTlW3E3tnscTsgrK1woMuVFd9kolz0rEe0DmZVV5dyeEjGCtuDhM
 17zLUVje5fW3OF1yxnwMc7E3wwg3j1lHY2F1P1N1y20wfyN0M/koKcayh
 cpLYl4fMH9AMnEP0oPgEr0jjv1riLFSfvL1Yee88vhyleft9HRQME/9Mj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="391924813"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="391924813"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="830678803"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="830678803"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:42:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231018154123.5479-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
 <20231018154123.5479-3-ville.syrjala@linux.intel.com>
Date: Mon, 30 Oct 2023 14:42:28 +0200
Message-ID: <87jzr45ljf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/mst: Disable transcoder before
 deleting the payload
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

On Wed, 18 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Bspec tells us that we should disable the transcoder before
> deleting the payload. Looks like this has been reversed since
> MST support was added.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 7b4628f4f124..57eb581b8a50 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -587,10 +587,6 @@ static void intel_mst_disable_dp(struct intel_atomic=
_state *state,
>  	struct intel_dp *intel_dp =3D &dig_port->dp;
>  	struct intel_connector *connector =3D
>  		to_intel_connector(old_conn_state->connector);
> -	struct drm_dp_mst_topology_state *new_mst_state =3D
> -		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr=
);
> -	struct drm_dp_mst_atomic_payload *new_payload =3D
> -		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
> @@ -598,8 +594,6 @@ static void intel_mst_disable_dp(struct intel_atomic_=
state *state,
>=20=20
>  	intel_hdcp_disable(intel_mst->connector);
>=20=20
> -	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payl=
oad);
> -
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  }
>=20=20
> @@ -634,6 +628,8 @@ static void intel_mst_post_disable_dp(struct intel_at=
omic_state *state,
>=20=20
>  	intel_disable_transcoder(old_crtc_state);
>=20=20
> +	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payl=
oad);
> +
>  	clear_act_sent(encoder, old_crtc_state);
>=20=20
>  	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcode=
r),

--=20
Jani Nikula, Intel
