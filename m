Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF14644BB5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 19:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0171510E343;
	Tue,  6 Dec 2022 18:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149D210E341
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 18:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670351203; x=1701887203;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=p7mZJz3WZVcgjNT+OROBzLjJFM110zW7VqOw2BAWMoo=;
 b=P+6ZYd/uy0WrlDZ8TZGQvSdgend5GpskpLMK/haDuf6eE2lEriUWN3aJ
 35Vtq8ofn10oelOVkGWq3wMMYfsA4ovVPNk67MFCtndqO0EaJVHO27QlO
 pUa+H58m4VjqGiJFRx0jRKEUQw6yv/VpsnUCoPn0kPzkxYmJLbsuzVult
 babJNXZkkUTg4ZOocBgmtGa+Ae/yoBjnhp0oye3UovM5umBXGfa0Kue4g
 WANds6+DtXZx+8EUcYehhtpbcjOcAzJb8/q8tSpMptF4fWgXG0mrWZ7wS
 9d5g3YMLy4ezvQfiV+K5RAbk02lCAGeLy8vyVLDpPAchyWSuBDrndhvPn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="296390211"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="296390211"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 10:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="975170233"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="975170233"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 06 Dec 2022 10:26:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 10:26:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 10:26:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 10:26:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 10:26:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g6dd+FT+0nkr/1FwB45MWtrarL9+KrF2i1OqcFhFtED5VdwAsW0DSs1GlXEEyvMTdf6Ef1lDtx/Ij0nXQjkwBj5bGXPxyp5Bf6tSHys+bk5ksaJaCGpU9ThoVwv0u/o+itBdWz+/49hQkM2c8IfrF4efldLivICQeVhKa3rfM+OUxygD07Vu7+VTm0zIr6NCwwT0bIaNj55piYidZmwIKk4GnTPfNXeEyy4RBTensT4N+5F/wLBPgGX9KS1rR7KDKu95zmz0GY6ItzJ3gDCyW0dXqyCj+sfxgzwwgNe5c1AJMxAnI9PD+d+A4a75FaDtgXDJCJwSrXsdTnpnf2rc8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7mZJz3WZVcgjNT+OROBzLjJFM110zW7VqOw2BAWMoo=;
 b=mJNrxhH1OjakQVuxMMr3hNp7ZR48V2C6nBa46y5CNDIrWqhIpFvHWMe9d7e5GHzIAdcaOLwCmokKZUJIhqscMbJUo+iWyjQQYlnMeTa0yifsC0+QyDTbzcnnyYZ0c+aMxnPrGVIbclhuTnYASVDKPhP295lK58J93lDeCFurrHJV0rR40UoCk3vr3EJBeUoCvMJ91bIhAqyV4Ya3lrmbPFWkwrEd166b9j38dBpynTjndu5mP249OTsUuZE5lK0wU6Pni5pORP5maSZhKbw6Xaw5S+3GJ5oYfeIRd61JTnLvZOXWN1y0a1UdWPXvCIm5UyS4cQZiTxoQ0w/bXBirCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY8PR11MB7266.namprd11.prod.outlook.com (2603:10b6:930:99::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 18:26:40 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 18:26:40 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZCQXngJLmpxYcEEGWV0CABsX/5K5gok8AgACM/4A=
Date: Tue, 6 Dec 2022 18:26:39 +0000
Message-ID: <85af989600231120dff41fa613f14ad28a423b7c.camel@intel.com>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
 <5f79eccd-f843-8738-98c9-e9400c55ead0@linux.intel.com>
In-Reply-To: <5f79eccd-f843-8738-98c9-e9400c55ead0@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY8PR11MB7266:EE_
x-ms-office365-filtering-correlation-id: 04384a7d-9a19-47a7-5607-08dad7b76af6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HxWPah1CHj554uPvG3cMfSniupUXhnTSf4Vy58NKQJd0mGmn+CFikDz5A2ivq9M89/rmgGa3Smu/UeKx6UgJVF3hd9GCiwrZXJcpS8wiHp6E8FK3cLXoo98VaPtphcVEVTaYjAMTEGOnukwDRBbFwWs8rLbtDvKgpPgktOIqKQpSXjro3j86C2ZtHA9VIvXlPov/enag1XXh4YM1JUl4yucGqrLbyomwY5ytYOLEiux+bQTymdIIixWh36FdV2dkVNyZdQywAI18rw2g249hN2OxlpDHo9jBH6wiD5js3hZ0MAo7IJY29IlHjVp0t5cQbyR2ZHhpFLCwlnrAIpcwLa0+Xn3N7KqbmVA8uXH/uFsh3qvFt1FZzQj4NOAiK90Nn4kxxpplaxBZzwTmLUv+BhROx1YXbxMVaSG48AEKjsYy7TbFZeAXxm0TzKi1ATBjUuPCFdM3FNRIK/mYxZobPBqEdfqsdarBtfLZquv67QEz8hpDuK+pGz8LhhcEVQLzzzbUhd3ATqXO4VpWAzEVVGrHtZ6wwPQUBoyTpfh6C0iunsDs2mi5+5xuDs7A1fWDixphL1VldKLTIi+em1bml9YgUEv5wYo/aZsjr2qdDowhjauOH1W/t3e+R+42RNQ25bVWqrCsOBhnPzd+CtweepsKwg47JhifoIby60B/cBN76b+JJTzu8h3ZFpLTS0r8Amck1hQKaflE3tvOgmlCmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199015)(36756003)(91956017)(5660300002)(86362001)(8936002)(82960400001)(41300700001)(38070700005)(2906002)(83380400001)(122000001)(6486002)(66446008)(66476007)(76116006)(316002)(2616005)(110136005)(66556008)(66946007)(71200400001)(38100700002)(8676002)(6512007)(6506007)(186003)(26005)(53546011)(64756008)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0NEZ0Z4U3FIWTNHWnJNbS9rMzJBdVVnZGVFeHU4UjVqNlR0OU5uQWVNY0Yz?=
 =?utf-8?B?R1dxY3VGZ3RuZGZiQjVmbGcxSzN0cWVmSTdOZmFQQXF6NWFZaHJRREoyMEZH?=
 =?utf-8?B?aGw4SlFnSlVlRzhPN0NZM1RWODgzY1RlZlpqZGlkSGJua3J0Z2JlMWJSNmhL?=
 =?utf-8?B?bEI1ei9OeVlSSjhoVlFzeHhKWDhNUmxjWVdIZEdMWHI1aVkxVXBQY0NZTHNp?=
 =?utf-8?B?ZWtVSEloM0pVd1p0WTREakMxR3ROWXpXTTBUMnhuTVhMeThXUDZlVEVEV0E4?=
 =?utf-8?B?MFFnOVB5OGJRSHFOSGFvNDFKUUlScW4rS21RYS9jNFBkUjUzYkdMMUZ3c2JI?=
 =?utf-8?B?a0VtZHUycEtjdkk0WklwRnhTZ1VnR1RzN2JHT29zRFhxSWhRNEVkNjJGRjhC?=
 =?utf-8?B?aE5JZWU3VlFpL0pZbWNNQnJCQXhmYWQ1MFE2bHRQUHdIWWZnQ3hZclNzOWZz?=
 =?utf-8?B?cERLTEtTeUlRelU1QXl0cGd5UDdaR0dVbHZ3SHphcUxITXBZZkRNdFA3amtR?=
 =?utf-8?B?OFV4VlZyVGVCMURhVnQzeU9NaEJRZDhobUhlZlVEV0tRV3FEbkdrQjlUeFRw?=
 =?utf-8?B?VllSeFBSSnJqUWhCZVJaWlV5Z0t4WEhtTCtSbk5INHREMy81VkxCa2pqVGRZ?=
 =?utf-8?B?SnB4K3hMRHhaVVExeUJJM2g0QzBhQm4veHN5ZGNPMUc3TTl5cmtPaHA5ci9I?=
 =?utf-8?B?Z0VRTE1RWjFsOHNFNUNwRmgwdi84aDF6V2JXM2tBeFpoQUo3N2tjWWdibXBQ?=
 =?utf-8?B?TGJHVlFkU25lSk82U05FTHd4dTRnemN3aW5jM1FLZy9GbWk2VllCS2JCdll6?=
 =?utf-8?B?aCttbVlDcFViRm1MVTRzUy9KZUxvSHBLaVR4S1VxK1FzN2VTenlNaTJvUi9S?=
 =?utf-8?B?K2pNdXRzQ0N4OVNnaGtncm5JQy9jNlc1c2kyODE4NlNFOUVaUFhaYjhqekor?=
 =?utf-8?B?ajBNd3hVdFpraS9nTFk2VnMwSHlWT1VvMnVkdEtGYjRZRmJJbEdJZU82eDRp?=
 =?utf-8?B?Wm11ZGtURHhRUDFqU20yM3lqOXlLUEJ5dVRsRHdicTlicEplU3JqVDA1T21t?=
 =?utf-8?B?Vmk4cmo4Y2g4eVJtMGpNeUNCTjNLV2tGcEtZdHpRWldGS1pnR2lXbWIvWXY2?=
 =?utf-8?B?KzdtbmtVSjd1N1drakdVM0pRNVJKd3ZabStOZlZ6QmpBMGN5SjFUVG9acTZC?=
 =?utf-8?B?dlFXZmgrK2NyQzJ6cTBHS0YvdDRRbEtVdEZIZGtTa0hwSVJJNlU0RmQ5akxP?=
 =?utf-8?B?bTFNcDZoRGQ3d3lnQlRwMG0wVDlpbi9ETTdBa1VDYVdqVUtmUitBUVdFRGt4?=
 =?utf-8?B?NVlGcDZjMjJ1NDNEYjQvbkluY28vYVlaNXJ0WTlZYTRVSmR4L0NETi9GQlZM?=
 =?utf-8?B?VHJZN3hmK2taZ09LcHpIYXB0WFFsQ0I1OUFWME5DVW56N1U5TXVmaGVlTWpR?=
 =?utf-8?B?dHh2ZmVRbXlsdWhpNUlNWGdOdUFzRGFlUzRiSWdVK2IveGw4RHF4c1ZaRFZB?=
 =?utf-8?B?Ym5hY1UwaHZvSHhER1VrRVJCVjQ0c0lpaTlvaGVXRCtiaVZhT3ZXdTdtWWxJ?=
 =?utf-8?B?dGVSakpIWHZWdG42VFFza2FySy9qU21jaEdSOEpvY1BjOTdONFFHL1RIdnMx?=
 =?utf-8?B?UjBQTko0OFErbDQzdVhVcDVYemFIUE1WbXhzOGpVY0tsYVZ3UnY0VmNpOTV5?=
 =?utf-8?B?U0swaTlsblJTZFc0cGl5L0RaQmh6QmM2cS9KbFF5ZW5JVEJoR3luRENQSFZO?=
 =?utf-8?B?eElLTDdEOGZrdWVCYWpJQjdNSUVxUUQ4b0NJeEwzM0c4UGtmWlAyNWhpM3Fn?=
 =?utf-8?B?QlNPczdHdElNTDY1N0pZQlZWdGJTMDF1b2Q5NEZXc2VZeG1vNzhoVFl4a3dm?=
 =?utf-8?B?RHljak9XNUVsSjBlSHNmYTl2YWVBVk8yc2pLZUlHWkU5YnY1U2ZjWXdlQlpN?=
 =?utf-8?B?Z255WXdrenRaT1M2V1c3TFV1c2NwbU9HSmRlTG5Gc1Zpc3pGdjZsNnZFbVN0?=
 =?utf-8?B?d0w5amZ1cVhJakpkZVBQZU1IRkpFcWh2YlNzeDVhdm0wMkJQMFFXTWVhc3hS?=
 =?utf-8?B?M1JrZnp4ZnBBd2MzVXpGelVtVUV5UVFKS2tDcW5wSVg0WXI2V2xxMXFoc0VJ?=
 =?utf-8?B?Wk1wV2xQeVlOVFIxelFQWEEyVDkrdkJmanFkMlFUclg3WjQxS2FXQU1sUGhO?=
 =?utf-8?Q?fCPLp7/5Vx7NteHjNBMyGF4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E213AB71013651428756D41AD7D1978E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04384a7d-9a19-47a7-5607-08dad7b76af6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 18:26:39.9237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rOokSlMukZnFtq16RsF97Y7loApviywad7nJFL3LaoeU6jLPn0BwS+vFSiVIHjklSGrME9bEXdKL2pV8lP37bW/d1v574MGT1I2LWbb732HI7W2ptZ5xE3kWZAC45aAo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7266
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

