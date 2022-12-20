Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC39651F92
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 12:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98D510E3AC;
	Tue, 20 Dec 2022 11:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2788010E3AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 11:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671535198; x=1703071198;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0Trnel6R0iO7C1vRrXMR7Jw86orWlosydOgp9blOtRk=;
 b=liueJT06yRydJc2/RsMvvbXOJ1Z1wmvNOPnJBV94BelroEkFeWY39nhk
 Tz4h01/vRKZmeQuXAFZZflkX8FxihS8hJSxxKz+K00MY+pg0q/4CBIlO+
 n2JhBKy7qoBsN1+HCLS4iZaORsjOPsmT+ZXY0H1JiAVOR2wxlZaRAA8T+
 8qeZT5ymX70NriHjxGOwKcr8qwAmz2N+t7NZAHaO1WMMtzps90J+KMYsQ
 LCorgBKzEU1fc2DWMJaKemxOzzjrptPWPTKFMDLF/sVQdWVqdceQj0vYL
 24lYi6GmxhgEe4zUJRDPibWKHtStO42RPwgH8nw70qvj4s424NbmrXbUX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="381812197"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="381812197"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="793264436"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="793264436"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 20 Dec 2022 03:19:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 13:19:54 +0200
Date: Tue, 20 Dec 2022 13:19:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y6GaWk/JrjodKyJj@intel.com>
References: <20221219072919.27495-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221219072919.27495-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] Copy highest enabled wm level to disabled
 wm levels for gen >= 12
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 19, 2022 at 09:29:19AM +0200, Stanislav Lisovskiy wrote:
> There was a specific SW workaround requested, which should prevent
> some watermark issues happening, which requires copying highest
> enabled wm level to those disabled wm levels(bit 31 is of course
> still needs to be cleared).
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index ae4e9e680c2e3..b12e11cd6e579 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1591,6 +1591,13 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  				wm->wm[level].lines = wm->wm[0].lines;
>  				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
>  			}
> +
> +			/* Wa_14017887344 */
> +			if (DISPLAY_VER(i915) >= 12 && level > 0) {
> +				wm->wm[level].blocks = wm->wm[level - 1].blocks;
> +				wm->wm[level].lines = wm->wm[level - 1].lines;
> +				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
> +			}

Hmm. Reading the parent hsd this smells at least partially as
some kind of race in the Windows driver between async flip,
wm1+ disable, and the PSR wm level override behaviour.

We never do async flip + wm1+ disable from the same commit
which itself might be sufficient to avoid the issue. I
didn't think that even worked, but maybe it sort of does
if Windows attempts it. However since we don't do that we
might never hit this. Not sure.

The PSR wm level override stuff we don't handle at all
currently. I'm thinking that is something we should
remedy first.

Also while thinking about how to unify this and the
already existing wm1 w/a I realized that we don't 
check if the wm level is actually enabled or not.
So it's interfering with commit a301cb0fca2d ("drm/i915:
Keep plane watermarks enabled more aggressively").
My gut reaction is that we want a wm[level].enable
check there, but I've not fully thought through the
implications...

>  		}
>  	}
>  
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
