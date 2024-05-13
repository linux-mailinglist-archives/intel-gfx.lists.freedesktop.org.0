Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1848C3ED8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABB510E620;
	Mon, 13 May 2024 10:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/HZ53qQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AFC010E630
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715595961; x=1747131961;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NnuhZK+PBsYl9eg7/0EmgPkcluWEKZBL0yhn8lHWWnI=;
 b=I/HZ53qQQJe6xrOvceYflkuokodOWFV1Zt1L2fImzS+ZNx0ALruHa8+A
 87S8l5Zbfy0nl8cv/Zuv0nwZca7SHgLJVVT39Jzb/Y/4uKontjHqWOjUj
 JTVTJf7H8UgkJYFQPONWChIOtMt8A4EpK+7eBvo3E+Wr0V4ZVVPZEUfDb
 dYMgGUeXLQh2QtRXQLm3LeczkoiX9+1/rpIJNbUmmQJ9lmHwDZWJr4DU1
 HpwcmggWFnZtmB7yRkT/HgWV9z99x3V7TKl+taDH3v4L6+PYGd/f4MUvp
 JNBQUI5ncuveZUQ8J/CFaGq07OPtTRlZL9zLinZvsY/RBKb88M8BncDaV A==;
X-CSE-ConnectionGUID: G/Gby3lVTVWdLcFPhxT7Gw==
X-CSE-MsgGUID: /R8XoLCJQIGGlA9Nkfzjrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11375556"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11375556"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:26:01 -0700
X-CSE-ConnectionGUID: Gu2gCvIbTGqVjih51PYOzw==
X-CSE-MsgGUID: D+brz2aiR4OlvEEX0p2NRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34852274"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:25:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 07/16] drm/i915/gvt: Use the full PLANE_KEY*() defines
In-Reply-To: <20240510152329.24098-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-8-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:25:55 +0300
Message-ID: <87o79af1os.fsf@intel.com>
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
> Stop hand rolling PLANE_KEY*() register defines and just
> use the real thing.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index ad3bf60855bc..b53c98cd6d7f 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -1075,15 +1075,15 @@ static int iterate_skl_plus_mmio(struct intel_gvt=
_mmio_table_iter *iter)
>  	MMIO_D(_MMIO(0x70034));
>  	MMIO_D(_MMIO(0x71034));
>  	MMIO_D(_MMIO(0x72034));
> -	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_A)));
> -	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_B)));
> -	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_C)));
> -	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_A)));
> -	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_B)));
> -	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_C)));
> -	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_A)));
> -	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_B)));
> -	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_C)));
> +	MMIO_D(PLANE_KEYVAL(PIPE_A, 0));
> +	MMIO_D(PLANE_KEYVAL(PIPE_B, 0));
> +	MMIO_D(PLANE_KEYVAL(PIPE_C, 0));
> +	MMIO_D(PLANE_KEYMAX(PIPE_A, 0));
> +	MMIO_D(PLANE_KEYMAX(PIPE_B, 0));
> +	MMIO_D(PLANE_KEYMAX(PIPE_C, 0));
> +	MMIO_D(PLANE_KEYMSK(PIPE_A, 0));
> +	MMIO_D(PLANE_KEYMSK(PIPE_B, 0));
> +	MMIO_D(PLANE_KEYMSK(PIPE_C, 0));
>  	MMIO_D(_MMIO(0x44500));
>  #define CSFE_CHICKEN1_REG(base) _MMIO((base) + 0xD4)
>  	MMIO_RING_D(CSFE_CHICKEN1_REG);

--=20
Jani Nikula, Intel
