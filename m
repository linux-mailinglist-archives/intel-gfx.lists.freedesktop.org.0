Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E463D7DC1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723356E0B8;
	Tue, 27 Jul 2021 18:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42076E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 18:34:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="234377535"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="234377535"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 11:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="464383909"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 27 Jul 2021 11:34:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 11:34:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 11:34:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 11:34:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 11:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UqlaEmKQtNFAxkA1dMY9SYL1/1Rewk99JsMDxf8lhDUNpEjgCcClrePSch2djLAsr/j+QpFFIEJogzNmbKIsIx16jUk+Y6I6bZiJplS6FJyI50VqUhNK8QRfs4ApOH0yRFeYM4EypPXc9mkGnzVt2BSWM1Dvorwat90t/KxV0qgNqU3eqsXXeKX92SaawyzagZzm9MsFbIPyLLD21whClrdwJiiHslC6h4XnRgmyKiDCKaBwDcdcNpY1I6zgjMWBL5jiz+5ug0KV4cmAHDagj45Xp5PyHswNAoM4LrA1DFUEa4v3rHa86WB9HSLG4TF2imRr19hAfN8rjJvQgxe/lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azLW/5ZA5J4pjRqSdthMcEKH6q9rZKGaTMN9DQCRj/I=;
 b=dWoo/SgAMcL87MhTglb78iFmG8EQMO7YAIws3OdmACscEIenetIvJ4AvStYwnrls1D4RF457FIRtjbA++BDOWp9s2zPSQCN5e/25OZBhlbavvkfMBF19qujJxUpExD6Kx17W8aVKw2LzR3i8Zij/0wBlgAv/eMQII0eVNBOCaDYtN07K0BWS+KDZx1Kojw4++xtgbqaOinfSF93tV5uTWrgxPOdFpAtypNlQL9OS24rT7uvVol9gjEzftEPhFjclQfs7dyBMwslgc3Jj3xicPODufjyyj2rLbNI1EcvoIy8g/IrJDI3iTLklVUL9evDdBqi7qJHhFyQpEKt6QMn3vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azLW/5ZA5J4pjRqSdthMcEKH6q9rZKGaTMN9DQCRj/I=;
 b=t4XxfO7PCQet3oamSrp+JAkmzJrQevAGE3qRmwwOpDQcoS5qNQuk2APUVpWVbQIOTXqh7Q8LJ56GBIuS7tKXmr/Ay6AxN2notBMH58MFdyZ+4MIZr22QMMPtQ9sMcadWSXWzA9B3OCVL4ZJLh+CukMzi06scvdt1HCjCdj/ewYE=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.30; Tue, 27 Jul
 2021 18:34:29 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 18:34:29 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 01/30] drm/i915/xehpsdv: Correct
 parameters for IS_XEHPSDV_GT_STEP()
Thread-Index: AQHXf+prHYelDeNsy0yduW+nBLiIoKtXLDYA
Date: Tue, 27 Jul 2021 18:34:28 +0000
Message-ID: <a2bb4c3922b85c68bf32459ad8d989fc41d36f4c.camel@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
 <20210723174239.1551352-2-matthew.d.roper@intel.com>
