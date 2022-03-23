Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B54E5A81
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 22:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155B210E12E;
	Wed, 23 Mar 2022 21:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B419710E12E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 21:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648070165; x=1679606165;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m4t8SJoqobiOVBg26q/P9J3xyUMOECvSEpPh+PqeHvw=;
 b=Hd/UzOXSgae8ucfdXfYL8t5DZI/usYmTt0gkClw2lBBagnQBWmqmPCZR
 XmXcVCbr/i2fmA3qkF/4XzWB1C3hAiQWG6KG9C4mxdxLYYx8wOhz5jHFg
 tVbDd7bxDmGkLCnFT3Np/AGZ1So/lIMDZjfHij05Gg+qPte2kcNnJMBOv
 Km5AiTJiHArdxjUie1uPh/PaMY2X4B1cNVJb9CuqOy+sR3Jcra0HT/342
 Y8d0wyn9n+irmTIhpCkH2Ws8iIcFFIM71sRuXY0xlv8yPzcoWrFwuRRy6
 ihM9nNakTJFjMBxQS0BaPvOIHBNuu1Ze0iy2goT4gEs8z0wKtt6VKxvAG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="245700767"
X-IronPort-AV: E=Sophos;i="5.90,205,1643702400"; d="scan'208";a="245700767"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 14:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,205,1643702400"; d="scan'208";a="647629229"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Mar 2022 14:16:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 14:16:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Mar 2022 14:16:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 14:16:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 14:16:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ct1F6Qw2bFDIoszQGFph+J0Z/UVKphDVsaExnnZ+4FVIFPa06E1exfnUzhKm2KwSqFpLpyhheJUhDVurkcRT/UZnK0mKrqmh7boSkQqbKo8c2ml5P+TSJRBMwLN7UAbQJZTlrjYbJHQKKkmQL+2UvRzjShggMlgnlvo3L/Enej+F2gIUR+uX17u6MCcPn4umhe05Uki21KyiMq8jiXDWdM5a5kiJ55Mk/BPY+6YpyvbnqZO07ouXa5sTyym1WTEq1qXTSwkaul8+XJdSHTXW0OgPRUxRW5DOHiw7Sps0igmnQRvAznP5QnVbot5VFQbJ/06lHfYMFaVd0b/MWcSSHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4t8SJoqobiOVBg26q/P9J3xyUMOECvSEpPh+PqeHvw=;
 b=nWfHfGTMtyEk5MmdRs3+8JEvxbsOh1jZIXNAAU6IpV5VN8MT0nBn6w1QLhNXMTK+dbegeU1fuSSE6z275cUaiU3R2r5gSIpjoAwEWcDT/9sw6mDYDvy4rbcCFW/5u2alIA+jZerOuCqMXyEuSVKrc54QfSsaGmUw3g2MbUQdrap46uCsTQ2n4ZhahUDwLjFKid3SKfSZ2M9YUuoCa+UWOLPBHPTKRS2bOQ2+94NZngzhdGENzbVkuy89XUf4grf941m6lkb21lZK0HOdgZSiVs0P3iH89nh9H3hGwbma7ELeVnoBJrCegqqYzcKAMTmtJTs1L4mW+AgiBmkGuCwEaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by BY5PR11MB4024.namprd11.prod.outlook.com (2603:10b6:a03:192::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Wed, 23 Mar
 2022 21:16:00 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4%3]) with mapi id 15.20.5102.016; Wed, 23 Mar 2022
 21:16:00 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/dg2: DC states for DG2
Thread-Index: AQHYPujZAtLS5rqQskKdO5rwFh7FaazNeJEA
Date: Wed, 23 Mar 2022 21:16:00 +0000
Message-ID: <f89b3bdccb1c8f96d93316df40b6d6250c191dba.camel@intel.com>
References: <20220323190124.2343794-1-anusha.srivatsa@intel.com>
 <20220323190124.2343794-2-anusha.srivatsa@intel.com>
