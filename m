Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A7F2A779B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 07:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100366E0FD;
	Thu,  5 Nov 2020 06:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE446E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 06:55:40 +0000 (UTC)
IronPort-SDR: N5bB3DZSB8wmO9yXgy4jQEOmFCjOQ+G2/r0F44OqFS8yHb5ggiqPEwBRQiWElc9262JTqSSNUS
 gu+NaVV0V7kA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="233500175"
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="233500175"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 22:55:39 -0800
IronPort-SDR: ofCH88Q6Gspzz7PpzaoWRgSz8lixeynRj9j34MhgPvwBcaEzhJl7HWnGhNQsX1ukjKIpfPRi17
 P06nJFw9ZcGg==
X-IronPort-AV: E=Sophos;i="5.77,452,1596524400"; d="scan'208";a="321098291"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 22:55:37 -0800
Date: Thu, 5 Nov 2020 12:12:11 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201105064209.GP29526@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
 <20201104195604.3334-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104195604.3334-2-uma.shankar@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-11-05 at 01:26:03 +0530, Uma Shankar wrote:
> There are some corner cases wrt underrun when we enable
> FBC with PSR2 on TGL. Recommendation from hardware is to
> keep this combination disabled.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a5b072816a7b..32c411414908 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -799,6 +799,12 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
>  	struct intel_fbc *fbc = &dev_priv->fbc;
>  	struct intel_fbc_state_cache *cache = &fbc->state_cache;
>  
> +	if (dev_priv->psr.sink_psr2_support &&
> +	    IS_TIGERLAKE(dev_priv)) {
IMHO we need to use state boolean crtc_state->has_psr2, we can have sink supports PSR2
but it may not be enabled due to any reason.
Thanks,
Anshuman Gupta.
> +		fbc->no_fbc_reason = "not supported with PSR2";
> +		return false;
> +	}
> +
>  	if (!intel_fbc_can_enable(dev_priv))
>  		return false;
>  
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
