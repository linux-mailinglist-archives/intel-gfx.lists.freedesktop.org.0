Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3093388FE94
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC7A1123EA;
	Thu, 28 Mar 2024 12:04:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6OAi+vE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3791510F52F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711627479; x=1743163479;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DzHXPiBoWDuR8i32x7pppQMb/0Il09Fj6JVQUnhDT4s=;
 b=D6OAi+vEZOMNfZQ29oNyMedyEFWj8rpuOtyrvpV6oibbXMn7kB55rcfs
 YFl17Inbca+mdbw1/CIk9FZ1fdh/jVQpkfXEBdvurXjVkPZ4NOnX4T2PT
 owYMWkd0Kjf//XiyBpkLkyMEZP9e39cdp4G2sxzOeZ5GBQYfcisbCu+KQ
 vQunMzDO6JEAXM+prOjatW3DOqaQ1qsdh4aG+/L/1hEQ5JFDSbGZ0bzLA
 Px7WX4ZTgGauUBHQAz2RzFcuJ6Dn/SdSZ0aWngU7naG0msTzaQqgGBNoS
 0W2orR4ekOItjPDBZc1RmwS98N3pkN4K5w1ArVftg+Sexn0r+yRKJJm6m Q==;
X-CSE-ConnectionGUID: HRD2qCPiS4KngJKcv2bznQ==
X-CSE-MsgGUID: VAmid76ARym8lBxUpTol4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10557435"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10557435"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21282872"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 05:04:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 05:04:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 05:04:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 05:04:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZk4FBu1wyFEZJ1Jsvk7fGEuJI5h1OqwOzxRNtzXjCd4GYASrLtENzoD2ho8NM57HNliQaZmgD94zga39pr96FuWNJm9JedY8dGbpIThWJBXpzzYJIH35EBepPhzObGZK/NHz5kARItoZX7Sdbux+EXzSYby4et4U32Oi0++Gltr7k8Q6yRatvEbhiOPRLm+Wj7nJ3ySYyi1N1kI9lkwGzTJIaav/L37mcYpQCs45BbYd380xEnVq3VlClZL6705Q1Qiqoom++AUiWlS2j03W2Xo4zgu89xypYfuB0wFRnKt4EiKR3SReF6SToI7n/uSm1WLienA3auJIQiObt4sOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DzHXPiBoWDuR8i32x7pppQMb/0Il09Fj6JVQUnhDT4s=;
 b=g7ko97Rq4tloNSJK2eSla5y8MQbyBitjKDFYXX8Dj47WoQKSNV4rV/W0/higaWmrhu17Wa4RbuMV39Scm+td5v6kqlr5HLHOdFoGNATKBnKKM5gccUYed1W3Oxoqz0b5DNHZmqUSIONIpJHLxjcCafcGSjsvEhtCAHRPEzhT1c7tv/+br7ajT9qOkZ9AQ1zP3Tgj3dwH5JCXDvL4wdhblOAudGGIW6qdag+q1C+NaUeA8krsh4k3NJIV5YW2XOAyGKFq/6Z5GHKLcqf/ME4qr620HbhLjBKhjeCyFhYFZnHVKtvNcmDXufBkVXYvVNqoJ97HnjN3UpfB45ruAUsCog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 12:04:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 12:04:31 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/13] drm/i915: Add debugs for mbus joining and dbuf
 ratio programming
Thread-Topic: [PATCH 09/13] drm/i915: Add debugs for mbus joining and dbuf
 ratio programming
