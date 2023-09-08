Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C6798478
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 10:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A04B10E02E;
	Fri,  8 Sep 2023 08:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECB810E02E;
 Fri,  8 Sep 2023 08:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694163278; x=1725699278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q6IVW1PcmLzRdPAvEptiIHLfOGolSAdJ5dr0qXwXyek=;
 b=PG3TYmZ32jLEsmchRyrk6TeVoXxS9nFagteQczTqEN0lF5+2WqO5XofR
 hE/3wcMex27VmP0JEmSwrE3FBKGba9JdTHsTmXuLGkD8XxTNxsvMv6+1a
 Iag2JqX+e3tr3RNsWAht1GJ3pr+M58tzRrnopl5qygHgwyPs7+9T/TIF0
 ZUfXdaqaFQwxHcdTwNMiJfdvBYXRnc3rqWsq7Mh4sswIEsvez10IlE4OH
 KhOG4VnMimQ1NchMU1I2jpx/6xr/72+h/LQ1HPxscfYvujwv/CmPvO9S1
 ENyX42GPR5IFW52kp/YsVOWKTYAkS6Eg8SK+V67flylQsn1UHwLAhDHgv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="381412192"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="381412192"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 01:54:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812508468"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812508468"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 01:54:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 01:54:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 01:54:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 01:54:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 01:54:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aS6faoiFtBQ1YDRcRM8R/z+4/xaY2Wokql5VwwEp4NkkZWBBMq7ph76t8Q2rNr6WwM2FK6Nwf3LO1RdDvHoe1tsjWWCjMkHr0lp2E0n1mEjzutNRMGy1rfgA3D3qjJsk8hIb6xijD/Y0YAnm3CrVdRp4M7wfOtxEwFTNts63q2L5hzzks3+LilR3Bs4ENNjUkutzgWwFF5yeXhiDgWx51tdbMKr0ybElkjNKFo3xrTcf/O+BE+5KJFYoJ2pAZOeEQFPlj+yP0/TnNU4HgxEPJq6DaNyI+whIqKaqvhX/jgalAePol6qxLloWVsKFJS/AbTlJI9USE3KoH/40PNtG3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6IVW1PcmLzRdPAvEptiIHLfOGolSAdJ5dr0qXwXyek=;
 b=fiZpU2XXxdkYD6nmG1xyfI0uGm2zqnBcB6dk3Pq8UjF4R6m8FIlG8ZvdOl3Y5cn4Mnp4/mT92FyEzHxbeHzjGELvHr7geIyd2u9EZ8t4t0XxOtCUtgmN8aohTeupXPoIHawR8boZqZwkRBl+kEiiX+9tWJP4WPhv4MIWuBlYktyP9jBl/SUH6NG7WQ+7lFISYZqfVPcHblPMEXys4N3cK3Dq1EZsh3sd3ncdT/RHfCw1oUvML9zazBjppMcEs7dO3wm7sc8GIPYD18BTI7L0nYzN1ij1wbXtUjFTkDzME5p9aQaRKm1XLYCRwURYd6pLSf1ku3mfdkttMcKOL+gXWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 08:54:35 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 08:54:35 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-xe] [PATCH v2 03/27] drm/i915/xe2lpd: FBC is now
 supported on all pipes
