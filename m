Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C997A808B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 14:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C0C10E4A3;
	Wed, 20 Sep 2023 12:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC66510E4AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 12:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695213465; x=1726749465;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kNsGOQs438ywpnAQjLDjwSfEUWVOFWG/YH4PS1jATHA=;
 b=HcS0b5QuztgmzFw59Igjgrx0KWSZDgk9s92Jp7AkHqI2pUWQvTfnrbEY
 VtqcAT+8ody/ZHke1ePfkCwnREbLwRO2vJIqF+MOn6jkgUOLKrRYVxb7I
 ULVoyHrF8TMX/tzjYywuGSa7UaonDs0+8pWfNQ+FqMgrjRJ0jPvG6KRAS
 oHEzTq+a5jCRqj8jAYce0zW3YLv0g7ebZF99gA6nNNfhV1HkKbfHtkHm0
 aqkKf/tHaqIQtN0lLo0WecarJ3nRgRttmtl+OM6NugyFcwfLIwV41THea
 JrIDRf/F6qWKeqq6erCBkVQyeqr0d2qm0QdaqopmArPBcBR0wpRrAMfkV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="446679758"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="446679758"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740195925"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="740195925"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:37:43 -0700
Date: Wed, 20 Sep 2023 15:38:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZQrnrTF6OwUuDeuS@ideak-desk.fi.intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-19-imre.deak@intel.com>
 <ZQq3XlBGdXFZAh2z@intel.com> <ZQrQqUeMjVBLn3by@intel.com>
 <ZQrWmvN7dg8abxpY@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQrWmvN7dg8abxpY@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 02:25:14PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Sep 20, 2023 at 01:59:53PM +0300, Ville Syrjälä wrote:
> > On Wed, Sep 20, 2023 at 12:11:58PM +0300, Lisovskiy, Stanislav wrote:
> > > On Thu, Sep 14, 2023 at 10:26:52PM +0300, Imre Deak wrote:
> > > > If an MST stream is modeset, its state must be checked along all the
> > > > other streams on the same MST link, for instance to resolve a BW
> > > > overallocation of a non-sink MST port or to make sure that the FEC is
> > > > enabled/disabled the same way for all these streams.
> > > > 
> > > > To prepare for that this patch adds all the stream CRTCs to the atomic
> > > > state and marks them for modeset similarly to tgl+ platforms. (If the
> > > > state computation doesn't change the state the CRTC is switched back to
> > > > fastset mode.)
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
> > > >  1 file changed, 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index c1fea894d3774..832e8b0e87e84 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -491,9 +491,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> > > >  	struct intel_connector *connector_iter;
> > > >  	int ret = 0;
> > > >  
> > > > -	if (DISPLAY_VER(dev_priv) < 12)
> > > > -		return  0;
> > > > -
> > > 
> > > I'm just a bit concerned, why this check was initially added?
> > > Probably there was a reason?
> > 
> > It's in the name of the function, which should be renamed if we're
> > extending it beyond its original purpose.
> 
> Well, I would say this check could be "a bit" more descriptive.
> Still, even if function name gets changed, we just remove the check, for the
> function which was initially not even intended to be called for pre-tgl?

The change on tgl+ platforms is that all the MST streams go through a
master transcoder, while on old platforms each stream has only its own
transcoder. Hence on tgl+ all streams/CRTCs may need to be modeset, at
least in the case the CRTC owning the master transcoder (for instance
pipe A/transcoder A) is modeset. So on tgl+ here all CRTCs for a given
MST topology is added to the state/marked for modeset.

pre-tgl this wasn't necessary, until the need to recalculate the BW
requirement of each stream came up, as described in the commit log.

I can clarify the above in the commit log and rename the function
accordingly, is that ok?

> Why it became suitable now then? Or was it just wrong check?
> 
> Stan
> 
> > 
> > > 
> > > Stan
> > > 
> > > >  	if (!intel_connector_needs_modeset(state, &connector->base))
> > > >  		return 0;
> > > >  
> > > > -- 
> > > > 2.37.2
> > > > 
> > 
> > -- 
> > Ville Syrjälä
> > Intel
