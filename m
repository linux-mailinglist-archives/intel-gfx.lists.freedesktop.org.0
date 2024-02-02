Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3CC847185
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 14:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3058110E194;
	Fri,  2 Feb 2024 13:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="loWR/HQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31DC10E194
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 13:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706882307; x=1738418307;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LqkyLGji0W2xHa4ALFdqC3RnrRHHQTK0cSqNG0gvt48=;
 b=loWR/HQqYSaUtl/B2JkuKphgftJqqwiGxkycigk3utHV/688pbhpo+Q5
 EnZdNWfDoGM7D+lV7U21kd6Sc7mh29mn82ICO3zWM/m342ND37Jv/UoRQ
 dLT9/ZtZLbBlqO99R7DLRIrqc3ahXxWcwJqaEzg2xes39U7IEOPSz9r3k
 iRwOUGK0lh0NXGEO7MnI9Qho0PW8cgZueu5B281BfSmLPQX9PzZoCo8Nw
 BLgYuAiuTw4V1AXRGvR9XjnVyyJPUPNW3i9YdVSmGFIbYc2NxSAOGG+68
 IFDewG3Fn0w/PR3Dv2gStTk2kDU7kKZzFxmYZzrqNzzlukejmyDAtd48e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="4000478"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="4000478"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 05:58:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="932479601"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="932479601"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 05:58:26 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 05:58:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 05:58:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 05:58:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 05:58:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIO3Xln/0GZOwupoW3gmKO0wYEFcxP5tamFC6y1sZbhgIY1Fq1d0Oyjgv0sn/xJ2Kw0+bt+3CuO6Ra0+qCaNLBoOp2dtYhVyXYvsWPWh9im9mRMpxmctg+lUiveSvL8u8O3Lsg7cmkswQehlN0zwz40BR+kBDYNvdbupaZZrT0HbicOn9/kPkbeZmn7aUV30uY1KdCElKqBBzB9fAsK8FI3eiM+L/Vc7gORae2GAQbn6g1fGXvzM8XI9kNZsxNc6lq26q/JrlCJk8WaCg31BNQJ1YUkHpVHMniSeAJ/qMHBfFuekrWBkw7ykdxYtZCWVYqvWurSGUp9QHrfj7RGv3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqkyLGji0W2xHa4ALFdqC3RnrRHHQTK0cSqNG0gvt48=;
 b=kUdpvM9lyiPNmi9Pv6sm3mU9VYnV9vyrbtZyc9eZbXoqpAtRnuueVuK3sOH6u+kKtAh2H1prMt7Zacd/p1TlLbzyESQQMsxe6YRnDLDTy0mE1EBhqGxWjBJVpmfwChaT+uGxbG59xWS688Z08H6Z0mofTlIk/qHLythTZ32a025Hsbbfi2oOEHOyqRIoE3HPAxd52OjPhOTHJThSIAIZ7wlmLLmmhn2spQz5q3bzw3y3suV2kU4OADDzbPY5ppxjQ6PSWLw2loijlMWXStK2LdJuzt/CVG0fHjhMMT0zi9dpu/ufmTz+hkPgysHt9mkQwc/+9L4saq3p3IGo8hN4xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7682.namprd11.prod.outlook.com (2603:10b6:8:dc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.27; Fri, 2 Feb
 2024 13:58:22 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 13:58:22 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 11/21] drm/i915/psr: Modify VSC SDP calculation to
 support panel replay + su
Thread-Topic: [PATCH v3 11/21] drm/i915/psr: Modify VSC SDP calculation to
 support panel replay + su
