Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC8440656
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 02:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9176EA97;
	Sat, 30 Oct 2021 00:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604B16EA97
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Oct 2021 00:13:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="229504798"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="229504798"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 17:13:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="466697395"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2021 17:13:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 17:13:02 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 17:13:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 17:13:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 17:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F5/0Dr4+xidjAzP+4qGnaPJeJtMJSYi3fF2+SSVVJdj+yM4dXWMsYNtI2n0hK+JMzGH3tT1d1+HHFlNlZQzMkaIOfxeqBrN/2i88K3NLnDmCW5Khn8H/DQ6b3/z5nIFwH0SD7NELzsS473bI4jgcWGqw3GxUjyClg3t/REXouGQbI/1YVT3SGrH/FnVzqIkJgyFfryhbJugzs2twZWB59yc3YOYM3n3jtDSkx0srfK/vdB2UN/4YoRW4kGM3KThpyJCHlI/KxPWsMUE5AG7175jl8dOuBWunTnqqzJFAuuHGevI56XjnItKneKeT8a4J6WpkYJIJPCyjXImbYMHiTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5hwSRtsLxUwrJF32vDaWSrkQIHF4+H5XGqcddUejYA=;
 b=LYVtI8xsjCFgHxbrMHgXE7X6afwmxQ5ofDs38fJM4ng3h6cMY2tFbNfnzYxmxEN+DyA7CHGlrIp2GPkwcKcf10jyvv1dGfLwSwCSEWB6kWqqTxWAdjdXzRbdSZRBcT+PKVxyBfdGKdhJOqU7tmjZFMCwvN38qhAxYu27IkN/vsEYK+27tZfH0d35EERHMxV50kTUnFZGLOrB8ooMmZ7kSKYjvnco2lrMPLYveGHjNoL1CvuITMLI8zxUTmjq1ZzY8hZSUnmNyxgBSxRTZlau6vkzlzWxYv7ykehSgD6IURfLlXlSY2KrGcqV/3U+N/0eScWX3STgoIEaHQfj+5B/hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5hwSRtsLxUwrJF32vDaWSrkQIHF4+H5XGqcddUejYA=;
 b=pIg65vksSRAyy6GIZbI3MPhzlH3x2YGau5aToO5pXkZRDY1Zss3nFmIq1t4NNCQeicFKD+3IojgtmXkWzMHpxPf0CrlDlITPdhfDoHYDDtmuufMRFmsnijHbP/6pIjl8Dcc4/paIHhX8HZ0qIq6wMUXPtrhd6RUXpSpauW8BZKw=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Sat, 30 Oct
 2021 00:13:00 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad%8]) with mapi id 15.20.4649.017; Sat, 30 Oct 2021
 00:13:00 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXys682005p2RGzUeyJUjiOxt3Bqvm76+AgAO/ZQA=
Date: Sat, 30 Oct 2021 00:13:00 +0000
Message-ID: <5b6385364fead76640629d10e133e48c5a87f0b8.camel@intel.com>
References: <54fada5eea99c1b5d7af300bcd6697711c3c5705.camel@intel.com>
 <87h7d2h60c.fsf@intel.com>
