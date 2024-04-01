Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE5B89395C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D479710E10C;
	Mon,  1 Apr 2024 09:28:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3uESuql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD0A10E10C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711963699; x=1743499699;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZdxuGXSfd6CA5LPWQOEY5tuVY3rBrREHwrgGHVLLRFc=;
 b=m3uESuqlAJod9iA5GixR53uB8jwozxX0L5coxD7tqegbZ+toWt9p9aWA
 W2JYVRhuRU4DbW6KbivviE0fFxWtPLKwCiZEF+mM9c1nTCT7jYOzK+t0d
 Vd0keNtbFW1zuX6rOBTN6rTRgLxvFA7Hzzt91jGItEDMgYpx8JbsVxzvF
 nBLtFDPxjXXG1iqsoAlSvnIllNPVEWaH2wPlKeLMrCi2erDQxFKS5IDVz
 sirxCFPUOZQVD9tjq+IoF3pphEGEZPMVY03+5ZPabWgTViIWQw2dtHIzj
 CImWgVe3mTVdsGaX9wBI0/Ex+tFlrebnlRGt1nJRJlxpKBxr8c6CXIBiu g==;
X-CSE-ConnectionGUID: 0NIQ1tZBT3qrQ59TOnkNJg==
X-CSE-MsgGUID: pR9cXbGVTTOTaOQvGs4OUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6946903"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6946903"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22116451"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:28:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:28:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:28:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hw4qK5U9QX2wLK8xvtQPLKzf67olOtX0aBcPRiWJNW9hqqELIKpyvN6ool4PHcXHGxQOF6UkgFKfA3FNp6HosRarHOdcEhp3ZwyHVZL8fqQPnGWZtni2nTwXvhObwuz0I6NTmCF6R0t2Jl+srNsV9oz/junwciWEoFrN+BB2mkMNGAiN7SrfZ4aPSZlbvPk4URM5MPahzvIrFgQlgP4oRnqFCSZnkhWjw+hQza40S/qAswpDIU4VqWWt5g9ordjKGXQofXo3zLwy8xW2MyaEPQ06iWNBnyQTYGoWi1SrcuTVvkWwAoZBe/kkNLyZrsTz29QX3iQNdQhUDp/t/s4Oxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZdxuGXSfd6CA5LPWQOEY5tuVY3rBrREHwrgGHVLLRFc=;
 b=WI5/ro6eA7SwnuZWNuEUAcO+B/EgvLwPo31xlDVVVLLyfSgMvd3k0Ierh4oRcuADOMRifY/5rrwGjZ3GsAjEQySykn9vQiFrSpiHAWiSzZCh5rTTcd0yD4Iv+sRdMKiqC1xydipTecAvDpZaO+6vcy7mDb2xp/fgLKO6GbrUB8+ctGiuqXtkB8Q2dBcVcuAhFLtR5WZ+jz97rjF6TBTvCY38DILwJnjQnk3uTxBj4XrY2/XPMEL0sZgdubE9z7tb1NgivwDvctbw7FPI1VC5K9sYqfHXb6AOc6jljfWeGH81Nm5TulJruT1Nl4naYJIN4sGf0uHn88PHEva0quT8CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Mon, 1 Apr 2024 09:28:15 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:28:15 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 11/22] drm/i915/mst: Check intel_dp_joiner_needs_dsc()
