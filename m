Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C1188E537
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 15:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE4410FD2C;
	Wed, 27 Mar 2024 14:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4F0iGzS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4232010FD2C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 14:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549156; x=1743085156;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LlUr+b79H1LD5CgzIO39sKq1z8+E5568y/NG18qFm4E=;
 b=T4F0iGzSctkCmMAq85puM1NNtgTv3j7lV5jvzASuFiEd11bmlAtIo28T
 kMSmbLcSGmMMiWBByvDTtssMr8frgkwvkOMAJcpV6CxUsuH0faDlfWrtS
 fd1rKUAo/sdxdvW13WyJ6T3JgqQjbFKW+TyQZzD9QItYPEfwYUyfF3qR0
 DP/pS7Bc6jCs5fhi02qrKCPjWFyWk3QDoLhyaMQCJdp0eDCFxtFoJi6I3
 G3vULhT94iBMqV6jjwk9TOkadxbT2MegXehH8vmeL5iLjFdZEstCkmeHL
 aO3nhRy7C+W0KTCaSk1XPEgSZvtUJaMnS2nCTDXdVc6ABDxEit1yq+Jqr Q==;
X-CSE-ConnectionGUID: TKH+sB4nSCeM/LPdYZplAA==
X-CSE-MsgGUID: n5r6+O0ISBOtTTXR03DLMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6767732"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6767732"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20845371"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:19:15 -0700
Date: Wed, 27 Mar 2024 16:19:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/11] drm/i915/dp_mst: Make HBLANK expansion quirk work
 for logical ports
Message-ID: <ZgQrAKqiC9SEie4g@ideak-desk.fi.intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-11-imre.deak@intel.com>
 <9cf063bb-9e8b-4bc3-a9a0-e6ae90acd7b5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cf063bb-9e8b-4bc3-a9a0-e6ae90acd7b5@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 27, 2024 at 01:40:58PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > The DPCD OUI of the logical port on a Dell UHBR monitor - on which the
> > AUX device is used to enable DSC - is all 0. To detect if the HBLANK
> > expansion quirk is required for this monitor use the OUI of the port's
> > parent instead.
> > 
> > Since in the above case the DPCD of both the logical port and the parent
> > port reports being a sink device (vs. branch device) type, read the
> > proper sink/branch OUI based on the DPCD device type.
> > 
> > This is required by a follow-up patch enabling the quirk for the above
> > Dell monitor.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++++++++++++------
> >   1 file changed, 16 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 516b00f791420..76a8fb21b8e52 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1512,23 +1512,33 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
> >   static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
> >   {
> >   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +	struct drm_dp_aux *aux = connector->dp.dsc_decompression_aux;
> >   	struct drm_dp_desc desc;
> >   	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > -	if (!connector->dp.dsc_decompression_aux)
> > +	if (!aux)
> >   		return false;
> > -	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
> > -			     &desc, true) < 0)
> > +	/*
> > +	 * A logical port's OUI (at least for affected sinks) is all 0, so
> > +	 * instead of that the parent port's OUI is used for identification.
> > +	 */
> > +	if (drm_dp_mst_port_is_logical(connector->port)) {
> > +		aux = drm_dp_mst_aux_for_parent(connector->port);
> > +		if (!aux)
> > +			aux = &connector->mst_port->aux;
> 
> As I understand, we are setting connector->mst_port as intel_dp, in the
> caller intel_dp_add_mst_connector so its unlikely that aux can be NULL, but
> do you see if we need to check for aux?

Yes, intel_connector::mst_port (always) points to the intel_dp of the
MST root port, and aux will be always initialized for all the registered
DP encoders/intel_dps; so mst_port->aux will always point to a
valid/non-NULL AUX device. (In any case above we take the address of
intel_dp::aux, which can't be NULL.)

> Regards,
> 
> Ankit
> 
> > +	}
> > +
> > +	if (drm_dp_read_dpcd_caps(aux, dpcd) < 0)
> > +		return false;
> > +
> > +	if (drm_dp_read_desc(aux, &desc, drm_dp_is_branch(dpcd)) < 0)
> >   		return false;
> >   	if (!drm_dp_has_quirk(&desc,
> >   			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
> >   		return false;
> > -	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
> > -		return false;
> > -
> >   	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
> >   		return false;
