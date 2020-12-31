Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA042E7D9A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 02:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7678989C;
	Thu, 31 Dec 2020 01:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A958B8989C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 01:24:39 +0000 (UTC)
IronPort-SDR: kfIQlyH4Iq+mgVmXqM4A1WZFCybLns34/W6LIu+KTZ+wtqQRrpcuc67RFpEENF4IS6rO+k8ew5
 DpDxYiuTT4sQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="240740460"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="240740460"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 17:24:38 -0800
IronPort-SDR: amtskVEXSgse/ysrwon1HZVIOI2AHwq++tfkgp5/iuUAzxxg5M3vjNgE/50eTMEnP3RSb7S/Kt
 AUvUJ6uVNh7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="563632964"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 30 Dec 2020 17:24:38 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Dec 2020 17:24:38 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Dec 2020 17:24:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 30 Dec 2020 17:24:37 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.59) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 30 Dec 2020 17:24:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4Eh3VqPIit4dq1r6ImTy1Phh92WI0rIN9GK/fxt7pPNItPTLSqlKX9NaFhYOM2DxLC4Dj6S9EveBvMZo93fIrSqi6MWAon60Pf3sQ3aYhaUVAD0/O6LkwmfVN1A6EcG2D6KPBNnfZy5zokQikH7jFii6AgaAvu9KeYdZbA3blGZkyZbfLZNJLvkhzZ7q38KH54Fher26OWp0sAB8XxoZPYvY3RJHQucWcZpk/2Xs+EQF7y9Ggs+pkapLT+P7uEYwq5MJ9cg7z+3oL7s0GhHrFgUGaiYFp3YDTGuHHAgNsUIZnw/YD37y+sR34dRT7Ke0T0z6SJWXnuONk895DBE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQFAmiBGW/RUXqtFZW7sPpWhPevBicmnpznY1NXt2B8=;
 b=JSMuLhqKw27qUrKkd/QyqAPjCcR8czMvLRsFVMstJ2Cbu4qkKb9KM2BmRvJgRF/47KhlS/Cp8OM5DCUBeEvrQjBqc9y1hOFZUyQ3+Sug+/HbWSQl+R8W0c617suuDr3oRoksQIfqrzaSJGrPEYwhNlkeyrY98pisaB2P/PVvw3hvwKmE6RWaQI6ysGWJpeGFU8dBfhouiKvmyRm8uG50/zkLeussEWKHH6ngU7Tii/Rd7xTyOfcH190BpYb3KrX93POBfX+1WLMVeS7iWIb8crX/Hl/0jmh7w8lHyNzkTrmQw5kFMfhldau2pLFMFoCS9Fg1rO5xAsuEp6uIR9f12w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQFAmiBGW/RUXqtFZW7sPpWhPevBicmnpznY1NXt2B8=;
 b=Wyk25aX5MXov4r9F/4XCGMa37r2iXW+x4F1p+lBK8AIUlYTVJCXJhKZZJHHc+2LAvrKznqI4UDxLBagCdjvTHAObNqxUASJtTbnfYWSglm5ZBPixvqbt797+VCEBczNy7673/VGP6Ki3oIGJR9mYUjvppXHEQewJrSSn0jBoXH8=
Received: from DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15)
 by DM6PR11MB4532.namprd11.prod.outlook.com (2603:10b6:5:2aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.29; Thu, 31 Dec
 2020 01:24:34 +0000
Received: from DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::6dce:15c2:ea48:e83]) by DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::6dce:15c2:ea48:e83%7]) with mapi id 15.20.3700.028; Thu, 31 Dec 2020
 01:24:34 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Deak, Imre" <imre.deak@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
Thread-Index: AQHW3pfdfdnG7cFCBEOPAk223QGQ5KoQUy4AgAAXBYA=
Date: Thu, 31 Dec 2020 01:24:34 +0000
Message-ID: <0e8a2ada254a3fb151aa133093a475577151d152.camel@intel.com>
References: <20201230103742.18577-1-chris@chris-wilson.co.uk>
 <20201231000210.GE3894148@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201231000210.GE3894148@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.53.38.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae9b330d-246b-4086-a55d-08d8ad2ad4d1
