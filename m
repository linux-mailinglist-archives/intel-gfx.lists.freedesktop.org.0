Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF64E92FA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C6010E176;
	Mon, 28 Mar 2022 11:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8CB10E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465575; x=1680001575;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=jSkpCQUDFYgPTlhw2BnJnqGtiiLlkCYNBEqiclfT36A=;
 b=GCssiJZy6a0T9nC9d4gj4nQRmv86dtHL/tGSLdc52F5g6tdteo/kWRu+
 R46Z9ANRvYV+K290nqy1WmwEZ78Ez82tjcO98EH4ihgbM/wflx6vrEMgf
 lpIlYA+l4iPd7kUDIzy57YE3CDqLK2m5BH83bxJwDGr1LfU9aG6GGGt7F
 Idc834n7r7GGuQ4uEFs00Ub5qdyxm0AL6VAvxnuzGxIGjPhfjCHMmKAmy
 WP07xkRPXn5oL3Z6JbUs53K1Uo0buBS9+6WnZq7TwVpa630+PIs8XFcDv
 xL49rF8okvA6DOr7wGR+psAlsOHz7xbPFl7KWhL6YwIgCTkon9R+OXMqp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="322157240"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="322157240"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:06:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="520966150"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:06:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-8-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:06:03 +0300
Message-ID: <87k0cefias.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915: Clear the dpll_hw_state
 when disabling a pipe
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

On Fri, 25 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Clear the dpll_hw_state when we're about disable the pipe.
> Previously it looks like we just left the old junk in there.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 494a343850e7..7960f1d52eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1406,12 +1406,12 @@ int intel_dpll_crtc_compute_clock(struct intel_at=
omic_state *state,
>  	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
>  		return 0;
>=20=20
> -	if (!crtc_state->hw.enable)
> -		return 0;
> -
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));
>=20=20
> +	if (!crtc_state->hw.enable)
> +		return 0;
> +
>  	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
