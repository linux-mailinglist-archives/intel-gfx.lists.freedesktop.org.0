Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBF3DA61E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 16:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CBD6EDA6;
	Thu, 29 Jul 2021 14:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A8B6EDA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 14:13:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212882074"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="212882074"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 07:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="476411160"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2021 07:13:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 07:13:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 07:13:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 07:13:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZH3QCjYYj8CuQZIVrKVS29rSeyoc95dNjTge4nwUpDbqlsba6iO95rMdKuGgu3Mr0Lj9dlEllRPgcuVOLy+RyE2+tFMzSVxVvs4WKqsL8Su3E2dJYfVYLelJJSOnBxx8/Zl8vuWYzj2YwEjWwlmvpvSeyE4v1nxHIoAsPDKGSGUsenImrNNKtTwEX3Xesc9drrMjECVMi0QAdjm3tihrge8AsgdlYs+0E+uvV2ycyzwQD7LhKPbu2vUHkllIYOCk5ubuH2npEtyV4S/AdhFm1p+E0llPWPWNLUe/83eSf7Ek3MCl12gXgRhVakYkeBkdKoogp/G8sIeS1l3o/DYpzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EsONRDVDXUwzOznP9g80aLOvD1Vt/xwzanxuys3wqzU=;
 b=hCPQmoFmBjA9m8XXt/qFDfFmi2l3P/rspUj461+xpcx1hAxNcb5kFhVgEIy3obpB3CgSBPeRS2QcUvPxJ5gm90CzyVyxeHksUf/v5AJ8fklLeVjOZHccne1O61Qt9M2MtsH6XLruh55JUcMmQDRYKEwUlBGIJEUrmOACECjY9igiIj4mcGmayetZ7H/VKUzU3hmCF4UiXunN3MJlX8OwiG4dviPFDSCKxHLfOdZpWdMYwTL1mPcyqLfcElaxPolt4hvNslSJDV1/E6LcEBtVBpKKuqXCNT2wZyPV5zGV3YEdP6fbCEAWuMXowedxGqLqG1VRucggZlrscPFbOX7Xwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EsONRDVDXUwzOznP9g80aLOvD1Vt/xwzanxuys3wqzU=;
 b=ismbDBpx8URQ6COfmCcqffE6LJ8cbHhayJRAGnvc9MumYGEEsIGMFWZC0UOjkbXFKemn3LRhSTU8JvlZmvwf4r9du216iaNYEp5xbZqt/Ssj37ZuVarV8p/oPrBOZdoCROlO0YC3KhI5GBmSRwCbEAyl9//taxrEJAx1Q3QjtUM=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4208.namprd11.prod.outlook.com (2603:10b6:208:17a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Thu, 29 Jul
 2021 14:13:24 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.033; Thu, 29 Jul 2021
 14:13:24 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: correct name of GT forcewake
 domain in error messages
Thread-Index: AQHXhDx7BuaZJPrYgUOQtLGJJofHmqtZ/00A
Date: Thu, 29 Jul 2021 14:13:24 +0000
Message-ID: <3162c7605fff9d7b23eabf643f7a728cf88b07c9.camel@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
 <20210729054118.2458523-2-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb5bb329-2295-4c2a-cea8-08d9529b0771
