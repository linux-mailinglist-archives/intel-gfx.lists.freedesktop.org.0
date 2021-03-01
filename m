Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DBA327A7F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC72A89EA9;
	Mon,  1 Mar 2021 09:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAB189EA9
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:12:50 +0000 (UTC)
IronPort-SDR: +7aTdhqiJA8bW3/I6nXX7cd4hZJCm/1Hhzk4/k7J0HjjWo3L4zujF69M1nuWGkMrtOcASYppNI
 7qWo+OHtnYxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="173535853"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="173535853"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:12:50 -0800
IronPort-SDR: V3JpF27AABSQ1kRsfgkeiznRI3jZ12s0dVhWWUASMylsXUKDRvdttDVjlo67PAZkoAXY+zmPqv
 TsEwpAaOQByA==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="406142134"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:12:47 -0800
Date: Mon, 1 Mar 2021 11:14:54 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301085308.GA22112@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Print wm changes if sagv_wm0
 changes
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 26, 2021 at 05:32:00PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's consider sagv_wm0 as well when deciding whether to dump
> out the watermark changes.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c341fa957884..06c54adc609a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5647,7 +5647,8 @@ static bool skl_plane_wm_equals(struct drm_i915_pri=
vate *dev_priv,
>  			return false;
>  	}
>  =

> -	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm);
> +	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
> +		skl_wm_level_equals(&wm1->sagv_wm0, &wm2->sagv_wm0);
>  }

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  =

>  static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
