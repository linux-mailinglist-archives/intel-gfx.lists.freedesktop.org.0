Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FF5737FBB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 12:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6349910E43F;
	Wed, 21 Jun 2023 10:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FDC810E43F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 10:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687345074; x=1718881074;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1aUsOSV1Fa/hijkgSuwsh0LXUi2AZ5wrJ2A2G1AoxaA=;
 b=fVCQa0OWmsMIyQfHJkHv6QDTcmPLzvXXcXEESl8E6ihgk5inh5TJpSBh
 WEc0v7TKLE3uV3nsAFc76hwKoBUonzk5xxkBDJ6LfBXSTZ2ZHjM4oS1Lx
 b3sroy+KBWEFhlVkQrAgZ14+gcGIi1mnqFzdpHn1Wf+pI438PeLicNSsS
 C3QTSWZTxO0AOCH9J6ZgQld/8IofdrUVfIrSQe1BGEynhYKUfzrsBU3CV
 hwkxdyhdOcdeI/wjUSuHqalwc4uwyw3EXo1tDinG4oIzDcelvBrbxv8NY
 Fh8bTOrvjjZUGI/MjOcbtkGkOVqyinJdG3Z7pA6ERH08p5ne3Uxh4f3bl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="426091564"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="426091564"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 03:57:53 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748622063"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748622063"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 03:57:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 03:57:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 03:57:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 03:57:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CmMo44a4opKrGgCn/Xw4N1NSi1719tGSPpvaqN2sOSiugvQlU/DaQhgP8JlBsWbTS/XJfpxQ1Lj7JbJesoJHIKHVWOqynfmYvnO8rlrSc83VP02bLepz9Khr1FVimDMhP3nTygABv1y3ceg+JUVuPdIK2uJAPxQdoRe40GjbcK2ma72IPmS5sGh+Cs/bggCf/KP5ZtoghAlzUPuD38rTzOBOPAp88xotva5Bu0kW5eg+GtJtl+xi5fVR0/hLwsx1y+GKjnke0LuADVTBKe8P58X0EIdK9r26axiWRR2l9GQ3VIny6fnAQH2JUwZdHE3up2w4zNLzckwvKvwvV4hzfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aUsOSV1Fa/hijkgSuwsh0LXUi2AZ5wrJ2A2G1AoxaA=;
 b=H4ph8u/UPDXR5Yf8IhMmhlJJXMMsfQ9Znpd9XbdgpZYhNbTNnTKWQeYuXlNTRU7uf1SxVHQkwRRHaGnqDNvrbNPSK+TcjecfsBojeMX0jDUSqej2WfDd7To31PgHzw/WR6mye7qa7Yea9IBmD18ZvRYz4arb/afQJ6EYX3k4ZwwV8KPGmNV0zc8LLwjWniFmzprhctyum5mupyBJVwgYcO9BiAgXBJfn7lhCza8a4qQrjR/60Z9WaHBcZdbAUs9Em5Xya9PBRR7AJ+IbJ3WAzn4B8U9RAyU/Z9uuAgyxzmoCrPy7r4DFWMOuwYG3rz5ScpEBk2oewJ2IAAR6XLnCRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by CO1PR11MB5043.namprd11.prod.outlook.com (2603:10b6:303:96::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 10:57:45 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dd90:9de0:7861:31d9]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dd90:9de0:7861:31d9%3]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 10:57:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr: Use hw.adjusted mode when
 calculating io/fast wake times
Thread-Index: AQHZo2jlkxCoC7HTaUi1bBXtsWgr+K+U1RgAgABCfwA=
Date: Wed, 21 Jun 2023 10:57:45 +0000
Message-ID: <e59229f741ed7e28747810f70800435e75dbe6f7.camel@intel.com>
References: <20230620111745.2870706-1-jouni.hogander@intel.com>
 <MW4PR11MB70545CE7E4E564111127668AEF5DA@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB70545CE7E4E564111127668AEF5DA@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|CO1PR11MB5043:EE_
