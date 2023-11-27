Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582957FA6C5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 17:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB8410E302;
	Mon, 27 Nov 2023 16:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0148D10E302
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 16:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701103646; x=1732639646;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DNFa+o90gOYjLrnbuJyRvUB6irLmt7Kw+w822ZFcJFU=;
 b=eH3G+aefAT7enJOyxuf1yBljOWmAiQwD/J5yVSEFl8dFqdR/JpjiIM19
 NtOWwWIPlZ02cMeiA847qA4b4UmVU1V61BmUiPbQsR7Bx71mye2aY1sl9
 lfCkpK7KkNZraPh9KiiwlLrpmNxwhkhInvvF/PQRl+e/yu4/ByBFK/22/
 GEZwmtBEbJSZz8aBNsAdoyNOUYM8kwFvPWPyFJA56PPljoKgVNttrjHNd
 aqclKTAUZaQTKgRXkBIfstN3QxGsnFcdAvpZm5kGwY860SLlTc9FIyGEK
 J2b4BgXanbG0C7sMFzUR+ip4Csdwfn9q+rXeYn2QJ98CYoY4oXGwbeRhn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="392490705"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="392490705"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 08:47:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="797296518"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="797296518"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.74])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 08:47:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127154702.979401-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127154702.979401-1-mika.kahola@intel.com>
Date: Mon, 27 Nov 2023 18:47:22 +0200
Message-ID: <87o7ff87ol.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
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

On Mon, 27 Nov 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> With TBT-ALT mode we are not programming C20 chip PLL's and
> hence we don't need to check state verification. We don't
> need to program DP link signal levels i.e.pre-emphasis and
> voltage swing either.
>
> This patch fixes dmesg errors like this one
>
> "[drm] ERROR PHY F Write 0c06 failed after 3 retries."
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a8fa76580802..3a30cffd450c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -418,6 +418,10 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
>  	intel_wakeref_t wakeref;
>  	int n_entries, ln;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		return;
>  
>  	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
> @@ -3136,6 +3140,9 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
>  	phy = intel_port_to_phy(i915, encoder->port);
>  
> +	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
> +		return;
> +

Shouldn't we read and ensure it's disabled?

>  	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
>  
>  	if (intel_is_c10phy(i915, phy))

-- 
Jani Nikula, Intel
