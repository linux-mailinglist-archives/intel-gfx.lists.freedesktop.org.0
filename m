Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E13893A31
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8E710E9D9;
	Mon,  1 Apr 2024 10:32:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OUDt/ry9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE2A810E579
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711967563; x=1743503563;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+NtVSQNzzaU5/Zem30bG17++dF7cD434LtHYiULfil8=;
 b=OUDt/ry9RHMEosmbr6FgfCy64CjdcRl7sJI7wstq38wYKUQTf9egsskH
 +jssmqxzmI/5JJ/+mEE/GeHocKm58aOHGSs1aUubqQEg0GbnsWwZCpdvy
 4KTr18UbWm7KBUavqpJ4isgUThR9amgeWFNd51iX/c7bZ19NjLA0xcurv
 CIVEUagQAR6kPVd0jd4gXGsJo7YPR7pnHztkYW2rltHJsqFil5QrwTF1F
 RYP9wK4fZT7RpWqYATFvHJC5MRNKZ2AR5lnBCfYNWs/JqiuvinKqeh5e6
 Dg+u8XqZTy26p8lc+h1DsTwMBcKAaav42hiGu1WcHnivKKhb0nrCCfarl A==;
X-CSE-ConnectionGUID: vndZp0WaQLe6awv71ys2Fg==
X-CSE-MsgGUID: V5gscXSbSU+3T+oTkbutLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7299477"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7299477"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18077763"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:32:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:32:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:32:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:32:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFWCavEhMllPKRKcVPK3xRjKntG2wwyS1reXNNmysKnkX1XT7U4KN3hRW0h0xlYYBCEAcuw5DdllGHEF6p49veZeykgg/22Rd5otVTGLEqzo+PMB8/vqVyPX1izST1PGWEAb0UAYbWcgo/R+zxN2DrGX5dqa7dzH2Ou8RMiTfoo+pi6DhAzzCb1ToKfDaoaWDfL3aLGefYD0EWbsfrx7n5dSym+TLafkVFA5IIbANDikGyV0/cEzctwQ9WTIL09wRKs09VQ/OMTBkFDyfgh9TTZnve2OMfvmr2A+8k2HIfVu7/05zID4j/CJ4AJ4NJYgzcNwkN23MRC3xT7jn7aFLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+NtVSQNzzaU5/Zem30bG17++dF7cD434LtHYiULfil8=;
 b=h+mo1uo61fDZIJsrIkaAkBw3I09kAVSF1ZJyXTvGCjREvdb1eQLIHHDfipfPm1ru+1o2pjc4aOGzZyYTbpWeMGCMStlTZYZqF5ZYCAK3KQTujmhwejTj6UZibESDsm8xAuNZhm5jt5bFfBKElDdF5LqsIHZV1kpVjUMgaZZEmreCDPUBCTLwE+Zcj5KsUXtgaQd8tYkkCiQYhgIzYE3jwRtvPX20D11gGHOYRr9GL50bnDU0HYmAu+OzaNhFb6osV6OLd1BT1RM8tEFNz4bcQ58Hbn07zm1hY02I1GLTsKDidIOXvh66aOXL24aGEY9hXH1HqEy+Q+GZ1cxKJvvSjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB7179.namprd11.prod.outlook.com (2603:10b6:610:142::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Mon, 1 Apr
 2024 10:32:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:32:29 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 03/22] drm/i915: Disable live M/N updates when using
 bigjoiner
Thread-Topic: [PATCH 03/22] drm/i915: Disable live M/N updates when using
 bigjoiner
