Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2525B310AED
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 13:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9086E283;
	Fri,  5 Feb 2021 12:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7EF26E161
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 12:12:37 +0000 (UTC)
IronPort-SDR: fq1Nw0aAYueP3t0cDwvfxnt3S57/VIfLczeEABA76EoO60FmZATyrJT1NZxwofhrFQC/f6Fg8i
 0u3ViiHHAifQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="169100543"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="169100543"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 04:12:36 -0800
IronPort-SDR: ky4ZnAvvXozs/WzUxpEuXUSXAfuM7QQq8za4DJHfbxMR9gSn1gzsi2EdgulYa3wZgNId2SQNSq
 nt9pu0fYwILg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="393835214"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga008.jf.intel.com with ESMTP; 05 Feb 2021 04:12:35 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 12:12:34 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Fri, 5 Feb 2021 17:42:32 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
 check
Thread-Index: AQHW9hcHLYgShgUN5UGRp1lepj4wC6pH/piAgAFBdcD//+XIgIAAXgjA
Date: Fri, 5 Feb 2021 12:12:32 +0000
Message-ID: <aabf782fb5f44932ac7e314ae727b119@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
 <20210204182809.GC750296@ideak-desk.fi.intel.com>
 <aa661df54d8847d0926e8edf61710fcf@intel.com>
 <20210205120451.GA921144@ideak-desk.fi.intel.com>
In-Reply-To: <20210205120451.GA921144@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Imre Deak <imre.deak@intel.com>
> Sent: Friday, February 5, 2021 5:35 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
> check
> 
> On Fri, Feb 05, 2021 at 10:16:30AM +0200, Gupta, Anshuman wrote:
> > > -----Original Message-----
> > > From: Imre Deak <imre.deak@intel.com>
> > > Sent: Thursday, February 4, 2021 11:58 PM
> > > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability
> > > enc NULL check
> > >
> > > On Fri, Jan 29, 2021 at 01:30:43PM +0530, Anshuman Gupta wrote:
> > > > DP-MST connector encoder initializes at modeset Adding a
> > > > connector->encoder NULL check in order to avoid any NULL pointer
> > > > dereference.
> > > > intel_hdcp_enable() already handle this but debugfs can also
> > > > invoke the intel_{hdcp,hdcp2_capable}.
> > > > Handling it gracefully.
> > > >
> > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
> > > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > index ae1371c36a32..58af323d189a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > @@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct
> > > > intel_digital_port *dig_port,
> > > >  /* Is HDCP1.4 capable on Platform and Sink */  bool
> > > > intel_hdcp_capable(struct intel_connector *connector)  {
> > > > -	struct intel_digital_port *dig_port =
> > > intel_attached_dig_port(connector);
> > > > +	struct intel_digital_port *dig_port;
> > > >  	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> > > >  	bool capable = false;
> > > >  	u8 bksv[5];
> > > >
> > > > +	if (!connector->encoder)
> > > > +		return -ENODEV;
> > >
> > > I assume this is needed when called from i915_hdcp_sink_capability
> > > debugfs entry. That one is lacking the locking for the connector,
> > > but is that entry really needed? We print the same info already from
> > > the i915_display_info entry which has the proper locking and encoder
> > > check.
> >
> > Historically HDCP capability added to i915_display_info later to debug
> > CI machine as i915_display_info available as CI logs.  Now the plans
> > i915_display_info  should only show the monitor capability.  and
> > i915_hdcp_sink_capability will check both sink and platform
> > capability.
> 
> Ok, in any case the encoder NULL check and the required locking should be done
> in i915_hdcp_sink_capability_show().
Thanks Imre for review I will send a v2 patch.
Thanks,
Anshuman Gupta.
> 
> >
> > Thanks,
> > Anshuman Gupta.
> > >
> > > > +
> > > > +	dig_port = intel_attached_dig_port(connector);
> > > > +
> > > >  	if (!shim)
> > > >  		return capable;
> > > >
> > > > @@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct
> > > > intel_connector
> > > > *connector)
> > > >  /* Is HDCP2.2 capable on Platform and Sink */  bool
> > > > intel_hdcp2_capable(struct intel_connector *connector)  {
> > > > -	struct intel_digital_port *dig_port =
> > > intel_attached_dig_port(connector);
> > > > +	struct intel_digital_port *dig_port;
> > > >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> > > >  	struct intel_hdcp *hdcp = &connector->hdcp;
> > > >  	bool capable = false;
> > > >
> > > > +	if (!connector->encoder)
> > > > +		return -ENODEV;
> > > > +
> > > > +	dig_port = intel_attached_dig_port(connector);
> > > > +
> > > >  	/* I915 support for HDCP2.2 */
> > > >  	if (!hdcp->hdcp2_supported)
> > > >  		return false;
> > > > --
> > > > 2.26.2
> > > >
> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