x-ms-traffictypediagnostic: DM6PR11MB4532:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4532BAB623923A1AFF4622F089D60@DM6PR11MB4532.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wJ91EfpOhmM6TFUWbKpbC5Zo4P+RYpjiV2sNl2pZfWrPbqMXOJZDByOh9RjYuRaM+CejKEkZ2UT2oFi68jbawJtrrTOWeHknsH2SUOH7grTO79WUkNeUUFy+E3PSXDSiNffoWw5NCUEkpE0dkYP6MNKyul1JqWNls9+y8SkU1Dlq7rtlp+qURixxb5/b/JsSQJbLGcNLuALYkqsAGKBuf0x+uw/VVy7MoIh9DSWKkZp/AHnw5tWjI9OYR8PYTJNzpFVnZ35667RKpbiI4TVEogMXrkxSdPZDq2wI5RMLROYgXwSoro1NxumVjUCooJ68THa0aqKAi4o6Fb831MqmhxBPXlVvAdHVnnHpetPn8DIN7RYBFdlASibERACGMPUP4pBt9oALX8c7KaapsoFy1GbLWBXbUjMOh35evFivQigUkDCA1fS9R8SlhUhcQCo4zllmocvLGQ213hZaM1Wzmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(366004)(346002)(376002)(66446008)(110136005)(36756003)(8676002)(66476007)(66556008)(76116006)(6506007)(5660300002)(64756008)(4326008)(4001150100001)(8936002)(966005)(71200400001)(83380400001)(2616005)(6636002)(86362001)(54906003)(6512007)(478600001)(26005)(316002)(2906002)(91956017)(6486002)(186003)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZjhKOGVMcmNyUnVkNFJodnk4QjkrOTVLaml0N29oSDFmZjluWStxbG1qK1p3?=
 =?utf-8?B?dEUwZkdxTnJMWkhkcHBSYmZRbG4yL0tUcXpiSUxYLzIxSVMxeStZRHVVaWZj?=
 =?utf-8?B?T1d5SU9GZDB0cnNxQ3NBRldjL2RQcFk0SGxpVnlTeFdDOWRlNmZkRnE4M0g2?=
 =?utf-8?B?MWlHR1FPUWhFUXhEY243YzYwV0YyVjFSdjdzTGQ4Q0NTYnFxVXBOOFhiVHZq?=
 =?utf-8?B?T0s0Ni80Q1BVNDNNblZQMDBOZ2lMWW10VlIwMVZqdWxRUVk5bUE2bFo0K2w2?=
 =?utf-8?B?UkpTeVJkY0ROWjcwbkpESjZkYVJEUnFuSCt5SVk2ampRdytHSEpUWHdIVFNQ?=
 =?utf-8?B?cVVucCtiNUh5NUJnZE9TL0pkUFhIL3hOU0xnNk5IS1dxM0lYSElvWjlaZUg0?=
 =?utf-8?B?c2txd0FSeGI0elI3MVEwR2k4dU5mYVBLUUgrZkw1cDF4aGxzTEJ1cEczVzhH?=
 =?utf-8?B?aDRJWVUwYi9zU2puTjNMb0VTTUtFdWlXdVhUYnNsbWZkUzIxU2M0L29tK0lM?=
 =?utf-8?B?OVpVNjhlbzFuVTFRMjZJcS9GVFNWbEJOQlJFZ1Nob0RqNlRXcGNBd1N2S3lr?=
 =?utf-8?B?eG5VRmZDZmkrMk5VNlRiUG9oVUpXWFlxdmEybjFFTkMrYkp1amVOa3plV2J6?=
 =?utf-8?B?MFYzTHBvaExHTEVnNlpFeUMySGU0WHVlRXJVYkRCUG9Ld2JiZUlWMnMyMTJh?=
 =?utf-8?B?UmJvSHNMY0dvZlordktBRnRDQkc4NDNYL01qWVYzRHRva0xxMzR6VXBSQVFq?=
 =?utf-8?B?NVlvaDBiOEFweVVuaUlwSTFtYzh3eXZlbEp6RTI1dkp2aHFiaUFaUUdDWXls?=
 =?utf-8?B?WkFSa3A2L3RBc0JOUFM3UFlXRllrb0hNY0xnbFlNVmNiTDAwWFd1U05jL0xH?=
 =?utf-8?B?eHdtSmNYWTlkNTV3K3lUZm9zYUZIL1RMeU83alQxK0EwMTJwd1J1dHlOZmFo?=
 =?utf-8?B?NzdoRkUrZWRQMk5OK2pSY1h3OWR6ZTE3L0dIZnI5T3NjeTFORGo3ZGxuaW4r?=
 =?utf-8?B?cFFxQ2RlaTlMeG5pUFlZN0NsTkNNTzVlVzI2eVhmMW15c1pGdDFuOFNrREdV?=
 =?utf-8?B?eisyL0svbTV5aFAzbEg4RTdRUnB3SUpDWDVMMUVPWmRxekVHSFhGYzd6OVhB?=
 =?utf-8?B?a3FzMThyK21vVUQ1U3AxbXY5RlQ4bmdLa2lkR25OczNSakJwOEEydC9HVlFT?=
 =?utf-8?B?cTJZL1IwU0N2eTRvSjc4RjVuM0FhdkVmekRJTDdHQm5XVm1qSEJITGNoNFp4?=
 =?utf-8?B?VGYwZGNWWkNMZkdZZFFRbUJ0RnhzcTNERjhpTWZmVmdsYzFaVEQ0ampPMVov?=
 =?utf-8?Q?FPT8qz2dWg9DJc89W3LICmqykSyT6I2It4?=
