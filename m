Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5345566572C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 10:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E72D10E53F;
	Wed, 11 Jan 2023 09:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171D310E53F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 09:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673428671; x=1704964671;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/zCw+Vdw0A6FwI0bT8QCCP+D4mGMSFT9REpgrNF1V7w=;
 b=SNAAQir2ZhBX+N+RoyeOYIXZmWQ2OQf6HXDzIAqixPnu+iuWwy6VSYUb
 y1ufZPIbcaoYpv2LD0BMpDOhaJitKZX2HJOuVcjiYHa7TbCPR39ipcBiH
 HhxGu1up6urT0XRYwWB2i92qWYUKTzwszkFlxVwiTZ2LH5oCYcFpkWv9B
 cZ8L+cWwNpyCShAaVW8TgDE24SR3XfhHDYIbAJDIi/mhfsb2bHT32Av1B
 qo2+F21QNvzA94yPd8ABmp8urO00cYbs4DMsGOfZt17pfYL2quBq86SEg
 +h2KazBxw6dJUJjN898k7qq21HvvTvoUMDRCUj9wQ5amPx6+N4FN7GTlx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="322068485"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="322068485"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 01:17:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831296474"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="831296474"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 01:17:48 -0800
Date: Wed, 11 Jan 2023 11:17:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y75+tV/TCd4RPohB@intel.com>
References: <20230110123338.20196-1-stanislav.lisovskiy@intel.com>
 <Y724kUKsBH34H51P@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y724kUKsBH34H51P@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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

On Tue, Jan 10, 2023 at 02:12:17PM -0500, Rodrigo Vivi wrote:
> On Tue, Jan 10, 2023 at 02:33:38PM +0200, Stanislav Lisovskiy wrote:
> > According to spec, we should check if output_bpp * pixel_rate is less
> > than DDI clock * 72, if UHBR is used.
> > 
> > HSDES: 1406899791
> > BSPEC: 49259
> > 
> > v2: - Removed wrong comment(Rodrigo Vivi)
> >     - Added HSDES to the commit msg(Rodrigo Vivi)
> >     - Moved UHBR check to the MST specific code
> 
> I'm afraid you forgot to remove the "workaround" from the patch subject.

Ah, right, my bad!

> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 8b0e4defa3f1..1f1f7f5f6501 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -339,10 +339,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
> > +				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");
> 
> I'm wondering if I misunderstood your recent reply....  but I believe you told this
> has nothing to do with DP2.0 so why we have DP2 in the msg still?
> 
> I believe that or:
> 1. We are sure this case is only happening on DP2.0 because it is impossible
> 2. or because we are adding a DP2.0 check
> 3. or we don't mention DP2.0

I think we should mention UHBR only, because it is basically more like bandwidth
limitation. It might be that it can happen only on DP2.0, but still I think
it is more correct to link it to UHBR.
I mean that limitation is most likely still valid even with DP1.4, but it simply
becomes relevant once we start using ultra high bit rate, so that in theory we
can exceed that bw limitation.

> 
> With the subject and the comment fixed:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Yes, thank you!

> 
> > +				return -EINVAL;
> > +			}
> > +		}
> > +	}
> >  
> >  	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
> >  	if (ret)
> > -- 
> > 2.37.3
> > 
