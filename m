Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5132C8707
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 15:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BBD6E4EA;
	Mon, 30 Nov 2020 14:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BBD6E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 14:45:18 +0000 (UTC)
IronPort-SDR: Qmu0nuhPSO6fvl4JNtf6smcogvxpWw3blCUiBUkwKs6MXpUsFerxmHYYxOY4VcYBOl+F5ayxOW
 ziDcsSNao7EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="170082217"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; 
 d="html'217?scan'217,208,217";a="170082217"
X-Amp-Result: UNKNOWN(File analysis pending)
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: True
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 06:45:16 -0800
IronPort-SDR: kIGzreLToggqoThcBFVld+6ShC5l1XLXBOSafAZDMbr2wSzIJkq8NuPaF+mstuSzd5e4vp+TBI
 +rsJU3oz9L7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; 
 d="html'217?scan'217,208,217";a="314599919"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2020 06:45:16 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 06:45:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 30 Nov 2020 06:45:16 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 30 Nov 2020 06:45:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktrmZNqh9F7+pKPhnDxNWV9K6WMjOFrxVtmNlhG+ZY3fR4QlvynJoUOtDsafXh7Yruq6WShN3duCOmVxts330dzcBNiKwtFjMVjY9m/7myLJWw7XUz6Bss34c01MKeUGNTqtnbQUpmvbp67QK7/Zk/HqpwJHGjQ1GDmB7PKOHsh5KQ+blj+H5XyBDK2NxlbmxbFYkQOkumwDReiHEgIas8GXJ4Mm7E9gnPlDKuomIRy/Wu6yUFDh+qLk1+qDUPdVROedmOQRACaKTFEAQWQBhwsUsVX+acNpZy/52Ev86SN63F7O+oDTSdrEcYzi26jr3HQiE34VPjoya4dQHwuLaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNVRNujCtQkpZGoXkjSs+KFpphFCsFGQLe5mFoV4cIc=;
 b=CRU+ptzj9XFBRdN2c7GXnVU5NdIffVv7/EVclUewlUp5xu5uUltKIp7I6NlFvqiP3tG/ZQnDCn8s+3/GLT4Ckgd/JDpUo4HhpglM696LlfduB+qDKGxnmpYQDXo1qFGSPz5QpugnQ5eR7zkfEO2kXDMZTtiNfnJrGc/KLnWQrMOY3CeHUEOgNNcae3lQaDEuqAE/Q491ntBXx6ExBIj2N8vGIhKH9knm8E4pNWER8UJqYTLflXDoBeQtOyL5wqwXnxRVIRKPfJKjQW7MtKVZQqA+CAyEK640SpEMBZF9Q+09sFVsIjA6EhtmGpCWVJNsZOT8QtcBswOOL6LQEYE5Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNVRNujCtQkpZGoXkjSs+KFpphFCsFGQLe5mFoV4cIc=;
 b=OydijIUwp0ftkPNFOCxYb6EVt8/ZSpcm1rOgFOcXQJngJHc1t1doCa8vwuAoKiNAyUFaQhFiXNstdVkxzkMbd2V4Duz6Ivm4gbaXnn96eAh7xjGOmDNFIFNRo+MSp2bpfOhHieFYsBr2TH96RziSGPq4v3fPAuxSTX4dvzWljnw=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3487.namprd11.prod.outlook.com (2603:10b6:805:c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Mon, 30 Nov
 2020 14:45:14 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff%6]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 14:45:14 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Pandey, Hariom"
 <hariom.pandey@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhY7kXRSdZumE6Pi/Mqo5s7Hqngo56AgAAcjYA=
