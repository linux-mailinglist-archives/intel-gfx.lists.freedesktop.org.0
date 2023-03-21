Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E496C3606
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 16:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795C010E7C5;
	Tue, 21 Mar 2023 15:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D8510E7C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 15:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679413407; x=1710949407;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1EIFWUmOwlHx7NVqmXkVzqcqDEK1bF5jbZHD3xaZK9M=;
 b=BwcNFzuJEUG9JYmSbrc9n5ykUkRTA6ozsgfZkMv1qbXn3Gn7I9QXXC6Q
 rKK/bQ7acc7d2+oEXQkJrkiocBprG+q+vTc4cm0H4HAj7MjfB6z+R1WGK
 S5VBjezLn9xbDcTuEoN8pApHmqgysNQ2xgYGAReqnj2OMLQrcog2zHqBA
 CTakqLrlFpx0PVoXbuzJSaS9N8SjZNcMHeINKscFE22Bssv7bpjdheC1j
 6eXa6RdgfsooxiKe/gyH4x5utUiQqcpRokzQJSl5qwL3p2rDI72/qb/1d
 JtPVvJYjmokIxboSZkjHOx40rn2RBs0nnJg4Xg0q8qx4VF87E56Kn0WEX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="341334796"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="341334796"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 08:43:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714025517"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="714025517"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2023 08:43:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Mar 2023 17:43:23 +0200
Date: Tue, 21 Mar 2023 17:43:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZBnQmxYHDiii0FGn@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
 <20230320165945.3564891-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230320165945.3564891-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/psr: Check that vblank is
 long enough for psr2
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

On Mon, Mar 20, 2023 at 06:59:44PM +0200, Jouni Högander wrote:
> Ensure vblank >= psr2 vblank
> where
> Psr2 vblank = PSR2_CTL Block Count Number maximum line count.
> 
> Bspec: 71580, 49274
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1050d777a108..1b40d9c73c18 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -958,6 +958,14 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
> +	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
> +	    crtc_state->hw.adjusted_mode.crtc_vblank_start < 12) {

Why 12? Shouldn't it be based on the wake_lines/BLOCK_COUNT_NUM stuff?


If so I would suggest we try someting like this:

psr2_block_count_lines()
{
	return ...wake_lines... ? 12 : 8;
}

psr2_block_count()
{
	return psr2_block_count_lines() / 4;
}

if (vblank_lengh < psr2_block_count_lines())
	fail;

if (psr_block_count() > 2)
	val |= BLOCK_COUNT_NUM_3;
else
	val |= BLOCK_COUNT_NUM_2;

> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 not enabled, too short vblank time\n");
> +		return false;
> +	}
> +
>  	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
>  		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
>  		    !HAS_PSR_HW_TRACKING(dev_priv)) {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
