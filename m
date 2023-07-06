Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A26749639
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 09:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BE210E439;
	Thu,  6 Jul 2023 07:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D0F10E439
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 07:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688628026; x=1720164026;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1QmFuXQumym68l0IQs4q0LR6kHdBqR1KAnDZv0+6HQE=;
 b=CBYkZ8px7J1ipc0ShcO06GSMB+LqaIwBFRquz3+X7/Wa2u8WCEG065cT
 kxkXPewfU46XHI0KPSVRGpuR5Rwic9GdKcWYEodnCuzuWoHaxnBHq12nv
 /K31ZLkBLi5RUJQP2540nYHD2yzOfirWcNXdYEG4t5lyNoI3+iLi6PfUb
 o4tjT7VT1mEJslltM/NNB3OndxPvX7OWzQzvMnN204k8ICu8LuSCqchUx
 w3RThARLpJwtOtNMasr3EvxofdQmW0ZrSl7KXltQTxs9J640sb73KrMzs
 O1Sttp/IoLkTeEhMQ9Cdd09HRJeXtXMthrUyieUjY4SphGzObjEq1Z2pR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366102986"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366102986"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:20:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="809526141"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="809526141"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:20:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-3-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 10:20:22 +0300
Message-ID: <87leftzetl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/sdvo: Protect macro args
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Put parens around macro argument evaluation for safety.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 9ac4c0b6055b..ec94da6cb7bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -57,14 +57,13 @@
>  #define SDVO_LVDS_MASK (SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_LVDS1)
>  #define SDVO_TV_MASK   (SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_SVID0 | SDVO_OUT=
PUT_YPRPB0)
>=20=20
> -#define SDVO_OUTPUT_MASK (SDVO_TMDS_MASK | SDVO_RGB_MASK | SDVO_LVDS_MAS=
K |\
> -			SDVO_TV_MASK)
> +#define SDVO_OUTPUT_MASK (SDVO_TMDS_MASK | SDVO_RGB_MASK | SDVO_LVDS_MAS=
K | SDVO_TV_MASK)
>=20=20
> -#define IS_TV(c)	(c->output_flag & SDVO_TV_MASK)
> -#define IS_TMDS(c)	(c->output_flag & SDVO_TMDS_MASK)
> -#define IS_LVDS(c)	(c->output_flag & SDVO_LVDS_MASK)
> -#define IS_TV_OR_LVDS(c) (c->output_flag & (SDVO_TV_MASK | SDVO_LVDS_MAS=
K))
> -#define IS_DIGITAL(c) (c->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_MASK=
))
> +#define IS_TV(c)		((c)->output_flag & SDVO_TV_MASK)
> +#define IS_TMDS(c)		((c)->output_flag & SDVO_TMDS_MASK)
> +#define IS_LVDS(c)		((c)->output_flag & SDVO_LVDS_MASK)
> +#define IS_TV_OR_LVDS(c)	((c)->output_flag & (SDVO_TV_MASK | SDVO_LVDS_M=
ASK))
> +#define IS_DIGITAL(c)		((c)->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_M=
ASK))
>=20=20
>=20=20
>  static const char * const tv_format_names[] =3D {

--=20
Jani Nikula, Intel Open Source Graphics Center