x-ms-office365-filtering-correlation-id: f53f2776-e1b1-4986-e3e0-08db724657ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCO1XcN2ccrAhhoWxddu8ZS05ilM5smYqVkHLalh+iaAXWb2KD11Gf/BsgC6K62ostdwDxis7/2FMr5gu3WdlKz/brgudgxkANkDDQb3AvWsaQTXBoJBnFuOe8MF0RE4uspKY3g/ccz8Tjf6aexhpMCHdxlbAD75wU8rKiYJB0vlwujGdiaviAWuJdEnLth2on/5YYWwG/NyQMeHosDTZvnIDJTgHaUyOgDiJ+yYo5SAgNqVWyoUAKLaZygkZJdaK1OMqa538dOn6rSn3afGCKBuiOaDNvnx678Ex91o3kExSbnIj4PdR/YDArPNWqvLhgsdSfVEIqw10IZF48ma8alg6wosZuZAr1Qjh4KXiMe/fiwtIuXzoaYgYXOhrN2F5nsKHUho0+FLmcOTRbjrPd4OVX1DhiOwEsW7sTXjaDjyZGPw7zK4E1X6pzfrJGk/3U9Lx064uhhuX17K87lrzm4PN8wqyCtBXLm0bf8rrpZhapAMkqU8ZmOtDLLQAkuguRhMu7eMgyKoXakQT+5qK+ork/Vpq4HiEuOtWhvbFVpRYJk9ldJCpK1wuA/1stAq/hoVd0nX/MZHCIkrcQmlQjrwlvxfwVW1jxiP5b1sKV8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(136003)(39860400002)(366004)(451199021)(5660300002)(2906002)(8676002)(8936002)(83380400001)(38070700005)(36756003)(86362001)(122000001)(38100700002)(82960400001)(71200400001)(64756008)(66476007)(966005)(66946007)(66446008)(6486002)(76116006)(91956017)(478600001)(66556008)(6512007)(26005)(186003)(41300700001)(316002)(2616005)(110136005)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1d3VFJCcjdxU2lCT3lXZ0MzL3NIZUsxSW9Td2VUQmNoaUdTWE9VYzdrc2VF?=
 =?utf-8?B?SmZ4aHdWcUl2cFlJNEJwd2h5TGZuTmh4bkIxV3c2TUE2VmU4S2ZMS2NsRy9k?=
 =?utf-8?B?VC83a2txNXR6THhQZlVFMStLUDBYb2J5Y3k3UTFyZjJNQzRHWnFYdDZ6YVlx?=
 =?utf-8?B?VzJwK3lwbjREZkQvZGtTNlNGdFJFSUZFZHQyQW5yZC9FQ3p1N05jVXdGMEhh?=
 =?utf-8?B?eEk3YUt5c1dzVVZGN0FMeTA5cW54ZTVVY3JUbHJqaDZMT21XYkp6OXRyR0Zn?=
 =?utf-8?B?NmtxTW4xOVA2QVZBczZHUUJ3VXY1OEZSQkI4ZW5jdXBoWXkwZmJmdlVJdWo0?=
 =?utf-8?B?L3ErVlhReEY3b0Jxdi9aRTM0NnZTbVlUZ3BKNzdSdXppMSs3SzJtbjZWcnRL?=
 =?utf-8?B?cFpycWZVdEZqb0VKUVBycFRucXV3b2NOczhuU1p2elR4Y1JsMHVZdEFySDI2?=
 =?utf-8?B?cVJjQUFRWllhVnR4b2pUdDR0dFk1SzdKeEZLbnZGYlRSTjdBN29meS85by9M?=
 =?utf-8?B?QmFpRFZLWlNZQWY2bCt3Vyt1UU9wM056cXVUdTlKMjl4WDdWTlBxT1I0NTU5?=
 =?utf-8?B?eS9TdURRQllkYlYza1Y0YjdOaEpaZFJFSStqdmthc21YbUZYSGJ2NE1ta2tv?=
 =?utf-8?B?UnJ1YjNRS1BSK0RUcC9kcG9YVFlPQUZOMHhxTXMzRDJrSVRveG1SekVlbjlW?=
 =?utf-8?B?MzY5dzRYSVpKU2hIbUIxSzhjbHN1M2F4UFV6eU1zelkyUTM1Z0gydEcxaFFh?=
 =?utf-8?B?RG1RdU0vRXQ2MUNzQmIyQmdwQUNYdlExWUNCTnViajNuQVZSRDVNWEczOGpp?=
 =?utf-8?B?Y3lVQXV1UHptbmVFNm94NDB0Wk1oRmcyQURic3hYUnIwdUNoNlNuUjNmZ0VT?=
 =?utf-8?B?MTV5OElpOXNna3NmNFFqVUFxbUhzcFF6MjlZNU4vb0hzWDFZZzRnVHFNKzVk?=
 =?utf-8?B?SjdNUktaelBSaUkwWkhuaVkxMWRvTFhYYjhGRUx2bGYxOEJDWnZmNFJ6eUpW?=
 =?utf-8?B?STMyc2lDU1JpVEJjY2hSN3ZlQ3RiWUxSYVdrdUx0bktnOVN6WElZaE03ZGR4?=
 =?utf-8?B?RGxuUk50UVd3S043azJQK3c0SWZPakRuQVFYdkh2YmhuZHJxczI5NHY2blJZ?=
 =?utf-8?B?Rm44QVdiREx1Ukk0TnBYV2RQOUxnU0J6ZTRkUmdFRFF4SHo4TkRnSlBKbll6?=
 =?utf-8?B?cW84aUFHVkQ3RVJZVkI5MXIyZzdKTjd5b3N4akFsN2p2eHhFM1dKS1Z2NFBB?=
 =?utf-8?B?NFUrenJlUllWcnN3QzJHQnVhZ1lHWkJVQmVOSmRiUEszY2RKTzlvMWY0ODhW?=
 =?utf-8?B?ZERNS1JtQVNrWlRYVGx2WUxjRCtQeGFGcTVpY0UzNnYyRlJpVm44MjF2NzNx?=
 =?utf-8?B?YWxxSU9aWGxad290Y2tmaWtGdmRIbVl4UDVzSWJ4MGgvWmQ0M1F3SmE3VGNB?=
 =?utf-8?B?WjdyWlJ6RDNLTmJldjFVMlJzYk9SbGtjcnNKUnZ0S2gremwrc0FLNWY4VEdo?=
 =?utf-8?B?K1VtYytxQ0NKeHFDWUp6QnZQMGRYK2dCSmRzQVh4ZU9GWENlQVQ0NEZQMHhw?=
 =?utf-8?B?MXNiRWNXdWxjTTE0Yjd3TUFqK3hlR3VYUzZpZmFwbGxES2N4YjVtbGhBTWk1?=
 =?utf-8?B?WFI2ck1WQTlBcUVJQVl6RDRXTFVuVVJyZXppQUo2R05XaW00cnJBdXhaNmZP?=
 =?utf-8?B?amZFcGVyWlNqT0NyM0VocUkyQjhqWjR5eDB2SVIxc3RYQjBXdG56WC8rWEVL?=
 =?utf-8?B?NlpuZVdDWExEamp3dng2bXAzaEdlTVVtNUJMbGFYT1FVUWltYjlNN2VpMHA4?=
 =?utf-8?B?bUdiOTdOWlVlN280djQyN0k1R1BSTnBWYUw2dW1FWVlGeE00bTN2ZTkxNzZv?=
 =?utf-8?B?QmlEMkFpZlZoaWRXUTh6MloyTGJqUGdNS1h0Q1JLSS8yOFdsWjhOUHZ3RDRP?=
 =?utf-8?B?djFnK2hZMjg2TkxxZ1BvVVdmZmxtTnc5REVQTG9EcHY1NkZ3OXg4cXB0ZWRF?=
 =?utf-8?B?dU00R3pRcGhURXBZc1BQdHkzMlg4aS9lK3pVZUdrQSsydWxJM0ZveHhjd3lW?=
 =?utf-8?B?Y3ArRTlQOWpTYkpodmVyVWJiTzRlUWlVVDJRdVhFaXU5M3dhK25JNkxscXFN?=
 =?utf-8?B?eXNwSUZqTWt6aU9tV1JyZWx0MWM4N1hUVllMdzJPU0w3N0s3R2diMnVjUThB?=
 =?utf-8?B?RlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <07CB0893BC4FE74C9FDB6D8A28ED8AEA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f53f2776-e1b1-4986-e3e0-08db724657ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 10:57:45.1459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UQpDrg7nGyBAC+ekBKduHL9RrRJgL5RgzUZXotUpfa6iq5cRTZqaoZUGWtPhfIqAv9hsZdkY3IpuQXFEzreEA+P7LProhGnTi6+UcPD5Yow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5043
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

