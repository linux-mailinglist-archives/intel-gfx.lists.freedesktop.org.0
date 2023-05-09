Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCD56FC644
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 14:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA6310E100;
	Tue,  9 May 2023 12:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233AE10E100
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 12:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683635194; x=1715171194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=g0SEzI1jVhh6tgQpzD4HL0NWr3wLgv4RONdMPL91JuI=;
 b=npfI/X4MrcstwKozsSMCMSDMSsuovkAugpHZhMKfOuLkrKOsGjJAJlpH
 QSCrkb7Asj/tS+2lX3BYtb+5Xkd51qSIumdAqM6q+m+3/yyI2jtKYbvLp
 IYSBhze5DqllseuUN0PLQdblV+654yFcjnvYlJxH8u5bDgBFr2Z3DVrl/
 xBMbymo6JUkdUq53Og9MYPRe+/TZDuUQbWqT3ERjQIXdvHDYI410CRXkB
 zfB9bvfXs6MUHviFR7ZZkeVdVi6URO6NsenyYOADg2okAjMBGY3SzZBiI
 tz6SofAyxMrYWly4G30z8agqxed4q7zObPiJdzhTNOf8FMjiqF0bvUGp7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334362130"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="334362130"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="676455840"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="676455840"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 09 May 2023 05:26:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 05:26:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 05:26:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 05:26:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 05:26:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgRo1KFRSYxLjHExshVom6KHqb0x07wDnXcDtaBtT/SX0MlwzIsZ21IlJN2IQdN+iWy4t/YJmuriCFymuJkaB89wQiwlkA+op2du3hEJvuimT8uxjCp+v04n5bxMkQD4NrcXNu7wgggeB/aK0RcJkhQY2PLwFGFszhCs3nG1akJDOLv3dSqbrmHW/zObkX77L8UqWEsvSRd/s0FeqNvOjEbqayEHQwmwv4A3u4LhjyllQ8JeHPJNHgIJP8UCCOPiWsoKwLRndHZ1L7qFeT7wM2LGcbQW9lT1iiScJtOyn4X6MMtRijcFlltFvRlqztYO0gXvTg5FjJr7vfdz3KvH9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0SEzI1jVhh6tgQpzD4HL0NWr3wLgv4RONdMPL91JuI=;
 b=SNmYBFmbleJLtOEm+uRBj4gQAipu9yhWKlvOBpqV6SSYoLZIL3isHOPq953sEb2aFXD8zJ3su0Zn0KevzM2mhn46Uw6V4NH4ufnF6/kOQLF5zU21nmUcmLwpq0GOy8rVgk4zUVfD2Qh6Es34HBn8pL1goXSC6xGgeRSgNcidg8jQqgnQEP80y5vUbjVwPpzBP7wL7DXDwUI5XGQk5z0e/rjpB9xyBiRu+Y6wzGiSEkVSdxftBR8/5nXNCeA/tD3Qlp/BQwsR8NtsEWyWuHbZA+GMohUQQpD9K8psn9PohfZgaTIY+f9iqTspvm3GKu1ZJE103jAK/x/IM8NeMe19MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH0PR11MB5190.namprd11.prod.outlook.com (2603:10b6:510:3c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 12:26:25 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 12:26:25 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 09/12] drm/i915/dp: Prevent link training fallback on
 disconnected port
Thread-Index: AQHZf5KWNdI3OztqLk6XKs2rObfifK9R48YA
Date: Tue, 9 May 2023 12:26:24 +0000
Message-ID: <0f00d3c544a46be4c057ca4df56ba0ce12c1949f.camel@intel.com>
References: <20230503231048.432368-10-imre.deak@intel.com>
 <20230505204611.682946-7-imre.deak@intel.com>
