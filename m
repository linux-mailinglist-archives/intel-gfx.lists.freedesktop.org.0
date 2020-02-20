Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA2F1668B8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 21:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B4C6EE14;
	Thu, 20 Feb 2020 20:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 111DF6EE14
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 20:44:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 12:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="229606425"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl) ([10.24.15.21])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2020 12:44:51 -0800
Date: Thu, 20 Feb 2020 12:44:47 -0500
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20200220174447.GA5984@msatwood-mobl>
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204011032.582737-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Program MBUS with rmw during
 initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2020 at 05:10:31PM -0800, Matt Roper wrote:
> It wasn't terribly clear from the bspec's wording, but after discussion
> with the hardware folks, it turns out that we need to preserve the
> pre-existing contents of the MBUS ABOX control register when
> initializing a few specific bits.
> 
> Bspec: 49213
> Bspec: 50096
> Fixes: 4cb4585e5a7f ("drm/i915/icl: initialize MBus during display init")
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6d91e180db99..529319c962e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4504,14 +4504,18 @@ static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
>  
>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> +	u32 mask, val;
>  
> +	mask = MBUS_ABOX_BT_CREDIT_POOL1_MASK |
> +		MBUS_ABOX_BT_CREDIT_POOL2_MASK |
> +		MBUS_ABOX_B_CREDIT_MASK |
> +		MBUS_ABOX_BW_CREDIT_MASK;
>  	val = MBUS_ABOX_BT_CREDIT_POOL1(16) |
> -	      MBUS_ABOX_BT_CREDIT_POOL2(16) |
> -	      MBUS_ABOX_B_CREDIT(1) |
> -	      MBUS_ABOX_BW_CREDIT(1);
> +		MBUS_ABOX_BT_CREDIT_POOL2(16) |
> +		MBUS_ABOX_B_CREDIT(1) |
> +		MBUS_ABOX_BW_CREDIT(1);
>  
> -	intel_de_write(dev_priv, MBUS_ABOX_CTL, val);
> +	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
>  }
>  
>  static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
> -- 
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
