Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DB37B9B3C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 09:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6807910E1BA;
	Thu,  5 Oct 2023 07:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081E710E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 07:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696489544; x=1728025544;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pBq5zSVVn/EsOXB/R+K11l8/w+xlgCEGyVts6jspP0U=;
 b=CG/13+QG50cAoKXuD1PYrubM8m2KqEKCorHGeHYcX4GJaUePI2/Lo7XT
 6TycPBHwfKY3PLFT0JOOVHVlVcMHdrVtlwdjfTipEPeSGm3WOKFJfe09e
 m06mj+FhXIobV8OfceITT5zHrh+GR2h8LTRiZKkUn2+Arjo44Etfn+lYV
 VMqkkhI0cBTr0GdFC9aZTMTCWIOZ8JMY7drA9yiDUSj4oD6Sn5qZNuqm/
 u2RJ1PsxnUihswj3GBCmhMcgtse5MMXWkgJljmoR6+C5sVRf37aQ9eXIp
 WfIjWmLt6KOYwYmCcUyWX4nKfofhEgJUHV06s9GPOZa2tx8cBac9iQTz3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="373774016"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="373774016"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 00:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="781125326"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="781125326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 00:05:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 00:05:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 00:05:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 00:05:36 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 00:05:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARjIumzW5pgCgNwESckvQoT2bZZtJKz53kS2EnXzGaJZ1Zf5HTTPY2rLW/pQnDMz/ib+mp8/9pfEQ5GdBP2ZdqgIOi2aYcESw4mVPXnV0TavyCHSVTgdnsPLEkKN4ZrY3HeOCB2eu/vQEKm8vo92w2hfKT/lqjtBz/jQZCKrswPDzkpvL7orGsYJ4byjOgi9gdkRgHmHZB9RhLmavxVIuGzdfbzL2KLMjWP9LDPAvBAtr/ow8rDln2k5xPMKSPPzkjfTZkFxB6EBRnSuFqVMx6/HI1kKJgKoC6dlmmFk29cVSdBMR7mcsQSpWtEFr2M+J+xhsgT2Jiw1ogPYl/74uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pBq5zSVVn/EsOXB/R+K11l8/w+xlgCEGyVts6jspP0U=;
 b=lhIhv6VlMhAMLCvZOC0keu6gSVhO+eSy7ez9dPgdjWlVAP1vph13yGXgTeG0XV3sbAnz6uw9dOdiftfGNwut8LDeTzdCcURC73Mu9MCZv/1mOiWm9cz1aXSTzR883U6wSd6dV5+7U1R8B7+O4NpahqjJj+4tDBWDvsPBV9LqSD8RHpZK1JDKQ9z72BJCG2umsLDoQ6weulxVL1aLkmBL+vJW54PShUnYTmAVlmZGJowe9/OLxP/0Pqg7oihyKdvlG64OkfM2+HYqS9QOujYYfbbRLdxr+h69yxjEbTiJEtyATIrV+4tuNOGBA1VqsWwkcp/lgOR+eAEazVHF0w8euw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB7341.namprd11.prod.outlook.com (2603:10b6:208:426::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 07:05:33 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6838.030; Thu, 5 Oct 2023
 07:05:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
Thread-Index: AQHZ9q3pfAfY5aw3hUqs4kawTievoLA5ltuAgAEtbaA=
Date: Thu, 5 Oct 2023 07:05:31 +0000
Message-ID: <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
In-Reply-To: <ZR1g2e+gfdeJHad9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB7341:EE_
x-ms-office365-filtering-correlation-id: 61af51ed-2c6b-45ef-67d1-08dbc5717665
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a82g7EaGQDhsMStz/Bhp33BbIkvHaR1gv78H5/Gwvk7JH9IydklOrnyOAk9msglskiyzShZMWtjVPn5+d22kA1hWuutTgS09fb1wQfqkj/tmtuYv9k1g5Hk37G1AlStJ63LxdTAh4zBbYy4AJ8Fc6E0PIg/9gAvMlOWllY2fTebfdXYrQOOXKxHi5wwisGOy2gtcUnzfTidqH4m4Q9Yugp52tCvXcV36dAau/5L93xMdXuMzhxIckirxGKINjKsl697a9/Sh6c8i2n1XpP7pNZ9bC1athgJfiluqx7HB2qkDclelKRhFriGaFaeigH0+YtTsJkmqfwfoPaIE57rejSII0a7euhLQwykGYkykjLOxwv9CuREXncApVnMoX7Kk9pskkEL+9K7emsvZCwmcsrJF9SfDEt2bYwV8/mKGNqTXFwVxbxg2ODj5wk0CXh95MT5KNqRw+z4pvnB1k+SXWAHy7Cqd2FLOEK62txuOCiBJ1XDF5NsnnEVyqElVKEzdqz0Coh4osWYjjtlxYpkBGpuCNmQjuVXAlYibFhfjZ8NxWsNNOB5lDs1xz5v6mMOkDSsGnoKHEqwWM4nSnvY+C4y0Mpof7H5cJliYsNQYLKuMyWoN/LQHNMqQSOAQerZVsWCs5emMAK+mxytQK0LwXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(136003)(366004)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(66946007)(66476007)(66446008)(64756008)(66556008)(6636002)(316002)(41300700001)(9686003)(33656002)(26005)(71200400001)(7696005)(6506007)(478600001)(38070700005)(38100700002)(82960400001)(122000001)(86362001)(83380400001)(76116006)(55016003)(15650500001)(2906002)(6862004)(4326008)(8936002)(8676002)(5660300002)(52536014)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekNZTXRhd29zSTQrS3loWXNpNlNVeG5XRXE3UTJqVDZkOHJHcjh5bDcvb243?=
 =?utf-8?B?NzhUUmI0R2dUcGdudnBLdjRVeFBMVEczZTNQbEJvQ1FyaGpnSHF5VVdnM3dr?=
 =?utf-8?B?bzVFcWdOaHQwbndGbEdaUzkwWXphMU1vc2dhZjEvQUpaVzhYL0FoTkVqV1VN?=
 =?utf-8?B?MmJoaGlZVUNXUDBKSS9pSkw5Nm5wMk82TmFZdm5nYVdTemgzRzNvNm5maitI?=
 =?utf-8?B?cERkRnZJZ09MMVd1Y085MUNENWF0bUxWU1BOd3ExMWRtRkhwOFZuZUttZ3BY?=
 =?utf-8?B?QTVsQXgrOFdxdFNMalc5dlhKWEVKWFJYTVp3TndBMDF6dWFPKzFaWE55RXFn?=
 =?utf-8?B?cEJOcnBPUE5qeXI0aGJkSU1HTitRcHRtOFpWYm0vRkc3VGgrWW10c1g2TTZp?=
 =?utf-8?B?QWhCTXF3SVgzNkJVYWVVUXVwS1czSGhyRUw0ZHF1UlB5Y3hsd0g1cnM4d2FL?=
 =?utf-8?B?TGovUVpFT282UDJQTTdhSFFSUVdSdGFiZE9TV01SMjNERHd2bXJxb2F5OS9E?=
 =?utf-8?B?bUtOTVZnTGJNVDhZTHQwZ0tlbWx5MjBISjBXeVlFRk1uNGZXdW5sV2ZEMVpt?=
 =?utf-8?B?VmJJVU5xaldTWmRHTldvd0JwL2VBSUVUZ0c1SVB3ZWwyMnljL3h1bDZUK3JR?=
 =?utf-8?B?MVJGK0xKem5qZ0trNy80TDlJNmFUN043REMvSFBWd0E4Sk53S0FJbWdZKzVj?=
 =?utf-8?B?ekpZNHlNNmVSVTlubGdKVmxxbXo0Y0Q4OUUxV1pLOG9ISDMybHJsTktWbHdi?=
 =?utf-8?B?NWpNRnlDaUljdmNTTXZ3b2JoOTc1YTlMWjRHT1RuUlVxVzFndkZLVjEvRERw?=
 =?utf-8?B?U1hOa3l0YWFQaUV0MWZiWGN0OGUwMTc0ODJHakNueWQ3WlVTODlBVUxhUys2?=
 =?utf-8?B?S2pJZjdlaU5rWGlpL1YvY3NWSGx0QkxBdEs2NEd4L2gwWlc1UitIZmwxZ2hX?=
 =?utf-8?B?Y0h5Mm1tL2MxbEFFdVdpNnR5RnhtcitFM1lvS2JnaEttQyt5ZUZqZExtd2ZX?=
 =?utf-8?B?TGNkZE1iQ0NxWWxyZTlKR3QrRzY2d0QyV1JpQzk4elZyT2JveWZrVmhLYmhS?=
 =?utf-8?B?YmFHaU5Ea250Z0VORUp4QXRINTAreXQyTk0yU3diS0E4SkVHSmhmY1JHQTh5?=
 =?utf-8?B?YW40SWo5OERUWldONEQ1aFVSb2RIdG9jcHFCK2VUbHJPZkVxVHpSNWVqWDU2?=
 =?utf-8?B?ZnFHbzVmNGNRTlV4czhPMXZHNjhSelI3MmVPODFZT2x3T3VZdHZuU3JyRXhl?=
 =?utf-8?B?ak53N2pLRjlSaVpMYlhqeVk2Sk16MzFXdGl5YlVqbU9WaVJLUDhTN3FVQVlP?=
 =?utf-8?B?ZDM4TGhGV2swRExxUTdET2pWTXRrYTBKN0dZdkhsVFBlNHdzNXE4UmYyZ1FP?=
 =?utf-8?B?TGFqNm82UnRSUDNjL3NyY1pQcmlZNkxqN3dPUTFRWEJ3bE54VnBlWU9GREta?=
 =?utf-8?B?cHZ6YWs4SGdrQm1SWjZwZ0xkUTdIMTFJV2tFVlBIWGxPMUM2Rnh5TEpkVGQw?=
 =?utf-8?B?eHdBOFhQSlBqYTdRSHNHSC9xMmg0cWtONy9nK2ZCdVBUYnZ0VzhsbVNjdER3?=
 =?utf-8?B?WXpjVEQvOUxpT0hLanBna2R5ekk5QnBuRVF2b3ZQaXFkbElVT2FWbnJMYVV4?=
 =?utf-8?B?RlB4SFgrNlc4cVhXdEVkZWRYRVNHeWFwbWpKa0VWSmpHZnZDRldtNDFSTzRH?=
 =?utf-8?B?ZDcwYSttVnpBREN1YUxkTGtKWk85b3dwWDhLUmRGN2VBeEJwT3BDQTZKT3Ix?=
 =?utf-8?B?SFFNV1YrUkpCYVVJWDNLS3RMb04yWml4YnI3T2MxcWp1dFp1YXRHQitWUjdP?=
 =?utf-8?B?RmJ5SWdPVGR0TXQwQU1RbCtjbERBS2FYdFd4NjBYaWFzZ0trbU1xMFg1N3dV?=
 =?utf-8?B?MmFQWUdlUHcxQUlpTW0zVHU5VnJBR1ZOOEdpTG1SV3pQbUI0Mmd3NWkwdjln?=
 =?utf-8?B?R2pPV0JZY2d2RTNRVjd0cU1WN1lGbFRkSndYbjNIMkxHVXBCZFQwdjYrY2Ra?=
 =?utf-8?B?NGtrcDEzdU1nZGt1OTJLcXFoMGtTZ1o0U0x6VWFrUnNXeWdPb0J4VzRUT3NE?=
 =?utf-8?B?YXgwUjUxOW9DRGJmOS95aU45QUJZL1YwempDZkMyQXNTT2ptSEZGV29MaUpL?=
 =?utf-8?Q?NPOc1WcZ4TyPW4QVs8VqFvjzy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61af51ed-2c6b-45ef-67d1-08dbc5717665
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 07:05:31.1001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wNDmW9W0V9jYwho+b9CNm4crrTiX76hOVbuFfTYrWvqkCDEm4FoHtUbEhw1DggU0+ZnBbK131i9GkTcevISgPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaXZpLCBSb2RyaWdvIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgNCwgMjAyMyAz
OjU2IFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1n
ZnhdIFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogUmVzZXQgbWVzc2FnZSBidXMgYWZ0ZXIgZWFj
aCByZWFkL3dyaXRlIG9wZXJhdGlvbg0KPiANCj4gT24gV2VkLCBPY3QgMDQsIDIwMjMgYXQgMDE6
MjU6MDRQTSArMDMwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4gRXZlcnkga25vdyBhbmQgdGhl
biB3ZSByZWNlaXZlIHRoZSBmb2xsb3dpbmcgZXJyb3Igd2hlbiBydW5uaW5nIGZvcg0KPiA+IGV4
YW1wbGUgSUdUIHRlc3Qga21zX2ZsaXAuDQo+ID4NCj4gPiBbZHJtXSAqRVJST1IqIFBIWSBHIFJl
YWQgMGQ4MCBmYWlsZWQgYWZ0ZXIgMyByZXRyaWVzLg0KPiA+IFtkcm1dICpFUlJPUiogUEhZIEcg
V3JpdGUgMGQ4MSBmYWlsZWQgYWZ0ZXIgMyByZXRyaWVzLg0KPiA+DQo+ID4gU2luY2UgdGhlIGVy
cm9yIGlzIHNwb3JhZGljIGluIG5hdHVyZSwgdGhlIHBhdGNoIHByb3Bvc2VzIHRvIHJlc2V0IHRo
ZQ0KPiA+IG1lc3NhZ2UgYnVzIGFmdGVyIGV2ZXJ5IHN1Y2Nlc3NmdWwgb3IgdW5zdWNjZXNzZnVs
IHJlYWQgb3Igd3JpdGUNCj4gPiBvcGVyYXRpb24uIEhvd2V2ZXIsIHRlc3RpbmcgcmV2ZWFsZWQg
dGhhdCB0aGlzIGFsb25lIGlzIG5vdCBzdWZmaWNpZW50DQo+ID4gbWV0aG9kIGFuIGFkZGl0aW9u
YSBkZWxheSBpcyBhbHNvIGludHJvZHVjZXMgYW55dGhpbmcgZnJvbSAyMDB1cyB0bw0KPiA+IDMw
MHVzLiBUaGlzIGRlbGF5IGlzIGV4cGVyaW1lbnRhbCB2YWx1ZSBhbmQgaGFzIG5vIHNwZWNpZmlj
YXRpb24gdG8NCj4gPiBiYWNrIGl0IHVwLg0KPiANCj4gaGF2ZSB5b3UgdHJpZWQgdGhlIGRlbGF5
cyB3aXRob3V0IHRoZSBidXNfcmVzZXQ/DQpZZXMsIHdlIGhhdmUgYnVtcGVkIHVwIHRoZSBkZWxh
eSwgZmlyc3QgZnJvbSAweDEwMCB0byAweDIwMCBhbmQgdGhlbiBhcyBwZXIgDQpCU3BlYyBjaGFu
Z2UgMHhhMDAwIGFuZCBJIGhhdmUgdHJpZWQgMHhmMDAwLiBJbmNyZWFzaW5nIHRoZSB0aW1lb3V0
IHJlZHVjZXMNCnRoZSBmcmVxdWVuY3kgb2YgdGhpcyBlcnJvciBidXQgZG9lc24ndCBzb2x2ZSB0
aGlzIGlzc3VlLg0KDQo+IGhhdmUgeW91IHRhbGtlZCB0byBodyBhcmNoaXRlY3RzIGFib3V0IHRo
aXM/DQpZZXMsIEhXIGd1eXMgcmVxdWVzdGVkIHRyYWNlcyB3aGljaCBJIHByb3ZpZGVkIGJ1dCBi
YXNlZCBvbiB0aGVzZSB0aGUgc2VxdWVuY2Ugd2UgdXNlIGluIGk5MTUNCmlzIGNvcnJlY3QuDQoN
Cj4gDQo+IEkgd29uZGVyIGlmIHdlIHNob3VsZCBhZGQgdGhlIGRlbGF5IGluc2lkZSB0aGUgYnVz
X3Jlc2V0IGl0c2VsZj8NCj4gYWx0aG91Z2ggdGhlIGJpdCAxNSBjbGVhciBjaGVjayBzaG91bGQg
YmUgZW5vdWdoIGJ5IGl0c2VsZiBhbmQgaXQgZG9lc24ndCBsb29rIGxpa2UgaXQgaXMgYSBody9m
dyByZXNldCBpbnZvbHZlZCB0byBqdXN0aWZ5IHRoZSBleHRyYQ0KPiBkZWxheS4NClRoYXQgc2hv
dWxkIGJlIGVub3VnaC4gVG8gbWUsIGl0IGxvb2tzIGxpa2Ugd2hlbiByZWFkaW5nL3dyaXRpbmcg
dG8gdGhlIGJ1cyBtYXliZSB0b28gZmFzdCwgdGhlIGh3IGNhbm5vdCBoYW5kbGUgdGhhdCBhbmQg
d2UgbmVlZA0KdG8gcmVzZXQgYW5kIGxldCB0aGluZ3Mgc2V0dGxlIGRvd24gYmVmb3JlIHRyeWlu
ZyBhZ2Fpbi4NCg0KPiANCj4gd2VsbCwgYXQgbGVhc3Qgc29tZSAvKiBGSVhNRTogKi8gb3IgLyog
WFhYOiAqLyBjb21tZW50cyBpcyBkZXNpcmVkIGFsb25nIHdpdGggdGhlIG1lc3NhZ2VzIGlmIHdl
IGFyZSBnb2luZyB3aXRoIHRoaXMgaGFjayB3aXRob3V0DQo+IHVuZGVyc3RhbmRpbmcgd2h5Li4u
DQpUcnVlLCBJIHdpbGwgYWRkIHRoZXNlIHRoZSB0aGUgcGF0Y2guDQoNClRoYW5rcyBmb3IgcmV2
aWV3IQ0KDQotTWlrYS0NCj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDYgKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCBhYmQ2MDdiNTY0ZjEuLmE3MWI4YTI5
ZDZiMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+ID4gQEAgLTIyMCw5ICsyMjAsMTIgQEAgc3RhdGljIHU4IF9faW50ZWxfY3gw
X3JlYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0KPiA+
ICAJLyogMyB0cmllcyBpcyBhc3N1bWVkIHRvIGJlIGVub3VnaCB0byByZWFkIHN1Y2Nlc3NmdWxs
eSAqLw0KPiA+ICAJZm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0KPiA+ICAJCXN0YXR1cyA9IF9f
aW50ZWxfY3gwX3JlYWRfb25jZShpOTE1LCBwb3J0LCBsYW5lLCBhZGRyKTsNCj4gPiArCQlpbnRl
bF9jeDBfYnVzX3Jlc2V0KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+DQo+ID4gIAkJaWYgKHN0YXR1
cyA+PSAwKQ0KPiA+ICAJCQlyZXR1cm4gc3RhdHVzOw0KPiA+ICsNCj4gPiArCQl1c2xlZXBfcmFu
Z2UoMjAwLCAzMDApOw0KPiA+ICAJfQ0KPiA+DQo+ID4gIAlkcm1fZXJyX29uY2UoJmk5MTUtPmRy
bSwgIlBIWSAlYyBSZWFkICUwNHggZmFpbGVkIGFmdGVyICVkDQo+ID4gcmV0cmllcy5cbiIsIEBA
IC0yOTksOSArMzAyLDEyIEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfY3gwX3dyaXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBvcnQgcG9ydCwNCj4gPiAgCS8qIDMgdHJpZXMg
aXMgYXNzdW1lZCB0byBiZSBlbm91Z2ggdG8gd3JpdGUgc3VjY2Vzc2Z1bGx5ICovDQo+ID4gIAlm
b3IgKGkgPSAwOyBpIDwgMzsgaSsrKSB7DQo+ID4gIAkJc3RhdHVzID0gX19pbnRlbF9jeDBfd3Jp
dGVfb25jZShpOTE1LCBwb3J0LCBsYW5lLCBhZGRyLCBkYXRhLA0KPiA+IGNvbW1pdHRlZCk7DQo+
ID4gKwkJaW50ZWxfY3gwX2J1c19yZXNldChpOTE1LCBwb3J0LCBsYW5lKTsNCj4gPg0KPiA+ICAJ
CWlmIChzdGF0dXMgPT0gMCkNCj4gPiAgCQkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCQl1c2xlZXBf
cmFuZ2UoMjAwLCAzMDApOw0KPiA+ICAJfQ0KPiA+DQo+ID4gIAlkcm1fZXJyX29uY2UoJmk5MTUt
PmRybSwNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiA+DQo=
