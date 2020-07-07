Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119D5217ADF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 00:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6196E529;
	Tue,  7 Jul 2020 22:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0786E176
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 22:10:16 +0000 (UTC)
IronPort-SDR: 2weU4CsKgOP8mmtW02KqLTYFr+Y4+9Fi0W9K2szX/TuC9OyKkPeJ2ZTVmSdA72iQHGBrT5kYr4
 XqV0MNRkQOqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165776170"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="165776170"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 15:10:16 -0700
IronPort-SDR: IS6XXVjpmNmEdFZf5VtjNEe1oAzPMY+DSjRhS7qeC0siAi6InFSnNm/j8B4cdiIgKamDM1LEh7
 YMCCyJnSP3Bg==
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="427625354"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 15:10:15 -0700
Date: Tue, 7 Jul 2020 15:10:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200707221013.GJ2087132@mdroper-desk1.amr.corp.intel.com>
References: <20200707204530.42289-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707204530.42289-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ehl: Add new PCI ids
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

On Tue, Jul 07, 2020 at 01:45:30PM -0700, Jos=E9 Roberto de Souza wrote:
> Two new PCI ids added to ehl.
> =

> v2: added two additional PCI ids
> =

> BSpec: 29153
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index bc989de2aac2..d6cb28992ba0 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -588,7 +588,11 @@
>  	INTEL_VGA_DEVICE(0x4551, info), \
>  	INTEL_VGA_DEVICE(0x4541, info), \
>  	INTEL_VGA_DEVICE(0x4E71, info), \
> +	INTEL_VGA_DEVICE(0x4557, info), \
> +	INTEL_VGA_DEVICE(0x4555, info), \
>  	INTEL_VGA_DEVICE(0x4E61, info), \
> +	INTEL_VGA_DEVICE(0x4E57, info), \
> +	INTEL_VGA_DEVICE(0x4E55, info), \
>  	INTEL_VGA_DEVICE(0x4E51, info)
>  =

>  /* TGL */
> -- =

> 2.27.0
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
