Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987A6BA1E7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 23:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0122110E2BB;
	Tue, 14 Mar 2023 22:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FE410E2BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 22:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678831784; x=1710367784;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DdLapEYYo9BjdTRxaQSRUoUsa4aJ4o96i3C6l1L+fJE=;
 b=Ng48oIsroV91CJZm7iKDlowrg0p16VUlCa0LvBSttmP3NwEXFOXRuiOY
 ANq1e5xJ6H3xWAUzhQ1PcqPYGBu5uKmpUqPUD8G8H1AlUAu2S/fMWHIja
 5yIeeZhEeWEONLu94f2cbomc3Gh69b8PPfHGZWfdX+b7YuYw5FkuH1Zty
 Py117VlXco2M67FCGvLhoPbUiuFdARPoMrBYINS2WR3FmmTCqnJ6UP+UX
 taLpCCeS5ITv9FcqbufHYnwTcnfNA1uBMlTTMGHXb4i0ZRuZK1pUiB2zQ
 yLUcqA8iEMwxwXjkfaWCl6/GAxuse0bD+Oqzt5ke2u4FK6t60kS9dpFee w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="402422301"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="402422301"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 15:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="768269441"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="768269441"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Mar 2023 15:09:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 15:09:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 15:09:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 15:09:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xb948Xbil+xPF8oxueF+lhVnHTzQ4i5KoUCiO6xU32Lx9SUHtVO0CldIxqlJUSntHps16aNepSBoBI9f7pHai24wb84FbdIYcqGl6f5dVKdmZb5MzHgvmi6ZQaSNpEqzeUVPeb2F/AMH+C2EiyCof+wCsG91cHTT7cXml6/Yb1aJ46FFTElFRlMI68A8p+/BajXBsmSdo8n2iCK0IDW5YYfIrTmFZMYZrtrLWFzXkQvw4KzvOpbrPN6wH9tiGZqOu0w/gjpZBoS7dG/cMcOmjyzSz6Glq2N1dMsAInf0BfHaYJnVYFMewlWo4/rIJzNDT6rsdDh2KnfT/3h2iE27Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DdLapEYYo9BjdTRxaQSRUoUsa4aJ4o96i3C6l1L+fJE=;
 b=T5lsB0J1nRAIbYunx/QVwAzy1JRK2i1HeCxd1G2uP9thGkZZsHEZsK1SjIhH/Q/+1wXlkqiebr9pwiOwwNbsREx8//uirK92ZHWjEmdW6DDyfZQfiMNHjJUD5bst+PdkB9CFoPeGqmYoLvnzUCMfkmJa3EdHJ6c+4QgEdC9cLnEeHdbBo4HqjvdpdUUTi9Qn5mAxgeMs2sBDBFuJ8WrPpv4KpK0HIxwfhn92U8a69DZogHK0ty8n8v//fGCzcJ3RuHVGVHxDWTLSJBBgLPmCOVKUPtgd+4gYL2MRlzrv6SLqqTZLOzS566kLU/BvCoksoQTLTMby0LgiBNI45d9zwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY8PR11MB6963.namprd11.prod.outlook.com (2603:10b6:930:58::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.26; Tue, 14 Mar 2023 22:09:33 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5%9]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 22:09:33 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Provide debugfs for log
 relay sub-buf info
Thread-Index: AQHZCVPZsjg1FQjSnkm30aGz8iwQPa5io2YAgJEIAwCAB8U8gA==
Date: Tue, 14 Mar 2023 22:09:32 +0000
Message-ID: <ad3b70fd2067f53ca512298b2e9f73dcda1fa9fd.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-4-alan.previn.teres.alexis@intel.com>
 <87tu27cggh.wl-ashutosh.dixit@intel.com>
 <1990314c00a789781b40d4ddff1ee647dcf78fb6.camel@intel.com>