In-Reply-To: <20230505204611.682946-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH0PR11MB5190:EE_
x-ms-office365-filtering-correlation-id: 2a1f792a-08e6-44f4-5358-08db50889b0e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Tq1vGTzgfNrIr4EyUa5SaMxyZE3w6xVUsmoKFbamem6gGmVOo/9BAazzzEXrA1JIE2PaGpVm3coj8a4+Vz+6HOqr6B6dpvROjCDttvcV+NvEUcwJk+/VQn6+hBccIMhaMqGgoPf6r1JuOypjBsRBC6esHdRfQ3VqCYA+VM4+lcHBZ6XrG3kMm12t4eqzZhrbvrGZUoONjAhWazZpcJ5twoqS7dj1QlzuSLpi2LCiYhll5qmzYXOtkM1ZTK2O4itNSIFUHBRwwT9UDkIHCDmEwoDNI5LFRO5ojlmgNjEy0ncT3x+LakE9VvQrN075/aIPgUyTgFOEpDOukgD15WgVsB+7n+kVth9cLvXozXJfnk+YQ/bXd1fBxMuoPlqKTPlaucbAEJFy+JKw6oK+hbYpjKqLcZKEI/Gyj/sdUcJwDkSSi4aVCLGxow4TA8H+oZsT3gXH5RBHjFm3jpUV4Y0ROyNnOviKQm99S5uqgsnGS7/BOqFWyevKz5ULu6rNg+U5FAFRFrvoSrEZVTy6X3ogINr1o/XPzJ7McfCA4GRt79fJgFpxut4f44PNpLlgmtsIvZjjPtHazA1lDCYFHVuqD6wI9lsZj0PrWnyLM7SmYk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199021)(83380400001)(2616005)(186003)(2906002)(38100700002)(36756003)(86362001)(38070700005)(82960400001)(122000001)(66574015)(5660300002)(8936002)(8676002)(66946007)(66556008)(6636002)(66476007)(91956017)(4326008)(66446008)(64756008)(478600001)(76116006)(71200400001)(6486002)(41300700001)(316002)(6506007)(6512007)(26005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXZ6OWdPd1RCYjBoSnFmcCtzdmI4NUVyai81dXhqNCtBRjBzZXpmb1V0Z2RH?=
 =?utf-8?B?Z1Vtd055SzlUZjlOQlhzS2sxNUpRcTNjZGtpUCtDOFE2N09ZdmxRQzlvYkhw?=
 =?utf-8?B?MitlMHdpVERMTkNaZjF2c3RGbHZ2cXVLNWk1VU9FTkJ4WXVXMWdNSURRSy9m?=
 =?utf-8?B?VHFyNUJtdzRIUExXeWhhK3JmQk5ONmdvUlJOaHFIemViUksvdEJzZldYV0RQ?=
 =?utf-8?B?RU9IMnZ6SVAzM3hGRjRCeGVaTlRkTkF0UGVPWitPTkFuWS9xSnNFM1FlNFVo?=
 =?utf-8?B?NUdJMnFLT20vZllrS3ZXaHJFRnkwV3J0YWlPb0lDbjZ5eDRKb1NmOTlFUHNV?=
 =?utf-8?B?ais5RU1pK2IwNFJ0UGpNUDB2dDBHR3VxT2VJUm1pZjV6MTM0ZFArcGd4Z0dT?=
 =?utf-8?B?QmV4RHBTV3hDRkJ5NWpSNW16YmptMkRrUXZuS20raGY4NDM3eUVzMjBZUnBr?=
 =?utf-8?B?ekNxa1FOMjl6NGs5YTV5RHdXZ1prU3gwYXlQTS84TnkrNWcrUFQvRkd2ekR6?=
 =?utf-8?B?dTdLMmwxWTZNbzdHWnJnWCt4MElNT01HMStoQnZIR0FtSDhpakJiR2FKNFI3?=
 =?utf-8?B?QURJZ2lQQWh6L2k2QW0wbm9jM3E1WTNBaFYyc2dpVjNBS1hnalVKUk42YU9F?=
 =?utf-8?B?Nm5MTHBvNTM4UElxNXRON1NJMzAwRHVtWDRWK3lWZDd1YlY3T0c1U0x2Qkha?=
 =?utf-8?B?T0VaeVhBSlg3TXl6U1RadlQwMDlIQWJGeWwwRzdtbTZTR3ZaODV4ODJiS05u?=
 =?utf-8?B?dWEyQnpMZE10MFhBRERpTENiekRTYU9RQ0xReGU2VUhjRTVkbjZJcnpsVVFW?=
 =?utf-8?B?N2xkcThDUFlRUFl4UFJDbVk2SmtzQ3l4Wm45QmF2UUtRNXl1OGhacExQQ0ZO?=
 =?utf-8?B?TkplbTNONGdLeUhoSFJ3T0RjampVSkRnZ09LUm1tbTM0bjlsZHNVNW85R0J5?=
 =?utf-8?B?Nm56Q0VRS0VkbjdjMmcwMDR0Z1NOUHdIcFFPMjJabGZudVNRTGVnVkc1bE9R?=
 =?utf-8?B?SHRwOFB6bWd5MkRjMjhTZi9CN24rZmFObXVwdEZVSWF2SmVKYm1DTHVyeFZj?=
 =?utf-8?B?cWNNejlaa3BEa05wQ0hBR3hoeGxPVzUvZFdoY2l1VlQxRFc2WmozaGU4TStP?=
 =?utf-8?B?ODVsaEk2Y1JNcndELzJtdnhSSjM5NnlWY1VPRTdCRzNZbDRGMDNwV3dQUEtM?=
 =?utf-8?B?NjRiU2RaU0ljMTFUUjhlVnZhbCtiMDRxb1JNYVlxT2RGaFlTUmtOeGVsMkQw?=
 =?utf-8?B?UmFubFNqQ1VsdUpLSjIwbUpiSGFtVWlUWUp6dVNZZFBxZGhLWnRKN2haNHVB?=
 =?utf-8?B?ZStaWUl4RUtIUittU0p5UlZYbC9sU3NIc1dGL3VlckxyQmdYNkwxNFhqeXVY?=
 =?utf-8?B?V2FKbHV0VDA0Ly9aWEovekw2aEE0dkEwYXdDNUViSTdmLzV6K1MwanFZSjNL?=
 =?utf-8?B?TVdYN1pZcTJ0UXdzajNxZGtxanFDd3RtbFZodUYwTlBLNlVsZmduUTQwc0FO?=
 =?utf-8?B?V0M5RXBwMVNKRXJBMFUvbTdZVXFoRFN3UG1kZkVzUXRiTk1EWXRub2tSQy9v?=
 =?utf-8?B?ZHh0V29idjZpL1BiZUk2S0xPL01pRysvWC95RW1tN0FuTDRZcFRoSUtBbVhu?=
 =?utf-8?B?OTIwRnlSWDQ5UGkyclQ3cTFZcEF3WW9iRTNQQ3dwQlJMbUxXeE9QVmIwZ3NF?=
 =?utf-8?B?Q2JoZjRPMTFjSlRDaEQ2VmRZOThWT0dlSEpVc05kbHJVd3Ywc3BKU3hmbWdR?=
 =?utf-8?B?VGpKZFdyN0hYVGQ4K09aVHlmd0duTjl5ODRBSG0vWVhhZUFTR2s1M1VKdTBz?=
 =?utf-8?B?b2pXaGdsWnh4WG53dER5OC9FblFVTnVTTUZnTHNybUFFSG90dklNcUx4MTN1?=
 =?utf-8?B?dHVsNUpZM3BteUd6TzRRbEZJS1F2STd4VHFXSWt3bm54ZjJaN2VWRHJlNW5J?=
 =?utf-8?B?d3RLM2tVM3R6bGs2bVZEc1JCNzZBbFU5SjdmSTBEb3owNFJRRkFLQis1Qzdi?=
 =?utf-8?B?VDlGNU5McGNmWGNzRFFEOG45dURWcCt6aUNmd0Z5U21xbHBVa09FTFVBNXkw?=
 =?utf-8?B?ZmFEMVB1Q1VBdUUwS3BTMHFSVzhPTTg2UjZuSEY1YXhnUlFkZDRxMFdwSW9w?=
 =?utf-8?B?VExlZlJHZVpTTno4UmlXQ2VucXR4RkMvUUpoczlnQ2o3TVhZK0tSa0NnbjBZ?=
 =?utf-8?Q?8cTaq8T/lK1tLXH75EmXPMo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0D91E587BBB85D4A9A98F722478A1D5C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a1f792a-08e6-44f4-5358-08db50889b0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 12:26:25.0027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Xs6b4mLCS6JHFwvnhxtQohG4fkWDgGp7KoXtDnG2t1OncuBayJK9/PQ1aW0c3IZcj7lQ+CTcI+BKX5UJyPMxHBoULLLCtBZ5UX0G0/7sLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5190
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 09/12] drm/i915/dp: Prevent link training
 fallback on disconnected port
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

