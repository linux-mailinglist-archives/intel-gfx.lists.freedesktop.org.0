Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF95A0A4C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 09:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A370B10E21F;
	Thu, 25 Aug 2022 07:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFA210E21F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 07:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661412689; x=1692948689;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fKpv0YBv09D92o0Wir/MkD7NxgS8Ny6bBAxOHrwlo/Q=;
 b=MlWkdZ5Q9CvrVe1wSijqg9xmP8G8+2YNx1WN2c1yCi/kr7aJn1hisl5Z
 P+djsSFgd9LXAPqKmrDMLqlgveLZ5VdRBCF1LWY3M6SdysNal3qGjPVjV
 vfcpasajYqFFFnqjDYodV8JNV7u7usi3v9X3gV6RKcdBLICY6ciqRcA4N
 kIsJGmcZAlaD1tIynC8ncoeTtHZFd/RyD7IK8r+EFwhg7MXwa8ne/zlp5
 8bzPvxj8g4EZgoTZ3ji2kWUH0mvOlaIO2IIep8IWZ2erhV2KcdroYk4gE
 Kvkur2iRf0kPyTD5+Omh41UxVkRWo5EBsOcJJpHVSc+b7hqO0jmzl5g8/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="277191124"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="277191124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:31:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="699358043"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:31:27 -0700
Date: Thu, 25 Aug 2022 10:32:07 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Ywcld85gQs177IzR@intel.com>
References: <20220617195948.24007-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220617195948.24007-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip wm/ddb readout for disabled
 pipes
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

On Fri, Jun 17, 2022 at 10:59:48PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The stuff programmed into the wm/ddb registers of planes
> on disabled pipes doesn't matter. So during readout just
> leave our software state tracking for those zeroed.
> 
> This should avoid us trying too hard to clean up after
> whatever mess the VBIOS/GOP left in there. The actual
> hardware state will get cleaned up if/when we enable
> the pipe anyway.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/5711
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 174fab564d10..d083964d5470 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6560,7 +6560,10 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		enum plane_id plane_id;
>  		u8 slices;
>  
> -		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> +		memset(&crtc_state->wm.skl.optimal, 0,
> +		       sizeof(crtc_state->wm.skl.optimal));
> +		if (crtc_state->hw.active)
> +			skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
>  		crtc_state->wm.skl.raw = crtc_state->wm.skl.optimal;
>  
>  		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
> @@ -6571,6 +6574,9 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  			struct skl_ddb_entry *ddb_y =
>  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  
> +			if (!crtc_state->hw.active)
> +				continue;
> +
>  			skl_ddb_get_hw_plane_state(dev_priv, crtc->pipe,
>  						   plane_id, ddb, ddb_y);
>  
> -- 
> 2.35.1
> 
