Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8BC32B1D6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 04:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B51F89950;
	Wed,  3 Mar 2021 03:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18F189950
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 03:47:25 +0000 (UTC)
IronPort-SDR: vE09iDkUoTWxN6SN4OGWpEI5pw7zOApAzxFhQPtIXt5TvedjEGtxuRQyNNqgXng40MFtjqLA7O
 tuw1Xp6a34Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="183703856"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="183703856"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:47:25 -0800
IronPort-SDR: 3lxpUTfxnsxE7pXs06R98xFUEzDYfXIEcWrCDi1O+4zz8m89NFzeUlX1D+Q0w76n/++kc7a4yj
 4U6OgDeX1qow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="399477083"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 02 Mar 2021 19:47:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 19:47:24 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 19:47:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 2 Mar 2021 19:47:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 2 Mar 2021 19:47:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJcLCyvXQ92bzSt6hHmJz6eu7zBYK+4Ay4U/OVweaS0cPYVIxKmV26oZqxuO6gL/aFQdW0Y117JGUaQfMnoiBjoNlfOw1XwAzODtOXJdjlyAhVBMVbcLFSAdLrJhHB/hfRTRpk1uV5K35tC6JmHcJxUfujxAOjtwaaKosqxkGvaFCT0I5g8wLWmHfuIB0cANgYgy+/QMDmeEf4yJU1CpBOIYjiIZl2TWL72cm/7do1HspLVbXnzYARWn/9PE+65C6TO3FFL+ZSBvInyhbLXvNSHEtbalhCGSfLSCE4ENCpTz6ZYXCEYg27+uvzpmM9AWkJKySu7lIYHUUEO5ehQgRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FKnlmqZVDJESM2cy9JYYyQc6BrBfs9ye/OKeCe8a4dY=;
 b=V0J4cqwyQjUKS6WIahNGm4JcZlUa23DA43S9Zq9p9a0/CJSMjzE6T0ssPnB4bN6bykM5SalG8+FOUiiN8HCvHaKECNytuonctlPxCP30TS6q7H0pUQGREe9JAa4BAPfUkd99x3t1fh6s4094nFNg5TgEHtNq1muC8t/tkFyT9JEQwbD+m9fEPYNWGcuqz2gr3K0kE7+DAcyE978MEoI2bUFFxhkVs6h2lDmLtzI+ODWRNZX7NfNUnpbE03bPO0RSCTeAvMJ73W+JYNjur59YmY7nRGUk83YLaadkb3bziRe+JUe5VRz6QEVfA2xe7aBX3H/+/7DUkvJzDVCV295Xmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FKnlmqZVDJESM2cy9JYYyQc6BrBfs9ye/OKeCe8a4dY=;
 b=kaINFt7DLeotlgV2FSdZIfOfVPJztiCr80zgiNFdBQxn3UyIWsGB1dCvk2R4tSEcnNu9T3JmndddPeGHnSLXNLv3bxg3wWAX0qOSWSDYDCVnKl0nlx+sXR54Xm66F8h3eehobsqSEQ7eiDnPmkgeV37Ohp3tIFhEQ+otZwzjXHM=
Received: from DM6PR11MB3915.namprd11.prod.outlook.com (2603:10b6:5:19c::11)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Wed, 3 Mar
 2021 03:47:22 +0000
Received: from DM6PR11MB3915.namprd11.prod.outlook.com
 ([fe80::fc40:35da:deb:df9d]) by DM6PR11MB3915.namprd11.prod.outlook.com
 ([fe80::fc40:35da:deb:df9d%4]) with mapi id 15.20.3890.029; Wed, 3 Mar 2021
 03:47:22 +0000
From: "Han, Zhen" <zhen.han@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC
Thread-Index: AQHXD8mkUm/firYv0kqmoYBfC4pXiKpxnXCAgAAAqVA=
Date: Wed, 3 Mar 2021 03:47:22 +0000
Message-ID: <DM6PR11MB39156B242F4EDBFCC43A5DE39F989@DM6PR11MB3915.namprd11.prod.outlook.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
 <20210303010728.3605269-4-lucas.demarchi@intel.com>
 <20210303033717.GG2690983@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210303033717.GG2690983@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 605110f0-c077-4943-3284-08d8ddf70d4c
