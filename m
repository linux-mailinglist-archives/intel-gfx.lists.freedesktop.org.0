Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979307A7A63
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 13:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDC910E48F;
	Wed, 20 Sep 2023 11:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDFF10E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695209125; x=1726745125;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4HVcypDTpG0gUWqPBzj00BYw5QsZtW7Zdu4p+lX9ocM=;
 b=galSpGArKg3YX/TQ2sF95SC1IGea8FwIA33He+s+YhcA8lqUKZLeGyQO
 iQmfasZ01Rg+T2gJdWw3YOcNr9tsuo1w+RP0rcyGN2xBQlxMPBgFc6kWh
 mBSQP3aJ4PRa3+2px3ygjZDwHsultGeACS93qu26L3aRPe+WLtV/fAQ/V
 DaR8bhwHjJCgO2qT6dbbBJdvJRz7gCOAkK7iD36/lvAHcADyun2xpnxBP
 M9Up32WnIX70HLcEfwaVBcQr9wC6fphEmFjj+ZL90/iDEaKRc3sldNujR
 vKXWKyMu0KpM55407vneW+M+eWiUNxZmjkYJtUQHrO6PaHhNw4DXMBVrt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="360451667"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="360451667"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836810132"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836810132"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:25:23 -0700
Date: Wed, 20 Sep 2023 14:25:14 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZQrWmvN7dg8abxpY@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-19-imre.deak@intel.com>
 <ZQq3XlBGdXFZAh2z@intel.com> <ZQrQqUeMjVBLn3by@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQrQqUeMjVBLn3by@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 18/25] drm/i915/dp_mst: Add atomic state
 for all streams on pre-tgl platforms
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

On Wed, Sep 20, 2023 at 01:59:53PM +0300, Ville Syrjälä wrote:
> On Wed, Sep 20, 2023 at 12:11:58PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Sep 14, 2023 at 10:26:52PM +0300, Imre Deak wrote:
> > > If an MST stream is modeset, its state must be checked along all the
> > > other streams on the same MST link, for instance to resolve a BW
> > > overallocation of a non-sink MST port or to make sure that the FEC is
> > > enabled/disabled the same way for all these streams.
> > > 
> > > To prepare for that this patch adds all the stream CRTCs to the atomic
> > > state and marks them for modeset similarly to tgl+ platforms. (If the
> > > state computation doesn't change the state the CRTC is switched back to
> > > fastset mode.)
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
> > >  1 file changed, 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index c1fea894d3774..832e8b0e87e84 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -491,9 +491,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> > >  	struct intel_connector *connector_iter;
> > >  	int ret = 0;
> > >  
> > > -	if (DISPLAY_VER(dev_priv) < 12)
> > > -		return  0;
> > > -
> > 
> > I'm just a bit concerned, why this check was initially added?
> > Probably there was a reason?
> 
> It's in the name of the function, which should be renamed if we're
> extending it beyond its original purpose.

Well, I would say this check could be "a bit" more descriptive.
Still, even if function name gets changed, we just remove the check, for the
function which was initially not even intended to be called for pre-tgl?
Why it became suitable now then? Or was it just wrong check?

Stan

> 
> > 
> > Stan
> > 
> > >  	if (!intel_connector_needs_modeset(state, &connector->base))
> > >  		return 0;
> > >  
> > > -- 
> > > 2.37.2
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
