Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EDF7B4C8C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AA110E029;
	Mon,  2 Oct 2023 07:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0253C10E029
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696231955; x=1727767955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=T53AcB8qyHS/nNLczKyjMG7J+0etbHTJ2wkUHmSMNEI=;
 b=L1/Cw5d9MRfz6x+avl10HgrirU7pE3gEqsVgKCA+7BqORNVC0LvnKdpl
 v6l9ituTvrcSJGAohb3WRYpmeqzTSRZ9RV1z2SAJr7WbM2agPQimgclZB
 08FpOqUg5l8J8AbTHUmyxH+gKU6sJ5aV7u1taCpFsp19Xd5mKowAAqKG2
 Wp/xYvEFqGmUGB8WOb1v0OhQkaTxqGvX4mhIM2X8rYdWyH7o7crnuuF7d
 g05fGhyue+E9yT7fC8Obw8AcXrGSeOQckIWRtViwOWXZ3LJjd8s7UgbMX
 2U7VoE5TiDKgGh2UQXcwT4R0VlX1dYJ9TOQCj6flPe70yNzVX1/ppQwSb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449085341"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449085341"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; 
   d="scan'208";a="1441630"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 00:31:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 00:32:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 00:32:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 00:32:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 00:32:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCYuQCsddysiJz16u7a0+DgHGOHoJJc6FSbRMtkEsPRg024ThZei9KqCIgKBMO+kjoWq9D5q3wWyHTfMkd6MyATJ+cfD2gH8tX311LMVvnm1fBdvi7clUUWTe7R49CTjnKZyiHKkD1YjZMz4jHgIT4k2FoeWDHHXNEAG8tokGfwfMyiQLeN+rmPA42KSm6WpgEuR0t6aAhpgSWdhE/P+RS9pWdZ1JnpQJlvQ6HoZQcvw6a59Ksr/X3Ie4uRMQRYHOZHvSeR+HiG2mAsdVW870r2wFN9IfyBbQAWbBQT2oM31js8hbAlXgkPsEGKijyGay0cSwM815Uj5Z1OmVljOpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T53AcB8qyHS/nNLczKyjMG7J+0etbHTJ2wkUHmSMNEI=;
 b=FQX661Psh8aabec6qJcSlmjddQhjGYrag+kFlL1k3ERsR5+z9wPK9a9U6Fn59eJIPftLKJvMtH9Zrh4sgtxoo/fy+cS1u5OUOxMdFkOCmSljfMmL8ExVi7rhkxtABgL/6oDP/J07IW7Rx3hHPE9v5kFCtA2crIvOhNcIUVXo0MIG8NS3sXqaCTXmm+SWn6G7TYEyrRgSVbkPV8P9Uoj/gT/ar68nJbfz+5CJ1LQAol2IwxSr5jggz8AouV+Md2dd+4O3XY+xTZ5IiWhj3jl9EhnJMjOM0xd453fxPSGXOwQBltTL0kdBZeHU4b4bGrRO9nMMAm/Nx4JnOo+XNVI0KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 2 Oct
 2023 07:32:25 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5%5]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 07:32:25 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
 per-platform
Thread-Index: AQHZ5wAlv21WUtlG8U6OTblTdoNowrA03HoAgAFSZICAAAhKgA==
Date: Mon, 2 Oct 2023 07:32:23 +0000
Message-ID: <be67e541530cc3a2707ae88050a5bc81b817047b.camel@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-2-ville.syrjala@linux.intel.com>
 <9eb7236c1b81fe534032e94bbb43b20dd2a7e879.camel@intel.com>
 <ZRprEaR3ldipEySa@intel.com>
