Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBC36D4265
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 12:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E92210E3F0;
	Mon,  3 Apr 2023 10:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12ED10E3EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 10:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680518587; x=1712054587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WXVIk9lhgzetrKG0AsevpRY6/aWQz4yltHyBKjVBQkw=;
 b=UdpQQ3Q/4/2D/kDsPT7T8tAwPUnK1BKIkAs/LmHtBsPGzl09NPIwRTn+
 xtqq30bNmkpRO4xmzXu75t90LGG3pdRyAnlFYNZd9HeMf9471G+dc2bQP
 +DeXeluUhxqlWDmJNBXH92KHJKbWzghXeTJnmvSVj17TY78KzymSVcwxH
 Pb1spQp0ZlJaCAMvzRpgDI8gGbzDJKkgQIxJ2joxKiDAtbNdpDJAqQBPk
 tn6kKI09ReGnhQRMsiKnqBfeSSEMjXvXArPlx5l2KQFHctWB4WxuzjbUP
 /MBiaUYHYCSIl3lrEm6tBxIstEJmmQcwh1QPhro8utcVuY4qzCjFMMHkC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="428151397"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="428151397"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:43:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="718505471"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="718505471"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 03 Apr 2023 03:43:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:43:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:43:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 03:43:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 03:43:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yp+cshqHJwtvyUMF7lLwZaeqZA4R0f4boVwU+vc4OBR/Yxwm5McsHaHtfPs3kuR0g6dSFzWPkCrv8mIIBYdc58hIdxD1j5wWDk4+uKc0k8PrCBmJaQHWTVhhhhLrrUEXqPQpDP6CcXM7r9q4OOL8Iql0NyiTozfkSlmCbJ2dB5tRYxDcyD5jQzHoZIKJrl53+f0LvAbiaPH+OnrF5wq0DQ8mUA3I0Bf75K8Zr0ag0WVIFQ0xW253ls0gYX1Rb/uYMFUvEQSPn+YjfnU5T2Q8zZ0WMVzwMcfeHopSg6nRSP8sOCsLTPllSI2aO3hshNy6gERoqAsjInzxUIgRGtH7Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WXVIk9lhgzetrKG0AsevpRY6/aWQz4yltHyBKjVBQkw=;
 b=iA3hpG9cWaqpSFwDc+uCg+7LUaKdSamWnoyRWhZganyq/NMZwlPV7L0yo/U5JnQS3EOqLxFY0A/hRq95hHsZXUwZ35vRmuwbgWeoUd01ae9LDbe+gtaAx1jrGK+IBrCWwChhXPwVnD1hczXs9W5BI9C0x+sfHJVb3LPmU1VdCM4Em4Y2gLWhRpCDgViDFO16/kKAmELqnbadAOcZgaLdVFFOK+W7dxeSdVb5h1/zDLOfSoAbdJ1Yn+lMlTE6F2UssVKbsVxHPi5ASBds3lfoH1xuPfvM/6/kc9PezrF6yUFmU6DqBrDcK2LjxPOftX5eq8xaaYKbMgVPAlk10x2yEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.28; Mon, 3 Apr
 2023 10:43:03 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::5666:3fe4:48ec:f141]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::5666:3fe4:48ec:f141%5]) with mapi id 15.20.6254.024; Mon, 3 Apr 2023
 10:43:03 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bus
 and pll programming
Thread-Index: AQHZYKk8xmufeAXgZEKE/lbY5UdFcq8ZaBWAgAAA2ZCAAAX+AIAAALTw
Date: Mon, 3 Apr 2023 10:43:03 +0000
Message-ID: <MW4PR11MB7054333B4D8E906C09417C9EEF929@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCqmZXQmo3AxxEXj@ideak-desk.fi.intel.com>
 <MW4PR11MB7054DADDA5ECC1490A3772B2EF929@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCqsIr873BLPY40d@ideak-desk.fi.intel.com>