Thread-Index: AQHZ4aGp1tcTFM5SI02K87SzjJv6vbAQoOiA
Date: Fri, 8 Sep 2023 08:54:35 +0000
Message-ID: <4ab8db6c9c0543ba12784f5521947a3e9363964e.camel@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-4-lucas.demarchi@intel.com>
In-Reply-To: <20230907153757.2249452-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: b2555dfa-2ef7-495b-7d29-08dbb04939bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dqVltQKsjpUS0QFc3ebWDtSwU0aY3hxZm0r12/rlBfP2aeMhTi9jXvvupniJk3PBtOK7It+5pKRx7+9C60FuhnqFLIxX5A/Z4/wj3aBmzYRo9iTe7deqgSpBk6ZFaAvoAF2yuTlPbYA6dHVFBIEL2nyKkqlLKY4NsXtB0wZdUn9CyrkC42wHk8GOnB/qbxX2kuJ3QA/i2MLAcnExUbzAD/EeiV4n1l6Xg4HdRWku8mvDvX/v7Txbj5boaus86YeKeXTegIWxwNjUtVJ23Lre0eNrNuST/2cKqpvPhwPAaHn6ZdSqQuNdoQLqxtg0cI07IJ8aMYM0QORpNLcgChyiCioQTZq6iwhdohCPanTbgZJ/icM1q897Db1tlRg8TD/dfoTJNAHsL4WybJVQDJ22wgSYupy6er6Wr7ePsRhyrfbIozSInoYMTleflR9ettetkeJz0P5FoO4j1mx0Cn1wgzo6Lty2oqJQyGPFfTd3rIZ4AOaraexf/PMxn/N2p7vULykvaZWEIshOPCrIhstJapfmMRS9O/O3vOkZpTDsP4v9rhhy703KsnU8Wm0CzRh8tAOUVnzzUXHbtawjWzHHBNDYK0CRuEE/aVocl89gIv+OfoxKQCQa01+WTt1qHIkLnT5n0MkWzXlA24mnD1q1D+YZD9Y8b1eFpMFgVnUc2M4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(186009)(451199024)(5660300002)(450100002)(71200400001)(8936002)(8676002)(6486002)(6506007)(2906002)(4326008)(76116006)(66476007)(66446008)(91956017)(110136005)(66946007)(64756008)(66556008)(41300700001)(6636002)(316002)(478600001)(6512007)(107886003)(2616005)(26005)(83380400001)(122000001)(38070700005)(38100700002)(82960400001)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU1Rd1RQTm14RTVqN1YwdzdKNUEyRjAxUkdaYmc4K0FPZWpsempVVVM0MHg4?=
 =?utf-8?B?aGlLTGpUbGhuREFpSjB4SDh3MGxSK0U4QStHQnBqNVhlakNhK05heVRIMkV0?=
 =?utf-8?B?NElCdEM3Rys1UnFFTndTMmJwNHFIbm05L0dPMlowVGRJUEx5eG1vOXkrRVNJ?=
 =?utf-8?B?N3hka3YyMVB4YVRmUzY2Y3lFckdHS1JNeTB3NWxLMi82MEFjbVJEb3pINXVn?=
 =?utf-8?B?Y2djTEZuNTFPbzNrUDU0eFhIektsR1lLVlBwNDZXczFpdFVlMzVWV2ZmWmJs?=
 =?utf-8?B?b3oya2xXZ0J6UUwxNEJIR1Rtc3o3bG1vRWlvSHFsellNOUJOeWdLN2xsY3Vh?=
 =?utf-8?B?MmFJSkRlRGgwTXJWdktzVFJtdzh3eTQ2T3VXUWxPZTVhSXJLUVc1eVliVFlP?=
 =?utf-8?B?L254enRqeUQydVBIZ2IvY1pIM2ZpRkFjaEd5ekVISFJWMTZJY2lCZHE1Ukdv?=
 =?utf-8?B?aWZoeDBKV0NreWh2UFVDVFd4UGJHTXgyT1pKUFlmTGlvWU96SHZuakVQTmdP?=
 =?utf-8?B?ajJ0VU9pVXkvMWgzNzRpcUJmMFIxZDZreWNzdFNXaWlEalVTcnY5a0lDQ01Q?=
 =?utf-8?B?dzZuL01EU0FPbXFiL0ZhQWxCVC9tZXNId1FuNTNRYisxcTZtRkV4a0c4aHFX?=
 =?utf-8?B?eEhSd1k1Q0t5R2FMZlZsOTlMVzNiaWZKL1F4d2t6aEMxcWpHc3h3WHc4MXNp?=
 =?utf-8?B?T0x2aWQrNUYvUWhHeWx3YmhlUUMzUEwrQWp5YWJoU1VZTTZ2VEtSNlhSNG5E?=
 =?utf-8?B?ZDB1dVpFUGhKMmFudmNOZGpiMzd5dnV3c1FQTVNWUkhKdU9pQ2ZCUElUdGIx?=
 =?utf-8?B?UklnRUpILy9ReTcxWGNaa3dGVHlYVG5zRHdvZVdiR2dFOTMyVy80bm55bXR1?=
 =?utf-8?B?aE5QYVBIdHNFVHM5WVN4RkxwWDlOTHJGeXM0RmxsOFRwRGgva2hFR3lrUzhx?=
 =?utf-8?B?MFRGaW5OV05zQWdzQS9HSUdKQXZmcStuSnFjVUNTeHdOUTczSzJxekVOUnpR?=
 =?utf-8?B?L2ZGZG55VnBPQzlPZVV3UVdzWVpoV3lMK2I5U0UxUUxJMUZlT3gyS0J2c3l3?=
 =?utf-8?B?UzNJRG5FVTFjaHZFalZUNEQweVY2OTRpbXRZSlFTNjVmSWpuSWYvZ0NOWW5S?=
 =?utf-8?B?QWdFdnRQeUd1cFJEcHA5ZTNTL1dSZDBkbjhPV0MxSDNqbXZOTS9aNm03TnpH?=
 =?utf-8?B?UTBuOVhxRkYvRTdWTVZFY3ZnVWdFcjNXc0VhMVp3TGZZZDBUUHVpeGtVYlht?=
 =?utf-8?B?aHkvUWRMN3pqTDlEemM0MWEwMkVmam5lRDZjQmIzYzRrdGdOcEhBZTdUWnZZ?=
 =?utf-8?B?M2M1TllFZWdUeUc4M1Z4dHR5MzRNb0lSV0cwYUhZZFBKaDJxWFpxMDhwT2Fo?=
 =?utf-8?B?cVJnZUFJcnp3NzBhdTJYcG55TDRJSS9lMlcvZ1VRL3VKMVM5Y1lRaHBwVGZo?=
 =?utf-8?B?VTRNMWpDNnJjeVo0eCtTSUNxVGpXbHZnSXVneG51TWVGQ3RiRHUzWGdEVjVV?=
 =?utf-8?B?dzB5ODROQkhvS2VwTE12b3hjb0IvdEJVLzlITXlYS2hNYTBHNmNtcGRkNXRa?=
 =?utf-8?B?S0ZwcjMydENqM1NLNi9mbmFMYWthSDN0OXhqU042aERxMmdSZVVmS2hsUW1H?=
 =?utf-8?B?TTVvUFRzYTEvRkhNWGtoaVBTekdYQ21WS05iWE5lcGpCTTBzcEx2R0J5bkpr?=
 =?utf-8?B?TnM2NUZuODBiV1l5Z2I3WnVodUlMOE9Xa2MyWEJUTHlhQWIwMW9ycmJrNTRK?=
 =?utf-8?B?aFZGMnpTbWxsNGphc3hwTW82bHNjOTlKYUpHeTk3ZWZ5RzVaTUthMEc3RlJO?=
 =?utf-8?B?dlF5bU9zOVpXNmZScEFrVWsvN1VVOEsvNW1VWUlvdDMrVHo3by9WOXpxY2pp?=
 =?utf-8?B?L0Qwd25ld2RNYk5tREtyWndENGRNcFJPR0ZpSzRtOUhPZktVUlJEd0hSbUo4?=
 =?utf-8?B?cmN0ZVhxU0x1V3Arb01PR09TSTRZYWhsZU0rZmw2S1hqMnpITGhQYXhzVXJi?=
 =?utf-8?B?SGIwbjlhUW56b1ZVRDZXVnQxWjhvWWJBcmRsdWhoelg5ZDVFVmxvZWxxQXMy?=
 =?utf-8?B?Y0FVd0o1YkJZeGY5cFhwYjBDSlR6NFpVc084OHRWcnJzMjVXT3RrOHlvZ1V4?=
 =?utf-8?B?UStud3ExR25PYzMvNzFtZTBDOUpOdkpKcXRuQlJYckZFT1p5MTgvdjZzUU54?=
 =?utf-8?Q?Llhkm1AVXiUqZz+zPjE7wBY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EC411FBA60C3934F89FF9615CFC26E15@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2555dfa-2ef7-495b-7d29-08dbb04939bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 08:54:35.0372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3lpFKX4KP//XneKFi3hZiIMuoWV9VeGY+G51K4RaJIK9M1EVYWFrPOGE+dy2fGFJ1NUKlL6mn8pwxpTojRHh+MMFqGe0ybmo5LQCbrKcveQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 03/27] drm/i915/xe2lpd: FBC is
 now supported on all pipes
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA5LTA3IGF0IDA4OjM3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IA0KPiBG
QkMgaXMgbm8gbG9uZ2VyIGxpbWl0ZWQgYnkgcGlwZTogYWRkIHRoZSBkZWZpbmVzIGZvciBwaXBl
cyBCIGFuZCBDIHRoYXQNCj4gd2lsbCBiZSB1c2VkIGJ5IHBsYXRmb3JtcyBzdXBwb3J0aW5nIEZC
QyBvbiBzdWNoIHBpcGVzLg0KPiANCj4gQnNwZWM6IDY4ODgxLCA2ODkwNA0KPiBTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jIHwg
MyArKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5owqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDIgKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQ0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gaW5kZXggZmVhZmIwZjk0YjA2Li42
NTJlMzVlZDc3ODkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZXZpY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gQEAgLTc3Miw2ICs3NzIsOSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8geGUyX2xwZF9kaXNwbGF5ID0g
ew0KPiDCoMKgwqDCoMKgwqDCoMKgWEVfTFBEUF9GRUFUVVJFUywNCj4gwqANCj4gwqDCoMKgwqDC
oMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMuaXAudmVyID0gMjAsDQo+ICvCoMKgwqDCoMKgwqDC
oC5fX3J1bnRpbWVfZGVmYXVsdHMuZmJjX21hc2sgPQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgQklUKElOVEVMX0ZCQ19BKSB8IEJJVChJTlRFTF9GQkNfQikgfA0KPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQklUKElOVEVMX0ZCQ19DKSB8IEJJVChJTlRFTF9GQkNf
RCksDQo+IMKgfTsNCj4gwqANCj4gwqAvKg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmgNCj4gaW5kZXggNGFkYjk4YWZlNmZmLi42NzIwZWM4ZWU4YTIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaA0KPiBAQCAtMjAsNiArMjAs
OCBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGU7DQo+IMKgZW51bSBpbnRlbF9mYmNfaWQgew0K
PiDCoMKgwqDCoMKgwqDCoMKgSU5URUxfRkJDX0EsDQo+IMKgwqDCoMKgwqDCoMKgwqBJTlRFTF9G
QkNfQiwNCj4gK8KgwqDCoMKgwqDCoMKgSU5URUxfRkJDX0MsDQo+ICvCoMKgwqDCoMKgwqDCoElO
VEVMX0ZCQ19ELA0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgSTkxNV9NQVhfRkJDUywNCj4gwqB9
Ow0KDQo=
