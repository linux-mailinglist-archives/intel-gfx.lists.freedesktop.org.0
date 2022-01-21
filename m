Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3AF496069
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 15:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A4810EA52;
	Fri, 21 Jan 2022 14:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797F510EA60
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 14:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642773951; x=1674309951;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LeGPQIH7DafqE/B9T9dkKS/0LufaiSv2Um/3+3hwqNc=;
 b=P+7h/e59Urhn83QuFxQRUZZZDiSo5PS7sSFIUi3tg0gxD/kTL/hTFC4K
 xp4A/UTjeHbmK8XB0MEHI/YXMA51AbW9KEdwljvgUPZpdXMrJ4tbUfUhJ
 aqHDMPU9LTjObvfR9WkPno34ewC3RYj+/1pYLqAEwT8huLdk7shRr+LRW
 LRfcn6TE18l1b+4zmdn24egr7j43AHQ9Z3IroW3X9jjiCwoKLQtCKwk8h
 PommtAzj706tUN3lqdXfvqt1Z3oYYkmpW/7RuF9GlCHbpg7KHAo0b9lBk
 NCOdEivB4tdZflGlU32jfRDOv4Xhy1xbK0tN1nq64UkS7m3iv8ZEhmZGY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="332008234"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="332008234"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:05:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533284325"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:05:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220121130710.10382-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
 <20220121130710.10382-2-ville.syrjala@linux.intel.com>
Date: Fri, 21 Jan 2022 16:05:25 +0200
Message-ID: <87v8yd2nh6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Simplify
 intel_dsc_source_support()
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

On Fri, 21 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We can simplify the icl check in intel_dsc_source_support()
> by noting that the only case when DSC is not supported is when
> using transcoder A.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 9b05f93ed8bc..3faea903b9ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -341,19 +341,14 @@ bool intel_dsc_source_support(const struct intel_cr=
tc_state *crtc_state)
>  	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	if (!INTEL_INFO(i915)->display.has_dsc)
>  		return false;
>=20=20
> -	/* On TGL, DSC is supported on all Pipes */
>  	if (DISPLAY_VER(i915) >=3D 12)
>  		return true;
>=20=20
> -	if (DISPLAY_VER(i915) >=3D 11 &&
> -	    (pipe !=3D PIPE_A || cpu_transcoder =3D=3D TRANSCODER_EDP ||
> -	     cpu_transcoder =3D=3D TRANSCODER_DSI_0 ||
> -	     cpu_transcoder =3D=3D TRANSCODER_DSI_1))
> +	if (DISPLAY_VER(i915) >=3D 11 && cpu_transcoder !=3D TRANSCODER_A)
>  		return true;
>=20=20
>  	return false;

--=20
Jani Nikula, Intel Open Source Graphics Center
