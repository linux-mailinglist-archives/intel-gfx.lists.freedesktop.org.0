Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A102FF839
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:55:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEF289565;
	Thu, 21 Jan 2021 22:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480958935A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:55:17 +0000 (UTC)
IronPort-SDR: r3TvruKFP+xCwEThJ1gr86S8lh6VlkNYamHbiB8KrqxKt0X+v2aFTxlT+1iUL00viKEGWBpeKX
 99ZvMf5+Ru+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="166457824"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="166457824"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:55:16 -0800
IronPort-SDR: 9cTXCZ7O7+/evGn4H874ZMfruH6iStv+Lxs4h2AskvOPGFNgA9VM70B1i0NRK6utapWhG1zhT+
 z4/djRDKhaIQ==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="356689680"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:55:16 -0800
Date: Thu, 21 Jan 2021 14:59:43 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121225943.GB26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-10-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-10-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 09/18] drm/i915: Rename VRR_CTL reg fields
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 13, 2021 at 02:09:26PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Give the pipeline full line count bits more descriptive names
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 249a81575b9d..307c613cbc57 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4346,13 +4346,13 @@ enum {
>  #define _TRANS_VRR_CTL_B		0x61420
>  #define _TRANS_VRR_CTL_C		0x62420
>  #define _TRANS_VRR_CTL_D		0x63420
> -#define TRANS_VRR_CTL(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
> -#define   VRR_CTL_VRR_ENABLE		REG_BIT(31)
> -#define   VRR_CTL_IGN_MAX_SHIFT		REG_BIT(30)
> -#define   VRR_CTL_FLIP_LINE_EN		REG_BIT(29)
> -#define   VRR_CTL_LINE_COUNT_MASK	REG_GENMASK(10, 3)
> -#define   VRR_CTL_LINE_COUNT(x)		REG_FIELD_PREP(VRR_CTL_LINE_COUNT_MASK,=
 (x))
> -#define   VRR_CTL_SW_FULLLINE_COUNT	REG_BIT(0)
> +#define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
> +#define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
> +#define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
> +#define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
> +#define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL=
_MASK, (x))
> +#define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
>  =

>  #define _TRANS_VRR_VMAX_A		0x60424
>  #define _TRANS_VRR_VMAX_B		0x61424
> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