In-Reply-To: <ZRprEaR3ldipEySa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|IA0PR11MB8379:EE_
x-ms-office365-filtering-correlation-id: 316b2772-07de-4f94-f14b-08dbc319b8d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7FUyb/lOM/XYMASWYd+gDUksNTGbhji7mskhW8MYQ9dznont5GICVmniljwZaktQHl0piyWaHeVzPGlbxg56g5n2/C5pTW7c5A55RRUzxcDpLaHYZ4pd4p5ny7zN3l8Qi6vRQ3BN++tNk6XyWjL/sDxySFnUCwodEDdJ5d8beD92Zzzyv2jNoZ1FQ4DVOgQB+oDtbzckRvzeRtRMHPBBTDAs15c4xDXuXpz7vK9XcwDfJkgtn3VDYN8Dp5/45HiHcMkCllrwDiV/TjwXhK8SOnoyckxY5OW7y3J5VLGcYpMASJRKkHaAAyduuRIq6ErgCCxdDAwU1LqIviM3juveVBwXFwREQuWXG47PiK+5ffDSjtuCu5rgkJfRDjCpXnHnJrvhVnvyd0Jb3TjuPJ+Oh9JwYrGMKuATRbm1Oh60jrCqiwa8iiIgCqCOqiBI1hQ+cAfgU9HlYLrQNsxoMo4u3GrtSjNAJaScEd5aRU4S1/bJWixfBQHsBWe7fiHjT1o6AXsntrwl+ZfY+lM+6krpzXycOpIzcrb9+h9eXckh0gdQmiJZnR5pvpRNgmpIZRJ8JI4GlRF7OGJMfSoAvYxerTvKatISnwrYjoC4aXWACcCXhfe3jMHORTwO7iKmRIuZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2616005)(6506007)(6512007)(2906002)(83380400001)(82960400001)(122000001)(86362001)(38070700005)(38100700002)(36756003)(26005)(66574015)(6486002)(4326008)(8676002)(8936002)(478600001)(5660300002)(6916009)(316002)(66556008)(66476007)(76116006)(41300700001)(66946007)(66446008)(91956017)(64756008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmNFbFZoR0FzQXYvYk9uNW1JbEM1MEtGUnZjbmZZL1R2N0VrRGl0WVNXbHBy?=
 =?utf-8?B?L29tUDFZblhSYjQ2bFZiQ2hDWDcrT0ZpRFJRVkJyL0RlOE9lcVZlTXB2MXFJ?=
 =?utf-8?B?ZHFHbUcwWlU4MUNiSnhKaXFSUmVURTFzYVFBYitucGdYanoxempQaTh2SlZw?=
 =?utf-8?B?dHhyNENBdnBNZVJuRE5aVmZ6UndDOURKM2dtVS9TNm5xaFNLSDFkb09SZElX?=
 =?utf-8?B?OURRNmIzaDRqb0RRNjI3ZWJpcW4rUllBWEpEMUVyaXRSTmpqay9zYitzR2ZM?=
 =?utf-8?B?a1d6bUVUVnN1Y21kMWpreVlQa0x3OGRIdmlPK1FkaEZmSllVOVd5MUxueE9r?=
 =?utf-8?B?VTBscS9OcE9aVTd2bUsvdlVvZ01QRE9zRDVJVFZaYUVOSjlNaSt3RlRsc3Z2?=
 =?utf-8?B?Q3ZHZkNNbU0vL0dSaUIyRGM3RWs3bSs5MUZGbWU5cTZYZFJsSWNoaXl3SlJ4?=
 =?utf-8?B?UFBxRmt3aWNQOVZ5UmtFNjNFZm1CaFRQcnBpelM0Nyt0U0pMeXIxRS85bWRa?=
 =?utf-8?B?eVZPZDhLMWFvTXhEUkV3L0t1dWFoZW5NSFFoVitBclQ3Uk9lRVhQOTRGeWZh?=
 =?utf-8?B?NWwyRGx0ekthc1RySHJWSjhEdVlGS3BhbFRnVjExaEJubTZ3bmNmMDRMUlFD?=
 =?utf-8?B?Qnk3K1V2VzdaODdQVUlqUlNqZlJZSHpTVXRyTjlBbFhqWGU5cDZJUG9JZitj?=
 =?utf-8?B?dTg3T2YvTE9KQUdWWTRPdmJUa3FCZjFlc3llOG5WWmwzTVRvK3NCUE9USDlz?=
 =?utf-8?B?QTU1LzA4ckE0UkRMNi85a09nUGtacG1oUUNrb05qVC9VMVkyRXZYemlma3V5?=
 =?utf-8?B?MGtKeHBCdWQzTHBZU0FMZEVxaE9oQmNQZktoQ043QTc4NzRKYzY0aUtOYXpk?=
 =?utf-8?B?WXg0Y1FxWjZPVW1MLzM4Qy8zbVJZVlhMUGtWajg0S29sS0pzQW94cDFhVlIx?=
 =?utf-8?B?V0x2dk1VT2tVVmFaQ1N0M0ZocEM0T3Zud3d1WU9qMTZ0TUplTy8xZkRIRC9W?=
 =?utf-8?B?cUt6S090azJmUmh5UGYreHR4aVlpQlZ4NUZneXBpcWtsM2lrenczVGViQ2x3?=
 =?utf-8?B?eXlLbnh4eXVhQTR2UUh3bTlxRVVucGRYRmpLWG5LSW8vK21NVHAzTWY4bC9B?=
 =?utf-8?B?WWFuZG1LcFZROGhlZHJxVFRlMTcrSDZRSllBRVdZRUltVWxUai9KYW9xWmk5?=
 =?utf-8?B?ZThnK0JZc0lmb3dscEM0UTh4VXJ1ZUlVMHQyNlZ0UkdqZ2RDNmlzcWwyZ3JZ?=
 =?utf-8?B?MHk5a1RxcVJSSm5WbmNCZi9VNDZFZk01U21IVlhzMGtNUDV5Z3J2dWJyNnZo?=
 =?utf-8?B?cXpBbkdoelZaNndHdVljL2VqREJNT1ZPMjNOdnRNcFdaWHhQSi9mL2QrWUVq?=
 =?utf-8?B?RmZwd09YL0doTkVyL2hUVU5UYmFMN0JiZHVaNU9Rczk2ZXhNZ0IzdFRXR1ZK?=
 =?utf-8?B?R2lDdERGaUFmeXFpUUN3Skt1aWtPY2FiZ2NXUEw5TERQSFRpdmc3c0J0YUxU?=
 =?utf-8?B?NGc4NVJwOUVHZWpVNmhiN05UdWRiZE1FVHp1VXBpeFBLbWZSajVMdGNEcW85?=
 =?utf-8?B?dDd4MG5sWm5GcmxvZXJPWmJVL1IzUFFrcHFoekYxcEk2TzNoR1ZlUjdkVGg0?=
 =?utf-8?B?V09yNkQvclBQTkRabFBLbTBMNHVjQWVrbnZRbVdTRGpKTnp1b2NuQmlnL2VX?=
 =?utf-8?B?RGowdmR4NjBEc0dHZFFQSGc0Tk9qci96ZDVFWTdaM2dVUmtaNkNkQVd2L0Ew?=
 =?utf-8?B?YkJrclVPUTJTV1lWOWh2TEtzd3pJaHdiY0RSMlZPakhrbmxGUUo0Y1ljSmVC?=
 =?utf-8?B?KzlKM1ZaT0dWZytHL01OT0JlMktndjhsSGhlTE5ZWXg2Wi95QUkxekZDVUVI?=
 =?utf-8?B?N2huTCtYcjFsdk1uTG00QXlpZlFtS2huNHRqNjdDL0FGQW1lNlhYeWNYR2hr?=
 =?utf-8?B?S3dZbUxuSHZGbGxHM0FvajNBcVFFL2wzQzJnRTdwbW9QMHhPMjRPaEJEQ1p6?=
 =?utf-8?B?Z2V2c1kxUkdkL3Fab1lUK2FOZDEvMFVSOWdGbzhmeWJxUFR4ajgxdkVhWXJx?=
 =?utf-8?B?Q3g3SmM3ZkpiTHhSbVlJaTVTUmQ1M1BqazFlVktpSkxLYWlYbmtIWG1LTFly?=
 =?utf-8?B?aHl3S1hkYmI0M0Fwd2tCN3NUdFg3L3JwQWRjRXAza00rMDVaTXdudlJKNk1B?=
 =?utf-8?Q?QX36yd2RwjfAfWvM2HTvjZw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9602D2FEDAAE34FB0994D8671B91B1B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 316b2772-07de-4f94-f14b-08dbc319b8d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2023 07:32:24.5001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2j6erZI+Rq+0drMxRduzWFW0J2ecip0a9IiLdnbRjezEyqj7/+2FUhzlx2iiI4VaIdlB5gl7/W7G5Kyg6/99xxHLuCLiA+0/gsteXdtIWdk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
 per-platform
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

VGhhbmtzIGZvciBjbGFyaWZpY2F0aW9ucy4uIFRoaXMgaXMgbm93DQoNClJldmlld2VkLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KDQpP
biBNb24sIDIwMjMtMTAtMDIgYXQgMTA6MDIgKzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToN
Cj4gT24gU3VuLCBPY3QgMDEsIDIwMjMgYXQgMTA6NTM6MzdBTSArMDAwMCwgR292aW5kYXBpbGxh
aSwgVmlub2Qgd3JvdGU6DQo+ID4gSGkgVmlsbGUsDQo+ID4gDQo+ID4gDQo+ID4gT24gVGh1LCAy
MDIzLTA5LTE0IGF0IDE0OjM4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0KPiA+ID4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+
IA0KPiA+ID4gQ2FydmUgdXAgc3RyaWRlX2lzX3ZhbGlkKCkgaW50byBwZXItcGxhdGZvcm0gdmFy
aWFudHMgdG8NCj4gPiA+IG1ha2UgaXQgZWFzaWVyIHRvIHNlZSB3aGF0IGxpbWl0cyBhcmUgYWN0
dWFsbHkgYmVpbmcgaW1wb3NlZC4NCj4gPiA+IA0KPiA+ID4gVE9ETzogbWF5YmUgZ28gZm9yIHZm
dW5jcyBsYXRlcg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2OCArKysrKysrKysrKysrKysr
KystLS0tLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+ID4gPiBpbmRleCAxYjMzNThhMGZiZmIuLjRjNDYyNmM4NDY2NiAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMN
Cj4gPiA+IEBAIC04NDgsNiArODQ4LDQ3IEBAIHZvaWQgaW50ZWxfZmJjX2NsZWFudXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4g
wqB9DQo+ID4gPiDCoA0KPiA+ID4gK3N0YXRpYyBib29sIGk4eHhfZmJjX3N0cmlkZV9pc192YWxp
ZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+ID4gK3sN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0g
cGxhbmVfc3RhdGUtPmh3LmZiOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgdW5zaWduZWQgaW50IHN0
cmlkZSA9IGludGVsX2ZiY19wbGFuZV9zdHJpZGUocGxhbmVfc3RhdGUpICoNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYi0+Zm9ybWF0LT5jcHBbMF07DQo+ID4gPiArDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gc3RyaWRlID09IDQwOTYgfHwgc3RyaWRlID09IDgx
OTI7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBib29sIGk5NjVfZmJjX3N0cmlk
ZV9pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0K
PiA+ID4gK3sNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgdW5zaWdu
ZWQgaW50IHN0cmlkZSA9IGludGVsX2ZiY19wbGFuZV9zdHJpZGUocGxhbmVfc3RhdGUpICoNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYi0+Zm9ybWF0LT5jcHBbMF07DQo+
ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gc3RyaWRlID49IDIwNDggJiYgc3Ry
aWRlIDw9IDE2Mzg0Ow0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgYm9vbCBnNHhf
ZmJjX3N0cmlkZV9pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlKQ0KPiA+ID4gK3sNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+
ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgYm9vbCBza2xfZmJjX3N0cmlkZV9pc192YWxp
ZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+ID4gK3sN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0g
cGxhbmVfc3RhdGUtPmh3LmZiOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgdW5zaWduZWQgaW50IHN0
cmlkZSA9IGludGVsX2ZiY19wbGFuZV9zdHJpZGUocGxhbmVfc3RhdGUpICoNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYi0+Zm9ybWF0LT5jcHBbMF07DQo+ID4gPiArDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqAvKiBEaXNwbGF5IFdBICMxMTA1OiBza2wsYnh0LGtibCxjZmws
Z2xrICovDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoZmItPm1vZGlmaWVyID09IERSTV9GT1JN
QVRfTU9EX0xJTkVBUiAmJiBzdHJpZGUgJiA1MTEpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIHRydWU7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBib29sIGljbF9m
YmNfc3RyaWRlX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUpDQo+ID4gPiArew0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4g
PiArfQ0KPiA+ID4gKw0KPiA+ID4gwqBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoY29uc3Qg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiA+IMKgew0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShw
bGFuZV9zdGF0ZS0+dWFwaS5wbGFuZS0+ZGV2KTsNCj4gPiA+IEBAIC04NTksMjMgKzkwMCwxNiBA
QCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZHJtX1dBUk5fT05f
T05DRSgmaTkxNS0+ZHJtLCAoc3RyaWRlICYgKDY0IC0gMSkpICE9IDApKQ0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gPiDCoA0KPiA+ID4g
LcKgwqDCoMKgwqDCoMKgLyogQmVsb3cgYXJlIHRoZSBhZGRpdGlvbmFsIEZCQyByZXN0cmljdGlv
bnMuICovDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoc3RyaWRlIDwgNTEyKQ0KPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiBJcyB0aGlzIGNo
ZWNrIG5vdCByZXF1aXJlZCBhbnltb3JlIGZvciBJQ0wrIGFuZCBHNHg/DQo+IA0KPiBQcmUtc2ts
IEZCQyBvbmx5IHN1cHBvcnRzIFgtdGlsZSB3aGljaCBpcyBhIG11bHRpcGxlIG9mIDUxMiBieXRl
cw0KPiBhbnl3YXksIHNvIHRoZSBjaGVjayBpcyByZWR1bmRhbnQgdGhlcmUuDQo+IA0KPiBBbmQg
c2tsKyBjYW4gc3VwcG9ydCBzbWFsbGVyIHN0cmlkZXMgd2l0aCBtb2RpZmllcnMgdGhhdCBoYXZl
DQo+IHNtYWxsZXIgdGlsZSB3aWR0aCAobWludXMgdGhlIGxpbmVhciBzdHJpZGUgdy9hIG9uIHNr
bC9ieHQvZ2xrKS4NCj4gDQo+IFBlcmhhcHMgcmVtb3ZpbmcgdGhpcyBjaGVjayBzaG91bGQgYmUg
YSBzZXBhcmF0ZSBwYXRjaC4uLg0KPiBhbmQgd2UgY291bGQgcmVtb3ZlIHRoZSAibXVsdGlwbGUg
b2YgNjQgYnl0ZXMiIGNoZWNrIHRvbw0KPiBzaW5jZSB0aGF0IGlzIGFsd2F5cyB0cnVlIG9uIGFu
eSBwbGF0Zm9ybS9tb2RpZmllci4NCj4gDQo+ID4gDQo+ID4gPiAtDQo+ID4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMiB8fCBESVNQTEFZX1ZFUihpOTE1KSA9PSAz
KQ0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBzdHJpZGUgPT0g
NDA5NiB8fCBzdHJpZGUgPT0gODE5MjsNCj4gPiA+IC0NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlm
IChESVNQTEFZX1ZFUihpOTE1KSA9PSA0ICYmICFJU19HNFgoaTkxNSkgJiYNCj4gPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoCAoc3RyaWRlIDwgMjA0OCB8fCBzdHJpZGUgPiAxNjM4NCkpDQo+ID4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4gLQ0K
PiA+ID4gLcKgwqDCoMKgwqDCoMKgLyogRGlzcGxheSBXQSAjMTEwNTogc2tsLGJ4dCxrYmwsY2Zs
LGdsayAqLw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKChESVNQTEFZX1ZFUihpOTE1KSA9PSA5
IHx8IElTX0dFTUlOSUxBS0UoaTkxNSkpICYmDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZmItPm1vZGlmaWVyID09IERSTV9GT1JNQVRfTU9EX0xJTkVBUiAmJiBzdHJpZGUgJiA1MTEpDQo+
ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4g
LQ0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gPiArwqDCoMKgwqDCoMKg
wqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTEpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIGljbF9mYmNfc3RyaWRlX2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDkpDQo+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHNrbF9mYmNfc3RyaWRl
X2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJ
U1BMQVlfVkVSKGk5MTUpID49IDUgfHwgSVNfRzRYKGk5MTUpKQ0KPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBnNHhfZmJjX3N0cmlkZV9pc192YWxpZChwbGFuZV9z
dGF0ZSk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA9
PSA0KQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOTY1X2Zi
Y19zdHJpZGVfaXNfdmFsaWQocGxhbmVfc3RhdGUpOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxz
ZQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2ZiY19z
dHJpZGVfaXNfdmFsaWQocGxhbmVfc3RhdGUpOw0KPiA+IEFsc28gSSBndWVzcyB3ZcKgIGNvdWxk
IHBhc3MgInN0cmlkZSIgYXMgcGFyYW1ldGVyIHRvIHRoZXNlIGZ1bmN0aW9ucyBmb3IgY2xhcml0
eSBhbmQgc2ltcGxpZnkuDQo+IA0KPiBXZSBuZWVkIG1vcmUgdGhhbiB0aGUgc3RyaWRlIHRoZXJl
Lg0KPiANCj4gPiANCj4gPiBUaGVyZSBhcyBzb21lIElHVCBDSSBmYWlsdXJlcyByZWxhdGVkIHRv
IGJhZF9zdHJpZGUgdGVzdHMuDQo+IA0KPiBZZWFoLCBJIG5lZWQgdG8gbnVrZSB0aGF0IHN1YnRl
c3QuDQo+IA0KPiA+IA0KPiA+IEJSDQo+ID4gVmlub2QNCj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4g
PiA+IMKgc3RhdGljIGJvb2wgcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ID4gDQo+IA0KDQo=
