Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 761445BACBF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291DE10EC7F;
	Fri, 16 Sep 2022 11:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B83F10EC7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663328995; x=1694864995;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h/2mqifO14HerWwHaQRRzJICwlPrSwp2p41mhiWUCiE=;
 b=UqZhre6yR0Cx5nQIVsrJk7JhaU86qlPIsiulB0+L/QQpKZwSEiOqqTIB
 fa/9IYP1BusVUSHLB4u14P2G0hzAsZdZUTFoiUBTVCYAplDoizx6IefNE
 FcHqV+4TaKrhOxUcXzKTDbRSP5MZtLJ3kh6+QiwD/dv/x7rdh56meNH6/
 yffq5jL2Mc895ncuhqw+6pMutfOTqKoV6xX1V6WoFvLKE+F27x0GiPuKV
 s3Br2RjKaw3GArBx3aYi8r/3QQpY64qF6xc8lu8/0jCdEcJQ+/Kf59BLb
 vu8uKoiKJj+rlNbp6ec6beIb8T8f7QyBFfaupqBWslD/ioeEnKtxWbEJ7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="385266026"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="385266026"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="620067022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 16 Sep 2022 04:49:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 14:49:52 +0300
Date: Fri, 16 Sep 2022 14:49:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YyRi4Kw7bsKQvXHc@intel.com>
References: <20220916113850.3712354-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220916113850.3712354-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove ipc_enabled from
 struct drm_i915_private
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

On Fri, Sep 16, 2022 at 02:38:50PM +0300, Jani Nikula wrote:
> The ipc_enabled member was supposed to be moved under the display wm
> sub-struct, but due to a rebase fail only the new one was added and the
> old one was left behind. Finish the job.
> 
> Fixes: 70296670f672 ("drm/i915/display: move IPC under display wm sub-struct")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9f9372931fd2..bdc81db76dbd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -397,8 +397,6 @@ struct drm_i915_private {
>  	 */
>  	u8 snps_phy_failed_calibration;
>  
> -	bool ipc_enabled;
> -
>  	struct i915_pmu pmu;
>  
>  	struct i915_drm_clients clients;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
