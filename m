Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA56A44A81D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 09:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE12C6E527;
	Tue,  9 Nov 2021 08:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333F36E527
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 08:04:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="213130676"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="213130676"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 00:04:40 -0800
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="503406303"
Received: from stkachen-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.216.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 00:04:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: William Tseng <william.tseng@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211109034125.11291-1-william.tseng@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211109034125.11291-1-william.tseng@intel.com>
Date: Tue, 09 Nov 2021 10:04:34 +0200
Message-ID: <87wnlh69gt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: disable lpdt if it is not
 enabled
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
Cc: William Tseng <william.tseng@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 09 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
> Avoid setting LP_DATA_TRANSFER when enable_lpdt is false
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 168c84a74d30..31cea17481b1 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -183,6 +183,8 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
>  
>  	if (enable_lpdt)
>  		tmp |= LP_DATA_TRANSFER;
> +	else
> +		tmp &= ~LP_DATA_TRANSFER;
>  
>  	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
>  	tmp |= ((packet->header[0] & VC_MASK) << VC_SHIFT);

The read-modify-write we do here is perhaps not the brightnest idea, but
the patch at hand probably is the most sensible first fix.

Thanks, pushed to drm-intel-next.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
