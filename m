Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF60C5B5AD9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 15:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3799F10E3CA;
	Mon, 12 Sep 2022 13:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E4210E3CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 13:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662987990; x=1694523990;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p97HBNN8lMeHrrR8lUFi3OHIy9r0iqi1nas82KX0+H0=;
 b=O4xqGNNrJNmd++VurilcaudyuZLmwkpUkQTAQctNB8RLW05b2Oj3DQo0
 OGAghNj65ktcs5fZT9oh2QIgojKZE/XZytns+M/le5lf8QtONaJzA9ZB5
 /nSG+5fyLs0xarjBZLYjn/zCJfTo2PTZo/RBQRei9jYuTop7dIn/hmRKL
 Yjskc95WgXJ2pgKJWP4YxxdINWDsgMH6whhZXpb626eAYvCtMvFaGsaMi
 VzfUXW3fvqchPQS7Uwqffg9fYgrVpqYff+2+CX1OXw30qcFowQV1d0XAJ
 YbFO9E8kdDHE8grjVKGf2mnr+sk3dLfUh2aGj/t8wIlIAh3zZ1WTAFvpf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="384155242"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="384155242"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 06:06:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678083592"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 06:06:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220907093534.29004-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220907093534.29004-1-ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 16:06:20 +0300
Message-ID: <877d2868tv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/bios: Fix VBT ACPI DPMS bit
 polarity
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

On Wed, 07 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have the ACPI vs. not ACPI DPMS bit polarity the
> wrong way around. Fix it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

For both patches,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index d06b35f17c6a..6119fb035357 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -491,7 +491,7 @@ struct bdb_general_definitions {
>  	u8 crt_ddc_gmbus_pin;
>=20=20
>  	/* DPMS bits */
> -	u8 dpms_acpi:1;
> +	u8 dpms_non_acpi:1;
>  	u8 skip_boot_crt_detect:1;
>  	u8 dpms_aim:1;
>  	u8 rsvd1:5; /* finish byte */

--=20
Jani Nikula, Intel Open Source Graphics Center
