Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3D6634F5C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 06:10:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141A410E4E4;
	Wed, 23 Nov 2022 05:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D70F10E4E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 05:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669180205; x=1700716205;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Xrq/wsbyGDBQPqRnvL6EXtsECP4CXR64iqqJ6BbQBXE=;
 b=VivJRTmYONITZBtS5pZUi8K7Eg2s+g0QmwO9J2DdKCWTYaF999NSgnFa
 jgrlbjIx8ltHWCYnpeVsQn7X36aRhFV+UvcoshEQlOAxrl8CUm2fXTaqS
 3Q6p9axxMTm/9xAm6kawkJf7LpxdyOvCoUGrwScpXFX6MW/1p9u8XW17y
 hVTq8rzF1sNtMLcyTrBduzdh4R84WBVIcLmnSc6YifVnSqQP5x+AqB7SM
 oJmGn7OuERKeZSATRLFOwGU5ahwudn8CqH5IJoMJU9iioCZ0Vw91VuRDi
 WLKBAhAdzM+f9LqA1wexT2OX/0OkxivRxwLojJNNOdbnDdizipkZxj+0z w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="311610006"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="311610006"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 21:10:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="643976095"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="643976095"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 21:10:04 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 22 Nov 2022 21:10:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 22 Nov 2022 21:10:04 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 21:10:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FR1mKyvgNfcP1OFNcSwD7SfK6vLX6Ju5t/Mcccm84jjTA/lsOQe16qAhrQFc+qeC9f9tiFRaXZUULE7f42W53/dFemtNodOxKrGv7BcmQSPl0DO7bIvdgpVoazcqFQo9/0uRxGcKBvQfET+VFCFigp+bXzUbeuf1uQa7oeXzElU15x/l9z8MQM8+V5wF1J0cGxFO+Zs1R+CgFj/AaGe+0dLzrWuj9oJdCB5PTWOYKpI0mGOLvHgP3xpqtYpNZdNyc1mkidc2UN2bqdlKJ9nIV5oCwSzKSx//1gG7+1u942YukGxJ9f/JsCHtviHiIiaHkqQz/GqpnV4MyDD4yi2e+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xrq/wsbyGDBQPqRnvL6EXtsECP4CXR64iqqJ6BbQBXE=;
 b=ayAGNSvarzQZhd0GU8okI/UohjQDP8m7DGp3QTjT4CrXwZwDz+Z2MMWAb/hDr5dm/g9JN9+682ep1596sGN7Ubk22jhdBGbma06B7sbqRpopmsKRxajA1IvGOwtMRHcQp4lWo7xKRrlruv9v4ndgclL8juM+dgg6oDjfyqoZ6TQau3vc0obBxRnlBT3+nqDbXXD3KPPdD8RdmI+qbpzsCEEgDYVwI/4B1jl/Mkjmo/ej2LZJiJAUCNrHj3krVDJCJXqIWjlADC95PJ1L5HFv5Fml7dL9RDafVPK4YtqxxzNccyl7t8/tLaBMzjV7fLyokFoJXZx2LJwM1cNGQgJZrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1469.namprd11.prod.outlook.com (2603:10b6:301:c::16)
 by BN9PR11MB5306.namprd11.prod.outlook.com (2603:10b6:408:137::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 05:10:02 +0000
Received: from MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252]) by MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252%9]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 05:10:01 +0000
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
Thread-Index: AQHY/Z8E0KIGaRvcB0GjSOKI9tuJTq5L9sUg
Date: Wed, 23 Nov 2022 05:10:01 +0000
Message-ID: <MWHPR11MB146920C662B733EE935D73BAB30C9@MWHPR11MB1469.namprd11.prod.outlook.com>
References: <20221121100134.2523381-1-himal.prasad.ghimiray@intel.com>
 <87c63fc5-1553-1794-1f48-73a47de273bb@linux.intel.com>
