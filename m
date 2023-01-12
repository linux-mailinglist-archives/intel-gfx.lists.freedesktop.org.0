Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3E4667E22
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 19:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCED210E325;
	Thu, 12 Jan 2023 18:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB5A10E325;
 Thu, 12 Jan 2023 18:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673548122; x=1705084122;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4j0IvOvhEOiGfWfzcHNLylre0WIECq8Ql/L2bq6QkgY=;
 b=Bj+RXgQ5uRfoZtYv/CwlomnvpE+wSCqbIngxg+5J6Ts2Xfi2SbCoQIgL
 Ol4EByY5cBN60Y1IQ+3ra23r0JfYdYOMn2D8bCi0iXKAgPL5EY3Yn1n86
 FAgzHQkrREWBf6V8sdXsRto/IycEj3H8bxT6ilf0WnVP3D0sfz/JDuxV4
 p2EPddZHmJSJ37mUIOYq/OTDe7kh4k5VhhutPY+OwVe4i6PWhH2+3FP+c
 I4y8VULVYMTrX8bLHIk1fd12wtXpRUtzLRJTzSPGvI6te+9O4J6HpDVlA
 iyq12kzreVdrrVoZNw12ecJRITOk/fB6C6l84Hss7NKSOGzso16HxTi7e A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="311638061"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="311638061"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 10:28:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="688436155"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="688436155"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 12 Jan 2023 10:28:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jan 2023 20:28:35 +0200
Date: Thu, 12 Jan 2023 20:28:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Drew Davenport <ddavenport@chromium.org>
Message-ID: <Y8BRUwiznxA/tns7@intel.com>
References: <20221226225246.1.I15dff7bb5a0e485c862eae61a69096caf12ef29f@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221226225246.1.I15dff7bb5a0e485c862eae61a69096caf12ef29f@changeid>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Check source height is > 0
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
Cc: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 26, 2022 at 10:53:24PM -0700, Drew Davenport wrote:
> The error message suggests that the height of the src rect must be at
> least 1. Reject source with height of 0.
> 
> Signed-off-by: Drew Davenport <ddavenport@chromium.org>
> 
> ---
> I was investigating some divide-by-zero crash reports on ChromeOS which
> pointed to the intel_adjusted_rate function. Further prodding showed
> that I could reproduce this in a simple test program if I made src_h
> some value less than 1 but greater than 0.
> 
> This seemed to be a sensible place to check that the source height is at
> least 1. I tried to repro this issue on an amd device I had on hand, and
> the configuration was rejected.
> 
> Would it make sense to add a check that source dimensions are at least 1
> somewhere in core, like in drm_atomic_plane_check? Or is that a valid
> use case on some devices, and thus any such check should be done on a
> per-driver basis?
> 
> Thanks.
> 
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 4b79c2d2d6177..9b172a1e90deb 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1627,7 +1627,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
>  	u32 offset;
>  	int ret;
>  
> -	if (w > max_width || w < min_width || h > max_height) {
> +	if (w > max_width || w < min_width || h > max_height || h < 1) {

I liked this one best so pushed to drm-intel-next with cc:stable. Thanks.

In the future we might want to move some of these checks to an earlier
spot to make sure we don't hit any other weird issues in some other
code, but for the moment I think this will do.

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
>  			    w, h, min_width, max_width, max_height);
> -- 
> 2.39.0.314.g84b9a713c41-goog

-- 
Ville Syrjälä
Intel
