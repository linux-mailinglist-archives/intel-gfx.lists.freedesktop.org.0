Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B476D7B67
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAD110E8EA;
	Wed,  5 Apr 2023 11:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9E010E8EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680694357; x=1712230357;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5h4WiDEUFyY3ffeRESgJ55nE2VwuZjQFBVBY3rbnGYs=;
 b=f0Xq3qqj/nMAzTiSw1d7geXb+qEVYyTuFCdTJkQuBFUQCgRlUeTNtICC
 NB21JFKb1dGnAtWnfioxctX8/AcZ18pim9xXOb+2o3zEHsfUKh/VKRlle
 dssU/IH4dYOCgQih+yNZb9+BhWXM9NIgEV3Ih2HB4PEdbE6L22KW/k3ca
 sUb4+XP6AxOXlc4DrRgpmQzlK4U5jvTL5P2+Q5jj5hVsvcn0fGtP13QOW
 SZmbeVJodTgQL4ZCrXCU4uF6K2dlpUmMV7m/F9haIj47rHqUnulRUfnNG
 ktfcGzuRvgVME9bCMia8yZAUs45T7Wt6tAphEonK+1jHoDMvlqTeWrYrw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="407508776"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="407508776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 04:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="751233709"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="751233709"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 05 Apr 2023 04:32:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 04:32:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 04:32:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 04:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYffVRb+Vqkj6BcXTqXMev+u14iCPw8EUCmFDueOgTKrS7CSF8lnd5h2GDqTqln+fft/8QaLJQYAdHz6yL7Yf6vJ51CvdDIaOaXESDzW0e9pViPOpReznCpGSb7MHCtjpXJ3cGWwDB6mUE9wYcUCbm8yexW6ZmeJ/JKhTMwatXdZOjganNKxPMiOodSWu1PBJxPvY55l5Y4Uq5CxYkBwIZbiv3st8YXC20+sNSXXZKcZy0XnAf10xAWknIfI/y2xLseV6IhZFtgYDa2jztz65W/dNRWeHTuLqwWYG2433rustRkmDlTMKUTedLF96qMIvbZSKyZ8QolRKHAItfXybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5h4WiDEUFyY3ffeRESgJ55nE2VwuZjQFBVBY3rbnGYs=;
 b=GAUI5/ewXai+h1RPV9sl3ahYETquHwbPTKy/ZEgNezFwr8kiVH+6nQNUGYYnrqNxWM+2mrsaYNrVqD5ZZ2LW5eK6cwAnemacPFnUVcCoRTM/tJRRvv5maAHKdRZsLlvNC+swIk4Czdd3HInVAN9MeuIuqR9CW7diZ+EyMovr1oqiBzWsMJQ1MpuSdjrPCYqR33R18KICWUsPtYMajJIcz0WYY49659jfXLuvGWNiqXdwMQJbuzsQWChebEQxscUhsTuR6Ftd18j+tixi5TcfX4n6MKLKgADDoF2ho1GIreVXDpcRg1sYLo9v+CmUZM/Mtr2jVjYxG8D2ZB8D4S82tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SN7PR11MB6852.namprd11.prod.outlook.com (2603:10b6:806:2a4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 11:32:33 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::a3ee:8739:9c99:4b17%4]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 11:32:32 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/wakeref: fix kernel-doc comment
Thread-Index: AQHZZ6tR65SxC1xrAUusSSdyDPG61q8clUYA
Date: Wed, 5 Apr 2023 11:32:32 +0000
Message-ID: <42508be4c5526abfdf0aaa78175d5874b591622c.camel@intel.com>
References: <20230405104142.766598-1-jani.nikula@intel.com>
 <20230405104142.766598-2-jani.nikula@intel.com>