In-Reply-To: <ZCqsIr873BLPY40d@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB6723:EE_
x-ms-office365-filtering-correlation-id: 53f07d5a-0641-4562-e644-08db343033e7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NqH/bYedNcVVQPGUXY7yvm9ObQrdSRe8rzHaQk25iQSA4W+RppGwDvC6xo69aYxrpAPwTlxD19ID3qmNr7aA/Sw/oQuF5Xb8MBXXmdrC/BGFSUAGEiIbVl8Y4IHlgI42rSEK4geQafefZQ8IymFnLSYPQAneTB1Cplrpbm2fpTZ7oE+E5mCbO5APL6yZUwizlsDsixBQxDBBYrqxtRIvWwJRR4qOxO7DgHLzAq0iFP8Ti9fwUe3JRnS2t8xNDCaoUSF03Pp+HLdzndc3VyKjER/gKakIvcWJkS8A/9HH7gg0X76b6C3FQ5TC0mjSw7bNaWMS5cpyHE6kh2gj/vfosOckXBYNHAG5FESMbtBaOdQT+iOQV1Dvg7gA9YE+p1R3OkjCyRPn2+jBmSrK1QZ1XIWdDEuOcpZTPZfwf/ww5hbugxpRixAJAzsh/pDPKDwWgs/JD2snWXztp0maH+317S84rDXDIcpUG5++xCgZyELnxOKzaP8PZLM8CnCi7aheKho/iKJOwFFv40HMbC+Dk6brU/up/9U3alA2ENiuuOdLbxLeGeZdoEuyZdvUufkD2QnbDCNKnOkDLmjEbWyM8Y4w6SJXFEgfZNZqfvJJ2mvbuXykUqeFEGD0pcyPmAVB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199021)(122000001)(38100700002)(82960400001)(186003)(107886003)(9686003)(26005)(7696005)(53546011)(38070700005)(6506007)(83380400001)(5660300002)(2906002)(15650500001)(33656002)(66446008)(64756008)(86362001)(316002)(54906003)(6636002)(55016003)(71200400001)(66476007)(41300700001)(478600001)(8936002)(6862004)(4326008)(66946007)(66556008)(76116006)(52536014)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXFNR3paVW56M2NwZG52RDVLT1Bpb1U4TnBTNy9SVVdwV1F2cG1iMFRRTEVT?=
 =?utf-8?B?Rnk0MkJSc0FFeWJkUTVBYkdNSW54dkltM0JMT2h4MXprcGllZzZaMXdYakd0?=
 =?utf-8?B?T0ZIQjIrQjRnNXJjSENpNEx2WWFheHpxTnNCdlBpMmFrY204NTlwcXJoWmhs?=
 =?utf-8?B?MG40OXBDOHRzOXIzaFIva015YUlvejZseWl6bFB4TkZFQzVYWjdqcnIvRC9U?=
 =?utf-8?B?WUNiOFFWTklZM0lsVGdyb2YzNWRmVU00cG92U1NsRDU2NVVoZGNHMG1WYk1x?=
 =?utf-8?B?RFFVU2cwVnpDdVNFTE0rS2JBbWFiSmsveVE0VUZFbjI3RWJHSGFldG81VG1X?=
 =?utf-8?B?MHBrN3dqZXA5S0FPVDNtVkdheGpiNnhxbkRPMHBRVG9qMEQzR240ZVVkOHNI?=
 =?utf-8?B?TWlUZjRNV2pIT0R1KzE0UDFzNHk3UnJPYzN4OUZHdE9wVTFJcFJNVTBnSHc1?=
 =?utf-8?B?eE1WMGFhazZyZ3VQUFRBU2Z4KysvN3dTZ0QyR0U2RmZOeDRlYk9ZWFVXZHVG?=
 =?utf-8?B?dm9SY3FXZ0RrNUdkaDZNcU9ZYmFESE5NbHdWRXRxQVFnMmpvSzF1MFlNUnp3?=
 =?utf-8?B?Ymg2VlFNYzh5ei8rcGpiWmtjRitUUnBmTThWWHd5VDVrd2ZWOUJzVkJtTUEx?=
 =?utf-8?B?UVFZcXMrbXEzRWFHNjdhaFlVeXJQM1o2K1M0cVRVNFF2K1AxRzZjZ041aURj?=
 =?utf-8?B?ektzRFpkbHRPRi9wdTRJenJXTXBrT2JYd3NkcTZSSk8xTWtKLys5VUlaZzhx?=
 =?utf-8?B?TkxzOGpDSW9qTlYzckE1OFI0dWVlTnVMUFVydmJvOWhTQVZvNWR6TzV1ekJL?=
 =?utf-8?B?QlZvK0FLdGRUZDdZZGFMbEN1TmRab21VTjN4RU9DOHRTSnBWMWFLamJPMEE0?=
 =?utf-8?B?NWROUEliMXQ4NGhoY3hBUlkwU3R2NmljZGkydnVHY2xwWS9KeW9qMWtaY0hl?=
 =?utf-8?B?ZCtzdHdSa1FWOUNNWmU4eHZmQkE0REMxQnpjeG5NeC9uckJiOEpNRDhlSHNK?=
 =?utf-8?B?TDR3aFNCT205aGlJR1lyT2dDSG0vNWNlamtLTDg2Qy90bEI3a09JKzBCQ1B5?=
 =?utf-8?B?VzdZeHBEcGEzRUlobnNDRUNxakpuaVowN0ZvMlBXcnZGbTkvNmlXdklLTlRF?=
 =?utf-8?B?TTA1Y1pKSDZORUNCR0JxMmd0dDVWdXhnS2ltemZUVnJ2dkN3WmUrKzNEaVBm?=
 =?utf-8?B?OFpFTzV3ZURmTU5mSXlVZlBZNG0wUnRtNWhmTExUVDFwenArS2Y3d1lTTm1O?=
 =?utf-8?B?NlpNRkowZEFma3RUN3RBRkloa09zQ0E4VVROQ2d5dHBGWFBLU1RqYUUxekVx?=
 =?utf-8?B?OVVJTWtvMjBwU3NCd1NrYjFIM2ltaGdxTHRuSEM3dllROExQckJnVFZORjgy?=
 =?utf-8?B?ZFRxMlJUNmUwYWZmYjJTQ1U1YXIvN1BodjlFNlhCWTNTTWRuWEZyL05pZFVT?=
 =?utf-8?B?ZUdsZUxTQ244TW9xSVJIL1dyNDlvK2UvR0lSL0FGWVBaWkd1V1V5aDRvYXZL?=
 =?utf-8?B?bFZCS1FwZGUzb2JINm5rb080RmY4RHppWEd4ck5oeXlEa0RnY0FOVFl3RVFS?=
 =?utf-8?B?OXh1NzVtcVhFQTRUV29YZTM5cXhxWTk2V1dqM1RZaGMzTUh2aHBLREtnVStY?=
 =?utf-8?B?UVdtOXFQYWl0aWxhUFgvMEZJM1RobWYrcHB3Zk1OQjQ2Y0RHUnlKaDhuT1do?=
 =?utf-8?B?VHRRUmNpTElLelZKeUhyek5MeWluSXF1U2k2MVNYOGpmZmlieVZUeGMwRDdN?=
 =?utf-8?B?b3pGbXgxQ2ZZc2xUZlJVZElYeXNPSlZZS2FjWk1nam94STJUdTJBZmcvK01D?=
 =?utf-8?B?a29BSU9BbHFrMzRSZGJBV1orZDFKdjZrU29ObCtER3lPek9YT2ttWXlSRXl5?=
 =?utf-8?B?QTM1U0dqWStLN0xaZmUzMGt3UzNycnhzM0I5RHVOcFBiT3FuRGVCNG82NnRG?=
 =?utf-8?B?Y1Q4MlRnNmI1RE4yVmdHRXhHaFM5RFZkMjFMa2NpT3M2MmluNmxvZmNoUmcv?=
 =?utf-8?B?UFJOdEdCcUhuSzA4RldrN0FTb2F1b09FL25qSVVocm5RQ2thRkpOQUJRZk5v?=
 =?utf-8?B?ZVdnUnF6VjdUZDFXVlVDTytzL0JOeERqbG5DNDZjRWg4TDJxRWYvVmZpdGh2?=
 =?utf-8?Q?2poFCtRio7Smcu+DNaus9E2kD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53f07d5a-0641-4562-e644-08db343033e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 10:43:03.6877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EbNAA71zsrSkpZiMyYDjFMeJzTpNmiLiPmEYz5UrlNEFjYac3pguaHzucnoOh5x71peZdup/hS/zrtE4csrR2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEFwcmlsIDMsIDIwMjMgMTozNiBQTQ0KPiBU
bzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBTcmlwYWRhLCBSYWRoYWtyaXNobmENCj4gPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPjsNCj4gU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBSZTogW1BBVENIIDQvN10gZHJtL2k5MTUvbXRsOiBBZGQgU3VwcG9ydCBmb3IgQzEwIFBI
WSBtZXNzYWdlIGJ1cw0KPiBhbmQgcGxsIHByb2dyYW1taW5nDQo+IA0KPiBPbiBNb24sIEFwciAw
MywgMjAyMyBhdCAwMToxOTo0OFBNICswMzAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+ID4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogRGVhaywgSW1yZSA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IE1vbmRheSwgQXByaWwgMywgMjAyMyAxOjEyIFBN
DQo+ID4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiBD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU3JpcGFkYSwgUmFkaGFrcmlzaG5h
DQo+ID4gPiA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgU2hhbmthciwgVW1hDQo+
ID4gPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291
c2FAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCA0LzddIGRybS9pOTE1L210
bDogQWRkIFN1cHBvcnQgZm9yIEMxMCBQSFkNCj4gPiA+IG1lc3NhZ2UgYnVzIGFuZCBwbGwgcHJv
Z3JhbW1pbmcNCj4gPiA+DQo+ID4gPiBPbiBNb24sIE1hciAyNywgMjAyMyBhdCAwMzozNDozMFBN
ICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPiA+ID4gRnJvbTogUmFkaGFrcmlzaG5hIFNy
aXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPiA+ID4NCj4gPiA+ID4g
WEVMUERQIGhhcyBDMTAgYW5kIEMyMCBwaHlzIGZyb20gU3lub3BzeXMgdG8gZHJpdmUgZGlzcGxh
eXMuIEVhY2gNCj4gPiA+ID4gcGh5IGhhcyBhIGRlZGljYXRlZCBQSVBFIDUuMiBNZXNzYWdlIGJ1
cyBmb3IgY29uZmlndXJhdGlvbi4gVGhpcw0KPiA+ID4gPiBtZXNzYWdlIGJ1cyBpcyB1c2VkIHRv
IGNvbmZpZ3VyZSB0aGUgcGh5IGludGVybmFsIHJlZ2lzdGVycy4NCj4gPiA+ID4NCj4gPiA+ID4g
WEVMUERQIGhhcyBDMTAgcGh5cyB0byBkcml2ZSBvdXRwdXQgdG8gdGhlIEVEUCBhbmQgdGhlIG5h
dGl2ZQ0KPiA+ID4gPiBvdXRwdXQgZnJvbSB0aGUgZGlzcGxheSBlbmdpbmUuIEFkZCBzdHJ1Y3R1
cmVzLCBwcm9ncmFtbWluZw0KPiA+ID4gPiBoYXJkd2FyZSBzdGF0ZSByZWFkb3V0IGxvZ2ljLiBQ
b3J0IGNsb2NrIGNhbGN1bGF0aW9ucyBhcmUgc2ltaWxhcg0KPiA+ID4gPiB0byBERzIuIFVzZSB0
aGUgREcyIGZvcm11bGFlIHRvIGNhbGN1bGF0ZSB0aGUgcG9ydCBjbG9jayBidXQgdXNlIHRoZQ0K
PiByZWxldmFudCBwbGwgc2lnbmFscy4NCj4gPiA+ID4gTm90ZTogUEhZIGxhbmUgMCBpcyBhbHdh
eXMgdXNlZCBmb3IgUExMIHByb2dyYW1taW5nLg0KPiA+ID4gPg0KPiA+ID4gPiBBZGQgc2VxdWVu
Y2VzIGZvciBDMTAgcGh5IGVuYWJsZS9kaXNhYmxlIHBoeSBsYW5lIHJlc2V0LCBwb3dlcmRvd24N
Cj4gPiA+ID4gY2hhbmdlIHNlcXVlbmNlIGFuZCBwaHkgbGFuZSBwcm9ncmFtbWluZy4NCj4gPiA+
ID4NCj4gPiA+ID4gQnNwZWM6IDY0NTM5LCA2NDU2OCwgNjQ1OTksIDY1MTAwLCA2NTEwMSwgNjU0
NTAsIDY1NDUxLCA2NzYxMCwNCj4gPiA+ID4gNjc2MzYNCj4gPiA+DQo+ID4gPiBTaG91bGRuJ3Qg
dGhlIGJhc2ljIE1UTCBEUC9IRE1JIG1vZGVzZXQgc2VxdWVuY2VzIGJlIHBhcnQgb2YgdGhpcw0K
PiA+ID4gcGF0Y2hzZXQ/IEkgY2FuJ3Qgc2VlIGhvdyB0aGluZ3Mgd291bGQgd29yayBvdGhlcndp
c2UuIEZvciBEUCBpdCBpcw0KPiA+ID4gdGhlDQo+ID4gPg0KPiA+ID4gImRybS9pOTE1L210bC9k
aXNwbGF5OiBJbXBsZW1lbnQgRGlzcGxheVBvcnQgc2VxdWVuY2VzIg0KPiA+ID4NCj4gPiA+IHBh
dGNoIGluIHRoZSBpbnRlcm5hbCB0cmVlLg0KPiA+DQo+ID4gVGhlIGlkZWEgd2FzIHRvIGdldCB0
aGUgZURQIHN1cHBvcnRlZCB3aXRoIHRoaXMgQzEwIHNlcmllcy4gV2UgY291bGQNCj4gPiBnbyBi
YWNrIHRvIHRoZSBvcmlnaW5hbCBmb3JtIGFuZCBoYXZlIGFsbCBDMTAvQzIwL1RCVCBwYXRjaGVz
IGluIG9uZQ0KPiA+IHNlcmllcy4NCj4gDQo+IEFzIHRoaXMgc2VyaWVzIGVuYWJsZXMgZURQIGFu
ZCBIRE1JIG9uIEMxMCwgdGhlIHBhcnRzIHRoYXQgbWFrZSB0aGlzIHdvcmtpbmcNCj4gc2hvdWxk
IGJlIGluIHRoaXMgcGF0Y2hzZXQgaW1vLiBDMjAgYW5kIFRCVCBkb2Vzbid0IG5lZWQgdG8gYmUs
IGJ1dCBJIGRvbid0IHNlZQ0KPiBob3cgZURQIG9yIEhETUkgb24gQzEwIHdvdWxkIHdvcmsgaWYg
dGhlIG1vZGVzZXQgc2VxdWVuY2UgdXNlZCBmb3IgYm90aA0KPiBDMTAgYW5kIEMyMCBhbmQgYm90
aCBEUCBhbmQgSERNSSBtb2RlcyBpcyBub3QgdXBkYXRlZCBmb3IgTVRMLg0KVGhlIHdob2xlIHNw
bGl0IGlzIGEgYml0IGFydGlmaWNpYWwgYXMgaXQgd2FzIHJlYWxseSBoYXJkIHRvIGdldCBhbnkg
cmV2aWV3cyBkb25lIGZvciB0aGUgd2hvbGUgc2VyaWVzLiBCdXQgeW91IGFyZSByaWdodCwgdGhl
IGhkbWkgaXMgbm90IG5lZWRlZCB0byBlRFAgc3VwcG9ydC4gTWF5YmUgZm9yIHRoZSBuZXh0IHJv
dW5kLCBJIGRyb3AgdGhlc2UgaGRtaSByZWxhdGVkIHBhdGNoZXMgb3V0IGZyb20gdGhlIEMxMCBz
ZXJpZXMgc28gd2UgY2FuIGdldCBvbmx5IGVEUCBzdXBwb3J0IHJldmlld2VkIGFuZCBtZXJnZWQg
YXQgc29tZSBwb2ludC4NCg0KPiANCj4gPiA+IE1vcmUgdGhpbmdzIGJlbG93LCBiZXNpZGVzIG15
IGVhcmxpZXIgcmV2aWV3IGNvbW1lbnRzLg0KPiA+ID4NCj4gPiA+ID4gWy4uLl0NCj4gPiA+ID4g
Kw0KPiA+ID4gPiArc3RhdGljIHZvaWQgaW50ZWxfYzEwX3BsbF9wcm9ncmFtKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
IHsNCj4gPiA+ID4gKyAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jMTBtcGxsYl9zdGF0ZSAqcGxsX3N0
YXRlID0gJmNydGNfc3RhdGUtDQo+ID5jMTBtcGxsYl9zdGF0ZTsNCj4gPiA+ID4gKyAgIHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIp
Ow0KPiA+ID4gPiArICAgYm9vbCBsYW5lX3JldmVyc2FsID0gZGlnX3BvcnQtPnNhdmVkX3BvcnRf
Yml0cyAmDQo+IERESV9CVUZfUE9SVF9SRVZFUlNBTDsNCj4gPiA+ID4gKyAgIHU4IG1hc3Rlcl9s
YW5lID0gbGFuZV9yZXZlcnNhbCA/IElOVEVMX0NYMF9MQU5FMSA6DQo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFTF9DWDBfTEFORTA7DQo+ID4gPiA+ICsg
ICB1OCBmb2xsb3dlcl9sYW5lID0gbGFuZV9yZXZlcnNhbCA/IElOVEVMX0NYMF9MQU5FMCA6DQo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElOVEVMX0NYMF9M
QU5FMTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgaW50IGk7DQo+ID4gPiA+ICsgICBzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwOw0KPiA+ID4gPiArICAgYm9vbCB1c2Vfc3NjID0gZmFsc2U7DQo+
ID4gPiA+ICsgICB1OCBjbW4wID0gMDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgaWYgKGludGVs
X2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gPiA+ID4gKyAgICAgICAgICAg
aW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gPiA+ICsgICAgICAgICAg
IHVzZV9zc2MgPSAoaW50ZWxfZHAtPmRwY2RbRFBfTUFYX0RPV05TUFJFQURdICYNCj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIERQX01BWF9ET1dOU1BSRUFEXzBfNSk7DQo+ID4gPiA+ICsN
Cj4gPiA+ID4gKyAgICAgICAgICAgaWYgKCFpbnRlbF9wYW5lbF91c2Vfc3NjKGk5MTUpKQ0KPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgIHVzZV9zc2MgPSBmYWxzZTsNCj4gPiA+ID4gKw0KPiA+
ID4gPiArICAgICAgICAgICBjbW4wID0gQzEwX0NNTjBfRFBfVkFMOw0KPiA+ID4gPiArICAgfQ0K
PiA+ID4gPiArDQo+ID4gPiA+ICsgICBpbnRlbF9jeDBfd3JpdGUoaTkxNSwgZW5jb2Rlci0+cG9y
dCwgSU5URUxfQ1gwX0JPVEhfTEFORVMsDQo+IFBIWV9DMTBfVkRSX0NPTlRST0woMSksDQo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgQzEwX1ZEUl9DVFJMX01TR0JVU19BQ0NFU1MsIE1CX1dS
SVRFX0NPTU1JVFRFRCk7DQo+ID4gPiA+ICsgICAvKiBDdXN0b20gd2lkdGggbmVlZHMgdG8gYmUg
cHJvZ3JhbW1lZCB0byAwIGZvciBib3RoIHRoZSBwaHkgbGFuZXMgKi8NCj4gPiA+ID4gKyAgIGlu
dGVsX2N4MF9ybXcoaTkxNSwgZW5jb2Rlci0+cG9ydCwgSU5URUxfQ1gwX0JPVEhfTEFORVMsDQo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgIFBIWV9DMTBfVkRSX0NVU1RPTV9XSURUSCwgMHgzLCAw
LA0KPiBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ID4gPiArICAgaW50ZWxfY3gwX3JtdyhpOTE1
LCBlbmNvZGVyLT5wb3J0LCBmb2xsb3dlcl9sYW5lLA0KPiBQSFlfQzEwX1ZEUl9DT05UUk9MKDEp
LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICBDMTBfVkRSX0NUUkxfTUFTVEVSX0xBTkUsIEMx
MF9WRFJfQ1RSTF9VUERBVEVfQ0ZHLA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICBNQl9XUklU
RV9DT01NSVRURUQpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAvKiBQcm9ncmFtIHRoZSBwbGwg
dmFsdWVzIG9ubHkgZm9yIHRoZSBtYXN0ZXIgbGFuZSAqLw0KPiA+ID4gPiArICAgZm9yIChpID0g
MDsgaSA8IEFSUkFZX1NJWkUocGxsX3N0YXRlLT5wbGwpOyBpKyspDQo+ID4gPiA+ICsgICAgICAg
ICAgIC8qIElmIG5vdCB1c2luZyBzc2MgcGxsWzRdIHRocm91Z2ggcGxsWzhdIG11c3QgYmUgMCov
DQo+ID4gPiA+ICsgICAgICAgICAgIGludGVsX2N4MF93cml0ZShpOTE1LCBlbmNvZGVyLT5wb3J0
LCBtYXN0ZXJfbGFuZSwNCj4gPiA+ID4gKyBQSFlfQzEwX1ZEUl9QTEwoaSksDQo+ID4gPg0KPiA+
ID4gVGhpcyBwcm9ncmFtcyB0aGUgUExMIHZpYSB0aGUgSU5URUxfQ1gwX0xBTkUxIGxhbmUgaW4g
dGhlDQo+ID4gPiBsYW5lX3JldmVyc2FsPXRydWUgY2FzZS4gSG93ZXZlciwgSSBoYXZlbid0IGZv
dW5kIGFueSB0cmFjZSBvZiB0aGlzDQo+ID4gPiBiZWluZyBjb3JyZWN0IGluIHRoZSBzcGVjLiBJ
dCBqdXN0IHNheXMgdGhhdCBQTEwgbXVzdCBiZSBwcm9ncmFtbWVkDQo+ID4gPiB2aWENCj4gPiA+
IElOVEVMX0NYMF9MQU5FMCBpbiBhbGwgdGhlIGNhc2VzLCBzbyBib3RoIGZvciBsYW5lX3JldmVy
c2FsIGFuZA0KPiA+ID4gIWxhbmVfcmV2ZXJzYWwgKHNlZSBCc3BlYy82NDUzOSAiUGh5IExhbmUg
YW5kIFRyYW5zbWl0dGVyIFVzYWdlIg0KPiA+ID4gdGFibGUvIkxhbmUgZm9yIG1lc3NhZ2UgYnVz
IFBMTCBwcm9ncmFtbWluZyIgY29sdW1uKS4NCj4gPiA+DQo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAoIXVzZV9zc2MgJiYgKGkgPiAzICYmIGkgPCA5KSkgPyAwIDogcGxsX3N0
YXRlLT5wbGxbaV0sDQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAoaSAlIDQp
ID8gTUJfV1JJVEVfVU5DT01NSVRURUQgOg0KPiA+ID4gPiArIE1CX1dSSVRFX0NPTU1JVFRFRCk7
DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgIGludGVsX2N4MF93cml0ZShpOTE1LCBlbmNvZGVyLT5w
b3J0LCBtYXN0ZXJfbGFuZSwNCj4gUEhZX0MxMF9WRFJfQ01OKDApLCBjbW4wLCBNQl9XUklURV9D
T01NSVRURUQpOw0KPiA+ID4gPiArICAgaW50ZWxfY3gwX3dyaXRlKGk5MTUsIGVuY29kZXItPnBv
cnQsIG1hc3Rlcl9sYW5lLA0KPiBQSFlfQzEwX1ZEUl9UWCgwKSwgQzEwX1RYMF9WQUwsIE1CX1dS
SVRFX0NPTU1JVFRFRCk7DQo+ID4gPiA+ICsgICBpbnRlbF9jeDBfcm13KGk5MTUsIGVuY29kZXIt
PnBvcnQsIG1hc3Rlcl9sYW5lLA0KPiBQSFlfQzEwX1ZEUl9DT05UUk9MKDEpLA0KPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICBDMTBfVkRSX0NUUkxfTVNHQlVTX0FDQ0VTUywNCj4gQzEwX1ZEUl9D
VFJMX01BU1RFUl9MQU5FIHwNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgQzEwX1ZEUl9DVFJM
X1VQREFURV9DRkcsIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ID4gPg0KPiA+ID4gRm9yIGFsbCB0
aGUgYWJvdmUgd3JpdGVzLCBwcm9ncmFtbWluZyBJTlRFTF9DWDBfTEFORTEgbG9va3MNCj4gPiA+
IGluY29ycmVjdCBpbiB0aGUgbGFuZV9yZXZlcnNhbD10cnVlIGNhc2UsIHNob3VsZCBwcm9ncmFt
IElOVEVMX0NYMF9MQU5FMA0KPiBpbnN0ZWFkLg0KPiA+DQo+ID4gU28gaW4gYW55IGNhc2Ugd2Ug
c2hvdWxkIHByb2dyYW0gSU5URUxfQ1gwX0xBTkUwPw0KPiANCj4gVGhhdCdzIHdoYXQgdGhlIHNw
ZWMgc2F5cyBhdCBsZWFzdCwgc28gSSBkb24ndCBzZWUgYSByZWFzb24gdG8gbm90IGZvbGxvdyB0
aGF0Lg0KTGV0J3MgZ28gd2l0aCB3aGF0IHRoZSBzcGVjIHNheXMuDQoNCj4gDQo+ID4gWy4uLl0N
Cj4gPiA+ID4gKw0KPiA+ID4gPiAgLyoNCj4gPiA+ID4gICAqIExvY2FsIGludGVnZXIgY29uc3Rh
bnQgZXhwcmVzc2lvbiB2ZXJzaW9uIG9mIGlzX3Bvd2VyX29mXzIoKS4NCj4gPiA+ID4gICAqLw0K
PiA+ID4gPiBAQCAtNzQsNiArMTAyLDIzIEBADQo+ID4gPiA+ICAgICAgICAgICAgQlVJTERfQlVH
X09OX1pFUk8oIUlTX1BPV0VSX09GXzIoKF9fbWFzaykgKyAoMVVMTCA8PA0KPiA+ID4gPiBfX2Jm
X3NoZihfX21hc2spKSkpICsgXA0KPiA+ID4gPg0KPiA+ID4gPiBCVUlMRF9CVUdfT05fWkVSTyhf
X2J1aWx0aW5fY2hvb3NlX2V4cHIoX19pc19jb25zdGV4cHIoX192YWwpLA0KPiA+ID4gPiAofigo
X19tYXNrKSA+PiBfX2JmX3NoZihfX21hc2spKSAmIChfX3ZhbCkpLCAwKSkpKQ0KPiA+ID4gPg0K
PiA+ID4gPiArLyoqDQo+ID4gPiA+ICsgKiBSRUdfRklFTERfUFJFUDgoKSAtIFByZXBhcmUgYSB1
OCBiaXRmaWVsZCB2YWx1ZQ0KPiA+ID4gPiArICogQF9fbWFzazogc2hpZnRlZCBtYXNrIGRlZmlu
aW5nIHRoZSBmaWVsZCdzIGxlbmd0aCBhbmQgcG9zaXRpb24NCj4gPiA+ID4gKyAqIEBfX3ZhbDog
dmFsdWUgdG8gcHV0IGluIHRoZSBmaWVsZA0KPiA+ID4gPiArICoNCj4gPiA+ID4gKyAqIExvY2Fs
IGNvcHkgb2YgRklFTERfUFJFUDgoKSB0byBnZW5lcmF0ZSBhbiBpbnRlZ2VyIGNvbnN0YW50DQo+
ID4gPiA+ICtleHByZXNzaW9uLCBmb3JjZQ0KPiA+ID4NCj4gPiA+IFRoZSBhYm92ZSBpcyBGSUVM
RF9QUkVQKCkgb25seS4NCj4gPg0KPiA+IFNvIHVzZSBGSUVMRF9QUkVQKCkgaW5zdGVhZCBvZiBG
SUVMRF9QUkVQOCgpPw0KPiANCj4gWWVzLCB0aGVyZSBpcyBubyBGSUVMRF9QUkVQOCgpLCBzbyBJ
IGFzc3VtZSB0aGUgcmVmZXJlbmNlIHdhcyBhYm91dA0KPiBGSUVMRF9QUkVQKCkuDQpPay4NCg0K
PiANCj4gLS1JbXJlDQo=
