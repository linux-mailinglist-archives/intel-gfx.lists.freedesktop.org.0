Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 287197EA011
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD8C10E3AB;
	Mon, 13 Nov 2023 15:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1170410E3AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889666; x=1731425666;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2QxwGt1Sll0Mb66qQ/xhUrAPOfevkjqgL5YauzLIsTU=;
 b=ML0cO3Z/8seRoETJiy8VmAv5iafXrxrDx2OM+kT2ABumULt3I/kaPedQ
 Z//9geY2yesu+UlLpnQpxw9bOpjMLEE3H3kSLQBdidg8DCLU/EzswJxDs
 Ga+D9W6nYkCAV58zGOELBk560Co9PdqZKY8LEcEIR9gCXpnPAmZ4eTVw3
 l/jCnEV9znVr9FY4AvhtLCjySTQI6pNCrM1ekKt7IS0rvX9DV5iW1pdD5
 3hyareQqgKSl6yZm5N4wnWy85M++7KPwxdzMuQbxT6mBfV4Mt05WQVi/L
 SDYK5b7wBinVKq6W46ieTgFOCQzZbo2BM8BKTVj+BUZr1E9sdnGPd2O1z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3536368"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="3536368"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="740800649"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="740800649"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:34:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-4-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:34:21 +0200
Message-ID: <87a5rhvf9e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Polish some RMWs
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Doing the if-else around RMWs is kinda silly. Just set/clear the
> apporiate bits with a single RMW.
>
> Also unify the coding style a bit icl_wa_cursorclkgating() while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dad8dac0ebbe..ec76006b1756 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -194,12 +194,9 @@ static bool is_hdr_mode(const struct intel_crtc_stat=
e *crtc_state)
>  static void
>  skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enabl=
e)
>  {
> -	if (enable)
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> -			     0, DUPS1_GATING_DIS | DUPS2_GATING_DIS);
> -	else
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> -			     DUPS1_GATING_DIS | DUPS2_GATING_DIS, 0);
> +	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +		     DUPS1_GATING_DIS | DUPS2_GATING_DIS,
> +		     enable ? DUPS1_GATING_DIS | DUPS2_GATING_DIS : 0);
>  }
>=20=20
>  /* Wa_2006604312:icl,ehl */
> @@ -207,10 +204,9 @@ static void
>  icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		       bool enable)
>  {
> -	if (enable)
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), 0, DPFR_GATING_DIS);
> -	else
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), DPFR_GATING_DIS, 0);
> +	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +		     DPFR_GATING_DIS,
> +		     enable ? DPFR_GATING_DIS : 0);
>  }
>=20=20
>  /* Wa_1604331009:icl,jsl,ehl */
> @@ -218,7 +214,8 @@ static void
>  icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		       bool enable)
>  {
> -	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), CURSOR_GATING_DIS,
> +	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> +		     CURSOR_GATING_DIS,
>  		     enable ? CURSOR_GATING_DIS : 0);
>  }

--=20
Jani Nikula, Intel
