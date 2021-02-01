Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1991830A5F2
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 11:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A986E452;
	Mon,  1 Feb 2021 10:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC426E452
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 10:57:51 +0000 (UTC)
IronPort-SDR: u5QlD2ynHAo5H914FFkzXEAWnWbVb95Xfsb/XfWcmxmFQ7OL+XSnbD8Zyvk+MrseFH2Oiw1bz9
 8dXkgb03VsOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="159834542"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="159834542"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:57:51 -0800
IronPort-SDR: blHAfows8M22sy7MsnmvqoiWHycb8AyDLofhvnmSdKADDNdyxDomC6u3/HYyofBQbg/KZSn1ab
 Kyc6wYqblTNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="575067991"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 01 Feb 2021 02:57:50 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 02:57:48 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Feb 2021 16:27:46 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 1 Feb 2021 16:27:46 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
 check
Thread-Index: AQHW9hcHLYgShgUN5UGRp1lepj4wC6pCyPkAgABcXaA=
Date: Mon, 1 Feb 2021 10:57:46 +0000
Message-ID: <0b39733bfb214baea966b8baeb789250@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
 <9dffbc85-a52d-e1e4-60f9-5d3f92807dfa@intel.com>
In-Reply-To: <9dffbc85-a52d-e1e4-60f9-5d3f92807dfa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, February 1, 2021 4:25 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: HDCP capability enc NULL
> check
> 
> 
> On 1/29/2021 1:30 PM, Anshuman Gupta wrote:
> > DP-MST connector encoder initializes at modeset Adding a
> > connector->encoder NULL check in order to avoid any NULL pointer
> > dereference.
> > intel_hdcp_enable() already handle this but debugfs can also invoke
> > the intel_{hdcp,hdcp2_capable}.
> > Handling it gracefully.
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
> >   1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ae1371c36a32..58af323d189a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -135,11 +135,16 @@ int intel_hdcp_read_valid_bksv(struct
> intel_digital_port *dig_port,
> >   /* Is HDCP1.4 capable on Platform and Sink */
> >   bool intel_hdcp_capable(struct intel_connector *connector)
> >   {
> > -	struct intel_digital_port *dig_port =
> intel_attached_dig_port(connector);
> > +	struct intel_digital_port *dig_port;
> >   	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
> >   	bool capable = false;
> >   	u8 bksv[5];
> >
> > +	if (!connector->encoder)
> > +		return -ENODEV;
> > +
> 
> For connector->encoder check, I feel the correct place should be in
> function:
> enc_to_dig_port(), where we should return if encoder is NULL in display_types.h
@Jani could you please provide your Ack, if enc_to_dig_port() is the correct place to do connector->encoder NULL check.
Br,
Anshuman Gupta.
> Currently we assume encoder is not NULL and try to check encoder->type, which
> might break in case of MST.
> With that change, we can simply check NULL check for 'dig_port', as
> intel_attached_dig_port(connector) might still return NULL.
> 
> Regards,
> Ankit
> 
> > +	dig_port = intel_attached_dig_port(connector);
> > +
> >   	if (!shim)
> >   		return capable;
> >
> > @@ -156,11 +161,16 @@ bool intel_hdcp_capable(struct intel_connector
> *connector)
> >   /* Is HDCP2.2 capable on Platform and Sink */
> >   bool intel_hdcp2_capable(struct intel_connector *connector)
> >   {
> > -	struct intel_digital_port *dig_port =
> intel_attached_dig_port(connector);
> > +	struct intel_digital_port *dig_port;
> >   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> >   	struct intel_hdcp *hdcp = &connector->hdcp;
> >   	bool capable = false;
> >
> > +	if (!connector->encoder)
> > +		return -ENODEV;
> > +
> > +	dig_port = intel_attached_dig_port(connector);
> > +
> >   	/* I915 support for HDCP2.2 */
> >   	if (!hdcp->hdcp2_supported)
> >   		return false;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
