Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8797737B94
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6B410E3CB;
	Wed, 21 Jun 2023 06:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2E910E3CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 06:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687330796; x=1718866796;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JM2933ad4zNTjq83p+zctiQQxEMLANfR+KEhxE0XAc8=;
 b=mi6MFtk3Ij6s0g1s69XpOS7+65OIENb+mURwtsZYwHQGfhOF2Rou6uDj
 ZpcEEKlZmJZ0DekkNC71fbDRs9FLh8Yt2imOIvOkmWy6ziHNIBuG2r09i
 6q6SWdpePAC3uyTt2e2ZzHn1TFx0fwsotyjymqoClJoD78K+2V/gF9YIe
 tS1nhNM55U4I/Mi6xwH4KwvzrcXqHiRFNTXh7f4cgaU1hwhJDufX//u2m
 Pe3aRCSMytt53uXYQEqLpCBniTod9AZXisPAHq7nZTHhcaGFlS1dKdEUA
 zeFpk+ZJ3On/8UyoSIxA8k3Crx3CZgd8ieoSdVK/G2yEitemYA8PDKojl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344826660"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="344826660"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 23:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804253160"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="804253160"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2023 23:59:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 23:59:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 23:59:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 23:59:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 23:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLa7U+SDDnSs91+MtuBJgJhdJ4z49yUGZH+/UUGVSK196vKOkLZTXMHuOtqpeIpFqG/vArCZnD6A1n04zzWzMh6vV8wjq/P3nxdCMSnJnxOX6rpZgdReiCvrrTl7HxeyttOXeKZ8PmH+segmLqH8ETjTRjE2Kt9AxhrJ/NXjqDhk/PE9o665QL9lmGYCPx68a4u//HRRZUDg3gds9uenc1WiGIC7Y2b9rhV6QzgfhEHQTzhGzhIIGPRIDcVcgZz7Edi8UKpOVMukb65sHDFxYglcz3Nm/dGyRsrQ/KaLZaVfB6vexNu7r+AmobGbP9h5SBKX7zDjasUav3vpHGR4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JM2933ad4zNTjq83p+zctiQQxEMLANfR+KEhxE0XAc8=;
 b=oHvRNUcjahsVIcxAA6IiwcyrYVhMzo4qRk+TXBHBjcZOZ+Oq2lVr/MECIoQnXrylIBRd8tvMdGmbP5pWtbHQyXi94nSJspaHQf7qnkuWCHHJtN1QQ5J1JcfIAxwgJp3MVA1EgzRe+sSVVveMyl0a7G1qHQGsWS5zmrHGuWIGvS43HWGHGH5ABgHj613HfhGSCn602G22MXJuVXwdAUcQYmzHMsglGW93SQIN0hzihBJ0AT5MF0/IBakZ3XgCZW/lr3fJru0MevgHgnuQhm2RE0vdMnzLmAPv6yp9Art4jMoxDquNlxoeEVY47BsDMBPMmUVMUrFMpvgQAGDuMJr8LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Wed, 21 Jun
 2023 06:59:45 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889%3]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 06:59:44 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr: Use hw.adjusted mode when
 calculating io/fast wake times
