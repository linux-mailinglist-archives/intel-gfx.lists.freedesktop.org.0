Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00B4310670
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 09:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08DBD6F3FA;
	Fri,  5 Feb 2021 08:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC436F3FA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 08:16:34 +0000 (UTC)
IronPort-SDR: 1NVlL8zlEw8YIgVShraqhgzvImgVRMizJmMIV7EVhqmCFVQE85z8GBH/f9jJSRrDrBoVxFZdL8
 nh68Qo9gIRvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="177894230"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="177894230"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 00:16:33 -0800
IronPort-SDR: WkM2h5DEecFv2S/O+N1AwdQWQPUd8RQ4xZrHzGP1Gn9dt2LGe3E5POPBpuTreSvnyqhSyjnGvx
 fNpfETsmd1Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="393757095"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga008.jf.intel.com with ESMTP; 05 Feb 2021 00:16:33 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 08:16:31 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Fri, 5 Feb 2021 13:46:30 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
 check
Thread-Index: AQHW9hcHLYgShgUN5UGRp1lepj4wC6pH/piAgAFBdcA=
Date: Fri, 5 Feb 2021 08:16:30 +0000
Message-ID: <aa661df54d8847d0926e8edf61710fcf@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
 <20210204182809.GC750296@ideak-desk.fi.intel.com>
In-Reply-To: <20210204182809.GC750296@ideak-desk.fi.intel.com>
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
> Sent: Thursday, February 4, 2021 11:58 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
> check
> 
> On Fri, Jan 29, 2021 at 01:30:43PM +0530, Anshuman Gupta wrote:
> > DP-MST connector encoder initializes at modeset Adding a
> > connector->encoder NULL check in order to avoid any NULL pointer
> > dereference.
> > intel_hdcp_enable() already handle this but debugfs can also invoke
> > the intel_{hdcp,hdcp2_capable}.
> > Handling it gracefully.
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ae1371c36a32..58af323d189a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct
> > intel_digital_port *dig_port,
> >  /* Is HDCP1.4 capable on Platform and Sink */  bool
> > intel_hdcp_capable(struct intel_connector *connector)  {
> > -	struct intel_digital_port *dig_port =
> intel_attached_dig_port(connector);
> > +	struct intel_digital_port *dig_port;
> >  	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> >  	bool capable = false;
> >  	u8 bksv[5];
> >
> > +	if (!connector->encoder)
> > +		return -ENODEV;
> 
> I assume this is needed when called from i915_hdcp_sink_capability debugfs
> entry. That one is lacking the locking for the connector, but is that entry really
> needed? We print the same info already from the i915_display_info entry which
> has the proper locking and encoder check.
Historically HDCP capability added to i915_display_info later to debug CI machine as i915_display_info available as CI logs.
Now the plans i915_display_info  should only show the monitor capability.
and i915_hdcp_sink_capability will check both sink and platform capability.

Thanks,
Anshuman Gupta.
> 
> > +
> > +	dig_port = intel_attached_dig_port(connector);
> > +
> >  	if (!shim)
> >  		return capable;
> >
> > @@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct intel_connector
> > *connector)
> >  /* Is HDCP2.2 capable on Platform and Sink */  bool
> > intel_hdcp2_capable(struct intel_connector *connector)  {
> > -	struct intel_digital_port *dig_port =
> intel_attached_dig_port(connector);
> > +	struct intel_digital_port *dig_port;
> >  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> >  	struct intel_hdcp *hdcp = &connector->hdcp;
> >  	bool capable = false;
> >
> > +	if (!connector->encoder)
> > +		return -ENODEV;
> > +
> > +	dig_port = intel_attached_dig_port(connector);
> > +
> >  	/* I915 support for HDCP2.2 */
> >  	if (!hdcp->hdcp2_supported)
> >  		return false;
> > --
> > 2.26.2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
