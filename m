Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C710141DD66
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 17:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4CA6E42C;
	Thu, 30 Sep 2021 15:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651596E42D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 15:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="212467856"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="212467856"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 08:25:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="708066406"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 08:25:22 -0700
Date: Thu, 30 Sep 2021 18:25:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210930152518.GC2418125@ideak-desk.fi.intel.com>
References: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Clear leftover DP
 vswing/preemphasis values before modeset
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

On Thu, Sep 30, 2021 at 04:43:07PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we clear the leftover vswing/preemphasis values only
> at the start of link training. That means the initial vswing
> programming performed during modeset is going to use stale values
> left over from the previous link training sequence, and then at
> the start of link training we're going to reset the levels back
> to 0. Seems much better to make sure we start with level 0 from
> the get go.
> 
> Additionally if LTTPRs are present the leftover vswing/preemphasis
> values are those of the last link in the chain, so not the values
> that our PHY is even using after a successful link training sequence.
> 
> So let's make sure everything is cleared up before we start
> programming anything.
> 
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8f5a935b72b6..74a657ae131a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1835,6 +1835,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count)
>  {
> +	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
>  	intel_dp->link_trained = false;
>  	intel_dp->link_rate = link_rate;
>  	intel_dp->lane_count = lane_count;
> -- 
> 2.32.0
> 
