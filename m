Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA01868841
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 05:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D413510E6D3;
	Tue, 27 Feb 2024 04:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Df6bPppB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2927610E6D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709008833; x=1740544833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/uhXgqN21+B3Red0es0rU9pdl5AowEp3oYcRVhmX6EI=;
 b=Df6bPppBvQOR1CirI2Fk6AKgIMxZLXatxDgJIjOg2IXzYbTLuO3t4UKf
 x4K9mTMZNoVYox8o/MT6FJ4b1qO3gqDmkFaEY///kdnry1PHMnxwkurs/
 5VnpdGPeWODvFplFjOyZwwqjRFPS5Y3c07lWmjKmvX080EINEmEaWYw6Y
 dPdyywXa4XjbExlmY/urraESVIFE2zsgCEfuEco/00S4zylZ1fmlcAHaJ
 lFtHkXTGE/VCtWHxrM0ME9RhYRZPcrTleAa/GW+pYSAC9oqP6azDnxWwL
 MgkU0UeyK0nexxya48mBg+KOd1L93OxASDoLjT93T2xAkOx44FQWqThsg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="20777843"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="20777843"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 20:40:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="37701599"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 20:40:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 20:40:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 20:40:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 20:40:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjMLFdlmUwiztgMgxlUNZH3d2q2byAYiULESz5qukZUtPYYVOJwK26rZC4bdNksR1KfpsmjxHGBdUkDUSrCT2JpXdCEfo/Gk/fR0Hbcjlit2iyvueSFPCUV/nr10MiycYOuzbraBsu6D9ROZj3uJBSftEcdVIYDY9SoMlmP7Vl9LUbXicsubIp643vDrpslxRDjLF7eDYEKOcLqwd5F/3Fo/F4L4D696vtu2w/2qjWAAbx8Adom9SnRWvvRl4ESqzkFtDDFwCaIUnJBCLwqRTdbre7PP1xjXNAx0m8vPl+yv5VNDp7SGmNrJm9wTAhiTEedcmlZC2/FHkxFW+VZuhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uhXgqN21+B3Red0es0rU9pdl5AowEp3oYcRVhmX6EI=;
 b=TBD5bISLM5X6S61gPDuCI3RNyzSkHaEbS3gUGhcNpeT7b1XZJhWWK/0NXz0yba13rrRfKqPN37jNXzj2NUNjHaeIWbMIYIHoS/cjozFRugwR9H1ifbGNxp3QCb/f5zzIYGONf0DMM7LTgjfex6MXEz/bAX7wNgAav65NaGLMbnxgP9Tw/aJPc+jurQJTUlK86kGhMSIhz54on4GZ/tcZZxlojKTx9tyOk7Na2bYTFICumuSNXjBUs9LK6f674uiubh7jue2fKYz0h5Yd/aQOQF6q+ZBmrMXxc+MaKuWiAr3rSnjXynW3XZywsFrZh0ZvxbIPraCwajfBU54fhE0N0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by MW4PR11MB6692.namprd11.prod.outlook.com (2603:10b6:303:20e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Tue, 27 Feb
 2024 04:40:23 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 04:40:23 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Thread-Topic: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Thread-Index: AQHaZPsKnYbuA/ExNUieQrLVTti4erEdoeyA
Date: Tue, 27 Feb 2024 04:40:23 +0000
Message-ID: <PH7PR11MB8252102DD5A939C77255DBD289592@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-3-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240221192010.25413-3-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|MW4PR11MB6692:EE_
x-ms-office365-filtering-correlation-id: 2ddc1930-9c1c-41bd-8791-08dc374e360e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7y6xeltdv4OjTYXFHnPxKtDiXfIxU3UVYMtCq5QBRjXIbvSpG7KEQsJe0LTmVy2wFEmS2eFhY7Vs+GtXOn94FKlfUfCE5lvWWDTezIXJanypsk8HOWkny34kurPJibOQN88qRquBPLDL3l/wCaFK6A8irUxDK7K+dNU4uYZPAe0xMYqs3js+GjEQf4cUw6X42nJNhzdd5xhLSw6Nd7ZagfZ3yweBsbMc6C4ohguXpI0YNYH33lcrifTNr4TwhvuoJZbIk6JkTL+AMJiqG+8IABgCqQcFMFyerCenEW+eISjHzAdueg/dB7acGheN+0zmTelxpklLQl5Fd16/udDxCJI/4HhwJviIdShxlKukk5zIk1njUQdeBqPekGTjLVof6o/DtX8SwENO/EgI859Az6ZfKDSeqxmoVTJ/iEPgJhZ3gERCuqKa6J3gGRHpnb0ERvsbwCFRRZj5sjszkTjKDXjjncveZodH8GJ6YkvnUvO+bpshm70893ry5h/QxYIL1A8DWYogtwVyiaLL50aMUN29p2Vmu4hc3qrSsFNluYRenzX5He5zf+Kyca7z0mOSnKkmYZfYaqRV80QzuD6Nzy1bCaEzTD2mDXv4VzHbckASn4xeDh1fdw3kB07QER6EMRFCqmQChpHkbaX9HFjWzeUq9ar8of3+9ZNv5doMRGSny+RGc2JRVCdY9Wi9LUwSdAjnmbCxuonLOPCKgS0HVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUFLYzNwL3R1WE1RTVp1eEFUWXdPTitkenNuYlpEVnhFWXhtV1gvUm55NXE5?=
 =?utf-8?B?UzBiM2FGb1JOTWI1N2c5N1h1MFI0Z1VUd0diM3FNVXVaVEZpM3pBZVA4UVpH?=
 =?utf-8?B?NXI1clFYYzhWR0xZTkhvQVcwdDZFZ0pUemtQNDRucW0yM2VNaGs2REp0NWlO?=
 =?utf-8?B?THdReGJzU0JUK0FSNWs2d3VtQm5STFBzVnA0Y2FHcDRoMGxqNktGTE1RaTQ1?=
 =?utf-8?B?cVFwUzFsZ3NVV3JmRk1wcitJaXREalFsS3M4YmRzRTZlWUQrMXZQSmRzYnJQ?=
 =?utf-8?B?dk1CdWg0UmhtaGJINUU3cWVrS214Y3I1NGgzYkpSMHJCZnoyNnB6YmszcnNw?=
 =?utf-8?B?SHhEeHpmejFDUURKdHNENHpVM0RqWjhzbm5NdGJvMzVnKzI5VElPSDBLUWwv?=
 =?utf-8?B?MzlGTjc1YnlCQkl4MjZ4eVhSNjlMVys0TXlkbk9VcG5NTEppTkUxZDcyb3RF?=
 =?utf-8?B?WVB3L0xQUGZ3K1VQNWZqNXArTjIwOVpDMVAxY0VWWjBWaFBkamhZMHlNeDd4?=
 =?utf-8?B?Njl1RUladVpoM29haWM4L0VZSGw3Zi9pd1NBWExyTTNtekNybjdEM29xZjFq?=
 =?utf-8?B?aVFNVE1PMko0aXplN3BET21vZ0NaUUI3R3JidGhvOGlsdXhLMlhTYnc5NjdH?=
 =?utf-8?B?dlBmWFZxbFRjaWNlMUVXWVdjeldMYkhsNlRxZkFaQ3JZWko3UDcwVS9BV3N4?=
 =?utf-8?B?MGE0YUdvelRMUHVWcS85MHRZdTNTbHNrTXJ4SllkQTkxUC9nNTRKcG42dE02?=
 =?utf-8?B?NEZ3RHFCT1k4bmNnb1hJQXliZWVOeG1wQURVd2tjNGZoRFhEcDFUdFZFUGFF?=
 =?utf-8?B?d2gwN0s1ZnNVWjVUbjQ2SWRnVzRHTCthTDJUOFlRRER0UlBnSm0yKzVqV3hU?=
 =?utf-8?B?NUJNcUFpendoblRmNXlIcUpGTFhJZzBWZFdybkh6Unk4ZWhwZWlGZk1DRzVo?=
 =?utf-8?B?bzJOUHgvMlcyZ1JyODdDLys5Yk12ak1QZ1dJQndBaDliR0h6QWlYU213dFAw?=
 =?utf-8?B?SE5ocVgyQ1dDdEZGQnk4SWVqYnQwZEhESlBZTmNUVWFYZElYeGFoN1FiSEY2?=
 =?utf-8?B?aXk0Y2VWY29kQ0o3VkZ6TnZQSkY0S3QvZjZaaWQrUDQ4aXNkaHZiREE0N2Z5?=
 =?utf-8?B?eDQ3VS9IdEdJbUxJbGg0UUlFS1dpL1NBTDhzNG1BZE90YkJGVFJnR1BhR3FJ?=
 =?utf-8?B?ejJEbTJWWkNNKzJUSjhrUkYvZVpib0dDdVNXVGorQWx3WVVyUFU3RFZJWkZS?=
 =?utf-8?B?Q1pFWHZHWitzTWVtVkE0aFdnMUo3elhMc3EwQUZMSjdIUlFmbndjZklqRjRC?=
 =?utf-8?B?S3FHTjJvSDZMUzJsekdoWld2WXBXejhLeXlFWktzOExldDBwN0VhaElXMEov?=
 =?utf-8?B?SEV3WXZPUHBwVVlLWVp5NkVOOFhyWlVQcW5wMWhrVndpVE1WRmtzdFRJRmVt?=
 =?utf-8?B?UUYwcE45QW9abVBLVmNTZDZ3MGVTMnZmZEJ0aG9FdXpGNkY3cnJSRFdpUVdF?=
 =?utf-8?B?cFFCMTl2SjkzdjZaSTJEUm1LZ25oSmRjaDVuSW51WC9uYXBTakxxMWw2Unlo?=
 =?utf-8?B?bmVTSncwZ0k0MXN6dnk2TUFnUFluc2FDVHIyVnUySm9xZTV4TnR2aGhtdTh4?=
 =?utf-8?B?SU05cmtHVm9jWHBwaDhleFhybnMyVjBhR0Y0d1dJMU0xb0pka295S2l2Ym5K?=
 =?utf-8?B?SHVYS05jcFRna290V3l2c2hzZE5yMGcwWTloRHhRRWJZOHdFd25relBKOTBX?=
 =?utf-8?B?NVkvVzJQc3JjZjRQMkFEczlZVFcxV1hmUDRORU94eEp4NVdsWlVqYkVNd2FP?=
 =?utf-8?B?dkhNTDh1cVgxSjRYdTBUWTVWSm1IN2p5OWhKNForbFJXSkd0OXNVMTZTbm5q?=
 =?utf-8?B?bjhaZi9tV2R0TENyZUJBYmxNVlNEaFZmVW9SVm15RHRhcXFzVlBhMnU2UlpO?=
 =?utf-8?B?UlhIeHR2RUZsdjYwOFBVQUIycFRyTUxJYlRuMktYbHp1aUl2RVFmenNJVmZT?=
 =?utf-8?B?VzdqUE84Ri82R0pOc0NzRWFwTzc3S1poZ1AycEEzNnJwNEs3L0xTVlBkM3Bv?=
 =?utf-8?B?NGplRnd6aFJ6c2l3OUszYnUvdlRLSFZ4NkM3SVNyKzczR2l1MXRjWmxlSE9R?=
 =?utf-8?Q?w83Inc37VbD/VNJlDpDAunTNu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ddc1930-9c1c-41bd-8791-08dc374e360e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 04:40:23.3392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wrg+f4TFaFRYhmVK4ToqApmX2h6tbqS5DZEHrY3xoUF9TNhI5iEupHe8Q2tVtWBvTRMv2xIfVskH7Wgml6TI5fK0lpw8IG9vQfoh/l3+3qM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6692
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGlzb3Zza2l5LCBTdGFu
aXNsYXYgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
RmVicnVhcnkgMjIsIDIwMjQgMTI6NTAgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gQ2M6IExpc292c2tpeSwgU3RhbmlzbGF2IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pDQo+IDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47
IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBTcmluaXZhcywgVmlkeWENCj4gPHZpZHlh
LnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDIvM10gU3RhcnQgc2VwYXJh
dGluZyBwaXBlIHZzIHRyYW5zY29kZXIgc2V0IGxvZ2ljIGZvciBiaWdqb2luZXINCj4gZHVyaW5n
IG1vZGVzZXQNCj4gDQo+IEhhbmRsZSBvbmx5IGJpZ2pvaW5lciBtYXN0ZXJzIGluIHNrbF9jb21t
aXRfbW9kZXNldF9lbmFibGVzL2Rpc2FibGVzLA0KPiBzbGF2ZSBjcnRjcyBzaG91bGQgYmUgaGFu
ZGxlZCBieSBtYXN0ZXIgaG9va3MuIFNhbWUgZm9yIGVuY29kZXJzLg0KPiBUaGF0IHdheSB3ZSBj
YW4gYWxzbyByZW1vdmUgYSBidW5jaCBvZiBjaGVja3MgbGlrZQ0KPiBpbnRlbF9jcnRjX2lzX2Jp
Z2pvaW5lcl9zbGF2ZS4NCj4gDQo+IHYyOiBHZXQgcmlkIG9mIG1hc3RlciB2cyBzbGF2ZSBjaGVj
a3MgYW5kIHNlcGFyYXRpb24gaW4gY3J0YyBlbmFibGUvZGlzYWJsZQ0KPiBob29rcy4NCj4gICAg
IFVzZSB1bmlmaWVkIGl0ZXJhdGlvbiBjeWNsZSBmb3IgYWxsIG9mIHRob3NlLCB3aGlsZSBlbmFi
bGluZy9kaXNhYmxpbmcNCj4gICAgIHRyYW5zY29kZXIgb25seSBmb3IgdGhvc2UgcGlwZXMgd2hl
cmUgaXRzIG5lZWRlZChWaWxsZSBTeXJqw6Rsw6QpDQo+IA0KPiB2MzogTW92ZSBhbGwgdGhlIGlu
dGVsX2VuY29kZXJfKiBjYWxscyB1bmRlciB0cmFuc2NvZGVyIGNvZGUgcGF0aChWaWxsZQ0KPiBT
eXJqw6Rsw6QpDQo+IA0KPiB2NDogIC0gQ2FsbCBpbnRlbF9jcnRjX3ZibGFua19vbiBmcm9tIGhz
d19jcnRjX2VuYWJsZSBvbmx5IGZvciBub24tdHJhbnNjb2Rlcg0KPiBwYXRoDQo+ICAgICAgICAo
Zm9yIG1hc3RlciBwaXBlIHRoYXQgd2lsbCBiZSBjYWxsZWQgZnJvbQ0KPiBpbnRlbF9lbmNvZGVy
c19lbmFibGUvaW50ZWxfZW5hYmxlX2RkaSkNCj4gICAgICAtIEZpeCBzdHVwaWQgbWlzdGFrZSB3
aXRoIHVzaW5nIGNydGMtPnBpcGUgZm9yIHRoZSBtYXNrLCBpbnN0ZWFkIG9mIEJJVChjcnRjLQ0K
PiA+cGlwZSkNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5p
c2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgIDIxICstLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxODMgKysrKysrKysrKysrLS0tLS0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgIDYgKw0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCAxMjEgaW5zZXJ0aW9ucygrKSwgODkgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggYmVh
NDQxNTkwMjA0NC4uNjA3MWU5ZjUwMDg3MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0zMTAwLDcgKzMxMDAsNiBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpvbGRfY29u
bl9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0
YzsNCj4gDQo+ICAJaWYgKCFpbnRlbF9jcnRjX2hhc190eXBlKG9sZF9jcnRjX3N0YXRlLCBJTlRF
TF9PVVRQVVRfRFBfTVNUKSkgew0KPiAgCQlpbnRlbF9jcnRjX3ZibGFua19vZmYob2xkX2NydGNf
c3RhdGUpOw0KPiBAQCAtMzExNywxNyArMzExNiw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9w
b3N0X2Rpc2FibGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlp
bGtfcGZpdF9kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsNCj4gIAl9DQo+IA0KPiAtCWZvcl9lYWNo
X2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZfcHJpdi0+ZHJtLCBzbGF2ZV9jcnRjLA0KPiAt
DQo+IGludGVsX2NydGNfYmlnam9pbmVyX3NsYXZlX3BpcGVzKG9sZF9jcnRjX3N0YXRlKSkgew0K
PiAtCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX3NsYXZlX2NydGNfc3RhdGUg
PQ0KPiAtCQkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgc2xhdmVfY3J0
Yyk7DQo+IC0NCj4gLQkJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9zbGF2ZV9jcnRjX3N0YXRl
KTsNCj4gLQ0KPiAtCQlpbnRlbF9kc2NfZGlzYWJsZShvbGRfc2xhdmVfY3J0Y19zdGF0ZSk7DQo+
IC0JCXNrbF9zY2FsZXJfZGlzYWJsZShvbGRfc2xhdmVfY3J0Y19zdGF0ZSk7DQo+IC0JfQ0KPiAt
DQo+ICAJLyoNCj4gIAkgKiBXaGVuIGNhbGxlZCBmcm9tIERQIE1TVCBjb2RlOg0KPiAgCSAqIC0g
b2xkX2Nvbm5fc3RhdGUgd2lsbCBiZSBOVUxMDQo+IEBAIC0zMzYzLDggKzMzNTEsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLCAgew0KPiAgCWRybV9XQVJOX09OKHN0YXRlLT5iYXNlLmRldiwgY3J0Y19zdGF0ZS0+aGFz
X3BjaF9lbmNvZGVyKTsNCj4gDQo+IC0JaWYgKCFpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9zbGF2
ZShjcnRjX3N0YXRlKSkNCj4gLQkJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMoZW5j
b2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMo
ZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCS8qIEVuYWJsZS9EaXNhYmxlIERQMi4wIFNE
UCBzcGxpdCBjb25maWcgYmVmb3JlIHRyYW5zY29kZXIgKi8NCj4gIAlpbnRlbF9hdWRpb19zZHBf
c3BsaXRfdXBkYXRlKGNydGNfc3RhdGUpOw0KPiBAQCAtMzQ2OSw5ICszNDU2LDYgQEAgdm9pZCBp
bnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgCQkJCSAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICB7DQo+ICAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IC0JCWludGVsX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAtCXN0cnVjdCBpbnRlbF9j
cnRjICpzbGF2ZV9jcnRjOw0KPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5
MTUsIGVuY29kZXItPnBvcnQpOw0KPiANCj4gIAkvKiBGSVhNRTogQWRkIE1UTCBwbGxfbWdyICov
DQo+IEBAIC0zNDc5LDkgKzM0NjMsNiBAQCB2b2lkIGludGVsX2RkaV91cGRhdGVfYWN0aXZlX2Rw
bGwoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCXJldHVybjsNCj4g
DQo+ICAJaW50ZWxfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0YXRlLCBjcnRjLCBlbmNvZGVyKTsNCj4g
LQlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+ZHJtLCBzbGF2ZV9jcnRj
LA0KPiAtDQo+IGludGVsX2NydGNfYmlnam9pbmVyX3NsYXZlX3BpcGVzKGNydGNfc3RhdGUpKQ0K
PiAtCQlpbnRlbF91cGRhdGVfYWN0aXZlX2RwbGwoc3RhdGUsIHNsYXZlX2NydGMsIGVuY29kZXIp
Ow0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDkxNmMxM2ExNDlmZDUuLmUxZWE1M2Zk
NmEyODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IEBAIC0xNjMxLDMxICsxNjMxLDEyIEBAIHN0YXRpYyB2b2lkIGhzd19jb25maWd1
cmVfY3B1X3RyYW5zY29kZXIoY29uc3QNCj4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhDQo+ICAJaHN3X3NldF90cmFuc2NvbmYoY3J0Y19zdGF0ZSk7DQo+ICB9DQo+IA0KPiAtc3Rh
dGljIHZvaWQgaHN3X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAtCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArc3RhdGljIHZvaWQgaHN3
X2NydGNfZW5hYmxlX3ByZV90cmFuc2NvZGVyKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiArCQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIHsNCj4gIAljb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAgCQlpbnRlbF9h
dG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gLQllbnVt
IHBpcGUgcGlwZSA9IGNydGMtPnBpcGUsIGhzd193b3JrYXJvdW5kX3BpcGU7DQo+IC0JZW51bSB0
cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gbmV3X2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVy
Ow0KPiAtCWJvb2wgcHNsX2Nsa2dhdGVfd2E7DQo+IC0NCj4gLQlpZiAoZHJtX1dBUk5fT04oJmRl
dl9wcml2LT5kcm0sIGNydGMtPmFjdGl2ZSkpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCWludGVs
X2RtY19lbmFibGVfcGlwZShkZXZfcHJpdiwgY3J0Yy0+cGlwZSk7DQo+IC0NCj4gLQlpZiAoIW5l
d19jcnRjX3N0YXRlLT5iaWdqb2luZXJfcGlwZXMpIHsNCj4gLQkJaW50ZWxfZW5jb2RlcnNfcHJl
X3BsbF9lbmFibGUoc3RhdGUsIGNydGMpOw0KPiAtDQo+IC0JCWlmIChuZXdfY3J0Y19zdGF0ZS0+
c2hhcmVkX2RwbGwpDQo+IC0JCQlpbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwobmV3X2NydGNfc3Rh
dGUpOw0KPiAtDQo+IC0JCWludGVsX2VuY29kZXJzX3ByZV9lbmFibGUoc3RhdGUsIGNydGMpOw0K
PiAtCX0gZWxzZSB7DQo+IC0JCWljbF9kZGlfYmlnam9pbmVyX3ByZV9lbmFibGUoc3RhdGUsIG5l
d19jcnRjX3N0YXRlKTsNCj4gLQl9DQo+IA0KPiAgCWludGVsX2RzY19lbmFibGUobmV3X2NydGNf
c3RhdGUpOw0KPiANCj4gQEAgLTE2NjUsMTkgKzE2NDYsMTcgQEAgc3RhdGljIHZvaWQgaHN3X2Ny
dGNfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWludGVs
X3NldF9waXBlX3NyY19zaXplKG5ld19jcnRjX3N0YXRlKTsNCj4gIAlpZiAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID49IDkgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkNCj4gIAkJYmR3X3NldF9w
aXBlX21pc2MobmV3X2NydGNfc3RhdGUpOw0KPiArfQ0KPiANCj4gLQlpZiAoIWludGVsX2NydGNf
aXNfYmlnam9pbmVyX3NsYXZlKG5ld19jcnRjX3N0YXRlKSAmJg0KPiAtCSAgICAhdHJhbnNjb2Rl
cl9pc19kc2koY3B1X3RyYW5zY29kZXIpKQ0KPiAtCQloc3dfY29uZmlndXJlX2NwdV90cmFuc2Nv
ZGVyKG5ld19jcnRjX3N0YXRlKTsNCj4gK3N0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZV9wb3N0
X3RyYW5zY29kZXIoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICsJCQkJ
CSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gK3sNCj4gKwljb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25l
d19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gDQo+ICAJY3J0Yy0+YWN0aXZl
ID0gdHJ1ZTsNCj4gDQo+IC0JLyogRGlzcGxheSBXQSAjMTE4MDogV2FEaXNhYmxlU2NhbGFyQ2xv
Y2tHYXRpbmc6IGdsayAqLw0KPiAtCXBzbF9jbGtnYXRlX3dhID0gRElTUExBWV9WRVIoZGV2X3By
aXYpID09IDEwICYmDQo+IC0JCW5ld19jcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkOw0KPiAt
CWlmIChwc2xfY2xrZ2F0ZV93YSkNCj4gLQkJZ2xrX3BpcGVfc2NhbGVyX2Nsb2NrX2dhdGluZ193
YShkZXZfcHJpdiwgcGlwZSwgdHJ1ZSk7DQo+IC0NCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDkpDQo+ICAJCXNrbF9wZml0X2VuYWJsZShuZXdfY3J0Y19zdGF0ZSk7DQo+ICAJZWxz
ZQ0KPiBAQCAtMTcwMCwyNyArMTY3OSw4NCBAQCBzdGF0aWMgdm9pZCBoc3dfY3J0Y19lbmFibGUo
c3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWljbF9zZXRfcGlwZV9j
aGlja2VuKG5ld19jcnRjX3N0YXRlKTsNCj4gDQo+ICAJaW50ZWxfaW5pdGlhbF93YXRlcm1hcmtz
KHN0YXRlLCBjcnRjKTsNCj4gK30NCj4gDQo+IC0JaWYgKGludGVsX2NydGNfaXNfYmlnam9pbmVy
X3NsYXZlKG5ld19jcnRjX3N0YXRlKSkNCj4gLQkJaW50ZWxfY3J0Y192Ymxhbmtfb24obmV3X2Ny
dGNfc3RhdGUpOw0KPiArc3RhdGljIHZvaWQgaHN3X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0K
PiArew0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9
DQo+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IG5ld19jcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcjsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqX2NydGM7DQo+ICsJaW50
IHNsYXZlX3BpcGVfbWFzayA9DQo+IGludGVsX2NydGNfYmlnam9pbmVyX3NsYXZlX3BpcGVzKG5l
d19jcnRjX3N0YXRlKTsNCg0KDQpNYW55IHRoYW5rcyBmb3IgdGhlIHBhdGNoIHNlcmllcy4NClNo
b3VsZCB3ZSBjYWxjdWxhdGUgc2xhdmVfcGlwZV9tYXNrIG9ubHkgaWYgdGhlIG1vZGVzZXQNCndh
cyByZWNlaXZlZCBvbiB0aGUgc2xhdmUgcGlwZS4gRWxzZSwgd2Ugbm90aWNlZCB0aGF0DQplYWNo
IHRpbWUgaXRzIHRyYXZlcnNpbmcgdGhyb3VnaCBzbGF2ZSBwaXBlIGV2ZW4gd2hlbg0KbW9kZXNl
dCB3YXMgcmVjZWl2ZWQgb24gbWFzdGVyIChzYXkgcGlwZSA9IDEpDQpLaW5kbHkgc3VnZ2VzdC4N
Cg0KPiArCWludCBwaXBlX21hc2sgPSBzbGF2ZV9waXBlX21hc2sgfCBCSVQoY3J0Yy0+cGlwZSk7
DQo+ICsJYm9vbCBwc2xfY2xrZ2F0ZV93YTsNCj4gKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBp
cGUsIGhzd193b3JrYXJvdW5kX3BpcGU7DQo+IA0KPiAtCWludGVsX2VuY29kZXJzX2VuYWJsZShz
dGF0ZSwgY3J0Yyk7DQo+ICsJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBjcnRjLT5h
Y3RpdmUpKQ0KPiArCQlyZXR1cm47DQo+IA0KPiAtCWlmIChwc2xfY2xrZ2F0ZV93YSkgew0KPiAt
CQlpbnRlbF9jcnRjX3dhaXRfZm9yX25leHRfdmJsYW5rKGNydGMpOw0KPiAtCQlnbGtfcGlwZV9z
Y2FsZXJfY2xvY2tfZ2F0aW5nX3dhKGRldl9wcml2LCBwaXBlLCBmYWxzZSk7DQo+IC0JfQ0KPiAr
CS8qDQo+ICsJICogVXNlIHJldmVyc2UgaXRlcmF0b3IgdG8gZ28gdGhyb3VnaCBzbGF2ZSBwaXBl
cyBmaXJzdC4NCj4gKwkgKiBUT0RPOiBXZSBtaWdodCBuZWVkIHNtYXJ0ZXIgaXRlcmF0b3IgaGVy
ZQ0KPiArCSAqLw0KPiArCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrX3JldmVyc2Uo
JmRldl9wcml2LT5kcm0sIF9jcnRjLA0KPiArCQkJCQkJIHBpcGVfbWFzaykgew0KPiArCQljb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqX25ld19jcnRjX3N0YXRlID0NCj4gKwkJCWludGVs
X2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIF9jcnRjKTsNCj4gKwkJYm9vbCBuZWVk
c190cmFuc2NvZGVyID0gKChzbGF2ZV9waXBlX21hc2sgJiBCSVQoX2NydGMtDQo+ID5waXBlKSkg
PT0gMCkgJiYNCj4gKwkJCQkJIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKTsNCj4g
Kw0KPiArCQlpbnRlbF9kbWNfZW5hYmxlX3BpcGUoZGV2X3ByaXYsIGNydGMtPnBpcGUpOw0KPiAr
DQo+ICsJCWlmICghbmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9waXBlcykgew0KPiArCQkJaWYg
KG5lZWRzX3RyYW5zY29kZXIpDQo+ICsJCQkJaW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUo
c3RhdGUsIGNydGMpOw0KDQoNClNob3VsZCB3ZSB1c2UgX2NydGMgaGVyZS4gSW4gcmVtYWluaW5n
IHBsYWNlcyBpbiB0aGlzIGZ1bmN0aW9uIGFsc28uDQpLaW5kbHkgc3VnZ2VzdC4NCg0KPiArDQo+
ICsJCQlpZiAobmV3X2NydGNfc3RhdGUtPnNoYXJlZF9kcGxsKQ0KPiArCQkJCWludGVsX2VuYWJs
ZV9zaGFyZWRfZHBsbChuZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwkJCWlmIChuZWVkc190cmFu
c2NvZGVyKQ0KPiArCQkJCWludGVsX2VuY29kZXJzX3ByZV9lbmFibGUoc3RhdGUsIGNydGMpOw0K
PiArCQl9IGVsc2Ugew0KPiArCQkJaWNsX2RkaV9iaWdqb2luZXJfcHJlX2VuYWJsZShzdGF0ZSwg
bmV3X2NydGNfc3RhdGUpOw0KPiArCQl9DQo+ICsNCj4gKwkJaHN3X2NydGNfZW5hYmxlX3ByZV90
cmFuc2NvZGVyKHN0YXRlLCBfY3J0Yyk7DQo+ICsNCj4gKwkJaWYgKG5lZWRzX3RyYW5zY29kZXIp
DQo+ICsJCQloc3dfY29uZmlndXJlX2NwdV90cmFuc2NvZGVyKF9uZXdfY3J0Y19zdGF0ZSk7DQo+
ICsNCj4gKwkJLyogRGlzcGxheSBXQSAjMTE4MDogV2FEaXNhYmxlU2NhbGFyQ2xvY2tHYXRpbmc6
IGdsayAqLw0KPiArCQlwc2xfY2xrZ2F0ZV93YSA9IERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAx
MCAmJg0KPiArCQkJbmV3X2NydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQ7DQo+ICsJCWlmIChw
c2xfY2xrZ2F0ZV93YSkNCj4gKwkJCWdsa19waXBlX3NjYWxlcl9jbG9ja19nYXRpbmdfd2EoZGV2
X3ByaXYsIHBpcGUsDQo+IHRydWUpOw0KPiArDQo+ICsJCWhzd19jcnRjX2VuYWJsZV9wb3N0X3Ry
YW5zY29kZXIoc3RhdGUsIF9jcnRjKTsNCj4gKw0KPiArCQlpZiAobmVlZHNfdHJhbnNjb2RlcikN
Cj4gKwkJCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgY3J0Yyk7DQo+ICsJCWVsc2UNCj4g
KwkJCWludGVsX2NydGNfdmJsYW5rX29uKF9uZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwkJaWYg
KHBzbF9jbGtnYXRlX3dhKSB7DQo+ICsJCQlpbnRlbF9jcnRjX3dhaXRfZm9yX25leHRfdmJsYW5r
KGNydGMpOw0KPiArCQkJZ2xrX3BpcGVfc2NhbGVyX2Nsb2NrX2dhdGluZ193YShkZXZfcHJpdiwg
cGlwZSwNCj4gZmFsc2UpOw0KPiArCQl9DQo+IA0KPiAtCS8qIElmIHdlIGNoYW5nZSB0aGUgcmVs
YXRpdmUgb3JkZXIgYmV0d2VlbiBwaXBlL3BsYW5lcyBlbmFibGluZywgd2UNCj4gbmVlZA0KPiAt
CSAqIHRvIGNoYW5nZSB0aGUgd29ya2Fyb3VuZC4gKi8NCj4gLQloc3dfd29ya2Fyb3VuZF9waXBl
ID0gbmV3X2NydGNfc3RhdGUtPmhzd193b3JrYXJvdW5kX3BpcGU7DQo+IC0JaWYgKElTX0hBU1dF
TEwoZGV2X3ByaXYpICYmIGhzd193b3JrYXJvdW5kX3BpcGUgIT0NCj4gSU5WQUxJRF9QSVBFKSB7
DQo+IC0JCXN0cnVjdCBpbnRlbF9jcnRjICp3YV9jcnRjOw0KPiArCQkvKiBJZiB3ZSBjaGFuZ2Ug
dGhlIHJlbGF0aXZlIG9yZGVyIGJldHdlZW4gcGlwZS9wbGFuZXMNCj4gZW5hYmxpbmcsIHdlIG5l
ZWQNCj4gKwkJICogdG8gY2hhbmdlIHRoZSB3b3JrYXJvdW5kLiAqLw0KPiArCQloc3dfd29ya2Fy
b3VuZF9waXBlID0gbmV3X2NydGNfc3RhdGUtDQo+ID5oc3dfd29ya2Fyb3VuZF9waXBlOw0KPiAr
CQlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgJiYgaHN3X3dvcmthcm91bmRfcGlwZSAhPQ0KPiBJ
TlZBTElEX1BJUEUpIHsNCj4gKwkJCXN0cnVjdCBpbnRlbF9jcnRjICp3YV9jcnRjOw0KPiANCj4g
LQkJd2FfY3J0YyA9IGludGVsX2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsDQo+IGhzd193b3JrYXJv
dW5kX3BpcGUpOw0KPiArCQkJd2FfY3J0YyA9IGludGVsX2NydGNfZm9yX3BpcGUoZGV2X3ByaXYs
DQo+IGhzd193b3JrYXJvdW5kX3BpcGUpOw0KPiANCj4gLQkJaW50ZWxfY3J0Y193YWl0X2Zvcl9u
ZXh0X3ZibGFuayh3YV9jcnRjKTsNCj4gLQkJaW50ZWxfY3J0Y193YWl0X2Zvcl9uZXh0X3ZibGFu
ayh3YV9jcnRjKTsNCj4gKwkJCWludGVsX2NydGNfd2FpdF9mb3JfbmV4dF92Ymxhbmsod2FfY3J0
Yyk7DQo+ICsJCQlpbnRlbF9jcnRjX3dhaXRfZm9yX25leHRfdmJsYW5rKHdhX2NydGMpOw0KPiAr
CQl9DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAgLTE3ODQsMjggKzE4MjAsMjcgQEAgc3RhdGljIHZv
aWQgaHN3X2NydGNfZGlzYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAg
CQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAr
CWludCBzbGF2ZV9waXBlX21hc2sgPQ0KPiBpbnRlbF9jcnRjX2JpZ2pvaW5lcl9zbGF2ZV9waXBl
cyhvbGRfY3J0Y19zdGF0ZSk7DQo+ICsJaW50IHBpcGVfbWFzayA9IHNsYXZlX3BpcGVfbWFzayB8
IEJJVChjcnRjLT5waXBlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqX2NydGM7DQo+ICsNCj4g
Kwlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+ZHJtLCBfY3J0YywNCj4g
KwkJCQkJIHBpcGVfbWFzaykgew0KPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
X29sZF9jcnRjX3N0YXRlID0NCj4gKwkJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUo
c3RhdGUsIF9jcnRjKTsNCj4gKwkJYm9vbCBuZWVkc19lbmNvZGVyX2Rpc2FibGUgPSAoc2xhdmVf
cGlwZV9tYXNrICYgQklUKF9jcnRjLQ0KPiA+cGlwZSkpID09DQo+ICswOw0KPiArDQo+ICsJCWlm
IChuZWVkc19lbmNvZGVyX2Rpc2FibGUpIHsNCj4gKwkJCWludGVsX2VuY29kZXJzX2Rpc2FibGUo
c3RhdGUsIF9jcnRjKTsNCj4gKwkJCWludGVsX2VuY29kZXJzX3Bvc3RfZGlzYWJsZShzdGF0ZSwg
X2NydGMpOw0KPiArCQl9DQo+IA0KPiAtCS8qDQo+IC0JICogRklYTUUgY29sbGFwc2UgZXZlcnl0
aGluZyB0byBvbmUgaG9vay4NCj4gLQkgKiBOZWVkIGNhcmUgd2l0aCBtc3QtPmRkaSBpbnRlcmFj
dGlvbnMuDQo+IC0JICovDQo+IC0JaWYgKCFpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9zbGF2ZShv
bGRfY3J0Y19zdGF0ZSkpIHsNCj4gLQkJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0ZSwgY3J0
Yyk7DQo+IC0JCWludGVsX2VuY29kZXJzX3Bvc3RfZGlzYWJsZShzdGF0ZSwgY3J0Yyk7DQo+IC0J
fQ0KPiAtDQo+IC0JaW50ZWxfZGlzYWJsZV9zaGFyZWRfZHBsbChvbGRfY3J0Y19zdGF0ZSk7DQo+
IC0NCj4gLQlpZiAoIWludGVsX2NydGNfaXNfYmlnam9pbmVyX3NsYXZlKG9sZF9jcnRjX3N0YXRl
KSkgew0KPiAtCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0YzsNCj4gLQ0KPiAtCQlpbnRl
bF9lbmNvZGVyc19wb3N0X3BsbF9kaXNhYmxlKHN0YXRlLCBjcnRjKTsNCj4gKwkJaW50ZWxfZGlz
YWJsZV9zaGFyZWRfZHBsbChfb2xkX2NydGNfc3RhdGUpOw0KPiANCj4gLQkJaW50ZWxfZG1jX2Rp
c2FibGVfcGlwZShpOTE1LCBjcnRjLT5waXBlKTsNCj4gKwkJaWYgKG5lZWRzX2VuY29kZXJfZGlz
YWJsZSkNCj4gKwkJCWludGVsX2VuY29kZXJzX3Bvc3RfcGxsX2Rpc2FibGUoc3RhdGUsIF9jcnRj
KTsNCj4gDQo+IC0JCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZpOTE1LT5kcm0s
IHNsYXZlX2NydGMsDQo+IC0NCj4gaW50ZWxfY3J0Y19iaWdqb2luZXJfc2xhdmVfcGlwZXMob2xk
X2NydGNfc3RhdGUpKQ0KPiAtCQkJaW50ZWxfZG1jX2Rpc2FibGVfcGlwZShpOTE1LCBzbGF2ZV9j
cnRjLT5waXBlKTsNCj4gKwkJaW50ZWxfZG1jX2Rpc2FibGVfcGlwZShpOTE1LCBfY3J0Yy0+cGlw
ZSk7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAgLTY3ODgsOCArNjgyMywxMCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkNCj4gIAkJICogU2xhdmUgdmJsYW5rcyBhcmUgbWFza2VkIHRpbGwgTWFzdGVy
IFZibGFua3MuDQo+ICAJCSAqLw0KPiAgCQlpZiAoIWlzX3RyYW5zX3BvcnRfc3luY19zbGF2ZShv
bGRfY3J0Y19zdGF0ZSkgJiYNCj4gLQkJICAgICFpbnRlbF9kcF9tc3RfaXNfc2xhdmVfdHJhbnMo
b2xkX2NydGNfc3RhdGUpICYmDQo+IC0JCSAgICAhaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xh
dmUob2xkX2NydGNfc3RhdGUpKQ0KPiArCQkgICAgIWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFu
cyhvbGRfY3J0Y19zdGF0ZSkpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlpZiAoaW50ZWxf
Y3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xkX2NydGNfc3RhdGUpKQ0KPiAgCQkJY29udGludWU7
DQoNClNob3VsZCB3ZSB1c2UgIWludGVsX2NydGNfaXNfYmlnam9pbmVyX3NsYXZlIGhlcmU/DQpL
aW5kbHkgc3VnZ2VzdC4NCg0KPiANCj4gIAkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMo
c3RhdGUsIG9sZF9jcnRjX3N0YXRlLCBAQCAtDQo+IDY4MDcsNiArNjg0NCw5IEBAIHN0YXRpYyB2
b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQ0KPiAgCQlpZiAoIW9sZF9jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ICAJ
CQljb250aW51ZTsNCj4gDQo+ICsJCWlmIChpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9zbGF2ZShv
bGRfY3J0Y19zdGF0ZSkpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiAgCQlpbnRlbF9vbGRfY3J0
Y19zdGF0ZV9kaXNhYmxlcyhzdGF0ZSwgb2xkX2NydGNfc3RhdGUsDQo+ICAJCQkJCSAgICAgIG5l
d19jcnRjX3N0YXRlLCBjcnRjKTsNCj4gIAl9DQo+IEBAIC02OTE5LDggKzY5NTksMTAgQEAgc3Rh
dGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+ICAJCWlmIChpbnRlbF9kcF9t
c3RfaXNfc2xhdmVfdHJhbnMobmV3X2NydGNfc3RhdGUpIHx8DQo+IC0JCSAgICBpc190cmFuc19w
b3J0X3N5bmNfbWFzdGVyKG5ld19jcnRjX3N0YXRlKSB8fA0KPiAtCQkgICAgaW50ZWxfY3J0Y19p
c19iaWdqb2luZXJfbWFzdGVyKG5ld19jcnRjX3N0YXRlKSkNCj4gKwkJICAgIGlzX3RyYW5zX3Bv
cnRfc3luY19tYXN0ZXIobmV3X2NydGNfc3RhdGUpKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4g
KwkJaWYgKGludGVsX2NydGNfaXNfYmlnam9pbmVyX3NsYXZlKG5ld19jcnRjX3N0YXRlKSkNCj4g
IAkJCWNvbnRpbnVlOw0KPiANClNob3VsZCB3ZSB1c2UgIWludGVsX2NydGNfaXNfYmlnam9pbmVy
X21hc3RlciBoZXJlPw0KS2luZGx5IHN1Z2dlc3QuDQoNCj4gIAkJbW9kZXNldF9waXBlcyAmPSB+
QklUKHBpcGUpOw0KPiBAQCAtNjkzMCw3ICs2OTcyLDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1p
dF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
IA0KPiAgCS8qDQo+ICAJICogVGhlbiB3ZSBlbmFibGUgYWxsIHJlbWFpbmluZyBwaXBlcyB0aGF0
IGRlcGVuZCBvbiBvdGhlcg0KPiAtCSAqIHBpcGVzOiBNU1Qgc2xhdmVzIGFuZCBwb3J0IHN5bmMg
bWFzdGVycywgYmlnIGpvaW5lciBtYXN0ZXINCj4gKwkgKiBwaXBlczogTVNUIHNsYXZlcyBhbmQg
cG9ydCBzeW5jIG1hc3RlcnMNCj4gIAkgKi8NCj4gIAlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gIAkJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOw0KPiBAQCAtNjkzOCw2ICs2OTgwLDkgQEAgc3RhdGljIHZvaWQg
c2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpDQo+ICAJCWlmICgobW9kZXNldF9waXBlcyAmIEJJVChwaXBlKSkgPT0gMCkNCj4gIAkJ
CWNvbnRpbnVlOw0KPiANCj4gKwkJaWYgKGludGVsX2NydGNfaXNfYmlnam9pbmVyX3NsYXZlKG5l
d19jcnRjX3N0YXRlKSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICAJCW1vZGVzZXRfcGlwZXMg
Jj0gfkJJVChwaXBlKTsNCj4gDQo+ICAJCWludGVsX2VuYWJsZV9jcnRjKHN0YXRlLCBjcnRjKTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4g
aW5kZXggZjRhMDc3M2YwZmNhOC4uZTFlOGQ5NTZjMzA1ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gQEAgLTI4MCw2ICsyODAsMTIg
QEAgZW51bSBwaHlfZmlhIHsNCj4gIAkJCSAgICBiYXNlLmhlYWQpCQkJCQlcDQo+ICAJCWZvcl9l
YWNoX2lmKChwaXBlX21hc2spICYgQklUKGludGVsX2NydGMtPnBpcGUpKQ0KPiANCj4gKyNkZWZp
bmUgZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBlX21hc2tfcmV2ZXJzZShkZXYsIGludGVsX2Ny
dGMsDQo+IHBpcGVfbWFzaykJXA0KPiArCWxpc3RfZm9yX2VhY2hfZW50cnlfcmV2ZXJzZShpbnRl
bF9jcnRjLA0KPiAJXA0KPiArCQkJCSAgICAmKGRldiktPm1vZGVfY29uZmlnLmNydGNfbGlzdCwN
Cj4gCVwNCj4gKwkJCQkgICAgYmFzZS5oZWFkKQ0KPiAJXA0KPiArCQlmb3JfZWFjaF9pZigocGlw
ZV9tYXNrKSAmIEJJVChpbnRlbF9jcnRjLT5waXBlKSkNCj4gKw0KPiAgI2RlZmluZSBmb3JfZWFj
aF9pbnRlbF9lbmNvZGVyKGRldiwgaW50ZWxfZW5jb2RlcikJCVwNCj4gIAlsaXN0X2Zvcl9lYWNo
X2VudHJ5KGludGVsX2VuY29kZXIsCQkJXA0KPiAgCQkJICAgICYoZGV2KS0+bW9kZV9jb25maWcu
ZW5jb2Rlcl9saXN0LAlcDQo+IC0tDQo+IDIuMzcuMw0KDQo=
