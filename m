Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0F048C552
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E168210EE76;
	Wed, 12 Jan 2022 13:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2EBD10EE76
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 13:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641995876; x=1673531876;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DaF6n6Xkjncw8zG9YZD5YTsyOK42OnGAzY/0uyGUYKA=;
 b=POuHVu+48jQlKmE1JEN+robXVBmTTLKd7q1b84lu3eQCSIZk592d5tUp
 r/a43gMUNnJE4v0I/lkjzkzvexxFMpzdYewUBXMhvpvQCyV+A9ym9ov+S
 sIO7gm/BASiY8JML+a2f5gS0XR5qmToU+X1a/gEWe7Q6D+8CjuZ7Tepwq
 HyoG45CeSd40flVaZvppwU9HvdVkjbvcsPmDCd1N0/ZLo9bNwpkUyn5yi
 G/m4XqVO82BW/m5YHge37nZM8X9OocxRc4n22KFvLobn+As6DIy/kfGal
 ryzoZtyOsbZs2LfsE5aOqoLnMsHJR+jVW1InnWAKjLWHE96h9VTmI2Ys3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="268082125"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="268082125"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:57:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="558713928"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 12 Jan 2022 05:57:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Jan 2022 15:57:53 +0200
Date: Wed, 12 Jan 2022 15:57:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yd7eYRIF92zDERP0@intel.com>
References: <20220112105703.1151391-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220112105703.1151391-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/i915/dp: make
 intel_dp_pack_aux() static again
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

On Wed, Jan 12, 2022 at 12:57:03PM +0200, Jani Nikula wrote:
> The last user of intel_dp_pack_aux() outside intel_dp_aux.c got removed
> in commit ad26451a7902 ("drm/i915/display: Drop PSR support from HSW and
> BDW"). Make the function static again.
> 
> Rename the pack/unpack functions to follow the usual naming conventions
> while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_dp_aux.h | 4 ----
>  2 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 5fbb767fcd63..2bc119374555 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -10,7 +10,7 @@
>  #include "intel_pps.h"
>  #include "intel_tc.h"
>  
> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
> +static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
>  {
>  	int i;
>  	u32 v = 0;
> @@ -22,7 +22,7 @@ u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
>  	return v;
>  }
>  
> -static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
> +static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
>  {
>  	int i;
>  
> @@ -267,7 +267,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			for (i = 0; i < send_bytes; i += 4)
>  				intel_uncore_write(uncore,
>  						   ch_data[i >> 2],
> -						   intel_dp_pack_aux(send + i,
> +						   intel_dp_aux_pack(send + i,
>  								     send_bytes - i));
>  
>  			/* Send the command and wait for it to complete */
> @@ -352,7 +352,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  		recv_bytes = recv_size;
>  
>  	for (i = 0; i < recv_bytes; i += 4)
> -		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
> +		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
>  				    recv + i, recv_bytes - i);
>  
>  	ret = recv_bytes;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> index 4afbe76217b9..738577537bc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -6,12 +6,8 @@
>  #ifndef __INTEL_DP_AUX_H__
>  #define __INTEL_DP_AUX_H__
>  
> -#include <linux/types.h>
> -
>  struct intel_dp;
>  
> -u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
> -
>  void intel_dp_aux_fini(struct intel_dp *intel_dp);
>  void intel_dp_aux_init(struct intel_dp *intel_dp);
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
