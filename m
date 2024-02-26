Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7387E868030
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69BB10E60F;
	Mon, 26 Feb 2024 18:57:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtDChAp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8844010E60F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973847; x=1740509847;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JrzZR7pyWwsDLtF7F9rWAgXmU98SLWZDCalf4crzkV8=;
 b=RtDChAp/35EIxTvaYgJjRiHXiUZGUrSahI6WfX3mwLfqR68un+vFyYpG
 KNzkWAyJ0DkNLMpxFXawB/YZuor6x45phmiGAad6MFqukc7PC2koSf4hK
 GVZ3P21OkLmnYqAscGy2reAs7zIXckPudi+bJQ66Dsi6aMtvd7rgrKnrt
 okvU/DY3UPMfZJ3p+oUPjTQx6Beoc3KJ0Iw1161HlbsdP4VZrhkIRRU2X
 nlfPPu/UXlPup7Qk6oz/wXHpN7lxGsSN7Ib9nslAz2F/xN7wE5gavSl5W
 eFSFQJU1oEwPrGkn/p/I3SopqavO5DchwFaI9RMajg6jRvT+zPveuLOdg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3394067"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3394067"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:57:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770472"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770472"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 10:57:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 20:57:24 +0200
Date: Mon, 26 Feb 2024 20:57:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/6] sna: stop using obsolete type aliases
Message-ID: <ZdzfFC_WKT91I23G@intel.com>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221185550.11943-1-info@metux.net>
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

On Wed, Feb 21, 2024 at 07:55:45PM +0100, Enrico Weigelt, metux IT consult wrote:
> The Xserver has been moved to using pixman for all matrix operations, back in
> 2008, but left some #define's so drivers still compile.

Reference to the actual commit would help.

> Since 1.5 decades have
> passed now, it's time to fix remaining drivers still using the old name, so
> we can drop these #define's from the Xserver includes.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/sna/sna_display.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
> index 15df51f6..3ff3d2fe 100644
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
> @@ -2376,7 +2376,7 @@ static bool use_shadow(struct sna *sna, xf86CrtcPtr crtc)
>  {
>  	RRTransformPtr transform;
>  	PictTransform crtc_to_fb;
> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>  	unsigned pitch_limit;
>  	BoxRec b;
> 
> @@ -2846,7 +2846,7 @@ affine_is_pixel_exact(const struct pixman_f_transform *t)
>  static void sna_crtc_randr(xf86CrtcPtr crtc)
>  {
>  	struct sna_crtc *sna_crtc = to_sna_crtc(crtc);
> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>  	PictTransform crtc_to_fb;
>  	PictFilterPtr filter;
>  	xFixed *params;
> @@ -6666,7 +6666,7 @@ sna_set_cursor_position(ScrnInfoPtr scrn, int x, int y)
>  		if (crtc->transform_in_use) {
>  			int xhot = sna->cursor.ref->bits->xhot;
>  			int yhot = sna->cursor.ref->bits->yhot;
> -			struct pict_f_vector v, hot;
> +			struct pixman_f_vector v, hot;
> 
>  			v.v[0] = x + xhot + .5;
>  			v.v[1] = y + yhot + .5;
> --
> 2.39.2

-- 
Ville Syrjälä
Intel
