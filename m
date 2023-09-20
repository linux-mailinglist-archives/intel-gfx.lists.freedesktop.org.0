Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB347A79D9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 12:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9408410E47B;
	Wed, 20 Sep 2023 10:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0731E10E47B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 10:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695207528; x=1726743528;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=meHJXBu5CXQ/RdZjrtXBSnJq7IZPB660FitF3lmDXR8=;
 b=imROpN8KQlYOTRpa8o4Cxm2EsMsKdRtqq0PMvTbpyaAEsVx/Lby6xN2+
 RCfxns9y+pla22DHl5IO2Vq8dDpGqU8HRgetUe+fkIqQsCwM8bnfsapBv
 PRMu0jOgTX2quhGHGmcWI7tCqfvaK3p4gPd9W1pcD3ISb273UDcC2QqT1
 50KtMOExRckvI2dd1HoJBtdvBlkcNFh/bu4tyqefXoXutHF5PJuB6ir+m
 YeYAL48irU+GN/bISBbZdk0mell/MqHS9WZiuCV8YTGUZI19clhQa+6qf
 qUsqyR4R6NFKJrFI//AL9msgH6/HN7PPLxcfteEm2VGG8QfRmuh62H8Hr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="382935341"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="382935341"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 03:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836802989"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836802989"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by FMSMGA003.fm.intel.com with SMTP; 20 Sep 2023 03:58:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 13:58:43 +0300
Date: Wed, 20 Sep 2023 13:58:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZQrQY60YmL3UDzsS@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-18-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230914192659.757475-18-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

Why is this not simply 'fec_enable'?

>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
