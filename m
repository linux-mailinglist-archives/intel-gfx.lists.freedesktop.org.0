Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D431D59DB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 21:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AF36ED1A;
	Fri, 15 May 2020 19:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415556ED1A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 19:19:56 +0000 (UTC)
IronPort-SDR: 66i1B24TJfcmOP4UazxK3DOsyGmbw+Jg2WiDuF8J76BePIpKRPM8n6LlayKbvWQIZ2kCXP3cLe
 bqt/tAJX6YlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:19:55 -0700
IronPort-SDR: Fit4fPRgyJHjB+OxvxxpInNNAR3VKlNDY5XSbZ2OnLUfbiggfZtl3URe3cHHBV3IFEyQa1o8bG
 FZX7POxCiitA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="342069485"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 15 May 2020 12:19:55 -0700
Date: Fri, 15 May 2020 12:21:03 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200515192103.GC20478@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512174145.3186-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Replace some hand rolled
 max()s
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

On Tue, May 12, 2020 at 08:41:45PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Use max() instead of hand rolling it.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index aa7af531bcb8..2493142a70e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -59,13 +59,8 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_=
dp,
>  	u8 preemph_max;
>  =

>  	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
> -		u8 this_v =3D drm_dp_get_adjust_request_voltage(link_status, lane);
> -		u8 this_p =3D drm_dp_get_adjust_request_pre_emphasis(link_status, lane=
);
> -
> -		if (this_v > v)
> -			v =3D this_v;
> -		if (this_p > p)
> -			p =3D this_p;
> +		v =3D max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
> +		p =3D max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane)=
);
>  	}
>  =

>  	preemph_max =3D intel_dp->preemph_max(intel_dp);
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
