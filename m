Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6584F1352
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 12:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B97710E202;
	Mon,  4 Apr 2022 10:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CFA10E202
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649069453; x=1680605453;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7L58an1pPjckkdrSBxHIl014zXD14fvJoipWrLsifN4=;
 b=V+SruE5BAcbdb21/6uQiLsgzey8OsonI11/5gMBgmuv1s5z7aESOAWSY
 f1uUxlP0ImlbzPV/vsFYNxyn71UwtvxxhrZ6FtWaJNYuXhRNfa4xxNCv6
 0fi8dwhK35qdtYjecO3xmkX4tIY0b8a/+Celwh7JKHJWnZRyRpU5pkJSM
 J9ObJ4Eez84tOjHdd9a8LlERihNsmoZDL7ec3rPRcoPRcFsJHU1yaZz8M
 P8p7J2lGVrPQKZMfnuhwL8vZsxzBXVPhDCeJ48Zp/YNcq3LAoEJRKGiOI
 l2f+NA9Et1JTsKk0NhM4XLJQz1pxoNWegPQyxNz3Q82SJTRDfBDXYoUWD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="260184991"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="260184991"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 03:50:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="548606851"
Received: from tszumski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.141.89])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 03:50:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220401222911.199284-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220401222911.199284-1-jose.souza@intel.com>
Date: Mon, 04 Apr 2022 13:50:48 +0300
Message-ID: <87czhx6s1j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

On Fri, 01 Apr 2022, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Following up what was done in commit 804f46885317 ("drm/i915/psr: Set
> "SF Partial Frame Enable" also on full update") and also setting
> partial frame enable when psr_force_hw_tracking_exit() is called.
>
> Also as PSR2_MAN_TRK_CTL is a double buffered registers do a RMW
> is not a good idea so here also setting the man_trk_ctl_enable_bit()
> that is required in TGL and only doing a register write.
>
> v2:
> - not doing a rmw
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 80002ca6a6ebe..2da2468f555ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1436,6 +1436,11 @@ void intel_psr_resume(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>  }
>=20=20
> +static inline u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *de=
v_priv)

As a rule of thumb, please don't use static inline in .c files, just let
the compiler do its job.

If that ever becomes unused, you won't get any error messages about it.

BR,
Jani.

> +{
> +	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
> +}
> +
>  static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_=
private *dev_priv)
>  {
>  	return IS_ALDERLAKE_P(dev_priv) ?
> @@ -1455,9 +1460,11 @@ static void psr_force_hw_tracking_exit(struct inte=
l_dp *intel_dp)
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20=20
>  	if (intel_dp->psr.psr2_sel_fetch_enabled)
> -		intel_de_rmw(dev_priv,
> -			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
> -			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> +			       man_trk_ctl_enable_bit_get(dev_priv) |
> +			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
> +			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
>=20=20
>  	/*
>  	 * Display WA #0884: skl+
> @@ -1554,10 +1561,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crt=
c_state *crtc_state,
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 val =3D 0;
> -
> -	if (!IS_ALDERLAKE_P(dev_priv))
> -		val =3D PSR2_MAN_TRK_CTL_ENABLE;
> +	u32 val =3D man_trk_ctl_enable_bit_get(dev_priv);
>=20=20
>  	/* SF partial frame enable has to be set even on full update */
>  	val |=3D man_trk_ctl_partial_frame_bit_get(dev_priv);

--=20
Jani Nikula, Intel Open Source Graphics Center
