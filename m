Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4071549CC2E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:21:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BADD10E583;
	Wed, 26 Jan 2022 14:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A8D10E583
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643206868; x=1674742868;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=A5kwY6DbK3xN5Ywm08mVSd+zRj0NZFHwpqZ5Lrt2WOk=;
 b=A2PNqIXmuc6avAK8rtfs9uzcSjMGY/nlDXqE/uwHo4AlN/cqH+sLipP7
 FFjo5I++7t2qNFTwptTqRart9SAgFDa97an0LZUn1vmxR02nprOhzaK+B
 keEOB4uWu+H0LK0+r9hGxdJkmiUQbl5k0Je4t2QCwOjgmrqnpE3eo1UbK
 TMJDfHQoFlRmE/AFK/33nq9yfIqUFYNaGsnc4eqfH0JQZc1PxNwpx2v0n
 hRKUPBFFP5+fOHp3Mbet8LNyTTP7ZmjyRy68UUvVyvPNtro6WN2HF6ls4
 NT/ktxrmFv0JpaiTFIthmefbwgc9F9gUMIDX6DQNtQquEbHxWYJNAWYFM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246503468"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246503468"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:21:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="520813824"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:21:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112193813.8224-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-4-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:21:02 +0200
Message-ID: <87o83yzigh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Clean up SKL_BOTTOM_COLOR
 defines
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

On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() for SKL_BOTTOM_COLOR.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index e300a202ce2d..8b227dabb10c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6341,8 +6341,8 @@ enum {
>=20=20
>  /* Skylake+ pipe bottom (background) color */
>  #define _SKL_BOTTOM_COLOR_A		0x70034
> -#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE	(1 << 31)
> -#define   SKL_BOTTOM_COLOR_CSC_ENABLE	(1 << 30)
> +#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE		REG_BIT(31)
> +#define   SKL_BOTTOM_COLOR_CSC_ENABLE		REG_BIT(30)
>  #define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE2(pipe, _SKL_BOTTOM_COLOR_A)
>=20=20
>  #define _ICL_PIPE_A_STATUS			0x70058

--=20
Jani Nikula, Intel Open Source Graphics Center
