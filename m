Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DA2310AD8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 13:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E52D6E18F;
	Fri,  5 Feb 2021 12:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1046E18F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 12:04:58 +0000 (UTC)
IronPort-SDR: CRCLO8qmcZiRIh6avLIeGBXRhWn3i6AuW8abzU6g3roI2IIC9RJFIz2JRoQ6uiDk2RMJ1GDKbg
 7dfePqeGzkXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245493779"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="245493779"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 04:04:56 -0800
IronPort-SDR: CLOOSDxm0MejI2BEycs19OoM1qgKEt+Rfh1J5rs4HLvg3ZKGQcUwQZEN9wQy9s3SE/4tW4cXLf
 X1B60QALW5kw==
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="434420526"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 04:04:55 -0800
Date: Fri, 5 Feb 2021 14:04:51 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <20210205120451.GA921144@ideak-desk.fi.intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
 <20210204182809.GC750296@ideak-desk.fi.intel.com>
 <aa661df54d8847d0926e8edf61710fcf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa661df54d8847d0926e8edf61710fcf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
 check
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 10:16:30AM +0200, Gupta, Anshuman wrote:
> > -----Original Message-----
> > From: Imre Deak <imre.deak@intel.com>
> > Sent: Thursday, February 4, 2021 11:58 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
> > check
> > 
> > On Fri, Jan 29, 2021 at 01:30:43PM +0530, Anshuman Gupta wrote:
> > > DP-MST connector encoder initializes at modeset Adding a
> > > connector->encoder NULL check in order to avoid any NULL pointer
> > > dereference.
> > > intel_hdcp_enable() already handle this but debugfs can also invoke
> > > the intel_{hdcp,hdcp2_capable}.
> > > Handling it gracefully.
> > >
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
> > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index ae1371c36a32..58af323d189a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct
> > > intel_digital_port *dig_port,
> > >  /* Is HDCP1.4 capable on Platform and Sink */  bool
> > > intel_hdcp_capable(struct intel_connector *connector)  {
> > > -	struct intel_digital_port *dig_port =
> > intel_attached_dig_port(connector);
> > > +	struct intel_digital_port *dig_port;
> > >  	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> > >  	bool capable = false;
> > >  	u8 bksv[5];
> > >
> > > +	if (!connector->encoder)
> > > +		return -ENODEV;
> > 
> > I assume this is needed when called from i915_hdcp_sink_capability
> > debugfs entry. That one is lacking the locking for the connector,
> > but is that entry really needed? We print the same info already from
> > the i915_display_info entry which has the proper locking and encoder
> > check.
>
> Historically HDCP capability added to i915_display_info later to debug
> CI machine as i915_display_info available as CI logs.  Now the plans
> i915_display_info  should only show the monitor capability.  and
> i915_hdcp_sink_capability will check both sink and platform
> capability.

Ok, in any case the encoder NULL check and the required locking should
be done in i915_hdcp_sink_capability_show().

> 
> Thanks,
> Anshuman Gupta.
> > 
> > > +
> > > +	dig_port = intel_attached_dig_port(connector);
> > > +
> > >  	if (!shim)
> > >  		return capable;
> > >
> > > @@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct intel_connector
> > > *connector)
> > >  /* Is HDCP2.2 capable on Platform and Sink */  bool
> > > intel_hdcp2_capable(struct intel_connector *connector)  {
> > > -	struct intel_digital_port *dig_port =
> > intel_attached_dig_port(connector);
> > > +	struct intel_digital_port *dig_port;
> > >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> > >  	struct intel_hdcp *hdcp = &connector->hdcp;
> > >  	bool capable = false;
> > >
> > > +	if (!connector->encoder)
> > > +		return -ENODEV;
> > > +
> > > +	dig_port = intel_attached_dig_port(connector);
> > > +
> > >  	/* I915 support for HDCP2.2 */
> > >  	if (!hdcp->hdcp2_supported)
> > >  		return false;
> > > --
> > > 2.26.2
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