Thread-Topic: [PATCH 11/22] drm/i915/mst: Check intel_dp_joiner_needs_dsc()
Thread-Index: AQHagXZacvwQyffeMEWC+w8lpqhJH7FTKkNQ
Date: Mon, 1 Apr 2024 09:28:15 +0000
Message-ID: <DM4PR11MB636030470E994C5470EF9499F43F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH0PR11MB8165:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yJ+y/NDjOF/iZYsaYgWXL/QU+PwTQWNzi6shhINfvzp8jC1EBEGBcLRNrhMKAAeDAPXj1dScGfqZYfQUo7j14rEHNewcRXHHwK1z3IN8/0iVbyWbj7x46fndKqPwi+pj7nvmxf35IdM7/xmN7ZT/AxR4Qh45h7OxFakilU03XtLMq9aMkPIG7bbU5/rwRWX9iZvNx1NNVLHa7t0H2gROQB7PuhiT6jrkbGlrx9sPN3b2N//lrmmZ3vfM4nuN3a3VuZYAHA2hOXxprzRkpo5WDfEo1ILgnkp95IWoSlpfHlqrrp4uNTdGnyKPD4FIjL5BY/aAWfYk5OqEAhxDNPhoww7xOeJCrqg8mFS08xRSg5wFaJG86lMkW2s9RVfZyrLQuNax9mzihF/yDEGwm6vi+3/z98+yZUZ0uLYQ4YIEtM0m4He47XruUeX7B50UyS6RoDhBEbYTJjwz9/lhX0cBF60/q4FdKsCYkKaZzDL0gIiOR1JmTBd09Az75JCMgSWHyYLw+Xm+kP+CH4YBUkiCVZXSFTZSE9aPoX7gqanSC/PS7Euwr3B7apSczw0B60cah9snNsUAry1lFOGwAEXK6wYqhTKN6ocwuGj8sajuEDr/WPGkRqhFfOfm5yawnoV6rHIZxz6eLk6bqnzmADCXznxxoB7DbqPa8JKH5Hu2EN4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVJNVTR2K2pkSGRlSEdiSnh5M0MySFI4SEFROGM1VWJUQ3NlUGxZZThGeWtY?=
 =?utf-8?B?eFBTMTRFOVBOb2s0STQwUkNtOXJ6aWtBQXJpdzVzOCtwdDViOElyd0ZJY2tq?=
 =?utf-8?B?dzd0VzMvTWRLaUpSYVlCNDVWSm1nM0o1RFh5ZE03aEJhMDRQRUx3Tkt4ejZa?=
 =?utf-8?B?WVA5NHVGdTlXZ3FBQ1BOQ3BiV2pPQnJlMjV2aVQ3ZWpQRGtrdllRRElLWkEy?=
 =?utf-8?B?N2tmbm5UckRLOXpDUStoMmU1UmgvRUtTUUJDd0tqY1pUM1c3SDdpTGtOUk8z?=
 =?utf-8?B?UDV0SHA3YUt1VXN0RmlpVHlHWE9nbkRyd1lUNTlnMjErTUdzL25VT1ZqWXhH?=
 =?utf-8?B?N0tMd3ljVW1WNTdOWVgvS2FRYUZiS3F6azJUN3h2MTdzQ0ZpaHR6cWdSclVi?=
 =?utf-8?B?OWY5ZlViTTNkODVhWlQxekVsNlNRZFZRRFFzT21MVnhTNjN1UEg0UE1nVUVJ?=
 =?utf-8?B?djJ1U2JpTkttS2daeHNpc3oxRDQxU1BDNjMzTU1LSnBxdGRuWWsrdVN2aFVq?=
 =?utf-8?B?d1czM2RmUk9MRGNKUG9jdjdQQmhPS3VlZU5aNzJuS1NFbmY5UldoYUY0Rysy?=
 =?utf-8?B?ZVJwcmJEbmsxQXdMcytVUUF5ZFU2WUVzZFR0a3V4Z0crbnhIU2Z6eS9EcjVP?=
 =?utf-8?B?bFQ2eG1JV0IrV0JxQWQ5cmlqd2RXY3h0T1hrU1NoaUhrMFc1QTFIRndsRHB6?=
 =?utf-8?B?OWxubWxDa3BDMkhSZEFkcytXNHdUMUVIeU10cW1aNlkrdTI0NDRqVVpZc3FX?=
 =?utf-8?B?VFlVbXN0bkRTc3NnSGMweTJxOEFPVFZ2aXlpcTk1YlZlRU1WM0FVL2JUZHh6?=
 =?utf-8?B?dzNSTnlnclpZVmxWOFN5b2ZHMmVScDZkV2czSFlOeGxlb3ZPSWFWVnRjNmo2?=
 =?utf-8?B?WFFlTDE0R1BsNmFTRGYwMUNEY2RnMS9XSmhrSC82dUJhSERVdThoSXg4bzEz?=
 =?utf-8?B?bGZLemorK2VVanpyVEVBZC9WNWFGQnp1eXNjSlFLU3g0NVp1QVJNK3R6bWpO?=
 =?utf-8?B?S2JralpMTlZHcnk3eVRyVnZaeWtGdkJ6L1RTMDZoRVUvTDQvTHVwaFN1dVhU?=
 =?utf-8?B?ZmVoejNQbzFNcnRiMEN1bmZleVpuVnJ4WmpMZTBPM3IxRElmcGt5aEx4TnNC?=
 =?utf-8?B?eVREQUZua1pjT1FkdDBEK0J4dWxCaGZ3YUljRUVxcnJ0Rkk4ZlI5NFE5eTZB?=
 =?utf-8?B?QVd6SjMzWk8vWFJJTGZjdmVoUXBEWEhLRzNuc1YxRVovZzZOSUtmUEFiMnNw?=
 =?utf-8?B?eHBaMGN0UmY0OEYrTE10TTlkR0NQd2k1RnZCQVU3dDcrNjB6ek55c0lNQXVE?=
 =?utf-8?B?cGw2c2tMNmorRWxRMnNISGtuVURoUi9HUmFBbncwTTY0QTViaDVyQTVWbTdJ?=
 =?utf-8?B?dElKQUZ5Zzloa1pLK05tU1JISkE1RmJBVHZ6Vy8xS2VWWlgyY2llK3hUU0hy?=
 =?utf-8?B?VlBHRnhZaXREMWhIWkxqeFlQRTNwL0dRY1BoOUJZZ0JOVlpNMU1XcjB3VTVV?=
 =?utf-8?B?eGlWWVRlYjhzSDF2U0xwTEpTMW5yNlpsUlg2cEd1ZEc2WFBQZVZnV0MxZGND?=
 =?utf-8?B?a280bEFpRFNCYTJWNHlXalpRYnJUaEhXMTRBUmpRNm5oUld0TGZzMld4TVhJ?=
 =?utf-8?B?Tm5tcHNaSThSOWZITDRMREJWdjFHZW5vUG9DS3crNVYvUmJ1TGN3MzRXcGgr?=
 =?utf-8?B?clJoL1VJN29nT2ovbDlzQnJRcmR5bDdaZm8rNEZYSktYRnJDNWtFL0VKS21R?=
 =?utf-8?B?Wi9TUjBPUVdHLzhHaTBmRTdYbWtMU2hLa2M5N1VxQkhZU3IvSFNER3o2ZFor?=
 =?utf-8?B?dU9hY3pQeTlhTW9POFd6bHpqTXdsZXRmeVg0MXBMb2p0a2ViUUxzOC9xeHpL?=
 =?utf-8?B?czFLZm9CRTY2aGhYQ2c1MGRGWmpPRGhrNStjaytwa1psYnozN2RMT0dEWHl2?=
 =?utf-8?B?VW5wOW5BUVAzcGVUdzVSTkQzbW81d05reGluWW5YU2hHcHp4SlM3VTEvZm1Z?=
 =?utf-8?B?ekorNGFjUDZubEY1K0RiUEtIQXYrK2g3b2xQMVJEeWk4djRMMlo4cW03RnBH?=
 =?utf-8?B?NndvN281dTcza3JzZkhuNzB4Y21OelpQUnVrZVdwR2pWSHJTaHBxL1JORWw4?=
 =?utf-8?Q?a16tuMG6LvL42nkYurAegpLHz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1be2da62-fa7c-4a03-10f2-08dc522e0ef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:28:15.1952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hyKfmx4ZJzCiFattM0LxZwU2hnU3l4U00uqFNKs2CwWI0ZL4lglJNQYZFokvynSaXYKHJixVGLsIkyCnDn9zxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjksIDIwMjQgNjo0MyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTEvMjJd
