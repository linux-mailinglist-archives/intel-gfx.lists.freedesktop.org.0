Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62DDA6C58B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 22:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4253910E0B5;
	Fri, 21 Mar 2025 21:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZMy33LZ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384D610E0B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 21:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742594281; x=1774130281;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Xc7POnnSXI7Jr8CG3J9mWCQG8Mjkdmwsgj1mwxMxOt0=;
 b=ZMy33LZ/fKNTPuvEljQQ9oyEhl1d2EnViNnr9Ue+w2+yUlJtg0en0Zkn
 dIsVGBW+NOlMxNjHCtWN1wprChwl+RWcnocB2/V6tZ+9APeXHEgu1wuac
 2PLyESJHlXGUlSQh0fDn7enVE/FmEK0AbN5zmeQgq98K2lh6Jq3888Ef5
 V0Xzo0XEtIM1Qw6YMyy/rBEqMNk2rhLHCS9NwlKCEFuvnR1w7N0KCapuT
 PggQzCMIZpdxoKIX7nj7b/PB1vLFFKvxm9tZgv/ez7j0arYbJN91UWkla
 zJBOr+E2thNDwmYLWQIEfLo76oJ1qr5D/F1HF3N35ll6b3NKCZG6xGTJU w==;
X-CSE-ConnectionGUID: MNa7s/RyQk2+BTtl9GGDpQ==
X-CSE-MsgGUID: iJPlc3sVRxq29Munf5RJPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43600261"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43600261"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 14:58:01 -0700
X-CSE-ConnectionGUID: 7TTD6lH1SgyPtnz9KncNpw==
X-CSE-MsgGUID: U30tksazQJqfKLmH8qshOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128735621"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 14:57:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 23:57:58 +0200
Date: Fri, 21 Mar 2025 23:57:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/16] sna: stop using obsolete type aliases
Message-ID: <Z93g5lPz-hOQF3RR@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-3-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-3-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:57:55PM +0100, Enrico Weigelt, metux IT consult wrote:
> The Xserver has been moved to using pixman for all matrix operations, back in
> 2008, but left some #define's so drivers still compile. Since 1.5 decades have
> passed now, it's time to fix remaining drivers still using the old name, so
> we can drop these #define's from the Xserver includes.

Can you list the relevant xserver commit(s) here?

> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/sna/sna_display.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
> index d4fa7b0b..d33a88af 100644
> --- a/src/sna/sna_display.c
> +++ b/src/sna/sna_display.c
> @@ -208,7 +208,7 @@ struct sna_crtc {
>  	bool hwcursor;
>  	bool flip_pending;
> 
> -	struct pict_f_transform cursor_to_fb, fb_to_cursor;
> +	struct pixman_f_transform cursor_to_fb, fb_to_cursor;
> 
>  	RegionRec crtc_damage;
>  	uint16_t shadow_bo_width, shadow_bo_height;
> @@ -2383,7 +2383,7 @@ static bool use_shadow(struct sna *sna, xf86CrtcPtr crtc)
>  {
>  	RRTransformPtr transform;
>  	PictTransform crtc_to_fb;
> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>  	unsigned pitch_limit;
>  	BoxRec b;
> 
> @@ -2853,7 +2853,7 @@ affine_is_pixel_exact(const struct pixman_f_transform *t)
>  static void sna_crtc_randr(xf86CrtcPtr crtc)
>  {
>  	struct sna_crtc *sna_crtc = to_sna_crtc(crtc);
> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>  	PictTransform crtc_to_fb;
>  	PictFilterPtr filter;
>  	xFixed *params;
> @@ -6674,7 +6674,7 @@ sna_set_cursor_position(ScrnInfoPtr scrn, int x, int y)
>  		if (crtc->transform_in_use) {
>  			int xhot = sna->cursor.ref->bits->xhot;
>  			int yhot = sna->cursor.ref->bits->yhot;
> -			struct pict_f_vector v, hot;
> +			struct pixman_f_vector v, hot;
> 
>  			v.v[0] = x + xhot + .5;
>  			v.v[1] = y + yhot + .5;
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
