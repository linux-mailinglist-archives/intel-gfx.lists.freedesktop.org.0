Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12175ED731
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 10:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A2510E303;
	Wed, 28 Sep 2022 08:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DB110E303
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 08:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664352677; x=1695888677;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=qJLV8GbAwKe9Wxl33LYPQ6fB9kpBWhvZziBEDumIuAs=;
 b=Ps/vcz5r/FGygcqUbn1JJyHEhzkgUQF9pYucCGKcIk3HIA/WXGd5enfS
 sAcl+eTG3P63V8yH05NzimcBV1KImJwPm/BhlhaA7o20oouToAxEw42ar
 kvVU7e7u/s2Ot+RAs28krwz1d1K2dZfxhu6bT9C211F9H6ahyKOwQG+vE
 4b/WKUUFSMC39OD+6+suc0/hFmIs+jXdavp2XRGgc842hqixsjdPD2Avt
 KR2Wl64PtGrGftmojzFUlzk/vvr+LY+FOXvgqkjgq0obAJasHMd79SdC3
 G8JTX+Q01N0b+LTBkME0hxw3QLsOlHvRww0g/K8FtPs8QHV1u43A6tBvl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288696765"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="288696765"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:11:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572946991"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="572946991"
Received: from novermar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.30])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:11:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220927180615.25476-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
 <20220927180615.25476-3-ville.syrjala@linux.intel.com>
Date: Wed, 28 Sep 2022 11:11:13 +0300
Message-ID: <87h70rzzoe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Allow alternate fixed modes
 always for eDP
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

On Tue, 27 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop considering VBT's static DRRS support when deciding whether
> to use alternate fixed modes or not. It looks like Windows more
> or less just uses that to decide whether to automagically switch
> refresh rates on AC<->batter changes, or perhaps whether to

*battery

The series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> even expose a control for that in some UI thing. Either way it
> seems happy to always use all EDID modes, and I guess the
> DRRS/VRR stuff more or less adjust how said modes get
> actually used.
>
> Let's do the same and just accept all the suitable looking
> modes from EDID, whether we have DRRS or VRR.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6323
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6484
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c368caa23291..70b06806ec0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5292,9 +5292,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>  			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>=20=20
> -	intel_panel_add_edid_fixed_modes(intel_connector,
> -					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE ||
> -					 intel_vrr_is_capable(intel_connector));
> +	intel_panel_add_edid_fixed_modes(intel_connector, true);
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