Thread-Index: AQHZo2jtfeSxDbLlgk2NkDxSiDxNwq+U1L0g
Date: Wed, 21 Jun 2023 06:59:44 +0000
Message-ID: <MW4PR11MB70545CE7E4E564111127668AEF5DA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230620111745.2870706-1-jouni.hogander@intel.com>
In-Reply-To: <20230620111745.2870706-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ1PR11MB6180:EE_
x-ms-office365-filtering-correlation-id: fa4baf50-0eb7-46de-c709-08db72251833
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MTld8K2QSxfloUVT4P6rEA7mqX4tsiCLLsYB5ZaD+PKfJkz05B27z2SpRbR4jRU8RNV6GkVtMyRRO5CFlvT0fy93+/6NQCPjzB+cGW61zIiJuwIZkNlrLcAAg/yWimC3iah/6PzsRe4Td3lWIKG+EK1xwThohrUEYTSmEgqBsInSim0lwyxuFjtkaI15GLsQbxIDtCXoYf1HjjgAvzqolIeJl9VW/ZiMvhvJ6dAXftriK+sLbBVS3vvr73+9deYf/4lMZr3NqnpBXM16mhRHe4P9FmHLKfUOywLB4b59IW59JGHthGbG4jZuw6MBDFJwK6P/LFe4EoGeIdM4O8R1CF+SM/0a2q4XC4XoBlHFXOhMopBCIuaWAmCqN0mAYApnGvlXEJPoJHN/gsfGr5oIkdXB2hacyDVbSM4nM5D0gwdvmSkapkb4knnW1amCcqZ4KPYbv9ykZ8l/DVfl0qY8TskS4TUUIXfZbiXKzJx6TNZppgxMpqmO6Z/PXNOtdruhhvMH3+CDxEh7+PhteN8zvmwz/kdidxG4pJFPkMhZyn/U7d9X1t1JQxEG0CBCFgpsb0pw9GQeqEIKvxjWXIBB5HVXRBlTRCtxDp2inimgV9Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199021)(82960400001)(86362001)(83380400001)(2906002)(122000001)(38070700005)(52536014)(76116006)(5660300002)(110136005)(66946007)(66556008)(186003)(8676002)(8936002)(66476007)(64756008)(66446008)(53546011)(41300700001)(478600001)(55016003)(9686003)(6506007)(38100700002)(966005)(7696005)(316002)(26005)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkJ6eGpzdzhjaGxYbDNZYzVJc1dxelVBOS8yVytRRkdmeUd1NXFsRnh6VW5w?=
 =?utf-8?B?TG5zZFN2cmxIUERqcERNS0lTQmpmNlN5Z3l2dGs3QjZDNVI3WjdjM0lFakd6?=
 =?utf-8?B?Z3AxeWdmYWdjOGFGVHVnRWlQQ2Q1N0F6ektsbnREWVIwYVIrSUo5Rm8xRXZD?=
 =?utf-8?B?VFVRdmQvN3dHOUphdWFEcWtPTlR1c1JCakNkWlB5dFBuWk1XdTBLREx4dnFz?=
 =?utf-8?B?MjJQMHZLTjdvdC85TG5NQXhtMmRmc1BNb0tOV3RyVE1FOFVnanZOaGlmTktR?=
 =?utf-8?B?VHd0RU5QVlBlYm00OHhxdnlJTUwySE5sV2toNGR1dkZENFJnQmpHUVljYUxK?=
 =?utf-8?B?ZTdaUVhwdWJyd09CTXdMSVR6ZEFkanNOTjhsNWtvNnc4Ni9vYmt5STM4Visz?=
 =?utf-8?B?ZEEzTEdteWdFd2VVTlBvN2dueUVCV0dmTFVZQ05JUUh1SlAzenJXYXBVODhY?=
 =?utf-8?B?Q0FqN1lVckZ4cUhRSFNlUVB3QTZxYU45azNHNjN4NUdzVWc0cHlCUXdNMGt6?=
 =?utf-8?B?T0NiMDhWU1VnUE13NlM5bmo2K3JvbldqOHlpRVY0NkxITlhIaEJTTFVlQmFa?=
 =?utf-8?B?UER2THZNV2Y1Njcxd0RiNnI2Y3JBNlVNYTduRFoxQkwxaXFKSEdORWxPMENh?=
 =?utf-8?B?WmFKc3NxSDJ2R3NZNThkanNsWHl6MFFqY3R2bGM2S05hb0NUd1dSeU41VDdZ?=
 =?utf-8?B?akJUYWVDM0g0L2dFNEdMTUoyd0tsRk5BT3B0MFR0UmNrczVzZEloY25qOVlY?=
 =?utf-8?B?Zy9qSVlEQ3dES0ZaUm4vN1R1MHJVUGhCYXdyclVpMGR6am9jaUd1RGlnTWlh?=
 =?utf-8?B?ZFhEVmI0T0hVZVdvOWZlalFZRHNVTzQ5T0JDcDd4QkZjZjB6MGdMV1N3N25n?=
 =?utf-8?B?MGppeEdrek5ZNGovR0Z5elR1SXJGaFR1TG9pS1BoMHFoZEU1aUw0b1dMMk8w?=
 =?utf-8?B?dmpjK1Npa0luN0hWVkxaVzl0M2lNbm1ocWVaaWExRHYzNGJqMGtnM3lWc1B2?=
 =?utf-8?B?NU9SbkNGamUyakp2ejVTdXAyWlVHS3huSjZyWGJaT09WelRPalVqcVFRdjV3?=
 =?utf-8?B?Q09FQ1QvT1Y2SSt5cnpxdzBVdEVnY0ZLZWZoME5mQUdRR2JKUEZQUmpsQkU2?=
 =?utf-8?B?ak05TTdZUVJnQTdRdnlhRkh3V3UyR3VrRDhKTTZVNStXYzVicy9jNXR0cWYv?=
 =?utf-8?B?ZjltTWZkY3J5WTF4TXJUZ2N5QjdPNkZIdnJINDA1VDViZUZ1bFNybzJTV1Nm?=
 =?utf-8?B?T0swSDZYWE5kejZndkZMdlBnQ2FWRjBwWGxXNlFWNkpLMWtqNUV6QlM3cUx4?=
 =?utf-8?B?bTd0QVF6eFpWZ3RoZUlIeXQ5UXVDTnJkbDgwb2N4K2lOdHNwWXpPT0VYcFcv?=
 =?utf-8?B?Rm9yaHh2SkRGNDZLc3U2WHR4UG52b1dLMVpUM2NTRi9lWEp0bnBNdGVmTFda?=
 =?utf-8?B?cDBWeHlLOERmZmRHVzIzNWRuNVNqb3VFNDFtS3V4TzVKSnV5b0FhcXFZRWJK?=
 =?utf-8?B?OHZYTFZydWU3MXJnb09qRUF6QXNUbXRJMG1UblJpdGEyRnBWWWp6SC9uMnJq?=
 =?utf-8?B?WWtCcG41S3FhbGhmUjArVUFhd0pEWjZLVS82aWdybzI5WDBLSTYrZjBUdnV2?=
 =?utf-8?B?a054L0l5QzdFZ2hpYkVJOWNXOUlrb2tLSlVzVVU3RUxLc25Xa1E0M0N1SVpR?=
 =?utf-8?B?YmRsSjl1WERiYWZWWFZPbUlGSE5XdVh0ZHRwTkZnSlN1RTRYM0VaVTJOSEUr?=
 =?utf-8?B?VExyZ2xlWFRlSGNSTUtDd0pGeFUxT0dEUVZZL1Rpek5UN0loeWhJazNpanQw?=
 =?utf-8?B?SXBFVVRRVDdLcnVBSm1sY0c0bGIyVnBXbzdmc2U5Wnk3R01kQmVNREV6eTJL?=
 =?utf-8?B?UmMrais1MWxVTXdqRU44UFdZRGVxV2xFWWtTYmdLVFJ3OWorMFUrYlBpdTA2?=
 =?utf-8?B?bHhHV2xaakQzN0RYSm0vcmRzYy80U0xVUUdnQy9mQ1QrVVI2Z2hVZHc0aTRR?=
 =?utf-8?B?bmpEeUZFMmlsL1ZDeHBiakptMm9WM3FWZnhWanZvbG9GSFBTb2c1K3ZicU42?=
 =?utf-8?B?V1paVTJVK2N3U244NTUzMEpqUUdPQ2JaRjZXazY5Z2pxOEZSdWdtYk12Y1lK?=
 =?utf-8?Q?th4QdHzm2J1eLGPR51fGFKoXm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa4baf50-0eb7-46de-c709-08db72251833
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 06:59:44.8318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yCJ0chApZrrWio64G8vqHNVo7TN88BL40A4f7MYlA6yxI4wOuRbGqs7gS77Zj16BX47WUU7O/Fr6ACzRegvYJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Use hw.adjusted mode when
 calculating io/fast wake times
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBUdWVzZGF5LCBKdW5lIDIwLCAyMDIzIDI6MTggUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENI
XSBkcm0vaTkxNS9wc3I6IFVzZSBody5hZGp1c3RlZCBtb2RlIHdoZW4gY2FsY3VsYXRpbmcgaW8v
ZmFzdCB3YWtlIHRpbWVzDQo+IA0KPiBFbmNvZGVyIGNvbXB1dGUgY29uZmlnIGlzIGNoYW5naW5n
IGh3LmFkanVzdGVkIG1vZGUuIFVhcGkuYWRqdXN0ZWQgbW9kZSBkb2Vzbid0IGdldCB1cGRhdGVk
IGJlZm9yZSBwc3IgY29tcHV0ZSBjb25maWcNCj4gZ2V0cyBjYWxsZWQuIFRoaXMgY2F1c2VzIGlv
IGFuZCBmYXN0IHdha2UgbGluZSBjYWxjdWxhdGlvbiB1c2luZyBhZGp1c3RlZCBtb2RlIGNvbnRh
aW5pbmcgdmFsdWVzIGJlZm9yZSBlbmNvZGVyIGFkanVzdG1lbnRzLiBGaXgNCj4gdGhpcyBieSB1
c2luZyBody5hZGp1c3RlZCBtb2RlIGluc3RlYWQgb2YgdWFwaS5hZGp1c3RlZCBtb2RlLg0KPiAN
Cj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
Pg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC8tL2lzc3Vlcy84NDc1DQo+IEZpeGVzOiBjYjQyZThlZGU1YjQgKCJkcm0vaTkxNS9wc3I6IFVz
ZSBjYWxjdWxhdGVkIGlvIGFuZCBmYXN0IHdha2UgbGluZXMiKQ0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZGY1MTdjMzk1ZGE3Li4wNGFiMDM0
YThkNTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMTA0NCw5ICsxMDQ0LDkgQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVfcHNyMl93YWtlX3Rp
bWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJfQ0KPiANCj4gIAlpb193YWtlX2xp
bmVzID0gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKA0KPiAtCQkmY3J0Y19zdGF0ZS0+dWFwaS5h
ZGp1c3RlZF9tb2RlLCBpb193YWtlX3RpbWUpOw0KPiArCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0
ZWRfbW9kZSwgaW9fd2FrZV90aW1lKTsNCj4gIAlmYXN0X3dha2VfbGluZXMgPSBpbnRlbF91c2Vj
c190b19zY2FubGluZXMoDQo+IC0JCSZjcnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUsIGZh
c3Rfd2FrZV90aW1lKTsNCj4gKwkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUsIGZhc3Rf
d2FrZV90aW1lKTsNCj4gDQo+ICAJaWYgKGlvX3dha2VfbGluZXMgPiBtYXhfd2FrZV9saW5lcyB8
fA0KPiAgCSAgICBmYXN0X3dha2VfbGluZXMgPiBtYXhfd2FrZV9saW5lcykNCj4gLS0NCj4gMi4z
NC4xDQoNCg==
