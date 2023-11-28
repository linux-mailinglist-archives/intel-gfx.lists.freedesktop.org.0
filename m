Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959C77FBA02
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:24:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248AB10E4F8;
	Tue, 28 Nov 2023 12:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A5B10E4F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174246; x=1732710246;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=GXUjq7ofAvnS7B6lGljbgwmjMCp/K6IjzK/qPgOpd3w=;
 b=gdgFK7ZgLCoctdoJ9+qnzKJ/G2wZDg/o28yvEJgiunUdLiwldSaqmdJz
 4t1srjBnmzJQ+fm1JLvn1+XnjvmP8Q0OZAAEYdX85qGoufL7B5ICl9iFx
 L7KxiC/dsIBK9Z8Y3fc7tHXbp26S2pT8/J465LzeV0M/fhmduOwoNSJB2
 RilR/HcBmI17QsWxxa8OhiH4zz1OCQ0EplBvJRdZ79tIWLRfK9rBhpEm/
 P8L7G5PLo0UgLHh6rAR8WuSW+zEFpJKfiTXhf6+qfXjAfjiRQiAGbdVOl
 nM+lYqNXItMMg5FNNGoUf615I96d2GkZqC6IZNUyIuRJ63LK+eYHTOn0i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="391786418"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="391786418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="912419691"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="912419691"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:24:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127145028.4899-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
 <20231127145028.4899-2-ville.syrjala@linux.intel.com>
Date: Tue, 28 Nov 2023 14:24:00 +0200
Message-ID: <87zfyy6p7j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/mst: Fix .mode_valid_ctx()
 return values
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

On Mon, 27 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> .mode_valid_ctx() returns an errno, not the mode status. Fix
> the code to do the right thing.
>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: d51f25eb479a ("drm/i915: Add DSC support to MST path")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 0514f825baf5..0680a42f7d2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1366,11 +1366,15 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector =
*connector,
>  	 * Big joiner configuration needs DSC for TGL which is not true for
>  	 * XE_LPD where uncompressed joiner is supported.
>  	 */
> -	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc)
> -		return MODE_CLOCK_HIGH;
> +	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc) {
> +		*status =3D MODE_CLOCK_HIGH;
> +		return 0;
> +	}
>=20=20
> -	if (mode_rate > max_rate && !dsc)
> -		return MODE_CLOCK_HIGH;
> +	if (mode_rate > max_rate && !dsc) {
> +		*status =3D MODE_CLOCK_HIGH;
> +		return 0;
> +	}
>=20=20
>  	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false);
>  	return 0;

--=20
Jani Nikula, Intel
