Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9487D3ED0BE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 10:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF5689B67;
	Mon, 16 Aug 2021 08:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C83789B67
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 08:57:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="301407183"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="301407183"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 01:57:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="530283798"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 01:57:54 -0700
Date: Mon, 16 Aug 2021 11:57:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210816085751.GA2738167@ideak-desk.fi.intel.com>
References: <20210816071737.2917-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816071737.2917-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: remove superfluous
 EXPORT_SYMBOL()
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

On Mon, Aug 16, 2021 at 10:17:37AM +0300, Jani Nikula wrote:
> The symbol isn't needed outside of i915.ko.
> 
> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode link training")
> Fixes: 264613b406eb ("drm/i915: Disable LTTPR support when the DPCD rev < 1.4")
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks for catching it, not sure why I thought the export is needed :/
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 08bceae40aa8..053a3c2f7267 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -206,7 +206,6 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  
>  	return lttpr_count;
>  }
> -EXPORT_SYMBOL(intel_dp_init_lttpr_and_dprx_caps);
>  
>  static u8 dp_voltage_max(u8 preemph)
>  {
> -- 
> 2.20.1
> 