x-ms-traffictypediagnostic: MN2PR11MB4208:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4208D6276B015AC713E9BC0E9FEB9@MN2PR11MB4208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sUPv9v1Jwxl7X8vcen5XUUZAbFqkHxLRKY0qafQJc6TjGH1iYrsdEiyVNB9bGFG0WL/PxWDThubJp1DXNkmOWItrLng9MiEoXgon5mewY9McJBGW1qhFxE+izibgkttcSAq92MiJHxxm2GoyYJxL35u/yPLC6Yfcdo3WzjWbD9KGZP8LV82SiR4SfxZHlBZX0IDKU81uecy8ji6lyZDQT2gor/QJzc6P3/6DcoVtPiV7oJ+wjh/he1SRIa+z7CUwSuokJNZtevBdNR2+bUECN0m5u9MFkqf+nlot53kLrYw32PwhvoRZKeJsGqXA4Q2RtDyzRCzGowyJ+z7kgbuwlCHDYX/fHrazIqo1JFJCEJQxRaVkubk7xaFk0J/yz2IgmuxSrsQb0jL7XhJ8y88rtBcc7kcrzJRtElPSrHg6CmAMxJ7MnB6kv+1HTWlFzyBZEu2RW8P5BmfSoVQYIfMFqRsIPfuGZFFeJSESGQFxDBdqav+G5OkPmWxhyV2V/vS/chNCz0jirFzk+l/EgmeVajGuGb122YUdfxGya60fpJ4FdKwIhx6MjrYJod7BrKVUzusxIPQdODPq5yQgKssfBMlVUOQz/HxzUDXcoumgRTRA//GrYoVti4vAA4r8TOcmD96H5FWXPK3R55GkiW0QoGcYPysbI0QxxFCE0cO7FrgFLm78avw5Ac4875N+vLP43+qT5XbZv3HyhkeZAUEMUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(71200400001)(86362001)(15650500001)(66446008)(122000001)(66476007)(66556008)(64756008)(26005)(2906002)(66946007)(6512007)(8936002)(91956017)(76116006)(6506007)(38100700002)(186003)(110136005)(36756003)(316002)(5660300002)(8676002)(38070700005)(83380400001)(2616005)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmUwY1lVN0MvYzc4WGZkU0FDWm1Td2d2TUt4azZmOUNCMUNsR2tPN2NXbTBt?=
 =?utf-8?B?SXpDUnplYzRPNXBhOUZRMk9BSklIdm1xWVlkOUZjWTRRTU1XbHNQNyt4SEND?=
 =?utf-8?B?Z0NWakRMcTV1YmdDdXRDTFZ3dUxFRnl0V2xBSGkwSzBKTVVOeTFhZHJZZWha?=
 =?utf-8?B?VlV4RGorM0lyWnpiYTZyZFhNQ1FPOHFtK2NiNmttb1ZYYWRrTDUyd05ZRnNh?=
 =?utf-8?B?bXY3aTJRZWQzMC9LeVFINU85eVpTR1NQQ3Jic2hZaUdFWTNKM093bGpIcDda?=
 =?utf-8?B?NW1DZHNWZTBZNGpDSUdPSWhUZjFCbXZIT2FUZ0JWbTlVZ3Bxb3lLQzZRTFkw?=
 =?utf-8?B?Mno5d01GYVhrN0tCSG1ieHYvNHNqSk5SYndGa1ZVUmFaaE13YlRlN0VOcXJz?=
 =?utf-8?B?Y3RxVHk3eFNvMzF0MjJvdW9JcnRCbERjaE5vci81dUZDYjdRc1QxVmZLZkNY?=
 =?utf-8?B?UVdMdmtSNUN4K1RNMHljUkhocXJCdWx2QzdEMmN4K3VUSmFMOG51Y1d3aXdD?=
 =?utf-8?B?bzBFaFpSNlhONEE5Z3luNklGOW9jUllOenhHRTNvamFvbytIYU9VZzU5a0xk?=
 =?utf-8?B?YVJiR1NUdE50VlF3NTNSQmFLVTMwUDlYSEcwTjRXQlVZS044Q25uUm9CNEpI?=
 =?utf-8?B?eC9zbUgzd0dZYlhDQXBTTmFyQ1pCVzU1d0p0c0NPZzhBQ09KeWhkckhzU3Jp?=
 =?utf-8?B?Y01rMmxWdG96UEFhaVFqZnZMaUpzUGQ5RWo2cUIyUGg1Y2FNMjcyQ3Q0ZFNa?=
 =?utf-8?B?bk1YRStHdGk4MUlOTk84OGQ5OWUvVFFuK2FKWGZKUW5hQUQra0trUWRrTVVO?=
 =?utf-8?B?WkZLdmkzV1phY1cwYTRCbDlnZitzTmZjMXVXb2wzYmxxTFJ0dmEwZUV5cXMw?=
 =?utf-8?B?bXFzdnJYNmwzRFlGTE1qeGdmRTg4aFVuaEFmY1F0S2VuQ2UvVXFvSm4yZWlj?=
 =?utf-8?B?Zyt5WmNKYnRNcjVoUkZ6WWJ1SnE2Wk1ESlpSQ1lGbzRiNi81azhlMTQ2cFk5?=
 =?utf-8?B?T0ZQb1RxeERFdWVVWU44bm4zR01pdWhhMFAvOFhBY1JWaEtiZExPR2psbzlW?=
 =?utf-8?B?SWtsQkpTSm1iWm42V1c5aVlTY29Jc1VGOEtZd3VZR3RKbmwySEw2bXQzYVo2?=
 =?utf-8?B?ODZ1RGEvQ2JiV28xL2pDRmZFNDd4OTBDZU1NSXhzYnlsOU8yM2RhT0Z4dTBp?=
 =?utf-8?B?bUJhcDVjVjNQQW1XZXJRa2lGYkZCNGNTaFA3dmxpaWhML29pcUh5NjlxeW5V?=
 =?utf-8?B?T0RjdExUM3hyM09GMm5pcjkzQWRkRzdxNzE5ZGJRQU8zdnp0V1BMTWQ5UmF4?=
 =?utf-8?B?ZVlRV0xvaFF0TTBoa0VoK3dndG1ESnpweVI3RXJjVmUyVjVVVkl6LzJib21j?=
 =?utf-8?B?ZWJXd3p5cWM2U0tFVW1lM1hGa3I4WW1FTEV1M2crajRsc3NWK0Z0ZGNxVnh2?=
 =?utf-8?B?dTdtUDlrWnlmbW1UL2hkelIvYVZmUGJGc3M4MzBkM09jZDUxamRsVWsrV1VT?=
 =?utf-8?B?ak1OVUoyZ1VwU2JBNTVHZlUreHV4cHlxWjdsL3Y5TDJsdHhVbTdlLzJ6bWRF?=
 =?utf-8?B?WjhaNWxESmR0b1NVTDNHdHdBektaelh6bjVjbkNFMmxxZXFtQXFrL2h2bk16?=
 =?utf-8?B?bDlGempjRVp5c3NTK3FxVVdIUDNMc1NZZXQvaWs1OHU2eHcxOFk2OWcyMTVy?=
 =?utf-8?B?UWJsaHNuZ2tEazRDODFDanRNQjBPcmU2N3pNUjd3QkFidFdST3FVUjY2YXF4?=
 =?utf-8?Q?iayOvnfOC8U7ynn8ei7pJehGT+45pwfstI0fxYp?=
