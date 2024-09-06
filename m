Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A0196F1E8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 12:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F229810E154;
	Fri,  6 Sep 2024 10:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AO+PYZP/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3169910E154
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 10:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725619871; x=1757155871;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jqtQedSlX8z8K2S30zKybQqh4Nr2eWgJW745OP0Oifo=;
 b=AO+PYZP/qSiThPGD15AKb7mX06hNz7IRJDb3oZkOUCQ7Yv6/UR2SElnf
 dfOLf1kY6mILSZ63qkfNaxiZ9ztUQbwfZO96wMniLv9bb7b7/nkBTgwAY
 aoFZfLkLf6+RawH1DpyrRDPASZAQ6ShTvznO39Ai98qiKXL+g+3XD+ldr
 5VEusRuKk1AoZ4epGcRF50qf0dhqp0f3H5D8mJB/pPCVp8IrbsDN5tKvc
 fb+14D3TvA15qxm+9+DcjMpGSxrpTkYyysE5fbDCNQAV+OnFkQ/ZU6Den
 Yk+TbYMEZznAHNEvjuY+4SlUOE3ib5QWub5LnbiRolirerR9igEiG6l1a w==;
X-CSE-ConnectionGUID: BUslqnUPSMCrqhV4LKCBoA==
X-CSE-MsgGUID: Feb3DIymQWibUSlstuaBZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="46902574"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="46902574"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 03:51:11 -0700
X-CSE-ConnectionGUID: Zmj8QQ5iSGKflIJvrDAUgA==
X-CSE-MsgGUID: T9wujWqTRiqy6iOSAjH0nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70723965"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 03:51:10 -0700
Date: Fri, 6 Sep 2024 13:51:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, animesh.manna@intel.com
Subject: Re: [PATCH v2 1/4] drm/i915/display: Handle MST connector in
 intel_attached_dp
Message-ID: <ZtretOGlDNWnlVx9@ideak-desk.fi.intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
 <20240906070033.289015-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906070033.289015-2-jouni.hogander@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 06, 2024 at 10:00:30AM +0300, Jouni Högander wrote:
> Connector->encoder might be null for MST connector. Take this into account
> in intel_attached_dp.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 733de5edcfdb3..000ab373c8879 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1913,7 +1913,10 @@ static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
>  
>  static inline struct intel_dp *intel_attached_dp(struct intel_connector *connector)
>  {
> -	return enc_to_intel_dp(intel_attached_encoder(connector));
> +	if (connector->mst_port)
> +		return connector->mst_port;
> +	else
> +		return enc_to_intel_dp(intel_attached_encoder(connector));
>  }
>  
>  static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
> -- 
> 2.34.1
> 
