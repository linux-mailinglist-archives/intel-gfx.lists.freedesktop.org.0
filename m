Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25984379B08
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 02:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08DB56E97E;
	Tue, 11 May 2021 00:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAD16E97E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 00:05:57 +0000 (UTC)
IronPort-SDR: yC5G+O+CGng1BSyy9uO/nS0KUko/eReT6ZfI7JJhhPlfukP0s1Gjml87Rb/yaicFva+ZHqM2oW
 pzvpndFrGyeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="199384404"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="199384404"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 17:05:57 -0700
IronPort-SDR: yb0yyW3h+NvDJn76wnsqJm5GeLe0iAjsSss/zP3BgClfbFZr2LUj2vaCfjivjyUhPqEDS7X6Hj
 987TioF/Ey4g==
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="470952249"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 17:05:45 -0700
Date: Mon, 10 May 2021 17:05:40 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210511000540.GE31357@InViCtUs>
References: <20210418002126.87882-1-jose.souza@intel.com>
 <20210418002126.87882-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210418002126.87882-5-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display/xelpd: Implement
 Wa_14013475917
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

On Sat, Apr 17, 2021 at 05:21:26PM -0700, Jos=E9 Roberto de Souza wrote:
> This workaround requires that VIDEO_DIP_ENABLE_VSC_HSW is never set
> with PSR.
> =

> BSpec: 54369
> BSpec: 54077
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index de7328685d40..3876a52642a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -531,6 +531,11 @@ void hsw_write_infoframe(struct intel_encoder *encod=
er,
>  			       hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2),
>  			       0);
>  =

> +	/* Wa_14013475917 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 13 && crtc_state->has_psr &&
> +	    type =3D=3D DP_SDP_VSC)
> +		return;
> +
>  	val |=3D hsw_infoframe_enable(type);
>  	intel_de_write(dev_priv, ctl_reg, val);
>  	intel_de_posting_read(dev_priv, ctl_reg);
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
