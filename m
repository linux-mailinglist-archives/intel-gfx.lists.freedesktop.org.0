Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1BF29CF2D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 10:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5956E4BA;
	Wed, 28 Oct 2020 09:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141236E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 09:22:30 +0000 (UTC)
IronPort-SDR: BnpXzMEh7PEYXbrn7IDMoRMCtod0F5ioNS+3L0OpLv60Wj2SV7yPweaGku+YKg68YPJFOd0hov
 UhleSppO/tlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="185986285"
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="185986285"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 02:22:29 -0700
IronPort-SDR: Ddaj/owkpOx6nI3qjkiu399JVa8NIFP/keZb76LEcbSMM1OJTObeIyRxEgLwZT+Y/14cOINpNS
 OtIi2jwoQbnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,425,1596524400"; d="scan'208";a="350933173"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2020 02:22:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 28 Oct 2020 02:22:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 28 Oct 2020 02:22:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 28 Oct 2020 02:22:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 28 Oct 2020 02:22:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4N0CVJQKotyDGx0kfoIPyVmS5FYk9mFgEbep1XIcpLCMPz1ZNET0V3XIehNybbhbODA1KYQ1mSVgqo0/yjtdoI5HLc3YgFJMZNMqym/Wsfx16Ws19SBrsrDYQXEd7+Nr6bVkigB21gZfA0kAwUminBljP9KKa9oyaQxffLS6sslyfEnqYfCHgqDjMOdJ6q+LT4oiTkc5QIjoxJ3XC2E4tjgKHubIZgoKpxlyeouPQmkMdAIhn11UTzgp7mB2686IhG2mJAg92ztydgWgcWG81M+2OFY7+GJCkVaJfY9Wgr50uIPO6W9Bnx7rrTtO97lV3zJVcCE3IwfPw3LEu6KNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K+woBtTgoRLe6LCbHsmiqJbcLP/5hq4cOhM52r24mHk=;
 b=AAktd2d889ksuWhLRRYMEkq9UKGpwHVCLxgc60SMBRKZhbnCA2G5R/Hc1BPue4IpMeBeMWVMezZMj3ZPFUA/vf8oqzaGRncm91MO1huBIi+8ac0pESyR0T+CLGR3FqATOjuUlh4CSZTW4L+HYwVGiTWQHotfSpcAmZ5fTek5uNSgClh02zI3M8abIapNW3ahv/86lHBROaaeKJKUtWPeh00bXAkHJCQX/LWhc7zzp1mN6qOxCLtX6aLBi9BnP/lBOzm9LTGpyKVrLwnTFEsp4Ffu4zXWt9yJ1aYqSYdt3k4D8D4PFDFCRGHmCyXWLpXTQn4g7HOSRaStRNmpEgZo/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K+woBtTgoRLe6LCbHsmiqJbcLP/5hq4cOhM52r24mHk=;
 b=j+eBlhT86EZm4MqFWHedYvJiw13V1PjTmBI8GGKFhPP5dPufdfRyuLo1KCGfRcOkIaRz3++xM088Hq3uNdr0H57gm0zOZbK70vfXhNeNDlf26DJ6KXxGLMPSghMNZBEYj7BVXZyREmEh+40gi3RaBnrLdxcm/cG52T2OmhigCmA=
