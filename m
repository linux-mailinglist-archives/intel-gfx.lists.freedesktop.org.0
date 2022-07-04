Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1650565BFC
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76BA710E489;
	Mon,  4 Jul 2022 16:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43EF510E14A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 14:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656943878; x=1688479878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gpb4Y4SKbtVQt5OBS/TuXF2inFf7YWSavIfwPTTyx7Y=;
 b=dOKQbJwFTzBZg7geW5povT0Qk/aQ+QY2wEc7iLSrMsV4dNk0KfMalA7p
 4cCYHiLiBaVDoYIKUJ2VYvMQ3+PuZMQ3pphzEKujkw7ew9EAfbzHYKafL
 hrC1F7BwCP+EqioB6THhC5bNb3CAP/gEwyMYlJOWw6derkWm+yhpmC9bF
 0equ8wcUp8ErNr11ORUieiJV0zPxjKl466+3TPPKQcbyin9pl4vv8Hn0x
 j/bFZjyV1fx5ngwpDjehODsN+f6RZrVlHZNo/qu0xNKXweU6iGdB4F82d
 9elsfV4NljlblL90i6kTsMB7uGTBzA3geyKP5xbYVx6t6lPnZwwObLkwk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="281896853"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="281896853"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 07:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="619307297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga008.jf.intel.com with SMTP; 04 Jul 2022 07:11:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Jul 2022 17:11:13 +0300
Date: Mon, 4 Jul 2022 17:11:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <YsL1Afbj7Mxx/0aF@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220704072352.1331682-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220704072352.1331682-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: tprevite@gmail.com, jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 paulo.r.zanoni@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 04, 2022 at 12:53:52PM +0530, Arun R Murthy wrote:
> On linktraining error/timeout before retry need to wait for 400usec as
> per the DP CTS spec1.2

s/CTS//

> Under section 2.7.2 AUX Transaction Response/Reply Time-outs
> AUX Replier (the uPacket RX) must start sending the reply back to the AUX
> requester (the uPacket TX) within the response period of 300μs. The timer
> for Response Time-out starts ticking after the uPacket RX has finished
> receiving the AUX STOP condition which ends the AUX Request transaction.
> The timer is reset either when the Response Time-out period has elapsed or
> when the uPacket RX has started to send the AUX Sync pattern (which follows
> 10 to 16 active pre-charge pulses) for the Reply transaction. If the
> uPacket TX does not receive a reply from the uPacket RX it must wait for a
> Reply Time-out period of 400us before initiating the next AUX Request
> transaction. The timer for the Reply Time-out starts ticking after the
> uPacket TX has finished sending the AUX STOP condition.
> 
> The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in Displayport
> AUX transactions for compliance testing")
> removes this delay mentioning the hardware already meets this requirement,
> but as per the spec the delay mentioned in the spec specifies how long to
> wait for the receiver response before timeout. So the delay here to wait
> for timeout and not a delay after timeout. The DP spec specifies a delay
> after timeout and hence adding this delay.

Not sure what you're saying here. The spec states the reply
timeout should start counting once the TX has sent the
AUX STOP, and gets reset when the reply AUX SYNC is detected.

If that doesn't match what the hardware is doing then we really
need to get bspec updated to say what is actually happening.

Oh, and the reply timeout has been increased to 3.2ms in later
revisions of the spec to deal with LTTPRs. We should adjust 
the code to match.

> 
> v2: fixed checkpatch warning and error
> v3: used proper indentation
> v4: added DP CEA 1.2 spec details in patch commit msg
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2bc119374555..722c9f210690 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -286,13 +286,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			/*
>  			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
>  			 *   400us delay required for errors and timeouts
> -			 *   Timeout errors from the HW already meet this
> -			 *   requirement so skip to next iteration
>  			 */
> -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> -				continue;
> -
> -			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> +			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
> +				      DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
>  				usleep_range(400, 500);
>  				continue;
>  			}
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
