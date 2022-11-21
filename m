Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A98632B7F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 18:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64F710E00F;
	Mon, 21 Nov 2022 17:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A536110E00F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 17:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669053159; x=1700589159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VprGeCMSaIksS4KRC58euB9F6gRSMEdRlyABrAJFByI=;
 b=QNy3gI3Y8o7HOfIbdOodUO/r7M8LzfenW4eJp7rgw4b22soYTlieobmq
 EKBX8sp4HZsMUWzBkhhPrAgsX0ULuFPPP7O7Ow/CUmQOiyYbIm0w0jSVh
 oI8vMBc3H42XD6xBmkw5VHC804Tm8nwi22qas1mKCBq6NZvjCy+QEDtXk
 6iISEPUSU1NSss1diRh0LeEckrezVTw8iOjaJrAx1ERnEjI1jJsdJczWa
 p0wYUxHMhJqPT15pIPR0iHSHW8lh2esoA/2NEV07ppjqKC2eWuql5BrpK
 aajzxUPlAAvdNHPV3EXu3AQqj7rRDDf73I0ubZw8KkIVIPG83MnZBY8DE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="399909281"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="399909281"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 09:52:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="635256701"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="635256701"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2022 09:51:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 09:51:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 09:51:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 09:51:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 09:51:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ehdWLA0HSakcy+yw/WoraegZOQp0FfVrF8caDxudFO+B+c/QgY1XgXkGBKFi/pMNUUyUGv8caCGM1zHVHZR5sQHIyP5M+jJ1Kz02sKBpv92kvm2v6v4KRHAOMK2BsKp2VxNe9Kod+rwCZ8AJpDBgkPHpFym4CLXqEKOnbnxpVUskPtyW3PwM1G8eHDMWfzttRqgz0dPl6RG32BAbqDyto7Gd9t39YgXyzwNsGllf+MmbSyg/MxQGbWa4RAxlBTud1dII2m0m3FwvH1IIPOjYcAlwlm6GPchEfPYtvs7tZXgSS5rqpz3a6Bd7RcrxPH1SrOEZfARovuDI2uz28DRF/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VprGeCMSaIksS4KRC58euB9F6gRSMEdRlyABrAJFByI=;
 b=LsXg98KqYzU7MKwvXHcbBvhANkKVRO6eAJbqQs/t/96h/u2GBj8UsCf+M9eUJyYGKesBP6wFw8OlgYnqUe1T8f5e7R4X8JG045+HuXDJQFAc+SzRUI+caoEciyHcN0FoOSlLH3wcJESxlFmgX++XFFWz5F94d5J9Vh+G4CgzVhH+Ss+qsdCUE5mwCeBygW68nd4Mi9qwJUTJMFVru4v+mFBUrQUVslKruNPGzX//1QEo8eaTC8GAN0F+uut6mLw7JQStq3JP2NT7FcKASBcOGkgxPoum0gezyRDRAJEiN7VBKBZ+2u/0XVzmUhilqHFFv4EbsBXij11qK+7IIKZBCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY8PR11MB7171.namprd11.prod.outlook.com (2603:10b6:930:92::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.9; Mon, 21 Nov 2022 17:51:39 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 17:51:39 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY+huC07hRuiUUpkeQbbJYwqcxJq5DR+AAgABuNACABZGagIAAKSCAgAA/eYA=