T24gV2VkLCAyMDIzLTA2LTIxIGF0IDA2OjU5ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogVHVlc2RheSwgSnVuZSAyMCwgMjAyMyAyOjE4IFBNDQo+
ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBbSW50
ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L3BzcjogVXNlIGh3LmFkanVzdGVkIG1vZGUNCj4gPiB3
aGVuIGNhbGN1bGF0aW5nIGlvL2Zhc3Qgd2FrZSB0aW1lcw0KPiA+IA0KPiA+IEVuY29kZXIgY29t
cHV0ZSBjb25maWcgaXMgY2hhbmdpbmcgaHcuYWRqdXN0ZWQgbW9kZS4gVWFwaS5hZGp1c3RlZA0K
PiA+IG1vZGUgZG9lc24ndCBnZXQgdXBkYXRlZCBiZWZvcmUgcHNyIGNvbXB1dGUgY29uZmlnDQo+
ID4gZ2V0cyBjYWxsZWQuIFRoaXMgY2F1c2VzIGlvIGFuZCBmYXN0IHdha2UgbGluZSBjYWxjdWxh
dGlvbiB1c2luZw0KPiA+IGFkanVzdGVkIG1vZGUgY29udGFpbmluZyB2YWx1ZXMgYmVmb3JlIGVu
Y29kZXIgYWRqdXN0bWVudHMuIEZpeA0KPiA+IHRoaXMgYnkgdXNpbmcgaHcuYWRqdXN0ZWQgbW9k
ZSBpbnN0ZWFkIG9mIHVhcGkuYWRqdXN0ZWQgbW9kZS4NCj4gPiANCj4gPiBDYzogU3RhbmlzbGF2
IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gDQo+IA0KPiBS
ZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KVGhhbmsg
eW91IE1pa2EgZm9yIHRoZSByZXZpZXcuIFRoaXMgbm9vdyBwdXNoZWQuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzg0NzUNCj4gPiBGaXhlczogY2I0MmU4ZWRlNWI0
ICgiZHJtL2k5MTUvcHNyOiBVc2UgY2FsY3VsYXRlZCBpbyBhbmQgZmFzdCB3YWtlDQo+ID4gbGlu
ZXMiKQ0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDQgKystLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGluZGV4IGRmNTE3YzM5NWRhNy4uMDRhYjAzNGE4ZDU3IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTEw
NDQsOSArMTA0NCw5IEBAIHN0YXRpYyBib29sIF9jb21wdXRlX3BzcjJfd2FrZV90aW1lcyhzdHJ1
Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiAN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaW9fd2FrZV9saW5lcyA9IGludGVsX3VzZWNzX3RvX3NjYW5s
aW5lcygNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgJmNydGNfc3RhdGUtPnVh
cGkuYWRqdXN0ZWRfbW9kZSwgaW9fd2FrZV90aW1lKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUsIGlvX3dha2VfdGltZSk7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGZhc3Rfd2FrZV9saW5lcyA9IGludGVsX3VzZWNzX3RvX3Nj
YW5saW5lcygNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgJmNydGNfc3RhdGUt
PnVhcGkuYWRqdXN0ZWRfbW9kZSwgZmFzdF93YWtlX3RpbWUpOw0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwgZmFzdF93YWtl
X3RpbWUpOw0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW9fd2FrZV9saW5lcyA+IG1h
eF93YWtlX2xpbmVzIHx8DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmYXN0X3dha2VfbGlu
ZXMgPiBtYXhfd2FrZV9saW5lcykNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