IGRybS9pOTE1L21zdDogQ2hlY2sgaW50ZWxfZHBfam9pbmVyX25lZWRzX2RzYygpDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnKCkgaXMgbWlzc2luZyB0aGUgImRvZXMgdGhl
IGpvaW5lciBuZWVkIERTQz8iIGNoZWNrDQo+IGRlc3BpdGUgY2xhaW1pbmcgdG8gaGF2ZSBhIGxv
dCBvZiBvdGhlciBqb2luZXIvZHNjIHN0dWZmIGluIHRoZXJlIChhbGJlaXQgZGlzYWJsZWQpLg0K
PiBSZXBsaWNhdGUgdGhlIGxvZ2ljIGZyb20gdGhlIFNTVCBzaWRlLg0KPiANCj4gVE9ETzogcmVm
YWN0b3IgYWxsIHRoaXMgZHVwbGljYXRlZCBjb2RlIQ0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2
aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwg
MTAgKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYw0KPiBpbmRleCA2ZGEwMzFmOTcyNGQuLjFjZjYyNDFhN2Q1MyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC01MzIsNyAr
NTMyLDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKmFkanVzdGVkX21vZGUgPQ0KPiAgCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7
DQo+ICAJc3RydWN0IGxpbmtfY29uZmlnX2xpbWl0cyBsaW1pdHM7DQo+IC0JYm9vbCBkc2NfbmVl
ZGVkOw0KPiArCWJvb2wgZHNjX25lZWRlZCwgam9pbmVyX25lZWRzX2RzYzsNCj4gIAlpbnQgcmV0
ID0gMDsNCj4gDQo+ICAJaWYgKHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlICYmDQo+IEBAIC01NDYs
NyArNTQ2LDkgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0
DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJcGlwZV9jb25maWctPm91dHB1dF9mb3Jt
YXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsNCj4gIAlwaXBlX2NvbmZpZy0+aGFzX3BjaF9l
bmNvZGVyID0gZmFsc2U7DQo+IA0KPiAtCWRzY19uZWVkZWQgPSBpbnRlbF9kcC0+Zm9yY2VfZHNj
X2VuIHx8DQo+ICsJam9pbmVyX25lZWRzX2RzYyA9IGludGVsX2RwX2pvaW5lcl9uZWVkc19kc2Mo
ZGV2X3ByaXYsDQo+ICtwaXBlX2NvbmZpZy0+Ymlnam9pbmVyX3BpcGVzKTsNCj4gKw0KPiArCWRz
Y19uZWVkZWQgPSBqb2luZXJfbmVlZHNfZHNjIHx8IGludGVsX2RwLT5mb3JjZV9kc2NfZW4gfHwN
Cj4gIAkJICAgICAhaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnX2xpbWl0cyhpbnRlbF9kcCwN
Cj4gIAkJCQkJCQkgY29ubmVjdG9yLA0KPiAgCQkJCQkJCSBwaXBlX2NvbmZpZywNCj4gQEAgLTU2
Niw4ICs1NjgsOCBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gDQo+ICAJLyogZW5hYmxlIGNvbXByZXNz
aW9uIGlmIHRoZSBtb2RlIGRvZXNuJ3QgZml0IGF2YWlsYWJsZSBCVyAqLw0KPiAgCWlmIChkc2Nf
bmVlZGVkKSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiVHJ5IERTQyAoZmFs
bGJhY2s9JXMsDQo+IGZvcmNlPSVzKVxuIiwNCj4gLQkJCSAgICBzdHJfeWVzX25vKHJldCksDQo+
ICsJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiVHJ5IERTQyAoZmFsbGJhY2s9JXMsDQo+
IGpvaW5lcj0lcywgZm9yY2U9JXMpXG4iLA0KPiArCQkJICAgIHN0cl95ZXNfbm8ocmV0KSwgc3Ry
X3llc19ubyhqb2luZXJfbmVlZHNfZHNjKSwNCj4gIAkJCSAgICBzdHJfeWVzX25vKGludGVsX2Rw
LT5mb3JjZV9kc2NfZW4pKTsNCj4gDQo+ICAJCWlmICghaW50ZWxfZHBfbXN0X2RzY19zb3VyY2Vf
c3VwcG9ydChwaXBlX2NvbmZpZykpDQo+IC0tDQo+IDIuNDMuMg0KDQo=
