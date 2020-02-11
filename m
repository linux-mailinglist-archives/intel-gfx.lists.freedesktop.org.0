Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ECE158F6C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45A6EA5B;
	Tue, 11 Feb 2020 13:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57B96EA5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 13:04:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:03:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226497545"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:03:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
Date: Tue, 11 Feb 2020 15:03:52 +0200
Message-ID: <87zhdpz35z.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Call intel_edp_init_connector
 only for eDP.
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

On Tue, 11 Feb 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> I guess it would still be nice to make the code less confusing
> and do not call eDP specific function, for non-eDP connectors
> just to immediately return true(success) value as a hack.
>
> So simply extracted that check out from this function,
> that we simply don't call it for non-eDP connectors. Bingo.

Fair enough, I guess...

Though I could be persuaded to take a patch for the reverse, because
generally we prefer localized knowledge in the callee than in a
potentially irrelevant place in the caller.

Consider the intel_dp_mst_encoder_init() call in the context of this
patch. We call it, and the function itself decides whether MST init is
relevant or not. But I presume you wouldn't suggest pulling in all the
conditions from there one level higher?

Would your opinion on intel_edp_init_connector() be different if the
conditions were more than just the single intel_dp_is_edp()? Or if we
moved all of eDP support to a separate file?

BR,
Jani.


>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f4dede6253f8..9bd36197a43d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7370,9 +7370,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	intel_wakeref_t wakeref;
>  	struct edid *edid;
>  
> -	if (!intel_dp_is_edp(intel_dp))
> -		return true;
> -
>  	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
>  
>  	/*
> @@ -7590,10 +7587,12 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
>  	intel_dp_mst_encoder_init(intel_dig_port,
>  				  intel_connector->base.base.id);
>  
> -	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
> -		intel_dp_aux_fini(intel_dp);
> -		intel_dp_mst_encoder_cleanup(intel_dig_port);
> -		goto fail;
> +	if (intel_dp_is_edp(intel_dp)) {
> +		if (!intel_edp_init_connector(intel_dp, intel_connector)) {
> +			intel_dp_aux_fini(intel_dp);
> +			intel_dp_mst_encoder_cleanup(intel_dig_port);
> +			goto fail;
> +		}
>  	}
>  
>  	intel_dp_add_properties(intel_dp, connector);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