Thread-Index: AQHagXZM2/2BQTyU2EiZBchS7ZlwbrFTObPQ
Date: Mon, 1 Apr 2024 10:32:29 +0000
Message-ID: <IA0PR11MB730774889971AF284400D117BA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB7179:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eG0WIgTLIyEzbcFEOF0PXYNWYaDWXKxfNphzg9H6mOkVNeTFL76B0pUhYo6MUM24bkmB372Zvqg7KxjayqJ55KPXbcGQfC52fOIxE7arY7N0vJNdw1rpmlEEccXyR02iOfV4mt3VWjrH0J7n52WUG9xGf8un7VSTxtPIDeI73paNrAMmZpxXcaLrSDkbnnXBJcqM2UOa0S2gLPOgLxVWMIrN4KwYaZgDvD4IkP2NPhtvhcINcejjZj86+TC1ap3cWdjGpzPYMDMsMKJ1Tn9gx3RBufs1slkMocgcDyBOlXi2OXa8w0kp4RDTUGfJuNJ+RYa0PJJPSirJbHxrgX/axH4oULM0+zj7mkJFEcwkN9rUtMpRE/9Rk9RHp7Ac5EmkBzjcPBS1sGoBCC3xhJ1duQ/rR9+4aobHtnCzZXceVNNTAFq/ODcavwCyA+BEgmsISAYyc5gbGUNA/QFsx6AXGaaDkzCuuGKWZnvZR+sp5mv7dIsUd7kxfmpekFxJTXdSpCaKJ8AunicPBivffmpCcOT+vXQ6bzU9uC1Ma1dMNfNrdi3BAzdSZVxYunj/FfSeY+lRYN7WZd+TsHWH8WRzcmI5XrYx2FKjybjrNa6KZyW8sIPsfyMsz2RUr81gSFP15hpz2rpHMWs8DstPe9Z56U6hhlKWVK79DK3f4V3PqCM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnJESVhpNnVUamw5RGcvcWJwMWZzZktPMlF6Z09CTjJhSHVBR1lCdkNJQjh3?=
 =?utf-8?B?VFU1YXZIRFpFbWtlaFUxNUZsUHljdHpEOGlYc1k5R01yOUt4MmdEa3ZPMWxp?=
 =?utf-8?B?clhZRVdvOEJkSXRJQkU5K1hxeDJ6ckxCL2dWenNxU21YTWlPR2czblBTV0dk?=
 =?utf-8?B?ckNvNmMrL0ZCbyttWUVUOWJSS3psUjJxNWc4RS91UmYyL25iUCtzN1VDRE5H?=
 =?utf-8?B?d0xQckZuZXE3Vy9IT2RDNUxybDZCTzR6NTNub0pVNUtTVkhJTFdZNitGZ0VX?=
 =?utf-8?B?MTM4Z1NPY2R4eVNPOEpNbWlWckRxMkhoUFFNcTBzY00weUg4Sk85d2xGazZi?=
 =?utf-8?B?UUJIM1pNTDNuaE9nWXlLN09tc3BTQXMxZXVNSDJzQWJHRWljeDM4TWI4YnhO?=
 =?utf-8?B?RVA4TUtHWjUvQWZoUXdHSjIweTdiN1A5dzVTTk9JajBxZG5jRU5pcnBPd0hK?=
 =?utf-8?B?dlltUXJRYXhzbE12NWdiTFovZzdzVVF4MmpKWFk4N3pSVkhKZWpLaVZNVmgv?=
 =?utf-8?B?Q2E2SXJUbjVCRDY5RkxsZ21uZWh0UUJlRmlESUFBazA0VXNnSUxLNXhYSHQr?=
 =?utf-8?B?bCtSOTdKbkZ2RUw3L3NtSVkyVXN5enE0YXhjOWlqaWlqNlM2RzBCeTNpSSsz?=
 =?utf-8?B?L0pvMHREZVdFb3FTbDUvYkwrN0VvSXU2MFhOU0hhY1cwcmhMbXdXaHE1eVli?=
 =?utf-8?B?Sm1lZFJRTGM3eVdVcmcwd2ZOSksrUThoVDI0WkhMN3QraElOOXdxazYxRlM5?=
 =?utf-8?B?TzhnUllQSnRYWStGaHZsWDZBdHB4SHVwSUQ3Wm5ZYm1xQUNuTDZ1WUhCd2k5?=
 =?utf-8?B?SDM2d1lJY0FJN3d2U0k4M2twckdsQTlSTnNwa3ZIQ1ZaWVBpSFhYVEJmT050?=
 =?utf-8?B?aDkrd0l6TDRiVjlCd2VkZWNjc3lYVmhtdTM3cWpGWm9ibzkxTjVKRDRMV1Z1?=
 =?utf-8?B?SWtwOFowTmFnNnNuQjZMQzdVSE5vaVhSa3VCRi9pM1RRdGFob3NTb2Z5MzA5?=
 =?utf-8?B?TkNkZ09tUmYrVW14QUg5UU5veUJNTmpVNG9RZ0YvQUgraTNqcGg1VWc2OU5B?=
 =?utf-8?B?aXFSSlFFQmlLWHcvRVJYUzhlMjRwbXYyUnR1bnNqckFDdmV4QXI0cDAvbG5w?=
 =?utf-8?B?Tklxa2pEcmlLRXdEbmlTTHJzRGdzQTNTOTVENVNGMStNeGtmejE2U2N3U1hC?=
 =?utf-8?B?RDhIVGhFSndQb0ZjandRaXk4ZkhrOGFRWnRxUVlaakNQalQ1K0huRGFwQW4v?=
 =?utf-8?B?U3g5a28yajlpbGQyUjNlZlR2RXFkNkpEaUp1USs3S0c1R2FieGZyazRid1Bv?=
 =?utf-8?B?VHVwNFlJUHV2WHpQT1g5anR3QUxwWW9YaTlvTzEwUFJBaFJpYXRIMkFIcy9C?=
 =?utf-8?B?Y25pbVcwVVJUdFlGSng5ekxiMjlSZ1FDWDhaMXFndERnd0loKzNaN0FMUVJr?=
 =?utf-8?B?MStmOG5UK3dVQmFKM3ArS1BhV3lHUzZ4UlpoN2VjOVdvL0pZekxEanJXNTBw?=
 =?utf-8?B?M0RkVk1KK0gyUWZkZ2szRlU3VU16bVNyL2sxR1RycEhNTnkwVExLWGRHcnoy?=
 =?utf-8?B?OG4wY3krb2NUVXZFWTRheVpHVmRMVXlZVEtjOGlabE44bXRsN2tVWU5ZTUMy?=
 =?utf-8?B?S1cyZG5rbjdvZkpsVG5zeHRoVzdibXVkK1cydU0zalE1ZFhqQkFja3IzL2Fh?=
 =?utf-8?B?N29DQnZUY3o1TDF4UnBzTDJyRDh5eVVKNjdaYUVhSGRIQzRSQkdvRmFoUXBB?=
 =?utf-8?B?R0ZDQThBWnBXMG1qWmtoODN3Y21YQ1lVMTFwNm9ZZXVZSVIxZ3A2WUI0THJ0?=
 =?utf-8?B?aXNlZjgwQkxKN3NJVHJPRnB0Q0JuQ0R4RFZBTDQ1RjRhYjJTc1lFWmgyMjZu?=
 =?utf-8?B?QXk5c2Vqd3hib3lZWmU3aGJINnkyd01QcndWZ1ZpVU9UdnBUbHJSaElPT3hs?=
 =?utf-8?B?N3JiV2FDL0JlRWcyMTdQd3BlcWhoa1VteDVKZDRidXpPVE5QSmk0UmpKcXhr?=
 =?utf-8?B?TzFzbEhmdWR5RDJvaFlMejNXZjFHbWt6NHVlL3dXdDRLUXhIbFhWcWpLTVdV?=
 =?utf-8?B?aXJxcm0xUVVSMW1LbFZOTjMzVk5ybnAyTWxWQThPT0J5NzFReEZLenJjb09h?=
 =?utf-8?B?K0xjYnN2WXp5eVlCTUZ5emNPSnlGUTNGc01ETEFnZTMwWldReTgzcENVUFJG?=
 =?utf-8?Q?XPX37zd16h8w+xojB3aNW5fpOSm1ut29NZBxItDRnpSW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e098ba-751b-4890-a360-08dc52370808
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:32:29.0978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eevc25kLKKXYJ6SOo2dUOLNLC+DW/4AD09XXa3PIoJsxw16C0Jh7/Ayb9VYb7C5slpbZV+UlscyfPIEaK4DUEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7179
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
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAzLzIyXSBk
cm0vaTkxNTogRGlzYWJsZSBsaXZlIE0vTiB1cGRhdGVzIHdoZW4gdXNpbmcNCj4gYmlnam9pbmVy
DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiANCj4gQWxsIGpvaW5lZCBwaXBlcyBzaGFyZSB0aGUgc2FtZSB0cmFuc2NvZGVyL3Rp
bWluZyBnZW5lcmF0b3IuDQo+IEN1cnJlbnRseSB3ZSBqdXN0IGRvIHRoZSBjb21taXRzIHBlci1w
aXBlLCB3aGljaCBkb2Vzbid0IHJlYWxseSB3b3JrIGlmIHdlIG5lZWQNCj4gdG8gY2hhbmdlIHRo
ZSB0aW1pbmdzIGF0IHRoZSBzYW1lIHRpbWUuIEZvciBub3cganVzdCBkaXNhYmxlIGxpdmUgTS9O
IHVwZGF0ZXMNCj4gd2hlbiBiaWdqb2luZXIgaXMgbmVlZGVkLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NClJldmll
d2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhhbmtz
IGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA2ICsrKysrLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBmNzU1ZmQ5
NzRkYTIuLmJjOWQ2ZWZjOTllZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBAQCAtMjcxOSw3ICsyNzE5LDExIEBAIGludGVsX2RwX2RycnNfY29tcHV0
ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCQlpbnRl
bF9wYW5lbF9kb3duY2xvY2tfbW9kZShjb25uZWN0b3IsICZwaXBlX2NvbmZpZy0NCj4gPmh3LmFk
anVzdGVkX21vZGUpOw0KPiAgCWludCBwaXhlbF9jbG9jazsNCj4gDQo+IC0JaWYgKGhhc19zZWFt
bGVzc19tX24oY29ubmVjdG9yKSkNCj4gKwkvKg0KPiArCSAqIEZJWE1FIGFsbCBqb2luZWQgcGlw
ZXMgc2hhcmUgdGhlIHNhbWUgdHJhbnNjb2Rlci4NCj4gKwkgKiBOZWVkIHRvIGFjY291bnQgZm9y
IHRoYXQgd2hlbiB1cGRhdGluZyBNL04gbGl2ZS4NCj4gKwkgKi8NCj4gKwlpZiAoaGFzX3NlYW1s
ZXNzX21fbihjb25uZWN0b3IpICYmICFwaXBlX2NvbmZpZy0+Ymlnam9pbmVyX3BpcGVzKQ0KPiAg
CQlwaXBlX2NvbmZpZy0+dXBkYXRlX21fbiA9IHRydWU7DQo+IA0KPiAgCWlmICghY2FuX2VuYWJs
ZV9kcnJzKGNvbm5lY3RvciwgcGlwZV9jb25maWcsIGRvd25jbG9ja19tb2RlKSkgew0KPiAtLQ0K
PiAyLjQzLjINCg0K
