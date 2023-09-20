Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F7B7A7717
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65ED310E469;
	Wed, 20 Sep 2023 09:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC4610E469
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695201655; x=1726737655;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nGluw3IQUlMiN/3GUqf4e0JutB2LWsDKQFGuGtBmNDM=;
 b=gpuJbblpa7JQOMKPrZGvM7NyeUJaGeDUOsmmMlHwY5CGMeqi/kQBXcW5
 2xmi+uP1XlxfBGF5YBIbvA+7+dZkh+4q+KPULNgwbUbiZEJB68H4IkucN
 oqegkUy4Fcf5XbBZIWBvsNyW2nGeqhnURupy6aVAqcGlG8UMPPVBpat0p
 IziI/X/e42dz3sAef3iLZDC4GNCfc7nVXbHjdTimXX3coVE+pwD0Y1ZvC
 tu52EGEYCPkrz7/pgHj4yod+Edt45gJcly8sj68DgZu5e1Qye2/NeKVwp
 svf8jwRqqD2NqGz3xoO9KOXGY16Mfup9a+re1kkqP5f0LAxvpUoSgRvaU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="446643890"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="446643890"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="740123108"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="740123108"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:20:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230913150356.9477-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
 <20230913150356.9477-2-ville.syrjala@linux.intel.com>
Date: Wed, 20 Sep 2023 12:20:51 +0300
Message-ID: <87led1ryj0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Require FEC for DSC on DP-MST
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The current check just asserts that we need FEC to use DSC
> with (non-eDP) DP-SST. But MST also needs FEC for DSC. Just
> check for !eDP instead to cover all the cases correctly.

128b/132b won't have crtc->fec_enable set, as it's part of channel
encoding. We don't need to explicitly enable it in hardware, the
128b/132b bandwidth computations take it into account in the equation,
but we can't skip DSC based on !crtc_state->fec_enable either.

BR,
Jani.


>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2cde8ac513bb..41f180f2879e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1380,7 +1380,7 @@ static bool intel_dp_supports_fec(struct intel_dp *=
intel_dp,
>  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fe=
c_enable)
> +	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
>  		return false;
>=20=20
>  	return intel_dsc_source_support(crtc_state) &&

--=20
Jani Nikula, Intel
