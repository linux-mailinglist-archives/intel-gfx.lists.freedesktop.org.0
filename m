Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8273F72877F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 20:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093B410E104;
	Thu,  8 Jun 2023 18:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736A610E104
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 18:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686250181; x=1717786181;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oki5wDzoYZvvuA8yMOvvBUjGixEx3Qu0MDSBH/4v9jY=;
 b=eGLh/49fEk+WHEgNuaaDjzSiCNsh6pRCsRwAn3DDisnHP4k/5XfpZWh6
 ItQlmR3CJPrNvY84Dll4D7Tc6jj6UlpxgGHNZSmC2lsbavKXtY9x9xRfr
 nyr+EjDwDsZM3Uxxetweh+pcme3oq+x8zYkVkpmLmVeYl5AcY+qsj8F/e
 uvpSQ5r7TtaRoFfBCW5z7GK6DK/okS0sqdPAdF5nHbeuTgWTzEi4z/3ue
 KRgAtpOs19H7ZtOdTl48Osi4aSKzmc6K4XRnkYs5+BTgcR0HyGRm49zmw
 0i5SE2x9iMHDSkCUPmyiKD+kFR3RqfkDqV7TJVtjKFzjcHV7BFkv3v4nv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="342075377"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="342075377"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="713215265"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="713215265"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2023 11:49:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 11:49:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 11:49:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 11:49:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 11:49:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDvcsCNHquSea18oOmaEdd2ZLEF6vxy/tvb7ptYaItCje5Z0Z4/BNGfrmTUYcHQ0oc8dFuRYxC+Oy4HVOgR1hjgECSmI0/jK8vowTEdjzeUddx//CCM/ZXS5+iV66nrlRmw4IawHpGrdDWCr69Sa4AvLktGZHQcE664iKkeMHGPa6Y7izaZupm7RaJn8DcH12zV/m/VQrk/iwIl/hg91Jdzo6HnQX23UwsqJjiB2ULH0WelDk2aFVPbXaycrEZ9I9UaybrVsmMDi/bCtD/nKkz8i614nXPA9LK6+Fvzj/81hQptdYHE9xqoB1IZfJkhF/F2hkuSOkpr2ZUvLLZjWVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oki5wDzoYZvvuA8yMOvvBUjGixEx3Qu0MDSBH/4v9jY=;
 b=MbGsAG7PnbS1nEEqKhtEaJjkMp4/WXLbGdfQHi4w9eegUmvs0rt8ZJqN08sI1RfJjrZ13skCBMXZrFbGv9TTY9y3Hb+3JkkcXtQJzVFCfCxCKCb31dLuzmxnGvUbEhvR58w/lpG4YbxmdjeoSFISUv2yVvsHaQA3RMXfKaWddR5ntEuKxxJSm3Ed4kgdz/hssquIwvUGVqZ08zKuXQb+7Oj3Sn0MkyiE/xJlNng9ORL1Jv+XfL1ZB3F5zfNBCDdYKpGvLtI8a/Jki+4KEHu66Vh+IwRNGJlEo2huuFU9W4m5qR7LqXH9jUAT6vmrj2qCmAio6CTtPbh7s/1uC8dB7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA1PR11MB6145.namprd11.prod.outlook.com (2603:10b6:208:3ef::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 18:49:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2%6]) with mapi id 15.20.6477.016; Thu, 8 Jun 2023
 18:49:37 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Thread-Topic: [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
Thread-Index: AQHZmFAJBhtJ4PFcek6IoppIV21Ue69+EtYAgAAG+QCAAZXcgIAA6JSAgACrDwA=
Date: Thu, 8 Jun 2023 18:49:37 +0000
Message-ID: <50925f9f08257a00fb21ffec413f0dbe14819a0a.camel@intel.com>
References: <ZH7sr+Vs4zOQoouU@moroto>
 <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
 <a0088658-d7d0-4047-9b5e-ea8e1987afc0@kadam.mountain>
 <9fae9daf7b2c745db1b8c359a822e4da88ce71c1.camel@intel.com>
 <2cf8065f-6841-442e-b68c-14e0d2b055c8@kadam.mountain>
In-Reply-To: <2cf8065f-6841-442e-b68c-14e0d2b055c8@kadam.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA1PR11MB6145:EE_
x-ms-office365-filtering-correlation-id: 5fd58aa5-1d29-4558-0ec0-08db68511c1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3dNSCSglgBIJusoI9H9whS1HDI7FvzkgzukW3W1atVx5VKGsLZt5+P/U8DM2XasdTR43ZZC3v/6hSnJZO5HBInu+1S2QS9qU3vCCQRVuSStzGuJr3jQlNdLbwxOI7vEEJ65RzZT0IGhka3zM+n9VU9CyERaKDkQsaI7F5YVc5rOajrfqNDeYfOzNLjMjPak77V7SK32Fr8RdFcg7V9qNB2vKDgdJrSP3kOYPRhAn7KkocPKG5HOmmNesX8wUWTgCJpU9GfBEB7GWw2egbPOtERe4VrVpxnIf5hf0xTkI+pcBp7hJna0KHOLyg0muiPv73sNHK5hVWhDNZ6y2O4/aMDtaU6BOu83nAJqk+l0jLBShLA5shZR4MLpI0ZtqXHprS8ysvjT0nEwbyEXWRS315g3CwnSYFyH7QSywmLHVw7/0NyFEJelKU+2lwdGc8XDvwmFzj6mDJBfZo0lDFSj2gBImh1BuinEwdsPc+O3qVIAE9xZUyQ/iV8ZtfgxAO15UXc9gzijg1i7Mk1QpA8/oiJLymsPjFWEJ1V5FzyRUAujXzr9Nu+hBWikTqG5j8FuV/HZKsf716mzc7Lqk1KmDDb8Hu/3Nd7gyRiUKB4Mndlhk0KcCoVZ7KDSbXDFBABYT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(376002)(366004)(346002)(451199021)(71200400001)(6486002)(66556008)(66446008)(82960400001)(4744005)(2906002)(64756008)(122000001)(66476007)(76116006)(66946007)(91956017)(54906003)(38070700005)(5660300002)(8676002)(38100700002)(8936002)(36756003)(41300700001)(4326008)(316002)(6916009)(86362001)(478600001)(2616005)(26005)(6506007)(6512007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk1hazUwcHQ4akVOSUk4bXFRdkhpRUFpYmdUUHhMYldWdi9ZOVVXTUVMWVlF?=
 =?utf-8?B?aTJBdVhNSG8yWXN5YWUrZXAyUDZrRmRxVXp0U0VQZ01tRTVmc3BRZ3ZhS3hS?=
 =?utf-8?B?ZHJhekNGQ1lTV3dvcmNJTUR4TVJkOWE2UmhZUFhDQTRwbHZmOFkxdEJLTnRI?=
 =?utf-8?B?QnQ4YmlmdmxpRFcyeHBzQXBiZjIxdlFuQ2RtM0xva2Y2Nml4VVN6S3NubkNH?=
 =?utf-8?B?eTVuTEVUd1dEZGcwZWN1WFVTeklaOURKZjVPYU1MV0g2QkRqTVc0Q0o5d1J3?=
 =?utf-8?B?R3pFWTlxL1MzYUJTVndrbWhYMmp4bXlJWkdQZ2FZUlQ3aGp3RUM5d1FWOVRa?=
 =?utf-8?B?SlRiNkNNaUN1TkJ6THpEdTlEcVRNRENBOGJCOW1FMnl3YkZ4QzlRcnRXZnBq?=
 =?utf-8?B?Lzh2RHA0YnhaVUZHUDk1YnJiKzQ3eklkZXFDd3hncU9jamYzZG45cFNBRm5x?=
 =?utf-8?B?VzRtSmRZSjlNc3c1QkFnZm5Pbm5jNFZoMTJTY0RMVlpoZG8xMzdWaTZyV0pT?=
 =?utf-8?B?cFdXTHYwM01VYUhHcmFpQUNaZmR0VmU4ajU3WWJmNERpcjJFSnpodm9UK0RU?=
 =?utf-8?B?bkJtZkVuZDQ0NTZwL2JYSG5nNHI4akxKczg4aTZGTnM0bzh1ZDI0bVM4Lzl6?=
 =?utf-8?B?eDBnZTY1RjB4Tzd6b1JPbm5kQ1ZReGNGMy9xSHlBeVlQU2tkbHFLLzRSYWlz?=
 =?utf-8?B?R2FGc0VhRmxUTEdvNGZicXBIdHNOVzZtbTN0U21hdnNHWHZsWTRsdStXN3g1?=
 =?utf-8?B?aXVUMjBCSUJEcFBwVzB4Q0lRTGRSbGhoR2JwY2ZzbzNzWXpZcDN6VTBOUW92?=
 =?utf-8?B?N1hVY3Q4VXlMb3V3NXExKzU0ZXNqbmh2M0djWGpNSk9rVGZIKzgvTGxYS0NX?=
 =?utf-8?B?amJXYVpNSFpsN3VDSFlYWjQvNHdhRWZWTyt4WW4ydFdRUTIvQXBqZ2xxTUs3?=
 =?utf-8?B?WXluS0hKUytCL3phYjZWRlhlaDc4NmtIOVVpM0U1bjJTT2oyd1M5OHlMWC9n?=
 =?utf-8?B?WVNRczlsaWUrS2htN3NjMU5CaStQa0JZMVU5aDh6SWVZYlhSUjZJQkJtUmFr?=
 =?utf-8?B?NnE0RnVOQk5ZS0c4MmlIUUpXalZwVGdvYWpmV1ZqOUIxOW1jb3RuL3dtY05B?=
 =?utf-8?B?S2grZmVGck5WYVBYNEJXR21ERXpyZnZlR3NTMDBjQWVTKzdNdnBUR1JCTnkw?=
 =?utf-8?B?QVNFUmRDRHJvMXNjeDhBK1FkUlZKT2EydXdZWVdvb1dmTWlzSkIwbWRRV3Bw?=
 =?utf-8?B?NEg2SE1MNU5WT015Vmc2OFNack5JK05NN25HS25OQzBiTzNUSGFKVDZUMFpy?=
 =?utf-8?B?allzSlliWm9SVmozZDJjdDhpMXZLcmYvdERIQ3F0Z0xhaDg1eEIrTWZXcFc4?=
 =?utf-8?B?ZlhWUi9zK21BaFlOYlZ5MWl5MVdWeFJ4WENYWlltbjN1RWsvMVN1L1NXeWN5?=
 =?utf-8?B?RXRxRENaUXl3MGsvUWFxWElyZkFGbkpJaTcyMTVySkMwSDA2VE56WUJVOEhV?=
 =?utf-8?B?dXp5YmEvZ1RKTjRCUWlCVFNpekxCeUNoSGxFUTIxT0pGN241TDJPTlJsNlJx?=
 =?utf-8?B?QktGUnRrYTNtdmtNZWtTRmRFWnhNdU5tQVFmRFJlK242QjJpb0RLUXE5d3BQ?=
 =?utf-8?B?enJoR0huZlFFWlVBMEhCRDhnRVZpSHAvb1o2cVNHSFdvTUFWVm4xR3hmTkRO?=
 =?utf-8?B?YjNsaS9QRFhvSllkT2NSRE1vdmR6aWFUelZ6Tnk4NXBlUjF1RTZ0MXBCb05L?=
 =?utf-8?B?c1FXVXl5QzZ6VTJsQStOb2svK1psOExwd1lDUFlUNzRLY0JNeTFxcjFhQkVz?=
 =?utf-8?B?WUdWN1cvOVRabXQ4Uzk5VU05bG1jWDJuRUk4eEF0K0tjWFo1S01MMjJFSHFw?=
 =?utf-8?B?U0o5Y2VZRjR6MDJRNzc1bDhveFVmMk5XdHAxUkttYXdpc3pSYXFDYlVadytP?=
 =?utf-8?B?Y1cyVGVkNUxHdGtYQ0s3eXMrSi9lSUgrMU5OeENxa1ppcXo0N1BmSU8xMXdS?=
 =?utf-8?B?YUlybkRHbW91QzRRcWN4b05aakJmQkZncElTS0VQK0tIWGJUbXBDdTBmY3JO?=
 =?utf-8?B?VVFpOFNvcDNLT3lrNjR5NkMzeGI4TXk0YnJmZ0FNTFZMR0paVkE2NkRneVda?=
 =?utf-8?B?WEZtQWpDdFN2K2J2bUxEQ3RTQ05MSFVGeFd6eVQrMHY0bjNaN0dSejlPR0pX?=
 =?utf-8?Q?M2u1tk78OM6bNJc71XT2RO4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <52A7C36A2C2AD741B1265C6FFC5D9CEC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fd58aa5-1d29-4558-0ec0-08db68511c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 18:49:37.5684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rGRkkt6tTFB+YmuZPAaAjkV/s2njjGCFTtoUidFY+Jl+4uurHvmRKpsG73TlESQ7ve/ArksvQIPsu1oRUPfZDtnyDyTaXiDKnxAK1IYXJ1Zo1F5BAZmLGg5zCGLN2VQE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6145
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA2LTA4IGF0IDExOjM3ICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0K
PiBPbiBXZWQsIEp1biAwNywgMjAyMyBhdCAwNjo0NDo1NFBNICswMDAwLCBUZXJlcyBBbGV4aXMs
IEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMy0wNi0wNiBhdCAyMTozMiArMDMw
MCwgRGFuIENhcnBlbnRlciB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgSnVuIDA2LCAyMDIzIGF0IDA2
OjA3OjE5UE0gKzAwMDAsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+
IFRoYXQgd2FzIG15IGJhZCwgaSBjb3VsZCBoYXZlIHN3b3JkIGknZCBmaXhlZCB0aGF0IGJlZm9y
ZSB0aGUgZmluYWwgcmV2LiBUaGFua3MgZm9yIGZpeGluZyB0aGlzLg0KPiA+ID4gPiBuaXQ6IGJl
bG93IGZ1bmN0aW9uIGFwcGxpZXMgdG8gTVRMIG9ubHkgd2hpY2ggYXQgdGhlIG1vbWVudCBpcyBz
dGlsbCBmb3JjZS1wcm9iZWQsIHNvIG5vdCBzdXJlIGlmIHRoZSBmaXhlcyB0YWcgaXMgc2lnbmlm
aWNhbnQuDQo+ID4gPiA+IA0KPiA+ID4gDQo+ID4gPiBUaGUgRml4ZXMgdGFnIGlzIGNvcnJlY3Qu
ICBJdCdzIGRlZmluaXRlbHkgYSBidWcgZml4Lg0KPiA+ID4gDQo+ID4gPiAoSSBpbnZlbnRlZCB0
aGUgRml4ZXMgdGFnIHNvIHRlY2huaWNhbGx5IHRoYXQgbWFrZXMgbWUgdGhlIHdvcmxkcyAjMQ0K
PiA+ID4gZXhwZXJ0IG9uIEZpeGVzIHRhZ3MpLg0KPiA+ID4gDQo+ID4gU28gc29ycnkgbXkgYmFk
Lg0KPiANCj4gTE9MLg0KPiANCj4gUHJlc3VtYWJseSB0aGUgYXBwb2xvZ3kgd2FzIGludGVuZGVk
IHNhcmNhc3RpY2FsbHk/ICBIb3BlZnVsbHk/ICBPaCBteQ0KPiBnb29kbmVzcy4gIFJPRkwuLi4N
Cj4gDQoNCmxvbCAtIGknbGwgdGFrZSB0aGUgNXRoIGhlcmUgLSBpIHNob3VsZCBoYXZlIHBocmFz
ZWQgaXQgZGlmZmVycmVudGx5IC0gIG15IGJhZC4NCiANCg==
