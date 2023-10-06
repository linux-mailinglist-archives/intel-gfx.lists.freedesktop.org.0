Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346E47BB7C4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E114810E4DF;
	Fri,  6 Oct 2023 12:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A0110E4DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696595708; x=1728131708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A4JuI96XIokWiyJb9+DjW04+iVkz9ORttQmg+FQqDtk=;
 b=dwHD2+Cc3YpIswiD8W2C0KXmpduPBIQm46wLVATcWQDgQsxfajyF6cx2
 gVTIctn5M1pgmKcpaUzfMbZWwPpw7Op3yoBqiQg6Rj3xg5styp2Lw2VbA
 HrN57nMmh1EBAzcIQ+w0t5yjTLERZ5QN8Ib5ojz2ZjjInO7fYDy5kMFJN
 xYfLGFpVd1MwRslKCADNvn3q+TXRIpMZYJMIW5SUffRxwao9vF48NDvEW
 pkH8AA+UJitkvF7Zy9G/2NAkx5TlKWmnK6GAPjBhsNBF4lIzmRRkKFbbx
 ar47hAY5GdZz/eIFpzlZWhfVYBlFglWr+Pb8e3Wg1TQZGOQXhmLKkufdq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="387620686"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387620686"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:35:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="822485634"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="822485634"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 05:35:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 05:35:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 05:35:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 05:35:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 05:35:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FU8z3AvpBDwzWH+TwpKImMTDwdFEB3y7wZJLOiF1hXNd+Gme0yHZ/oHoaTrYocTrBA6+R1kNHjMqiILPSWU0lPJVF/2D4WjdnlxptCif7PyXqwrntJI0OLFyrBGTqyrk8giAA71rH4eatHdOgJjM97OLTl8VB8IRP9FBnnjEmjRUVUVHdksAcSGxvUoT1h3yGtTiScessYmqkXv83STNst2miaX9DWO9/YoMR+V0Bm5r8m8Ve+BgQCZQR3dJU2jduVO8HV/WGgiAEqHDyTacMoD/hM/5snROXQAwO42RQTEAJ6XyfGI587j3vCFX4yiBnWe/veZ1FUruZanffAsilg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4JuI96XIokWiyJb9+DjW04+iVkz9ORttQmg+FQqDtk=;
 b=OktqfK4SYdkf/7C5t5fV8p0ULIJUu4djKL/9sGsI1YaIuY62V7/Rqvtsd5aITyWMn8aAcaXqTA9CCh9pG88COU2sw81/MQocjdFFH1Y6JuMjDlr10+1OLZ74syl8R5nWgyYeYGbno82Gs7oSxZiz2+2ilrs4WuIb1pZs8X0pLaw3s4etVZToXpAC+OcPNQt1fO5CQ6cZhFDqFmr0Om7D8LVX4gG/aVWEKCvA/sHeT7f83G9kaWnmum2eZbeAmcinar3ytX+TPSgX5p3nxRO4yhOM9O+OSw0Aiahk+jeT+5v9aLKTQmKm1jiNCN+WKreAOeDJmnFtMGNV4tamNT1yNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by MW3PR11MB4553.namprd11.prod.outlook.com (2603:10b6:303:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 12:35:03 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42%4]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 12:35:03 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
Thread-Index: AQHZ+EsCyL8kKScQTUW1pyoB3+rnkbA8sOIAgAAAvhA=
Date: Fri, 6 Oct 2023 12:35:03 +0000
Message-ID: <SN7PR11MB7041CA48D3CEF573336666E6EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20231006114210.535229-1-mika.kahola@intel.com>
 <ZR_9ovOGMOWOOtHr@intel.com>
