Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5506D74FA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCD310E839;
	Wed,  5 Apr 2023 07:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CCB10E2DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680678334; x=1712214334;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Me8T7yZGgYF2eDYVPJE7FfWIzc6kHWP0eupNGL95M+g=;
 b=LUi++M4+V+v9sB6iZckF09BsHN7i2GkpVntMDzBSCpfLWpXrEYgf4rE4
 sU+K0Du+Hcn0y+cgLP9d8tAHg/btTt8xOM3qgPMOXeKwXZrPXxq3i1Z82
 OjvaRl/7pQ2N1fny3LMPMKV6xqPMZExHhmkqebk7l8z/xtX6i/OL6sIpR
 +hZNnnMkDBwk2fu8s6TvbA6R4Jx3XTthjYHGSxNevpFtOrMXpqixyBUAi
 XNpeUGiEaPxKF9d0apEwOqix1UycjbpSo+h1Xfe9vAUwFaANuQQcFISa3
 5awHyVt1bdb6DKQh87mjw1dsRh5pQ2nIcgg+uhkGn9YqNpAD4LKk83TGE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330987425"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330987425"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="716924098"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="716924098"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2023 00:05:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:05:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 00:05:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 00:05:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=du0oqOo11lS6QjzH/o5Hk5acFFGC6mAfy/knSaCBaHBRZM54+DFVuBtqQwzfv4PxzWs8/OCErcODuL1W8OXTRi4TYzypTOpM+d7LTYD8GIZiU1ymFUS4MdZu4iWlnTCoHuQePgAB5J5NZRohoaeD96w3N0zSf43dxtQAPBq+KmxZEWvDU7FrFTHtVCOib/OAnFGF41mxj45mSd4NJcYPBy+FP3AK/AnyHOcKj7Jt144SLIsWSxfI5zdvOzkJG7vwa+XbAnuZgIDeZzrh0qkFJ/3Qck9tkhsIdS6Xg1QW4YfjONjgmQML0LY+cFbFb6wkZkvZzmdvgkn0NKe5DKzWeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Me8T7yZGgYF2eDYVPJE7FfWIzc6kHWP0eupNGL95M+g=;
 b=f2Fb3dVsm7TDVEv64dM0BVVMLYhjwl0rLfSRByn6ba1+GMig/6Yzr1NMxtG3wFL3mqtOS7xF+e+EVmydYTUTXzFZEmkWc1Vn7zj+DxiOhCenquy4/CkHHjaSDgmPO9yZvsmGq7IilOlx56mM7Wv5M0KJZhADywHBg6h/IOCk9Lx44qQBwVwe5jBPP4zihIIS6kTsPGL15xhURMaaEBb2r1Jf24DEDhS+zUm/ovi76LOB5Sq+Cg3HErzd1aGBXlW+6GUrfl6I4K8LHidRiIzfbCaxyEPQVYP9YYS/mlppI1T/+FWJy2PCzViHm4TFeX4jvVVPgaat36FK4wYs/RgKvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 07:05:15 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 07:05:15 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/6] drm/i915/vrr: Make delayed vblank
 operational in VRR mode on adl/dg2
Thread-Index: AQHZW2tmLudYhKJ4UUq1SluGxlzGqq8cYu/Q
Date: Wed, 5 Apr 2023 07:05:14 +0000
Message-ID: <MWHPR11MB19354F2F7FD0F76EB59C75EFB2909@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
 <20230320203352.19515-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320203352.19515-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|DM4PR11MB5230:EE_
