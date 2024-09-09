Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF87B971AB5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7162510E569;
	Mon,  9 Sep 2024 13:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OdpwyZLB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7095A10E56A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 13:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725888020; x=1757424020;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3SerJGNHyzkoggE/jIXd/rNfgiC6r38fFx+8VRoewPA=;
 b=OdpwyZLBSiIZVX8TVocXxuaj+JIJVyijyL00RjhQomZYcEocJqv2xrYL
 YQ83sJjlnFlN6Bvw/Ivb/OjkbAApo8KossUBiUgIKD9//1w22G/nyuTmr
 HKZGJEXDp3zkFj0WXh9Q7upYR9Zbpou4PvXYL9kaYpvQ9FJVjjJmuTpQl
 jmMTcP4aKFqcfVXB5Gemi0e05khsdHso0lE2rUM1nMkeeNOSF0ec/kFQ6
 b7RgzA0cg6Vnt5QsyAIkf8lYUi2LIZxvFu775ZzYpLV6TbvASI5hH/Xr6
 q5p9E00uQMnVZLFU/bXfreN1ZLV0j5svax1R2lOS3oyhhwoJFoDA48/dd w==;
X-CSE-ConnectionGUID: zCkfC0T5TWWk3nGQijm51A==
X-CSE-MsgGUID: O2NSc9VKSZis8vmXMq0obA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35251257"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35251257"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:20:20 -0700
X-CSE-ConnectionGUID: eM6H0hJKTnuXSLeGZpPIwg==
X-CSE-MsgGUID: TqNSW+8vSa6TqiizRKCKPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="71082644"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:20:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Ankit
 Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [CI] drm/i915/dp: Dump the LTTPR PHY descriptors
In-Reply-To: <20240909121613.2915283-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240909121613.2915283-1-imre.deak@intel.com>
Date: Mon, 09 Sep 2024 16:20:15 +0300
Message-ID: <87r09tklps.fsf@intel.com>
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

On Mon, 09 Sep 2024, Imre Deak <imre.deak@intel.com> wrote:
> Dump the descriptor of the detected LTTPRs in non-transparent mode to
> help the debugging related to LTTPRs easier.
>
> v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
>     equivalent.
> v3: Add empty line between license and header section. (Ankit)
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> # v1
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>
> Resending [1] now, after the corresponding DRM core helper is merged to
> drm-intel-next.
>
> [1] https://lore.kernel.org/all/20240708190029.271247-7-imre.deak@intel.c=
om
>
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index f45797c1a2051..b7bd8135c1138 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -21,6 +21,8 @@
>   * IN THE SOFTWARE.
>   */
>=20=20
> +#include <drm/display/drm_dp_helper.h>
> +
>  #include <linux/debugfs.h>
>=20=20
>  #include <drm/display/drm_dp_helper.h>

It's already here now.

BR,
Jani.

> @@ -210,8 +212,10 @@ static int intel_dp_init_lttpr(struct intel_dp *inte=
l_dp, const u8 dpcd[DP_RECEI
>=20=20
>  	lttpr_count =3D intel_dp_init_lttpr_phys(intel_dp, dpcd);
>=20=20
> -	for (i =3D 0; i < lttpr_count; i++)
> +	for (i =3D 0; i < lttpr_count; i++) {
>  		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> +		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
> +	}
>=20=20
>  	return lttpr_count;
>  }

--=20
Jani Nikula, Intel
