Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B5688FE5B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB5A1123E0;
	Thu, 28 Mar 2024 11:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gj6mr1KU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D6131123E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711626680; x=1743162680;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YciKLkmqntza7NJu5a0XDztQxrsGdH4iPk2vN4OLmI0=;
 b=gj6mr1KUNizOuQeIWZQYd8VLmhhzmQAELWFyYFTSUT4f8jjyEku8YdGJ
 kKt+Qynsji4/mF4kmLzVZZwC+XQoUoGvZLFa/2vF3UxOt140JxNE0pI/Y
 GOK/UfCzyjJp0JgyN7QrOrJFhIOnivtojmOoe2BE0GTZeKdDDUeRh3Qr5
 ig/4gHMNyBI/fMdTzm4KAMX2u/9tcZp4BbpeJSTUPKVHm/YDYn9CHMxyv
 9UPKeaGs4keJL8x9ODkopc+ZWx2rMJgPVkraHobVpfUiOlyg19HW2mUo0
 e5X1uufk2aelIOaE5ltOeLViSKIi8a0muREFFlZwqVV19Zrt7GT1dUcUC w==;
X-CSE-ConnectionGUID: NgJ28TFsSnuIqT+IIGBLlQ==
X-CSE-MsgGUID: hABBJ/Q6TfK8EA0qtbDT/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6991239"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6991239"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:51:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="39757408"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:51:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:51:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:51:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:51:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:51:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHl/bzCqHflX14bizvey7mlkZJcvtAZPys7YFuGGKmJCXq78hHOhhE+vMoFMuOKlnKKm9qJ30S2dVG/szi/ESthZ9NgmaHU1Wqx7fpwki3ST37tPNirL1SQbYau2nVdHGv6VI9L3aeNJ0EfKF4ElxA1zfHd7F98HAHAErKlSJiFcRGxevoaptRPGuhpsrj2A1FHbygm5zl03oeqfI+rTCrdlxmfrZ6OwJDBBvlcr4X7UlsHqNaSP69Vor7jdo+UFE4UHo4yrzhG78cyrARpwPiXxC/q0Ou3kWjqrtHijO4diOnDUk1jOdVYChiEowu84sg80b0mBi6aeHcZrJBGaAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YciKLkmqntza7NJu5a0XDztQxrsGdH4iPk2vN4OLmI0=;
 b=nCqYha6Y0F8tHYQFtXuLCO60yvCzmJdb2p69jiYf1BxyVQS1W14Qy+u79nVMGsQyz85e2VbpsvTS4s1iXZCMZAvyhNZ66wqkIJ2omOzYd0wJUnnp2DGiUN5pXk7YK2xaCF/5JG8/tQ3D5IpxL/iBNX5pvDwzROXGHecajppnOzNCnl2CN0jH1nXKPtF84AgSivx+9lWWS2Munf5A17YToNS7HR8UUz2KWQgJ+mjSdWa7CNqndf0xuwUbDjTnJLSyZ1L9Qx5Dthy6NtpMMOtf+dVHVQJCt5Y5NxscxVWqQjOVJctFkjE4rNIHUagRjOywMcoElrUFzQCDdsc9lfUD8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 11:51:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:51:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 04/13] drm/i915/cdclk: Indicate whether CDCLK change
 happens during pre or post plane update
Thread-Topic: [PATCH 04/13] drm/i915/cdclk: Indicate whether CDCLK change
 happens during pre or post plane update
