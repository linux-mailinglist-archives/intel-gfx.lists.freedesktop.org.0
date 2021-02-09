Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEBA3157B0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 21:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3646E9A8;
	Tue,  9 Feb 2021 20:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C97F6E9A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 20:28:13 +0000 (UTC)
IronPort-SDR: 62Y2rjC0l7pB6d/9sJwvhmOmHXpOKLSfV23joNS0nBkWy4iPHv6lmBXpg68mEGXnd+5cy8BD4Q
 WcUfHuSPMPIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="161104906"
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="161104906"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:28:09 -0800
IronPort-SDR: cK9UJt0B4ivK86VgO0CvpqyVOPsQXLC1AM9csjkYjsbi35tQr0ltrKRfC/tnrY0UBsjR6jrDHL
 IezH/RQqI7BA==
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="419945942"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:28:09 -0800
Date: Tue, 9 Feb 2021 12:28:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210209202807.GN2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210209174238.153278-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209174238.153278-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add DDR5 and LPDDR5 BW
 buddy page entries
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 09, 2021 at 09:42:38AM -0800, Jos=E9 Roberto de Souza wrote:
> Set the right BW buddy page mask for new memory types.
> =

> BSpec: 49218
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index e17b1ca356c3..f00c1750febd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5317,17 +5317,25 @@ struct buddy_page_mask {
>  =

>  static const struct buddy_page_mask tgl_buddy_page_masks[] =3D {
>  	{ .num_channels =3D 1, .type =3D INTEL_DRAM_DDR4,   .page_mask =3D 0xF =
},
> +	{ .num_channels =3D 1, .type =3D INTEL_DRAM_DDR5,	.page_mask =3D 0xF },
>  	{ .num_channels =3D 2, .type =3D INTEL_DRAM_LPDDR4, .page_mask =3D 0x1C=
 },
> +	{ .num_channels =3D 2, .type =3D INTEL_DRAM_LPDDR5, .page_mask =3D 0x1C=
 },
>  	{ .num_channels =3D 2, .type =3D INTEL_DRAM_DDR4,   .page_mask =3D 0x1F=
 },
> +	{ .num_channels =3D 2, .type =3D INTEL_DRAM_DDR5,   .page_mask =3D 0x1E=
 },
>  	{ .num_channels =3D 4, .type =3D INTEL_DRAM_LPDDR4, .page_mask =3D 0x38=
 },
> +	{ .num_channels =3D 4, .type =3D INTEL_DRAM_LPDDR5, .page_mask =3D 0x38=
 },
>  	{}
>  };
>  =

>  static const struct buddy_page_mask wa_1409767108_buddy_page_masks[] =3D=
 {
>  	{ .num_channels =3D 1, .type =3D INTEL_DRAM_LPDDR4, .page_mask =3D 0x1 =
},
>  	{ .num_channels =3D 1, .type =3D INTEL_DRAM_DDR4,   .page_mask =3D 0x1 =
},
> +	{ .num_channels =3D 1, .type =3D INTEL_DRAM_DDR5,   .page_mask =3D 0x1 =
},
> +	{ .num_channels =3D 1, .type =3D INTEL_DRAM_LPDDR5, .page_mask =3D 0x1 =
},
>  	{ .num_channels =3D 2, .type =3D INTEL_DRAM_LPDDR4, .page_mask =3D 0x3 =
},
>  	{ .num_channels =3D 2, .type =3D INTEL_DRAM_DDR4,   .page_mask =3D 0x3 =
},
> +	{ .num_channels =3D 2, .type =3D INTEL_DRAM_DDR5,   .page_mask =3D 0x3 =
},
> +	{ .num_channels =3D 2, .type =3D INTEL_DRAM_LPDDR5, .page_mask =3D 0x3 =
},
>  	{}
>  };
>  =

> -- =

> 2.30.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