Thread-Index: AQHaSr/Uln8lnd8+YUaDwzaiG/IUfLD3J8ZA
Date: Fri, 2 Feb 2024 13:58:22 +0000
Message-ID: <PH7PR11MB59816E27ACC780CA328DCAF2F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-12-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-12-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7682:EE_
x-ms-office365-filtering-correlation-id: 13887915-587c-4e91-a25a-08dc23f704b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7YQ4PpRA9UoYoprmJxStbiA/3BLZpK7WIL3tOfFd/+o7KYoL7iwuVkYVufkwgXmNfuPdFdvf/FK3vhEZnZBEedeb2UUEZqahPzosEdNdBFmInetVckfMInAhOkSaQb7a0othg8jrelIQnUb7bEL3Bo6sENjYWnXWEdeEuNzyDVjVQZAra+l01J4BRTqMPAUPCiARyPaLG+syLkjjNYhMUUUTQ7E9lGelzJO28wck7RJO+xWIyLq70Ls+h64oHMiCZxSMU2YaNGa0Re17jnO/Y4hbIHYjMlHv2u9Ab6kv+jw3rfB5L6RSyWo/8xRJk5I6pZZo4ekSt9pxJYbFAzQE9/R2+/27/7kuAqftQ4f4vjBiEjS53KUNG5majOODXwcudwVXqXoO/t4ao3FN/jSwWnqm89tNEDL1ptgf97eFRXYdaJOe2xEWapng3vUGNk+tzf2lwVoQTlCaByxsEhM4LjOuWdwVbbo5tTpSf+3NY5+dG46AXQbApAOeyro/WvZk8PLKncEiMAuVn8JHXNIyu8SQclW/5ks34NlYnpf/d2fRhURA/+n2C6QHK/4FSXelSqnMWAQGb0hyQ3CAHny+JPLVYbzw4UAmmPswd1f9vnuqe1kxs1kpmmDZczL11aye
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(136003)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(66574015)(83380400001)(26005)(41300700001)(82960400001)(8936002)(71200400001)(38100700002)(110136005)(64756008)(66946007)(66446008)(76116006)(8676002)(52536014)(122000001)(316002)(66556008)(66476007)(5660300002)(2906002)(7696005)(6506007)(53546011)(478600001)(9686003)(86362001)(38070700009)(33656002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cU9WYStvaTJyWVpiY2t2SHBuMDhFSFlqY1AyWFNBc1NvQjY0REc1bUxHTVJP?=
 =?utf-8?B?c09obFhzSW00RWx4UGFWUENiSzNaZG45SFBXTUlnT3RQOURFUlIreVhYY2lz?=
 =?utf-8?B?eWwrd2J0MUR2dzJMZ2QzVi9jek1Wc1k2aUx1YmZPYmlZcENUaXl3am5LRDVG?=
 =?utf-8?B?SFI0eTBjSUI4OGJaN3hzU0ovUTh6eTJ0NWZ4UlZOMmdCbjhSc1laK1daaW1T?=
 =?utf-8?B?VEYwVzMzWFRUY2JkbjZxQXBxWjNybklsbUpzNHJYdkpZbksrUjZYdkxZQU1K?=
 =?utf-8?B?cFFPUzhHWk85YkJ4bWx3c1plNmpZTU01Vkc0dVIyRy9PaVdyejI5b2ZLT2Na?=
 =?utf-8?B?dG91TGJLK2l2RS91OHdmYlJzN3M2ektzdThzV0k3aFdoYWxRd28zUnp0MGNT?=
 =?utf-8?B?S1A2RVBrbWduN0xIRVpBL1VrV0dJOWZnNGdnUFRYY3JPVk1TSmhibVo5UTZH?=
 =?utf-8?B?OUZhbVo0TCtPRWU1Y2JMTWtCV0pLN3VtNWZ6NmlYVU9CU1d3SlZ5MUQ2b2lP?=
 =?utf-8?B?ZW9mNlpwamdnNnZGei9mWDZDL3kxd0NaUEpKa0MrUnNsekdNeVBMYmsxNmZl?=
 =?utf-8?B?T2ZZYnJQOFlVNWd4YjFiK1NUMElGWXg3bURLb0wvY3pPdTJGWFlYQ3dRRHd1?=
 =?utf-8?B?ZEEwK09vbzJ5Z05aSDlvd0FYZUpnUm53aU8vcWNJWkhzdm96MURSbzN3ZUd0?=
 =?utf-8?B?Tkd1KzllQzYwZTRnUTdKanQ4YVlaYlpITXRZcHVBN3QvYi9hTzQvOURmN1d2?=
 =?utf-8?B?WEZSYjA1Y2huYkY5VUxwUWNva0tIT1p3cVU5a2xPeGVsU1hMSDVicDJtQWpm?=
 =?utf-8?B?RFFMdXd4QnJwZFVmVjBJWitDcjZ1MURUd21xN1FKOEJnMzIxaUtsUk9KRWxB?=
 =?utf-8?B?RzVWU1JuM3Z3eUxrei9ybGlrZ1FLS0ZHUU5uMkRyZWwyd0ljclArbmkzVlo1?=
 =?utf-8?B?allFRXEybDlJaTFybjdoMHBkaUpITDRQOXNvQlVvbEpQTmJTWEdacnJjTGI0?=
 =?utf-8?B?YlFSU2FLQjJzcHVvRUdKaE1RRW43RjRlMnp4NjdFMzRwYnZzNkVxU09Ra3pr?=
 =?utf-8?B?Q2lHZ2JhQXQ0L3F2YktrNnRnMy82a1haYlpiU01QbGhSUytMTGl6Vm5IVTln?=
 =?utf-8?B?YXZaRWo3L0EybUliWit3MHBsdmUvbTE5RExsRmdZaU0rQUdiSzJ2MXEyZWpH?=
 =?utf-8?B?OWdibXBhdEI2a1lsRTMwMXgzQ0xpSTJ3aVVqOHM5YWJRbUh0QjNXTDBPcnFW?=
 =?utf-8?B?Tm0ra0YwSkt0MUpTRGM2MzVnWGVvMVBmdkFGSDdORkJPOVg5ZGFHWURUK2Zj?=
 =?utf-8?B?NVdoSk9YKzd4dU5BV2lrRmxWdkdtMVVBcE9kdFljaXoyUGV1UnIxZmJzUE5a?=
 =?utf-8?B?OWlBc3RPL1I5ZUZnVkJOcDdTNXBsS2lrT3NITlRVcWMrSFNFNWg4SGVjTkNq?=
 =?utf-8?B?STZQVjNGL01iRVdwcjBzTzZsVTg1TnRwMklSZTgwNFFZSkUrRGozZlY2NitT?=
 =?utf-8?B?M1ZLZEpkRDJMMWFtdWpZQXc4TEw4SnUxNUpHV29aVzQweUl0KzMwNDg5Q1p4?=
 =?utf-8?B?TmtreGgxY29zdGlnTjZZR1dnMjdYOUZzUDg2bjNEbmtiSUU0ZzBPWmk3RTcw?=
 =?utf-8?B?cEMwc25qZFpwMHB1bXo3UEVtT09YWmJXakE0QjQvOVdsRFRtS2x5Vks3Z1dL?=
 =?utf-8?B?WDZ3K1ZSOWR0ZVFYbVVEdGduNVdLSUtkZUtTNjVLSkEwc1dWQ0xlbzJNRG0x?=
 =?utf-8?B?WDJDZzc5SVVVN1JMeFJBZEQyZU5udk01VmQ4aTM1NGRTRzN2dVFwbkk3R1kw?=
 =?utf-8?B?b1dVQXBWQXJFOVBaRUMzVVV1aHRtUC84ZVdhN3RBVGtndGoxUDg2WU1QV1dy?=
 =?utf-8?B?VGJRelF1bExETFN6V2VGMmZuc3c2YURwTkcwc1plaml5Z3RWUjVQRWx3WUlI?=
 =?utf-8?B?d2hQcU5mNm1XaVVJYjlBeFpYbG03d0FJRHB0eGtRdWZIdjVkM1FhMnVoOHN6?=
 =?utf-8?B?SklJVFg2QWM1OVIrRWJXUUhHNDBVdXdCdG5OaU1KRUswR3IvNlYrQmxleUNz?=
 =?utf-8?B?VFZNeDgwNW45ZjUvRC96Y2NkMEw4L0lVSEdERGZIbkkvRldXeFh1Ujg1cTgx?=
 =?utf-8?Q?T3tKgVWtpNuk9Hm8vEGDkSeZA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13887915-587c-4e91-a25a-08dc23f704b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 13:58:22.2316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FCkLzglgnSip4or8Hd9CoKKh0cCR+ORVAwaE7AKXis03sxCd83N5k2raUAySJww2vjJlSwjFLisH/WQvJlRdWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7682
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDEx
LzIxXSBkcm0vaTkxNS9wc3I6IE1vZGlmeSBWU0MgU0RQIGNhbGN1bGF0aW9uIHRvDQo+IHN1cHBv
cnQgcGFuZWwgcmVwbGF5ICsgc3UNCj4gDQo+IEN1cnJlbnQgVlNDIFNEUCBjYWxjdWxhdGlvbiBk
b2Vzbid0IHN1cHBvcnQgcGFuZWwgcmVwbGF5ICsgc3UuIENoYW5nZSBpdCB0bw0KPiBzdXBwb3J0
IHRoaXMgY29tYmluYXRpb24gYXMgd2VsbC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE2ICsrKysrKysrLS0tLS0tLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDRlMDExODI2NjJm
Zi4uYWUzNjhkOTk5OWI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IEBAIC0yNjMzLDE0ICsyNjMzLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29t
cHV0ZV92c2Nfc2RwKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaWYgKGludGVs
X2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSkpIHsNCj4gIAkJaW50ZWxf
ZHBfY29tcHV0ZV92c2NfY29sb3JpbWV0cnkoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSwNCj4gIAkJ
CQkJCSB2c2MpOw0KPiAtCX0gZWxzZSBpZiAoY3J0Y19zdGF0ZS0+aGFzX3BzciAmJiBjcnRjX3N0
YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAtCQkvKg0KPiAtCQkgKiBbUFNSMiB3aXRob3V0IGNv
bG9yaW1ldHJ5XQ0KPiAtCQkgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFzIHBlciBlRFAg
MS40IHNwZWMsIFRhYmxlIDYtMTENCj4gLQkJICogM0Qgc3RlcmVvICsgUFNSL1BTUjIgKyBZLWNv
b3JkaW5hdGUuDQo+IC0JCSAqLw0KPiAtCQl2c2MtPnJldmlzaW9uID0gMHg0Ow0KPiAtCQl2c2Mt
Pmxlbmd0aCA9IDB4ZTsNCj4gIAl9IGVsc2UgaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBs
YXkpIHsNCj4gIAkJLyoNCj4gIAkJICogW1BhbmVsIFJlcGxheSB3aXRob3V0IGNvbG9yaW1ldHJ5
IGluZm9dIEBAIC0yNjQ5LDYNCj4gKzI2NDEsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29t
cHV0ZV92c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJCSAqLw0KPiAg
CQl2c2MtPnJldmlzaW9uID0gMHg2Ow0KPiAgCQl2c2MtPmxlbmd0aCA9IDB4MTA7DQo+ICsJfSBl
bHNlIGlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiArCQkvKg0KPiArCQkgKiBb
UFNSMiB3aXRob3V0IGNvbG9yaW1ldHJ5XQ0KPiArCQkgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9y
IFNVIGFzIHBlciBlRFAgMS40IHNwZWMsIFRhYmxlIDYtMTENCj4gKwkJICogM0Qgc3RlcmVvICsg
UFNSL1BTUjIgKyBZLWNvb3JkaW5hdGUuDQo+ICsJCSAqLw0KDQpUaGUgYWJvdmUgY29kZSBjb21t
ZW50cyBuZWVkIHRvIGJlIG1vZGlmaWVkIGZvciBwYW5lbCByZXBsYXkgYXMgd2VsbC4gSG93IHBz
cjIrc2VsZWN0aXZlX3VwZGF0ZSBhbmQgcHIrc2VsZWN0aXZlX3VwZGF0ZSB3aWxsIGJlIG1hbmFn
ZWQgd2l0aCB0aGUgc2FtZSBpbnRlbF9kcF9jb21wdXRlX3ZzY19zZHAoKSBnb29kIHRvIGFkZCBz
b21lIGZ1bmN0aW9uIGRlc2NyaXB0aW9uLg0KDQpSZWdhcmRzLA0KQW5pbWVzaCANCj4gKwkJdnNj
LT5yZXZpc2lvbiA9IDB4NDsNCj4gKwkJdnNjLT5sZW5ndGggPSAweGU7DQo+ICAJfSBlbHNlIHsN
Cj4gIAkJLyoNCj4gIAkJICogW1BTUjFdDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
