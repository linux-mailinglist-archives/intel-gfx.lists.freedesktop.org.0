Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A98893959
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F8910E5A6;
	Mon,  1 Apr 2024 09:23:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RdZOR/yV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BBF510E5A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711963439; x=1743499439;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zCXQMkQA6JT8d0fa2wYfTIyJoxx2BGzEalg18BA8Y6g=;
 b=RdZOR/yVLZESV8t/h2K7CZu3LDKmUS2iDMMlJerlI6q1Vqv2NEO2VuI2
 ZAcpTcW6TI5R7QP3GY1f2aVU1dfW6X2phFglthn53UFHVTtQFjV5/ZZhW
 XZ/UiPmb4RP/Zvwdwn1UXM6Yqa/m0hpKkIgplQRfbDF9hdTEf49kDamNS
 ZRlbUwZiy2m4Lqq0y0KMdJNGyjfknHiabVo6fR+esIGKzME4fn6l6zFld
 ndiOqZsVSroewce8SqYu/aU34IZTf3cCGOm3MKZAmmeZmM4DM74FRhqpZ
 YMcp1LBbnRqmavJwDVfMLymG+w8Sz8mJxJp8q9NLwmKusIpeve9+vHHWr w==;
X-CSE-ConnectionGUID: pP+tc70UQfGM+IPaM98Qmg==
X-CSE-MsgGUID: d3agTlraTSGyYkApJe1uOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6946498"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6946498"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17693822"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:23:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:23:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:23:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:23:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:23:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EifEu/sH6tL/n1MKXnpEBjJ8tbsQLJlzLn8G6dHp/1swoE3eeq9kC6ajLtZ0ThwdzIq3+37BQgdFQx2xt/Ov/zy9ZGKA8LZHi2zS4wDD4eI7YgrYcHUFhjzx5L1ePSSRfuDKH8C7+kxK5nOWNyXqrd8tRbuquN8aCZJQfmB5q0OZwaa7tF559pUmx7czzF7XaZn6UEDFS7vxq3hILzTfLH5js5VCXOgGOaVFsSakCU3FeCysvPFAatkzFmGEG4PgnQjAcvfV2olQqh9i9TOX9wbfS+LpTTwksvyglkK48iqCK2PeiCSreMiulKeyszd86Zi6qJtrk9ff+ZUXcQ+8QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCXQMkQA6JT8d0fa2wYfTIyJoxx2BGzEalg18BA8Y6g=;
 b=IGvD2MSrIml5YAhWvtECP+x1XAnNr4JsQnqKL4ZYym1RU1Ayhpnr3HOnTDeV3+8kGlAVur8ziJXMya9ZnM8HK7khTOIzJDtFLuzEXD4kjYTzHepFml3/lK1JZZc1Pf/I5ZZgsfNtDfP0He62roGnOHVHfytpGkv+vfGhC14ZeWaPVx29mBMZi06j2Rso+foFim6kgAOn66MMa/31TSKkeMVuNvAjLJozkrb21l0iM3rVFsw7Tzg/aiH2Ta8YEceCk8d6N1Q/QkZApOTSKFyvM51i4mNGCIV3kpfSHxUXhUDZB55DdKBRNwwYh9LdoYv2qvDq/7/WYNlq8XQborupWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by MW4PR11MB7030.namprd11.prod.outlook.com (2603:10b6:303:22f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 09:23:55 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:23:54 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 02/22] drm/i915: Fix intel_modeset_pipe_config_late() for
 bigjoiner
Thread-Topic: [PATCH 02/22] drm/i915: Fix intel_modeset_pipe_config_late() for
 bigjoiner