In-Reply-To: <20220323190124.2343794-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64bb22e6-e319-464d-2dc0-08da0d1254a9
x-ms-traffictypediagnostic: BY5PR11MB4024:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB40240C1BFD6ADC7356FBF8CAC7189@BY5PR11MB4024.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rUS/wKi20uGkuzK6ihXe4jyAPLwG0v3c2DiofN1oINP1TmKUGHkq3OK6E09iyJAnPjDK2S/S5JRe1XbOi425l1ZWLvN1ORium4laXfy/2KsuRFFOeoljXzLCyz5LCAY6S1qO04qwhaSH6EYFrymb2KyTyDlMv8q8aSSoeyxnnk6OqH5vOZ9l95YjJhSNbQWQMw0rI0PXcpiNrfTa9IgADt4hSUmhMzR2FXwzxrBBY7ZCJQc4Ajfqqcpahmebpm332anW46JMqAz8JtTBw/oDMjyCuETF4Kwivyu0WPCBVVYq0gOi/lRfJ1uhKVtU1hSPlDKvfoefcJJzdApRhpPXeuHKceChIIfgt5j1wSuEqUm4RgfpK3juCsw8DjQjCVJksVloRDAaJSX+Kim2mwha8FtEeT2beetxk/SdqizYI834SEbK4nC0FR8Oifa8Mv5b0wvVjOsR5Gy2fAuWGvebzs8BYXqITIwL2KmnzQKADw+ceuYCZ7K9ExDCJFOCQPsJfHzeT0rCqOvgdoJhOqaOOLtXhSrnFyeC8AT/+sKUIDYrz5lytHw7A7yqS4fUzTa82YpUUDp6stZVOi9+x8E+WWhQZdIjjaRiUTw9okuo2FxqsQYCXvZAxoIZD3DwXB9HdbWMEVlsEmSUEXLa1VSQaTr1CPk7cUxM4GbPz6fvE5ZPKNngGh6jIXGiTLKvGq29RH9ehK5nZCuin0N9Ds9ufw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(316002)(6512007)(6486002)(38100700002)(110136005)(86362001)(4744005)(186003)(6506007)(36756003)(5660300002)(8936002)(38070700005)(122000001)(66946007)(76116006)(8676002)(66476007)(66446008)(64756008)(508600001)(66556008)(83380400001)(71200400001)(82960400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFVwa0JkNTVGTEtzUUtTWVorZHpOOXV2ZzgzWEJML280YjJUZUJWOThBWnVz?=
 =?utf-8?B?Q3pTTjFtbVh4RHJrRWRJS1NZd3ZRbnhQbUY1OXNCb013OWZJNktORXhUcmJq?=
 =?utf-8?B?eVFVZVpNMGl1NzVqUlZFdnVaeWZ4aEQ5TVQzbmxwNlEyVnNFY2I5RWNkK2lP?=
 =?utf-8?B?R3lUSE5xRENSdkhmQnc3RTBoTWU2aDYrbEV2U01qdXRwUzIvQ1dXZlVWUURU?=
 =?utf-8?B?a0g1aElQclR6ZGY4cEEya1d0aUZuTkwwWjRPbnVXMXJnaWs5SmRWdU9yc0tq?=
 =?utf-8?B?UnBMRmV1cTBzdlN5V2VINCt1M2xOeVVrVnRUSENyZXFpcnVYcTdmN0FlZmYx?=
 =?utf-8?B?dCtqU29UVVlFYkRod0h3cVpTaWwzMGVaYk9SNm94TWd1MnFPSDRqY2NmL3B5?=
 =?utf-8?B?MlViMEtYbHBFVTVhS3Yxei9yVWo3YWplbG90c0VNL3VESC85WlpOaVlud1hV?=
 =?utf-8?B?aFZ1UXVWMW1xWWxpTzJiMUEzWk5rZitJS1lCMzQ0UVl3enIyc1JyU3gwbWpK?=
 =?utf-8?B?Y2dMak9QaFlncnd0dlFhKzdwT1RPcjNSbFRpdUY4MWJURFlrbmNnajJ2Yzg4?=
 =?utf-8?B?YjRyNm4vSGZMTjdlNWtLUTNhcUhGODI4NEZlRWI5aE9VNU9MMDZwaE4wd2E4?=
 =?utf-8?B?RHZPQk9HUjdRWWdqSUdKRWsrQys3N1A0MlVkZ0hDa3dVaCtVUWEyVFQzcGVV?=
 =?utf-8?B?NEx0ZnJKR1hHRVBLMHU0WEd3RXd5N015eXBzVFZZYlRTc0lJNGUyZk56NFhR?=
 =?utf-8?B?ZjZNOVFEeTZ6am5pbk8xVGxQWTZJcGtnS3ByZHJyNEQ3VVFoZEVvSGRzZ2Ni?=
 =?utf-8?B?OHNvbDlWTXUwVnhuZTJPKy9SVHlYR3U2WDE0Z1pyUmVvQnFHSmxSZm01ZU5u?=
 =?utf-8?B?Yy82S1ZEYlRja2hwV2tkd1VrRVpJemlYTkljRW1tK0R1MGxsSmJDTXNXVVR2?=
 =?utf-8?B?Ky80ZnJsN2ZLSmNkM0ZndGIwTXluVDVTdHJNYk5FdDhjcmlFUDZkY0tCTDFP?=
 =?utf-8?B?eCtMVEo0cE82R3ZPWFZPZmlKQmcwUXl5eG1GVmJFL2RuZk5YQWxUTXFMb1Rh?=
 =?utf-8?B?VEs4aURVWkVnaTVpWnpOSUh5K2xtZEJVR0MydGZpU2tNVHFsN2crZFNiQ0RR?=
 =?utf-8?B?K0k1VGQ0c1ZTbU9jSnl4Z0VPd2QwSGtjS3pBMFErM2tKRXdUY2djdGxRaGpX?=
 =?utf-8?B?Q29rZmRBelJBUEc5bjhBb0w1N2NidzdYSTZCNnhqeE1Ta1oxT09ha2VwK3pk?=
 =?utf-8?B?UTBWZXBUeFVQUVYyaE5iYVRtTGpUem9rZjRmTGI4MjJnaTdrOE9pRUNuSEZm?=
 =?utf-8?B?WFI4MCtIQlFJZU5WUC9rbTRjL1ZhMi9rSFFodnFkbWl6YTFINGVybG1hcnJW?=
 =?utf-8?B?bUZ4SHhjeUZjTGdUdFFYblEvNkxCQWlCMHNHU050L09HM1NqNVFqdmcvN0No?=
 =?utf-8?B?Y2gxckdCR3NnYXhTZTFpOWFMZkV6OXlMTVVtZDhyQnJxM3VSOW9BUERDN08r?=
 =?utf-8?B?VlZ2M3VFYmtsQ3RVTjhNTmFmSW5haXVINU1kcUora2w3S1MvQStTT0NSTTFS?=
 =?utf-8?B?cWVlQStVMjhhUVFwUmRDKzZ0ZkNNNldmNm5HZWRicUZsaUo3Y1NPK2QreFBY?=
 =?utf-8?B?YWtudE1VUGNsOE1VVmx1dk41UXYxU3BncytwUWp3Q2dRaU8xRE1wcWtjK1Mv?=
 =?utf-8?B?anVrMlFqUHNoUDZTOUhzQU1JdEh3U05aenBUUytza280YjdGTnRJczFGRDZk?=
 =?utf-8?B?MmgvZk03dDBWZnd1ZWR2QzREaUkvNUJ5ZkExZ2VSRmg4UGtKSFNPMDhmc2pk?=
 =?utf-8?B?TmdVMS9RWUdPaHh6a2J6dlpHWlpqaXBncStZSWVadjV2SGVsSXMrcG1Ddmw1?=
 =?utf-8?B?OGZZbW0xTUZrVWFxKy9iMFB3bDRDUnpPU2VaWmRlWEp3NXVCM2JJaGJ1cWVQ?=
 =?utf-8?B?VC9YaEpIc2NSYlo0dVBrZGJzKzl2YlVsUU9Oa1R6WEN6WVIrZXVwdXlSaDU3?=
 =?utf-8?B?VWdzQWVVMkpaOXRudWUxMzAyVDB4VTE3NUI1Yi9IamNjamJSd3lrSHpNSGtp?=
 =?utf-8?B?NWwveVNiT0lBK3pnemtESUtzTDI4a0pHUSt0cUNoQjIrZ0crVVB1RlVDanBT?=
 =?utf-8?Q?CBAQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <859542DFB0005144BE812E3972A1FC57@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64bb22e6-e319-464d-2dc0-08da0d1254a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 21:16:00.6511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PnX5OpwOfme2gZbx8jP2WH11Q3lb37l80I7jP512kUfZlRjg9a64+tgHoWZfc+WJelcA57mPGS75Vd7T+MdpZuKq6Zz+Bj+6b+q2zSo319R4JTaVT/qdn8J/6vxxo0xQEgnWFMD2jlggTzQ6ygfu5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4024
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: DC states for DG2
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

T24gV2VkLCAyMDIyLTAzLTIzIGF0IDEyOjAxIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IERHMiBoYXMgc2FtZSBEQyBzdGF0ZXMgYXMgREcxIC0gdXB0byBEQzUuDQo+IA0KPiBCc3Bl
YzogNDkxOTMNCj4gDQo+IENjOiBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcA0KPiA8
bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNClJldmll
d2VkLWJ5OiBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcA0KICAgICAgICAgICAgICAg
ICA8bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwg
MiArLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMNCj4gaW5kZXggM2RjODU5MDMyYmFjLi4zNDljYzRiY2VhOGEgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jDQo+IEBAIC00NzgyLDcgKzQ3ODIsNyBAQCBzdGF0aWMgdTMyIGdldF9hbGxvd2VkX2RjX21h
c2soY29uc3Qgc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpDQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGlmIChJU19E
RzEoZGV2X3ByaXYpKQ0KPiArwqDCoMKgwqDCoMKgwqBpZiAoSVNfREcxKGRldl9wcml2KSB8fCBJ
U19ERzIoZGV2X3ByaXYpKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9k
YyA9IDM7DQo+IMKgwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikg
Pj0gMTIpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2RjID0gNDsNCg0K
