Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93DF657163
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 01:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E9310E1BD;
	Wed, 28 Dec 2022 00:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9026B10E1BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 00:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672186552; x=1703722552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JBKAeMRTQ/JxICb9X/NA3Cz9rzlkaWmS+OJXleFm3fs=;
 b=Hvgc/eZ5m3B+ldeKFgtDXi2WfoIKrMshFNBoPh0yEOfDUXO6fLsgI6Re
 eUtYoEe7XsGOo65glzEOT3MRx3nmWj9k41jNXAvY90QEh3yuMrXSBRrQ0
 sZKnOOzSk0dV0LFKCMP0xgdnlN1h1VQCms1x/f8ZgsaL7+XWNlvERQ7Xv
 yH9S2RsBkadceyaTxEpvVBof0QZMGJq1si3DFNl2dCoYXZlNWVFFR2LHo
 WqKwXlk+nYTKqqDw0Pu3m3QnpANCrNF2ftCJYvOxH3z4BFz6X2MpoHzWP
 hj1MF5Rd7BI4Ql9rCoCBgdEjjsPAKSPn+BFVO5y1QbTDyd9YBE0JoKq+8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="347978925"
X-IronPort-AV: E=Sophos;i="5.96,279,1665471600"; d="scan'208";a="347978925"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2022 16:15:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="898508011"
X-IronPort-AV: E=Sophos;i="5.96,279,1665471600"; d="scan'208";a="898508011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2022 16:15:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 16:15:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 27 Dec 2022 16:15:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 27 Dec 2022 16:15:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 27 Dec 2022 16:15:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkA2WUyFCOJtWRc7DTs8jMWclwNN6MJfNVeZzyFECYLn7T07JQVslZJ7jYNhxnbRh7DogCAKsjd/r1xxvnw5Whz1QmI/HfHXcYNUOuFkIgfr47FQYAv8U6jhZ7XVw7BFew1FE+21Ck/e7DKU4NokUkKIQSEK7d89vtz/YBRgVYnfgNIbwQgwt8t9oOgx3bdWWB6hNVQoocn+9f6Bxa22HgHQwipq9m5T//tf8PA3z5khWsRMEntvwLRCBMiwYqIZ2/XaHeqzvse1HB5+TKn1x6m9RaJqnnT1wz0CpcKwwVrml8DpY/jVlBo/6/NT94NZVR1L5SoFFK1XqsmyNwedAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JBKAeMRTQ/JxICb9X/NA3Cz9rzlkaWmS+OJXleFm3fs=;
 b=U0PmXeK3cM4ySUmPIfpdguMDphXjXIFRTPmg5qcab+dTeRNxlS2HGzwsHiRMvTZgWQhtMShhPqnf7Eg9ONpPGUcen1IOaLdc4YzULneN7b/L1hwEMHD/gANPksGeqQ7AYDxH5jM06ffvETrOeF0T06DWDn5jetuNqL1aw5oQt7gMcsUPJD5UtVGFwDGlKThhns+LGnFA/tn+2C7uUrA6P/IrO0O/LwSIflh7lKMBWNWyiLyB/CqZfIyiytIXdxe0/n7b5KignehG3ubLXjUb6et2iBDG4z12D0LustCDd+eEpuUcXLEXSM3nXhpeq1BWWoPtHv7uWgqCAt/g6ykEfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA1PR11MB5945.namprd11.prod.outlook.com (2603:10b6:806:239::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Wed, 28 Dec
 2022 00:15:48 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Wed, 28 Dec 2022
 00:15:48 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZFdEFbjX/CqsgXESEcFcuHsWw0657Jw6AgAAJOICAB0f0AA==
Date: Wed, 28 Dec 2022 00:15:48 +0000
Message-ID: <5ecf490305ec486090f99aba14f2ad11e05af3e4.camel@intel.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
 <20221222064355.3642557-7-suraj.kandpal@intel.com>
 <fa4976cf50583d02f458ae124dc6ee2c793b6293.camel@intel.com>
 <MWHPR11MB1741AA9388D6A5B361FF04DDE3E99@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1741AA9388D6A5B361FF04DDE3E99@MWHPR11MB1741.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA1PR11MB5945:EE_
x-ms-office365-filtering-correlation-id: 4222b9b7-7291-42f4-2560-08dae868abe9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUetW7zIl1T9wdUJWx9mkcx5u9ygQ4HKPfahXKHOhxpyrfPxWPNC0N9R58iPbupgEd+231TsOyb1mlVzkzPZEn+7r2dH9+A6aTyKpC7SnHLpi5IWZlMLZ7BCyIYDRVIbW6ohGnTxoz7hC4M6sm5Up/Y+DQuZg1jnrCqZb4P6Reo/d0bfjEHVR2lJTbONLP0jdBmI2h72UvAofVd0vJWCaGacAnNr0NTlvAghCUjpkp7r9ipOYmWO01pOcAsReY1Ujx1LDnB2Tq+HnAJZVhPnhVRiBL1jQMdoiGQJOtmf695bGOGOR06ri1xywVacLizxgXveq8o5Jn5FD6DPVWhmexhdVmGS98jGC8OHDBuklnmmFb7u4TdyGypY9awyce38ukJSFQ8uHSOBEn3h+/TQYG3JVUSMb1O4yo4acwhRPbvuhWD9jAvoC2RhriT3frb3AqoETBxNCemT24gQGqNG+cKdLikYz4377Rq8vfp0nyWQvS200yewLGY0kQJUrZiLhr2mu5IhImYnvwhz5i1iTYKkkypX0K+32/2Ypy8wZZxaajnxsAZMRXt9gADR4gevcmpu9RSwwFWxpj0P/cgeu3GqCciPv642ejDBB0hQ+vfVfmgI1nnhiRsEwJDHmIdVwct9NMQkHeX3kV23uDc1jN4SYYNo+OtSnks6sHO85QiDw3ny8TfxhfS7xW1s+KDbPzI7EEz0Y/nK9+JCuT9ZKlGStMU83nh7TrkO7UA02qjGUZWs7C6/woaG0/BMXH38
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199015)(36756003)(86362001)(91956017)(41300700001)(66946007)(76116006)(8676002)(66476007)(66556008)(4326008)(83380400001)(66446008)(64756008)(38100700002)(82960400001)(38070700005)(71200400001)(6506007)(478600001)(6486002)(107886003)(122000001)(4001150100001)(2906002)(8936002)(5660300002)(110136005)(316002)(186003)(26005)(6512007)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dng0TC9vdEpSbThpdjNFUnlQTE5KcmpqVFZiZW95eXRwaTZlcmJMaTZ5ZHFK?=
 =?utf-8?B?OElINVJpT2EwMW9iR20xSE8weW1XRXF6U3paZVA2ekJIME1HdGM4MW1DaGJF?=
 =?utf-8?B?L1lOZ3VPZlpHVmpFaHhleEdZNllGYWRGQWF4K1B5TkZSSFJ0T1NLckYvWS9a?=
 =?utf-8?B?MzVqWmFrNC85V0RaUDlvdnFlRmpVV1NOUUk2eHlQL25oNk95MUlPZTJzYnJM?=
 =?utf-8?B?ZDRSdk9JcURJQlNvMzVWVkRUemIxN0Z3TnZUVWxUQWd2WTFldzlObzR5NjZC?=
 =?utf-8?B?Ry9idEJPczdhU1A1dHVzK0xmSEtDWStMck9sY25acmFzMmhhd2lBUEdUV05x?=
 =?utf-8?B?ZnNrQ1FnbklvQzNZcThqc3drejhmRHdQeC9Wbk9ZSUhGMmdOZytGaVV6RTcv?=
 =?utf-8?B?RUdMV0hMemlRMFpzTjE2VXMrakE1akVyUHR3ZzlHNm4rTUNheEFzc2VRL2Vq?=
 =?utf-8?B?bGdJcVNLSHNNOWxhQ2pkdEJvK2gyeWpOc1NxQWxiTmVEMjUvMkZsSE4zOXN1?=
 =?utf-8?B?NDBQTm84Qm1xQjJEUFI0WHNFU1NFNHh0R01tUmFyRCs5clBIQWhSbE5NTWcr?=
 =?utf-8?B?SGdmZllCM3BYeDFDZmRRQzNGaXgyMUs0OVJrQ2JuWkFub2ZPb3BnTDlnS1la?=
 =?utf-8?B?ZVlhalYrVG8zQ2RuWGxBWXR1Tk5pLzNIUzZsdHpKbkRXUFp1L2dwS1E5OW5a?=
 =?utf-8?B?UWRXTnRVZTRDUkhUU2dON2FzUVFCZGxRN3l3ZWQ5OGxzOGZEenUwWFk0TVdG?=
 =?utf-8?B?bUNpZ2M2OWFkWkVUL3JoaWtxUnZyLzhqNjRCSHhqU05yRG0zUVl3dHQwSUtZ?=
 =?utf-8?B?VlRuTDNIWDFjdEc0QUNzNWRJNXJuUityM0gzTEdibU5KYUJDRC9TdzM0cFAw?=
 =?utf-8?B?aWZyY01KanloaStjK3BWSE1acU5pdzc2Q2NRaElvbDQvY2F6ODF5Q2pGQ0Z6?=
 =?utf-8?B?LzM0M3loTjJIeTJGTnRKQ0FSekM1U2p0WjN6YW04elZCR01jZWNVbjUzazJI?=
 =?utf-8?B?TjBpUUFvaUFxK1Q0aGYwTEdhZThtYUVrVHVsSDZlSG13U2lvSDY5RENhZlBG?=
 =?utf-8?B?eGs2UW96UGd1dHZoTG4wamV4L0xWaStBcHp4QVZ6RmQ1SEpldWJNNjFVV29Z?=
 =?utf-8?B?R0hEL0JSYTJvZXNvR0QzYkVPN0IwWnNyY2FkMU1PY3Y2ZmllQVM3SVpBUUJY?=
 =?utf-8?B?UnlJUy92K2xFdE9iVjRxOC9IcVhKU2ZzOElaMm8xbWxxVzNkOTJmbkQwV3Bu?=
 =?utf-8?B?SDd5eWwyK1ZSQzFVeHA0M2Q2cW9DM0pvZnRHYlZvS3ZWS29aTkVhdzZOSlZF?=
 =?utf-8?B?eDlRU1BiQk1mYTJzN3dCeFlKMm9TTFV2aFJwTkNVNWpmOVRSN1c4OTcwN0Nz?=
 =?utf-8?B?SzJaKzN3Q2RmN3RwbFprbVdidHROQ1k1Yy80N0lseDFMMEtjclJRcDRJMHZT?=
 =?utf-8?B?eFZLT3pRM21PMlRDMm5OWnB0aURkUjNDcjdyVGpkY1VPOHN4OCtUQXU0QmNY?=
 =?utf-8?B?Vm9KTS8wVzMwcWpoTnZhNDdEQ3lqeUlmRlJYckxBRVVJVkhQNmFrVzNsUnBk?=
 =?utf-8?B?Z2UxajBwTXBPeVJVK0l1Rm5TTlA0MkpJMXF1RmZPeDMvRFMrNXRBMllMYit6?=
 =?utf-8?B?RmhlY3prUTU1SjJRejVuUmRXbzR4b3NFZUxIMk5ka1hZTkEvdFRPemUyYzlP?=
 =?utf-8?B?QUFlYVN4aUNjdmNhTy9OUWpFcndrK2VKOHpBVk1YT1hZd3dlOE52WEYrVElj?=
 =?utf-8?B?aURYT2RNdG94SVRWYnpRYVF3WjJLOFVMUW13ZUExVWFITjREemxsVkdnN3Rl?=
 =?utf-8?B?andpclozamFzSlk4Ry9QZWRJUzF3S3NpZlNyREREUDB0b0E5czZxbGNTaTBk?=
 =?utf-8?B?Tkh6U3pZczF5WnlmQ2kwbDhXbllHaWNpUkpaWExzTDI2OElNS2lpRWl5NUNs?=
 =?utf-8?B?TjArV25mTmZ0MCtiT2o2QVpqdUdIWERrUG83ZlFpRVQ2b01CR050cWk2My82?=
 =?utf-8?B?ZUUwa2hmUzkrdGIyTlpoYWp4aEEwMmhMUGdSV2lDS3lWWk5JTU9abVRpVFRD?=
 =?utf-8?B?aGZpL2hFMWo3ZFV4VFJkNnNhd2hYanR2SUUreWQ0L3dUTlBsMXA4bGdON01t?=
 =?utf-8?B?aEFoa0YrNk43VmlTL1AzTzFpSlllVUdGRTdNRmFKeklIOUp3eVUxajF2Ymh2?=
 =?utf-8?Q?+xjpIRDKXrfX6x7duMOeM04=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <215E0AECC2C93944A4B015BA2A851A98@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4222b9b7-7291-42f4-2560-08dae868abe9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2022 00:15:48.4147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: noMqS9vuw5+/F5W2avrcWhIaIB0Rm/V0YTIBoTlUoDnCi9gthzHK2PHkUjd01DaysadxzzZCDPEtEac+yfbBXeU8WuI2sAPJ6GinFolSU9EezZvkrpmMW9vkRuOy/R0H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSd2ZSBzZW5kIG9mZmxpbmUgZW1haWwgdG8gY2xlYXIgdXAgc2Vzc2lvbiBjbGVhbnVwIGJlaGF2
