Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7976466B870
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 08:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A797C10E075;
	Mon, 16 Jan 2023 07:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42A010E075
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 07:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673855530; x=1705391530;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XB6zgHUiip/3+PL+a7IqZ2vdZaWtPkRO+cS9uBM1+58=;
 b=YQ/8UQ0Ni98V5hbkfoqjymnO5Oqi9ZYOwvb73GpjRpQg25vl3pVlRZNw
 MAOXTHa54aHxnAS4CIK6HChpKQHB+N8sse/sLtwPPKB1ALyORr7vsaduB
 buvf2nO8b4vQbwo3ixSNy0JirIYkqXGxFxpCjJA6bpp9+9FU0Bz2EqKrl
 N1WcfyP87pGsbpk7sYCAP3owQHTIq+e4ede3uetDJ5Hzgb55nh7G+MjGh
 Ok5Yp9t32VQPglL/m0IDQy2bEZvtUDtNWDXEKZzMongcgbqo3U1G+Xcgz
 A4R5hJOlK8jYMPfKacUmQ6NI3md4SaAI66M1kOSZMpVFEBIoU5249B/+h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="410653600"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="410653600"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2023 23:51:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904244372"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="904244372"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2023 23:51:50 -0800
Date: Mon, 16 Jan 2023 09:51:42 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y8UCDoEEFyhiR3Lw@intel.com>
References: <20230113130628.19772-1-stanislav.lisovskiy@intel.com>
 <Y8FuKtLJuio28wwb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y8FuKtLJuio28wwb@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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

On Fri, Jan 13, 2023 at 04:43:54PM +0200, Ville Syrjälä wrote:
> On Fri, Jan 13, 2023 at 03:06:28PM +0200, Stanislav Lisovskiy wrote:
> > According to spec, we should check if output_bpp * pixel_rate is less
> > than DDI clock * 72, if UHBR is used.
> > 
> > HSDES: 1406899791
> > BSPEC: 49259
> > 
> > v2: - Removed wrong comment(Rodrigo Vivi)
> >     - Added HSDES to the commit msg(Rodrigo Vivi)
> >     - Moved UHBR check to the MST specific code
> > 
> > v3: - Changed commit subject(Rodrigo Vivi)
> >     - Fixed the error message if check fails(Rodrigo Vivi)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 +++++++++++++---
> >  1 file changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 8b0e4defa3f1..36e368995bef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -339,10 +339,20 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> >  						  conn_state, &limits,
> >  						  pipe_config->dp_m_n.tu, false);
> > -	}
> > +		if (ret < 0)
> > +			return ret;
> >  
> > -	if (ret)
> > -		return ret;
> > +		if (intel_dp_is_uhbr(pipe_config)) {
> > +			int output_bpp = pipe_config->dsc.compressed_bpp;
> > +
> > +			if (output_bpp * adjusted_mode->crtc_clock >=
> > +			    pipe_config->port_clock * 72) {
> > +				drm_dbg_kms(&dev_priv->drm, "UHBR check failed(required bw %d available %d)\n",
> > +					    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
> > +				return -EINVAL;
> 
> Doesn't this just mean the user can never enable this particular
> mode? Would seem more sensible to account for the extra
> limitation when we determine port_clock and/or compressed_bpp.

So do you mean I should add this as part of the constraints, that we check, where we optimize 
port_clock?  probably also then if we fail to find uncompressed more for that,
then we need to try with DSC, also gradually decreasing compressed_bpp.

Stan

> 
> > +			}
> > +		}
> > +	}
> >  
> >  	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
> >  	if (ret)
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