In-Reply-To: <ZR_9ovOGMOWOOtHr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|MW3PR11MB4553:EE_
x-ms-office365-filtering-correlation-id: 3c3607fd-3624-41ec-3084-08dbc668a9f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yjX7kxFkU1uV4sv5gkz3oWuiLLtZJzjg2HKqhVqQun1UqJsu350woC9PvA+rjwnKDiwSpbXgRQBMn8KlGhjjHtAZUmUTk5FOGL+qm0AfV2EsE3/Yr5Q3IuXA2MU5HKfBkNmXNmvH1N3M+QzR08NeinB352TJaZgmfp71nhmoM02BRD6dbJZQylplVyaNvX7vttpX3ZhBLdeKJrjkd3/cel6kWekYKX55qZFAQvgt16DdVy9b3/XE0kJ7UWOvYSuQhrfrx5KGhroCRmSrqhDTwc7/R69Xbr1ihM7wqo2efnu1CkpIRIdQga7WmldpLbfJKFcoklGYEfYS0T9kz8LJAzkjDY3nR1hbfY0O7y4Y9JLff0QapnSwx1q98XzlqPM+ThsVYaJ4VSh4NTIRgxAC2ImVwhsH9MXrOVlaCnDDZIKJNIBX5qm3A4hwlLMd+OzKO7pIGkg7TcId2jb4dk13cCukRso0Z7giXN5IkyMTqaX1hUZdHLYA3Yjom/sg70Vr8evKXXCw4g9Ko8L05FBVs1tPjj4UQj61uysYkbleuIuICWlTPD7saY7FjCkBLNoTiYCEg9RVyB3Ej/Q4ieYXGNMqi9/4VX71LAOWCfKx8ok=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(346002)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(9686003)(53546011)(7696005)(6506007)(478600001)(38100700002)(82960400001)(33656002)(38070700005)(86362001)(122000001)(2906002)(6916009)(71200400001)(83380400001)(26005)(66574015)(41300700001)(64756008)(8936002)(52536014)(76116006)(66446008)(66476007)(66556008)(8676002)(4326008)(5660300002)(316002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NENpcnJNVGtGaUNaVnBXRkV2NkNWYk9NY0trbmk0em05VVdXOHUvejFmU2tN?=
 =?utf-8?B?VUw4NTEwU3VvMGZ1WHZERHppTXdBMkJjVnpzZ1AxSnRLcGhQWm9MdUs3SXE5?=
 =?utf-8?B?b2FZY2NuZW5NdXBYd2NRUmVDNU1UMlkvOXluN0IxcC9vbVJyVjU1blozbmFo?=
 =?utf-8?B?azlhNW5TclRCRTJZTE9Vay80UGdIQko1UldlOUQ5TkgzcFVuU3VhUForb3B0?=
 =?utf-8?B?eXA2YUVhSHVMTVA3Nm5tT0RVazdST2duNG1BVk5CTWZPdUs3QkduWjdTWUtH?=
 =?utf-8?B?NUNuakFsNitHbXBtTzdZRkxVNWhvam9JbjZJb2RZMUlMSWJiWE83NmJ4T1dT?=
 =?utf-8?B?Z3MvdjhOcVFNNGs3cGViYytHTHNhOGpla3NBY3JSK3ZMT1hWWTRtRG9MeUVt?=
 =?utf-8?B?QnoyTFZocFRZQU5ZaWdlb2M4OHZoMlFlVEtTbjVwR3hUV2RBYTdlOGNKc3Zx?=
 =?utf-8?B?T0s5UjRYcURFYzArS014cWx3UUdLWm13ZStjc0FVcmh4TVdHbE01WHhtalFP?=
 =?utf-8?B?cHB4SDlXSGNGUEQ1ZzY5SXBXaVo0RnhYSUxHa2pkK0RrekZYNmp0Qk1WYmxQ?=
 =?utf-8?B?aUpJT2N6RlVEeWw4Tnl5UVN1aDVEQUhOVW5TbGg1cVlzL3JmQ2ozSFhaTWRL?=
 =?utf-8?B?aGt6bFN0VnkyRVZDRGdkN1M3ZUtXVGF1K3plVHYrMHVRUk5MY2V1RDhCWXl1?=
 =?utf-8?B?bjV2VDg5WDFOYVZYbWo2M2JRZmRFVEFMY3pvVm1PNmRvVzNvems5SWRJT25X?=
 =?utf-8?B?UDhxS0p6Q242NDdVdWxrS3JYc1g4Q3ZSY2RuOXliMVJVUjh5MnpjNXEySi95?=
 =?utf-8?B?OTgrT0dVeExHV1RXaWw5alZIRGdydGZyMDRsQTFZdXhoemlSOWREZklnbndx?=
 =?utf-8?B?Z09CNUxhUEJKSnhRbzlybld5YXgraEtOMVRNRTUxcHh0Um14SXdKbjA1dHJw?=
 =?utf-8?B?TEkvYW9abnFFMzYvNVNYeEFBc2Q0cmxEeDhHMDlpTTRtdU5jWkdUU1IrTHdU?=
 =?utf-8?B?UUxINHVpb0IranBXZFE1eEFqSC9GQ3VGTFpNNW9tU3lPcDVVNUFzc0VHMWpZ?=
 =?utf-8?B?VS9jTW9oSnREcjVsK2Z5ZW1DQVUzYVpjWTFrOXp2Z3dIQ3lmMFNXd2xIdml6?=
 =?utf-8?B?Ui9ETWU2SUZlQlpySmxIVzdpRGliaGdYMG5YWkx6TDBvTDlRRmJXT3NSOCtY?=
 =?utf-8?B?WkNhTUR2QmF1elI5NmNLRzNGWWpXazg4Y3p1RS9FSWltbE8zWEFsVkdhV25T?=
 =?utf-8?B?OEcrMjNhQytmNW96Yk1uV2pKQ2JzdU1Cc0h3Nkc0ZDNsbzNyQlN1V1cxZEF5?=
 =?utf-8?B?UkNCRHFOSDhvUy84ZGhKN3BsK2IxMWZOYTBERVhUZndZNXY2ZTdMY00rQzJp?=
 =?utf-8?B?UFdvRzVzTmtZdFlyTlo0Y0hlNGdhUHdQNFNFNGk0WkJSQmJIdGNBYTVPeU5j?=
 =?utf-8?B?bGpxcXlJellPQWpERmFMcmNkeDJ6N3lLaVBvdmlOYmpnU1ZEUWpnYm1MS3BK?=
 =?utf-8?B?UlNhekpVZjkrNDZRS0hjU00za3J1bjdTaEw2QWtSUitoWDBnSmp1S0RkYStL?=
 =?utf-8?B?N041bXVrWjJsRjk1VUVKeTZjaGdWNnN3NExWT0RhdU4yTEh6dDAvUWpnbmZx?=
 =?utf-8?B?NFZkZ3V5SG9sRGlOeFYrQmtRSGdKTXk5eWlCN0h4ZWZSNFhkbXRVZk93d2Yw?=
 =?utf-8?B?dUdEVjFnTWhTSk5WdzYwZFJTT2lkWmRJbldjckZ4T0NNY0hYbGtwMHNGNkdV?=
 =?utf-8?B?WEVTMUpBaEc1clhqUFRCSTNTNHhRckxNbnZhNmZULy9mYTQvZTJXSEU0L1la?=
 =?utf-8?B?VGlwZFVPNHZ6eHNuVmJBdTVVbUFad0tFR0FjQnNPanFNYnplcW44VzlTRGJH?=
 =?utf-8?B?dFJ6N0ZlS1BpQ243S2dNS1JySm5qL0MyNXV6MlJiZEw2cXVzTzdzUmFxM2E2?=
 =?utf-8?B?Szkzd2s3cHJxUjB3UmFkQlpSZkViL1pHVS8wSVNBUE90U2c0ZGJ6Qk1yU3hq?=
 =?utf-8?B?YXBIZ3RIN2tTUXhxQ3p4ajBGUzdjc1g4eG1GeVlMc08za3lYNnNwcFVxazVt?=
 =?utf-8?B?R1htby92UUJMeVdDODdzMHBXaEx3d2toR2VXaUE0RTdVb3Avc0grdW9Qa3dM?=
 =?utf-8?Q?PAqOEslkN9tlBfc6+n6pejans?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3607fd-3624-41ec-3084-08dbc668a9f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 12:35:03.2558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ejd6h+dX5ns2evaF+vuYy8IbbStfLYPYlsvH/MS53EjJfctjnOAQd36eLqsHNiwdcRV61iuVoXGTARMJY2WkUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4553
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgNiwg
MjAyMyAzOjI5IFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvbG5sOiBSZW1vdmUgd2F0Y2hkb2cgdGltZXJzIGZv
ciBQU1INCj4gDQo+IE9uIEZyaSwgT2N0IDA2LCAyMDIzIGF0IDAyOjQyOjEwUE0gKzAzMDAsIE1p
a2EgS2Fob2xhIHdyb3RlOg0KPiA+IEN1cnJlbnRseSB3ZSBhcmUgbm90IHVzaW5nIHdhdGNoZG9n
IHRpbWVycyBmb3IgUFNSL1BTUjIuDQo+ID4gVGhlIHBhdGNoIGRpc2FibGVzIHRoZXNlIHRpbWVy
cyBzbyB0aGV5IGFyZSBub3QgaW4gdXNlLg0KPiANCj4gSSBjYW4ndCBmaWd1cmUgb3V0IHdoYXQg
eW91J3JlIHNheWluZyBoZXJlLiBXaGF0IGJzcGVjIHNlZW1zIHRvIGJlIHNheWluZyBpcyB0aGF0
IHRoZSBtYXhfc2xlZXAgdGhpbmcgZ290IG51a2VkIGZyb20gdGhlIGh3IHNvIHdlDQo+IG5vIGxv
bmdlciBuZWVkIHRvIG1hc2sgaXQuDQoNCldlbGwsIG15IHVuZGVyc3RhbmRpbmcgd2FzIHRoYXQg
d2Ugd291bGQgbmVlZCB0byByZW1vdmUgdGhlc2UgZnJvbSB0aGUgZHJpdmVyIGFzIHRoZXNlIGFy
ZSBpcnJlbGV2YW50Lg0KDQo+IA0KPiA+DQo+ID4gQlNwZWM6IDY5ODk1DQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjQNCj4gPiAr
KysrKysrKysrKysrKysrKy0tLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDg1MGIxMWYyMDI4NS4uMTNiNThkY2ViMmJm
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gQEAgLTY3MiwxMSArNjcyLDE1IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IxKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiAgCWVudW0gdHJhbnNjb2RlciBj
cHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gPiAgCXUzMiBtYXhf
c2xlZXBfdGltZSA9IDB4MWY7DQo+ID4gLQl1MzIgdmFsID0gRURQX1BTUl9FTkFCTEU7DQo+ID4g
Kwl1MzIgdmFsID0gMDsNCj4gPg0KPiA+IC0JdmFsIHw9IEVEUF9QU1JfSURMRV9GUkFNRVMocHNy
X2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsNCj4gPg0KPiA+IC0JdmFsIHw9IEVEUF9Q
U1JfTUFYX1NMRUVQX1RJTUUobWF4X3NsZWVwX3RpbWUpOw0KPiA+ICsJaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA8IDIwKSB7DQo+ID4gKwkJdmFsID0gIEVEUF9QU1JfRU5BQkxFOw0KPiANCj4g
VGhhdCB3b3VsZCBtZWFuIHlvdSBuZXZlciBlbmFibGUgUFNSMSBvbiBsbmwrDQo+IA0KPiA+ICsJ
CXZhbCB8PSBFRFBfUFNSX01BWF9TTEVFUF9USU1FKG1heF9zbGVlcF90aW1lKTsNCj4gPiArCX0N
Cj4gPiArDQo+ID4gKwl2YWwgfD0gRURQX1BTUl9JRExFX0ZSQU1FUyhwc3JfY29tcHV0ZV9pZGxl
X2ZyYW1lcyhpbnRlbF9kcCkpOw0KPiA+ICAJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQ0KPiA+
ICAJCXZhbCB8PSBFRFBfUFNSX01JTl9MSU5LX0VOVFJZX1RJTUVfOF9MSU5FUzsNCj4gPg0KPiA+
IEBAIC0xMzk4LDEwICsxNDAyLDE2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291
cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gIAkgKiBydW50aW1lX3BtIGJlc2lk
ZXMgcHJldmVudGluZyAgb3RoZXIgaHcgdHJhY2tpbmcgaXNzdWVzIG5vdyB3ZQ0KPiA+ICAJICog
Y2FuIHJlbHkgb24gZnJvbnRidWZmZXIgdHJhY2tpbmcuDQo+ID4gIAkgKi8NCj4gPiAtCW1hc2sg
PSBFRFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfA0KPiA+IC0JICAgICAgIEVEUF9QU1JfREVCVUdf
TUFTS19IUEQgfA0KPiA+IC0JICAgICAgIEVEUF9QU1JfREVCVUdfTUFTS19MUFNQIHwNCj4gPiAt
CSAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfTUFYX1NMRUVQOw0KPiA+ICsJaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAyMCkNCj4gPiArCQltYXNrID0gRURQX1BTUl9ERUJVR19NQVNLX01F
TVVQIHwNCj4gPiArCQkgICAgICAgRURQX1BTUl9ERUJVR19NQVNLX0hQRCB8DQo+ID4gKwkJICAg
ICAgIEVEUF9QU1JfREVCVUdfTUFTS19MUFNQOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCW1hc2sgPSBF
RFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfA0KPiA+ICsJCSAgICAgICBFRFBfUFNSX0RFQlVHX01B
U0tfSFBEIHwNCj4gPiArCQkgICAgICAgRURQX1BTUl9ERUJVR19NQVNLX0xQU1AgfA0KPiA+ICsJ
CSAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfTUFYX1NMRUVQOw0KPiANCj4gVGhlIGhwZCBtYXNr
IGJpdCBhbHNvIHNlZW1zIGdvbmUgbm93LCB0aG91Z2ggdGhlcmUgaXMgbm8gZXhwbGFuYXRpb24g
d2h5IGl0IGRpc2FwcGVhcmVkLg0KPiANCj4gPiArDQo+ID4NCj4gPiAgCS8qDQo+ID4gIAkgKiBO
byBzZXBhcmF0ZSBwaXBlIHJlZyB3cml0ZSBtYXNrIG9uIGhzdy9iZHcsIHNvIGhhdmUgdG8gdW5t
YXNrIGFsbA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QN
Cj4gSW50ZWwNCg==
