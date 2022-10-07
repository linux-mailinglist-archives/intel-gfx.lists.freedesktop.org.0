Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 523425F7417
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 08:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4DD10E916;
	Fri,  7 Oct 2022 06:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C55810E916
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 06:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665122609; x=1696658609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8TyRTdpqgMRmy+AHnFE0ub7elXFM9Tzff/gFqCSXIzM=;
 b=ab9tLkmReprH3ttBxBpJYp+LzhmklLB7M4pr0fkUNInEv5nUfWT3BeY6
 nTeyUleruvAzsgjqCtURrrWUb19bJ/Uw5+aOT6yipvCopqjwXaPg62hrX
 O2ZwYrvaY8pAYeFfDtCjRUb1KK8PX3ZPFATd4h6eQXmgZn/ArkYR0itrh
 CnR534IkWHkxGdnxoXd+xmZu8hkb4ciBGQ6bYL74F49tbHFWogCQgmY3S
 JaZMihj1TTfitE3s1jHhKwvbDJHNIZXZQ/ihZ4vUGHSB8MQAzcK/UK9ce
 KfNojUELpbLxnSm2ofcKCjkQFUvgbRQMxs6Ec3BQd8Z8uEmSXLddyr4LV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="367786342"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="367786342"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 23:03:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="693656874"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="693656874"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 23:03:27 -0700
Date: Fri, 7 Oct 2022 09:03:24 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yz/BLO2PQklPXfRX@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-9-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915: Write watermarks for
 disabled pipes on gmch platforms
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

On Wed, Jun 22, 2022 at 06:54:51PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We've excluded gmch platforms from writing the final watermarks
> for any disabled pipe. IIRC the reason was perhaps some lingering
> issue with the watermark merging across the pipes. But I can't
> really see any reason for this anymore, so let's unify this behaviour.
> The main benefit being more consistency in register dumps when
> we don't have stale watermarks hanging around in the registers.
> Functionally there should be no difference as the hardware just
> ignore all of it when the pipe is disabled.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 903226e2a626..2c5dadc62c55 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7192,9 +7192,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	intel_fbc_disable(crtc);
>  	intel_disable_shared_dpll(old_crtc_state);
>  
> -	/* FIXME unify this for all platforms */
> -	if (!new_crtc_state->hw.active &&
> -	    !HAS_GMCH(dev_priv))
> +	if (!new_crtc_state->hw.active)
>  		intel_initial_watermarks(state, crtc);
>  }
>  
> -- 
> 2.35.1
> 
