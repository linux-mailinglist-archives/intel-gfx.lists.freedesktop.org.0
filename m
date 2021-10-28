Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA0443E24D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 15:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861A46E971;
	Thu, 28 Oct 2021 13:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D8B6E971
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 13:32:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217580674"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="217580674"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 06:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="447692516"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 28 Oct 2021 06:32:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Oct 2021 16:32:44 +0300
Date: Thu, 28 Oct 2021 16:32:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Mika Kahola <mika.kahola@intel.com>,
 Jouni Hogander <jouni.hogander@intel.com>
Message-ID: <YXqmfPPnSr3j/mDe@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211027184855.108731-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
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

On Wed, Oct 27, 2021 at 11:48:55AM -0700, José Roberto de Souza wrote:
> Async flips are not supported by selective fetch and we had a check
> for that but that check was only executed when doing modesets.
> So moving this check to the page flip path, so it can be properly
> handled.
> 
> This fix a failure in kms_async_flips@test-cursor.
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Jouni Hogander <jouni.hogander@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8d08e3cf08c1f..ce6850ed72c60 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -729,12 +729,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (crtc_state->uapi.async_flip) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR2 sel fetch not enabled, async flip enabled\n");
> -		return false;
> -	}
> -
>  	/* Wa_14010254185 Wa_14010103792 */
>  	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1592,6 +1586,8 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
>  {
>  	if (crtc_state->scaler_state.scaler_id >= 0)
>  		return false;
> +	if (crtc_state->uapi.async_flip)
> +		return false;

This looks dodgy. Pretty sure we can't turn off this thing during
an async flip. So I think the correct short term fix is to not do
async flips with psr2 enabled. The longer term fix would involve
using the same approach Stan is preparing for the async flip
watermark tweaking, which is to convert the first async flip into
a sync flip.

-- 
Ville Syrjälä
Intel