In-Reply-To: <20230405104142.766598-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SN7PR11MB6852:EE_
x-ms-office365-filtering-correlation-id: 7375b519-6d60-494c-fb0b-08db35c97276
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: socbZotG+N7HSEA5HmSN2Xupo6hO95Od6Mom6aotef8SCI/SRhUBRkpEnr+G9SJrjJvHH8oqquDKpQ97TxpuJYqjnPTXpKL5c9Q0CGH2yJ5DQqWDkPZQ4f7vWTV4hMazXow914ktd2Q23/+pzShOZA2vpwRB/ERuVFgcONUM1jXRAOGLRriDwpmPOYUUuOnEp3h7btjichi4rSMhbqRdnGRTCQCnNqSAH5LUrwtfkEMj8VactZ5gBUpOFKK7nuQgyuA+pMElwfdY5rii2WLC4ewgXQ+GnlwAElcmz62fYgoZjlmggYXzdVr6+8W+Zb9NsURI8Oi9DmFyKiE161XpdL5McIBifeCYaYVbLE2gf5qUDKRpw5Iww1j24RLpi2MeuEOiV9TLXk3Smd7lTHnzKLGpQJeWbixgQvtEKSrXLD0csJhXiU1cmUsWE59BtJcIXR6ER+t2cvwqGO3OsPquAvRETkgFcQYx2JHqYu7pOXLYQ1tWqFNfbIUE+w9beX7Xj1j7fLAReCVrV0RYY5LNZ1Bt188BbDmfL6Omp2eFMh13dvm492XNXEhxCAGaQ/nyI3dGY8HZUQVkxbEinBIZq52JXRf+9AoZyWMjhCkwahrhd+3QEIFzgW8OGWnivgrO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199021)(71200400001)(6486002)(83380400001)(36756003)(2616005)(86362001)(38100700002)(82960400001)(38070700005)(122000001)(26005)(6506007)(6512007)(2906002)(186003)(110136005)(316002)(66556008)(66446008)(8676002)(64756008)(66476007)(91956017)(76116006)(66946007)(8936002)(4744005)(41300700001)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWQ3WDFRL0NHcGRQb0VlYUZubmlaY09UNWJ0RjVlaWFwVkxxWHV6NEs1T2tD?=
 =?utf-8?B?VnRDcldaQWcyY2NBMDZhaWszSVJRNGNTMk9FZGhrN3BRSVJRRUxNaTBON3Bo?=
 =?utf-8?B?YldzMFRyeUl2SXl4Z0MrVTJEeUNyZzkzcld0TDBPNkFCckpQSHJwR05CVW5y?=
 =?utf-8?B?dWJldmRIWXZ4WHpDT1ZrV2cycllDbDZaUDFqUkF0VWxuY21yVWExQlRQd1Bo?=
 =?utf-8?B?djc3RzMvdDVGNERMaHEvcW5PYnRXUUpOalRsMTFwRlFyS2xPUytlRytQaGNO?=
 =?utf-8?B?eDlJZ0dYazlrK0ovQjFVU1VleFhCR0s1U1lTeTdhYXJYN0JqTHUwWjdFZDk3?=
 =?utf-8?B?RVhoTDF0SWZKSWNkUUwrWnJtQ2ZnakFxM2ZHZDBWd3NQemt2dnpiRThZVG5W?=
 =?utf-8?B?MHY4VGRQVmE0Z2FpTHlueGg5bnczT0xCb0lxSmx4YTc2ZDQ5ZlJ3L08waUVm?=
 =?utf-8?B?RlVFRzl1UVo5OTUwbjBVVVgyeVcxWndpSmQwQlNTSERxd2c2RmR5K2JYV1Vt?=
 =?utf-8?B?MWxiQVUxakFjNXljR2s0RzhvTnBMUEg2aWRYeTRlUmRLbHNlSWVHLzVIQSs3?=
 =?utf-8?B?Q0ovV2FRa0NnSWZuamU0ODlKaE02cDM2NjM3NW9PR0hDZWxJWmVVeFVOVW1W?=
 =?utf-8?B?bnFmRWQ5dmE1bmZqNzNtMjBBRyswYXY1SG50SVYyRSt2UFZUTThEeEFHSURS?=
 =?utf-8?B?YkZvMlhEODBQQzdkWWhRM1EwS1o4d0tQMmo2NG14ZHB1WDBiNnJVVHZWcllN?=
 =?utf-8?B?L0xZRW1IMERLY2ozNWR3UStWZ1F0QmpJZXRZdi84bkRFendtd3V5MUhZZVkr?=
 =?utf-8?B?NTZEakNoR1RmbDJ5c1Z4a0ZzSzFiZThkNjRoYVZzZmluenZleW9YTXFxRk1H?=
 =?utf-8?B?TElqTnJjZURrM1lDWGpxQ1JEdFljSGRxZXVnamF1U3pmQnFMYWVjZFNCUTFH?=
 =?utf-8?B?NjJqNnhlQWVIZ2FxbExseEpkbElpd2JuZU1WeGlkNFRSc1hFS3RBdGdJTXBo?=
 =?utf-8?B?akNNZ0pSb0dwTkQ2SzRwRUZ5WjcwYWpmTEU2TlRncThKUWFqa3JFZDd0aVI1?=
 =?utf-8?B?TVJRVXRhWWZmdjlHWGR6dWRVNE16WUMwQkxuMHBSblBkVTVuVXorVkw5UkxM?=
 =?utf-8?B?NUhrZDJmNCtZU1FoaTA3WFNvUnBLejA4ZDR5R21wWUJaNW02WUxlbmRycjNS?=
 =?utf-8?B?czN1MmRHeGp4cVM4MmxwQUwxcE1VR2JXdFJPbk14djhVUGk0TDBVekIyb2hw?=
 =?utf-8?B?UVQvSUlVaUJMUG40ZkFLOS9na1B6OHEwS1FMSm1mTTFkKys0R2RMN1V3eXp1?=
 =?utf-8?B?ckpyZ3RnUU5qSGpKc2Z2bElFMXFxMHJMRXV3TUYyVnA0bWNwcEtmOUNEZXh3?=
 =?utf-8?B?NlFJVkJFYVlZYmhkN1Q2YjlHL0hwVDNQbE5lZXVWdUVVdHhwc2kyV2N4aER2?=
 =?utf-8?B?a2ZEOTRCTFIxUVVpdTQzbE42ZVBFTjZCYWFUQjBGZFFTL2kzNFVSMFlKdkVx?=
 =?utf-8?B?ekZ6dGNYQS95WXpQNEJuME1nalFtcjJkSDQrWkNKdWMxc2p3cFMzeTNUMHE4?=
 =?utf-8?B?NU9CUVFGZXlBN29sUHNCclBiR1ZvQWtNVVZVdXlFS0tadXNLNVRrRkMzajlz?=
 =?utf-8?B?SENiZDJSMXNkbk9PaUFKV0ZzdDBlTzBDNUpvRGZoSFQ1YlZscGJDeko3c3A2?=
 =?utf-8?B?OFBmYXMxL1REUWl1dTUzUktTSWR4Ynp6TGc3Rit2LzNkbEdtL2lPMThVSWJs?=
 =?utf-8?B?N1M1UjhFN1g5cEg2SlhGOHg1ZE9TNGF5RG9lQmEreVBZcXF3cS81WkFPbEN0?=
 =?utf-8?B?c3IzdE1hb010RUwvM0VxTUY3THNZSTJ6SDNBeVpaYmp2ajk0alkyb05ERmpG?=
 =?utf-8?B?NzZOVmdiY01vQXdxVDFEVlJLQzNWTWFXSWlwMzI1Ny9WQnBCVnBpQXpISkpt?=
 =?utf-8?B?ZzNZTWZyR2thc0pQUnRaV1Q0cDR6TEVodkZMbHBmWHBPdjNvZXJFNjlUSUhh?=
 =?utf-8?B?WEFJMTdGQm1JN3NtU21Oa3N5UTkyWEFaZGJXb1dnMFE3TE04Q1hMYUJqSjJF?=
 =?utf-8?B?YkZ1SXJKUlpYSGxmUnQxQlJwU05Ydlp2bEJpZlh1dWxRb0F2S2hnaXVtYjRH?=
 =?utf-8?B?VUwrTFhrNU9ZVWw3NUY3WmQ3RFErbiswRTRqUVB6UGFlbjhKeUVHVDdCcGRi?=
 =?utf-8?Q?ziioa2qKaBdDM3BmymjGOoM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E74BBC2D58AEF4689885D8ABA215845@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7375b519-6d60-494c-fb0b-08db35c97276
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 11:32:32.7921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 71E+gNiQPAwUheZkvBUlTUY2wD+Zycohv2tjdAzCTNSM5b7/FDRZEoql48+mLsIaefqcW3G/Vmek4iTr74ullGxGdW6PlSCdB/71ayb/hL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6852
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/wakeref: fix kernel-doc comment
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

