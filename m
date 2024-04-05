Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33288899610
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 08:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98AA41139AF;
	Fri,  5 Apr 2024 06:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WxkK0TJg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32FF1139AF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 06:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712300330; x=1743836330;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ubsqCPOxdMiP+q++DpVHSb3C+mcPitvwm9Ltkz3lCC4=;
 b=WxkK0TJg5J+N64pD+TRSJW1kXwNvPibw44ylWDad4fULkzqD/0InVLCc
 C7iL/eGOygXqYCBfy4iMiVwgP7rVYy6qqvQpt065Oqkp/XeHzB3CeI3kv
 Pi90/CQPxE9NpWwOqFUvMhvK1njDj+q36hrT2oHqaMffl+Lk4ZIEaWjK/
 dcqEsf6O2sdFhI6F1nowymQX3wUiUwpHo0gaiBQWGS2HDLKaQS+nZ9IKL
 1cwZ7W+p+lYzlAqMSPMoAq3vfd1Fp/GfUxvNM8vXtuB66xTY+qZqxMDaw
 8EisDol9IbV7K9KRhy3ngcEr9oVKj2GbWR1tb7YcsOCh/lzrbZtlZinaG Q==;
X-CSE-ConnectionGUID: MPlHwPL8QRuz7bejxT1Z3Q==
X-CSE-MsgGUID: 0LWtqIGlTnuhoeVZ0coQdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="8198847"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="8198847"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 23:58:49 -0700
X-CSE-ConnectionGUID: kHqS/ynxRheZMbvHjJi0bA==
X-CSE-MsgGUID: upOuC8bITgCFItdHgYg94A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="19018253"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 23:58:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 23:58:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 23:58:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 23:58:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 23:58:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lv+rrfJ6uDP1KEc2v5+a4ETeHq9HzEoLqR/h9w/ldXJFZC12od60v8e6dPihYJQ5jkG8yXlFW+eILb6A0nyd0FNIsMCqTIzXt9Pv/bhprcip25WqR2MbConf2sw4AjDTvMY4VuC/Mi2+43GxToZ16e1hx1DSdnmeDyxppBYrOYHC8w3kYTLuNdPWtYJ98yGpcRo8yQXVkw9qaayxnfyalBB6jnMkuqhPITz7VEeQ0SgxQ1Hr3M8bdgQAnGENrs3QD5ZsWGrUtOljRbYhbH3zn2xvI5ZmiOg1AupTj6O2barZsa5t4gjYT0dnXijCyjylhI+Y/gHbRDU/oAfAzT0hqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ubsqCPOxdMiP+q++DpVHSb3C+mcPitvwm9Ltkz3lCC4=;
 b=JddCHuO3aE17/QLQ+GxDO6yEjVudIt1TUjBx9MmEB/dkLBLuvPrhJZh/JC4tUpr+CzTDDcAMwzvOhNVQnZGiWwsbcO2mnqcrmiVLSX2e9Ej7fLl3UQ98MK3jYou6+6G+4ok8VNhnZIJO39NZWkUnJzrWuoxE/k4r7I2hCpVWIv7V911oHV6KoFIwaPsj1+IHv0Sbed6TvcFd/Y0CGMo5F65bFgtLGfMJNgTMzKe8LTSlTa2IiIj1CGTqpVT3VKUqAJ0VUXZbaXGZODY398QvzQmzC/2zfSwByi1zRmkwVRJ9DdBp6Z5V+afa3XT1ZSUEVxikEpVhEna4toTO3m17ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6720.namprd11.prod.outlook.com (2603:10b6:a03:479::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 06:58:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 06:58:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Topic: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Index: AQHahtgBaYe8tAvcBEy+jZYrw0yibbFZP7SA
Date: Fri, 5 Apr 2024 06:58:44 +0000
Message-ID: <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404213441.17637-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6720:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CJOoXEYQ7MhI9Vg590qVFeIQPu119oUzf2ApitcHbnNg/ELOUS3tGEfKGrLEkwWjykZx0HUjqiqSog6LrirnpCTm5hwoTuVVrk4gVEbVY9s1X9IFNBTPNaLr+GTuDytH1a4axsv5L06H2TAHKoakkcgd0oKOq9PX4YpV4GV12T2Y1O+YSyeUXQ3jXyGDID6IyJhTD4s1SB20kk0xI4T+BGScvMj1/lg541ROaXS02JRUZynrXPqx7HtTeAds2GzJU0CTU2/DDNbHPdlqc9mvRgt8KO3yQJtDcWy7yPlFFVyd6WIzquibvwQNebJxdlY0VX1eayC9bjaQ83OrwfPYC3ao8ZReif4T2awD18aQOkybu1voczI2p9Mm79C1y25xn8bInCpMTqSnmhTg/YOzlB9h5gkhllE4sDHGajQ4KAIW5vNyS4Klypsxzad5wB462PxX16KSo3uD9txo9q384aqx4bX32GCJ4uw44qI+lln/mPwok15FNfqzeLoG/+x7TQw//w4BDKXbbR5q1+2v3lemD27UUrL0U8aFDwMKxlnubWWZsVlwUWgRhbKm3oN2XiINDt4BR4sPrtWipwknwgMtqOPPV3VQVh7cx+o3/gUE7sFbQOnGv6S8Lzjt04e/N6qL0APAyGumJGrYf0agTBOXTkx14hFtOk/IK5yxZu0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkY4aTFkd3dqYzFSVUFkTkEyNFlmNEFONTVETDVrVklvSWZwQndJZlRmanJ4?=
 =?utf-8?B?Z1o4V3FCZTd2djcveWxqZFA3K3BSV0FWZEVIK3lMdSs5MTFVSVdFNXcwN21S?=
 =?utf-8?B?RHNLSVBvd1R6aWcwekJOK2Q3aE15WGVZc2NlRmQ2UVE5VVhlQ0poNlhSOEJy?=
 =?utf-8?B?dXBTNGs4T25WQWMxcStzbjRnNm1FOW4wVjBWTXhlVG52bm1tWnN5TGNQeUFB?=
 =?utf-8?B?R1Npa3lLdm50UE5pVnM2b1RDd2RiV3JaYTZwcVNlSG1wVEx6YU5XUVhJUjE3?=
 =?utf-8?B?cWxuRWhBU2MvSWJHd2tnS2tBUm5vVGl0bUlqL0pQVU5MekJCY1JQRWM4cCt3?=
 =?utf-8?B?ckJ6OFdIa3lnR05mcG5HNGpnaW9KNWpHcnEwK3IzaXM4SFVuQzVGWXB0Q2Rh?=
 =?utf-8?B?cHM3NThDVGdlYXZ2dGIyZHh6bHBzQXFicG5iU041TVJUSmd5My9tQzAzSGZJ?=
 =?utf-8?B?QVFuRzRlbTZxeHZRazFGeXRmQTRGNFF0andzWUFqbFNRcGIzRzRqVEt0djJ5?=
 =?utf-8?B?UlJXUEE0WHAxN2lrVTVMNkxSa2wzRWE4RHBtUG1jWm56Q3YwQmJHZmgvOXN3?=
 =?utf-8?B?bUwveFdNTGltMnh3akc2b1hhQnI0L0NGRjBWeDJWcnllZkZrRHVZckNuZ1h1?=
 =?utf-8?B?N1V6aTBCc2pXTEh5V0JHOE0xZ2ZHcVlhVC92TE1Ma3UrK3BNWU0ydGJyM2th?=
 =?utf-8?B?WlFLcjY2QUl5dEZzNXQ0eS91R3lvRWhoUldnTW5ab0dXTE5QWjdGWkdhTTdR?=
 =?utf-8?B?ZjRwc1o0WlpxcVhhTXJWZ1BGREV0Ym5ITklvTWtPVWNXU05sVE5yZ0tpYllW?=
 =?utf-8?B?SVpZemhuci9UN2JvSjBBTTBwSEZ0YzhFSlBiY2tFSkhrUEtPeXh4TlVhNTR0?=
 =?utf-8?B?KzVET3FRTjU5aEEwcmZRRFg2NGdMMEJyaFlpN1lqaTVzNVNFcFA3MVNUckha?=
 =?utf-8?B?K0lrRDdaMHFvRmJJNHFGeTBXd3NnMmdGN1gyclFqRk92TWI1VkkxSGliN2F1?=
 =?utf-8?B?eDVHUjFkWWlBUjV5aHJ2WmVEMVR1Q1JQeGRPM1BBcVdyeUdQL3gxanFVQzBD?=
 =?utf-8?B?UEFadmdJYVNZaTMxeVNDdGwxMVJhTW9FVmNubGZ1dGNIbHlHMFF4My82M3lC?=
 =?utf-8?B?S2QrTXNFZWxremJqNGM3UkhZaXNGVEhDeE4zRUJzZFhtODF1Tm9tWjZaNDNP?=
 =?utf-8?B?aWtrOU1mWUxGSXhjU3ViUUF1QTRDbStZOFFjV0EyYjFOYlBsaWE3WncxdGxv?=
 =?utf-8?B?VUxyaUYxZEp4cjljbXQvQURUenZiYlNiVnRhZVpGUEV0bzVDOVY0Vk51WlVB?=
 =?utf-8?B?SXk2NStlNDk5MmNVcDNEdzlIMVd2Yk5CQnd5R01mMzFBNXVXdVZBN3RhemIz?=
 =?utf-8?B?TU5CajFHOGpDSGtUUVc0NFdkZi9VZUNrZE5aNmU1L3d6MnlEUnRaL2lvbDA2?=
 =?utf-8?B?SWFGeXZyTkk2Q0xIZzArYVdMMGIvVHA5WmlLMm1kTzNTZUR3QlAzd1VRNURH?=
 =?utf-8?B?dDZkR0xZenpNUEtNU2pFV3hKSW5TdWMvUHlSY2Nucm1uQzRzRWJRWlZjSnUz?=
 =?utf-8?B?WGRaTVl0aytCVzNHZDhkSXVWWC8wVEJ5VTVzTzFtNkNCUHlOalNHQUtZQ2FP?=
 =?utf-8?B?RlYwcXV0TmltZUNMeWxodWZKQkcwMzBwMkVVMHNHRDNMcllyOEZJQ2h1Mk1u?=
 =?utf-8?B?cEM2ZitwdFN1NERWcHMxVWZCalFHeTZva2MwenNkeGo4UHIyeDltVUVWWERw?=
 =?utf-8?B?SXNUc1FlYjIzOHVYcVcxbzRpT0cralJ2eDRnQTBNRGdaa2VpMTlraHJKTmp5?=
 =?utf-8?B?d3J3SEZzOG16Si9UWlZkcHE4ODdxOEwrV1Fpd0JVT3ljdnJOZHVHc2d2aGhr?=
 =?utf-8?B?QThuanhFcnVZWWlFbzJUekZEVytiTGVCaDlqazE5KzhPWjhMS0dyMktyWmYy?=
 =?utf-8?B?ZVNwSzFqL0hWYnJUN1R3aS9IQXh2Q2lwcFdiYURPaWsva1pGdzFwREh2bTky?=
 =?utf-8?B?M2RGMU5GQlFGOENMU0p6aXRmWnN1QkNHQWJ3N05vTHVhcnBEelAybG05SVZL?=
 =?utf-8?B?dGRmb2xwbWVxNXgrMTJHWGFCV3Z0QzJDblRmYmduSzZHS081dUpSQXNRM2FE?=
 =?utf-8?B?Y3RObStrdWlhMldmTWJNSWN0UUZUTlpVQmw2MnArU0hzM2NIL2tubDBRdmhn?=
 =?utf-8?B?L1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CD0AD2038029014196FE5726BFB70455@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bfb41e1-50b3-4945-9d01-08dc553dd5f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 06:58:45.0420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6c5xx+S0q8JmXK/0rcgoXu2cRSpi0dBr3DIWsx4WDMhqAPGbvosHbpZL1pv5yLZyw94Cj2y5oJD0d3LmTN9yz53la71QWmTw+KZH/snVsxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6720
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

T24gRnJpLCAyMDI0LTA0LTA1IGF0IDAwOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQmlnam9pbmVyIHNlZW0gdG8gYmUgY2F1c2luZyBhbGwga2luZHMgb2YgZ3JpZWYgdG8gdGhl
IFBTUgo+IGNvZGUgY3VycmVudGx5LiBJIGRvbid0IGJlbGlldmUgdGhlcmUgaXMgYW55IGhhcmR3
YXJlIGlzc3VlCj4gYnV0IHRoZSBjb2RlIHNpbXBseSBub3QgaGFuZGxpbmcgdGhpcyBjb3JyZWN0
bHkuIEZvciBub3cKPiBqdXN0IGRpc2FibGUgUFNSIHdoZW4gYmlnam9pbmVyIGlzIG5lZWRlZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDExICsrKysrKysrKysrCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXgg
ZWVmNjI5ODNlOWRiLi5hM2ZmOTE2YjUzZjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMTU4NCw2ICsxNTg0LDE3IEBAIHZvaWQgaW50ZWxfcHNy
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9kcCwKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4g
K8KgwqDCoMKgwqDCoMKgLyoKPiArwqDCoMKgwqDCoMKgwqAgKiBGSVhNRSBmaWd1cmUgb3V0IHdo
YXQgaXMgd3Jvbmcgd2l0aCBQU1IrYmlnam9pbmVyIGFuZAo+ICvCoMKgwqDCoMKgwqDCoCAqIGZp
eCBpdC4gUHJlc3VtYWJseSBzb21ldGhpbmcgcmVsYXRlZCB0byB0aGUgZmFjdCB0aGF0Cj4gK8Kg
wqDCoMKgwqDCoMKgICogUFNSIGlzIGEgdHJhbnNjb2RlciBsZXZlbCBmZWF0dXJlLgo+ICvCoMKg
wqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5iaWdqb2luZXJf
cGlwZXMpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIlBTUiBkaXNhYmxlZCBkdWUgdG8gYmlnam9pbmVyXG4iKTsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+ICvCoMKgwqDCoMKgwqDCoH0KPiArCgpB
cmUgdGhlc2UgcHJvYmxlbXMgd2l0aCBib3RoIFBTUjEgYW5kIFBTUjI/CgpCUiwKCkpvdW5pIEjD
tmdhbmRlcgoKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHAp
KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3BhbmVs
X3JlcGxheSA9IHRydWU7Cj4gwqDCoMKgwqDCoMKgwqDCoGVsc2UKCg==
