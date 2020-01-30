Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1811614D855
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 10:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5E56E1E0;
	Thu, 30 Jan 2020 09:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7067D6E1E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 09:41:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 01:41:23 -0800
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="218231915"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 01:41:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200129220540.7608-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200129220540.7608-1-vivek.kasireddy@intel.com>
Date: Thu, 30 Jan 2020 11:41:19 +0200
Message-ID: <875zgtb7sw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Ensure that the value
 assigned to ddi_clk_needed is a bool
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

On Wed, 29 Jan 2020, Vivek Kasireddy <vivek.kasireddy@intel.com> wrote:
> Currently, the value assigned to the bool variable ddi_clk_needed
> is a pointer -- which appears to have happened inadvertently. Therefore,
> add a "!!" before the expression on the right to ensure that it results
> in a bool.

Please don't do this.

The !! is only needed for compressing the value to 0 or 1 when the left
operand is not a bool. It was customary in the days of yore when bool
was just a typedeffed int.

For standard bools, "When any scalar value is converted to _Bool, the
result is 0 if the value compares equal to 0; otherwise, the result is
1."

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c96f629cddc3..6df485289bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3109,7 +3109,7 @@ void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  	}
>  
>  	port_mask = BIT(encoder->port);
> -	ddi_clk_needed = encoder->base.crtc;
> +	ddi_clk_needed = !!encoder->base.crtc;
>  
>  	if (encoder->type == INTEL_OUTPUT_DSI) {
>  		struct intel_encoder *other_encoder;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