In-Reply-To: <20210723174239.1551352-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2b4f34c-8797-49eb-8dba-08d9512d2b37
x-ms-traffictypediagnostic: BL1PR11MB5352:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL1PR11MB53521B7D41882EC036F405A59FE99@BL1PR11MB5352.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: usAfI62S4t2R3325GL4eD7zN/l3kXnB6YOJszsns7KglpVzBg0rRyPoDNyOmcJWPMjcBm+DpVGD21i5w4i/3Y2gJ+mJaopcIE9DykDbFw6ZVgJQNxkcl2OTilfmfDXm4k7G08wKUk8it/OvoqGNWNR7yPgflcI79JOVbsSz9SIbKlnWAnx0/tPeb8+CvSsxJZrgs8m2iKaUxoXaTwjJxkLP18ujOdH/AsQrvaj9o06zZ8lhCwW+LnXA7E70tXoNRgH5/sTj4hjQm8CYGE/AjVzelCz8z6bh2pSAgpzVXFJGnxYOebV20WEnnkb8tryIZ4JHCcXryJMo35ZrS/82gZFNuJ9bl7LpCu3FAmsiC/ALTzCAW9pkBkmv0MCceH1xmXm6JcbFoq+ne/9GED5C3X98IFMnmz8ZbY+9v0vDUSuYKr02g9MmTI6WVmv6R/37qaoceE23jncZ+I5PJsDmSL4ovOcrNQmUJRe+nL21LYQNKHw9Xz9ykUEgu9ubPMA75k6Vx4O7Th5QDB+W/yZueD8K/kuaWIoV68pVqn2Uff+vATigtnWVQg+u4jOlcW6q/10QGnFbXm4sauLNoeujqvZn5Qhkg5cXED+QzYsy8Az6yAbE92oZfqEqf9dK4GVz9ZLDK3UQJne1IUI1D/rPdyD1FN186T+zZ1JrjHJTUe4MMqGWue0MJUey/1XCfr5ci/YnHsECHZVtcNXOPrji+Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(38100700002)(8936002)(186003)(66446008)(64756008)(2906002)(66556008)(86362001)(71200400001)(508600001)(6486002)(36756003)(8676002)(110136005)(91956017)(83380400001)(6506007)(2616005)(122000001)(316002)(6512007)(66476007)(66946007)(5660300002)(76116006)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFlhRFVUdGszNE1PRzgyYkFBWlM0QmxNRTBOYWQ1WUJid0VzMnV1VUw4bXFJ?=
 =?utf-8?B?bTZXTExJVFQxOWw4YTJzbXdIaSs3SEZ3Qy9ZVVk3cGZ4cXZKWjV1elJRRzQ2?=
 =?utf-8?B?akgrcGdHd05zWXp1dlpoMEt2V3VIeVdZK3ByTGNkTXE4S2ZRZkZ6NXprdEJu?=
 =?utf-8?B?WVRCUHlCOUs2UEZnN0NyKzBwVTNLNFVJdmlHZVBvcVVzdjJwV3dlOGxQK0Z4?=
 =?utf-8?B?WnlQSXVLOGJ2MWR3STU0L1g0Q25MQjM1R01uc1N2c0RkOVo3aW5hOG5DSVBv?=
 =?utf-8?B?VVpZbVBxMEk3bHNzRk9BR3NlMXpXZnVZck9UYlo2ZEkzdHUwb0RMb1B1dGxh?=
 =?utf-8?B?SnlYVEJlMytYS051MzY1VGRCQkcyc1pTQ29CRk9YdjNKZ3lsb1dzbjcyaXhC?=
 =?utf-8?B?TWZmWWo5cm1PZUpuM1JHSDROd2N4UkxUd01rSjByZ3hXWFZZNTc5eURWcEpU?=
 =?utf-8?B?Q1pCeVNmdktVaWIwa0VpV0FPaUwzTG9tYUl5a0RFNElrblBMa3ZDdWdmV29s?=
 =?utf-8?B?T0NFeGk4Y2I5RXZuZEI0TWlXZ1phemxMRHV1UENXSWpoczdiWnVYT1MvNzUr?=
 =?utf-8?B?Z2NJeERQV1VMemNGZVV0U2ErR1lUd2tETlVhazlsWjFvbXR6RVIrTkxTaVpr?=
 =?utf-8?B?UHNBUFJqd0kwcGpKckREMDMwS1RTSitRWnArSFpvMitLQXZNR2RKSUFvTDZK?=
 =?utf-8?B?WXIyM1ZYejNNUk5hNVBHL3pWWkg4dkdQUjdGYS9QaDNCWjdvamg5cS9rQmUw?=
 =?utf-8?B?Ui95NnVKaDFoOTg4L2xWQkJRUmhOM0ZaUTArOEdKWmhCSW55Mm1lSGNmeTdO?=
 =?utf-8?B?OE1OSTFmbUFLYW56YVFxelQrRUw3WldxT085ZjdtRldMVXJPL2ErZ3hPdS95?=
 =?utf-8?B?OW4rbXhEUkp0eWtJZWtvTGVmWUhFQXQwbjRTcUtwM2dtTVByWTUxMld0N3pi?=
 =?utf-8?B?ak1lNWJRZ3FRdGZyeEE1L3U3UDI0UzJoaFpZUnVSUldVNzkrRmZRVVpOa1Iv?=
 =?utf-8?B?WTZVaEtXOWUzMWw3dDh2WjhBYzFscVJNbk95VTY5ais0TzNZS1NGcUNhNEtD?=
 =?utf-8?B?a3dsK2RmVFV5Y2NWb3h3QXdjUFBXVUNvMG81OG1IRnFZU1Q2Rllha3hIR1Ay?=
 =?utf-8?B?bHhxR3FFbFJRTDRDNTBNbEFGY0VjdEVHemlqUUx0S0sxUk9DaStiV2hyTlM2?=
 =?utf-8?B?bzI5YVk5RHJ1K245OTZyZ09DUTUyVllOL1BGQlpsdXFjbmFzK1ZiM2d6OXBi?=
 =?utf-8?B?RW9QVmZaUnpLZ29XYTI5OWNSa3lDRUF0Y0RjNzFsbk5nT0RsdUhvR0ZSRksz?=
 =?utf-8?B?Mm1HcTdyVWE3MTh0aGdVTVBVUmg5MFlHck1ia1Q2R1VLdFo3RFdCZVQ5LzZx?=
 =?utf-8?B?T0dEcWNKRW1QYUI5OFdsV21vRXAvZDg4U09aa2c5Y3VYekdYVFBqK1d6SCtr?=
 =?utf-8?B?ZnliTzVoSjUyU3hsN2lPWC9na1ZnM1gzWCszVHpxcm4zMjZQT2pYQVpOeit5?=
 =?utf-8?B?eC9jbnRYRlNkL0ZNRU0vYUN0dVlHeGdma0hQNDgzRWt0WDVjQlQzNGZVM3pK?=
 =?utf-8?B?a3pLU2luWVZIZmU5eEhyNkE4NkpHMDJFRnE5VzdjblRKdCtnc1ptdFlic1BH?=
 =?utf-8?B?Um9vU24yY3NyOFI2R2RXMkZnQ0VHekdpdGVPZzFKWEFhUVkvd3J4R3g4L1Zm?=
 =?utf-8?B?QUt4dHBVNUJYUnZHZzhZaDU0eGNLeE02bUJxSldMZllSSVBLQ3M2ZVdxckpW?=
 =?utf-8?Q?6UHjN2vGyw9OkHwdpNNEJfcOoHYs2BaUDZp9JWu?=
