Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B273E96D92A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 14:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E2010E892;
	Thu,  5 Sep 2024 12:47:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BsnqaqFA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4067B10E892
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 12:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725540475; x=1757076475;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FvGDss/lTZOkScTS+BTqD1ExWl28Bj/NfD+wjjxGYqM=;
 b=BsnqaqFAKioICKknzE4lahzoctA6bqs8dsBXrxuquwWxXVVycAtniXVh
 b6gVC9YP77jLyo5pt15dTGvkN5ZB/pMzGFOUL8oye3H3PbIoNTH481ZPY
 ZPMC18QOC3VwYJ6gljDGLOcGWWiSuwgcNKQCgYZ0Ajt3ex4Ak0UBFrRdm
 bg1jpHJTHFRXY4i3QyCwjoM/x8x2BTFpOoBLY3Y90R+DeC1HoVgicsggy
 NNkskCYPN0cUTV4vDH/7b1KJWExgOb36XM6VJ8HrMmCwRJ2ow2iHC2cXc
 FV4UCgYs32UezY1Qd5lqQIkMq1QEF2T/AJj5EDH+BSiZ81EelPRLweOLH A==;
X-CSE-ConnectionGUID: FxOHDCZ5Qu6y3dJ8fBw+wQ==
X-CSE-MsgGUID: gQZTdEfySLec6TKkHsV+ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28141661"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="28141661"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 05:47:54 -0700
X-CSE-ConnectionGUID: PTIIkpXCQM2tBmTdMdmZ8Q==
X-CSE-MsgGUID: zBFXU7rYQd60X//XLJkTBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65268154"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 05:47:53 -0700
Date: Thu, 5 Sep 2024 15:48:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, animesh.manna@intel.com
Subject: Re: [PATCH 1/3] drm/i915/display: Handle MST connector in
 intel_attached_dp
Message-ID: <Ztmojiye5lpbY_fr@ideak-desk.fi.intel.com>
References: <20240904101834.2415385-1-jouni.hogander@intel.com>
 <20240904101834.2415385-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240904101834.2415385-2-jouni.hogander@intel.com>
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

On Wed, Sep 04, 2024 at 01:18:32PM +0300, Jouni Högander wrote:
> Connector->encoder might be null for MST connector. Take this into account
> in intel_attached_dp.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 868ff8976ed93..6327caa1054f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2046,7 +2046,10 @@ static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
>  
>  static inline struct intel_dp *intel_attached_dp(struct intel_connector *connector)
>  {
> -	return enc_to_intel_dp(intel_attached_encoder(connector));
> +	if (connector->mst_port)
> +		return connector->mst_port;
> +	else
> +		return enc_to_intel_dp(intel_attached_encoder(connector));

Yes, connector->encoder is specific to the pipe used by the encoder and
will be set only at the first modeset. Another way would be to set this
to a default (for PIPE_A) encoder already in
intel_dp_add_mst_connector(), but not sure if that's better than the
above.

After this change intel_attached_dp() could be used instead of
intel_connector_to_intel_dp(), could you replace the use of those too?

>  }
>  
>  static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
> -- 
> 2.34.1
> 