Date: Mon, 21 Nov 2022 17:51:36 +0000
Message-ID: <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
In-Reply-To: <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY8PR11MB7171:EE_
x-ms-office365-filtering-correlation-id: 6784ba92-27d2-45a5-a39b-08dacbe9092e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EEbMuAOLr8nvWO8IM7hmRaolBPeQDbXM7/lU85V19amLTu0mRVwLALxsUWdmLtY5DD9r/w2Qq2beXJuER4uik8BmtlchmsH5A4gJMqkNM38rnAE1XM0LrcOdxmS+Tvy5WfdbnSzlCa5DLLbh3IiPT8567bpSUGVFS+ZVj+A0P16YdBcYD4t5yQ3PSGPaj9xJefKWruWW3XiO1ectO2lRp/0rpHgBc5Z/K7kSkSA3vshKtTq2GvxWNx/C9uYxAbyxHqvcvbZ265Iaunyv8QuXa/zrd2TvwbPedfJAxFqVv1KieLSreR+tNQIyqvcIwbVsjwU15tH4jUMFkXVn2t3BCRm8oXoB8JmRi/v8N1/NR4tTg2hXhKLf99L4ni6IPUYGi8/vf/ZP6MCr1QcUKQdU01RA2Mp+8THWgXZoWn2OglBeBXVZlIUVjT8iF2jcVyBkz/YZyIHucD6O+933SrXreZ/YQdpPZ5+sWT3mY5ceHInJT1bMPWSFUaVmpQB4qfPQtPG85U260YQWWK1OALlZ2Dns6Wk2g5Rodvs2fxYNCQ0t7WIYhA+jSCOwU1mbGtGk3PrKpCtvDe3e+0wgS/aTR6I5iJdjY52fPD15+gchbsEBbBSaR2JzxO47xwZc5I43QfIhw9qrrvGEd/5rOa8qjLVQPJB0a4wvQgxY0xF7acuPqaBwZYqGOucvGnLngkPMzHK0J1wCOtJuEJfruA5c1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199015)(6486002)(38100700002)(110136005)(86362001)(82960400001)(478600001)(316002)(71200400001)(122000001)(2906002)(64756008)(8676002)(36756003)(6506007)(66476007)(41300700001)(66446008)(66556008)(4326008)(91956017)(8936002)(5660300002)(6666004)(4001150100001)(53546011)(38070700005)(26005)(6512007)(83380400001)(76116006)(66946007)(2616005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUkrQkFxZklrVzlucVNOQjhiL25xWnFiOTdSblV5dE05aWNqQXdIT1hZaS9N?=
 =?utf-8?B?YWYyODhMMTRiRUhJUi9QVXo2NGtlQ2JGQWhxeWdnb2xZWW1BTFFpUDF2Qm5E?=
 =?utf-8?B?L1Q4OUlIdHhPTHMwZk9zQzdXZitRVDNqeDdYTkp3YW15dndsdjloa3Q4d0Fm?=
 =?utf-8?B?NGVwdUFCbTlnYm5OUmhCUmNTcEh2eEcwV0NWWXdrZFN2OE9iRURXVnV3WHMx?=
 =?utf-8?B?Tldrb0Q5L0o0VGFrT1NwbkM5UnVrSGtEMG5GU2J3Q3BoT0hzS3hOcTRIeCtQ?=
 =?utf-8?B?ckU0L05KeUdEZ280d1BNYi9tSlk4NEp4OWYzVlNVSlRTU3hPTkRrT0c5aStl?=
 =?utf-8?B?UGdqOGJDcHVDS2JBMXpaSTRTdnMvbjBYM1NRaDdNMmZicURHb2Vta1BuamNI?=
 =?utf-8?B?cW9qLzhFZUd6VGZsV2ZNeEkyTEdRazB4NVhSbnl3dzZuV0FwUEdET3V4TElX?=
 =?utf-8?B?eUJJdGQvakQ0TUxjNWpCTXVhRHc0bWJGV0plZmJEbnM0SHpycFVvS2xmSVA5?=
 =?utf-8?B?VXM2RTNOTDB2TCtDRWc0LzVubkZFaWdJN1c3QVZDYlJRNEc0NXRwMXRDWXRH?=
 =?utf-8?B?RHMzY01xWVovQS9KdFZLOVhHQUpwWk45bTdyb2hXazFzRzFWcUVQRktqemtl?=
 =?utf-8?B?eW1hTENOL2RaUFM3YWduZU04dk1zTWJJNkh2ZXI5bmdNYzhIVzlnQ1lFNWZq?=
 =?utf-8?B?Yy83WDgwSjhncURUOWNmNDNMT1lycHJkWmUxVjJjeElnMlJ0aWMrcWtCMWJj?=
 =?utf-8?B?ZzVjQ3FNNXBXVzdaUXQwY3lYTVlGclFCTE9RdlMreTFENW1MWXVVRWxJSXNB?=
 =?utf-8?B?OW5rR0hYcitlUW9PckNxdmRuVzAwSnBoaTlvblNWbUhBN1ZndDVCeHVBT044?=
 =?utf-8?B?TlF4WVB1dWdHU1ZPMzN0TWo2YmRWUWFiZmpLMEZaYXBoZTR5ZTB3OWpuTXQr?=
 =?utf-8?B?OHFaZzZ4MHJaRFRtL0tFcUtRTnIwWXhaa3MzWEZuTDBxSHhBYURHWjZSS05l?=
 =?utf-8?B?VzR0TXZNTzRhZnR0Y1BCTzhJK3Z2dGY3dUpxdUFhcmlnYVhvRXdCQWM3aVY1?=
 =?utf-8?B?UTdIR1l1VStPaTgzL3BINDluVXN6ekpoVnk4bjJRcjBmTWo2Qm1iY3NmWjEx?=
 =?utf-8?B?ZkhlTURLOXE2V0hkSXFCcnBJZjJZQ3Rrc0p3T25wTlN5a2VhT2tGTEtkdkxN?=
 =?utf-8?B?Mm5lTU5wYkNXbUxhRHpMbWJCS2I4eUMxV1MzTTdraVk5THlIWnlFNHJvRG5a?=
 =?utf-8?B?NDZLbzRPWFB6R2ZjUDI0K2xRc2NLcmY0Ky9McWV0djI0a2w2U0xJSktNZ3hW?=
 =?utf-8?B?YWYrTURsWnduVFR2elEzTlIxNXFyWnZmdUczK3FjZjVPcVNiai9yK0NSV0FP?=
 =?utf-8?B?OUw3c0oyL2w1Q2VDVkgraWJ1eURrTHRRY0NwMWxkcHZVeFdoRWZ3cmQ2Yk9w?=
 =?utf-8?B?ZDVNVVFxVTU2YzVzUFNHVlV0RTN6WnZBL3JNdG5DdHp4SFB3ODB4QXFDUWl4?=
 =?utf-8?B?SXlSb1Zocm1tRnRFMTA5RHhFTmJJQTlMY25kMXB4VXpCWXczdHNubjhuM1p5?=
 =?utf-8?B?aktHZ0RZZzZNcXhmUjhQQmREbjZEd21ValllMFBvZEg4S3RMM2s1c05QdGlj?=
 =?utf-8?B?bmE2U09iSlV6QUR3WFc4ajQ4dlROU3NWcjV0NkNvQ0F0T3BTUDdIbXVCN2l5?=
 =?utf-8?B?SEsvWTNrc3YrRHVMVmJQWlNVRVppSCtSZWJ2Zi9ZaWFZQk9BbCsvU2J6a1Ri?=
 =?utf-8?B?YjVJSDRWZGNBcVZ1TmZpc1IzWjFGQmNSemhsV0p5QnlTUkVkUFA2SmNRR2Ro?=
 =?utf-8?B?Rzc0QmNxUjJaVGNOZ1NKZTEzY09acG15SE1UUTF3S2dxKzBTa2NYbGZoR1ll?=
 =?utf-8?B?a3VrU1hMcXVDMUxEMGQveTRpUEtaMzBMVTFSaXprZkwyZTFoRUNQL0o4aUVK?=
 =?utf-8?B?bG1hYjdJZWdPcDV5cWJPd0NHa2VMdTRJSnNXYWdGZXRocGtMWTNPZUpWR1ln?=
 =?utf-8?B?d3crVHVkUmxQUzlKYVNLNGJhMUVWZjY3U0R1eUpxaDRzQTBNRDhYVUMrOWRt?=
 =?utf-8?B?dXNSdjM4d1JxYk4yVWxXN3dQS0NpR3EvS2hCNFd5NzhXREhtdUFjT2N6SlA1?=
 =?utf-8?B?K0djbkZtU1U1UE13ZXRtNWp5ZUFqOXJvdnN6NGFaSlJwUk5JbGdRSVUrT1Zt?=
 =?utf-8?Q?X1cBLYEj984P4p1vfCFjvDA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <830787DF015FE842B1873509772E375F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6784ba92-27d2-45a5-a39b-08dacbe9092e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 17:51:36.8060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 63zo9dzBTu9Q6WEwVS69t+jrxid0mWHOWMvrRsfHN/b61VuR3wDr9tnLWbxvCwcLK5NU7Ccxsmqf1fHpM0r5Z1Grn2DcfoJYsGzRLT2VlYl/A9vOcEUAwTMOW05B9s48
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yMSBhdCAxNDowNiArMDAwMCwgVml2aSwgUm9kcmlnbyB3cm90
ZToNCj4gT24gTW9uLCAyMDIyLTExLTIxIGF0IDExOjM5ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3
cm90ZToNCj4gPiANCj4gPiBPbiAxNy8xMS8yMDIyIDIyOjM0LCBUZXJlcyBBbGV4aXMsIEFsYW4g
UHJldmluIHdyb3RlOg0KPiA+ID4gT24gVGh1LCAyMDIyLTExLTE3IGF0IDExOjAyIC0wNTAwLCBW
aXZpLCBSb2RyaWdvIHdyb3RlOg0KPiA+ID4gPiBPbiBXZWQsIE5vdiAxNiwgMjAyMiBhdCAwNDoz
MDoxM1BNIC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+ID4gPiBJbiBwcmVwYXJhdGlv
biBmb3IgZnV0dXJlIE1UTC1QWFAgZmVhdHVyZSBzdXBwb3J0LCBQWFAgY29udHJvbA0KPiA+ID4g
PiA+IGNvbnRleHQgc2hvdWxkIG9ubHkgdmFsaWQgb24gdGhlIGNvcnJlY3QgZ3QgdGlsZS4gRGVw
ZW5kaW5nIG9uDQo+ID4gPiA+ID4gdGhlDQo+ID4gPiA+ID4gK2Jvb2wgaW50ZWxfcHhwX3N1cHBv
cnRlZF9vbl9ndChjb25zdCBzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gPiA+IA0KPiA+ID4g
PiBJZiB3ZSBhcmUgYXNraW5nIGlmIGl0IGlzIHN1cHBvcnRlZCBvbiBndCwgdGhlbiB0aGUgYXJn
dW1lbnQgbXVzdA0KPiA+ID4gPiBiZSBhIGd0IHN0cnVjdC4NCj4gPiA+ID4gDQo+ID4gPiBJIGFn
cmVlIHdpdGggeW91IGJ1dCBEYW5pZWxlIHNhaWQgYWJvdmUgaXMgbW9yZSBjb25zaXN0ZW50IHdp
dGgNCj4gPiA+IGV4aXN0aW5nIHdheXMgdGhhdCBpcyBjb25zaWRlcmVkIHRoZSBzdGFuZGFyZC4N
Cj4gPiA+IFJlc3BlY3RmdWxseSBhbmQgaHVtYmx5IEkgd291bGQgbGlrZSB0byByZXF1ZXN0IGJv
dGggeW91cnNlbGYgYW5kDQo+ID4gPiBEYW5pZWxlIHRvIHNob3cgbWUgdGhlIGNvZGluZyBndWlk
ZWxpbmVzIHNvbWV3aGVyZS4NCj4gPiA+IA0KPiA+ID4gSG9uZXN0bHksIHRoaXMgaXMgb25lIG9m
IHRoZSBmaXJzdCBmZXcgaHVua3Mgb2YgdGhlIGZpcnN0IHBhdGNoIG9mDQo+ID4gPiB0aGUgZmly
c3Qgc2VyaWVzIGluIGEgdmVyeSBsYXJnZSBjb21wbGV4IGRlc2lnbiB0bw0KPiA+ID4gZW5hYmxl
IFBYUCBvbiBNVEwgYW5kIGl0IG9ubHkgYSBoZWxwZXIgdXRpbGl0eSBmdW5jdGlvbi4NCj4gPiA+
IFJlc3BlY2Z1bGx5IGFuZCBodW1ibHksIEkgcmF0aGVyIHdlIGZvY3VzIG91ciBlbmVyZ3kgZm9y
IHJldmlldw0KPiA+ID4gKyByZWRvwqAgb24gbW9yZSBjcml0aWNhbCB0aGluZ3MgbGlrZSB0aGUg
ZTJlIHVzYWdlIGFuZCB0b3AtdG8tDQo+ID4gPiBib3R0b20gZGVzaWduIG9yIGNvZGluZyBsb2dp
YyBmbG93cyBvciBmaW5kIGFjdHVhbCBidWdzDQo+ID4gPiBpbnN0ZWFkIG9mIGRlYmF0aW5nIGFi
b3V0IGNvZGluZyBzdHlsZXMgZm9yIGludGVybmFsIG9ubHkgaGVscGVyDQo+ID4gPiBmdW5jdGlv
bnMuDQo+ID4gDQo+ID4gTXkgMmMvcCBpcyB0aGF0IHRoZSBpbnRlbF9weHBfc3VwcG9ydGVkX29u
X2d0IHRoZSAib25fZ3QiIHBhcnQgcmVhZHMNCj4gPiBhIA0KPiA+IGJpdCBjbHVtc3kgYmVjYXVz
ZSBpdCBtYWtlcyBpdCBzb3VuZCBsaWtlIHRoZSB0d28gYXJlIGluZGVwZW5kZW50IA0KPiA+IG9i
amVjdHMuIExpa2UgSSBjb3VsZCBwYXNzIG9uZSBweHAgdG8gZGlmZmVyZW50IEdUcyBhbmQgYXNr
IGlmIHRoYXQNCj4gPiBvbmUgDQo+ID4gd29ya3MgaGVyZSwgb3IgbWF5YmUgdGhlcmUuDQo+ID4g
DQo+ID4gSSBhbSB0aG91Z2ggYSBmYW4gb2YgaW50ZWxfcHhwXyBwcmVmaXggbWVhbmluZyBmdW5j
dGlvbiBvcGVyYXRlcyBvbiANCj4gPiBzdHJ1Y3QgaW50ZWxfcHhwLg0KPiA+IA0KPiA+IEluIHRo
aXMgY2FzZSBJIGRvbid0IGtub3cgd2hhdCBpcyB0aGUgY29ycmVjdCByZWxhdGlvbnNoaXAuIElm
IGl0IGlzDQo+ID4gMToxIA0KPiA+IGJldHdlZW4gaW50ZWxfcHhwOmludGVsX2d0DQo+IA0KPiBZ
ZWFwLCB0aGlzIGlzIG15IG1haW4gcG9pbnQgaGVyZS4gSXQgaXMgbm90IGNsZWFyIHdoYXQgaXMg
dGhlIGNvcnJlY3QNCj4gcmVsYXRpb25zaGlwIGhlcmUuDQo+IA0KPiBPciB3ZSBtYWtlIHRoZSBp
bnRlbF9weHAgdW5kZXIgdGhlIGRybV9pOTE1X3ByaXZhdGUsIGFuZCB0aGVuIGhhdmUgdGhlDQo+
IGFzc29jaWF0ZWQgZ3QgKGFsd2F5cyBndDA/ISkgbGluayBpbnNpZGUgdGhlIGludGVsX3B4cC4N
Cj4gDQo+IE9yIHdlIGtlZXAgaXQgaW5zaWRlIGludGVsX2d0IGFzIGlzIHRvZGF5LCBidXQgdGhl
biB3ZSBydW4gYWxsIHRoZQ0KPiBmdW5jdGlvbnMgZ3QgYWdub3N0aWNhbGx5IGFuZCB0aGVuIHNr
aXAgd2hlbiBub3QgZW5hYmxlZCAoIWd0MD8pLg0KPiANCj4gQnV0IGFsbCB0aGVzZSBmdW5jdGlv
bnMgdG8gY2hlY2sgIm9uX2d0IiBtYWtlcyB0aGUgY29kZSBoYXJkIHRvDQo+IHVuZGVyc3RhbmQg
dGhlIHJlbGF0aW9uIGFuZCBoYXJkIHRvIG1haW50YWluIGxvbmcgdGVybS4NCj4gDQo+IFRoZSBh
cmd1bWVudCB0aGF0IHdlIGhhdmUgbW9yZSBwYXRjaGVzIGluIHRoZSBwaXBlbGluZSB0byBjb21l
IG9uIHRvcA0KPiBvZiB0aGlzIHNlcmllcyBoZXJlIGp1c3QgbWFrZSBpdCBzdHJvbmdlciB0aGUg
bmVlZCBmb3IgYSB2ZXJ5IGNsZWFuDQo+IHN0YXJ0Lg0KPiANCj4gDQoNClJvZHJpZ28sIHRoaXMg
aXMgdGhlIGppc3Qgb2YgdGhlIGNvbnRlbnRpb24gLSBzb21ldGhpbmcgRGFuaWVsZSBhbmQgaSBk
aXNjdXNzZWQgbW9udGhzIGJhY2ssIGFuZCB0aGUgZGlyZWN0aW9uIHdlIHBpY2tlZA0Kd2l0aCBP
cHRpb24tMSBiZWxvdy4NCg0KDQpXZSBoYXZlIE9wdGlvbi0xIHdoZXJlIHdlIHN0aWNrIHdpdGgg
dGhlIGN1cnJlbnQgc3RydWN0dXJlIGhpZXJhcmNoeSAtIGkuZS4gcHhwIGlzIGEgZ3Qtc3Vic3Ry
dWN0dXJlLiBCdXQgZm9yIE1UTCwgZ3QwJ3MNCnB4cCBpcyBub3QgdXNhYmxlIGFuZCBtZWRpYS10
aWxlJ3MgcHhwIGlzIHRoZSBjb250cm9sIHBvaW50LiBUaGlzIG1lYW5zIHRoYXQgYmFja2VuZCBj
b2RlIHRoYXQgYWNjZXNzZXMgaHcgd2lsbCBiZSBjbGVhbg0KKGFsd2F5cyBhbHJlYWR5IG9uIHRo
ZSBjb3JyZWN0IHRpbGUpIC0gYnV0IHRoZW4gZ2VtLWV4ZWNidWYgLyBnZW0tY3JlYXRlIC8gZ2Vt
LWNvbnRleHQgKHdoaWNoIGFyZSB0aWxlLWFnbm9zdGljIGxheWVycw0KcmlnaHQ/KSBhcmUgZm9y
Y2VkIHRvIHBpY2sgdGhlIGNvcnJlY3QgZ3Qgb3IgaGF2ZSBhIGRlZGljYXRlZCBoZWxwZXIgdG8g
cmVkaXJlY3QgZnJvbSBpOTE1IGxheWVyIHRvIGNvcnJlY3QgZ3QtdGlsZQ0KZGVwZW5kaW5nIG9u
IHBsYXRmb3JtLiBIVyB3aXNlIGFueSBjb250ZXh0IC8gYnVmZmVyIC8gcmVxdWVzdCBvbiBhbnkg
dGlsZSBjYW4gc3RpbGwgYWNjZXNzIFBYUCBmZWF0dXJlIHZpYSBiYXRjaCBsZXZlbA0KY29tbWFu
ZHMuDQoNCk9yIGZvciBPcHRpb24tMiwgd2UgZWxldmF0ZSBweHAgdG8gYSBnbG9iYWwgbGV2ZWwg
KG9yIHVzZSBwdHItdG8tcHhwIGluIGd0KSBzbyB0aWxlLWFnbm9zdGljLWxheWVycyBjYWxsIHB4
cCB3aXRob3V0DQpuZWVkaW5nIHRvIGNhcmUgYWJvdXQgd2hpY2ggdGlsZS4gSG93ZXZlciwgc2lu
Y2UgcHhwIHJlcXVpcmVzIHRoZSBhYmlsaXR5IHRvIHNlbmQgY29tbWFuZHMgb3IgdG91Y2ggcmVn
aXN0ZXJzIG9mIHRoZQ0KbWVkaWEgdGlsZSBhbmQgbm90IHRoZXJlIG90aGVyIHRpbGUsIHN1Y2gg
YmFja2VuZC1jb2RlIHdpbGwgYmUgbmVlZCB0aGF0IGFkZGl0aW9uYWwgbGF5ZXIgdG8gcGljayB0
aGUgcmlnaHQgZ3QuIEFsc28sIHdlDQp3aWxsIG5lZWQgdG8gZW5zdXJlIHRoZSBmbG93IG9mIGlu
aXQvZmluaSBhbmQgc3VzcGVuZC9yZXN1bWUgYXJlICJhbGlnbmVkIiB3aXRoIHRoZSBndC10aWxl
IGxldmVsIGluaXQvZmluaSBhbmQNCnN1c3BlbmQvcmVzdW1lLiBTbyB0aGF0IHByZXNlbnRzIGFu
b3RoZXIgbGV2ZWwgb2YgY29udm9sdXRlZCBjb2RlIHRvIGZvbGxvdyAod2hlbiBsb29raW5nIGZy
b20gYSB0b3AtZG93biBlMmUgZmxvdyBhbmQNCndoYXQgcGFyYW1zIGFyZSBiZWluZyBwYXNzZWQg
aW50byBkaWZmZXJlbnQgZnVuY3Rpb25zKS4gDQoNCkkgcGVyc29uYWxseSB3b3VsZCBwcmVmZXIg
T3B0aW9uLTIgd2hlcmUgd2UgZWxldmF0ZSAiaW50ZWxfcHhwIiB0byBhIGk5MTUgbGV2ZWwgc3Vi
LXN0cnVjdHVyZS4gQmFzZWQgb24gbXkgZGlzY3Vzc2lvbnMNCndpdGggdGhlIGFyY2hpdGVjdHMs
IHRoZXkgYXNzdXJlZCBtZSB0aGF0IGZvciB0aGUgZm9yZXNlZWFibGUgZnV0dXJlLCB0aGVyZSB3
b3VsZCBhbHdheXMgYmUgYSBzaW5nbGUgImNvbnRyb2wtcG9pbnQiIGZvcg0KcHhwIGZlYXR1cmUg
YW5kIGFjY2VzcyB0byB0aGUgYmFja2VuZCBmaXJtd2FyZSAtIGkuZS4gInNpbmdsZSIgaGVyZSBt
ZWFuaW5nIG9uZSB0aWxlIG9ubHkuIA0KDQpJbiBlaXRoZXIgY2FzZSAob3B0aW9uLTEgb3Igb3B0
aW9uLTIpIHdlIHdpbGwgYWx3YXlzIGJlIHByZXNlbnRlZCB3aXRoIG9uZSBmb3JtIHJlYWRhYmls
aXR5IGNvbmZ1c2lvbiBvciBhbm90aGVyLiBBbHNvDQppbiBlaXRoZXIgY2FzZSB3ZSB3aWxsIGxp
a2VseSBoYXZlIGJvdGggdHlwZXMgb2YgZnVuY3Rpb24gbmFtZXMgOiBpbnRlbF9weHBfaXNfZW5h
YmxlZChweHApIHZzDQppbnRlbF9ndF9oYXNfZW5hYmxlZF9weHAoZ3QpIC0gd2hlcmUgb25lIGlz
IGEgd3JhcHBlciBvdmVyIHRoZSBvdGhlciAtIHNvIHdlIG91Z2h0IHRvIGtlZXAgdGhlICJlbmFi
bGVkIiBwYXJ0IG9mIHRoZQ0KbmFtZSB0aGUgc2FtZS4NCg0KSSBoYXZlbnQgdGhvdWdodCBhYm91
dCB1c2luZyBhIGd0LT5weHBfcHRyIChsaWtlIE1UTCdzIGludGVycnVwdCBjb2RlKS4gTGV0cyBj
b25zaWRlciB0aGlzIE9wdGlvbi0zLiBJZiB5b3UgdGhpbmsgdGhhdA0KaXMgYW4gZXZlbiBiZXR0
ZXIgYWx0ZXJuYXRpdmUsIGxldCBtZSBrbm93LCBvbmx5IHRoZSAicHhwLXRvLWd0IiBoZWxwZXJz
IHdvdWxkIHRoZW4gbmVlZCBhIHJld3JpdGUgYnV0IHRoZSBpbml0L2ZpbmkNCmNvZGUgd291bGQg
YWxzbyBoYXZlIGEgdGlueSBiaXQgb2Yga2x1ZGdpbmVzcyBzaW5jZSB3ZSB3aWxsIGhhdmUgdG8g
c2tpcCB0aGUgYWxsb2NhdGlvbiBvZiBzYWlkIHN1Yi1zdHJ1Y3R1cmUgZm9yIGd0MA0KZm9yIE1U
TCBidXQgbm90IGZvciBBREwuDQoNCi4uLmFsYW4NCg==