Content-ID: <E2B0F16425159E489ECAFE69914CC215@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2b4f34c-8797-49eb-8dba-08d9512d2b37
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 18:34:28.8999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TNzRIinXPwIUshPaIOCqDsmrHRFqtbp/XtVzcfv8BXweuFR+NsAUHgw6VkmChXKyhxIAwnszMurYxTfEHkTveg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 01/30] drm/i915/xehpsdv: Correct
 parameters for IS_XEHPSDV_GT_STEP()
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

On Fri, 2021-07-23 at 10:42 -0700, Matt Roper wrote:
> During a rebase the parameters were partially renamed, but not
> completely.  Since the subsequent patches that start using this macro
> haven't landed on an upstream tree yet this didn't cause a build
> failure.
> 
> Fixes: 086df54e20be ("drm/i915/xehpsdv: add initial XeHP SDV
> definitions")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> index d118834a4ed9..d44d0050beec 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1562,8 +1562,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	(IS_ALDERLAKE_P(__i915) && \
>  	 IS_GT_STEP(__i915, since, until))
>  
> -#define IS_XEHPSDV_GT_STEP(p, since, until) \
> -	(IS_XEHPSDV(p) && IS_GT_STEP(__i915, since, until))
> +#define IS_XEHPSDV_GT_STEP(__i915, since, until) \
> +	(IS_XEHPSDV(__i915) && IS_GT_STEP(__i915, since, until))
Is your comment saying that the first parameter
of IS_XEHPSDV_GT_STEP(), p or __i915 must be the first parameter of
both IS_XEHPSDV() and IS_GT_STEP()? The older code is a bug, correct?
-caz

>  
>  /*
>   * DG2 hardware steppings are a bit unusual.  The hardware design
> was forked
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
