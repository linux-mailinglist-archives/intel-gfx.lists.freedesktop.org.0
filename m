Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ABC7A76F0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D63B10E16E;
	Wed, 20 Sep 2023 09:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD5E10E16E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695201142; x=1726737142;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+eNzqI1O4TgHIvS01PFcfAXfpnq9a1vuJakHEHgzMsg=;
 b=YlmyWMT0f06xIJmV3GdxwOfitmGBpoJYFXDbNIIx4ofS1JFqFKbFvmRo
 yft4FbWWdmsqIzaKAf2ugOClb4LCtl7dyvjQBDyBAkbbnedHKLOdLRytQ
 jcVnhSgDxry5IBMMnZ0qjOqqbIvphYmPbgi6yIBzHYZ0WmvEwJAIfpaXO
 cvAtVB8TxtHA0F4h6zbpM+Yc0xS11z9LkxubgMSaQ8RMF1UBLjdd93Kic
 J6k4cZlOkvXhzdkxnv/AE06l9+vix/3loxN3uC6thLsrwHvYMMbjMqU5k
 jog2sv7CRljR1AAxUTEWcX4oPBwjeS60fBTsXH2xxbWtiS6fBMdKbemvU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="382916910"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="382916910"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:12:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836772693"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836772693"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:12:02 -0700
Date: Wed, 20 Sep 2023 12:11:58 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZQq3XlBGdXFZAh2z@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-19-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914192659.757475-19-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 18/25] drm/i915/dp_mst: Add atomic state
 for all streams on pre-tgl platforms
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

On Thu, Sep 14, 2023 at 10:26:52PM +0300, Imre Deak wrote:
> If an MST stream is modeset, its state must be checked along all the
> other streams on the same MST link, for instance to resolve a BW
> overallocation of a non-sink MST port or to make sure that the FEC is
> enabled/disabled the same way for all these streams.
> 
> To prepare for that this patch adds all the stream CRTCs to the atomic
> state and marks them for modeset similarly to tgl+ platforms. (If the
> state computation doesn't change the state the CRTC is switched back to
> fastset mode.)
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c1fea894d3774..832e8b0e87e84 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -491,9 +491,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
>  	struct intel_connector *connector_iter;
>  	int ret = 0;
>  
> -	if (DISPLAY_VER(dev_priv) < 12)
> -		return  0;
> -

I'm just a bit concerned, why this check was initially added?
Probably there was a reason?

Stan

>  	if (!intel_connector_needs_modeset(state, &connector->base))
>  		return 0;
>  
> -- 
> 2.37.2
> 
