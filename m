Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E96625FC779
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB41310E2E3;
	Wed, 12 Oct 2022 14:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27AF10E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585377; x=1697121377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AiUWvbhb0fNkAP+VHkKHXXbAaruJFXgxiGl0t5ujlQ4=;
 b=ZWnI6jnqV1d8Sy0i3kxBe1vkfwbJrMncOEpR+OF9L4gPzw1BEk1oUGPx
 eMdbBcWo7iE8nJVjtvOYVHmwdnB2g19vHzL3pHVhdFLn/ADetm2KSuDiO
 OMnBaM/OY0JN5m4z8WOheaRIHxYhMU0JgTV7W47VwlpnysaKzQmU2omPb
 f/BqU0xk8Ae3M4pME/XyxycszhZEUAqA8jZM6ZAfYr5TS/PA3sAEnHZF5
 X2ldrWvwJ3qmyaDJ5MWTj7Sk96+H2TGjqUQeodeqvOm2H4/JP/09H7h+0
 NnshUy8LnwZk+ZTBwCB3pPqeewfv1V/YO4hZr6n0eBvs15LeMzBcfyF3y A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="391115503"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="391115503"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="955775403"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="955775403"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-3-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:36:17 +0300
Message-ID: <8735btw1lq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/audio: Nuke leftover
 ROUNDING_FACTOR
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove some leftovers I missed in commit
> 2dd43144e824 ("drm/i915: Streamline the artihmetic")
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index b6220f767417..b6165bb57503 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -626,8 +626,6 @@ static void enable_audio_dsc_wa(struct intel_encoder =
*encoder,
>  	intel_de_write(i915, AUD_CONFIG_BE, val);
>  }
>=20=20
> -#undef ROUNDING_FACTOR
> -
>  static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)

--=20
Jani Nikula, Intel Open Source Graphics Center
