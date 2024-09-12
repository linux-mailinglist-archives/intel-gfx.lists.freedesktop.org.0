Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D50976869
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7476910EB5B;
	Thu, 12 Sep 2024 11:58:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNUOQQ0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB7F10EB5A;
 Thu, 12 Sep 2024 11:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726142287; x=1757678287;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rZwhzSG3RZuOJIcOwHzu2U3Gm5WtNCqcmHpkRL8aIzY=;
 b=FNUOQQ0yaqqpbMzb6FyEWkKfwpGsw1QmTbPKcdLu+B2U9fDvQSXr3oJk
 E3X9/+Xb9EEVowXUcnMJe6ci/R2AJA60ZkszDpEj8z5RprBvsfSeoLQn/
 dLV2N9gZ9/HkXq06YCyzcqJhnfeNp0WCYLARNzYd76V4fACiSbWeP05MC
 FM3lY+W3qjQt+iYR9pXeHwBKliBgTRIgDCZg8XlzJu20Oj6KlTMk5Mf9i
 0ZvjQf0LZNUw9wkM/FonCQQ8WHRPm5uz/hni7Rh+g5SdOgLLbD9Hwn0f0
 26KocyhI/E9y72Clcg5O96xerP84m1OH9YUgHwr01dRuJ4fJRc8hL9aH6 g==;
X-CSE-ConnectionGUID: JnxnQl/IQJ+v8NQqWMm8Lg==
X-CSE-MsgGUID: Rt/GBjF0TaGWvDwVM/oOfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25090871"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25090871"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:58:07 -0700
X-CSE-ConnectionGUID: iqIFXzJJQIu6hJFiFqVJGg==
X-CSE-MsgGUID: ouenDk1aTCi7Wi0AVtm0fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="105133631"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:57:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/bios: Round PCI ROM VBT allocation to
 multiple of 4
In-Reply-To: <20240910134219.28479-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-3-ville.syrjala@linux.intel.com>
Date: Thu, 12 Sep 2024 14:57:56 +0300
Message-ID: <874j6lgk3f.fsf@intel.com>
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

On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The SPI code rounds the VBT allocation to a multiple of four bytes
> (presumably because it reads the VBT 4 bytes at a time). Do the
> same for the PCI ROM side to eliminate pointless differences between
> the two codepaths. This will make no functional difference.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 86b81fd23f58..cc4a4cc2bf3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3166,7 +3166,7 @@ static struct vbt_header *oprom_get_vbt(struct inte=
l_display *display,
>  	}
>=20=20
>  	/* The rest will be validated by intel_bios_is_valid_vbt() */
> -	vbt =3D kmalloc(vbt_size, GFP_KERNEL);
> +	vbt =3D kmalloc(round_up(vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
>  		goto err_unmap_oprom;

--=20
Jani Nikula, Intel