x-ms-office365-filtering-correlation-id: 9dd64d10-a3a2-4daa-c2d5-08db35a41b35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d//MC73PeluWAbGMRb+yAog59cJD0LP1DhANMwpTlRWk7TpHMo8/zDRoDgEyrH8lEpwcBv3R8VcxGT1a1CxygF87PtOXrM6Z1R8OGcWP0BBnDMk+2pJOWfuMdntuiL31FRlQsn7Q1PraFshYj3yGWDkc7A6DR35u0VOX6kH+J8CHf8xZXbrW6gz+meQX+1vmKyc2KrwhW5fIOK+Ds/3DPprK/US1gQ2ztL1gVKezVitoe8cheq1SoEjNG0RZMaQihT9/tRegDw0Bwy3U14m6X5wi1YWuX1tWAmqfF2R0i6UVcO12rhBYXlgL60rkaHqxueFqyfckDwp6wjQ90mkpdNHywlwiHFsu9UcpZNEYsJNlutsTK8Q8vuxgepuJfbooKlAWACsP/FM1iuGFJkE3jMnITCnkvOA8czsprHeYvOhMSFymQnINUfEdYFanq7mCsbXzJ/vpeIk8XP3UmBECvw1zxw39QlqPlOHdxkusAraEj1o8FRSYXifga6H6edN12+8QFT8cg+0FD0WK9JoGTaVNBDrS8GHpBCx631xipKGEYsYCILpk/uKdK9Krff+NodUqRmqFei867HLlPsW1TbHXydLn7J+xFzD9GRSeYxopoMhVxapmXcXAUQb/+TZW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(39860400002)(376002)(396003)(451199021)(9686003)(53546011)(66476007)(186003)(6506007)(33656002)(478600001)(316002)(7696005)(71200400001)(5660300002)(8936002)(2906002)(82960400001)(38070700005)(52536014)(66946007)(86362001)(66556008)(4326008)(8676002)(6916009)(66446008)(38100700002)(64756008)(122000001)(41300700001)(55016003)(76116006)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QW11OC9ha29JblNlODNFL09TZDVDNlQ1M2dCaVQ0TUllNGhCdU40TkJFOWhS?=
 =?utf-8?B?REFzVHNSaGMxUVBwcnI2WE5IVzkwd1pQYkdaV3JnU0IwTHlwaW05US92bmda?=
 =?utf-8?B?b0tZOXBkV0xZNVdWb1VHbjZXWksrQXU3ZGJUQzJCMU9pWUJCN24zTGRnZEY0?=
 =?utf-8?B?VmpkTExxZEk3dklBYm5EaStNclAvSWhMOE9JSEpSS0VSWkhzR04zN0kzVC83?=
 =?utf-8?B?a0I4Q3NMSnE0WDZGUGUxcEpoTjMxWm5vc0tUcUtpRFN2aWN5ZVpPR3ZpNldv?=
 =?utf-8?B?U2ZjdCtHekg4U1BadEJ3SE9CdHhDNEY2eUF5SGFTTHA0Q0FUcGFFUVJWZUMz?=
 =?utf-8?B?czUxbzAwNklpQXhDYXJiUmtBZi9aM3c5cnVkcnRHY3I3czBsLzdQcFgvbUNM?=
 =?utf-8?B?SVUrMXR4c2xHMzRwK3h1eWliRDlmOWZsUEo2Z0NQVmtmaHVPVlBjTEdPcUgy?=
 =?utf-8?B?bGplN1UzNjVNS1BmUkh2WDJLZ2drNTRIRVRyRm1KZWJ0TEE1TXhXQ2F4cEF0?=
 =?utf-8?B?NzZyUWNWQzA2a09wZWd0MnY1WUQwNkJWalVBWFJ1V1FpeFpweDYwUHlFcHdp?=
 =?utf-8?B?dkY1aUpkRXRkRkFTVUJoanJRVVM1R3lXWUlBdENidWJzbFNxUy84QllHWTY1?=
 =?utf-8?B?NVgyWVR5Q3FadEVlRHRHenlGTGdjZ25pcEtJQXNsamJxbWljeFh6WmQyQUVx?=
 =?utf-8?B?MFNHYnBnODdjempvbzJxdExXUzJRMjRDMDFaUnJHTzVxcXlFRmpveWszaEFF?=
 =?utf-8?B?dnZLRDMvTXphMjBvdys1T2oyR2Q4VnlmaHhFZU5NeFFGRWZwNXFUV0xTaFZK?=
 =?utf-8?B?UEdHek5POVJ1MmJNN094TUkrSUw3ck41cnZ6Z0ZnYUpBeE5UeVBvazUxWGkx?=
 =?utf-8?B?Z0VWa0R5YUZBd1NpLzc2akp3WjAydXk4NEVVS3dpWjZ6cnR4SWkybDJFVmoz?=
 =?utf-8?B?dzArVVR3RGVkMUJvRE1XR0VuckViUGtETEExbFc0dVUzaC9rOGFaUXJ3Z25X?=
 =?utf-8?B?dGowOWVXZmJqd1NwR2djTXd6MDd2dUVKckI1aG9SWmYrM2p1bVJGUGszd05O?=
 =?utf-8?B?b2JmZCsvUEZ4MEExVzZDNU9VQklFWkhTcmZuS3hjS3BERERRNWtITlBYazJS?=
 =?utf-8?B?aG4rOGtNcXJ5Y1l0WVlWR3pxMUYrWWV0SHFhdnY3Qnh5MWhLNmkrcXpuRFNs?=
 =?utf-8?B?VWMxamllamcxUzltRXQyeDd6ZVVwMlpuek9uR1NMNk52eFczMTl2RkdWN3Mr?=
 =?utf-8?B?RDY4YVRScUp0cGNOWHU3V1QxaTd6U3lXUkRTY3R3eFg3VWxaRUVKbnNKRGx3?=
 =?utf-8?B?YzBYajBZejY5S0VMWFE4Qi93VzgxV05QRFV2U200S1JKbnN5YnhXUXNUYzJi?=
 =?utf-8?B?bzJVUzE3TGJGd2Vuc2x6bmI3Q09NTlJlLzZFWW03Q2JnUnR4ak02UHBNSmk0?=
 =?utf-8?B?SS9iV3ZnYnVWNU1qRlhCMlRXT1psTHNEMkJ1K2hrdWEwODJ5NUpheS9naVdY?=
 =?utf-8?B?QnZONmFySS9ybGlyeXBDZnZCejVVbnJydE03U3JGRXd2NU0zTi91NTUzR1RW?=
 =?utf-8?B?S254MGk2bDRmZndEUncxUTY4dVlIaDcyQ0JobnBLL0lPZFVGaE5VM3BwVDFz?=
 =?utf-8?B?MS9hZ0hFdXBwL3VyNzdCNjg2b3pRbnVISXBXTFpTdE5YbUVOVjVVSldULzRD?=
 =?utf-8?B?TFkzaTBweVU1b3crZ2lITTdKOWRQREZPL3V4SHc0UG1DOHBRdkFqMlM2UERH?=
 =?utf-8?B?K0c5MzhyV2JDR1BVUW1OV2hrUWorZjNMZmdKcmdYMzQvL3ZzZzNyZnNVd1hz?=
 =?utf-8?B?THpkSllwSVB6QUwrSXhnZmdCc1QxSDB2MmIvNm5nc3E2MHIrTUovMllEYkhy?=
 =?utf-8?B?bnVVY2duTlBKT0NwUnJLaVp1ZUVKZ1dNeWV5aGdrSmlrOGpHVHZHaGJITjVa?=
 =?utf-8?B?ZWNQSjVDdHRFL2xMRllhQzdDUDhqcmFsZHZEdWd5MFkxdUZvVTZ0VjhDQ1kr?=
 =?utf-8?B?Nk8vdDNHU01BbHNLTFRjRjg1QlEzQkNlUmFSK0JBVnNLVW5EeDNvclpkVHV5?=
 =?utf-8?B?d1VvRWwrRDlLN2tMSk5KUzdFbE1ZYU1Ibm9oL0h4dHdqUWVTem5JMEdvTmxI?=
 =?utf-8?B?ZG5ramw2OWZLcUJlWHR6Z3VRczVWSVNBb1JOZTY0ckpxcUVtV0g3WWQraldo?=
 =?utf-8?B?cXNCS0tsUmZYYlI2RGl2MFc3cldob3JObnJjNW5JRCtBbmlHUWU0ekVpMWVM?=
 =?utf-8?Q?GIPYeRBcCZYJp0OWvCvsri7tP5NSo/vNb4GacnUtII=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dd64d10-a3a2-4daa-c2d5-08db35a41b35
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 07:05:14.9918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NjDVEm6W7XGInEMyIbJj9f0RvLu4LW5q5ur0mdP7WoxjkmKk5+LrFQjquHiSvl7qChhB1iin1b3Vt/2JL0WKIyuhPFqj8qlOp0Odc0n2HLu9j7WQPKf/wN2pYaxuPNTg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/vrr: Make delayed vblank
 operational in VRR mode on adl/dg2
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDIxIE1hcmNoIDIwMjMgMDI6MDQNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDMvNl0g
ZHJtL2k5MTUvdnJyOiBNYWtlIGRlbGF5ZWQgdmJsYW5rDQo+IG9wZXJhdGlvbmFsIGluIFZSUiBt
b2RlIG9uIGFkbC9kZzINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBPbiBhZGwvZGcyIGEgY2hpY2tlbiBiaXQgbmVlZHMg
dG8gYmUgc2V0IGZvcg0KPiBUUkFOU19TRVRfQ09OVEVOWFRfTEFURU5DWSB0byB0YWtlIGVmZmVj
dCBpbiBWUlIgbW9kZS4gQ2FuJ3QgcmVhbGx5DQo+IHRoaW5rIG9mIGEgcmVhc29uIHdoeSB3ZSdk
IGV2ZXIgZGlzYWJsZSB0aGF0IGNoaWNrZW4gYml0LCBzbyBsZXQncyBqdXN0IGFsd2F5cw0KPiBz
ZXQgaXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyLmMgfCA4ICsrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgIHwgMyArLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jDQo+IGluZGV4IDZkNzQ5ZGU3MTA1OC4uMzQ4YTdjYzhlNjIwIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gQEAgLTE3Myw2ICsx
NzMsMTQgQEAgdm9pZCBpbnRlbF92cnJfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLQ0KPiA+ZGV2KTsNCj4gIAllbnVtIHRy
YW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4g
DQo+ICsJLyoNCj4gKwkgKiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZIHdpdGggVlJSIGVuYWJs
ZWQNCj4gKwkgKiByZXF1aXJlcyB0aGlzIGNoaWNrZW4gYml0IG9uIEFETC9ERzIuDQo+ICsJICov
DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMykNCj4gKwkJaW50ZWxfZGVfcm13
KGRldl9wcml2LCBDSElDS0VOX1RSQU5TKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgMCwg
UElQRV9WQkxBTktfV0lUSF9ERUxBWSk7DQo+ICsNCj4gIAlpZiAoIWNydGNfc3RhdGUtPnZyci5l
bmFibGUpDQo+ICAJCXJldHVybjsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRl
eCBkMjJmZmQ3YTMyZGMuLjA5NzQwZjcyOTVlYg0KPiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+IEBAIC01NTQ0LDEzICs1NTQ0LDEyIEBADQo+ICAJCQkJCSAgICBbVFJBTlNDT0RF
Ul9CXSA9DQo+IF9DSElDS0VOX1RSQU5TX0IsIFwNCj4gIAkJCQkJICAgIFtUUkFOU0NPREVSX0Nd
ID0NCj4gX0NISUNLRU5fVFJBTlNfQywgXA0KPiAgCQkJCQkgICAgW1RSQU5TQ09ERVJfRF0gPQ0K
PiBfQ0hJQ0tFTl9UUkFOU19EKSkNCj4gLQ0KPiAgI2RlZmluZSBfTVRMX0NISUNLRU5fVFJBTlNf
QQkweDYwNGUwDQo+ICAjZGVmaW5lIF9NVExfQ0hJQ0tFTl9UUkFOU19CCTB4NjE0ZTANCj4gICNk
ZWZpbmUgTVRMX0NISUNLRU5fVFJBTlModHJhbnMpCV9NTUlPX1RSQU5TKCh0cmFucyksIFwNCj4g
IAkJCQkJCSAgICBfTVRMX0NISUNLRU5fVFJBTlNfQSwNCj4gXA0KPiAgCQkJCQkJICAgIF9NVExf
Q0hJQ0tFTl9UUkFOU19CKQ0KPiAtDQo+ICsjZGVmaW5lICBQSVBFX1ZCTEFOS19XSVRIX0RFTEFZ
CQlSRUdfQklUKDMxKSAvKiBBREwvREcyICovDQoNCmNoYW5nZXMgTEdUTS4gDQpUaGFua3MNCg0K
UmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGlu
dGVsLmNvbT4NCg0KPiAgI2RlZmluZSAgSFNXX0ZSQU1FX1NUQVJUX0RFTEFZX01BU0sJUkVHX0dF
Tk1BU0soMjgsIDI3KQ0KPiAgI2RlZmluZSAgSFNXX0ZSQU1FX1NUQVJUX0RFTEFZKHgpDQo+IAlS
RUdfRklFTERfUFJFUChIU1dfRlJBTUVfU1RBUlRfREVMQVlfTUFTSywgeCkNCj4gICNkZWZpbmUg
IFZTQ19EQVRBX1NFTF9TT0ZUV0FSRV9DT05UUk9MCVJFR19CSVQoMjUpIC8qIEdMSw0KPiAqLw0K
PiAtLQ0KPiAyLjM5LjINCg0K
