Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F3826D38
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 12:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E398C10E1CE;
	Mon,  8 Jan 2024 11:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2B110E1CE
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704715102; x=1736251102;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=P3VlgN3wtkYRbDwVFuqP1Mxqi5Ysv3410Q+8aZlFgi8=;
 b=Ev1DVzysOKqw54OkqkCTFBt64RFUwFn4ZKYgl8dEfSEn3GMFbxMxddQt
 pg8JTqNORhtUfZpGS9MKFDvbScHSSyvMMwJRAJ0KRGdBHU8atMljY/aPA
 sS5y1KBx5F8cvAOSZgsqAtL0ctrO1HTCbnp/j+JMKWBMyhU87Coucdoep
 x5FLAAEIzGsNIWdULWrQLsTpEiIgB9Ubm3d9KfMFKeBBzavwjEUaJZMnr
 le3XOrEpart559D2WTYDZjJOUjDAPHg57CpcojMW5zWu298H5YZQpcPhB
 g1lWeVEjb2voZLvrHpO4Aq5FlNokaWAwwbkmirzGWdNwB81/5KwGUnsPG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="11347396"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="11347396"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 03:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="774470789"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="774470789"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 03:58:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 03:58:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 03:58:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 03:58:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 03:58:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qf/20kXqBn/+syMcg7HyEHTOGIaJrl1Ezs7i5IkQoIudb3OTX2mdi+R2jqjkTiFJBt1/qrOApWxYIQWEoNoK4zsz2xU2sSl91RagQVdIIqaaaLv1GVtKptxhkLN0ssg2iY0MF7G/AtwOm8nwVu0rdnwkBPcZD5TEGjt53OEECafetx/KKF1gV+p4PLtYiTpWGeacXQsOY+vtSIwQ+a89pbcliaxLZtcG6J+4LqR96ZR9uQFDzS/JeuQG84t77bmR1jru2H+6EZDUCcZ25ONtoK3JY05n+twjvKQmoRq8y6oDlzL0rC1jNSa8kMw6f+42qb5mmM2HSm4K6RDLAAIPHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3VlgN3wtkYRbDwVFuqP1Mxqi5Ysv3410Q+8aZlFgi8=;
 b=SlYaKhyjwNV95+q2/KMpZ2TUT3Lzsvg4AWueTtHq3hWhzSOO7Se2U6eFuqsV3c/lmsLB2YImWU35XUfUa/aPXEEq0GCHr8CsK0ENG2M4x/0sq+4YmBYw4ZyzqQSNOvvoLfWvyWt9z3NbD6wK5ybpKKT+PFS9yJtD4Bn7LqXzLQpsK04pOt99XA/tTCpz9Re9CO9y5iyQA5YPgei7mNdJCzWMzkjsd7AtafGLt1zoOslhm0LJmc0cdeQemJCWSzQhC3xLHw8ZElO++VB3/XqVt+FS5phsTrpDsOVN27bm0UAINiLp5Q6JeQHfJo03S5bx0gj+suadBS95jeeUI+vZZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7316.namprd11.prod.outlook.com (2603:10b6:930:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Mon, 8 Jan
 2024 11:58:17 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 11:58:16 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiWugxUDmfbxeEuHGhQ3RnYr6bDP0foAgAABKwA=
Date: Mon, 8 Jan 2024 11:58:16 +0000
Message-ID: <IA0PR11MB7307E4F337E149EBFEAC7328BA6B2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <6b28b7db-4d78-4420-b8be-15f5f71cdfbb@intel.com>
In-Reply-To: <6b28b7db-4d78-4420-b8be-15f5f71cdfbb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB7316:EE_
x-ms-office365-filtering-correlation-id: dca9463b-b553-4be7-4cac-08dc104119a1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ByXaDhQpzEXaFGvoT2lKH3agd13NVNVW3yc9lX2cOH2b70nYreUQWyunlVAC+f4mEPhah0aDJZic0A2F6MiR7qLGBN99Ms6x37O/+CSjqZEVN4MvvtevrsmWOwlMfvHlwqJQV3CV1l+QcVv5On+oHRIMZpHVkQZ3dlb2lIS4jB+bdHze8/Zn8VtGq7f9eQpmYfgEtOM0pcDFP4ZVxi6xVJgPraT2cxg5CsL18ev6r0bQdx157nWjDfGGsYgE8+Zd/Ca1lo8/xqQkGxluF8ndhiAeDnThKEo3nAnD8Dz1V/ObkTKeAo8jhwbwFFXeECCi1QfCUPVcIl7yGIpj++EUC2ZcmsdlB0k9rLEVQ0gUdPFkw5tul7ekVIqzm6UJMaWsSxSwrwKJYLSiJTNJzn2g5NZQ3D1uZN7Feqtb1NrXK1VDaTdN3fvnf/tJ75O7SEZPvioXrasmutz2XnhiSaaf+aorJsPFTutX23PpuxMHTnJoX2afqT1N+WRJJ8u4OrdNPnBclHQSO/n4g8JdYD3GraQgWVUWC5Nfb99ubCssyu+ClxdtIqeFbr/3NIGAiJh/JmEkAzT8VaaQvkh+XwcFPy0xyvx9637CPHvX+SX1lxQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39850400004)(366004)(346002)(376002)(396003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(122000001)(38100700002)(41300700001)(82960400001)(7696005)(2906002)(55016003)(5660300002)(38070700009)(110136005)(9686003)(53546011)(33656002)(86362001)(6506007)(316002)(8676002)(8936002)(52536014)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(83380400001)(6636002)(966005)(71200400001)(26005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVJGbHRSTHkwa2l4cmJwNFZFWmoveW9QYklTdmhCRHZYTEdhMGc5MWVHQlpT?=
 =?utf-8?B?TlpiU3pwZWhHaytpeGhjdWFPK0lkelFyanJyNzhpU1V4TFRGZWJRcnl2c1Q5?=
 =?utf-8?B?T01iS2diMlVGWWxMTVVBOFRKT0o1alZjSUY0TGhFOW9QaWkvdnJyb2prWldq?=
 =?utf-8?B?cDVkZUg4YTQwOEphYjBBbFhLY3VNa2dtUjU4MFpRY1phQUF5cWtLVndqK2xF?=
 =?utf-8?B?dnRmdGEzV25xa0FpN24wUHdoMmRFbU9IbHlrTFlaN3Q0bVQ3RXUrdENBS29m?=
 =?utf-8?B?eFEvTXlGdVdhSldVWG5KTnh3bUlGbG45MFdIQlQxVThLc003M3hGTHRiZDZC?=
 =?utf-8?B?ZzNKb0JOYTl1aG04SzdkaXZIUFRSQTZNc1I0T0VqaGQ2Z3QzYUVUOEwzZXo1?=
 =?utf-8?B?ODdTU2plMjV3WWFkQ0xnLzRuQ3N4RFdubEVPeWFZdFhpV3dnai9JVnphR2ZZ?=
 =?utf-8?B?eVJHY2Q0TGI0NFg3Rk8ray9iTVZVQy91RXZZMDFTdDVIRG5OanhuWVZLanVa?=
 =?utf-8?B?TjJVL1ppWm1QanNBTnpnVVhreDlXYnk4RTZQSUxzSFowU0VvQjlPMnhDcGtB?=
 =?utf-8?B?cGpDcHlhU1JuelVpamdLcXNBRWtKaE5NNTBNSS9RREJJaUEzdW4yNkVYb0Fv?=
 =?utf-8?B?bVZDOVhJSFFoWjhGaEZrQ3huN29hYnZIcWlqYVZjVVBrbzk1YS9tS2dNR1RN?=
 =?utf-8?B?ZTVJMTVyblBaTWdVUVFBUmpMQXhldGhiSmtTejJ3QkFYYnUxVkpzUUtPRURa?=
 =?utf-8?B?MXA3VEhrMkkxSnhJVUZKNzZTK2gxVXh6OHplbzZUZ1U1SUFVT2haL0FnMVlD?=
 =?utf-8?B?bEFOc0RBV2w2YUdyenpNZkZYcEcrQTRWTjNRaGdiUkdSc0VLQ3pFQis4V3hx?=
 =?utf-8?B?ODhTL2N0bWRQOHo3U29RWitSWjkrYk5uM3RSbWs3WGhZK1VGZ24vK1pub0cy?=
 =?utf-8?B?V3NjMURSRi9HUWJHRHUyM0hPSjNKckI5eGcrWmRtOTRzb1hxcnk3N3UwWUdr?=
 =?utf-8?B?ektWOGFIUGx5R0ZDRys2ZUx6Rys2ZEZRcXhReVE0dWpkTFhOK2EzWFRZdzNS?=
 =?utf-8?B?MnV3aFZDVDFSdStJWExXY3pxUENBSWlMOGtoOVAxTlY0OGxkSUVqeUJQeVRq?=
 =?utf-8?B?UmRUdFVuQ05SVzhpSFJGV3BLM2h6S3ZMMWFTQ0o4QnJBd1ZReVpTUG9keEdt?=
 =?utf-8?B?M0ExWXhURHRNbjRFZk1uODhBdjRDNTRzbElxcWpGNVRidHE0MWtHRStBUFBY?=
 =?utf-8?B?NWpUODJmM2piaHZRMFFBWitQY3pEdnFyZTdsNUVNOGxaWS93RVlzRWFqTGg1?=
 =?utf-8?B?aXMrT0dnVnJhTzZXd1kzb2NJMWlqNVIvM0RCdXBab0haN0o0K2JVSzZlNEZL?=
 =?utf-8?B?VjQ2QTVqV0dQdDV2dHJ6RkEyMGM3c0RvT2lhcU8wY2RDZXRhaHN4NEwrYzhs?=
 =?utf-8?B?bzhuZ1BZUExVWW0xUlFxNm5LcHlldXlnS3pvOW4vTXpMczdzRjhSNDluVU1w?=
 =?utf-8?B?d2xlbmp6dlhQL2dVeDBlK1JGenh1aVFtOFU5b1R2TGdMdHZZTWt6RnR0V242?=
 =?utf-8?B?aEpoUGQ0QXAvTlZZbXZXMThEUUoyK2NzY0w0WUppNHJXWVZ4SlppU0dXWUp2?=
 =?utf-8?B?QStrWmQ2RkFmSXZ1VVdRdk9kQkxZTjFNNzZKRDExcHoxeEd1c3lCeXVaTncr?=
 =?utf-8?B?RnJJWFRrSTVMOTVwZmRQRnJtYXlsY0NHMDQ2cXk2anU2KzFwQUVPczd1d3cr?=
 =?utf-8?B?N2k3TW9ZSnpseitzRHBja3JseWhlR3RwQUkrUGlZckh6c0ZLZ0NZa0daWnlN?=
 =?utf-8?B?ZFVTdzJyQ3RXK21MSFBCWmFVcWV2dmhLeEwzVHJ3dFBjeEc3UU9jY3NsY1ZV?=
 =?utf-8?B?YzRWeTVOTWR3b3FLZ2U2aXN2VDMzU0RJUzNFaXE3T0VwdEtQZnlKT3cweWFE?=
 =?utf-8?B?Si90NjhyNEgraDhwdjNueC8rNnJFQ2phQWxhWnludGNFS0NQUkIyWnRuUFcy?=
 =?utf-8?B?aFpFLzdRUnFkUHU1NXF0REtkM1hteStab3A0MDY5WDd5Zi92Yld1SDZWMXRk?=
 =?utf-8?B?ODNsdUFGK1hmdi9oSHk1RzRvTVhMWkJwOUtaeWZuQXhMSlpnczZYbnRZczJ3?=
 =?utf-8?Q?uKeHALO1qFLmHtFMVe0ajBoSI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dca9463b-b553-4be7-4cac-08dc104119a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 11:58:16.8105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fe+zd+wdbTOTv8RFjHkujvCztcBCDTj/d78dVcF7vg9zv2uP5OkmqbodLDa8mdCikyM5AHdEV6HSR1ZbZpNcYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
X-OriginatorOrg: intel.com
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE5hdXRpeWFsLCBBbmtpdCBL
IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDgs
IDIwMjQgNTowOCBQTQ0KPiBUbzogTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+OyBEZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5L2RwOiAxMjgvMTMyYiBEUC1j
YXBhYmxlIHdpdGggU1NUDQo+IA0KPiANCj4gT24gMS8zLzIwMjQgMjozNyBQTSwgQXJ1biBSIE11
cnRoeSB3cm90ZToNCj4gPiBXaXRoIGEgdmFsdWUgb2YgJzAnIHJlYWQgZnJvbSBNU1RNX0NBUCBy
ZWdpc3RlciBNU1QgdG8gYmUgZW5hYmxlZC4NCj4gPiBEUDIuMSBTQ1IgdXBkYXRlcyB0aGUgc3Bl
YyBmb3IgMTI4LzEzMmIgRFAgY2FwYWJsZSBzdXBwb3J0aW5nIG9ubHkgb25lDQo+ID4gc3RyZWFt
IGFuZCBub3Qgc3VwcG9ydGluZyBzaW5nbGUgc3RyZWFtIHNpZGViYW5kIE1TRy4NCj4gDQo+IEkg
dGhpbmssIHdlIHN0aWxsIG5lZWQgdG8gcmVhZCBiaXQgRFBfU0lOR0xFX1NUUkVBTV9TSURFQkFO
RF9NU0cgZm9yIHNpbmdsZQ0KPiBzdHJlYW0gc2lkZWJhbmQgY2FwYWJpbGl0eS4NCg0KVGhpcyB3
aWxsIGJlIGhhbmRsZWQgc2VwYXJhdGVseSBhcyBwYXJ0IG9mIGh0dHBzOi8vamlyYS5kZXZ0b29s
cy5pbnRlbC5jb20vYnJvd3NlL1ZMSy01NTExMg0KDQo+IA0KPiBPbmx5IGlmIHRoZSBNU1RfQ0FQ
IGlzIDEgd2UgY2FuIGlnbm9yZSB0aGUNCj4gRFBfU0lOR0xFX1NUUkVBTV9TSURFQkFORF9NU0cu
DQo+IA0KPiA+IFRoZSB1bmRlcmx5aW5nIHByb3RvY29sIHdpbGwgYmUgTVNUIHRvIGVuYWJsZSB1
c2Ugb2YgTVRQLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5y
Lm11cnRoeUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgfCA5ICsrKysrKystLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDlmZjBjYmQ5YzBkZi4uNDBkMzI4
MGY4ZDk4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiA+IEBAIC00MDM4LDggKzQwMzgsMTMgQEAgaW50ZWxfZHBfY29uZmlndXJlX21zdChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAgCWlmICghaW50ZWxfZHBfbXN0X3NvdXJjZV9z
dXBwb3J0KGludGVsX2RwKSkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+DQo+ID4gLQlpbnRlbF9kcC0+
aXNfbXN0ID0gc2lua19jYW5fbXN0ICYmDQo+ID4gLQkJaTkxNS0+ZGlzcGxheS5wYXJhbXMuZW5h
YmxlX2RwX21zdDsNCj4gPiArCS8qDQo+ID4gKwkgKiBFdmVuIGlmIGRwY2QgcmVnIE1TVE1fQ0FQ
IGlzIDAsIGlmIHRoZSBzaW5rIHN1cHBvcnRzIFVIQlIgcmF0ZXMNCj4gdGhlbg0KPiA+ICsJICog
RFAyLjEgY2FuIGJlIGVuYWJsZWQgd2l0aCB1bmRlcmx5aW5nIHByb3RvY29sIHVzaW5nIE1TVCBm
b3IgTVRQDQo+ID4gKwkgKi8NCj4gDQo+IEkgYW0gbm90IGFibGUgdG8gZmluZCB0aGlzIGluIHRo
ZSBzcGVjLCBhbSBJIG1pc3NpbmcgYW55dGhpbmcgaGVyZT8gSWYgTVNUX0NBUA0KPiBbQml0IDBd
wqAgaXMgMCwgZm9yIGJvdGggOGIvMTBiIGFuZCAxMjhiLzEzMmIsIGl0IHNheXMgaXQgZG9lcyBu
b3Qgc3VwcG9ydCBNdWx0aQ0KPiBzdHJlYW0gVHJhbnNwb3J0Lg0KPiANCg0KVGhpcyBpcyBhdmFp
bGFibGUgaW4gdGhlIHNwZWMgdW5kZXIgc2VjdGlvbiAyLjE0LjQuMS4xDQoNClRoYW5rcyBhbmQg
UmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KPiBSZWdhcmRz
LA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+ICsJaW50ZWxfZHAtPmlzX21zdCA9IChzaW5rX2Nh
bl9tc3QgfHwNCj4gPiArDQo+IGRybV9kcF9pc191aGJyX3JhdGUoaW50ZWxfZHBfbWF4X2NvbW1v
bl9yYXRlKGludGVsX2RwKSkpDQo+ID4gKwkJCSAgICAmJiBpOTE1LT5kaXNwbGF5LnBhcmFtcy5l
bmFibGVfZHBfbXN0Ow0KPiA+DQo+ID4gICAJZHJtX2RwX21zdF90b3BvbG9neV9tZ3Jfc2V0X21z
dCgmaW50ZWxfZHAtPm1zdF9tZ3IsDQo+ID4gICAJCQkJCWludGVsX2RwLT5pc19tc3QpOw0K
