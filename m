Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CE04A49CE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 16:06:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23E810E182;
	Mon, 31 Jan 2022 15:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1202410E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643641560; x=1675177560;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MOEfD3SaN9kIWR9y2FnnRbTUQfGRhWDyLkt5k61abkw=;
 b=CFbiu/vTYPcoABFnOUij7YI0UpSm0NUAubxes5aUYfJtmLstHkPvtORN
 GJOutNIMyBZBBBkFnBQAF6wiWUhKrPygk6rGnW3nxtElh7ADgROVDI7V+
 KE3XzgIhJ/A9Va7usLXf/5g8t6wKSZJ27NoutD55YJZV9zmeoW4tvlkcP
 u4OdbJYTgu4JrFpDtzncJw2hNOiu9KtfGmn7Nhbopc29uEr1YcV5p+To9
 zXnmIMHiFOEQoPejBIPiv8s8wcTouYIlyCDP1XfchG7BtKRJr1FOYwpI/
 tw0byWOPbBGK9Qya/+zXbpx41ADd7HgOOtJG5rpPsctv4j6sE51/Be0kc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="246309922"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="246309922"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 07:05:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="481777019"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.16.100])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 07:05:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220128103757.22461-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
 <20220128103757.22461-13-ville.syrjala@linux.intel.com>
Date: Mon, 31 Jan 2022 17:05:53 +0200
Message-ID: <87pmo8uer2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 12/17] drm/i915: Fix
 intel_cpu_transcoder_has_m2_n2()
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

On Fri, 28 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> M2/N2 values are present for all ilk-ivb,vlv,chv (and hsw edp).
> Make the code reflect that.

Nitpick, it's not called intel_cpu_transcoder_has_m2_n2() until in the
next patch.

Side note, I've also been looking at this bit in intel_drrs_set_state():

	if (DISPLAY_VER(dev_priv) >=3D 8 && !IS_CHERRYVIEW(dev_priv))
		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
	else if (DISPLAY_VER(dev_priv) > 6)
		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);

and wondering if that should be deduplicated with the
transcoder_has_m2_n2() somehow. This is all a bit confusing with the
slightly different conditions.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1e97279ba268..67c7bbbe5c88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3149,11 +3149,7 @@ static bool transcoder_has_m2_n2(struct drm_i915_p=
rivate *dev_priv,
>  	if (IS_HASWELL(dev_priv))
>  		return transcoder =3D=3D TRANSCODER_EDP;
>=20=20
> -	/*
> -	 * Strictly speaking some registers are available before
> -	 * gen7, but we only support DRRS on gen7+
> -	 */
> -	return DISPLAY_VER(dev_priv) =3D=3D 7 || IS_CHERRYVIEW(dev_priv);
> +	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
>  }
>=20=20
>  void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,

--=20
Jani Nikula, Intel Open Source Graphics Center
