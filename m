Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C12D2F7DA5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 15:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FF56E342;
	Fri, 15 Jan 2021 14:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0B56E342
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:06:22 +0000 (UTC)
IronPort-SDR: VaaZXwXruePtoQNzKjyjyOitn2liUeAt1o9CzAwLReZOaHAccnT7A8uAUHl2+j4Ct8fSRJVgvJ
 MKJmeKYwaaBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178699804"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="178699804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 06:06:21 -0800
IronPort-SDR: sIsTkiWKCnWVfpnPhquX6SjgGwk2gMW46GTZ+KDYLBNSHulMxKqn6ZkeMuO7XbghyUoeaWgm5d
 eCC6JaDHqtTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="352818763"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Jan 2021 06:06:21 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Jan 2021 06:06:20 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Jan 2021 19:36:18 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 15 Jan 2021 19:36:17 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Set error value before returning in
 intel_hdcp*_disable()
Thread-Index: AQHW6x+0T/xASFKdy0KCgF3Xy3Dv+6ooIbmAgABufqCAACh60A==
Date: Fri, 15 Jan 2021 14:06:17 +0000
Message-ID: <a68c1660b6a24b5fb27add642423deef@intel.com>
References: <20210115092034.8804-1-chris@chris-wilson.co.uk>
 <87bldqpjxi.fsf@intel.com> <c33ab4b0726544a8b5780018ced09758@intel.com>
In-Reply-To: <c33ab4b0726544a8b5780018ced09758@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Set error value before
 returning in intel_hdcp*_disable()
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
Cc: Sean Paul <seanpaul@chromium.org>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Gupta, Anshuman
> Sent: Friday, January 15, 2021 5:39 PM
> To: 'Jani Nikula' <jani.nikula@intel.com>; Chris Wilson <chris@chris-
> wilson.co.uk>; intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; C, Ramalingam
> <ramalingam.c@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Sean Paul <seanpaul@chromium.org>
> Subject: RE: [PATCH] drm/i915/display: Set error value before returning in
> intel_hdcp*_disable()
> 
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@intel.com>
> > Sent: Friday, January 15, 2021 4:05 PM
> > To: Chris Wilson <chris@chris-wilson.co.uk>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>; C, Ramalingam
> > <ramalingam.c@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Gupta,
> > Anshuman <anshuman.gupta@intel.com>; Sean Paul
> <seanpaul@chromium.org>
> > Subject: Re: [PATCH] drm/i915/display: Set error value before
> > returning in
> > intel_hdcp*_disable()
> >
> > On Fri, 15 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > drivers/gpu/drm/i915/display/intel_hdcp.c:886 _intel_hdcp_disable()
> > error: uninitialized symbol 'ret'.
> > > drivers/gpu/drm/i915/display/intel_hdcp.c:1951
> > > _intel_hdcp2_disable()
> > error: uninitialized symbol 'ret'.
> > >
> > > Given the comment that this error reflects the status of all
> > > connectors within this MST topology, I opted to use -EBUSY to
> > > indicate not all were ready.
> > >
> > > Fixes: 2a743b7b8a8b ("drm/i915/hdcp: Configure HDCP1.4 MST steram
> > > encryption status")
> > > Fixes: 899c8762f981 ("drm/i915/hdcp: Configure HDCP2.2 MST steram
> > > encryption status")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Cc: Sean Paul <seanpaul@chromium.org>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> >
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index db8dff2eeb0a..2be4822b91a0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -883,7 +883,7 @@ static int _intel_hdcp_disable(struct
> > intel_connector *connector)
> > >  	 * until it disabled HDCP encryption for all connectors in MST
> > topology.
> > >  	 */
> > >  	if (dig_port->num_hdcp_streams > 0)
> > > -		return ret;
> > > +		return -EBUSY;
> Please return 0  as a fix to static analysis warning, It is not an error.
> Above condition will only true for MST case, so it always was returning
> return value from stream_encryption().
> 
> Thanks,
> Anshuman Gupta.
Floated a patch to fix this https://patchwork.freedesktop.org/patch/414427/?series=85917&rev=1

Thanks,
Anshuman Gupta.
> > >
> > >  	hdcp->hdcp_encrypted = false;
> > >  	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder,
> > port),
> > > 0); @@ -1948,7 +1948,7 @@ static int _intel_hdcp2_disable(struct
> > intel_connector *connector)
> > >  	}
> > >
> > >  	if (dig_port->num_hdcp_streams > 0)
> > > -		return ret;
> > > +		return -EBUSY;
> > >
> > >  	ret = hdcp2_disable_encryption(connector);
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
