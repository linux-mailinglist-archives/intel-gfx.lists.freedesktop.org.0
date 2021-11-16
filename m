Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB97453A40
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 20:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4DD6E12E;
	Tue, 16 Nov 2021 19:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D31289B65
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 19:34:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="233754663"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="233754663"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 11:34:10 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="604437133"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 11:34:09 -0800
Date: Tue, 16 Nov 2021 21:34:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211116193405.GA188543@ideak-desk.fi.intel.com>
References: <20211116171434.20516-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116171434.20516-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: drop intel_display.h include
 from intel_ddi.h
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

On Tue, Nov 16, 2021 at 07:14:30PM +0200, Jani Nikula wrote:
> Use forward declarations instead.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Patchset looks ok, on the series:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 6f4551c9d5b7..c2fea6562917 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -6,11 +6,11 @@
>  #ifndef __INTEL_DDI_H__
>  #define __INTEL_DDI_H__
>  
> -#include "intel_display.h"
>  #include "i915_reg.h"
>  
>  struct drm_connector_state;
>  struct drm_i915_private;
> +struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -18,6 +18,8 @@ struct intel_dp;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_shared_dpll;
> +enum pipe;
> +enum port;
>  enum transcoder;
>  
>  i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> -- 
> 2.30.2
> 
