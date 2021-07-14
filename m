Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1306A3C8569
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 15:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6836E2E3;
	Wed, 14 Jul 2021 13:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB4E898D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 13:38:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190030089"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="190030089"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 06:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="571176348"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2021 06:38:28 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 06:38:27 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 19:08:24 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Wed, 14 Jul 2021 19:08:24 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp capability
Thread-Index: AQHXd79Gohg9FiwS6UK9S30Yy4RtM6tCFLkAgABmnsA=
Date: Wed, 14 Jul 2021 13:38:24 +0000
Message-ID: <9a1b445644fd4faaa31753286c0d74c5@intel.com>
References: <20210709115420.25381-1-anshuman.gupta@intel.com>
 <20210713075738.23759-1-anshuman.gupta@intel.com>
 <61e6f1836cbd48c0a9d1500aaa26d3fb@intel.com>
In-Reply-To: <61e6f1836cbd48c0a9d1500aaa26d3fb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp
 capability
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Wednesday, July 14, 2021 6:30 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp capability
> 
> 
> 
> > -----Original Message-----
> > From: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Sent: Tuesday, July 13, 2021 1:28 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Manna, Animesh
> > <animesh.manna@intel.com>
> > Subject: [PATCH] drm/i915/debugfs: DISPLAY_VER 13 lpsp capability
> >
> > Extend i915_lpsp_capability debugfs to DG2,ADLP and future platforms.
> >
> > v2: commit log modification.
> >
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Changes looks good to me.
> 
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Thanks for review pushed to drm-intel-next.
> 
> Regards,
> Animesh
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index d5af5708c9da..65832c4d962f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2256,6 +2256,11 @@ static int i915_lpsp_capability_show(struct
> > seq_file *m, void *data)
> >  	if (connector->status != connector_status_connected)
> >  		return -ENODEV;
> >
> > +	if (DISPLAY_VER(i915) >= 13) {
> > +		LPSP_CAPABLE(encoder->port <= PORT_B);
> > +		return 0;
> > +	}
> > +
> >  	switch (DISPLAY_VER(i915)) {
> >  	case 12:
> >  		/*
> > --
> > 2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
