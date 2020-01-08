Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF76133FE3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 12:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AD06E1B6;
	Wed,  8 Jan 2020 11:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578396E1B6;
 Wed,  8 Jan 2020 11:06:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 03:06:51 -0800
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="215920519"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 03:06:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Manasi Navare <manasi.d.navare@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200106070152.GA13299@embeddedor>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200106070152.GA13299@embeddedor>
Date: Wed, 08 Jan 2020 13:06:45 +0200
Message-ID: <87pnfuqkai.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915/display: Fix inconsistent
 IS_ERR and PTR_ERR
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Jan 2020, "Gustavo A. R. Silva" <gustavo@embeddedor.com> wrote:
> Fix inconsistent IS_ERR and PTR_ERR in intel_modeset_all_tiles().
>
> The proper pointer to be passed as argument is crtc_state.
>
> This bug was detected with the help of Coccinelle.

Thanks, already fixed by Dan in commit 953cac3ec55f ("drm/i915: fix an
error code in intel_modeset_all_tiles()").

BR,
Jani.

>
> Fixes: a603f5bd1691 ("drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset")
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index da5266e76738..a96bee699a5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14424,7 +14424,7 @@ intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_grp_id)
>  		crtc_state = drm_atomic_get_crtc_state(&state->base,
>  						       conn_state->crtc);
>  		if (IS_ERR(crtc_state)) {
> -			ret = PTR_ERR(conn_state);
> +			ret = PTR_ERR(crtc_state);
>  			break;
>  		}
>  		crtc_state->mode_changed = true;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