Thread-Index: AQHagG6rxLBWNFoWUU2ozYr1Z6wiE7FNC2bQ
Date: Thu, 28 Mar 2024 11:51:16 +0000
Message-ID: <DM4PR11MB6360B26D4AEF7CA0BBC92518F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7958:EE_
x-ms-office365-filtering-correlation-id: b071bc61-f3a2-4ae3-7225-08dc4f1d6044
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KDOFBQPkiFcKurlP3dR06RQeFO77mq+/r9SGJSIUc5Uv6QvM9Bsy5ZrTGsHqyssoFR3NDWAEl8/qZ+L7AKOZZw9C+1YSDmKqACy9lt9ys18C30dexdCw/bIqpZzaj8n+Tr27/UQrMEa93zGNK1+kf4X1ucAB2xZyrmeSKgX+829JUEjw//X1SI3wgW/rKhBqY8e3qH55P2IeU2sWQ01GWS/wmevVE1jGx5nDiFtXTQuyznXYgXj8qHZV3G/7rXgqV/wVdNduQa0C1Bl08iIgSpm7tXVxN0jKUANB2SfJZFpPRSNBHNC+3esDIUOL/cNJREXDcLMK9Vb/Rere46iqTRowwpSeesZbaAn4WqHADZV4pryD6DZE0p4gPGsvslDY7ong/Dj2quwS2VP/zp4Th7sORIUH42zm6AnyQfwDQeh4Fem3MUTd7miNcTLnNnhQs8gebW+ND9JxqA4VnRV8DQjuKgCBkkJJo67WcJfQBA3AB2nWJA3teY9K8DTZfLw3xNQfGm7o45zYLSwDQ/kc/VZKK+6RYa9fPpFdIGsUYdmoSHgWYh2tb3yJ0V0TgT9bYfM/Hen/p6CzQU95Rjyvt26vww66nZoQuzY3R3PEuUtzisaUhcIVeIYlfJPef7x3A4hs/35+0EIqZeomyIPeWzPoYPiBuUMhOA3HHl1OLfiwr961M6zhZtsYnylnHKNvSAWoNZA65svQCdjOXsolkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUVTWmFsSEVBNjBMVXpJeXU4ZXQ5ZnptRENGWWVWSnNzMTllUHl4S0YzTVlv?=
 =?utf-8?B?Z1gvbWh4b0NTNkpjYUlkQUVXWFJsaHBJL3FjRmIvdXFmclpFcWxUSXVScG8w?=
 =?utf-8?B?cHc3bGVJTHJIOGFVNFhZRUpBQkFyZ1JNMHFmRmNNYmlBN3dIM3VmczhRWWdl?=
 =?utf-8?B?RUVUdnpIczNpZjlHQ2s1WGNFSVBVbjJJZUtrMVc0clYrb1poanVMZHFUWjU2?=
 =?utf-8?B?WlJhYU5VdXNzT1E1T1Q0dDlzYnpBMk9sRmRtRmNoYlBUNmZmWjFnb1ZLTCti?=
 =?utf-8?B?RFU0Z3RTQ0J1dnhJS2k0SFU5dklPWVFCaGFQNzR5TWpDbWhobTcwNlYzenps?=
 =?utf-8?B?bUtmS3k4TWxyY01JT3hIUnJoVFU1bXpXTDZYa1piZkNueS9xRklia1A0elVa?=
 =?utf-8?B?eGlPazAxMjZNTitCZVFpQURhWmNrdXVpREJIQXE3WkNmYUlDeHFKbzk2Y3Q5?=
 =?utf-8?B?QU1zRGpNNEozR0Mzbm9CT3hjZHlQU3FvaUVBaWFZeThRdkFUMEJCdGJiN3p1?=
 =?utf-8?B?bm1zZFBtc0pMbzZERHZtOGpPV25hdk92Sk9Ca2xpYi90blhIZ0xjcUJDZEVl?=
 =?utf-8?B?aHhDeW5sazMzdFVTVGtOSFRuZTdvbGFmL09JeGhoY2Yra3ZVZjQxallUZHF4?=
 =?utf-8?B?L3FScHRvdG53T1hrL2RHL0EvYkRYVFJySzBjZU91cUdnQVhoODVIeWlKTm5O?=
 =?utf-8?B?ZTdEa0F3N3NNNmlTeEM5ZHBLNTVlUVhGSjkyYUpKOFdDZElWclliNy9yNDVD?=
 =?utf-8?B?MFRZaFlqV0hLeXJ1ckxSQU9peHJxUmNFR1hHM3ZwRHU5eW81NHNaWk1IVTdy?=
 =?utf-8?B?empHcGhiUEh1bjBFSnIzSVBITFRNNmdPc3FYclBpYXVTY0ovaStQZy9mcUJ1?=
 =?utf-8?B?d0lFb1dOc0Z5THp1Y0d2UGhQYjdtRkQvV2h0aHhvOHZrUGlGTytZQ09tOG92?=
 =?utf-8?B?VTJ4dnNRUHZjZDJ4WHFRY2JxMTNqQTVIWlJmYXlyMXk4czArY2J0a0RYZ3U3?=
 =?utf-8?B?YVQ5R3habDJxNkVwakUvREtpSHpndldmUnN0ZEFxd29zSXBRQUY5MUZxN2h3?=
 =?utf-8?B?TmhzWlZuU0hEaU9ZTjhUV3M5eExtRXNnYldiZHRkMUZwSWxKRDdqU21iYnBF?=
 =?utf-8?B?ZzNVR0lPTk9hSEo0Z0hReVZ5djlhVEVKRUhBRjZucFdWSlpFTVRMR09tSExv?=
 =?utf-8?B?VFJBaDdDLzNiRGhxRUsxYUlYeGpEZEFYaGUzU3hmVTNXc2tlcE56bWR3Rkwv?=
 =?utf-8?B?VXVnMjBtNmkvT2ZiWnczd3c2S1NCWWlTL0g1TmNLaE1zak9KMzBwOUw5Sjd3?=
 =?utf-8?B?dk9OamNZYWV4U1BidUVxSGhYOUhLaW41d0ZYak9zMzlEcTFtdytPN3JtSFRn?=
 =?utf-8?B?WVd3dHJCbzI5dW1VWnExeDNxZFdqWENwemVGRGtVRkk3RlVod0Q1bExGNUhX?=
 =?utf-8?B?OTBZUDNFbjRpWWo4TkJwd0hiSmlmK1dsdlM3Y1JHNDl4WHFrUlRhU2FtTncy?=
 =?utf-8?B?aDFkYmJaQVRyclRKcFpUK2hyLzNyOXdqL1N3UDRTR1VvVkFGa2cxY1JWdUwr?=
 =?utf-8?B?NVd3VWhXaGtQRm9RejU2ZlJHZHQ0bCtEMGJFQVIwYVRhQ24rYXV3ZHFxVExH?=
 =?utf-8?B?M0YzU2J5Sk5jelk1cVNlVlJzNGFJa0hOTDFvcEtQMndLcHB3QzlvcHpxSENK?=
 =?utf-8?B?b3RmU213TXdZcUxHa1Q4b3hmdHRWcFQ1Skt4MlBLdUM4UVBvODZVMnhBVENE?=
 =?utf-8?B?NzZRT1ZWbzNEc2svUWxqV1hyN0dVRFUwTFdtTnkrbjlFSjZoZldzS1V4VmRn?=
 =?utf-8?B?UXZaWXlIYVdQZGEzcTNhcDBNZ0NCcEx4anJtREM3V1F6NW8rcjlKTUZkWHdD?=
 =?utf-8?B?VFZZazdxTjNDS3FwSXZ1RFBib2lIZWpZcXJpc3h0L0VoM3A1Z085M1BiNnZV?=
 =?utf-8?B?UVJSbVBRQ29tdEhRa1NlM2pUUFdUeHFlR2s4OWg4bGlBYWd5WFNJbUJQaVdN?=
 =?utf-8?B?elJhTDFJVzVzT0Q5VzRJQ0lSYmZnM3hocWlGODRnSyt1alFXMTY4VE5xQnli?=
 =?utf-8?B?bUErN0pGck0vR015eFFaaGx2aEVRejI1TXZ0cnh4TCs4SExUOWM4NWhjOEx2?=
 =?utf-8?Q?1bREEDkfv6q+F//E9sJ6Oj9qn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b071bc61-f3a2-4ae3-7225-08dc4f1d6044
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:51:16.6962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M19TpSuLGFD7pfppc2Lkn3tbGzyTvoDNlk604yU2NJaP5Wnhg3J2fxQFmylnqt0vEpBhGi0qNXq/xM9p3Acx1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7958
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA0
LzEzXSBkcm0vaTkxNS9jZGNsazogSW5kaWNhdGUgd2hldGhlciBDRENMSyBjaGFuZ2UgaGFwcGVu
cw0KPiBkdXJpbmcgcHJlIG9yIHBvc3QgcGxhbmUgdXBkYXRlDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5
IHdlIGp1c3QgZ2V0IGEgcGxhaW4gIkNoYW5naW5nIENEQ0xLIHRvIC4uLiIgaW4gdGhlIGxvZ3Mu
IEl0IHdvdWxkIGFjdHVhbGx5DQo+IGJlIGludGVyZXN0aW5nIHRvIHNlZSB3aGV0aGVyIHdlJ3Jl
IGRvaW5nIHRoZSBwcm9ncmFtbWluZyBkdXJpbmcgdGhlIHByZSBvciBwb3N0DQo+IHBsYW5lIHBo
YXNlIG9mIHRoZSBjb21taXQuIEluY2x1ZGUgdGhhdCBpbmZvcm1hdGlvbiBpbiB0aGUgZGVidWcg
bWVzc2FnZS4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTkgKysrKysrLS0tLS0tLS0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4
IDk5ZDI2NTdmMjlhNy4uOTg1NDZmMzg0MDIzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yNDM0LDE4ICsyNDM0LDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcGNvZGVfbm90aWZ5KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1
LA0KPiAgCQkJcmV0KTsNCj4gIH0NCj4gDQo+IC0vKioNCj4gLSAqIGludGVsX3NldF9jZGNsayAt
IFB1c2ggdGhlIENEQ0xLIGNvbmZpZ3VyYXRpb24gdG8gdGhlIGhhcmR3YXJlDQo+IC0gKiBAZGV2
X3ByaXY6IGk5MTUgZGV2aWNlDQo+IC0gKiBAY2RjbGtfY29uZmlnOiBuZXcgQ0RDTEsgY29uZmln
dXJhdGlvbg0KPiAtICogQHBpcGU6IHBpcGUgd2l0aCB3aGljaCB0byBzeW5jaHJvbml6ZSB0aGUg
dXBkYXRlDQo+IC0gKg0KPiAtICogUHJvZ3JhbSB0aGUgaGFyZHdhcmUgYmFzZWQgb24gdGhlIHBh
c3NlZCBpbiBDRENMSyBzdGF0ZSwNCj4gLSAqIGlmIG5lY2Vzc2FyeS4NCj4gLSAqLw0KPiAgc3Rh
dGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gIAkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpjZGNsa19jb25m
aWcsDQo+IC0JCQkgICAgZW51bSBwaXBlIHBpcGUpDQo+ICsJCQkgICAgZW51bSBwaXBlIHBpcGUs
IGNvbnN0IGNoYXIgKmNvbnRleHQpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXI7DQo+IA0KPiBAQCAtMjQ1NSw3ICsyNDQ2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0
X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gIAlpZiAoZHJt
X1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRldl9wcml2LQ0KPiA+ZGlzcGxheS5mdW5j
cy5jZGNsay0+c2V0X2NkY2xrKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpbnRlbF9jZGNsa19k
dW1wX2NvbmZpZyhkZXZfcHJpdiwgY2RjbGtfY29uZmlnLCAiQ2hhbmdpbmcgQ0RDTEsgdG8iKTsN
Cj4gKwlpbnRlbF9jZGNsa19kdW1wX2NvbmZpZyhkZXZfcHJpdiwgY2RjbGtfY29uZmlnLCBjb250
ZXh0KTsNCj4gDQo+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYt
PmRybSwgZW5jb2Rlcikgew0KPiAgCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3Rv
X2ludGVsX2RwKGVuY29kZXIpOyBAQCAtDQo+IDI2MjMsNyArMjYxNCw4IEBAIGludGVsX3NldF9j
ZGNsa19wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRl
KQ0KPiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRlLT5iYXNl
LmNoYW5nZWQpOw0KPiANCj4gLQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJmNkY2xrX2NvbmZpZywg
bmV3X2NkY2xrX3N0YXRlLT5waXBlKTsNCj4gKwlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJmNkY2xr
X2NvbmZpZywgbmV3X2NkY2xrX3N0YXRlLT5waXBlLA0KPiArCQkJIlByZSBjaGFuZ2luZyBDRENM
SyB0byIpOw0KPiAgfQ0KPiANCj4gIC8qKg0KPiBAQCAtMjY1MSw3ICsyNjQzLDggQEAgaW50ZWxf
c2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQ0KPiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRl
LT5iYXNlLmNoYW5nZWQpOw0KPiANCj4gLQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNs
a19zdGF0ZS0+YWN0dWFsLCBuZXdfY2RjbGtfc3RhdGUtDQo+ID5waXBlKTsNCj4gKwlpbnRlbF9z
ZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsLCBuZXdfY2RjbGtfc3RhdGUt
PnBpcGUsDQo+ICsJCQkiUG9zdCBjaGFuZ2luZyBDRENMSyB0byIpOw0KPiAgfQ0KPiANCj4gIHN0
YXRpYyBpbnQgaW50ZWxfcGl4ZWxfcmF0ZV90b19jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gLS0NCj4gMi40My4yDQoNCg==