x-ms-traffictypediagnostic: DM6PR11MB4707:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB47070B4DA7BE269A4A0938EF9F989@DM6PR11MB4707.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oYDOLQqoeyG42m5m7GMWeKJ6tFBaZnam65PzYi8DU6Fn7P17VH34X9UF519RRsUHZMWeHr/NIfFGEYnYuWcUDJkhVTIRTeMItF4v6x8Tbw0rjEIGBDpk4KZI5NV3T2PGcyJcwDq55VklJf3ndLplzLwD+NmRjq4RQYqntsmeJRLJi57xoYbpfP/IrTBvVnA5I9u4qFi5pw5nQRqVb4wxuC+yJA74JbSKqD3Ufx4ILjUcEmEqsItFKlju2WevrKRCTZGgLne9oeRMPApgUaLGKbFvZhBN7y9qCJEDx+n+ajL3M/Im3njDt6lXO94bknKAAsODQpdevzdqphoY00C0ds2fo7ZlzesdIkBdwSTxDkMOWx86lOxFnJJ1+OtVqsuGOBBV1gVnal6M/Sh392CW6zH1bY+El/3wJ7wJBDlCOsyi7usRACIRFu7QhJ3rVd2c/Mk73utYCWH5O8/SJFnKOdoNI3zMoExhJzBMM7QEB7sJpr4EJoErhSuHiiP+ox5uX0ibIgQ1+EDgg8v7oKl2inXaKoD7lxDilgLfNXbCNiwEBKjsJ7HZOJ4Ie7oUkvbq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3915.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(346002)(366004)(39860400002)(376002)(83380400001)(110136005)(5660300002)(966005)(71200400001)(478600001)(2906002)(6506007)(53546011)(66446008)(54906003)(86362001)(64756008)(316002)(26005)(66946007)(107886003)(76116006)(66476007)(66556008)(9686003)(8676002)(52536014)(6636002)(33656002)(186003)(4326008)(8936002)(55016002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?EAoih8K5oU+QM1m2jGUBn4tBHnql3ZWG0y+hGBBIMkhO/cVyBafUlcteMizX?=
 =?us-ascii?Q?GpP6ZrLZtgq66ibGPkFL5PDvpLyJ+RRwYwPBuTdAwG0oN3S7ijOxqDoTX1NR?=
 =?us-ascii?Q?feVoDZRmUjRAKOgzOuelFxPtmilwBg+5Tq8oVGrXK94413uk+edx7hK0+GGo?=
 =?us-ascii?Q?p21rK9hXXCT9RIA0zfV9deClAfyUU5oIydY+3ey0XACZ2aP6EpF7HqA6xA2Q?=
 =?us-ascii?Q?vPaJ9hMNjUkmRoA70kOzVcX/C1DpRQVkFDfvgxreDrp2VM9Ew2Rfwym4azhT?=
 =?us-ascii?Q?eAG/8g1X9rUMLsty+B8+vzhC75FPvEKSnJN5WHwcR3dU0CqeO1IVb/GH2Nh0?=
 =?us-ascii?Q?Sfu2icghhI059xHzQw3bz/wJY5Wc1v7ZhOx2ImpS1ITRhXAR3PpDfZjQanSL?=
 =?us-ascii?Q?leJ523MZwkJsK6JFUnC8bpRWVfNffsWkjo5ihT4i0Eulkp9BP9+g6oqbdK8m?=
 =?us-ascii?Q?8Trg4EC4mSZF2r54tsCEwRTxafpB79phIYib1S3PiwsIae1ornVfINT+l5lb?=
 =?us-ascii?Q?+TD5kVhyXoyYhxtmepht2NweJ1gBUrkQOSv7luL5hNUc29+PEzaL/GC05GHJ?=
 =?us-ascii?Q?FIcLCwHqOKPujjyxZOfEsR+urR16YoAqpQ6sfJkMj/csTzgeMDufcLzdefzD?=
 =?us-ascii?Q?jkJHEoiT9ME96XVIRj7Hf9qFC1JxTCdP3Anw0GG3NJvCJKGcLKdYkzXghPBC?=
 =?us-ascii?Q?5+qPV60eZNydOEcP+TyXLMgRcl1w+BoOA9MecHOcs1EhN/nhBlvvYs1ume72?=
 =?us-ascii?Q?rfhOLRqo8bpHW8jc8ELtUSMuzW2KFO4INUbz9RK+KH0HAKI1RR2hCAN81JH+?=
 =?us-ascii?Q?URbHsY7/gjNi0Y8MDfEfrpGFRQ+02rI9uilr1buRZR58JsxaVNS8uApM2e00?=
 =?us-ascii?Q?TLfLKE0Vkm1B9IBWta+5pKdN/xlj36kgfqri8Cg7CxqeVqF3FTmyNpM+FEPH?=
 =?us-ascii?Q?xI4vc2Usi5PG5aJrA4gtOaF9nS6qDJdtveBRDPnnMn8nBo+QWiqv2tW7YEra?=
 =?us-ascii?Q?6lCRzBHUiHRR0pg+U12H3lsNZ3g1RzFt9K7sUBWPg2wfQxD2g6a1B9xIRhFo?=
 =?us-ascii?Q?CE+NSdbxV34qxHxFxpcv5Uh6RzvSDgE3IBeosv+vb+BRgRY1W0as1SGGdQrd?=
 =?us-ascii?Q?w58kQB/2C5GszlTbyyPvv4yWxXotspV6a8lTXvpOO7iXC/nLA9Q5X2/YacWW?=
 =?us-ascii?Q?+N1IjiHK2IjfAWjJ3Jx/Ljp2xm4gqQVCIW1TZVYitWhNHTp9lQYV25dUSaUO?=
 =?us-ascii?Q?0sh7NtLbFn+QTSKNd856tgynOJ40E2PJpmyX0XMFDtlAKFjOE2RInCMevag8?=
 =?us-ascii?Q?htM1FEY+8lNIf1jF04INrzsW?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3915.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605110f0-c077-4943-3284-08d8ddf70d4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2021 03:47:22.1443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J30ShtAG9DiIVW3S9/p8+D6DGw/O/TMWQl4ES2BCu1YYPo2G10xp1azDIJsAFfALZhgu+Nj58blvWIFJm5WgzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC
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
Cc: "Liu, Jianjun" <jianjun.liu@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dear Matt,

Yes, it needs the WA in TGL.  Not sure the ADL-S and RKL.
The issue is different from 1808121037.
Previously, it was not found which exact usage condition needs to disable RHWO in studying the Alibaba issue in SG1, so make this change in kernel. 
Should we move the " disable RHWO " to mesa default setting path? 

Thanks
Han Zhen
-----Original Message-----
From: Roper, Matthew D <matthew.d.roper@intel.com> 
Sent: Wednesday, March 3, 2021 11:37 AM
To: De Marchi, Lucas <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Liu, Jianjun <jianjun.liu@intel.com>; Han, Zhen <zhen.han@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC

On Tue, Mar 02, 2021 at 05:07:28PM -0800, Lucas De Marchi wrote:
> From: Zhen Han <zhen.han@intel.com>
> 
> GPU hangs at RCC. According to Wa_14012131227 we shouldn't have a hang 
> due to RHWO, but that is what we are observing, even without media 
> compressible render target. Feedback from HW engineers is to leave 
> RHWO disabled.

"14012131227" isn't the correct workaround number; that's a platform-specific identifier.  This should be referred to by its lineage number 22011054531 which is common across all affected platforms.
From a quick scan, it looks like this isn't just a DG1 workaround, but also applies to at least TGL and ADL-S as well (and is pending for RKL).

I'm not sure we actually need this workaround in the kernel though.
We're already whitelisting this register for userspace to allow UMD's to apply workarounds to it directly (and UMD's are already doing their own programming of the register for Wa_1808121037).  So it may be best to leave the handling of this additional bit to them as well, especially if the desired handling doesn't quite match the officially documented workaround text.


Matt

> 
> Cc: Jianjun Liu <Jianjun.liu@intel.com>
> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Zhen Han <zhen.han@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e678fa8d2ab9..5235fb70a69a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -739,6 +739,17 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	       FF_MODE2,
>  	       FF_MODE2_GS_TIMER_MASK,
>  	       FF_MODE2_GS_TIMER_224, 0);
> +
> +	/*
> +	 * Wa_14012131227
> +	 *
> +	 * Although the WA is described as causing corruption when using media
> +	 * compressible render target, leaving RHWO enabled is also causing
> +	 * gpu hang when using multiple concurrent render and media workloads.
> +	 * Disable it completely for now.
> +	 */
> +	wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
> +		     GEN9_RHWO_OPTIMIZATION_DISABLE);
>  }
>  
>  static void
> --
> 2.30.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
