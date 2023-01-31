Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8509682564
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6A410E334;
	Tue, 31 Jan 2023 07:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B5F10E334
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675149104; x=1706685104;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Z8CsdPYnIajoNG3otFp5/mxXrc5q60iIHy0hI7Rey0A=;
 b=daDuF5wIj4hD3BpePUtIIoMweUhrjxzWBCjS7nj3SySnxWeCtyoy6dFL
 4OTHGgE6jDlfCuS5cRQ5TohLsS/qxOK53TVVWzhz6UVcIslugPy9ixiHK
 oaMV4U8R6o7wKKziGzFnligtUVK0lsOrouuQa2y+DO6cw83tb4bmZc5MK
 TokBEDRbWFnKeo3Ch75ymkHQks4B8kR54C+jfOk+F0cf0Hz+Cl8kt5wtZ
 EIX+jaBeHNETmdEDro0GxvpRlvOulvNooPFPUg4HcJMbO9YlqWJ80rfW7
 jyKSFtsd3aJlz1j/Vw3COLcmVYTWUHmed5tKIC2Bn4jpsosCZDklw+khX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390132959"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="390132959"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:11:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="909801788"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="909801788"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:11:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
Date: Tue, 31 Jan 2023 09:11:40 +0200
Message-ID: <87zg9z2n6b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Include stepping informaiton
 in device info dump
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

On Mon, 30 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Dump the stepping information alongside all the other device
> info. Might avoid some guesswork when reading logs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 98769e5f2c3d..599c6d399de4 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -119,6 +119,11 @@ void intel_device_info_print(const struct intel_devi=
ce_info *info,
>  		drm_printf(p, "display version: %u\n",
>  			   runtime->display.ip.ver);
>=20=20
> +	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.=
graphics_step));
> +	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.med=
ia_step));
> +	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.d=
isplay_step));
> +	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.=
basedie_step));
> +
>  	drm_printf(p, "gt: %d\n", info->gt);
>  	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
>  	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);

--=20
Jani Nikula, Intel Open Source Graphics Center
