Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCAC7A76E1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6156B10E46E;
	Wed, 20 Sep 2023 09:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BDC10E46E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695200990; x=1726736990;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JnDLKm/4pFrTz+bSw3UqJwLQ93F6hpGvFO/7l2uTlUg=;
 b=WGN2laHKZ6LZs8sUbRhlihtgFNGlV4uKu6InDMDPPluMjWihhsn8UAfq
 +6nbP6hEKP6K1ls9WEd5APt9L1O2uLbpzZr5Htbwg0u6XtkJjf9zQWhgQ
 /oTv5BWTqlsilsiUtlvA7UslbAJaA1RfK1s7vwPDuRJ1r/lvY7djFwTzj
 hhe9VcvVSA4tl1SPM2KP3EeowxnI5MieG2pBtm0JfZDC9VialKBsoaaQ3
 wTmtBg4uWhjqbchw+TGoS+lI474716us2Hahf1PdiMYRBFrIQBPsQHisk
 oGWL+bO/HxREBAPCOFymTBT0qnewgLLFtnhvK/TQSaA1q2PURJJ7fsHUv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="446641976"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="446641976"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:09:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="696225596"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="696225596"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:09:49 -0700
Date: Wed, 20 Sep 2023 12:09:40 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZQq21IFJOK9arP3a@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-18-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914192659.757475-18-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 17/25] drm/i915/dp_mst: Fix PBN
 calculation with FEC overhead
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

On Thu, Sep 14, 2023 at 10:26:51PM +0300, Imre Deak wrote:
> On 8b/10b MST links the PBN value for DSC streams must be calculated
> accounting for the FEC overhead. The same applies to 8b/10b non-DSC
> streams if there is another DSC stream on the same link. Fix up the PBN
> calculation accordingly.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 01291bbb44693..c1fea894d3774 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -110,7 +110,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
>  						       bpp << 4,
> -						       false);
> +						       (dsc || crtc_state->fec_enable) &&
> +							!intel_dp_is_uhbr(crtc_state));
>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> -- 
> 2.37.2
> 