In-Reply-To: <1990314c00a789781b40d4ddff1ee647dcf78fb6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY8PR11MB6963:EE_
x-ms-office365-filtering-correlation-id: 4d9d4e55-6e03-4756-2674-08db24d8ca65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T52D07OP1CY77OisXawXuqF0CTzRBoWkLqgUwZGmXLhTFtjMx78AV4HEGbLoaYmTna/tHtJrurO8neAqtLzzkNTWV+Sg+QsXMaeY1DRjmN2UsNIAIwaUeIdGysO3sCXO1DVBN8BsKFEnCQNWwM0G3hxMJUrjHXzC1LqKisZ0XOwQv32zBv6NuukdoLxz5ipjK+fab1nRKzUUSqfc71j5dlw4lIVy0q3Ml/u2BNYzke7kVffPstANwE00xgqfOySPjxysV40wKLsbJo/lpC+p+L6bD8EKe00IMYHJSUzd6QC6/rQBj84Mx3XHhjGVC0S56NznbrMVY/gcBwBJ9yAKOB5D9zdeetY8znl6yT97GQfW/CCXffsBr0sdpgXYBW2B5YOibWOxdPU+nionOnGtg3SDUHinlrTUgPrGdZWyC+ESscWiGpyBVb1AQnyCWCyZANutQ8UgQIt7yg643k5ghAPvRtUrRNNs2sE02vFz6pddi8aLDYvrb1QyZf1Gdw33kSAvB1J6XIxcyL+/82gvCS6xlGP1XFk0hQGfKhNj+L6TZvxuRwkFFBniDfg7ni/riooB09l0Jlv/QJsyOXIeCNgcABq3o4YXToTNYZg3MYAzAfCqmKA4hCBNSl+/pydFM82ce+ZNcVgtsiyNNi9wOpBAQ4G7nG1TeHuvLtG/3tjChVVwraKlSFJQ5KC1otGTOCAjHNJ6IRlnIzBcuBkDHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(366004)(346002)(396003)(451199018)(6862004)(8936002)(2906002)(41300700001)(38100700002)(122000001)(82960400001)(36756003)(38070700005)(86362001)(5660300002)(478600001)(71200400001)(76116006)(8676002)(64756008)(6486002)(66476007)(66946007)(91956017)(66556008)(66446008)(4326008)(2616005)(83380400001)(37006003)(6636002)(186003)(316002)(6506007)(6512007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXd2dUdOZStFL2x2R2xmRnZ5bVJ2aGFDejZ3Vit1T3RFWDI0K2FpN2dLZnFa?=
 =?utf-8?B?cFJXclc2QmZFdDRrR3ppTWs1RkhCTTZ1bjdhWGVHb29KU3kwVG9Vd1NNTlhT?=
 =?utf-8?B?d0hQQXRHZjBvT0dISDRVbUMwcktaZ1JJelZ4NWEra2tGaHYxdngwNGhQem9K?=
 =?utf-8?B?ZytDOEp1QzhtRnM3SUplRDVnb29panNhb1h4NWN2d2V5YWlkc0FtZlRmMjgy?=
 =?utf-8?B?MmgzN1dSK3R5WnROdmRJSVV4VlE3TXF6OUdBdkw2WGJPUWRId2NhMGtyRzZD?=
 =?utf-8?B?WncvZ0JhUEFPdkhBVzRtU3ptY2lqZ292UWlJZ0Q5SlJzTFR5d3VnYWxBRXVq?=
 =?utf-8?B?Mld0ZVBUa29pOENzR3pKcXFLSTBOTXFRS3BGenlLQWU5bzRvUCtoY00wMy9i?=
 =?utf-8?B?Qjd5UFlVQXQ5d1R4YktSWTgvNC9iOU00YVJFc1RpN21pVjh0K0xXSEY2Zm83?=
 =?utf-8?B?Vk5VVFdHV3JYUXpIUHpVb2FrTXJpcjJkUFJGSDB5V25iUkFEeW01cUk3L1pF?=
 =?utf-8?B?NEUrNys0Z0RwNGdXWG9icUFvNHkxU3l3Nm90cnoyYWdLWTZjTGpYdXF2R0hO?=
 =?utf-8?B?VE1MY29vVkpEZWVxOFNTV1JxVDNhNCtPMUNvcjhmWU9CajZpdWllZG1kZmEz?=
 =?utf-8?B?UW1HYlhLVXlCVHllRnc5V3dPT2t1MTBhSUE0aHc3dnp2c3F1RGlGUFJXd1Mv?=
 =?utf-8?B?aGpqVkhpL0J6MHlkZmt0WHc2RGowZExNUjR5SC9CWWxHK3dHUVpobStPN255?=
 =?utf-8?B?ZFFYZHJZVXkwVEl2Y2JtMmVsOWJGNmx0STdITnkwMGYyNG9kSzdTK1MxVHEx?=
 =?utf-8?B?blBodWxiOGM4dTNZVUp1bFZIL0FxREF1NkdUTUJDV0lCWjZzRFlhKzdzdkRn?=
 =?utf-8?B?ajVvQmUrMVlucDdmYzNPT0xVYktkZkE5RkZnQ3pFQUdWODZLTStnSS90bmFW?=
 =?utf-8?B?aUJSVkFPTFhHUjZRaGZOQTNEdjZLZytQRnU3ZjAxcFRHQjRWeHkzWCtLSktk?=
 =?utf-8?B?SkJlOWFHVmdpdXUzYkg4QXQ5dXU1K1FrUWtaWExkam1pOWIxS0NiUUxCMUQv?=
 =?utf-8?B?R1lYb0pVdWxzbEhCYTEvS01mRTA2N2xMc3kyQ2E2UjJSbDdIVjhFY1pkakcx?=
 =?utf-8?B?dVM5RU40MG9JcjJ4ZG5iQmpZMmEwQU11YTcxeCtNdUhEbGJYWC9mRXF5Y0xm?=
 =?utf-8?B?UFRtY0cxa3ZGeGlPWnJZQ3dvQWZRQzIxb01rb29WNkJjUmtwai9CeDFJNG0v?=
 =?utf-8?B?RUtIeDZUZDBycHFVbGtHV2FNOWhIcytzWGV4Q3RjVWtXMkt4UFZmZG44OWRC?=
 =?utf-8?B?UGdSVnF3SHl4SDlZbUVaN0dxdVlMOE1zZ1lnUHN6QjV3QkhvT2U2Y0JCZGRo?=
 =?utf-8?B?ODBRWnl4bE9mS295N3BlRjRHRlZ5bXJiS3NSTDEvMHA0NVoxNUsxWk5OOE4r?=
 =?utf-8?B?ZjBoQVY2cUdRN0c3d1BsbGxjMHBmREY0eXFmRDlqSEowL0JHdExPZnBwM1NJ?=
 =?utf-8?B?MnUwUEZOWmtWb2RERUQ0NVRmNWYyRTd5bm1DWXlhUXNLQVRqbjkwQ3lUMDNr?=
 =?utf-8?B?a2Z5VWNBT2ZqOW8vN2o1OUZNUytFcjNnZDU2MXRQRmw1Ni96Y09mQjRuYVkw?=
 =?utf-8?B?cFFIL1hsOGV1NFpLK0IxTXBnZkllMiswNWM3a1dCdVliMndDcHA0ZXdtM25Y?=
 =?utf-8?B?Rzg1NFFCeWVHUU5WQnB1ZU5TdmdQSWZMd1k4cloyZU9xMjl6UUU0Sk5Vekg3?=
 =?utf-8?B?U1NmazJhV1o1ZVQxVXBodUFGWWd5dktJRVZ0a2NyaE13RWY0aEQ4N3lRSDBr?=
 =?utf-8?B?c2R4M3lDNmRJVnR0VzA5dnNXT21qN0NVUmhvdWtjR2hFZ01KSllrNDNRWkQr?=
 =?utf-8?B?TlhkMWlvNWlBZFN6Mk5jMUdEL0wyeDQ2dERmdHBKR3d3YzdOaXpmRTd1TTZV?=
 =?utf-8?B?QjV1VXRKL2JteW1LZ1JQTmZ5eXF0YzlHUHFFT2llajVZeXFyYlZLM3RnN3lh?=
 =?utf-8?B?MEpDMXVETmdIYmVXY0dINWRVUWp6WDB5ZFNOZXdTRFd5by9HTWVaaWdXa2FO?=
 =?utf-8?B?SWRDbkY5L2NlNXhkTGJudHM3RzduWXhPcEVuWlRnL1NteE53WTM5cldjTTlJ?=
 =?utf-8?B?UzRSTTZkOTlwVWE3cWNwR01uZUt6bzJINVBXK1NUMWdJNTRKaWtXNk9mTERR?=
 =?utf-8?Q?iPmmTMQ08NWAPw+MyZ5+uKZWboQ/L169iRuD6AbRBHI9?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <772656C9D6250741A8092A2384CFCF80@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d9d4e55-6e03-4756-2674-08db24d8ca65
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 22:09:33.0063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Em47OAPnJxmaWSEdC4wz242RwuLMyCrs+BNj8i8wM0pU3rjj08GPUFgMT4/bjGd9yLDJ/xh/TWnx2j+YPg1H5aYq+hgq/H5vOkYLPsHlyhuLez1kk7XSu5sSudoPiXd+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Provide debugfs for
 log relay sub-buf info
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

T24gVGh1LCAyMDIzLTAzLTA5IGF0IDE1OjI5IC0wODAwLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJl
dmluIHdyb3RlOg0KPiA+ID4gDQphbGFuOnNuaXANCg0KPiA+ID4gK3N0YXRpYyBpbnQgZ3VjX2xv
Z19yZWxheV9zdWJidWZfc2l6ZV9nZXQodm9pZCAqZGF0YSwgdTY0ICp2YWwpDQo+ID4gPiArew0K
PiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nID0gZGF0YTsNCj4gPiA+ICsNCj4gPiA+
ICsJaWYgKCFsb2ctPnZtYSkNCj4gPiA+ICsJCXJldHVybiAtRU5PREVWOw0KPiA+IA0KPiA+IEZv
ciB0aGUgcmVjb3JkLCBmcm9tIHRoZSBvdGhlciBlbWFpbCB0aHJlYWQsIHRoZSBpc3N1ZSBoZXJl
IGlzIHdoZXRoZXIgdGhpcw0KPiA+IGNoZWNrIGlzIG5lZWRlZC4NCj4gPiANCj4gPiBBbHNvLCB0
aGUgaXNzdWUgaXMgd2hhdCBoYXBwZW5zIGlmIHRoZSByZWxheSBpcyBvcGVuIGFuZCB3ZSB1bmxv
YWQgdGhlDQo+ID4gbW9kdWxlLCB3aGF0IGhhcHBlbnM/DQo+ID4gDQo+IEknbGwgcmV0ZXN0IHRo
aXMgLSBidXQgSSBjbGVhcmx5IHJlbWVtYmVyIHRoYXQgaWYgdGhlIHVzZXIgc3BhY2UgYXBwIHdh
cyBzdGlsIGhvbGRpbmcNCj4gb250byB0aGUgZGVidWdmcyBoYW5kbGUsIHRoZSBpOTE1IHVubG9h
ZCB3b3VsZCBnbyB0aHJvdWdoIG1vc3Qgb2YgdGhlIGRyaXZlciB1bmxvYWQgLw0KPiB1bnJlZ2lz
dGVyIHN0ZXBzLCB3aGlsZSB0aGUgYXBwIGRvZXNudCBnZXQgYW55IHNpZ25hbHMgYnV0IGlmIHRo
ZSBhcHAgd2VyZSB0byBjbG9zZSB0aGF0DQo+IGhhbmRsZSBhZnRlciB0aGF0LCAoZ3VjX2xvZ19y
ZWxheV9jdGxfcmVsZWFzZSBnZXRzIGNhbGxlZCksIHdlIGRvIGdldCBpbnZhbGlkIHB0ciBhY2Nl
c3MNCj4gaW4ga2VybmVsLiBUYWtlIG5vdGUgdGhlIGxvZ2dlciB0b29sIHJ1bnMgd2l0aCBzdWRv
LiBUaGF0IHNhaWQgc29tZXRoaW5nICJsaWtlIiBhYm92ZSBjaGVjaw0KPiBpcyByZXF1aXJlZCBi
dXQgcGVyaGFwcyBoYW5naW5nIG9mZiBhIHN0aWxsLXZhbGlkIHB0ciAobGlrZSBpOTE1LT5mb28g
LSBtYXliZSBndC1zdHJ1Y3QgdmFsaWRpdHkNCj4gLSBidXQgbmVlZHMgc29tZXRoaW5nIHRoYXQg
aXMgZXhwbGljaXRseSBjbGVhcmVkIG9uIHVubG9hZCwgbm90IGxlZnQgYXJvdW5kIHdpdGggc3Rh
bGUgcHRycy4NCj4gDQoNCkFuIHVwZGF0ZSBvbiB0aGlzIGFib3ZlIGFmdGVyIHNvbWUgZGlnZ2lu
ZyAvIHRlc3RpbmcgOiBJIGJlbGlldmUgd2UgZG9udCB3ZSBuZWVkIHRvIGNoZWNrDQpmb3IgImxv
Zy0+dm1hIiB2YWxpZGl0eSBhcyB5b3UgaGFkIHN1c3BlY3RlZC4gSG93ZXZlciwgSSBkaWQgZmlu
ZCBvdGhlciBsZWdhY3kgZGVidWdmcw0KZnVuY3Rpb25zIGZvciByZWxheSBsb2dnaW5nIHRoYXQg
RElEIGNoZWNrIGZvciBpdCAtIHNvIEkgbXVzdCBoYXZlIGJlZW4gdHJ5aW5nIHRvIG1haW50YWlu
DQpjb25zaXN0ZW5jeS4gVGhhdCBzYWlkLCBpIHdpbGwgcHJvYmFibHkgcmVtb3ZlIHRoZSBjaGVj
ayBmcm9tIG90aGVyIGxlZ2FjeSBmdW5jdGlvbnMgYXMgd2VsbA0Kc28gdGhleSBhcmUgYWxsIGNv
bnNpc3RlbnRseSBub3QgY2hlY2tpbmcgZm9yIGl0IHNpbmNlIGl0cyBub3QgcmVxdWlyZWQuDQoN
Ckhvd2V2ZXIsIGluIHRoZSBwcm9jZXNzIG9mIHRlc3RpbmcsIGkgZm91bmQgYW4gaXNzdWUgd2hl
biBjb25uZWN0aW5nIHJlbGF5IGxvZ2dlciB0b29sDQphbmQgdW5sb2FkaW5nIGRyaXZlci4gT24g
b25lIGhhbmQgdGhpcyBpcyBhIGRlYnVnZnMgaW50ZXJmYWNlIGFuZCB3ZSBtYXkgYmUgYWJsZSB0
byBmaXggdGhhdA0KbGF0ZXIgYXMgdGhlIHVzZS1jYXNlIGRvZXNudCByZWFsbHkgZXhwZWN0IHVz
ZWQgdG8gcnVuIHRoaXMgdG9vbCB3aGlsZSB1bmxvYWRpbmcgdGhlIGRyaXZlci4NCk9uIHRoZSBv
dGhlciBoYW5kIHNvbWUgb2YgbXkgY29sbGVhZ3VlcyBkaWQgc3RyZXNzIHRoYXQgY3Jhc2hpbmcg
aW4ga2VybmVsIGlzIHNvbWV0aGluZyB3ZSBjYW5ub3QNCmlnb3JlIGFuZCBrbm93YWJseSBhbGxv
dy4gQ29uc2lkZXJpbmcgdGhlIGZhY3QgdGhhdCByZWxheSBsb2dnaW5nIHRvb2wgaXMgbm90IHdv
cmtpbmcgYXQgYWxsDQp1cHN0cmVhbSB0b2RheSwgdGhpcyBwYXRjaCBjb3VsZCAidW5tYXNrIiB0
aGF0IGVycm9yLiBGaW5hbGx5LCBpIHRvbyBmaW5kIG15c2VsZiwgYXMgcGFydCBvZiB0ZXN0aW5n
IC8NCmRlYnVnZ2luZywgb2NjYXNpb25hbGx5IGZvcmdldHRpbmcgdG8gc3RvcCB0aGUgcmVsYXkg
bG9nZ2VyIHRvb2wgd2hlbiB1bmxvYWRpbmcgYW5kIGkgY2FudCBldmVuIGRvDQpzaW1wbGUgc29m
dC1yZWJvb3QgYmVjYXVzZSBvZiBob3cgYmFkIHRoaW5ncyBnZXQgaW4gdGhlIGk5MTUuIEdpdmVu
IGFsbCBjb25zaWRlcmF0aW9ucywgSSdtIGNvbXBlbGxlZA0KdG8gZml4IHRoYXQgcHJvcGVybHkg
bm93LiBQcmV2aW91c2x5LCB0aGUgbWFqb3JpdHkgb2YgdGhlIHRpbWUgdGFrZW4gZm9yIHRoaXMg
c2VyaWVzIHdhcyBtb3N0bHkNCnRpZWQgdG8gdGhlIGludGVsX2d1Y19sb2dnZXIgc2lkZSBvZiB0
aGUgZWZmb3J0LCBub3QgdGhlIGtlcm5lbCBjaGFuZ2VzLiBCdXQgZm9yIHRoaXMgZml4LCBpIHRo
aW5rDQptb3JlIHRpbWUgKyBjaGFuZ2VzIHdpbGwgYmUgcmVxdWlyZWQgb24gdGhlIGtlcm5lbCBz
aWRlLg0KDQo=