DQoNCk9uIFR1ZSwgMjAyMi0xMi0wNiBhdCAxMDowNCArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3Jv
dGU6DQo+IE9uIDA2LzEyLzIwMjIgMDA6MDMsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IA0KQWxh
bjogW3NuaXBdDQo+IA0KPiA+ICAgDQo+ID4gLXN0cnVjdCBpbnRlbF9ndCAqcHhwX3RvX2d0KGNv
bnN0IHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gPiArYm9vbCBpbnRlbF9weHBfaXNfc3VwcG9y
dGVkKGNvbnN0IHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gPiAgIHsNCj4gPiAtCXJldHVybiBj
b250YWluZXJfb2YocHhwLCBzdHJ1Y3QgaW50ZWxfZ3QsIHB4cCk7DQo+ID4gKwlpZiAoIUlTX0VO
QUJMRUQoQ09ORklHX0RSTV9JOTE1X1BYUCkpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJ
ZWxzZSBpZiAoIXB4cCkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwlyZXR1cm4gKElOVEVM
X0lORk8ocHhwLT5jdHJsX2d0LT5pOTE1KS0+aGFzX3B4cCAmJiBWREJPWF9NQVNLKHB4cC0+Y3Ry
bF9ndCkpOw0KPiANCj4gSW50ZWxfcHhwX2lzX3N1cHBvcnRlZCBvcGVyYXRpbmcgb24gdGhlIHB4
cCByZWFkcyBhIGJpdCBmdW5ueSB3aGVuIG9uZSANCj4gb2YgdGhlIGNoZWNrcyBpcyBmb3IgTlVM
TCBwYXNzZWQgaW4gb2JqZWN0IHRvIHN0YXJ0IHdpdGguDQo+IA0KPiBBbmQgYWxsIGNhbGxlcnMg
cGFzcyBpbiBpOTE1LT5weHAgc28gbXkgaW1tZWRpYXRlIHRob3VnaHQgaXMgd2hldGhlcg0KPiBp
OTE1X3B4cF9pc19zdXBwb3J0ZWQoaTkxNSkgd2FzIGNvbnNpZGVyZWQ/DQoNCg0KQWxhbjogSSB0
aGluayB5b3UgbWlnaHQgbmVlZCB0byB0cmFjayBiYWNrIHRocm91Z2ggdGhlIGxhc3QgY291cGxl
IG9mIG1vbnRocyBvZiB0aGlzIHBhdGNoIChwcm9iYWJseSBiYWNrIHRvIHJldjQgb3INCjUpLi4u
IEkgd2FzIHRvbGQgdGhlIGNvZGluZyBwcmFjdGljZSBpcyBpbnRlbF9zdWJzeXN0ZW1fZnVuY3Rp
b24oc3RydWN0IHN1YnN5c3RlbS4uLikgc28gcHhwIHNob3VsZCBoYXZlIHB4cCBhcyBpdHMNCmlu
cHV0IHN0cnVjdHVyZS4gV2UgbmVlZGVkIHRvIG1ha2UgZXhjZXB0aW9ucyBmb3IgaW5pdC9maW5p
IGJlY2F1c2UgcHRyLXRvLXB0ciBpcyB3b3JzZSAtIGJ1dCB3ZSBhbGwgYWdyZWVkIHdlIGRvbnQg
d2FudA0KdmlyYWwgaW5jbHVkZSBoZWFkZXIgaGllYXJjaHlzIHNvIGR5bmFtaWMgYWxsb2NhdGlv
biBpcyB0aGUgcmlnaHQgd2F5IHRvIGdvLiAoJ3dlJyBpbmNsdWRlZCBKYW5pICsgUm9kcmlnbyku
IEFzIHN1Y2ggaQ0Kd29udCBjaGFuZ2UgdGhpcyAtIGJ1dCBpIHdpbGwgd2FpdCBmb3IgeW91ciBj
b25maXJtYXRpb24gYmVmb3JlIGkgcmUtcmV2LiBTaWRlIG5vdGU6IHdpdGggYWxsIGR1ZSByZXNw
ZWN0IGl0IHdvdWxkIGJlDQpuaWNlIHRvIGhhdmUgY29tbWVudHMgcHJlY2VlZGVkIHdpdGggIm5h
Y2siIG9yICJuaXQiIG9yICJxdWVzdGlvbiIuDQoNCkFsYW46IFtzbmlwXQ0KPiA+IA0KPiA+IA0K
PiA+IA0KDQo+ID4gQEAgLTEzOCwzMSArMTUyLDYzIEBAIHN0YXRpYyB2b2lkIHB4cF9pbml0X2Z1
bGwoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICAgCWRlc3Ryb3lfdmNzX2NvbnRleHQocHhw
KTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+IC12b2lkIGludGVsX3B4cF9pbml0KHN0cnVjdCBpbnRl
bF9weHAgKnB4cCkNCj4gPiArc3RhdGljIHN0cnVjdCBpbnRlbF9ndCAqcHhwX2dldF9jdHJsX2d0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgew0KPiA+IC0Jc3RydWN0IGlu
dGVsX2d0ICpndCA9IHB4cF90b19ndChweHApOw0KPiA+ICsJc3RydWN0IGludGVsX2d0ICpndCA9
IE5VTEw7DQo+ID4gKwlpbnQgaSA9IDA7DQo+IA0KPiBObyBuZWVkIHRvIGluaXQuDQpBbGFuOiBT
b3JyeSAtIGkgaGF0ZSBub3QgaW5pdGluZyBsb2NhbCB2YXJzIC0gaXMgdGhpcyBhIG5hY2s/DQoN
Cj4gDQo+ID4gICANCj4gPiAtCS8qIHdlIHJlbHkgb24gdGhlIG1laSBQWFAgbW9kdWxlICovDQo+
ID4gLQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0lOVEVMX01FSV9QWFApKQ0KPiA+IC0JCXJldHVy
bjsNCj4gPiArCWZvcl9lYWNoX2d0KGd0LCBpOTE1LCBpKSB7DQo+ID4gKwkJLyogVGhlcmUgY2Fu
IGJlIG9ubHkgb25lIEdUIHdpdGggR1NDLUNTIHRoYXQgc3VwcG9ydHMgUFhQICovDQo+ID4gKwkJ
aWYgKEhBU19FTkdJTkUoZ3QsIEdTQzApKQ0KPiA+ICsJCQlyZXR1cm4gZ3Q7DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICsJLyogRWxzZSB3ZSByZWx5IG9uIHRoZSBHVC0wIHdpdGggbWVpIFBYUCBtb2R1
bGUgKi8NCj4gPiArCWlmIChJU19FTkFCTEVEKENPTkZJR19JTlRFTF9NRUlfUFhQKSAmJiAhaTkx
NS0+bWVkaWFfZ3QpDQo+ID4gKwkJcmV0dXJuICZpOTE1LT5ndDA7DQo+ID4gKw0KPiANCj4gTm9u
ZSBvZiB0aGlzIG1ha2VzIHNlbnNlIHVubGVzcyBDT05GSUdfRFJNX0k5MTVfUFhQLCByaWdodD8N
CkFsYW46IE5vIC0gd2hlbiB3ZSBkb250IHN1cHBvcnQgUFhQIGFzIGEgZmVhdHVyZSB3ZSBzdGls
bCBuZWVkIHRoZSBiYWNrZW5kIFRlZS1saW5rIGluZnJhc3RydWN0dXJlIHRoYXQgUFhQIHByb3Zp
ZGVzIGZvcg0KR1NDIEh1QyBhdXRoZW50aWNhdGlvbiAgZm9yIERHMiAtIHRoaXMgZXhpc3Rpbmcg
Y29kZSBwYXRoLiBJIGNhbiBhZGQgc29tZSBhZGRpdGlvbmFsIGNvbW1lbnRzLiAoaW0gdXNpbmcg
VGVlIGxvc2VseSBoZXJlDQpzaW5jZSBpdHMgbm90IGFjdHVhbCBUZWUgYnV0IGFuIGludGVsIHNw
ZWNpZmljIGZyYW1ld29yayB0byBwcm92aWRlIGFjY2VzcyB0byBzZWN1cml0eSBmaXJ3bWFyZSku
DQoNCj4gDQo+ID4gKwlyZXR1cm4gTlVMTDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAraW50IGludGVs
X3B4cF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICt7DQo+ID4gKwlp
OTE1LT5weHAgPSBremFsbG9jKHNpemVvZigqaTkxNS0+cHhwKSwgR0ZQX0tFUk5FTCk7DQo+ID4g
KwlpZiAoIWk5MTUtPnB4cCkNCj4gPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gPiArDQo+ID4gKwlp
OTE1LT5weHAtPmN0cmxfZ3QgPSBweHBfZ2V0X2N0cmxfZ3QoaTkxNSk7DQo+ID4gKwlpZiAoIWk5
MTUtPnB4cC0+Y3RybF9ndCkgew0KPiA+ICsJCWtmcmVlKGk5MTUtPnB4cCk7DQo+ID4gKwkJaTkx
NS0+cHhwID0gTlVMTDsNCj4gPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gPiArCX0NCj4gDQo+IElm
IHlvdSBzdG9yZSBjdHJsX2d0IGluIGEgbG9jYWwgdGhlbiB5b3UgZG9uJ3QgaGF2ZSB0byBhbGxv
Y2F0ZSB1bnRpbCANCj4geW91J2xsIGtub3cgeW91IG5lZWQgaXQsIGhvd2V2ZXIuLg0KQWxhbjog
c2VlIG15IHJlcGx5IGJlbG93Lg0KPiANCj4gPiAgIA0KPiA+ICAgCS8qDQo+ID4gICAJICogSWYg
SHVDIGlzIGxvYWRlZCBieSBHU0MgYnV0IFBYUCBpcyBkaXNhYmxlZCwgd2UgY2FuIHNraXAgdGhl
IGluaXQgb2YNCj4gPiAgIAkgKiB0aGUgZnVsbCBQWFAgc2Vzc2lvbi9vYmplY3QgbWFuYWdlbWVu
dCBhbmQganVzdCBpbml0IHRoZSB0ZWUgY2hhbm5lbC4NCj4gPiAgIAkgKi8NCj4gPiAtCWlmIChI
QVNfUFhQKGd0LT5pOTE1KSkNCj4gPiAtCQlweHBfaW5pdF9mdWxsKHB4cCk7DQo+ID4gLQllbHNl
IGlmIChpbnRlbF9odWNfaXNfbG9hZGVkX2J5X2dzYygmZ3QtPnVjLmh1YykgJiYgaW50ZWxfdWNf
dXNlc19odWMoJmd0LT51YykpDQo+ID4gLQkJaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChw
eHApOw0KPiA+ICsJaWYgKGludGVsX3B4cF9pc19zdXBwb3J0ZWQoaTkxNS0+cHhwKSkNCj4gPiAr
CQlweHBfaW5pdF9mdWxsKGk5MTUtPnB4cCk7DQo+ID4gKwllbHNlIGlmIChpbnRlbF9odWNfaXNf
bG9hZGVkX2J5X2dzYygmaTkxNS0+cHhwLT5jdHJsX2d0LT51Yy5odWMpICYmDQo+ID4gKwkJIGlu
dGVsX3VjX3VzZXNfaHVjKCZpOTE1LT5weHAtPmN0cmxfZ3QtPnVjKSkNCj4gPiArCQlpbnRlbF9w
eHBfdGVlX2NvbXBvbmVudF9pbml0KGk5MTUtPnB4cCk7DQo+IA0KPiAuLi4gaW50ZWxfcHhwX2lz
X3N1cHBvcnRlZCgpIHJldHVybnNlZCBmYWxzZSBzbyB3aGF0IGlzIHRoZSBwdXJwb3NlIG9mIA0K
PiB0aGUgImVsc2UgaWYiIGJyYW5jaD8NCj4gDQo+IFdoaWNoIG9mIHRoZSBjb25kaXRpb25zIGlu
IGludGVsX3B4cF9pc19zdXBwb3J0ZWQgY2FuIGl0IGZhaWwgb24gdG8gZ2V0IA0KPiBoZXJlPw0K
PiANCj4gQW5kIHB1cnBvc2Ugb2YgZXhpdGluZyBpbml0IHdpdGggc3VwcG9ydGVkID0gbm8gYnV0
IGk5MTUtPnB4cCBzZXQ/DQo+IA0KQWxhbjogU28gdGhpcyB3YXMgcHJpb3IgZXhpc3RpbmcgY29k
ZSBmbG93IGkgZGlkIG5vdCBjaGFuZ2UgLSBidXQgaSBjYW4gYWRkIGFuICJlbHNlIGlmIChpbnRl
bF9weHBfdGVlX2lzX25lZWRlZCgpKSIgYW5kDQp0aGF0IGNhbiBiZSBhIHdyYXBwZXIgYXJvdW5k
IHRob3NlIGdzYy1odWMtYXV0aGVudGljYXRpb24gYW5kIHRlZSBiYWNrZW5kIHRyYW5zcG9ydCBk
ZXBlbmRlbmN5IG5lZWRzLg0KDQoNCg0KPiA+IC1ERUZJTkVfSU5URUxfR1RfREVCVUdGU19BVFRS
SUJVVEUocHhwX2luZm8pOw0KPiA+ICsNCj4gPiArc3RhdGljIGludCBweHBfaW5mb19vcGVuKHN0
cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQ0KPiA+ICt7DQo+ID4gKwlyZXR1
cm4gc2luZ2xlX29wZW4oZmlsZSwgcHhwX2luZm9fc2hvdywgaW5vZGUtPmlfcHJpdmF0ZSk7DQo+
ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHB4
cF9pbmZvX2ZvcHMgPSB7DQo+ID4gKwkub3duZXIgPSBUSElTX01PRFVMRSwNCj4gPiArCS5vcGVu
ID0gcHhwX2luZm9fb3BlbiwNCj4gPiArCS5yZWFkID0gc2VxX3JlYWQsDQo+ID4gKwkubGxzZWVr
ID0gc2VxX2xzZWVrLA0KPiA+ICsJLnJlbGVhc2UgPSBzaW5nbGVfcmVsZWFzZSwNCj4gPiArfTsN
Cj4gDQo+IERFRklORV9TSE9XX0FUVFJJQlVURT8NCj4gDQpBbGFuOiBva2F5Lg0KDQo+ID4gICAv
KioNCj4gPiBAQCAtMjAsNyArMjQsNyBAQA0KPiA+ICAgICovDQo+ID4gICB2b2lkIGludGVsX3B4
cF9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfcHhwICpweHAsIHUxNiBpaXIpDQo+ID4gICB7DQo+
ID4gLQlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gcHhwX3RvX2d0KHB4cCk7DQo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0ID0gcHhwLT5jdHJsX2d0Ow0KPiA+ICAgDQo+ID4gICAJaWYgKEdFTV9XQVJO
X09OKCFpbnRlbF9weHBfaXNfZW5hYmxlZChweHApKSkgPiAgIAkJcmV0dXJuOw0KPiANCj4gVGhl
IGVhcmx5IHJldHVybiBpcyBub3cgbGVzcyBlZmZlY3RpdmUgd2l0aCBzcHVyaW91cyBpbnRlcnJ1
cHRzIGJlY2F1c2UgDQo+IHBvdGVudGlhbGx5IE5VTEwgcHhwIGhhcyBhbHJlYWR5IGJlZW4gZGVy
ZWZlcmVuY2VkIHRvIGdldCB0aGUgZ3QuDQo+IA0KQWxhbjogR29vZCBjYXRjaCAtIGkgd2lsbCBm
aXggdGhpcyBieSBub3QgZG9pbmcgdGhlIGRlcmVmZXJlbmNlIGZpcnN0IHVudGlsIGFmdGVyIHRo
ZSBlbmFibGVkIGNoZWNrIGlzIGNhbGxlZC4NCg0KPiANCj4gDQo+IEkgaGF2ZW4ndCByZWFkIGl0
IGFsbCBpbiBkZXRhaWwgYnV0IGp1c3QgYSBndXQgZmVlbCBpbml0IGZsb3cgaXMgbm90IA0KPiBl
YXN5IGVub3VnaCB0byB1bmRlcnN0YW5kLCBmZWVscyBsaWtlIGl0IHNob3VsZCBiZSBzdHJlYW1s
aW5lZCBhbmQgDQo+IHNpbXBsaWZpZWQgdG8gYmVjb21lIGFzIHNlbGYtZG9jdW1lbnRpbmcgYXMg
cG9zc2libGUuIFBsdXMgc29tZSBtaW5vciANCj4gZGV0YWlscy4NCj4gDQpBbGFuOiBUaGUgaW5p
dCBmbG93IGlzIG1vc3RseSBpZGVudGljYWwgdG8gZXhpc3RpbmcgY29kZXMgZXhjZXB0IGZvciBi
cmluZ2luZyB0aGUgY29udGVudHMgb2YgSEFTX1BYUCBpbnRvIHRoZSBpbml0DQpjb2RlcyBzaW5j
ZSB0aGF0IG1hY3JvIGlzIG5vdCBuZWVkZWQgdG8gYmUgaW5jbHVkZWQgZnJvbSBpOTE1X2Rydi5o
IChub3QgdXNlZCBleHRlcm5hbGx5KS4gSSBjYW4gYWRkIG1vcmUgY29tbWVudHMgYnV0IGkNCmRv
bid0IHRoaW5rIGl0IHdvdWxkIGhlbHAgbXVjaCB3aXRob3V0IHVuZGVyc3RhbmRpbmcgYWxsIG9m
IHRoZSBxdWlya3Mgb2YgdGhlIFBYUCBzdWJzeXN0ZW0gZmVhdHVyZSBhbmQgZnJhbWV3b3JrLiBC
dXQgaQ0KY2FuIGF0IGxlYXN0IGFkZCBzb21lIG1vcmUgY29tbWVudHMuIA0KDQoNCg==