Content-ID: <7DB7DAFEDC29734F816DFD45B7FAFE83@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb5bb329-2295-4c2a-cea8-08d9529b0771
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 14:13:24.4339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C/dBpl2ZA3JJCzNNPZYcF6+gdZZ357mkQL+jVIJ9zWIrJmghEgl9erc0joLd6p9FroDvIcNan2gTCtsPftepdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4208
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: correct name of GT forcewake
 domain in error messages
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

Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

On Wed, 2021-07-28 at 22:41 -0700, Matt Roper wrote:
> For historical reasons, the GT forcewake domain used to be referred
> to
> as the "blitter" domain; that name is no longer accurate since the GT
> domain contains a lot of additional registers and functionality
> besides
> just the blitter.  Although we renamed the domain in the driver in
> commit 55e3c170950f ("drm/i915: Rename FORCEWAKE_BLITTER to
> FORCEWAKE_GT"), we neglected to update the string that gets printed
> in
> driver error messages; let's do that now to avoid confusion.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> b/drivers/gpu/drm/i915/intel_uncore.c
> index 8cf53f54559d..bca548c81572 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -64,7 +64,7 @@ static void mmio_debug_resume(struct
> intel_uncore_mmio_debug *mmio_debug)
>  
>  static const char * const forcewake_domain_names[] = {
>  	"render",
> -	"blitter",
> +	"gt",
>  	"media",
>  	"vdbox0",
>  	"vdbox1",
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
