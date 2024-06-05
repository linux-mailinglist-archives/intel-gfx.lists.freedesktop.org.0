Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509758FCA99
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31A210E12A;
	Wed,  5 Jun 2024 11:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="go3o84FQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A6D10E12A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717587631; x=1749123631;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s3A7owgYuKdZ+Haf9GTFU4miV6t4kw8edUlVW5kSGPw=;
 b=go3o84FQpnZV14031u2k75LOlQBNDW4DJq7TVWYOlXSjWjmLmpOJr8+/
 bQVxl9mb7QI71czRBUykaLCWgEs8v+yVxhKq+tXgif54UGtd1ASxcXGi4
 0u3B8ANa3R4187nu5RhSWg8OC3WpvD9lyEpM/fUnNUhv9JGVsyGJv9Adc
 ukGXDQTxaf6wtPx776Xjhfg1OA7k7ZpcQW0rloZv6+tIXVfy15JFsCtEi
 9eXRbuvJB/UtMfkFob8/7Gj2NaSvSxIIkr3nMhpY5XhGWoSJ/DaVcZ0cK
 Ga+mz8TwpKmQRMlpyPNaae4OQyoWHBmCOPgrSFSpUzIUDG4SLnEcsfbY1 A==;
X-CSE-ConnectionGUID: bPtpjPpjTxq9DJNO8IZybg==
X-CSE-MsgGUID: naymKBCxQIqEjGidgCdHcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14370252"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14370252"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:40:31 -0700
X-CSE-ConnectionGUID: 1Xdyo0unQ72u3MBvr6YpmA==
X-CSE-MsgGUID: QRGw/PypR1GHvyiHPPAHXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37553248"
Received: from sbutnari-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:40:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Reduce DDI clock gating printk level from
 NOTICE to DEBUG
In-Reply-To: <20240605113336.11194-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605113336.11194-1-ville.syrjala@linux.intel.com>
Date: Wed, 05 Jun 2024 14:40:24 +0300
Message-ID: <87v82nbot3.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No idea why the DDI clock gating print is done with drm_notice().
> Just use drm_dbg_kms() since no one is going to be interested in
> this under normal circumstances.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3c3fc53376ce..c76bbd13bb27 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2072,9 +2072,9 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct =
intel_encoder *encoder)
>  	    !encoder->is_clock_enabled(encoder))
>  		return;
>=20=20
> -	drm_notice(&i915->drm,
> -		   "[ENCODER:%d:%s] is disabled/in DSI mode with an ungated DDI clock,=
 gate it\n",
> -		   encoder->base.base.id, encoder->base.name);
> +	drm_dbg_kms(&i915->drm,
> +		    "[ENCODER:%d:%s] is disabled/in DSI mode with an ungated DDI clock=
, gate it\n",
> +		    encoder->base.base.id, encoder->base.name);
>=20=20
>  	encoder->disable_clock(encoder);
>  }

--=20
Jani Nikula, Intel
