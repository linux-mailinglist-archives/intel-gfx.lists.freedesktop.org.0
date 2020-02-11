Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504B6158E33
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 13:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468E26EA29;
	Tue, 11 Feb 2020 12:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169F96EA29
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 12:16:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 04:16:56 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226488002"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 04:16:55 -0800
Date: Tue, 11 Feb 2020 14:16:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200211121632.GA28263@ideak-desk.fi.intel.com>
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 01:40:38PM +0200, Stanislav Lisovskiy wrote:
> I guess it would still be nice to make the code less confusing
> and do not call eDP specific function, for non-eDP connectors
> just to immediately return true(success) value as a hack.
> 
> So simply extracted that check out from this function,
> that we simply don't call it for non-eDP connectors. Bingo.
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

Yes, one jump less when reading the code. You could also use a&&b to
reduce the indent:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	}
>  
>  	intel_dp_add_properties(intel_dp, connector);
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
