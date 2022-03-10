Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2752E4D4421
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735FC10E45D;
	Thu, 10 Mar 2022 09:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3954510E45D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646906393; x=1678442393;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2nwGW5tsFUB+DCaKieALxw7YUx8vtIDUS+OISIxpoVM=;
 b=fBX53SQiWFNthY463YXUR0vIHjH1wpOBzNMf30CojhQeejDUlivTMGAL
 O1QBJBopnjhaTdoBd1AjcJs/E2DJt+/tGqjdHLSpiCfJIUJxEd5/MOec0
 SNUm/uOYH8eBpskyXCSBmxCTMWV6V/ERmYYpaOIJoU3oKwlz4yPI871Z2
 aIOy3KW3hDGgUa4eMryw2u6RqiFqLitIYBdSVfxth1dJ3oWuzUnKLskoV
 ipg7HPw+T5NHpkqs+StvSMWuKw5ZBSZVtTNF+wdPD8kLJsn78MaVTo4VH
 8dZOuX73EBKWvBZuSeyA3s973uYmUlPVxVRukcurkjD1AWZ2iI33rQSDT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235160787"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="235160787"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:59:26 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554572665"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:59:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-12-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:59:23 +0200
Message-ID: <87bkyexh50.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915: Enable eDP DRRS on ilk/snb
 port A
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nothing special about ivb+ here, if DRRS works on ivb+ port A
> it should work just as well on ilk/snb. So let's enable
> that.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 246dd0c71194..dcbbd9c48458 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -145,10 +145,10 @@ static void intel_drrs_set_state(struct intel_crtc =
*crtc,
>  	if (refresh_rate =3D=3D crtc->drrs.refresh_rate)
>  		return;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 8 && !IS_CHERRYVIEW(dev_priv))
> -		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
> -	else if (DISPLAY_VER(dev_priv) > 6)
> +	if (intel_cpu_transcoder_has_m2_n2(dev_priv, crtc->drrs.cpu_transcoder))
>  		intel_drrs_set_refresh_rate_pipeconf(crtc, refresh_rate);
> +	else
> +		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
>=20=20
>  	crtc->drrs.refresh_rate =3D refresh_rate;
>  }
> @@ -364,7 +364,7 @@ intel_drrs_init(struct intel_connector *connector,
>  	struct intel_encoder *encoder =3D connector->encoder;
>  	struct drm_display_mode *downclock_mode;
>=20=20
> -	if (DISPLAY_VER(dev_priv) <=3D 6) {
> +	if (DISPLAY_VER(dev_priv) < 5) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
>  			    connector->base.base.id, connector->base.name);

--=20
Jani Nikula, Intel Open Source Graphics Center