In-Reply-To: <87c63fc5-1553-1794-1f48-73a47de273bb@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1469:EE_|BN9PR11MB5306:EE_
x-ms-office365-filtering-correlation-id: 3b6282e5-d40b-4f12-cb6f-08dacd10f9bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LlA3bWECh8lT+mVaoGc9ev13JN3qubEvpCIgxeGwpbW45vNQ89XvlXerdonMCO/gn7wk+vOJNCXsx6W0WptK85JK+s/edMKYn1zl75gM89vdsciVkaxbldxLwdq7UK1D8HTyqt6lCAZVQVkCJ+cs/8IFbw1NG+/ABnAtOkTcqbtJh5FrcCIMSOjNQHtf8niloSegt945G+o7JxaFklQLp9MOB4uZa1KdntQe23f3T62k720oCzGrAZ4mprvf2rO6IcuTZIW3a0qvxZOJT2Pde5FJ/bQb4XmV9anQlyfjjyoatB9Qnl5C/8yxhKmVeHZsGfgJyQklObCb2cK/Ke7szEEj8c2OoZLIF6ROGD9aA2jYgr4P31J5dJ3QZHbmLpF5LTvxfIYHktYIfCEqc/BAgAEuUBYSqTojIJObuDGxlMi/4KpPFWssSfEOla4BEQT9kly3lvOOhGUYjVtFp1XD/1/dUVBu2OxP3Owa8ZCA0hGIEb3m2d1V20+2U04HtLotqXOoNyUrgw0sCeHg7hrmxQ3Jk2s2yMI3k/OQBiw0QC6nv4HEg0ATonQtGY98D11uDTRMtwuSH7A5udPqU4s6IvPNteNKLpGfnlgR6SlMy/Jyo+THiHyRG9DOX6fLVPS3SuYvHtVCs48ybYWoHYoYcO0VVe3CB/yf0dUGl7bQ3+XEMMnXkVSMKpYLu2PHxNQ93/izwlUv3pYkeflbzMbVzg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1469.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(39860400002)(136003)(346002)(451199015)(83380400001)(9686003)(478600001)(71200400001)(53546011)(7696005)(66446008)(64756008)(76116006)(6506007)(110136005)(8676002)(66946007)(41300700001)(186003)(66476007)(38100700002)(26005)(316002)(66556008)(55016003)(2906002)(52536014)(5660300002)(8936002)(33656002)(86362001)(122000001)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blpkQUthbEhmTCsvK01WK3NsSUtxcm0xZk84clhEMFFzbkF4Z0xEQXdnR1ND?=
 =?utf-8?B?N1U0NHJQOGxsL000UUd5UmRaaEJIRWxsNEFmUSt0YzlieDE0OGd3WWJlL1dl?=
 =?utf-8?B?aUxwbndOUlk1RmdNdkg4R01WY3RVeStSMUlWOEtRWnVaQUtRWWdQWmlVRHEy?=
 =?utf-8?B?a0V4R2MrdnlIbE5RWjdDV2xLYzl3UVVzZjl0TFdLN20zYmhOUHpLOWk4UzNH?=
 =?utf-8?B?dUU1WlE0R2xJZFJOa2M4OUkzR3VsaFlGNzhkZUMvTUM5TEx4eDRTQTI3YUNy?=
 =?utf-8?B?WmRZd0pYNUJzRk9nWEZ5L1lRdloybmFtcXVEaUdaVzl2ekZSNjVaZWVicmhk?=
 =?utf-8?B?cWI1OEN1ajJmVXhlZ1pnZ1JvdTZGM0R5R3BGb0Q4ZDRlZ3FIeFdNVVM4TnJF?=
 =?utf-8?B?QmVVbzRGRmttODNzS1IrZzRwRklaS0VFY1YwWVVyemZ1UStYTm90TWN2S01Z?=
 =?utf-8?B?YWNqNXJTTlFvRXpqcGhDSnFucVNLNEI5T3FDT2k5a2xnTTRPMXlNMTFQQWhC?=
 =?utf-8?B?Z2hzQ3JkWXZwT3Nxem8xVmV3OU51OXdSbE5jWWcyWndodldlOGIxdERMYU1Y?=
 =?utf-8?B?N3pHRnFyQXpwZWVUYWVjdk9vajdaWVZYckM1bS9uZ0toL002RXp1RHp0SEVI?=
 =?utf-8?B?Ly9jZ3ZRVGxTQ21SRHhHVE9pbzFCbWd1U1pZQTltUXdTakduZElwWjRPS2k4?=
 =?utf-8?B?WXJBd1J5d1lURzNRL0FnRkdoTTVjb0N1cWUvOTJKTFpPRTRUayt0QkZxMVNz?=
 =?utf-8?B?NEF5eEMzckd4Z1VFaXR1RXR2RUk0bjBwSm1jQ21udnFpUm9HZkJjdUxDVXBF?=
 =?utf-8?B?QXZwUDFoblJCdVkxQS9lY01jaHdoMi9WNHMvOE1RaFlxV2xiT284OUxmTVkx?=
 =?utf-8?B?WEhUdUNNNnluOCt2ZmtIdENJZG1YQ3J1YWV5bUNoMEh4ZWRwVFVKZzRwck5Z?=
 =?utf-8?B?OHg3ajRUT3JuVzhhVVpQRUFicm5mcFR4YWpwZ2JuV2dhWCtESVBkZFVVOGZB?=
 =?utf-8?B?VGNyWk5TZEkzYlBoOVVZNG9qOW0zYU9iZGVwMWRmdnZQRGZjb2JWbGExTVFN?=
 =?utf-8?B?a1lzQkVkS0ZqRTFRYzdkVlBLZmY5NXRURWVZblg5cmhtcnltNklZMUNpUWpi?=
 =?utf-8?B?ZUs3MVNlR3UvTXdOQWxNYjBCRXpJaUtuQVk4ZE41aGc3RXRGYnFBeGgzWk55?=
 =?utf-8?B?UGJlWlZjVG5vazFSYWRnWUIydzdHKzFrY25DRVQ0NC8zanZZLzE4b20rK3Nr?=
 =?utf-8?B?OGFyQUVnMENZYm4xL1lLbkpHQ3o3QmVhSmw3OW11YUdjVFBNS0FyN2d2bzcw?=
 =?utf-8?B?ZGxNR1EzRE9HRG04emFtWHFTakR2TnZPMnJwMFExVW11WVU3a2dzRktSeVg3?=
 =?utf-8?B?RjEvQk9MRjlqOS9LclVtVERpd0xZUEFYRWM1S0JPMUVlbGpFMkNnbkR1NVBF?=
 =?utf-8?B?b1FRMWI1T3A2d3VCYUFoUHQ2VUM5YnBYaVlOa3ZXcjI5RVo4Y0FzVUpTZDNY?=
 =?utf-8?B?aWNYT013Y3ZoZ0ZYZVRUN3dMZWl6dVpDTXovZGFmRHloZE1mWWg5ZDlHMkNC?=
 =?utf-8?B?T1NIdU53UDQ3TW1EME5QU2FSRXJ0cWJKbTBTdlFWR3pYbDR4R0Vrbk94dXZp?=
 =?utf-8?B?M0ZJNUM5WC93RHlrSXVmQU11TlZzYmlQdmY5NmRwUzFKZTBZbDNKQkh6ajVz?=
 =?utf-8?B?YUZIN2p6ZW95V29qZWhPUUkwV3BEdnJka09rdnFzY0Y4R3owQzFUbXlaUzY0?=
 =?utf-8?B?bm5SQkszTXRza0hSb2xPdGxsc0hONEFJQlhkWlVmeVZnMUV0OWF6cHNTemtx?=
 =?utf-8?B?RWtJbzNBaEtQbEFQTmY5VFdtZWxFUExTM2xhTDMyOVFFZXRHYmx3VzlqUXZq?=
 =?utf-8?B?OTFYa1YyQUpGSTU5d0p0MnJnVW0zamNleWRmeTcxWDg3SDkyRUZuOUxFNW10?=
 =?utf-8?B?ZUxUNlNnNGpzcC9SeWo2aUNxU1NvbUNvZmExQjYyVEliMG5PaFJlblRpTGRR?=
 =?utf-8?B?QXh6TTVITmo3dnV3cW9rUXZKZ1lsWnhGc0pxMWNueDBWUXNjRnZuQitRY0J3?=
 =?utf-8?B?UDUzNG52WlVJdVErL2JOekU5YmNDRDAwaWU3QmZLa1NNcnFYWE1kZkR2MFRX?=
 =?utf-8?B?YzgwUUIxQktnWCtUaFM3QkVySCtETyt2Ny8yTStCREhpdTg3UWMvdzlxS2ow?=
 =?utf-8?B?RGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6282e5-d40b-4f12-cb6f-08dacd10f9bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 05:10:01.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LjLOksc81ITWD3AlVg7syps4KWqLDKia8qJxXxGEorLcbvzQ9dIWQOn1LMSqD9yHl+XcCBaaWzjx+qh52SSBlRCF4hNzzRpoj+6fBVfx0hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5306
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogMjEgTm92ZW1iZXIgMjAy
MiAxNzoxNw0KPiBUbzogR2hpbWlyYXksIEhpbWFsIFByYXNhZCA8aGltYWwucHJhc2FkLmdoaW1p
cmF5QGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1
YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMS8xXSBkcm0vaTkxNTogRXhwb3J0IExNRU0g
bWF4IG1lbW9yeQ0KPiBiYW5kd2lkdGggdmlhIHN5c2ZzDQo+IA0KPiANCj4gT24gMjEvMTEvMjAy
MiAxMDowMSwgSGltYWwgUHJhc2FkIEdoaW1pcmF5IHdyb3RlOg0KPiA+IEV4cG9ydCBsbWVtIG1h
eGltdW0gbWVtb3J5IGJhbmR3aWR0aCB0byB0aGUgdXNlcnNwYWNlIHZpYSBzeXNmcw0KPiA+DQo+
ID4gKHYyKQ0KPiA+IEFkZCBUT0RPIGNvbW1lbnQgdG8gaGF2ZSBjbGllbnQgcGFydHMgc3BlY2lm
aWMgY29uZGl0aW9uIChBbnNodW1hbikNCj4gPiBSZW1vdmUgcHJlbGltIHByZWZpeCBmcm9tIHRo
ZSBzeXNmcyBub2RlIG5hbWUgKEFyYXZpbmQpDQo+IA0KPiBMaW5rIHRvIHVzZXJzcGFjZSBjb25z
dW1lcj8NCltHaGltaXJheSwgSGltYWwgUHJhc2FkXSANCkRvZXMgYWJvdmUgY29tbWVudCBtZWFu
cyBzdGF0aW5nIG5hbWUgb2Ygc3lzZnMgbm9kZSBpbiBjb21taXQgbWVzc2FnZSA/DQoNCj4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogSGltYWwgUHJhc2FkIEdoaW1pcmF5IDxoaW1hbC5wcmFzYWQuZ2hp
bWlyYXlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgIHwgIDIgKysNCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMu
YyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgIDIgZmlsZXMgY2hhbmdl
ZCwgMzAgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
aW5kZXggOGUxODkyZDE0Nzc0MS4uMWQ1OWI4NGI4NmFkMg0KPiA+IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gQEAgLTY2MDYsNiArNjYwNiw4IEBADQo+ID4gICAjZGVm
aW5lCSAgICBQT1dFUl9TRVRVUF9JMV9XQVRUUwkJUkVHX0JJVCgzMSkNCj4gPiAgICNkZWZpbmUJ
ICAgIFBPV0VSX1NFVFVQX0kxX1NISUZUCQk2CS8qIDEwLjYgZml4ZWQNCj4gcG9pbnQgZm9ybWF0
ICovDQo+ID4gICAjZGVmaW5lCSAgICBQT1dFUl9TRVRVUF9JMV9EQVRBX01BU0sNCj4gCVJFR19H
RU5NQVNLKDE1LCAwKQ0KPiA+ICsjZGVmaW5lCSAgUENPREVfTUVNT1JZX0NPTkZJRwkJCTB4NzAN
Cj4gPiArI2RlZmluZQ0KPiBNRU1PUllfQ09ORklHX1NVQkNPTU1BTkRfUkVBRF9NQVhfQkFORFdJ
RFRIIDB4MA0KPiA+ICAgI2RlZmluZSBHRU4xMl9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tfVElNRV9V
UwkweDIzDQo+ID4gICAjZGVmaW5lICAgWEVIUF9QQ09ERV9GUkVRVUVOQ1lfQ09ORklHCQkweDZl
CS8qIHhlaHBzZHYsDQo+IHB2YyAqLw0KPiA+ICAgLyogWEVIUF9QQ09ERV9GUkVRVUVOQ1lfQ09O
RklHIHN1Yi1jb21tYW5kcyAocGFyYW0xKSAqLyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3lzZnMuYw0KPiA+IGluZGV4IDU5NWU4YjU3NDk5MDcuLjY5ZGYyMDEyYmQxMGUgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jDQo+ID4gQEAgLTM3LDcgKzM3LDEwIEBADQo+
ID4NCj4gPiAgICNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiA+ICAgI2luY2x1ZGUgImk5MTVfc3lz
ZnMuaCINCj4gPiArI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ID4gICAjaW5jbHVkZSAiaW50ZWxf
cG0uaCINCj4gPiArI2luY2x1ZGUgImludGVsX3Bjb2RlLmgiDQo+ID4gKw0KPiANCj4gUGxlYXNl
IGRvbid0IGRvIHdoaXRlc3BhY2UgY2hhbmdlcyBpZiB0aGVyZSBpc24ndCBhIGdvb2QgcmVhc29u
Lg0KW0doaW1pcmF5LCBIaW1hbCBQcmFzYWRdIA0KV2lsbCBhZGRyZXNzIHRoaXMuDQo+IA0KPiA+
DQo+ID4gICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqa2Rldl9taW5vcl90b19pOTE1KHN0cnVj
dCBkZXZpY2UgKmtkZXYpDQo+ID4gICB7DQo+ID4gQEAgLTIzMSwxMSArMjM0LDM2IEBAIHN0YXRp
YyB2b2lkIGk5MTVfc2V0dXBfZXJyb3JfY2FwdHVyZShzdHJ1Y3QgZGV2aWNlDQo+ICprZGV2KSB7
fQ0KPiA+ICAgc3RhdGljIHZvaWQgaTkxNV90ZWFyZG93bl9lcnJvcl9jYXB0dXJlKHN0cnVjdCBk
ZXZpY2UgKmtkZXYpIHt9DQo+ID4gICAjZW5kaWYNCj4gPg0KPiA+ICtzdGF0aWMgc3NpemVfdA0K
PiA+ICtsbWVtX21heF9id19NYnBzX3Nob3coc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2
aWNlX2F0dHJpYnV0ZQ0KPiA+ICsqYXR0ciwgY2hhciAqYnVmZikgew0KPiA+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X21pbm9yX3RvX2k5MTUoZGV2KTsNCj4gPiArCXUz
MiB2YWw7DQo+ID4gKwlpbnQgZXJyOw0KPiA+ICsNCj4gPiArCWVyciA9IHNuYl9wY29kZV9yZWFk
X3AoJmk5MTUtPnVuY29yZSwgUENPREVfTUVNT1JZX0NPTkZJRywNCj4gPiArDQo+IE1FTU9SWV9D
T05GSUdfU1VCQ09NTUFORF9SRUFEX01BWF9CQU5EV0lEVEgsDQo+ID4gKwkJCSAgICAgICAweDAs
ICZ2YWwpOw0KPiA+ICsJaWYgKGVycikNCj4gPiArCQlyZXR1cm4gZXJyOw0KPiA+ICsNCj4gPiAr
CXJldHVybiBzeXNmc19lbWl0KGJ1ZmYsICIldVxuIiwgdmFsKTsgfQ0KPiA+ICsNCj4gPiArc3Rh
dGljIERFVklDRV9BVFRSX1JPKGxtZW1fbWF4X2J3X01icHMpOw0KPiA+ICsNCj4gPiAgIHZvaWQg
aTkxNV9zZXR1cF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4g
ICB7DQo+ID4gICAJc3RydWN0IGRldmljZSAqa2RldiA9IGRldl9wcml2LT5kcm0ucHJpbWFyeS0+
a2RldjsNCj4gPiAgIAlpbnQgcmV0Ow0KPiA+DQo+ID4gKwkvKlRPRE86IE5lZWQgdG8gYWRkIGNs
aWVudCBQYXJ0cyBjb25kaXRpb24gY2hlY2suICovDQo+IA0KPiBXaGF0IGRvZXMgdGhpcyBtZWFu
PyBBcmUgREcxIGFuZCBERzIgbm90IGNsaWVudCBwYXJ0cz8NCj4gDQpbR2hpbWlyYXksIEhpbWFs
IFByYXNhZF0gDQpERzEgYW5kIERnMiBhcmUgY2xpZW50IHBhcnRzLiBSYXRoZXIgdGhhbiBhZGRp
bmcgaW5kaXZpZHVhbCBwbGF0Zm9ybXMgd2UgbmVlZCBhbiBpZGVudGlmaWVyIHRvDQpkaWZmZXJl
bnRpYXRlIGNsaWVudCBwYXJ0cyBmcm9tIHNlcnZlciBwYXJ0LiANCj4gPiArCWlmIChJU19ERzEo
ZGV2X3ByaXYpIHx8IElTX0RHMihkZXZfcHJpdikpIHsNCj4gPiArCQlyZXQgPSBzeXNmc19jcmVh
dGVfZmlsZSgma2Rldi0+a29iaiwNCj4gJmRldl9hdHRyX2xtZW1fbWF4X2J3X01icHMuYXR0cik7
DQo+ID4gKwkJaWYgKHJldCkNCj4gPiArCQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlNldHRp
bmcgdXAgc3lzZnMgdG8gcmVhZA0KPiBtYXggQi9XDQo+ID4gK2ZhaWxlZFxuIik7DQo+IA0KPiBJ
IHN1Z2dlc3QgYXQgbW9zdCBkcm1fd2FybiBzaW5jZSBlcnJvciBpcyBpZ25vcmVkLg0KW0doaW1p
cmF5LCBIaW1hbCBQcmFzYWRdIA0KV2lsbCBhZGRyZXNzIHRoaXMuDQo+IA0KPiBJIGFsc28gc3Vn
Z2VzdCBleHBhbmRpbmcgQi9XIHRvIG1lbW9yeSBiYW5kd2lkdGguIE1heWJlICJGYWlsZWQgdG8g
Y3JlYXRlDQo+IG1heGltdW0gbWVtb3J5IGJhbmR3aWR0aCBzeXNmcyBmaWxlIj8NCltHaGltaXJh
eSwgSGltYWwgUHJhc2FkXSANCldpbGwgYWRkcmVzcyB0aGlzLiAiRmFpbGVkIHRvIGNyZWF0ZSBt
YXhpbXVtIG1lbW9yeSBiYW5kd2lkdGggc3lzZnMgZmlsZSIgbG9va3MgYmV0dGVyLg0KPiANCj4g
UmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiArCX0NCj4gPiArDQo+ID4gICAJaWYgKEhB
U19MM19EUEYoZGV2X3ByaXYpKSB7DQo+ID4gICAJCXJldCA9IGRldmljZV9jcmVhdGVfYmluX2Zp
bGUoa2RldiwgJmRwZl9hdHRycyk7DQo+ID4gICAJCWlmIChyZXQpDQo=