Thread-Index: AQHagXZOBdWV+//TFUeM3pgbvhJ2CLFTKQEQ
Date: Mon, 1 Apr 2024 09:23:54 +0000
Message-ID: <SJ0PR11MB6789B0A539A9DEE8D175FF1F8D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|MW4PR11MB7030:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3obbkyJVrxyNXDssUzr3CiOjUiKAsjqSiQxCKXKbNJw3CPmqYUDYtK5gh1+XAX4FKS2w333ulj84jCnKDyRudSBgFArVjgt+lqDmoXyz+I3yK9UyT3EcUI522KjkEpR3roYSk/EtYyVbUswbmB+IAS46mxr9IKqQ8ul2XnxF9RYq0ROiDRuthn6PvjKSHSHlB8HPy9cpsTe+2OAL/MXoI/7j0/1GF8eN2kVZuLqnv0LPZ6nVhLG5Mg1PtRSy4txr0VWJLla3zGzDHPwLUJlybLT/sn4pWqBpFfuRW9TQPYBqHi1sGn6CkwqDukrIpfSTE85J2X2OSeLnwIAA+7UVIFFN0ylx+v1BEBD+Ndbr0/EeA98o8lL0ZOl2J7d/qr24JVv9TBz0zhSuszBzXc1IzUnNEMe9kievmIuHlf5WIg5UxUcaWuGodAl6EkuIg3J7uguOFNaVphpYoa6EAi873LZ4P52sRqpyDhFMRhHf9zdrKXd3Vf0ROFEpz16dda05pyebEZty4+f68tYhx2LDV7AflQWWk5oxm9+oU7xneNZfrIleduHGoOKhbDreri7oZ+jeu0+fOS2KvcvaoFURu01HfQT9uPUZGso8I14rBS01hDqO/JeZOAg/hauiLHbrRkizYj5vMpaavmEdwVaal9p9xauKA9UrSSfOI5z+n34=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ck40a2pPWDU1bHQ2WHgyVk9JTnBwY0trQmwyd2kzVC9rZ2x3cGFRMXJBZGo0?=
 =?utf-8?B?ZTBJT0Y5d0xDV0VucDU3dWtoZGZGY3RPSEZ3L3B2YUsyeWdoUEswSS9QSnp6?=
 =?utf-8?B?S1cwVEpGVVFSQVppMzFxazQwbTRJbE5UMCtlMkttbmNwWmtacGorMlpCU3BI?=
 =?utf-8?B?bDZXZVNDaldZWFRkTUpqVGNBM3RYT3ViUjJNTTZJYnloM2RGNG9PS1lXYjhh?=
 =?utf-8?B?UkZaelpCTVBXak9IdU03Zk14Q0t4aDU0SlcxRjlCT01hdFFOay9PTUQ4N1hF?=
 =?utf-8?B?VG5xRG5NRWJpdW43ek5JTTR4SVNlUEpGbkhWMExBbWtqZ1dQTU1wa3BKTFk3?=
 =?utf-8?B?eHh2MlBwNVVNMkJyRFhzdjJYQ3crZVNIQVVudTlVcE1WUmw1RXozKzBHakRQ?=
 =?utf-8?B?SmhTbTVScmVKMEJNb1pISVZ2ZVJMNDRRNjNpVjB0NG9Jb3c5Vi9NOTlGc003?=
 =?utf-8?B?bHd1S21lU3htMDJSZytzOFhnWU1RUkJFVGhxdEtnakd1RjREKzhkWVdvajcz?=
 =?utf-8?B?bVRZTG9KVWlkNURaMTFFVW5zd0RxNkk0UGwycnhEUlJqZmJ0eHNtR2FzbjhP?=
 =?utf-8?B?d2hvd21sRUZETUlib2JvQ0NiUXVUUVFvLzZDeU16YXQ2Z3k5Z2dWMlFRLzE5?=
 =?utf-8?B?Zlp5WFR4MG5lMDFwVmlKd0I2cDZ3c010Q0x3MGF1V25WK2ZRejFCNEJSRGdC?=
 =?utf-8?B?dW83RDhoV2loendaMEJEZUdoTjVXU2h1TVBnTnl2d2c2Z0Q4ejNiSk55c0Vi?=
 =?utf-8?B?NkZXLzF4Mi9CWlRzbUdRV1ZUVTRRU3pVU2NWZEVuZmdqdkVOU0lodlNPQlNu?=
 =?utf-8?B?dHI1WkFrSVZGV3ZYL2Vwbk1wdzNLQ3VxNnNhc29WTHIxQm40QzNBV3lqWVUy?=
 =?utf-8?B?bWpSK0ZlelhPejZIdHJrVUN6ZnBaQWZnMDFleVJYc1NIdS9oNStGRThFQnNG?=
 =?utf-8?B?ZVIrZVhZbjdEUEs3RTBuLzIwVzNqQlJFdVNDRTlIQU94NkhzRlN1YVI0c3Vv?=
 =?utf-8?B?Nm1COWhqTzcvUWlXSU1sQVhhbGVITlE0WExCVFFxL3AvKzc4dUdOL2Z5WExK?=
 =?utf-8?B?VGNZT21CaGZjRCtqNVdPWmltRnZVNEs3dnN5MTZ2RWN3bWZ2dWUyMjBRZGtS?=
 =?utf-8?B?c0x4N08vMnMvaXhoZ0xzRkVxMUxjS20xcFJPa3JSa2J1RGJCYUtzeklUVVFG?=
 =?utf-8?B?bVVqbElsREdvOVJCRlVDTGZkZE9yQXg2MlQ2MlR2NlVoSk1mUi9xUnU5bXVO?=
 =?utf-8?B?YjlMVzlQaXFFcVhKT2FUNzJORmhUUGtKQzF0dG4zWnRMVDJLZlNNTExKK1l6?=
 =?utf-8?B?ZTFTL083dngwcFR3d1F3bEJTVHFwYVIzRnlLK0lEMFJ3RklGYTVtQUx6ZzVo?=
 =?utf-8?B?ejBHcWhmS09PSlZLdWptOXJEZlBYdE5yRmNGYU5KMWFsQXd5cmdwNS9NUzNs?=
 =?utf-8?B?MXhlNGtaVWdDQnNReVZYUzl5TjVZZEh2YzVCeFNudFR4UnlHdFpVNmNWRGhQ?=
 =?utf-8?B?bVBvUEVqN08xMnBOS0RVUGFKbkRqQ2I5K0FzdnR4WUNramRZTWlvazROdksz?=
 =?utf-8?B?WUlVUnVyV1FOTkh3WjNST2pyNFpIa2ZRSXRiK3laMm9JOG8xOEV4THgwakMx?=
 =?utf-8?B?Y0N3eEdEREx6YlZ6SkFEblFHaU52Qi9mVTFzZ3FNdDNjSllXSy9VQTREa09V?=
 =?utf-8?B?b0tsc21yQndud2x6RVlvdTJjNXB6Q29hOUNSNm1sbVBWdUhjWHJRZ2VUbTYw?=
 =?utf-8?B?WncwbUdoNW90Mit0dVYxMHJEdTZRNGJmYlgxRHZKSHlTdTdKTWF5L1lOTTNQ?=
 =?utf-8?B?MlQrRy8yUW5sRGZNT3hYbkF1Yy9pUEwyR2FMcVJIRmV2L2loR1hrYWMxZSs3?=
 =?utf-8?B?d1pWZjZxWWlhN1pFS1JMSXdkSWkzaThQcHYyaHc0eDZydGFCY05RODhXdFF1?=
 =?utf-8?B?NlErV3hiWFE1VlhFamdSRC9CaEY1NW9NT2t5WlBrT1JJRlR0cFRKOUdycmRv?=
 =?utf-8?B?aXJyNHAySGU1K0pPN0NNVXpGcHV6RVpwK3F3S0NsRzR2RWszZDd0QWFVUmdq?=
 =?utf-8?B?cklraGJVRmhLTTFyT0Q2QjJSSFpGclJ4anFGR3R1bDJ6RjlpdVhjMWpqb0Fj?=
 =?utf-8?B?RzcxSGgvcGlOSCt2VVpMS29zK1RPUUpmazV4NWtwemdvKy9ReUE1MjBmWWgy?=
 =?utf-8?B?VWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9711f5e3-6b42-4d38-5fa8-08dc522d73c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:23:54.8959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 85BHcLb31gN8+rTghf5aHc8N+ZB171971Fqufps+6dUGxQrnh5MOpuo0OXNe1hS4nksnaRuNgdJPnIh+ZhMQ+Y32nlasPoRaGtx+K5rmAyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7030
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDI5LCAyMDI0IDY6NDMgQU0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAyLzIyXSBk
cm0vaTkxNTogRml4IGludGVsX21vZGVzZXRfcGlwZV9jb25maWdfbGF0ZSgpIGZvcg0KPiBiaWdq
b2luZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZ19sYXRl
KCkgaXMgY2FsbGVkIGFmdGVyIHRoZSBiaWdqb2luZXIgc3RhdGUNCj4gY29weSwgYW5kIGl0IHdp
bGwgYWN0dWFsbHkgbm90IGRvIGFueXRoaW5nIGZvciBiaWdqb2luZXIgc2xhdmVzLiBUaGlzIGNh
biBsZWFkIHRvDQo+IGEgbWlzbWF0Y2hlZCBzdGF0ZSBiZXR3ZWVuIHRoZSBtYXN0ZXIgYW5kIHNs
YXZlLg0KPiANCj4gVGhlIHR3byB0aGluZ3MgdGhhdCB3ZSBkbyBpbiB0aGUgZW5jb2RlciAuY29t
cHV0ZV9jb25maWdfbGF0ZSgpIGhvb2sgYXJlDQo+IG1zdCBtYXN0ZXIgdHJhbnNjb2RlciBhbmQg
cG9ydCBzeW5jIG1hc3RlciB0cmFuc2NvZGVyIGVsZWN0aW9ucy4gU28gaWYgZWl0aGVyDQo+IG9m
IGVpdGhlciBNU1Qgb3IgcG9ydCBzeW5jIGlzIGNvbWJpbmVkIHdpdGggYmlnam9pbmVyIHRoZW4g
d2UgY2FuIHNlZSB0aGUNCj4gbWlzbWF0Y2guDQo+IA0KPiBDdXJyZW50bHkgdGhpcyBwcm9ibGVt
IGlzIG1vcmUgb3IgbGVzcyB0aGVvcmV0aWNhbDsgTVNUK2JpZ2pvaW5lciBoYXMgbm90DQo+IGJl
ZW4gaW1wbGVtZW50ZWQgeWV0LCBhbmQgcG9ydCBzeW5jK2JpZ2pvaW5lciB3b3VsZCByZXF1aXJl
IGEgdGlsZWQgZGlzcGxheQ0KPiB3aXRoID41ayB0aWxlcyAob3IgYSB2ZXJ5IGhpZ2ggZG90Y2xv
Y2sgcGVyIHRpbGUpLiBBbHRob3VnaCB3ZSBkbyBoYXZlDQo+IGttc190aWxlZF9kaXNwbGF5IGlu
IGlndCB3aGljaCBjYW4gZmFrZSBhIHRpbGVkIGRpc3BsYXksIGFuZCB3ZSBjYW4gbm93IGZvcmNl
DQo+IGJpZ2pvaW5lciB2aWEgZGVidWdmcywgc28gaXQgaXMgcG9zc2libGUgdG8gdHJpZ2dlciB0
aGlzIGlmIHlvdSB0cnkgaGFyZCBlbm91Z2guDQo+IA0KPiBSZW9yZGVyIHRoZSBjb2RlIHN1Y2gg
dGhhdCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnX2xhdGUoKSB3aWxsIGJlIGNhbGxlZA0KPiBi
ZWZvcmUgdGhlIGJpZ2pvaW5lciBzdGF0ZSBjb3B5IGhhcHBlbnMgc28gdGhhdCBib3RoIHBpcGVz
IHdpbGwgZW5kIHVwIHdpdGgNCj4gdGhlIHNhbWUgc3RhdGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpBcyB3
ZSBhcmUgYWxyZWFkeSBjYWxsaW5nIG91dCBvbiBub3QgYmVpbmcgYWJsZSB0byBzdXBwb3J0IHBv
cnQgc3luYyArIGJpZ2pvaW5lciAgbm90IGJlaW5nIGFibGUgIHRvIHN1cHBvcnQgYXMgb2Ygbm93
IGluIHRoZSBwYXRjaCAxLCB0aGlzIGNoYW5nZSBsb29rcyBnb29kIHRvIG1lLg0KDQpSZXZpZXdl
ZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQ2
ICsrKysrKysrKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygr
KSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA2MTRlNjA0MjBhMjkuLjA4NzA1MDQyYjRmOCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gQEAgLTQ3NTMsOCArNDc1Myw2IEBAIGludGVsX21vZGVzZXRfcGlwZV9jb25maWdfbGF0ZShz
dHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yOw0KPiAgCWludCBpOw0KPiANCj4gLQlpbnRlbF9iaWdqb2luZXJfYWRq
dXN0X3BpcGVfc3JjKGNydGNfc3RhdGUpOw0KPiAtDQo+ICAJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rv
cl9pbl9zdGF0ZSgmc3RhdGUtPmJhc2UsIGNvbm5lY3RvciwNCj4gIAkJCQkJY29ubl9zdGF0ZSwg
aSkgew0KPiAgCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9DQo+IEBAIC02MjQ4LDI3
ICs2MjQ2LDM3IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX2NvbmZpZyhzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9DQo+
IA0KPiAtCQlpZiAoaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUobmV3X2NydGNfc3RhdGUp
KSB7DQo+IC0JCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBuZXdfY3J0Y19zdGF0ZS0NCj4gPnVh
cGkuZW5hYmxlKTsNCj4gKwkJaWYgKGRybV9XQVJOX09OKCZpOTE1LT5kcm0sDQo+ICtpbnRlbF9j
cnRjX2lzX2JpZ2pvaW5lcl9zbGF2ZShuZXdfY3J0Y19zdGF0ZSkpKQ0KPiAgCQkJY29udGludWU7
DQo+IC0JCX0NCj4gDQo+ICAJCXJldCA9IGludGVsX2NydGNfcHJlcGFyZV9jbGVhcmVkX3N0YXRl
KHN0YXRlLCBjcnRjKTsNCj4gIAkJaWYgKHJldCkNCj4gLQkJCWJyZWFrOw0KPiArCQkJZ290byBm
YWlsOw0KPiANCj4gIAkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlKQ0KPiAgCQkJY29u
dGludWU7DQo+IA0KPiAgCQlyZXQgPSBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0YXRlLCBj
cnRjLCBsaW1pdHMpOw0KPiAgCQlpZiAocmV0KQ0KPiAtCQkJYnJlYWs7DQo+ICsJCQlnb3RvIGZh
aWw7DQo+ICsJfQ0KPiANCj4gLQkJcmV0ID0gaW50ZWxfYXRvbWljX2NoZWNrX2JpZ2pvaW5lcihz
dGF0ZSwgY3J0Yyk7DQo+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUs
IGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ICsJCWlmICghaW50ZWxfY3J0Y19uZWVkc19t
b2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCWlmIChk
cm1fV0FSTl9PTigmaTkxNS0+ZHJtLA0KPiBpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9zbGF2ZShu
ZXdfY3J0Y19zdGF0ZSkpKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJaWYgKCFuZXdfY3J0
Y19zdGF0ZS0+aHcuZW5hYmxlKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJcmV0ID0gaW50
ZWxfbW9kZXNldF9waXBlX2NvbmZpZ19sYXRlKHN0YXRlLCBjcnRjKTsNCj4gIAkJaWYgKHJldCkN
Cj4gLQkJCWJyZWFrOw0KPiArCQkJZ290byBmYWlsOw0KPiAgCX0NCj4gDQo+ICtmYWlsOg0KPiAg
CWlmIChyZXQpDQo+ICAJCSpmYWlsZWRfcGlwZSA9IGNydGMtPnBpcGU7DQo+IA0KPiBAQCAtNjM2
NCwxNiArNjM3MiwyNiBAQCBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsDQo+ICAJaWYgKHJldCkNCj4gIAkJZ290byBmYWlsOw0KPiANCj4gKwlmb3JfZWFjaF9u
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsN
Cj4gKwkJaWYgKCFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKQ0KPiAr
CQkJY29udGludWU7DQo+ICsNCj4gKwkJaWYgKGludGVsX2NydGNfaXNfYmlnam9pbmVyX3NsYXZl
KG5ld19jcnRjX3N0YXRlKSkgew0KPiArCQkJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIG5l
d19jcnRjX3N0YXRlLQ0KPiA+dWFwaS5lbmFibGUpOw0KPiArCQkJY29udGludWU7DQo+ICsJCX0N
Cj4gKw0KPiArCQlyZXQgPSBpbnRlbF9hdG9taWNfY2hlY2tfYmlnam9pbmVyKHN0YXRlLCBjcnRj
KTsNCj4gKwkJaWYgKHJldCkNCj4gKwkJCWdvdG8gZmFpbDsNCj4gKwl9DQo+ICsNCj4gIAlmb3Jf
ZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3Rh
dGUsDQo+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAgCQlpZiAoIWludGVsX2Ny
dGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+
IC0JCWlmIChuZXdfY3J0Y19zdGF0ZS0+aHcuZW5hYmxlKSB7DQo+IC0JCQlyZXQgPSBpbnRlbF9t
b2Rlc2V0X3BpcGVfY29uZmlnX2xhdGUoc3RhdGUsIGNydGMpOw0KPiAtCQkJaWYgKHJldCkNCj4g
LQkJCQlnb3RvIGZhaWw7DQo+IC0JCX0NCj4gKwkJaW50ZWxfYmlnam9pbmVyX2FkanVzdF9waXBl
X3NyYyhuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCQlpbnRlbF9jcnRjX2NoZWNrX2Zhc3RzZXQo
b2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsNCj4gIAl9DQo+IC0tDQo+IDIuNDMuMg0K
DQo=
