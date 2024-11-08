Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875EE9C1D7C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6325810E97A;
	Fri,  8 Nov 2024 13:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W8b6mF1C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 303A610E97A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070906; x=1762606906;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8KX3QgmK/5qFJIy6uawkdLB3AcBcOqG3TljtnkDUNPY=;
 b=W8b6mF1CtTwQXo+MAZzuQHcINjWuybg10SMS+2H2JEyUToAcSblSqVS0
 l9pYyvH8nH/lsDSFld+xN4t5rDbfbI2Bkr3eoH6DWksEc2G7KbcOdX7ml
 eT+eEeijrEdhvNWRLiKpFTyXrajXLno4t+8nk93OkQGg1Izydz9MCHTm4
 ONZ5dNA3CHghOLBw19Twa5Xk5JZwkxVKilcXSCevBhfcz5HZjtqRESxpT
 euBaaYgZpCDk4JP++TVO5nZ2k2/3xQ9f6r8qd+EMg2ur0+Hzxd+9d63XI
 90E2LQ7WMQH+TNJLstl6S4/luPmRKRYN0GbjxgMpprmujzARxI3gRYg2x Q==;
X-CSE-ConnectionGUID: eIZNL/ZWRkOcytb6Swq9YQ==
X-CSE-MsgGUID: 316jS8QASS67pU1nI+giog==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41512863"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41512863"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:01:46 -0800
X-CSE-ConnectionGUID: tXiFCJlwQIG6dcWueHaeuA==
X-CSE-MsgGUID: zOOxERKfSHOZAZbpfQpVow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="90093339"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:01:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/10] drm/i915/crt: Split long line
In-Reply-To: <20241107161123.16269-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-3-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:01:41 +0200
Message-ID: <87ses1ev62.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Split an overly long line in the CRT code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 1be55bdb48b9..134a4e6a4ac0 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -1047,7 +1047,9 @@ void intel_crt_init(struct intel_display *display)
>  		 * it and see what happens.
>  		 */
>  		intel_de_write(display, adpa_reg,
> -			       adpa | ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_=
CNTL_DISABLE);
> +			       adpa | ADPA_DAC_ENABLE |
> +			       ADPA_HSYNC_CNTL_DISABLE |
> +			       ADPA_VSYNC_CNTL_DISABLE);
>  		if ((intel_de_read(display, adpa_reg) & ADPA_DAC_ENABLE) =3D=3D 0)
>  			return;
>  		intel_de_write(display, adpa_reg, adpa);

--=20
Jani Nikula, Intel
