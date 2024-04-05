Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D863C899DD5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 15:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFD6112398;
	Fri,  5 Apr 2024 13:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OggvK6Vs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882B510F28F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 13:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712322028; x=1743858028;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DUBWNjnYViwEVeAgv/APy5dU2AoHREyd8QdETPy/j4g=;
 b=OggvK6VswL+h/wheKJcV75qst4SifuBlVS03P4KIWnT6g24fux9uupMK
 NBZoOdFgXeaCvKyuLSM5kL3k8749Gvc9aKWAdfATE+hUIHaMLOLHwWg2w
 VwJRB0tHoj8I1dBLGNYsnbEIW47B6AddFzK1IQOFYsp6ieSTvlHvgodi1
 TmqXTvjQJlap+L1lal8crF0qlSuw0pBV5oD1OYu41VmbZH8zLirRgTRVx
 SxkrdKTEQIAbW9zuwe/pfAspopzio67AChAi6TbkuVF46FBpEBH+KXEAb
 rdw8H4U7ENT9nW7yQx+TVfnkaoRDk1Vc7PzJTcSpvKv3MDfGH9Nkfh/Kq Q==;
X-CSE-ConnectionGUID: 5lpjvDUtRBm4e59uw4PDjg==
X-CSE-MsgGUID: WRAKB4ngSKicN6ZIK7eCRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="33046260"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="33046260"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 06:00:28 -0700
X-CSE-ConnectionGUID: cU2UlAGsSgu1Gev4QbOGrw==
X-CSE-MsgGUID: qyCDv/F8St6j2NauewpgKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19076495"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 06:00:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 06:00:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 06:00:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 06:00:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRZ77EALBnjpTzoAZTeNTANb+rwd8u/CMHZeKOkHdFZdJ+1pWu9zlHEtOlpXlJE2tnt5OwUeottBt6NBSdnCYPrdgpacQVPyigc/VPl7J0oVNQiDDE+LoCCd/m/lVv/BTizmjhpu32n8oFuXn9jT8Y/M3MbKIvI6MpflD4h/4YVHxIRjKjL25sztmMJzIHtiIjX4jN4ddhZhTlzQyvuTlqJwLoVE+ktrLg6Tp6cOCPfBlnt2eU5ctbMKMHY5aRmyoLyZfxo3pHkmzZBED1qgXB/7ELIU0rs7ZxYWlswgencOI9u+5ABPQZnFXMM+DWeMMqB+4kzWgKc4SyEaqpGyQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DUBWNjnYViwEVeAgv/APy5dU2AoHREyd8QdETPy/j4g=;
 b=mnM6hZlAkG4795wYSszO17jUUFkDnVyxI+V8PZ9V4UGIk/aj0ruB/Zwz6IV4PZSGcnnBSPOkNDiaoD9Q5oKffcqqiMSQYJDLbJnx+oEy7WOda2ja5TJOhSpqAJAPzKS33/Cj6HT5aRGq5LzMA6NqS4TPkMZN5CtxylmHspsA1YXqKU+x9eTPyDkigE29a0Z0lOLwDlEw42IE+r6vK/nde12mb0pC2Eg5Y2FZyc1zlgUCPFNnVl/E00snX3kn2/tDDxCVd2kq1rWangGcw1UZwknumaLgiLf4bIAVpFCXcDoS16DBElh0m7yXSDXsLUYp07MwHbEDcMg26x/vIbnBgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ1PR11MB6252.namprd11.prod.outlook.com (2603:10b6:a03:457::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Fri, 5 Apr
 2024 13:00:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 13:00:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Topic: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Index: AQHahtf/mfMerDeStEKYsyEuoSKFRLFZP7UAgABkkCA=
Date: Fri, 5 Apr 2024 13:00:24 +0000
Message-ID: <IA0PR11MB7307E7D70EC3B3865F645BCBBA032@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
 <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
In-Reply-To: <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ1PR11MB6252:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 16YZoNBwY89arXsWQWxeL446UBoL7267W+P52f1oJOi1AUJ0/LwQqe4ZnWhAdt6+q9LuFdPEKYKfynJgASnIqMUWDtGyqICYNZf2WnW96c7IUvuZppAjSeEhWQagou2s5yqdW+dsdkKN8zxBJiFCIeVaMDpNA0SrN104Y1POSdlimLDSFsL2kBLlCVLoosEoRqbQx/G+KzhU6auzoFJQktaZAYuiERPAaPQXxDlxeam0i2MG5eUGfu2QoW8rxbnZZKdPtmCQRgFTn4FwA8CZsAdbBl5a/TmHrwZ5r4iS1sAHwXwpwABkRvjUjaKwlR2i2g2fqJgEZQeM5EKFsyrokzW+iCsCmYmcfVew+5yR9rvj3BWssVE3u6j6QqB0aOxhxQSt3A7DuxB0iE6PlmJNVL9Q5Uulb8J47Z1DxRD6g6C1CRztoDQefm8GE82bFEHCpO1IH2IEAZ9W1tZr6BX/3/AXKPXyFKaRK8W/bs2GApU+0mPasdLUc8/qy9wI8TmX+lJ+bccgW8Ywjzlfjpj+zU855xKu1F8r/VQqPlwFt/i6f+i4f0qq+U97uQ9unUzRvx3I4ElnZS23YecEban5ghDRQID/Chv/tizdj8fs2nUrBImJ/6JZH5ryhlOnRjwik27c2eQiwRNq5hbIiRETVoqJOJJIhc8Nd5uUb0rnCO8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFpqZzZiKzBHczNxRFVyL0xIMkZFNEFVdkQ1ODllM2tGTlVHZFNBU3lvNWN3?=
 =?utf-8?B?MUVvUFRPdWdkay9pd2ZqSGsrZ2FXeWdEVk84Qm16eE9rc3dBNUdlWkg4KzNE?=
 =?utf-8?B?YnN6MllMck9XKytOSW0yWTl3ZGtvSmhmaVdtTVNYZzZmYWlzekVWZkUwOG1a?=
 =?utf-8?B?VnhPenU2aS9OTFQ0Z2NWYmM5Qnk2QnZaem0vRXNiQk1iMk1hZlJod0ZrMlIw?=
 =?utf-8?B?ZHBmOTdGSElNalAzVC9oblZHb2pZM0RDaEE4Z2JBazErQmc2TmFxMGEwbjNX?=
 =?utf-8?B?UlhySjI3WUo2VGlCR0RjemxQSzJ4SEt5UlhMcHU2MzBZeHJaSWR3Mk5tazRQ?=
 =?utf-8?B?TllJNTlPbGNmUWhDZS9vb05JYzhWU2pyK3ZxTCsvVnlxa1RIRmxqcjV2b3hy?=
 =?utf-8?B?SUU1RHpTY1hHTTFyOThESmUyY0twWVVrVGt4ZHhockFhUFNvd0N2bjlHcGdm?=
 =?utf-8?B?NVB6UlBFRG1WcWNnbUJnTzRTTzREZ0gvY0ZxVVYrd3JPZ0tKQU94QWdYTTBB?=
 =?utf-8?B?SUdDb0JIZituYzBzZEh3ekNRMkQrSCt0UkFJWjRSZGxTak9FcDNOTHUzYlNh?=
 =?utf-8?B?Qm9yMVBKRnRlM3FMU1JEWmRtUlUvSFFNN3R5OFFBUlNUeEUzQk9McVBheS9j?=
 =?utf-8?B?aUZhRG9IY0syVUgwSyt0S3lXL0ZUODBscmNyRkNyWEtpUTFkYWxpazdYN1U1?=
 =?utf-8?B?ODh0MDM4RTRFcUQ5djF5MTAwSmt4VU5yTjBiMzR0cjJzOXNFNjVPWDNwREhU?=
 =?utf-8?B?STdSTDhleGxoOHN6S3RDOG1EUU1lWjZwZURYdlhVOS80cEhkMmt6cEx0UUUx?=
 =?utf-8?B?Rk1jblFRMysxUTV1U2JPUGNuM3RHMndFcmpyQmtzZGwzdHJxVHNZSTdkdklG?=
 =?utf-8?B?eGRJeVh3VkR1QUphT0l5YkVSclJZK1NSWENRME00QkltTXlaa2Q1ZVBOSE5L?=
 =?utf-8?B?NHppL3JuN0J6cG5VUXg3cVNVdTVXRVBNdXRYWXg3Q3FOZEEyVTRVMUorUllH?=
 =?utf-8?B?SzZwOVJVNEpvZXdudnhYUy9GeXVhb2ZnT1R4T20yMjJpSEtiQTF4ZG1tNVhV?=
 =?utf-8?B?R0xIY3lJOE9tQmRpMGg1MmJWeXBveE1SSUhSTUNRSU0zVVZGR0ZZei9BWDBK?=
 =?utf-8?B?SmJJUjhva01EUlNYRDh5OEVyb1hBa051anRzOU9QN0R1T3cvTk5nTHEwWjU1?=
 =?utf-8?B?SkFmRFhndXQ5Q1FhSXg2ZzJZNlhhbjh0bGxIT1ZmeCtkV2hMakdDd0l2bUpS?=
 =?utf-8?B?YkgxY2oyMmNZaTdsSlJHME9NazczSmlPUS96VTdLc0x6NlhYUktoTFZEbXRW?=
 =?utf-8?B?WnN1NHFCRThGOWFjTEM3WFI2QUhRcmZCcHRwYit5TXR6cGYyMTloWWtQcFZ6?=
 =?utf-8?B?MXVHbkZQcmQ4K0RTVHhTYUpHdnZtdUdUd1RBUXBwaTNGQmxWWmNHRUxPSUFa?=
 =?utf-8?B?UWN1dmdieS9iekRBdUdybCtKTjJ6VDVOVWlLUWwvaDhXaFpyNzdJTlB4eHZy?=
 =?utf-8?B?Ui8xU0VIWmtKRGRzQU5zRHNyWkplYzBsWXRkb2phRFd2aVpZVG9xa3BzT013?=
 =?utf-8?B?L0RkNUkzaTM3clNOc1MvMlcwRVhBdHRlUmhFWHdPc3Z5YWoyaCtua1hscVpG?=
 =?utf-8?B?TFhtUHoxdytxUUZQcmNZS3ZtaHBVZk96ZFpHNWdDV3FVK1JZcXB6V3k2Um1J?=
 =?utf-8?B?c3pRVis2R0w1T2ZKdldkMHNMSkhXbTRtZm5iMXh6RVJKSDNtTzJMMnFycTFW?=
 =?utf-8?B?bDdFS3FMaXZFMGUzSnlQUnIrODdTT3JUWmk5d0tOZ2dBeHo4T0licVZHVmhh?=
 =?utf-8?B?N0VIYkpNVGswaDJnYXZGUUp4N1lBSHNTa2ZFb1liTFlBVUxRU3N3TDZpZG5D?=
 =?utf-8?B?SGw2TkwwK1FkSndSSFpnSnBpQ1Fqc1RuKzhhWWxVdEY5eDZTVW0zc3BDeWRX?=
 =?utf-8?B?aGIwUURwV1IydE5iQ1dzeE94Wk8rWitrb0pGVWxIV1pZVmI2SnBldFF5aWN3?=
 =?utf-8?B?dExGeUlESm5MSVNzMmViUzJPeW5pNFJSeDN3dFk3NG1ZY2lkdzRBUFVpOFR3?=
 =?utf-8?B?ajdDR0lNQml4N05tanpKdHRMMllzRU85cmFGMkgzdm1iY2lTVFMzNWM0NzhU?=
 =?utf-8?Q?87MJfnzf1r+xpkg8vLyNwDt4p?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7370897-d394-4149-2398-08dc55705be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 13:00:24.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KCmGoBhvnZsrLMVFBQ8ZcSjUEOaYo48VLVy37JaWlYUyKB6GeUL7wwGO5wAEsmXrmGsIR3bgVeLcVo6KlSL14Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6252
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBIb2dh
bmRlciwgSm91bmkNCj4gU2VudDogRnJpZGF5LCBBcHJpbCA1LCAyMDI0IDEyOjI5IFBNDQo+IFRv
OiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDAyLzE3XSBkcm0vaTkxNS9wc3I6IERp
c2FibGUgUFNSIHdoZW4gYmlnam9pbmVyIGlzIHVzZWQNCj4gDQo+IE9uIEZyaSwgMjAyNC0wNC0w
NSBhdCAwMDozNCArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gQmlnam9p
bmVyIHNlZW0gdG8gYmUgY2F1c2luZyBhbGwga2luZHMgb2YgZ3JpZWYgdG8gdGhlIFBTUiBjb2Rl
DQo+ID4gY3VycmVudGx5LiBJIGRvbid0IGJlbGlldmUgdGhlcmUgaXMgYW55IGhhcmR3YXJlIGlz
c3VlIGJ1dCB0aGUgY29kZQ0KPiA+IHNpbXBseSBub3QgaGFuZGxpbmcgdGhpcyBjb3JyZWN0bHku
IEZvciBub3cganVzdCBkaXNhYmxlIFBTUiB3aGVuDQo+ID4gYmlnam9pbmVyIGlzIG5lZWRlZC4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
MSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGVlZjYyOTgzZTlkYi4uYTNmZjkxNmI1M2Y5IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTE1ODQsNiArMTU4NCwxNyBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm47DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPg0KPiA+ICvCoMKgwqDCoMKg
wqDCoC8qDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogRklYTUUgZmlndXJlIG91dCB3aGF0IGlzIHdy
b25nIHdpdGggUFNSK2JpZ2pvaW5lciBhbmQNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBmaXggaXQu
IFByZXN1bWFibHkgc29tZXRoaW5nIHJlbGF0ZWQgdG8gdGhlIGZhY3QgdGhhdA0KPiA+ICvCoMKg
wqDCoMKgwqDCoCAqIFBTUiBpcyBhIHRyYW5zY29kZXIgbGV2ZWwgZmVhdHVyZS4NCj4gPiArwqDC
oMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+Ymlnam9p
bmVyX3BpcGVzKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IgZGlzYWJsZWQgZHVlIHRvIGJpZ2pvaW5lclxuIik7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiArwqDCoMKg
wqDCoMKgwqB9DQo+ID4gKw0KPiANCj4gQXJlIHRoZXNlIHByb2JsZW1zIHdpdGggYm90aCBQU1Ix
IGFuZCBQU1IyPw0KDQpZZXMsIGFzIHBlciB0aGUgY29kZSB0aGlzIHdvdWxkIGhhdmUgaW1wYWN0
IG9uIGJvdGggUFNSMSBhbmQgUFNSMi4gU28gYmV0dGVyIHRvIGRpc2FibGUuIA0KTG9va3MgZ29v
ZCB0byBtZS4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0g
dHJ1ZTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQ0KDQo=