T24gRnJpLCAyMDIzLTA1LTA1IGF0IDIzOjQ2ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFBy
ZXZlbnQgZG93bmdyYWRpbmcgdGhlIGxpbmsgdHJhaW5pbmcgbWF4aW11bSBsYW5lIGNvdW50L3Jh
dGUgaWYgdGhlDQo+IHNpbmsgaXMgZGlzY29ubmVjdGVkIC0gYW5kIHNvIHRoZSBsaW5rIHRyYWlu
aW5nIGZhaWx1cmUgaXMgZXhwZWN0ZWQuIEluDQo+IHN1Y2ggY2FzZXMgbW9kZXNldCBmYWlsdXJl
cyBkdWUgdG8gdGhlIHJlZHVjZWQgbWF4IGxpbmsgcGFyYW1zIHdvdWxkIGJlDQo+IGp1c3QgY29u
ZnVzaW5nIGZvciB1c2VyIHNwYWNlIChpbnN0ZWFkIG9mIHdoaWNoIHRoZSBjb3JyZWN0IHRoaW5n
IGl0DQo+IHNob3VsZCBhY3Qgb24gaXMgdGhlIHNpbmsgZGlzY29ubmVjdCBzaWduYWxlZCBieSBh
IGhvdHBsdWcgZXZlbnQsDQo+IHJlcXVpcmluZyBhIGRpc2FibGluZyBtb2Rlc2V0KS4NCj4gDQo+
IHYyOg0KPiAtIENoZWNrIHRoZSBhY3R1YWwgSFBEIHN0YXRlIHRvIGhhbmRsZSB0aGUgZm9yY2Vk
IGNvbm5lY3RvciBzdGF0ZSBjYXNlLg0KPiDCoCAoVmlub2QpDQo+IA0KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gKHYxKQ0KPiBT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KDQpU
aGFua3MuIExvb2tzIGdvb2QuDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2
aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgNSArKysrKw0KPiDCoDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDUxZDFl
NGI0YjJmMTkuLjA5NTJhNzA3MzU4YzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xMDY1LDYg
KzEwNjUsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfc2NoZWR1bGVfZmFsbGJhY2tfbGlua190
cmFpbmluZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoHsNCj4gwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9IGludGVsX2Rw
LT5hdHRhY2hlZF9jb25uZWN0b3I7DQo+IMKgDQo+ICvCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZCgmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlKSkg
ew0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbHRfZGJnKGludGVsX2RwLCBEUF9Q
SFlfRFBSWCwgIkxpbmsgVHJhaW5pbmcgZmFpbGVkIG9uIGRpc2Nvbm5lY3RlZCBzaW5rLlxuIik7
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ICvCoMKgwqDCoMKg
wqDCoH0NCj4gKw0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5ob2JsX2FjdGl2ZSkg
ew0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGx0X2RiZyhpbnRlbF9kcCwgRFBf
UEhZX0RQUlgsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJMaW5rIFRyYWluaW5nIGZhaWxlZCB3aXRoIEhPQkwgYWN0aXZlLCBub3QgZW5hYmxpbmcgaXQg
ZnJvbSBub3cgb25cbiIpOw0KDQo=