aW9yIGZvciBoZGNwIChtYXliZSBpdHMgYSBQWFAtb25seSB0aGluZykuIEJ1dCBzdGlsbCB3YW5u
YSBwdXJzdWUgYSBiaXQgbW9yZSBvbiBiZWxvdyBwb3J0aW9uOg0KDQpPbiBGcmksIDIwMjItMTIt
MjMgYXQgMDk6MDcgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+IA0KPiA+IA0KPiA+
ID4gKwltZW1zZXQoY21kLCAwLCBvYmotPmJhc2Uuc2l6ZSk7DQo+ID4gDQo+ID4gQWxhbjogcXVl
c3Rpb246IGhvdyBvZnRlbiBpcyB0aGlzIGhkY3AgbWVzc2FnZSBiZWluZyBjcmVhdGVkLCBwaW5u
ZWQsY2xlYXJlZA0KPiA+IGFuZCB1c2VkIHRvIHNlbmQgbWVzc2FnZT8NCj4gPiBJcyB0aGlzIHZl
cnkgaW5mcmVxdWVudCAtIHN1Y2ggYXMgb25seSBkdXJpbmcgaW5pdGlhbCBwb3J0IGNvbm5lY3Rp
b24gZXN0YWJsaXNobWVudA0KPiA+IG9yIGlmIGluIHVubGlrZWx5IGNhc2VzIG9mIGRwL2hkbWkg
bGluay1kaXNydXB0aW9uLi4NCj4gPiBPciBpcyBpbnRlbF9oZGNwX2NoZWNrX3dvcmsgc29tZXRo
aW5nIHRoYXQgaGFzIHRvIGV4ZXJjaXNlIHRoZXNlIGdzYyBtZXNzYWdlcw0KPiA+IGZyZXF1ZW50
bHkgKHN1Y2ggYXMgZXZlcnkgZmV3IHNlY29uZHMpPw0KPiANCj4gSXQgaXMgbW9yZSBmcmVxdWVu
dCBzbyBkdXJpbmcgdGhlIGxpbmsgZXN0YWJpbGlzaG1lbnQgYW5kIHRoZW4gZXZlcnkgZmV3IHNl
Y29uZHMNCj4gVG8gY2hlY2sgaWYgbGluayBpbiB3b3JraW5nIHJpZ2h0IHRocm91Z2ggY2hlY2sg
d29yayBidXQgc2F2aW5nIG1lc3NhZ2UgaW4gaGRjcA0KPiBJbiBpbnRlbCBoZGNwIGRvZXMgbm90
IHNlZW0gcmlnaHQgYXMgbWVzc2FnZSB0aGF0IG5lZWQgdG8gYmUgc2VudCB2YXJ5IGluIHNpemUu
DQo+ICxjcmVhdGlvbiBwaW5uaW5nIGFuZCBjbGVhcmFuY2UgbWFrZXMgaXQgc2ltcGxlciBhbmQg
Y2xlYW5lci4NCj4gDQo+IA0KPiA+IEkgYW0ganVzdCB3b25kZXJpbmcgaWYgaXRzIHRoZSBsYXR0
ZXIsIHdoZXRoZXIgaXRzIG1vcmUgZWZmaWNpZW50IHRvIGluaXRpYWxpemUgYW5kDQo+ID4gc3Rv
cmUgdGhlIGhkY3BfbWVzc2FnZSBzdHJ1Y3R1cmUgaW50byBpbnRlbF9oZGNwIGlmIGhkY3Agb24g
Y29ubmVjdG9yIGlzDQo+ID4gZW5hYmxlZCBhbmQgZnJlZWQgKGludGVsX2ZyZWVfaGRjcF9nc2Nf
bWVzc2FnZSkgb25seSBhdCBwb3J0IGRpc2FibGluZyB0aW1lPw0KPiA+IEFsc28sIGluIGFueSBj
YXNlLCB3b3VsZCB0aGUgZW50aXJlIG9iamVjdCBuZWVkIHRvIGJlIG1lbXNldD8gKEknbSB3b25k
ZXJpbmcgaWYNCj4gPiB3ZSBvbmx5IG5lZWQgdG8gbWVtc2V0IHRoZSBtdGwtZ3NjLWhlYWRlciBh
bmQgbGVhdmUgdGhlIHJlc3Qgc2luY2UgZ3NjIGhkY3ANCj4gPiBzZXJ2aWNlIGlzIGFibGUgdG8g
ZGV0ZXJtaW5lIHRoZSByYW5nZSBvZiB2YWxpZCBieXRlcyBiYXNlZCBvbiB0aGUgaGRjcCBjb21t
YW5kDQo+ID4gYW5kIHRodXMgd2UgZG9uJ3QgbmVlZCB0byBtZW1zZXQgdGhlIGVudGlyZSBvYmpl
Y3QpDQo+ID4gDQo+ID4gQWxhbjpbc25pcF0NCj4gPiANCj4gDQo+IG1lbXNldHRpbmcgb2YgdGhl
IGVudGlyZSBvYmplY3Qgd291bGQgYmUgcmVxdWlyZWQgYXMgdGhlIHJhbmdlIG9mIHZhbGlkIGJ5
dGVzIGNhbiBjaGFuZ2UgZGVwZW5kaW5nIG9uDQo+IFZhcmlvdXMgdXNlIGNhc2VzIG9uZSBleGFt
cGxlIHdvdWxkIGJlIGlmIEttIGlzIGFscmVhZHkgc3RvcmVkIGluIGZ3IG9yIG5vdCB0aGlzIGtl
ZXBzIGl0DQo+IG1vcmUgY2xlYW5lciBhbmQgbGVzcyBwcm9uZSB0byBlcnJvcg0KPiA+IA0KMS4g
SXMgdGhlcmUgYSBtYXggc2l6ZSBmb3IgdGhlIGhkY3AgY29tbXVuaWNhdGlvbnMgdGhyb3VnaG91
dCB0aGUgdmFyaW91cyB0eXBlcyBvZiBtZXNzYWdlIHBhY2tldHMgdGhyb3VnaCBvdXQgdGhlIHZh
cmlvdXMgc3RhdGUtbWFjaGluZSBzdGFnZXMgb2YgdGhlIGhkY3AgbGluayBsaWZlLWN5Y2xlPw0K
SWYgdGhlcmUgaXMgYSBkZXRlcm1pbmlzdGljIG1heCBzaXplLCB3ZSBjYW4gYWxsb2NhdGUgdGhh
dCB1cCBmcm9udCBhbmQga2VlcCByZS11c2luZyB0aGUgc2FtZSBvYmplY3QuDQoNCjIuIElzIHRo
ZSAicmFuZ2Ugb2YgdmFsaWQgYnl0ZXMiIGNvbnNpc3RlbnQgZm9yIHRoZSBzYW1lIEhEQ1AtY29t
bWFuZD8gQmFzZWQgb24gcGF0Y2ggIzUgaXQgbG9va3MgdGhhdCB3YXkuIEZvciBleG1hcGxlLCBp
ZiB0aGUgaGVjaSBwYWNrZXQgY29udGFpbmVkIEhEQ1AgY29tbWFuZA0KSERDUF9DTURfV0lSRURf
QUFBLCB0aGVuIGRvIHdlIGtub3cgZm9yIHN1cmUgdGhhdCBjb21tYW5kIEFBQSB3aWxsIGFsd2F5
cyBoYXZlIGEgc3BlY2lmaWMgZml4ZWQtc2l6ZSBzdHJ1Y3R1cmUgKHNpemUgb2Ygc3RydWN0IGFh
YSk/IEFuZCBmb3IgY29tbWFuZCBIRENQX0NNRF9XSVJFRF9CQkIsIGl0IGlzDQphIGRpZmZlcmVu
dCBzdHJ1Y3R1cmUgYnV0IGFsc28gaGFzIGEgZml4ZWQtc2l6ZSAoc2l6ZSBvZiBzdHJ1Y3QgYmJi
KS4gSWYgdGhpcyB0aGUgY2FzZSwgdGhlbiB3ZSBkb250IG5lZWQgdG8gbWVtc2V0IHRoZSBlbnRp
cmUgb2JqZWN0LCB3ZSBvbmx5IG5lZWQgdG8gZW5zdXJlIHRoZSBtZW1vcnkgc2l6ZQ0KdGhhdCBj
b3JyZXNwb25kcyB0byB0aGUgc3RydWN0dXJlIG9mIHRoZSBzcGVjaWZpYyBIRENQIGNvbW1hbmQg
aXMgaW5pdGlhbGl6ZWQgY29ycmVjdGx5IC0gaS5lLiBlbnN1cmUgd2UgZmlsbCB1cCBldmVyeSBk
d29yZCBpbiB0aGF0IHN0cnVjdHVyZSAoYW5kIG5vdCBuZWVkIGEgbWVtc2V0IGZvciB0aGUNCmZ1
bGwgNEsgLSBvciB3aGF0ZXZlciBidWZmZXIgc2l6ZSB3YXMgYWxsb2NhdGVkPykuIEknbSBhc3N1
bWluZyB0aGUgc2VjdXJpdHktZmlybXdhcmUgaGRjcC1zZXJ2aWNlIHdvdWxkIG9ubHkgcmVhZCBk
YXRhIHVwIHVudGlsIHRoZSBleHBlY3RlZCBmaXhlZC1zaXplIHN0cnVjdCBkZXBlbmRpbmcgb24N
CnRoZSBjb21tYW5kLg0K
