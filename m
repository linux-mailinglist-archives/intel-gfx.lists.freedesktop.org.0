Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDF3CD66A6
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1C710E357;
	Mon, 22 Dec 2025 14:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K6qooghU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC3610E354;
 Mon, 22 Dec 2025 14:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766414864; x=1797950864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c4mNaAwHFPdCoPvLCok4HRULqU9kKUWCLvD06l5AGdk=;
 b=K6qooghUB88l4zQuzj1ANSaV4rY4GGcpNb2J9S+nF+3MQXCW8YF03x4L
 7l0STTL2pr/wBrNxcdvG2wSkvnMDcV7woB0ATMnqaS4KkMH6iPlCovDPE
 V3pLDw0nrpkzix3mYRyY4Fi+EuYlQYA1uBtLBOLieX9F2R2/tRVgnBykj
 5IRYwJvxBm9Hh7EfUR3RfddkSJbr/8kcvyGhUAY7J/ha+cLTIJ7Qf+1N2
 wOuW3IGU7JVQN4Sp2NcKYLh09nFRbhjN69HeQPByB6TzrW+CjD1/QW0T6
 xNG3DuNLGlp6szlaS6DwdcQViIwM6uzEKI+nVxey0aRWj4M+2XuswhUza g==;
X-CSE-ConnectionGUID: qihj0si+T7e88YQ1SgZiUg==
X-CSE-MsgGUID: tSKWdbHNTZiru5VErHPKBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68311568"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68311568"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 06:47:43 -0800
X-CSE-ConnectionGUID: GVNTY/NeQaCPVjRoOkOtIA==
X-CSE-MsgGUID: IpkZFQ6ASxCKEHy6n1F4pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203666044"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 06:47:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2] drm/i915/cx0: Use the consolidated HDMI tables
In-Reply-To: <20251219034846.1434478-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251216082732.1384018-1-suraj.kandpal@intel.com>
 <20251219034846.1434478-1-suraj.kandpal@intel.com>
Date: Mon, 22 Dec 2025 16:47:37 +0200
Message-ID: <5ae2507d5aa2896cf2a23e857c00998044388426@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 19 Dec 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use the consolidated HDMI tables before we try to compute them via
> algorithm. The reason is that these are the ideal values and even
> though the values calculated via the HDMI algorithm are correct but
> not always ideal. This is done for C20 and already exists for C10.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
> v1 -> v2: 
> - Update commit message (Ankit)
> - Change TODO comment line (Ankit)
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f6d69627154e..f956a117f1f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2671,15 +2671,18 @@ static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
>  	hw_state->cx0pll.use_c10 = false;
>  	hw_state->cx0pll.lane_count = crtc_state->lane_count;
>  
> -	/* try computed C20 HDMI tables before using consolidated tables */
> -	if (!is_dp)
> -		/* TODO: Update SSC state for HDMI as well */
> -		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
> -
> +	/*
> +	 * Try the ideal C20 HDMI tables before trying to compute them since the values
> +	 * calculated even though would be correct but not ideal
> +	 */

Parse error. Please do something about the grammar.

BR,
Jani.

>  	if (err)
>  		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
>  							 &hw_state->cx0pll);
>  
> +	/* TODO: Update SSC state for HDMI as well */
> +	if (!is_dp && err)
> +		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
> +
>  	if (err)
>  		return err;

-- 
Jani Nikula, Intel
