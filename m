Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302CB1D319
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 09:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2291210E7F2;
	Thu,  7 Aug 2025 07:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REhxVcUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FCB10E7F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 07:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754550830; x=1786086830;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=P7wZTMtNpngTJgpRGvEP56iTNXVWEznc5zviofsBrro=;
 b=REhxVcUCzxSw38Q5lkqJmREOjboC48kMmUV7JagVgZcwP4IyZJNvDcOr
 OmQM4LJ5glcNTw/VGYXyYUTAQEvdelkmigYb1kG5roQVaPz6XXo9Bnm0t
 f6PNbNKgud7tNzncQ4PhAnfwnP0xM78qJVAD4TibaieQd7cUK5MqYyYaq
 fUPh/7+iqpOlJa+TfcWIwSSUS3/R/NNIdTTgnGuxzBhzzyQ3MOUufmyCv
 mJkuoZ1ZwvW/E9fT8Bm5BeT+iV0LlYcABjSdJ5PwmHAYDANHVEes3mWAX
 uIV83sFPzevCiqrQkjoOQeng7134HjVY3IXML2y/Tjfd1WPsEDuzRvTHq w==;
X-CSE-ConnectionGUID: bBlTyLm+TCSyNBNUHYHp3Q==
X-CSE-MsgGUID: FiODq9A4TqWj8giv4OPA/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56772356"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56772356"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:13:49 -0700
X-CSE-ConnectionGUID: H9VP2L+XTxq7bFDA8XyPaA==
X-CSE-MsgGUID: SDhdpYTAShmuGgL05rtXYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164512763"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:13:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2] drm/i915/dsi: Fix overflow issue in pclk parsing
In-Reply-To: <20250807042635.2491537-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250807042635.2491537-1-jouni.hogander@intel.com>
Date: Thu, 07 Aug 2025 10:13:42 +0300
Message-ID: <f6147c4504cd1daa4e287ca23f566a6e59df23f3@intel.com>
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

On Thu, 07 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Parsed divider p will overflow and is considered being valid in case
> pll_ctl =3D=3D 0.
>
> Fix this by checking divider p before decreasing it. Also small improveme=
nt
> is made by using fls() instead of custom loop.
>
> v2: use fls() and check parsed divider
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks, I think fls() is cleaner.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm=
/i915/display/vlv_dsi_pll.c
> index b52463fdec47..83afe1315e96 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -142,11 +142,9 @@ static int vlv_dsi_pclk(struct intel_encoder *encode=
r,
>  	pll_div &=3D DSI_PLL_M1_DIV_MASK;
>  	pll_div =3D pll_div >> DSI_PLL_M1_DIV_SHIFT;
>=20=20
> -	while (pll_ctl) {
> -		pll_ctl =3D pll_ctl >> 1;
> -		p++;
> -	}
> -	p--;
> +	p =3D fls(pll_ctl);
> +	if (p)
> +		p--;
>=20=20
>  	if (!p) {
>  		drm_err(display->drm, "wrong P1 divisor\n");

--=20
Jani Nikula, Intel
