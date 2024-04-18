Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2728A9884
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 13:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EBF113BBF;
	Thu, 18 Apr 2024 11:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auHAvN43";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2A9113BC0;
 Thu, 18 Apr 2024 11:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713439723; x=1744975723;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IDLdJXQpA4Jnd1sjgJ+/sTPUEqjtSUvPodEJI9hOy+8=;
 b=auHAvN43dimTuMj4A4dNWAeo5uC+oBUf81kfcCQKIWRqz0Rgtoy55jhX
 YiIj505yv48XdXrn0vKvsIlemYpLvTYui3gdqV0pJcHaHg5TwGO23Lrro
 cesT4LOJqRpM8HoVaww6NggQXBz7S8uG+m80Lm5JwilnaVrnpQjC2uUUn
 4rIgZGNxQBzzklxOlpH/H6QbMaenXQEQRVkCXz28OF0v0DuARgK3N8Pop
 +cCZ9WpU0hB3n/rTnq2EK57IQScMHezqZs/WU2ys/oJ1QfrliVn2hF15L
 nlMPbE0mQqtV1jtsJXsbGWWVSxKGF6mBFE7ZYjdAZn6MXFucn/rz1tN8p A==;
X-CSE-ConnectionGUID: fjmrfLEVR0Wd3UKdJwZHfw==
X-CSE-MsgGUID: xMEaDX3tQveeEJvwICRBJg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8815510"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="8815510"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:28:43 -0700
X-CSE-ConnectionGUID: Pv5SOXmIQJCR3E+WeIyK5A==
X-CSE-MsgGUID: bNakRgpcTa+yJAngcoj8kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23468690"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:28:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 gustavo.sousa@intel.com, james.ausmus@intel.com
Subject: Re: [PATCH v5] drm/i915: limit eDP MSO pipe only for display
 version 20 and below
In-Reply-To: <20240404091646.165309-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240404091646.165309-1-luciano.coelho@intel.com>
Date: Thu, 18 Apr 2024 14:28:38 +0300
Message-ID: <8734riyknt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 04 Apr 2024, Luca Coelho <luciano.coelho@intel.com> wrote:
> The pipes that can be used for eDP MSO are limited to pipe A (and
> sometimes also pipe B) only for display version 20 and below.
>
> Modify the function that returns the pipe mask for eDP MSO so that
> these limitations only apply to version 20 and below, enabling all
> pipes otherwise.

Thanks for the patch, pushed to din.

BR,
Jani.

>
> Bspec: 68923
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>
> In v5:
>    * fixed Ville's name's wrong charset, which prevented patchwork
>      from picking this up.
>
> In v4:
>    * actually go back to unrestricting only for > 20.  I sent the
>      wrong patch version in v3.
>
> In v3:
>    * go back to unrestricing only for > 20, since the change for
>      versions 14 to 20 should be tested separately;
>    * simplify the if blocks [Ville].
>
> In v2:
>    * allow pipes A and B from ver 14 to 20 [Gustavo]
>
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index a3d3d4942eb1..5d2863c43296 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2336,10 +2336,15 @@ static void intel_ddi_power_up_lanes(struct intel=
_encoder *encoder,
>  	}
>  }
>=20=20
> -/* Splitter enable for eDP MSO is limited to certain pipes. */
> +/*
> + * Splitter enable for eDP MSO is limited to certain pipes, on certain
> + * platforms.
> + */
>  static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
>  {
> -	if (IS_ALDERLAKE_P(i915))
> +	if (DISPLAY_VER(i915) > 20)
> +		return ~0;
> +	else if (IS_ALDERLAKE_P(i915))
>  		return BIT(PIPE_A) | BIT(PIPE_B);
>  	else
>  		return BIT(PIPE_A);

--=20
Jani Nikula, Intel
