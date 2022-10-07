Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EF35F7416
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 08:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CAE10E56F;
	Fri,  7 Oct 2022 06:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6217E10E56F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 06:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665122505; x=1696658505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LR++2fr8bp0FoX+GSLMSKSO1ibolHex874Qu1iKJwIQ=;
 b=Zgasjw1Mi05SfS6dKHddbU0Y3QIeVshW286MKySrqVWB4elbC3hLKZln
 KTXgdhor7AE555n8w/Y+TO+jCC8T4hFuWip4RVzhvdcnGl+QTfHZiI3+s
 oN7BjmIDYPmTybMdUx8IcpneQgy8zloSy47mqBQ/3QvizllsKSluHUvbX
 xB0y/gRMX6ehPm1/o8gu9cshZI6amjPvYFiTOtjGbl60zuEqoD7AE8qOt
 Gtmf9XO0oRa2qV7Cyj2uaVW5Rn8l7vQnuZM6Mz8sFmQeo1aj9R9a5TBav
 xrMZELZKJhPlLPCIowoLtaMnBj1GgiZxye+z2u0FReVXFAVdWMS7YwneA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="305238713"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="305238713"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 23:01:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="602733134"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="602733134"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 23:01:38 -0700
Date: Fri, 7 Oct 2022 09:01:34 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yz/Avhm/L5k8AiFP@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-8-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915: Fix pipe gamma
 enable/disable vs. CxSR on gmch platforms
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

On Wed, Jun 22, 2022 at 06:54:50PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Like most other plane control register bits, the pipe gamma
> enable bit is also blocked by CxSR. So make sure we kick the
> machine out of CxSR before trying to change that bit.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Should that new i9xx_must_disable_cxsr function be extended
to be used here as well?

Besides that

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a27ce874a9e8..bc01a7d3b0d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1305,6 +1305,10 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
>  			return PTR_ERR(plane_state);
>  
>  		new_crtc_state->update_planes |= BIT(plane->id);
> +
> +		/* plane control register changes blocked by CxSR */
> +		if (HAS_GMCH(dev_priv))
> +			new_crtc_state->disable_cxsr = true;
>  	}
>  
>  	return 0;
> -- 
> 2.35.1
> 
