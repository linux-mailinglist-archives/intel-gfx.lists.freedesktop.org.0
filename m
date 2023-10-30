Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8537DB9FA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 13:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B7B10E2A8;
	Mon, 30 Oct 2023 12:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B8810E2A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698669525; x=1730205525;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7NbLB8nH+7fgYthTkyqQpTeJyFdKoJDjCygCysTX0X0=;
 b=NF4hlqVLeca/L7ZZf/Oc2+PyzeRo+rawOvBMYBLm1b1tawQlTwJmnYUu
 TbMZtoFB4UOnG80qyOsQKG9wtOJPzL75X14LfECpdnZFqWNYMvQMp83Tz
 UqerIPeTF3/znGhVn9zcZpmTu4LgUIrIeaGzAN7jRAaOmCtcbaus4vbq/
 pmBmaKA4RFRs7Lm6lwRnso8ZzGj09d5pEHPhareTX6dY0JUaVSJPDExDf
 J3OwqrSDY5pB9KbTSFmdnW20/aBeAiUBT8ktGQ24bVx45GaRRrUG6S/5Y
 M9jGdAI5iyuHqhb0fblMHwD63RKsYOqOOpNQ4mHZvTbPsx1Ka4clEIhor w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="378433699"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="378433699"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:38:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="789444761"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789444761"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:38:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231018154123.5479-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
 <20231018154123.5479-2-ville.syrjala@linux.intel.com>
Date: Mon, 30 Oct 2023 14:38:31 +0200
Message-ID: <87msw05lq0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mst: Swap TRANSCONF vs.
 FECSTALL_DIS_DPTSTREAM_DPTTG disable
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
> The DP modeset sequence asks us to disable TRANSCONF before clearing
> the FECSTALL_DIS_DPTSTREAM_DPTTG bit, although we are still asked
> to wait for the transcoder to stop only after both steps have
> been done.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 28d85e1e858e..a994fc2319a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -485,6 +485,8 @@ void intel_disable_transcoder(const struct intel_crtc=
_state *old_crtc_state)
>  	if (!IS_I830(dev_priv))
>  		val &=3D ~TRANSCONF_ENABLE;
>=20=20
> +	intel_de_write(dev_priv, reg, val);
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 14)
>  		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
> @@ -492,7 +494,6 @@ void intel_disable_transcoder(const struct intel_crtc=
_state *old_crtc_state)
>  		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
>=20=20
> -	intel_de_write(dev_priv, reg, val);
>  	if ((val & TRANSCONF_ENABLE) =3D=3D 0)
>  		intel_wait_for_pipe_off(old_crtc_state);
>  }

--=20
Jani Nikula, Intel