Date: Mon, 30 Nov 2020 14:45:14 +0000
Message-ID: <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
In-Reply-To: <160674128376.8815.15501065474758980770@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [103.240.170.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8c5c04f-aebb-4915-368e-08d8953e8c57
x-ms-traffictypediagnostic: SN6PR11MB3487:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3487315A1A50FC65465C519FDFF50@SN6PR11MB3487.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IqO8wOxPpQFKOZFosnkOILvE1f/PrZaHEQNSkCbyVlUVwv1mNqW364bBxnAFoP1W+eviyN5Y2I2Zo0riNVszPZ5z9H+STS00rGr6/8NiPaD6xW2tfbYKQif99Mua0t66nTIxt0KmgUv8kAA8GnY7NZlY2K3FN04jcEh7LPoQKBhy8YYHNFv7mi89XJAA58CeZf30hxGCjkQC3ckWeKI0o8Sut9NB0XIvEIGvWGMtY02wvAwDXgzSk1w9mypWnonjdxStCSjsp07eM/ocE88yClMRhWMM22jq2NqcVvbhTQDz5QpcqA6UBMJZxnNRWJeKTFDCYRKeiMNumeyFj8qBkEA2M/InWttFY30umFY6f8M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(376002)(136003)(346002)(366004)(6506007)(2906002)(966005)(53546011)(186003)(8936002)(7696005)(66556008)(110136005)(71200400001)(26005)(5660300002)(4744005)(86362001)(478600001)(83380400001)(55016002)(52536014)(9686003)(8676002)(33656002)(4001150100001)(66946007)(66576008)(76116006)(64756008)(66476007)(66446008)(316002)(99936003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UHZBZXdrWGJWUUU0QmhRODBhODR2VVBMRWdjUmxBZTQ3aUtmUWxsZStjZUtQ?=
 =?utf-8?B?a3RVVGtqSThwR3ZMUXZnbmduTVE5cjE5dGY5dWpCMGpCVWx6KzA3UmlZSGpu?=
 =?utf-8?B?Wm1jU3kwbVJ6WHNwUXZJWnpwd2x1ckNua0czNWFvVkErR1ZnQVJlVjZhSGta?=
 =?utf-8?B?QmRFVlB2ZnFPUW9zVWkwbUNjMGJNK0MxQ1lkaVJhTEZleXkzby9Qd0RlSEJP?=
 =?utf-8?B?QjNnbXRONnVkSEN2aWhFYVVwa3dhN0dTSlJSc21xcm5vM1F0VDNlcVRLUWk0?=
 =?utf-8?B?TExSVkdweFJvdW9pMVVKMTVWMVp2SWY5c1N2emUrQk5nY0l0MXVZUUd5aW5X?=
 =?utf-8?B?T3EwdGZod3pVVDJaTXFLdWdvN1ZQOW5FblJmNUMrL1AzS2RHVXlZa0wwRVI4?=
 =?utf-8?B?ZUhKbkdkSklrVHZ3TGpReDFGa0NpNzFXS3hvZjhpNDBJQ1NZbS9TQWF0NGpQ?=
 =?utf-8?B?bkpCQ0VwV0NvdmZlbUFGVjRTeldsWDNaVit6bTBuSWlpMkZybE0rM3IwMGNC?=
 =?utf-8?B?UjhqaGU4MTNZdFVyM1o3dStoaVZ1VFFjQTVrRGpSYXZsekgzTTZSUnlxU3Nl?=
 =?utf-8?B?TU5IdVBEVEd2a2RtczcwYmlmYWhOell4YWFTRU9EOFI1Z3JvNHhkTDd6SjdQ?=
 =?utf-8?B?S1cwbm1ZN3B2enQ5d3ZWMGpScWdMMFZoVzV3UVhtdVJ4dThBTDF0R08zSHV2?=
 =?utf-8?B?c3U4MmIyNnkzdGpidTE5Z1U4QzZ3T0VRWXNIcEVHbEdDQk8rZlZGVTZKTWpJ?=
 =?utf-8?B?MUFxZ2UxRCsvTUFGcFhDaU5sZ2NKWDRwNEtpK0xPaVhwTjZsNUpKNUdNaTNE?=
 =?utf-8?B?L1QzdGJYcllwbzZ6bDV6MVUrd1AxeHU5NUZUU0NHVE1ZNVo0WlJ4YVFidlFO?=
 =?utf-8?B?MHdxdTU0aGNiWHREK3BMUmNGaEFqZzZ0RjZjbjFqQWFFOGVSRmxyYko5NkMy?=
 =?utf-8?B?ZStESElMOUM4ZHl4SU1mejZhMC9reWtnTCsxOGsxYm1YVDF2NnlaT1lMaytS?=
 =?utf-8?B?THJWTE1MMGRlUmk2eHdRVzR3dFROenFJdGVTZzlvL3Y1UE5YSEk3WW5sUzgw?=
 =?utf-8?B?c01HTlJBVWhlV1JRSjIyb29DdUQ2T3psWnp0VzZOUHR0eUpIeGFTMEF0cGlj?=
 =?utf-8?B?TWlyTXMzNmQxRUhXK3RRZ1dWcEc1NUlzcmZ3MWNZZ0VIeHFEdGo2VkhxVWly?=
 =?utf-8?B?SWtlWXAyeWJCMVhHRnBTbVl0YzBJOUU0b2dlejJPTGVtMHRENUYwM3I0bWdX?=
 =?utf-8?B?RnpONHN4MlFLdFY0dVFUcnBCQ2JKbWlHamJlR2VINk1aV29TNkxaai9JbjB4?=
 =?utf-8?Q?gjkUp4hrPcsVE=3D?=
Content-Type: multipart/mixed;
 boundary="_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c5c04f-aebb-4915-368e-08d8953e8c57
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 14:45:14.6702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SY1c8UX+tKarz+IcBX0eA8WndRiZZkCME9/G6jDGOhnBe5Nk5CqivDX9CdFwhqbKJw8u571SlqSr5VFRs7heIO8e/sJr2ZbpvFdjYTXvIU12PAV85E6FUXeBaYtSsgk3rUHXVczkDcd1O6wo5weAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3487
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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

--_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXMsDQoNClRoZSBmYWlsaW5nIHRlc3Qgd2FzIG5vdCBwYXJ0IG9mIEJBVCBydW4sIGl0
IHJhbiBpbiBDSSByZXN1bWUgcnVuIGFuZCBmYWlsZWQgdGhlcmUsIGhvd2V2ZXIgb24gbWFudWFs
IHJ1biB0aGUgc2FtZSB0ZXN0IGdvdCBwYXNzZWQuIFBsZWFzZSBmaW5kIGF0dGFjaGVkIHJlc3Vs
dHMuDQoNClRoYW5rcywNClRlamFzDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IFNlbnQ6IDMw
IE5vdmVtYmVyIDIwMjAgMTg6MzENCj4gVG86IFN1cmVuZHJha3VtYXIgVXBhZGh5YXksIFRlamFz
a3VtYXJYDQo+IDx0ZWphc2t1bWFyeC5zdXJlbmRyYWt1bWFyLnVwYWRoeWF5QGludGVsLmNvbT47
IFBhbmRleSwgSGFyaW9tDQo+IDxoYXJpb20ucGFuZGV5QGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0g
ZHJtL2k5MTUvcmtsOiBSZW1vdmUgcmVxdWlyZV9mb3JjZV9wcm9iZQ0KPiBwcm90ZWN0aW9uDQo+
IA0KPiBRdW90aW5nIFRlamFzIFVwYWRoeWF5ICgyMDIwLTExLTMwIDEyOjQ4OjU1KQ0KPiA+IFJl
bW92aW5nIGZvcmNlIHByb2JlIHByb3RlY3Rpb24gZnJvbSBSS0wgcGxhdGZvcm0uIERpZCBub3Qg
b2JzZXJ2ZQ0KPiA+IHdhcm5pbmdzLCBlcnJvcnMsIGZsaWNrZXJpbmcgb3IgYW55IHZpc3VhbCBk
ZWZlY3RzIHdoaWxlIGRvaW5nDQo+ID4gb3JkaW5hcnkgdGFza3MgbGlrZSBicm93c2luZyBhbmQg
ZWRpdGluZyBkb2N1bWVudHMgaW4gYSB0d28gbW9uaXRvcg0KPiA+IHNldHVwLg0KPiANCj4gUmVh
bGx5PyBDSSBzYXlzIGRpZmZlcmVudGx5Lg0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsLy0vaXNzdWVzLzI3NDMNCj4gaXMgc2V2ZXJlIEhXIGZhaWx1cmUsIHNvbWV0
aGluZyBmaXNoeSBpbiB0aGUgd29ybGQgb2YgZm9yY2V3YWtlLg0KPiAtQ2hyaXMNCg==

--_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_
Content-Type: text/html;
	name="igt@gem_exec_schedule@pi-common@vcs0 - Details.html"
Content-Description: igt@gem_exec_schedule@pi-common@vcs0 - Details.html
Content-Disposition: attachment;
	filename="igt@gem_exec_schedule@pi-common@vcs0 - Details.html"; size=3186;
	creation-date="Mon, 30 Nov 2020 14:44:57 GMT";
	modification-date="Mon, 30 Nov 2020 13:34:02 GMT"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+CjwhLS0gc2F2ZWQgZnJvbSB1cmw9KDAyMzIpZmlsZTovLy9DOi9Vc2Vy
cy9qa2F0dGFteC9PbmVEcml2ZSUyMC0lMjBJbnRlbCUyMENvcnBvcmF0aW9uL0phc3dhbnRoJTIw
YmFja3VwL1Rlc3RjYXNlJTIwQW5hbHlzaXMlMjBkYXRhL1JLTCUyMEJ1aWxkJTIwQW5hbHlzaXMv
UktMXzk0MDJfNTg3M19BbmFseXNpcy9SS0xfRmFpbF85NDAyL0NJX0RSTV85NDAyX3Rlc3RydW5u
ZXJfMC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcGktY29tbW9uQHZjczAuaHRtbCAtLT4KPGh0bWwg
bGFuZz0iZW4iPjxoZWFkPjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PVVURi04Ij4KICAgIAogICAgPHRpdGxlPmlndEBnZW1fZXhlY19z
Y2hlZHVsZUBwaS1jb21tb25AdmNzMCAtIERldGFpbHM8L3RpdGxlPgogICAgPGxpbmsgcmVsPSJz
dHlsZXNoZWV0IiBocmVmPSIuL2lndEBnZW1fZXhlY19zY2hlZHVsZUBwaS1jb21tb25AdmNzMCAt
IERldGFpbHNfZmlsZXMvcmVzdWx0LmNzcyI+CiAgPC9oZWFkPgogIDxib2R5PgogICAgPGgxPlJl
c3VsdHMgZm9yIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwaS1jb21tb25AdmNzMDwvaDE+CiAgICA8
aDI+T3ZlcnZpZXc8L2gyPgogICAgPGRpdj4KICAgICAgPHA+PGI+UmVzdWx0OjwvYj4gcGFzczwv
cD4KICAgIDwvZGl2PgogICAgPHA+PGEgaHJlZj0iZmlsZTovLy9DOi9Vc2Vycy9qa2F0dGFteC9P
bmVEcml2ZSUyMC0lMjBJbnRlbCUyMENvcnBvcmF0aW9uL0phc3dhbnRoJTIwYmFja3VwL1Rlc3Rj
YXNlJTIwQW5hbHlzaXMlMjBkYXRhL1JLTCUyMEJ1aWxkJTIwQW5hbHlzaXMvUktMXzk0MDJfNTg3
M19BbmFseXNpcy9SS0xfRmFpbF85NDAyL2luZGV4Lmh0bWwiPkJhY2sgdG8gc3VtbWFyeTwvYT48
L3A+CiAgICA8aDI+RGV0YWlsczwvaDI+CiAgICA8dGFibGU+CiAgICAgIDx0Ym9keT48dHI+CiAg
ICAgICAgPHRoPkRldGFpbDwvdGg+CiAgICAgICAgPHRoPlZhbHVlPC90aD4KICAgICAgPC90cj4K
ICAgICAgPHRyPgogICAgICAgIDx0ZD5SZXR1cm5jb2RlPC90ZD4KICAgICAgICA8dGQ+Tm9uZTwv
dGQ+CiAgICAgIDwvdHI+CiAgICAgIDx0cj4KICAgICAgICA8dGQ+VGltZTwvdGQ+CiAgICAgICAg
PHRkPjA6MDA6MDAuMDc0MDAwPC90ZD4KICAgICAgPC90cj4KICAgICAgPHRyPgogICAgICAgIDx0
ZD5TdGRvdXQ8L3RkPgogICAgICAgIDx0ZD4KICAgICAgICAgIDxwcmU+SUdULVZlcnNpb246IDEu
MjUtZ2I2MzIxYjU4ZCAoeDg2XzY0KSAoTGludXg6IDUuMTAuMC1yYzUtQ0ktQ0lfRFJNXzk0MDIr
IHg4Nl82NCkKUnVubmluZyBvbiByb2NrZXRsYWtlClVzaW5nIEd1QyBzdWJtaXNzaW9uCkhhcyBr
ZXJuZWwgc2NoZWR1bGVyCiAtIFdpdGggcHJpb3JpdHkgc29ydGluZwogLSBXaXRoIHByZWVtcHRp
b24gZW5hYmxlZAogLSBXaXRoIEhXIHNlbWFwaG9yZXMgZW5hYmxlZAogLSBXaXRoIGVuZ2luZSBi
dXN5IHN0YXRpc3RpY3MKU3RhcnRpbmcgc3VidGVzdDogcGktY29tbW9uClN0YXJ0aW5nIGR5bmFt
aWMgc3VidGVzdDogdmNzMApEeW5hbWljIHN1YnRlc3QgdmNzMDogU1VDQ0VTUyAoMC4wNzRzKQpT
dWJ0ZXN0IHBpLWNvbW1vbjogU1VDQ0VTUyAoMC4wNzRzKQo8L3ByZT4KICAgICAgICA8L3RkPgog
ICAgICA8L3RyPgogICAgICA8dHI+CiAgICAgICAgPHRkPlN0ZGVycjwvdGQ+CiAgICAgICAgPHRk
PgogICAgICAgICAgPHByZT5TdGFydGluZyBzdWJ0ZXN0OiBwaS1jb21tb24KU3RhcnRpbmcgZHlu
YW1pYyBzdWJ0ZXN0OiB2Y3MwCkR5bmFtaWMgc3VidGVzdCB2Y3MwOiBTVUNDRVNTICgwLjA3NHMp
ClN1YnRlc3QgcGktY29tbW9uOiBTVUNDRVNTICgwLjA3NHMpCjwvcHJlPgogICAgICAgIDwvdGQ+
CiAgICAgIDwvdHI+CiAgICAgIDx0cj4KICAgICAgICA8dGQ+Q29tbWFuZDwvdGQ+CiAgICAgICAg
PHRkPgogICAgICAgICAgPHByZT48L3ByZT4KICAgICAgICA8L3RkPgogICAgICA8L3RyPgogICAg
ICA8dHI+CiAgICAgICAgPHRkPmRtZXNnPC90ZD4KICAgICAgICA8dGQ+CiAgICAgICAgICA8cHJl
PiZsdDs2Jmd0OyBbNjY4NTIuMjIzMDkyXSBDb25zb2xlOiBzd2l0Y2hpbmcgdG8gY29sb3VyIGR1
bW15IGRldmljZSA4MHgyNQombHQ7NiZndDsgWzY2ODUyLjIyMzE0Ml0gW0lHVF0gZ2VtX2V4ZWNf
c2NoZWR1bGU6IGV4ZWN1dGluZwombHQ7NyZndDsgWzY2ODUyLjIzNjU3OF0gaTkxNSAwMDAwOjAw
OjAyLjA6IFtkcm06aTkxNV9nZW1fY29udGV4dF9jcmVhdGVfaW9jdGwgW2k5MTVdXSBIVyBjb250
ZXh0IDEgY3JlYXRlZAombHQ7NiZndDsgWzY2ODUyLjI0ODUzMF0gW0lHVF0gZ2VtX2V4ZWNfc2No
ZWR1bGU6IHN0YXJ0aW5nIHN1YnRlc3QgcGktY29tbW9uCiZsdDs2Jmd0OyBbNjY4NTIuMjQ4NjQ3
XSBbSUdUXSBnZW1fZXhlY19zY2hlZHVsZTogc3RhcnRpbmcgZHluYW1pYyBzdWJ0ZXN0IHZjczAK
Jmx0OzcmZ3Q7IFs2Njg1Mi4yNDkxMjVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmk5MTVfZ2Vt
X2NvbnRleHRfY3JlYXRlX2lvY3RsIFtpOTE1XV0gSFcgY29udGV4dCAxIGNyZWF0ZWQKJmx0Ozcm
Z3Q7IFs2Njg1Mi4yNTAxMjldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmk5MTVfZ2VtX2NvbnRl
eHRfY3JlYXRlX2lvY3RsIFtpOTE1XV0gSFcgY29udGV4dCAyIGNyZWF0ZWQKJmx0OzYmZ3Q7IFs2
Njg1Mi4yNTUwODRdIFtkcm1dIEluaXRpYWxpemVkIHZnZW0gMS4wLjAgMjAxMjAxMTIgZm9yIHZn
ZW0gb24gbWlub3IgMQombHQ7NiZndDsgWzY2ODUyLjMyODE1OF0gW0lHVF0gZ2VtX2V4ZWNfc2No
ZWR1bGU6IGV4aXRpbmcsIHJldD0wCiZsdDs2Jmd0OyBbNjY4NTIuMzg5NjU1XSBDb25zb2xlOiBz
d2l0Y2hpbmcgdG8gY29sb3VyIGZyYW1lIGJ1ZmZlciBkZXZpY2UgMjQweDY3CjwvcHJlPgogICAg
ICAgIDwvdGQ+CiAgICAgIDwvdHI+CiAgICA8L3Rib2R5PjwvdGFibGU+CiAgICA8cD48YSBocmVm
PSJmaWxlOi8vL0M6L1VzZXJzL2prYXR0YW14L09uZURyaXZlJTIwLSUyMEludGVsJTIwQ29ycG9y
YXRpb24vSmFzd2FudGglMjBiYWNrdXAvVGVzdGNhc2UlMjBBbmFseXNpcyUyMGRhdGEvUktMJTIw
QnVpbGQlMjBBbmFseXNpcy9SS0xfOTQwMl81ODczX0FuYWx5c2lzL1JLTF9GYWlsXzk0MDIvaW5k
ZXguaHRtbCI+QmFjayB0byBzdW1tYXJ5PC9hPjwvcD4KICAKCjwvYm9keT48L2h0bWw+

--_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_
Content-Type: text/html; name="igt@gem_ringfill@basic-all - Details.html"
Content-Description: igt@gem_ringfill@basic-all - Details.html
Content-Disposition: attachment;
	filename="igt@gem_ringfill@basic-all - Details.html"; size=2349;
	creation-date="Mon, 30 Nov 2020 14:45:01 GMT";
	modification-date="Mon, 30 Nov 2020 13:34:43 GMT"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+CjwhLS0gc2F2ZWQgZnJvbSB1cmw9KDAyMjIpZmlsZTovLy9DOi9Vc2Vy
cy9qa2F0dGFteC9PbmVEcml2ZSUyMC0lMjBJbnRlbCUyMENvcnBvcmF0aW9uL0phc3dhbnRoJTIw
YmFja3VwL1Rlc3RjYXNlJTIwQW5hbHlzaXMlMjBkYXRhL1JLTCUyMEJ1aWxkJTIwQW5hbHlzaXMv
UktMXzk0MDJfNTg3M19BbmFseXNpcy9SS0xfRmFpbF85NDAyL0NJX0RSTV85NDAyX3Rlc3RydW5u
ZXJfMC9pZ3RAZ2VtX3JpbmdmaWxsQGJhc2ljLWFsbC5odG1sIC0tPgo8aHRtbCBsYW5nPSJlbiI+
PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7
IGNoYXJzZXQ9VVRGLTgiPgogICAgCiAgICA8dGl0bGU+aWd0QGdlbV9yaW5nZmlsbEBiYXNpYy1h
bGwgLSBEZXRhaWxzPC90aXRsZT4KICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgaHJlZj0iLi9p
Z3RAZ2VtX3JpbmdmaWxsQGJhc2ljLWFsbCAtIERldGFpbHNfZmlsZXMvcmVzdWx0LmNzcyI+CiAg
PC9oZWFkPgogIDxib2R5PgogICAgPGgxPlJlc3VsdHMgZm9yIGlndEBnZW1fcmluZ2ZpbGxAYmFz
aWMtYWxsPC9oMT4KICAgIDxoMj5PdmVydmlldzwvaDI+CiAgICA8ZGl2PgogICAgICA8cD48Yj5S
ZXN1bHQ6PC9iPiBwYXNzPC9wPgogICAgPC9kaXY+CiAgICA8cD48YSBocmVmPSJmaWxlOi8vL0M6
L1VzZXJzL2prYXR0YW14L09uZURyaXZlJTIwLSUyMEludGVsJTIwQ29ycG9yYXRpb24vSmFzd2Fu
dGglMjBiYWNrdXAvVGVzdGNhc2UlMjBBbmFseXNpcyUyMGRhdGEvUktMJTIwQnVpbGQlMjBBbmFs
eXNpcy9SS0xfOTQwMl81ODczX0FuYWx5c2lzL1JLTF9GYWlsXzk0MDIvaW5kZXguaHRtbCI+QmFj
ayB0byBzdW1tYXJ5PC9hPjwvcD4KICAgIDxoMj5EZXRhaWxzPC9oMj4KICAgIDx0YWJsZT4KICAg
ICAgPHRib2R5Pjx0cj4KICAgICAgICA8dGg+RGV0YWlsPC90aD4KICAgICAgICA8dGg+VmFsdWU8
L3RoPgogICAgICA8L3RyPgogICAgICA8dHI+CiAgICAgICAgPHRkPlJldHVybmNvZGU8L3RkPgog
ICAgICAgIDx0ZD5Ob25lPC90ZD4KICAgICAgPC90cj4KICAgICAgPHRyPgogICAgICAgIDx0ZD5U
aW1lPC90ZD4KICAgICAgICA8dGQ+MDowMDowMS4xMDUwMDA8L3RkPgogICAgICA8L3RyPgogICAg
ICA8dHI+CiAgICAgICAgPHRkPlN0ZG91dDwvdGQ+CiAgICAgICAgPHRkPgogICAgICAgICAgPHBy
ZT5JR1QtVmVyc2lvbjogMS4yNS1nYjYzMjFiNThkICh4ODZfNjQpIChMaW51eDogNS4xMC4wLXJj
NS1DSS1DSV9EUk1fOTQwMisgeDg2XzY0KQpSaW5nIHNpemU6IDc0IGJhdGNoZXMKU3RhcnRpbmcg
c3VidGVzdDogYmFzaWMtYWxsClN1YnRlc3QgYmFzaWMtYWxsOiBTVUNDRVNTICgxLjEwNXMpCjwv
cHJlPgogICAgICAgIDwvdGQ+CiAgICAgIDwvdHI+CiAgICAgIDx0cj4KICAgICAgICA8dGQ+U3Rk
ZXJyPC90ZD4KICAgICAgICA8dGQ+CiAgICAgICAgICA8cHJlPlN0YXJ0aW5nIHN1YnRlc3Q6IGJh
c2ljLWFsbApTdWJ0ZXN0IGJhc2ljLWFsbDogU1VDQ0VTUyAoMS4xMDVzKQo8L3ByZT4KICAgICAg
ICA8L3RkPgogICAgICA8L3RyPgogICAgICA8dHI+CiAgICAgICAgPHRkPkNvbW1hbmQ8L3RkPgog
ICAgICAgIDx0ZD4KICAgICAgICAgIDxwcmU+PC9wcmU+CiAgICAgICAgPC90ZD4KICAgICAgPC90
cj4KICAgICAgPHRyPgogICAgICAgIDx0ZD5kbWVzZzwvdGQ+CiAgICAgICAgPHRkPgogICAgICAg
ICAgPHByZT4mbHQ7NiZndDsgWzY2ODUyLjQ1MjkxNF0gQ29uc29sZTogc3dpdGNoaW5nIHRvIGNv
bG91ciBkdW1teSBkZXZpY2UgODB4MjUKJmx0OzYmZ3Q7IFs2Njg1Mi40NTI5NjRdIFtJR1RdIGdl
bV9yaW5nZmlsbDogZXhlY3V0aW5nCiZsdDs2Jmd0OyBbNjY4NTIuNTg3MjIyXSBbSUdUXSBnZW1f
cmluZ2ZpbGw6IHN0YXJ0aW5nIHN1YnRlc3QgYmFzaWMtYWxsCiZsdDs2Jmd0OyBbNjY4NTMuNjky
NzIzXSBbSUdUXSBnZW1fcmluZ2ZpbGw6IGV4aXRpbmcsIHJldD0wCiZsdDs2Jmd0OyBbNjY4NTMu
NzY1MzAwXSBDb25zb2xlOiBzd2l0Y2hpbmcgdG8gY29sb3VyIGZyYW1lIGJ1ZmZlciBkZXZpY2Ug
MjQweDY3CjwvcHJlPgogICAgICAgIDwvdGQ+CiAgICAgIDwvdHI+CiAgICA8L3Rib2R5PjwvdGFi
bGU+CiAgICA8cD48YSBocmVmPSJmaWxlOi8vL0M6L1VzZXJzL2prYXR0YW14L09uZURyaXZlJTIw
LSUyMEludGVsJTIwQ29ycG9yYXRpb24vSmFzd2FudGglMjBiYWNrdXAvVGVzdGNhc2UlMjBBbmFs
eXNpcyUyMGRhdGEvUktMJTIwQnVpbGQlMjBBbmFseXNpcy9SS0xfOTQwMl81ODczX0FuYWx5c2lz
L1JLTF9GYWlsXzk0MDIvaW5kZXguaHRtbCI+QmFjayB0byBzdW1tYXJ5PC9hPjwvcD4KICAKCjwv
Ym9keT48L2h0bWw+

--_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--_003_SN6PR11MB342108C9577A99EF4D3BBC87DFF50SN6PR11MB3421namp_--
