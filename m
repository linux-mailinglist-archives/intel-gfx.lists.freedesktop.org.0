Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961CE4E6231
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 12:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BEEA10E884;
	Thu, 24 Mar 2022 11:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952F010E884
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 11:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648120332; x=1679656332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PII8rhPMXy6oE8vUTdripuYiyMZCexiFuCiVdkAz/uw=;
 b=PIEbybdnx1Bq696Cin3WVP1yf+JYTqA21/8M2Sv0XHg1qW7UBcCaH8lU
 5FuqkT9XncnFIHpNOlzaRt+aN9d3yFxGGi2bxMbqD2fIHB8szRXY4nL4M
 6bSgi9YhJ6K1Q03lPP837XcXkFtx59dOGfMLN3lprBeAgvTlZ5wSPWIye
 btTNt4lpkE1jPaV1ONvMMMi+n60VaD0q3CwlBluXUgAtaea6c0j+3106x
 2SUoZP955krGpInE6QEUxxQ2c0z+wvHHvNrBxEK5TkBD+AgzZIlFZI85b
 0lhq/KRmwaCzXLm6RAMTtP2gshuqzbqYWSOYIit+818wIWe6CRfW/9oKZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283207770"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283207770"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:12:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="601654810"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 24 Mar 2022 04:12:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 13:12:08 +0200
Date: Thu, 24 Mar 2022 13:12:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YjxSCCNuatVqunDc@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
 <20220322214616.160640-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220322214616.160640-4-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Remove MBUS
 joining invalid TODOs
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

On Tue, Mar 22, 2022 at 02:46:16PM -0700, José Roberto de Souza wrote:
> skl_compute_ddb() will for a modeset in all pipes when MBUS joining
> changes between states, so all pipes will be disabled, have all
> MBUS related registers updated and then each pipe enabled.
> So no vblank syncronization is necessary and here droping those TODOs.

The TODO is about removing that modeset. So it should stay put.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index cf290bb704221..9ccf0f062862c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6066,7 +6066,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  
>  		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
> -			/* TODO: Implement vblank synchronized MBUS joining changes */
>  			ret = intel_modeset_all_pipes(state);
>  			if (ret)
>  				return ret;
> @@ -8195,10 +8194,6 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  	if (!HAS_MBUS_JOINING(dev_priv))
>  		return;
>  
> -	/*
> -	 * TODO: Implement vblank synchronized MBUS joining changes.
> -	 * Must be properly coordinated with dbuf reprogramming.
> -	 */
>  	if (dbuf_state->joined_mbus) {
>  		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>  			MBUS_JOIN_PIPE_SELECT_NONE;
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
