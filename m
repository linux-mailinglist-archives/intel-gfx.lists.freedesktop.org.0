Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C45166E7E4A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 179A510E9F0;
	Wed, 19 Apr 2023 15:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40E610E9F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918253; x=1713454253;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HKWpqUPRhjKG9/lFUKW5oAyHuHA4CAFcsij+7mF/qh8=;
 b=OXyvAaHZQPLYdGR5Po8vmIrPZEL8OCRAb2keF/waLGg7k0x4Er5wzUoB
 2n/QmopJfGhEQ4gC9uV/Ll3fw+sksyVXCNwmKbqQozmJhAF+TeALv0kRN
 5Zlpg1pxGPW3/Q1emC0S1cBjXMY++ceeY2cjGKADOm7IUpYVPaC72UlZ0
 IpBoYXzXOzk23rdq4z5WgAurS57b3ajonb3DZNIL7OyIPtkqtq0rdfn1P
 h6BTNxjaRNdhtb1bFNMSYRhNQqeyqGDkg/TMQ6TmAWtYdOYvvFRKSG6qP
 Uffs6+X1HfSzMyCvAz1SaYrwDx5PZy4/bhiDJLeIDt2mKIFnD+5QgVunG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="344228324"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="344228324"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="756142167"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="756142167"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:30:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-9-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:30:50 +0300
Message-ID: <87y1mnyjmd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/15] drm/i915: Drop a useless forward
 declararion
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> ilk_pfit_enable() is defined before the first use. No need
> for a forwared declaration.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e9000ed15e7f..fb49d0ed61b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -123,7 +123,6 @@ static void intel_set_transcoder_timings(const struct=
 intel_crtc_state *crtc_sta
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state);
> -static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>=20=20
>  /* returns HPLL frequency in kHz */
>  int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)

--=20
Jani Nikula, Intel Open Source Graphics Center