In-Reply-To: <87h7d2h60c.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eadc9fde-0728-4d37-2954-08d99b3a08be
x-ms-traffictypediagnostic: MW5PR11MB5883:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MW5PR11MB5883D84DDF0E4E2033C1C8C5C7889@MW5PR11MB5883.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: phP9W0yhnr0m1xbhm07FwRLhqu0NpdX7jtCH0t02zSSQ4DGPNQ2FGEfs1PmQhfJBun0wN/ON3cbVe1PodsQ+nKVgXvdU0A31Juo4SY96cjasj5oLtHKOi8SYnOuS7gb469Tr38id97cOT1DqsYTmLNKMVI00M63CtO+T5NxoUCa/p25UbY5I66BoTEWFe9/3l+YGmrXvdzerXJnBHl45243ZZ8tHzOll4nqNDZoE+FukpwWjRNILm2vtioBJenhgpjMlu5gNmzq43ZoxWUHq6m6Nl9ldUQqgwidg6B9sV2K8vuMg6tt733D1C7gdOfoZDZaGKlPYuT10tDd1j7loXxGkEzWvK6z+Q14kyPqZFNgO/vMqYQjovyhXjqZ8wMbJzZx+vnE3nV2IhhnHyHyQO/JruehY3NceVlfDo2UKKycH3AOsdvPZXPveHypI2BkpyrCHoyqX3GBeIdXS3xVFxrICx4/XfWRfpn+kTQmv3DRvi8hI61VwCY/a3o/h4ANXTuhkFn17TrRzpXieMpASvC4NLI6idigrpMg0gn6WjMkFgReYuBWZ34BjzT7k6l6R6hJgEP1Wtv90h890OomoH3X0OT0WAsdpEeQoj2jWrJCVhXoMqZyHemtcS1NuMMzB846U9chHsVh69rrzPHP6zrBT/bH4zfbP3G59y9tIM4grOJcMHLKXIotmHAUH3QO2yeXPox8GA2r9Xn2Q7MsMVWUxIQSTc7kGwPyCybZBOBmP4ICa+PAD/QTzjf/YaJSFHtNWbAHttvfrH6gB3xl7sOD9qkjEyq1zX5/QfRNw7ek=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(83380400001)(6486002)(2906002)(4326008)(6506007)(66946007)(186003)(316002)(6916009)(508600001)(966005)(6512007)(38070700005)(82960400001)(2616005)(54906003)(4001150100001)(66556008)(64756008)(8676002)(66476007)(71200400001)(66446008)(38100700002)(76116006)(36756003)(122000001)(86362001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGRhOGg1OXB6SE1PUE92NVpNZ0FlL29oRldxYXZZOVRoa0pVRkVlOEZlaEw2?=
 =?utf-8?B?LzNVWG5KWmY2RDZnTEJrc25ZaUFXTE9jdStHbzdtdVBxNmc1UVN2emxuV2Za?=
 =?utf-8?B?aHJleFFMaGxlOEN6bllNV2lQQVpnQUtna3EwUTczc0U1T2QwRVk5VmlIbGZ2?=
 =?utf-8?B?anRkOUMvL0g5YXVacnNoUTVtRDVpcm9vTDRZdTRxczJVTEdEQmQ3Z3MxZnpv?=
 =?utf-8?B?M1NIbk9vOXljNnlaS1NoUTQ0QllyVTEzakxTTkUzRFVoU0ZrL0RUbWllb1Nv?=
 =?utf-8?B?WmEwMm1JRENYdzFUQlliL2QwMUxiY2c0dWFHSVNQYzRsVDJza3dwZ1oycGtJ?=
 =?utf-8?B?MDN1cTdXczRRQ25HNDlIbWcyWXlmYkNxY1RjOERMZG0rZXJNUklYVFJjcEdK?=
 =?utf-8?B?aGNBbGUzWXVRTVh0blFCdEJVdzRzQjVjL21qUkVVa3B2MHU3WnlCcmx2dFFV?=
 =?utf-8?B?QXQveEZYMHVpVndSVGpNdmx2Kzk5WUVkc3lTNHA0ZnZDd21WUlJTcTR3WHhF?=
 =?utf-8?B?MVNlc3VMaEIzaXBPNEQ3N21jWXR1bDE2OFQ0bHNJVXBweU4zYWp4VEVBcFM5?=
 =?utf-8?B?RE8vanJUcXlGK1JuTFdOTGxkVzB3dmx5c3lmczFGaXJUVFp4V1R5M1E5YVpz?=
 =?utf-8?B?WGFnN1ZNQ3ZCaXRPRGhMVGo1ckJiR0Jpb1JBejZTVEhzY3crOFJuVHNPOE5w?=
 =?utf-8?B?L0hlbHNCVFE4c2lzWDNHWEhuTmFuRkJNWkxSb0JOUUVqc1V5dUxPMXYzM2tX?=
 =?utf-8?B?T2lxdkdhTmVTbmsrNE85SG84YmhaV2Q5WTNhcldrcS8xb0FCbFRIRTZMVkJt?=
 =?utf-8?B?K2RuNUd0OGZ6UGRWWHJiZm1GMUdSempRMXFZbXh0R2o4VkZMb1BDcTB6c21w?=
 =?utf-8?B?bTZycThzdVNuRnRUVXJVNU5STjJHNk91UUYxVlUxQnFUdnpLUm9tTHhIVmNr?=
 =?utf-8?B?ZHVBSHF2dDhRaVpSQ3VrcU85UVZZMkk1QjR4ZUtrU25ZSENSZUw2empma0Q1?=
 =?utf-8?B?RkY1OUdNOGxxOWt4NDdSelZSVGUzUlJMYVA3OW4wenJJa0hmOVhKNGY5czJI?=
 =?utf-8?B?Nkg3eXYrZ09zWXAyWnhBM1F2WHF4dzdka0IyZnBCakJnVHB4WGNmWVdGRTRu?=
 =?utf-8?B?Q09SUittN0cvNEMxZ20zbnhqYXhKVWRLTlZrTFZaVlJHQmRGMno5QVU3Nm51?=
 =?utf-8?B?bjRnSVdNZG1yVXgzTDREQ0ZLaFhJc3R3UzZLL2xGc0dJWkxGVzlYU3UyOUZp?=
 =?utf-8?B?YXdOa0ptaDgwTmFUbTV0RUdHQUp2WloxUlBsd0xsYnI0WVQwWUlMeWpVQmZD?=
 =?utf-8?B?QjBYWnJWVG93Q2tDb0hVZy8rRkE3eUdDdFNuSzVwZUNZQ3lSeXhoa1VrTTBa?=
 =?utf-8?B?b3pOV1RidThwMmlKT0dBcW4wR0xYNzNGV0pPclgzTy84YkllbVU3TENkb3ZF?=
 =?utf-8?B?MmFHZzJQUSs0TEdLdFJOUEpNRW9Uam1VcmZmQUFZaGhmb3M2UElQb1JyMzRl?=
 =?utf-8?B?VXI0NnZNN04vQ0NFZVBZcDU5T2RaRUhIOTJFVFp2VGNOVXd2T21aZEN4anEw?=
 =?utf-8?B?bTY1RFlSQWRZSDMya080Y2gzWStzbmt1MXhLRVpndTByWGViQVNwVmpIUm0x?=
 =?utf-8?B?YWRSRzBhbFFPUmM4MkhZOS9sM2p5QUh0Y2lkMmxBRVNhU3B1dnRNSmorNEhq?=
 =?utf-8?B?RksyQSttWHJjZjB2TzJDRUJaTnBvNE9lc05aWk9uVElFNkdleThOQ0k0RlNG?=
 =?utf-8?B?Y3lLZU93QjFZeTh4bjhCSG9sNDk1TzBpcCt5R014MStiUXFXMXdsZ0QvWDBD?=
 =?utf-8?B?MEZtVnR5Y3ZPZGJUSWJYWVV4VW9YZ2I0djF5R3hsSmc1T05rdXRiN0gvOUw4?=
 =?utf-8?B?em9aRDVrTmgwVlNYc2lKRzY0L0JSdUtOd0hDM04xQXdxZkduc1czOUVJSVlj?=
 =?utf-8?B?Zk9oc3l2bVFSbDhmd2VuaFRKNlpwUFlxSXRBWWJIbGxPelpxNk5lSkxUb1BK?=
 =?utf-8?B?RzlWYUxqTW91S3htSjVpcDhMOFhUR0lqdmN6Y0dSSWJPU0laNXkwYjJScEFW?=
 =?utf-8?B?RVhOOWJ1ZHNqcDYzVDFKNTBnSzdySXdxYjIyM1Z6VVA2dkRwRDZPSGdqWWox?=
 =?utf-8?B?a003S0RhWEw3U2l4SWNBZlgwc1hSVmJFdW14eTZSUkFkeVVBdFRReU5WbWVZ?=
 =?utf-8?B?dUsyTjk3UXhIVk9WeHFTNHl0MTIrWDBndXF0OCtwaVNFempqa1dnSTF2b3Vw?=
 =?utf-8?B?bU44YlhkV3M4UHpZdWxKR3hEY0dvaTJtb2NqZlM1T0RVcjZwWTJEQmxjSGVt?=
 =?utf-8?B?TnpBQW5zOW5YUlloMkN5WlQ0eWF4V1BaRzh5OUZOVkpjcytYeUtnZ3p5cFJ3?=
 =?utf-8?Q?36Wcw/9x6RD694DZvfjJWvZVRKVz1o+5C8EDjfePor60v?=
x-ms-exchange-antispam-messagedata-1: 3Xbjmvir8f3lst41YEcuzONzupuD49HHWYM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <469B140AE54E2E4F9BA80CD3C4BD3D2A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eadc9fde-0728-4d37-2954-08d99b3a08be
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2021 00:13:00.5260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U/22UxVL6023+tssEur+2y9St7f2hMO6nA51Gf5vH22jgku6PoHunz1x4C4QxMR4eJZQvJVBsgLnT2FLnSr9vffYG6X87p1gPuK/nu3VQc4yf/j2npHs6h16i/Op0xDbyPmkr374ASoa9bmJcLxxsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

T24gV2VkLCAyMDIxLTEwLTI3IGF0IDE3OjU1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAyNyBPY3QgMjAyMSwgIlRvbGFrYW5haGFsbGkgUHJhZGVlcCwgTWFkaHVtaXRoYSIJ
PA0KPiBtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+IHdyb3RlOg0K
PiA+IE9uIE1vbiwgMjAyMS0wNy0wNSBhdCAxMzoyOCArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6
DQo+ID4gPiBPbiBUdWUsIDI5IEp1biAyMDIxLCAiU291emEsIEpvc2UiIDxqb3NlLnNvdXphIGF0
IGludGVsLmNvbT4NCj4gPiA+IHdyb3RlOg0KPiA+ID4gPiBPbiBNb24sIDIwMjEtMDYtMjggYXQg
MTY6NTAgLTA3MDAsIE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaQ0KPiA+ID4gPiBQcmFkZWVwDQo+
ID4gPiA+IHdyb3RlOg0KPiA+ID4gPiA+IFBDSCBkaXNwbGF5IEhQRCBJUlEgaXMgbm90IGRldGVj
dGVkIHdpdGggZGVmYXVsdCBmaWx0ZXINCj4gPiA+ID4gPiB2YWx1ZS4NCj4gPiA+ID4gPiBTbywg
UFBfQ09OVFJPTCBpcyBtYW51YWxseSByZXByb2dyYW1tZWQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgPA0KPiA+
ID4gPiA+IG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwIGF0IGludGVsLmNvbT4NCj4g
PiA+ID4gPiAtLS0NCj4gPiA+ID4gPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYyAgIHwgIDgNCj4gPiA+ID4gPiArKysrKysrKw0KPiA+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyAgICAgfCAxNg0KPiA+ID4g
PiA+ICsrKysrKysrKysrKysrKysNCj4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNl
cnRpb25zKCspDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+ID4gPiA+ID4gaW5kZXggMjg1MzgwMDc5YWFiLi5lNDQzMjNjYzc2ZjUgMTAwNjQ0DQo+ID4g
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiA+ID4gPiA+IEBAIC02Mzg1LDggKzYzODUsMTYgQEAgc3RhdGlj
IHZvaWQNCj4gPiA+ID4gPiBpbnRlbF9wb3dlcl9kb21haW5zX3ZlcmlmeV9zdGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ICppOTE1KQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ICB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfc3VzcGVuZF9sYXRlKHN0cnVjdA0KPiA+ID4gPiA+
IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gPiAqaTkxNSkNCj4gPiA+ID4gPiAgew0KPiA+ID4g
PiA+ICsgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gaTkxNTsNCj4gPiA+
ID4gPiArICAgIHUzMiB2YWw7DQo+ID4gPiA+ID4gICBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MTEgfHwgSVNfR0VNSU5JTEFLRShpOTE1KSB8fA0KPiA+ID4gPiA+ICAgICAgIElTX0JST1hUT04o
aTkxNSkpIHsNCj4gPiA+ID4gPiArICAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgUFBfQ09OVFJPTCgwKSk7DQo+ID4gPiA+ID4gKyAgICAgICAgIC8qIFdhXzE0MDEzMTIwNTY5
OnRnbCAqLw0KPiA+ID4gPiA+ICsgICAgICAgICBpZiAoSVNfVElHRVJMQUtFKGk5MTUpKSB7DQo+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgdmFsICY9IH5QQU5FTF9QT1dFUl9PTjsNCj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUFBfQ09OVFJP
TCgwKSwNCj4gPiA+ID4gPiB2YWwpOw0KPiA+ID4gPiA+ICsgfQ0KPiA+ID4gPiANCj4gPiA+ID4g
Q29kZSBzdHlsZSBpcyBhbGwgd3JvbmcsIHBsZWFzZSBmaXggaXQgYW5kIHJ1biAiZGltIGNoZWNr
cGF0Y2giDQo+ID4gPiA+IHRvDQo+ID4gPiA+IHZhbGlkYXRlIGl0IGJlZm9yZSBzZW5kaW5nIHBh
dGNoZXMuDQo+ID4gPiA+IEFsc28gUFBfQ09OVFJPTCgwKSBkb24ndCBwb2ludCB0byB0aGUgc2Ft
ZSByZWdpc3RlciB0aGF0IHRoZQ0KPiA+ID4gPiB3b3JrYXJvdW5kIGlzIHRhbGtpbmcgYWJvdXQs
IGJldHdlZW4gZ2VuZXJhdGlvbnMgcmVnaXN0ZXINCj4gPiA+ID4gYWRkcmVzcw0KPiA+ID4gPiBj
aGFuZ2UgdGhhdCBtaWdodCBiZQ0KPiA+ID4gPiB0aGUgY2FzZSBmb3IgdGhpcyBvbmUuDQo+ID4g
PiANCj4gPiA+IEluIGdlbmVyYWwsIEkndmUgcHV0IGEgYnVuY2ggb2YgZWZmb3J0IGludG8gbW92
aW5nIG1vc3QgUFBTIHN0dWZmDQo+ID4gPiBhbmQNCj4gPiA+IFBQX0NPTlRST0wgcmVnIGFjY2Vz
cyBpbnRvIGludGVsX3Bwcy5jLCBub3QgbGVhc3QgYmVjYXVzZSB5b3UNCj4gPiA+IG11c3QNCj4g
PiA+IGhvbGQNCj4gPiA+IGFwcHJvcHJpYXRlIGxvY2tzIGFuZCBwb3dlciBkb21haW4gcmVmZXJl
bmNlcyB0byBwb2tlIGF0IHRoaXMuDQo+ID4gPiBZb3UNCj4gPiA+IGNhbid0DQo+ID4gPiBqdXN0
IG1lc3Mgd2l0aCBpdCBuaWxseSB3aWxseS4gSSBkb24ndCB3YW50IHRoZXNlIGFic3RyYWN0aW9u
cw0KPiA+ID4gYnlwYXNzZWQuDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4gPiAN
Cj4gPiBJIHNlZSB0aGF0IGludGVsX3Bwc19nZXRfcmVnaXN0ZXJzKCksICBwb3B1bGF0ZXMgdGhl
IHJlZ3MtDQo+ID4gPiBwcF9jdHJsICBjb3JyZWN0bHkuIFRoYXQgaXMgd2hhdCBJIHdvdWxkIHdh
bnQgdG8gYWNjZXNzIGFuZCBzZXQNCj4gPiA+IHRoZQ0KPiA+IGJpdHMgZm9yIHRoaXMgVy9BLiBI
b3dldmVyIGFzIGlzIEkgY2Fubm90IGNhbGwgcHBzX2dldF9yZWdpc3RlcnMoKQ0KPiA+IGluDQo+
ID4gaW50ZWxfZHAgb3IgaW50ZWxfZGlzcGxheS5jIGZvciB0aGUgZXh0ZXJuYWwgY29ubmVjdG9y
ICBhdA0KPiA+IGNvbm5lY3QvZGlzY29ubmVjdCB0aW1lLiBEbyB5b3UgcmVjb21tZW5kIG1ha2lu
ZyB0aGlzIGZ1bmN0aW9uIG5vbg0KPiA+IHN0YXRpYyBhbmQgY2FsbGluZyBpdCBmb3IgdGhpcyBX
L0Egb3IgaXMgdGhlcmUgYSB3YXkgSSBjYW4gYWNjZXNzDQo+ID4gdGhlDQo+ID4gcG9wdWxhdGVk
IGk5MTVfcmVnX3QgcHBfY3RybCAgdG8gc2V0IHRoZSBXL0E/DQo+ID4gDQo+ID4gT3IgYXJlIHlv
dSB3YW50aW5nIHRvICBkZWZpbmUgYW5vdGhlciBoZWxwZXIgZm9yIGVuYWJsZS9kaXNhYmxlIG9m
DQo+ID4gdGhpcw0KPiA+IFcvQSBpbiBpbnRlbF9wcHMuYyB0aGF0IHdvdWxkIHRoZW4gY2FsbCBw
cHNfaW5pdF9yZWdpc3RlcnMgb3INCj4gPiBzaW1pbGFyDQo+ID4gZnVuY3Rpb24gPw0KPiANCj4g
QmFzaWNhbGx5IGRvbid0IGFjY2VzcyBhbnkgb2YgdGhlIFBQUyByZWdpc3RlcnMgb3V0c2lkZSBv
Zg0KPiBpbnRlbF9wcHMuYy4gQW55IGFjY2VzcyBsaWtlIHRoYXQgaXMgcHJvYmFibHkgZ29pbmcg
dG8gZ2V0IHRoZQ0KPiBsb2NraW5nDQo+IGFuZCB0aW1lb3V0IHJ1bGVzIHdyb25nLCBhcyB3ZWxs
IGFzIG1ha2UgdGhlIHNvZnR3YXJlIGFuZCBoYXJkd2FyZQ0KPiBzdGF0ZXMgZ28gb3V0IG9mIHN5
bmMuIFRoaW5ncyBsaWtlIHRoZXNlIG5lZWQgdG8gYmUgYWJzdHJhY3RlZA0KPiBiZXR0ZXIuIEJv
dHRvbSBsaW5lLCB5b3UgY2FuJ3QganVzdCBnbyBwb2tlIGF0IHRoZSByZWdpc3RlcnMgaW4NCj4g
cmFuZG9tDQo+IHBsYWNlcywgbm8gbWF0dGVyIHdoYXQgdGhlIFcvQSBzYXlzLCBhbmQgZXhwZWN0
IGl0IHRvIHdvcmsgb3V0IGZpbmUuDQo+IA0KPiBUaGUgY29tbWl0IG1lc3NhZ2UgYWxzbyBkb2Vz
bid0IHByb3Blcmx5IGV4cGxhaW4gd2hhdCBpcyBnb2luZyBvbiwNCj4gYW5kDQo+ICp3aHkqIHRo
aXMgY2hhbmdlIGlzIG5lZWRlZC4gRXNwZWNpYWxseSB3aGVuIHlvdSdyZSBhZGRpbmcgc3BlY2lh
bA0KPiBjYXNlcywgeW91IG5lZWQgdG8gdGFrZSBleHRyYSBjYXJlIHRvIGV4cGxhaW4gdGhlIHJh
dGlvbmFsZS4gUGVvcGxlDQo+IGFyZQ0KPiBnb2luZyB0byBsb29rIGF0IGdpdCBsb2cgYW5kIGdp
dCBibGFtZSBsaXRlcmFsbHkgeWVhcnMgZnJvbSBub3csIGFuZA0KPiB3b25kZXIgd2hhdCB0aGlz
IGlzIGFib3V0Lg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCg0KV2FfMTQwMTMxMjA1Njkg
cmVxdWlyZXMgUFBfQ09OVFJPTCBiaXQgIzAgdG8gYmUgc2V0IHRvIDEgd2hlbiBleHRlcm5hbCAN
CmRpc3BsYXkgaXMgcGx1Z2dlZCBvciByZXN1bWUgYWZ0ZXIgc2xlZXAuIEJpdCAjMCBpcyB0byBi
ZSBjbGVhcmVkIHdoZW4NCmV4dGVybmFsIGRpc3BsYXkgaXMgdW5wbHVnZ2VkIG9yIGJlZm9yZSBn
b2luZyB0byBzbGVlcC4gVy9BIGlzbnQNCmVuYWJsZWQgd2hlbiBlRFAgaXMgY29ubmVjdGVkLiAN
Cg0KSSBzaGFsbCBhZGQgdGhlc2UgZGV0YWlscyBpbiB2MiwgdGhhbmsgeW91IGZvciBwb2ludGlu
ZyB0aGF0IG91dC4NCg0KQXMgdGhpcyBXL0EgaXMgcmVxdWlyZWQgaW4gYSBub24tZURQIHNjZW5h
cmlvLCBJIHdvdWxkbid0IGJlIGFibGUgdG8NCnVzZSBhYnN0cmFjdGlvbnMgbGlrZSBpbnRlbF9w
cHNfb24gYW5kIGludGVsX3Bwc19vZmYuDQoNClNvIHdvdWxkIEkgbmVlZCB0byBjcmVhdGUgbmV3
IHdyYXBwZXIgZnVuY3Rpb25zIGluIGludGVsX3Bwcy5jIGZvcg0Kc2V0dGluZyBhbmQgY2xlYXJp
bmcgdGhlIGJpdHMgaW4gUFBfQ09OVFJPTCB3aXRoIHByb3BlciBsb2NrcyBoZWxkLA0KYW5kIGNh
bGwgdGhlc2Ugd3JhcHBlciBmdW5jdGlvbnMgaW4gaW50ZWxfZGlzcGxheS5jL2ludGVsX2RwLmM/
IA0KDQo+IFBTLiBQbGVhc2UgdHJ5IHRvIGVuc3VyZSB5b3VyIG1haWwgY2xpZW50IGhhbmRsZXMg
dGhyZWFkIHJlcGxpZXMNCj4gcHJvcGVybHkuIFRoaXMgc2hvdWxkIGhhdmUgYmVlbiBpbiByZXBs
eSB0bzoNCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvNTRmYWRhNWVlYTk5YzFiNWQ3
YWYzMDBiY2Q2Njk3NzExYzNjNTcwNS5jYW1lbEBpbnRlbC5jb20NCj4gDQoNClNvcnJ5IGFib3V0
IHRoYXQsIGZpeGVkIGl0Lg0KDQotIE1hZGh1bWl0aGENCg0KPiANCj4gPiAtIE1hZGh1bWl0aGEN
Cj4gPiANCj4gPiA+ID4gVGhpcyBzYXRpc2Z5IHRoZSAiYmVmb3JlIGdvaW5nIGludG8gc2xlZXAg
dG8gYWxsb3cgQ1MgZW50cnkiDQo+ID4gPiA+IGJ1dCBpdA0KPiA+ID4gPiBkbyBub3QgcmVzdG9y
ZSB0aGUgd29ya2Fyb3VuZCBhZnRlciB3YWtpbmcgdXAgZnJvbSBzdXNwZW5kLg0KPiA+ID4gPiBB
bHNvIHlvdSBjb3VsZCBpbXByb3ZlIHRoZSBjb2RlLCB5b3UgYXJlIHJlYWRpbmcgdGhlIHJlZ2lz
dGVyDQo+ID4gPiA+IGV2ZW4NCj4gPiA+ID4gZm9yIHBsYXRmb3JtcyB0aGF0IGRvbid0IG5lZWQg
dGhlIHdhLCBhbHNvIGNoZWNrIGludGVsX2RlX3JtdygpDQo+ID4gPiA+IGl0DQo+ID4gPiA+IGlz
IGJldHRlciBzdWl0ZWQNCj4gPiA+ID4gdG8gdGhpcyBjYXNlLg0KPiA+ID4gPiANCj4gPiA+ID4g
PiAgICAgICAgICAgYnh0X2VuYWJsZV9kYzkoaTkxNSk7DQo+ID4gPiA+ID4gICAgICAgICAgIC8q
IFR3ZWFrZWQgV2FfMTQwMTA2ODUzMzI6aWNwLGpzcCxtY2MgKi8NCj4gPiA+ID4gPiAgICAgICAg
ICAgaWYgKElOVEVMX1BDSF9UWVBFKGk5MTUpID49IFBDSF9JQ1AgJiYNCj4gPiA+ID4gPiBJTlRF
TF9QQ0hfVFlQRShpOTE1KSA8PSBQQ0hfTUNDKQ0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiA+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMNCj4gPiA+ID4gPiBpbmRl
eCA0N2M4NWFjOTdjODcuLjhlM2Y4NDEwMGRhZiAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiA+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ID4gPiA+ID4g
QEAgLTI2LDYgKzI2LDcgQEANCj4gPiA+ID4gPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4g
PiA+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gPiA+ID4gICNpbmNs
dWRlICJpbnRlbF9ob3RwbHVnLmgiDQo+ID4gPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9kZS5oIg0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ICAvKioNCj4gPiA+ID4gPiAgICogRE9DOiBIb3RwbHVnDQo+
ID4gPiA+ID4gQEAgLTI2Niw3ICsyNjcsOSBAQCBpbnRlbF9lbmNvZGVyX2hvdHBsdWcoc3RydWN0
DQo+ID4gPiA+ID4gaW50ZWxfZW5jb2Rlcg0KPiA+ID4gPiA+ICplbmNvZGVyLA0KPiA+ID4gPiA+
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ID4g
PiA+ID4gIHsNCj4gPiA+ID4gPiAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0b3It
PmJhc2UuZGV2Ow0KPiA+ID4gPiA+ICsgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkZXYpOw0KPiA+ID4gPiA+ICAgZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cyBv
bGRfc3RhdHVzOw0KPiA+ID4gPiA+ICsgdTMyIHZhbDsNCj4gPiA+ID4gPiAgIHU2NCBvbGRfZXBv
Y2hfY291bnRlcjsNCj4gPiA+ID4gPiAgIGJvb2wgcmV0ID0gZmFsc2U7DQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gQEAgLTI4OCw2ICsyOTEsMTkgQEAgaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVj
dA0KPiA+ID4gPiA+IGludGVsX2VuY29kZXINCj4gPiA+ID4gPiAqZW5jb2RlciwNCj4gPiA+ID4g
PiAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fZ2V0X2Nvbm5lY3Rvcl9zdGF0dXNfbmFtZShj
b25uZWN0DQo+ID4gPiA+ID4gb3ItDQo+ID4gPiA+ID4gPiBiYXNlLnN0YXR1cyksDQo+ID4gPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgb2xkX2Vwb2NoX2NvdW50ZXIsDQo+ID4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgY29ubmVjdG9yLT5iYXNlLmVwb2NoX2NvdW50ZXIpOw0K
PiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArICAgICAgICAgLyogV2FfMTQwMTMxMjA1Njk6dGdsICov
DQo+ID4gPiA+ID4gKyAgICAgICAgIGlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKSB7DQo+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwNCj4g
PiA+ID4gPiBQUF9DT05UUk9MKDApKTsNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICBpZiAo
Y29ubmVjdG9yLT5iYXNlLnN0YXR1cyA9PQ0KPiA+ID4gPiA+IGNvbm5lY3Rvcl9zdGF0dXNfY29u
bmVjdGVkKSB7DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICB2YWwgfD0gUEFO
RUxfUE9XRVJfT047DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9k
ZV93cml0ZShkZXZfcHJpdiwNCj4gPiA+ID4gPiBQUF9DT05UUk9MKDApLA0KPiA+ID4gPiA+IHZh
bCk7DQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgfQ0KPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgIGVsc2UgaWYgKGNvbm5lY3Rvci0+YmFzZS5zdGF0dXMgPT0NCj4gPiA+ID4gPiBjb25u
ZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZCkgew0KPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgdmFsICY9IH5QQU5FTF9QT1dFUl9PTjsNCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgIGludGVsX2RlX3dyaXRlKGRldl9wcml2LA0KPiA+ID4gPiA+IFBQX0NPTlRS
T0woMCksDQo+ID4gPiA+ID4gdmFsKTsNCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICB9DQo+
ID4gPiA+ID4gKyAgICAgICAgIH0NCj4gPiA+ID4gDQo+ID4gPiA+IE5vdCBzdXJlIGlmIHRoaXMg
aXMgdGhlIGJlc3QgcGxhY2UgYnV0IGFueXdheXMgaXQgaXMgbWlzc2luZw0KPiA+ID4gPiBoYW5k
bGUNCj4gPiA+ID4gdGhlIGNhc2Ugd2VyZSB0aWdlcmxha2UgYm9vdHMgd2l0aCB0aGUgZXh0ZXJu
YWwgZGlzcGxheQ0KPiA+ID4gPiBjb25uZWN0ZWQuDQo+ID4gPiA+IE5vIGhvdHBsdWcgd2lsbCBo
YXBwZW4gYW5kIHdvcmthcm91bmQgd2lsbCBuZXZlciBiZSBlbmFibGVkLg0KPiA+ID4gPiANCj4g
PiA+ID4gPiAgICAgICAgICAgcmV0dXJuIElOVEVMX0hPVFBMVUdfQ0hBTkdFRDsNCj4gPiA+ID4g
PiAgIH0NCj4gPiA+ID4gPiAgIHJldHVybiBJTlRFTF9IT1RQTFVHX1VOQ0hBTkdFRDsNCj4gPiA+
ID4gDQo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiA+ID4gSW50ZWwtZ2Z4IGF0
IGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