Content-ID: <C32981DA16557B4EAC858D3BA692C5FD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae9b330d-246b-4086-a55d-08d8ad2ad4d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2020 01:24:34.3208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uYm5CBqPKEWR7HvHldLH61pSa6E9iSvUM610e7uz5hC54n0jQB6sl8TvXD8kzDWkj3vpQ9Xv5DYCR33YC1DQTeut6pSAJ9Cf/nd+BkHbcAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4532
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin, 
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-12-30 at 16:02 -0800, Matt Roper wrote:
> On Wed, Dec 30, 2020 at 10:37:42AM +0000, Chris Wilson wrote:
> > The timeouts are frequent and expected. We will complain if we
> > retry so
> > often as to lose patience and give up, so the cacophony from
> > individual
> > complaints is redundant.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8ae769b18879..704e4cebf7f3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1613,8 +1613,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	/* Timeouts occur when the device isn't connected, so they're
> >  	 * "normal" -- don't fill the kernel log with these */
> >  	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
> > -		drm_dbg_kms(&i915->drm, "%s: timeout (status
> > 0x%08x)\n",
> > -			    intel_dp->aux.name, status);

AUX timeout logs are very important for TGL TCSS Display debugging. We
actually can get AUX timeout when the display is connected for the
following reasons:
* If AUX orientation is not configured correctly in BIOS
* If USB3 dock is downgraded to USB2 and SBU/AUX lines are disabled
* When LTTPR/Retimer started to act funny and not configured correctly
by EC
* When we have a bug in the PMC mux configuration because of bug in the
following files: drivers/usb/typec/mux/intel_pmc_mux.c and
drivers/platform/x86/intel_scu_ipc.c
* When user space is not cleanly disconnected all MST connectors for
disconnected MST hub with 2+ display. We will be left with enabled
pipes although the cable is disconnected and next connect of type-c
display will give aux timeout: 
  ** User space fix in Chrome: 
https://chromium-review.googlesource.com/c/chromium/src/+/2512550/ 
  ** WA in driver: https://patchwork.freedesktop.org/patch/395901/ 

These logs are especially important for Chrome based platforms with
type-C. Seeing these logs we can know who is screwing up (TCSS driver,
CB, or EC).

By removing this log we are left with a generic error from
drm_dp_dpcd_access:	
DRM_DEBUG_KMS("%s: Too many retries, giving up. First error: %d\n",
		      aux->name, err);

I know these Aux timeout logs are annoying, but at least can we use the
same log level used for printing aux transaction in
drm_dp_helper.c/drm_dp_dump_access (DRM_DEBUG_DP)
            if (ret > 0)
		DRM_DEBUG_DP("%s: 0x%05x AUX %s (ret=%3d) %*ph\n",
			     aux->name, offset, arrow, ret, min(ret,
20), buffer);
	else
		DRM_DEBUG_DP("%s: 0x%05x AUX %s (ret=%3d)\n",
			     aux->name, offset, arrow, ret);

Thanks
Khaled
> >  		ret = -ETIMEDOUT;
> >  		goto out;
> >  	}
> > -- 
> > 2.20.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
