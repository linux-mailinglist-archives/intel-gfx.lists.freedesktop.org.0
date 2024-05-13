Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30738C3EEC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AB710E623;
	Mon, 13 May 2024 10:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VviC10Wj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B80610E623
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596240; x=1747132240;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hFl+mbahl2hbq3eC+1YV2+YPacVvkzmkMOq2K+oCVa4=;
 b=VviC10WjfTWUH2j9FLGQkEQI3k93rd4qb2a2ZKPVq88B2OfJjGqQ6vsW
 z8XaYDpuaisfgqoKSZWvNtTrceESklFHTqyUhOvB6B7+B4AMkbk3Ut9sW
 JQM00CFJ60rMEB+DuNPWEg2v2DoimDs7DcVJ6Onbp532prTBFu/7TsXEu
 UKjvTb8y3MAtCCqqfX6NxfUz9jCEgQVGhoguCTzKjV4ZEDpcZZ5eUPOJJ
 AUet92ntSoOJUL3fKgwkN+8AtMQk9JS3mpY2nb22w7NbMzdTR2FDqdEig
 XgUMBs2GTaaQVqSyX91BoCTHq80jSoDAvm3fiKPPn2Y0y+z+8cYnW6KeG w==;
X-CSE-ConnectionGUID: RJ+xbRoFSIeVnJ9qKb/DWw==
X-CSE-MsgGUID: UjkPVwCZSoCOCjIV9QQP8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11683742"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11683742"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:30:39 -0700
X-CSE-ConnectionGUID: I5UKZLqBRV2Q7v8TAI/JHA==
X-CSE-MsgGUID: d0UwazeGQn6ahZ1my0tJBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34717036"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:30:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 08/16] drm/i915/gvt: Use PLANE_CTL and PLANE_SURF defines
In-Reply-To: <20240510152329.24098-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-9-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:30:34 +0300
Message-ID: <87le4ef1h1.fsf@intel.com>
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

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop hand rolling PLANE_CTL and PLANE_SURF for the third plane
> and just use the real thing.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

The original is a baffling mix.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index b53c98cd6d7f..843bdb46d49c 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -1030,12 +1030,12 @@ static int iterate_skl_plus_mmio(struct intel_gvt=
_mmio_table_iter *iter)
>  	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 1));
>  	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 2));
>  	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 3));
> -	MMIO_D(_MMIO(_PLANE_CTL_3_A));
> -	MMIO_D(_MMIO(_PLANE_CTL_3_B));
> -	MMIO_D(_MMIO(0x72380));
> -	MMIO_D(_MMIO(0x7239c));
> -	MMIO_D(_MMIO(_PLANE_SURF_3_A));
> -	MMIO_D(_MMIO(_PLANE_SURF_3_B));
> +	MMIO_D(PLANE_CTL(PIPE_A, 2));
> +	MMIO_D(PLANE_CTL(PIPE_B, 2));
> +	MMIO_D(PLANE_CTL(PIPE_C, 2));
> +	MMIO_D(PLANE_SURF(PIPE_A, 2));
> +	MMIO_D(PLANE_SURF(PIPE_B, 2));
> +	MMIO_D(PLANE_SURF(PIPE_C, 2));
>  	MMIO_D(DMC_SSP_BASE);
>  	MMIO_D(DMC_HTP_SKL);
>  	MMIO_D(DMC_LAST_WRITE);

--=20
Jani Nikula, Intel