Received: from BYAPR11MB3014.namprd11.prod.outlook.com (2603:10b6:a03:91::17)
 by BYAPR11MB2647.namprd11.prod.outlook.com (2603:10b6:a02:be::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Wed, 28 Oct
 2020 09:22:25 +0000
Received: from BYAPR11MB3014.namprd11.prod.outlook.com
 ([fe80::64d4:f49d:bb3a:689d]) by BYAPR11MB3014.namprd11.prod.outlook.com
 ([fe80::64d4:f49d:bb3a:689d%6]) with mapi id 15.20.3477.028; Wed, 28 Oct 2020
 09:22:25 +0000
From: "K, SrinivasX" <srinivasx.k@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Thread-Topic: [Intel-gfx] drm/i915: Acquire connector reference before
 prop_work
Thread-Index: AQHWrEy5CbdlrDDNfEuGOt/tlOOTC6msuiGAgAAE0+A=
Date: Wed, 28 Oct 2020 09:22:24 +0000
Message-ID: <BYAPR11MB3014461D7BE954345ADAD1DDF9170@BYAPR11MB3014.namprd11.prod.outlook.com>
References: <20201027103335.3725-1-srinivasx.k@intel.com>
 <20201028090439.GJ29526@intel.com>
In-Reply-To: <20201028090439.GJ29526@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [49.205.250.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b13a977-6bc1-475d-9f2f-08d87b22fb81
x-ms-traffictypediagnostic: BYAPR11MB2647:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2647BEE899E2D3C9C9FD483AF9170@BYAPR11MB2647.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b5mCx+3F1ea+GV1ShuBrZ4SLAeZ2zetrGFvpxH8N0r/7gKI7AZ4w7t7biIVGY3LVuHgEgBBAJapXC5VeIunFtBE3iec8h3jjCOtD52BTNdKE9rl5tGsCzhD7PXJVmBFrOJmQ+yKYoLlcyh8El1lTGEZuHHCDimTHaAGZqKfm/wxNc7qB7nTdn7yFrR5qH5qm9lxOCNLRnAL49uTqySv0Kr7UJ1A4dRw/2hJ1pfwE3HJauYBKW1+bEayC/tLF0mqcRfX2Q59/wk2FFp/WQrEDNgCH4/l12G62eHkyrnnQTVgovmC5b3mdcqVPnTJLtv6dWok0/i/K9BAJ0gvHVXKsoNhdriKxsH2/ReYDnHCg+QE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3014.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(39860400002)(136003)(376002)(6636002)(33656002)(8936002)(4001150100001)(86362001)(110136005)(2906002)(54906003)(4326008)(66476007)(83380400001)(316002)(107886003)(7696005)(66946007)(66446008)(64756008)(66556008)(53546011)(6506007)(8676002)(76116006)(55016002)(478600001)(71200400001)(5660300002)(26005)(966005)(186003)(9686003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: TWBRgduXCwobE/cS37w7gA23qb3x+2g59bsBNgGeuGTZgHvQzC6AZCzxLe1NtdRoc2Wt9l8SIpOhgg4r0gM3tYWPYEapu/9X7OL5nYODkL6SxGgTRDX3WOQi+Jzy8I8IWOPxdVxTQ4Rd2z88pO9A6Qp5QDUvuPVizmY5fhkB1nMPlOunn0GfloywdtntwoIejR1g/SMDvpXrfglyl4K4l2rXJkipG+f+DyzvVCBkzh3naxCOU1j4MC0Kt+6SprKzORWsYG6VEBKom1hsRvDU+OVVquz0QcxOc/MSVPbWUpCqkMixPAylHH/b72AXxCltQ7hLyBUxhMad+CZfRv4Ub4FDH4gh5YXgSda4umoW2B6lH/vJMENOb21YFMyTdyxyJ/MFwRmhvqW5c2YENR9JwQbHVMw0X1dumz+zFXgABpz2FqndLgQbBP4yXu8r1K478909z0giptX2neRNKebJAOp+SzzDMU+YHt7CXTglsuX/PZCaXemzPAfhWanVvhLOz7lbFcX/+QfMWP9/n3n1oZA8zld2FyhihE6Bwe1ejMU4cK1PBLL0bw/qAfVNc92IDn8HrZ1L1rLvoaxLpwr5mBLBkOtXamtGQ7RS5AxqGJadFJs7rFwZuqhsQ2h9H+cJ7Ju+VoAETWsWbiPwCS/Yqg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3014.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b13a977-6bc1-475d-9f2f-08d87b22fb81
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2020 09:22:25.0696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T68IxxfUMrfkcy3BnIPfTeMPYupavGPcKDm8GMOWmqZ9krps5yt/eXOKUO71F7L1KdONwY9BWmyJr18ikrHgaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] drm/i915: Acquire connector reference before
 prop_work
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

++Tejas

-----Original Message-----
From: Anshuman Gupta <anshuman.gupta@intel.com> 
Sent: 28 October 2020 14:35
To: K, SrinivasX <srinivasx.k@intel.com>
Cc: intel-gfx@lists.freedesktop.org; seanpaul@chromium.org; Pandey, Hariom <hariom.pandey@intel.com>
Subject: Re: [Intel-gfx] drm/i915: Acquire connector reference before prop_work

On 2020-10-27 at 16:03:35 +0530, Kamati Srinivas wrote:
> From: Srinivas Kamati <srinivasx.k@intel.com>
> 
> "Content protection type change" igt test results in kernel taint. 
> Everytime after prop_work is done we are also giving up connector 
> reference, which is resulting in ref count underrun.
> 
> Before scheduling prop_work acquire connector reference.
I has been alreayd taken care at
https://patchwork.freedesktop.org/patch/397215/?series=82998&rev=2
> 
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Srinivas Kamati <srinivasx.k@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c 
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index b2a4bbcfdcd2..beedd672b21e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2210,6 +2210,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	if (content_protection_type_changed) {
>  		mutex_lock(&hdcp->mutex);
>  		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +		drm_connector_get(&connector->base);
>  		schedule_work(&hdcp->prop_work);
>  		mutex_unlock(&hdcp->mutex);
>  	}
> --
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