Thread-Index: AQHagG7EKii8mWhs80aGlvtnarbvTrFNDxPw
Date: Thu, 28 Mar 2024 12:04:31 +0000
Message-ID: <DM4PR11MB63602563BB66832D0CD1F317F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7354:EE_
x-ms-office365-filtering-correlation-id: b03886d3-eff9-4753-2bf7-08dc4f1f3a26
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lhVxA6zMuKvsNNzc15diyfnkAjIVpaUJ0Bs79SwwiheBmOX5f3qpLyVT/nTQDGZjydtCuJngn/JwqjBX38uKH3dn9hSpNWnWilPnBiBygyRMsdzZOCSvjUk2USEc7eqzCYNMGUNP9NWxZ6AP8k/sXUEsBY37KzaEv+ZeXyGj73WKKbAk/a/oIy30czHeIYbJMckruDEamhtF8kEpUCO+t52f/RFQ4c7TWTjwfULpcKzWJvZInTV9muTQgLPLhQiZbjgBncol+uRz8WmGUHvtZ5SiO9KCcNvukmX9O6QBKKvckXpEBqypyCo0IMegk9+RdKYUX8iflLN5fXz7xCgRzIqiNBLp90zzsszsmdaaqz7tZhjPiGGaExEmVIbMZ+nXNTuBaCwY1WpG4u1oxkKm68qysrCjMRUzM5y3tW4zpxWyi8tR5UbvcrWkiPD5rlwqFpEDmz7uY7sl9LUQ+PggmCvnBbogEKZ+QfarLt4oIU03fh/cg5qS2W75t2Bm21YVop7gxF5b2riCR8/0L9XsDwyPcG/761T/w7u9DigQx96J+jJv8q3yHfzNxMZBBdIXFq6961UQhqIFdmOmDW71wclS35gLSRJ4gTHiMyRf7DbWryeke0Osv+t3IBDZjDrgL9QWJNC/CJ0qoPTtM4eBWoQQLzqpyieUYd9wCJAcbrF4u1WdFr242483UWP+f9g9ctfIA/QoN/Irjbky9cIU4HvQHgQTBCUI8ak621NFLNo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDE4MzNjTzBjcEsvekcveFE2QnF1aGpoV2llUFluR3k3NjlhYWFqc3FtWEQ0?=
 =?utf-8?B?MW1UOW1LV3NtSHZacWdJTXMzMGp0VFoxSlV1WHl6bU8wOC9Lc0RJWHVNdElq?=
 =?utf-8?B?cjUrTEliZUViNWRCbktVd2V2L1BOZmZFcDNMQXVlSUVUSjcvRHdQN1Q4cnFz?=
 =?utf-8?B?aFNQakFVRXcyVHhwdUdBdDlxZ2NjUmFkUVAxMnRLcU5TdGk5UGpWQU1VV2d0?=
 =?utf-8?B?NHZTRXc4NHRjTXFyWDhYUklCT2xja2d0azZLb3hyano4WWRwNkt1MThFU3pl?=
 =?utf-8?B?dGV4VFhJcEZOUTYvenFTZlhCOFRCU29JeXNWVlIwemlrN29aVkNSVHNIdVB6?=
 =?utf-8?B?N2FGT0NjYVp3NmVJMmJxNFh0dmFIeXFOK2YrWlhvOThJUGd6Z0RRMFBkWm83?=
 =?utf-8?B?djdLRjBjQ2IyWWdOcFdNUVdBaFhDVjh2ckF3YmJCcDRrUE5aTzNRQ3Z4K1hT?=
 =?utf-8?B?VjVLK3VRM1MrdTd5MG83RnpSLzU5dHFtNkZyaExtWWJXejFUSWxEUlI1R0gy?=
 =?utf-8?B?NUhVOWhaNlJLcnlvRys1QXV5OEpGcXpUQTlITkRhWFVrWkxUdjh5Q1dSQkNQ?=
 =?utf-8?B?MDVyNWhQSTlVWUgzRzM3VUtSZ0RmWE1nd3hmU1RTa2hIMThUZUFtc0NBWXNB?=
 =?utf-8?B?YlBlVDRWdXRRM1RqRW5DMnBOTFVJcVhFbGZHYUxzbGJVVXJUbVNENHBadXla?=
 =?utf-8?B?YUFvMFhoQnFFLzI1eFRaZEdNeDVLZENJZ2JxdmRuL0RUbk0xeENPaVZmdjBK?=
 =?utf-8?B?a0trcEdFTHRLdXNQcmpyc0FhQ0YrWmxUWXVtaWs4YVBiMWhZcHNwM3lvTFpG?=
 =?utf-8?B?ZnVmRDcxMXBVME9EY2hrc2VCVERSMkJNc3ppNWtCUFhSQ0hSUnkxUHFzMW5t?=
 =?utf-8?B?N3pKN05zbm9RSGM5MzljeXlaNVRnL3M0Q2pQSG9xSklWNUs5ejE4UXlqZXJM?=
 =?utf-8?B?eWx6TG9NYTF5QmxnUUJjelgyT1Y1MkFuZnFta094QkhHdmtEQm5yVkdNU0FT?=
 =?utf-8?B?RDYyQWR1c2xwM0RaMXJSY1J0M0pIVHN5ZUc3dURsRnkvYkRYNkhMMDhIblU0?=
 =?utf-8?B?bTE1N0w3c1U5VHV0cC81cytxSWRxejBLOHdoZHI0TEN6ZVNUQ01qd3F1T1Zj?=
 =?utf-8?B?NW1qSXVranVCa1FNRndSMFkyK08rcnF3YkJTUUdvRTd0dkNRMGNuQUV5ZUdM?=
 =?utf-8?B?Q3dYcDI2M01nY0s2ajExNUZyU05Wbm5DL2I3dnh2QmMyMGozeUxWaDVYNFBm?=
 =?utf-8?B?ZXFkejZFdDR1c3ROcVBxd1lXV1lOMVRPd3dRMGhPNVVsQ2NTcmdBQlhJR0xZ?=
 =?utf-8?B?M2RhVklXVnJVYnRUS3dzT0dURmp6a1hJV2tseEJUVHFpZU8xT1dxZFROaU1L?=
 =?utf-8?B?bWhNNG14SVJlMnZyUU5sVDI5TVpmM3Rvd3MrNHV4TE1WLzVWanlveUZnejhR?=
 =?utf-8?B?M1dOSmNzMGt2MXMwbTR4M0RFTmZoMEcwajh0TlA3U01mTmpqK1IzdVIvWURn?=
 =?utf-8?B?WEhDVkIwNXo3TjE2bTRiSytJL2FiUmY5aThCcHJxR3NSUnpkUTdTcVpHOXY4?=
 =?utf-8?B?WGFNZUlTWGRkKzlUR2JvS1JVWkc1MzhZcDYvWTQ0U29tRnFBM2NxUVoram4r?=
 =?utf-8?B?VDB5MWwzcUFkemxEeU5uOFlhbm85ckl2dzdVU0kvL2kzM21qSjRqYjhVWDky?=
 =?utf-8?B?U0hnSWdkM0FpcC9VeHdBUDBjcEVnVVBrWWJoTzlSS09IZWpoL0JsSHlUOGgv?=
 =?utf-8?B?YTZwZVdhQU1GUi9BZjhwK2tKTmlGbUMxL1RvR0ZNT29PY1RyUkRIYkFnNnlO?=
 =?utf-8?B?WkROL0ovM0FUbnJsWlFHcmdSU0hhZU1QK1prZi9Oc2llcjJyVzBZbFlrRzQw?=
 =?utf-8?B?K2lBbStPRFNrak1IaUFWWFBtRmNsdzNJMHhpT3BZYnpyblFtdkJGajEyYmkr?=
 =?utf-8?B?MmMzWGdkOE80d3NXSlpqWnhSUUJMRjFobVd5ckdUODJVekU4ZDRYempSODBH?=
 =?utf-8?B?eTlPdEd1VHVTa1pJYS9QS1FSc1diRGpudjVRL3BrbjhHcE5WRmcwMDh2amdC?=
 =?utf-8?B?cm14N3ZMMTMxNE9sbHJpSzRSMU5JNVNPSWRrM1FqQ0tEQklaWlQ5WUlLeWlo?=
 =?utf-8?Q?RGEacmXf9mIVM5dQQ79UjywkL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b03886d3-eff9-4753-2bf7-08dc4f1f3a26
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 12:04:31.7689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UQehoi2PhcTnLscyclsUtgyLrsLsSYnNSXFf3ES6bXvI9Yu1+ol+wWSomB9URLbqZmPO8Sy3/KFrw8Wa0KrLkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA5
LzEzXSBkcm0vaTkxNTogQWRkIGRlYnVncyBmb3IgbWJ1cyBqb2luaW5nIGFuZCBkYnVmIHJhdGlv
DQo+IHByb2dyYW1taW5nDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQWRkIHNvbWUgZGVidWdzIHNv
IHRoYXQgd2UgY2FuIGFjdHVhbGx5IG9ic2VydmUgd2hhdCBpcyBhY3R1YWxseSBoYXBwZW5pbmcN
Cj4gZHVyaW5nIHRoZSBtYnVzL2RidWYgcHJvZ3JhbW1pbmcgc3RlcHMuDQo+IFdlIGNhbiBqdXN0
IHNob3ZlIHRoZW0gaW50byBmYWlybHkgbG93IGxldmVsIGZ1bmN0aW9ucyBhcyBub25lIG9mIHRo
ZW0gYXJlIGNhbGxlZA0KPiBkdXJpbmcgYW55IGNyaXRpY2FsIHNlY3Rpb25zL2V0Yy4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMgfCA5ICsrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMN
Cj4gaW5kZXggNzc2N2M1ZWFkYTM2Li5hMTE4ZWNmOWU1MzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zNjQ3LDYgKzM2NDcs
OSBAQCB2b2lkIGludGVsX2RidWZfbWRjbGtfY2RjbGtfcmF0aW9fdXBkYXRlKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICppOTE1LCB1OCByYXRpbw0KPiAgCWlmIChqb2luZWRfbWJ1cykNCj4g
IAkJcmF0aW8gKj0gMjsNCj4gDQo+ICsJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlVwZGF0aW5n
IGRidWYgcmF0aW8gdG8gJWQgKG1idXMgam9pbmVkOg0KPiAlcylcbiIsDQo+ICsJCSAgICByYXRp
bywgc3RyX3llc19ubyhqb2luZWRfbWJ1cykpOw0KPiArDQo+ICAJZm9yX2VhY2hfZGJ1Zl9zbGlj
ZShpOTE1LCBzbGljZSkNCj4gIAkJaW50ZWxfZGVfcm13KGk5MTUsIERCVUZfQ1RMX1Moc2xpY2Up
LA0KPiAgCQkJICAgICBEQlVGX01JTl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0VfTUFTSywNCj4gQEAg
LTM2ODAsMTAgKzM2ODMsMTYgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfZGJ1Zl9tZGNsa19taW5f
dHJhY2tlcl91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgIHN0YXRpYw0K
PiB2b2lkIGludGVsX2RidWZfbWJ1c19qb2luX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAq
b2xkX2RidWZfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0
YXRlKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAqbmV3X2RidWZfc3RhdGUg
PQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsNCj4gIAl1MzIg
bWJ1c19jdGw7DQo+IA0KPiArCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJDaGFuZ2luZyBtYnVz
IGpvaW5lZDogJXMgLT4gJXNcbiIsDQo+ICsJCSAgICBzdHJfeWVzX25vKG9sZF9kYnVmX3N0YXRl
LT5qb2luZWRfbWJ1cyksDQo+ICsJCSAgICBzdHJfeWVzX25vKG5ld19kYnVmX3N0YXRlLT5qb2lu
ZWRfbWJ1cykpOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBUT0RPOiBJbXBsZW1lbnQgdmJsYW5rIHN5
bmNocm9uaXplZCBNQlVTIGpvaW5pbmcgY2hhbmdlcy4NCj4gIAkgKiBNdXN0IGJlIHByb3Blcmx5
IGNvb3JkaW5hdGVkIHdpdGggZGJ1ZiByZXByb2dyYW1taW5nLg0KPiAtLQ0KPiAyLjQzLjINCg0K