T24gV2VkLCAyMDIzLTA0LTA1IGF0IDEzOjQxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Rml4IHRoZSB3YXJuaW5nOg0KPiANCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJl
Zi5oOjExODogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZQ0KPiBmb3IgaW50ZWxfd2FrZXJl
Zl9nZXRfaWZfaW5fdXNlKCkuIFByb3RvdHlwZSB3YXMgZm9yDQo+IGludGVsX3dha2VyZWZfZ2V0
X2lmX2FjdGl2ZSgpIGluc3RlYWQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KDQpUaGFua3MNCg0KUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oIHwgMiArLQ0KPiDCoDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dha2VyZWYuaA0KPiBpbmRleCA3MWI4YTYzZjZmMTAuLjBiNmI0ODUyYWIyMyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaA0KPiBAQCAtMTA1LDcgKzEw
NSw3IEBAIF9faW50ZWxfd2FrZXJlZl9nZXQoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQ0KPiDC
oH0NCj4gwqANCj4gwqAvKioNCj4gLSAqIGludGVsX3dha2VyZWZfZ2V0X2lmX2luX3VzZTogQWNx
dWlyZSB0aGUgd2FrZXJlZg0KPiArICogaW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0aXZlOiBBY3F1
aXJlIHRoZSB3YWtlcmVmDQo+IMKgICogQHdmOiB0aGUgd2FrZXJlZg0KPiDCoCAqDQo+IMKgICog
QWNxdWlyZSBhIGhvbGQgb24gdGhlIHdha2VyZWYsIGJ1dCBvbmx5IGlmIHRoZSB3YWtlcmVmIGlz
IGFscmVhZHkNCg0K
