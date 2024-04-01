Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3C893975
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC43210F02D;
	Mon,  1 Apr 2024 09:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8KWUn9p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D135610F01A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711964344; x=1743500344;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dIIlQBnGinGIjVukYEFKJ7VilyuDmzTWoyAxKRH2MPw=;
 b=l8KWUn9pGArRP/0LqPmfUi4Y2JRU2V2zLQOSfzmCTTS8EVP5Ckxhxc2T
 36NJGN0rlxeVI4mCNMScERchYcG0kod+ltQIrzO2ByYMZhqG5lw+QzZ9U
 5A7cNirXdSG3EqWH2EkKuX61QCcaYKrDe9gQXJ00HBJPe++xouv3Rs0Uf
 cQU0BRDrzCs5GxqwtaAvDd7jU+l01RCytubGi/mwktZEqnF6mFpKn347P
 cVkQWxA5DVgbtI4lwwkFmI7LnSUbQwsPwmmLrxaUrnV55pcn0jjZL6Ru2
 qA+9KxXUBxCnS5I+qSYC7pO7+T7N7gVfOfyhB1uwWpwNtBVfFkHIOQgfY w==;
X-CSE-ConnectionGUID: 8Xk/oq3ERZeRS9TKp+7ceQ==
X-CSE-MsgGUID: o8TEPsslTpqZpnFKBsjmCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="29560055"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="29560055"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:39:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22154414"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:39:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:39:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:39:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:39:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Of28OnB/vqpARV8fCddEx0h8ZPnr+JCTRnCOTQsxqtl6j3uWo0aEqncpVriI4OSNz105Oj8C+FFWVicljTk0/VhkabKkECzaQyOJFi4mDP8xRAqqcl+WntYNEpU6zTDVPmN0prLwIRm0IZad9IBX8r/Qf8BrxwGs+ndjPfpOybaJdbhmjz3BhAhTsFqgTrsHxQai+Bdj7vectFtaFNhrX1eYZnz+cZFCk5XRlyvSO69RSeXCr4QJrRbGCDkAoe1IqKwhAfeH9TfGD2tFCFzStcFHuQ9FkjP8O3FIPyCLTTclcmHZEy9RHAhHTnYTgtTnn22JVhxFhyMLdkp1/wz1jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIIlQBnGinGIjVukYEFKJ7VilyuDmzTWoyAxKRH2MPw=;
 b=fGWSOnt3bpMM0/fOCj1l4lKFbLQeGFo7BvNtIuq3L6AV6kXHoedH1CrfLt4BtWEBOSqW1JWQ3754aU4DcRoy0bpVAfpphi8/XaKJxjRig0WULMXshkVDgtS2c+ugkdEBizpraWfahGV6WNHST3VHCxOs5pa7TDxopgkab5cHQr+n6NEJ+2HmSIzGj5n7VtGq4BXgsXpF2eThU9KyM9UBQPjwEvsZf5Z02dpIMyNbF5Q2MvfbZSlg+RbbH1Fc6G6RroStjn2U3D0Lqdk6Oc381js0Nwrxy+BUezh7zSYa8rodauQvP8qZT4tu2RbHunXXHYuajuinR3iB4ezD4ADQmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB6659.namprd11.prod.outlook.com (2603:10b6:510:1c2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 09:39:01 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:39:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 12/22] drm/i915: Pass connector to
 intel_dp_need_bigjoiner()
Thread-Topic: [PATCH 12/22] drm/i915: Pass connector to
 intel_dp_need_bigjoiner()
Thread-Index: AQHagXZbfSZ4PjtyAk6FC6svWmkhTrFTLeFA
Date: Mon, 1 Apr 2024 09:39:01 +0000
Message-ID: <DM4PR11MB63602593338859788725F543F43F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB6659:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q9Qxff8nmMDLFdVv3H8d6Td7wjiTz4WK4sgIKRctiFpWhNs6gqdAOcwBcKg1epJ9d3CnmWzwWAgJM6zyAsxssAvvahd+XiOXrzUAmp7LPjB0NWU0m3RpjidGexvxjY5kWWyyhfu50R3BKghvA73+wwGVrZNR0Ndaqu2kjJiPFCN4HwrwdEYKHEQGGrzkfvxNDeGJl3y0b6zkraLoZoC5iGOAUZoc3W1nExcvnsP9aNfYi6kQXDwZrcy3PbrmaEgb/x1O1cNJ5/6P+N6wDsI5SqN/Ax+dnFubikA6SwZYreJka5sRsiRMZC+dLBMdsR4xZeMrLpiYEYGJ93SXSbHrKTcMwIFMJA5gdCHyT5O/ohPNJtVQUXg1Ts4oOiWnCANTKwvUF7TiFfSG6TYbXyl8GDqz4maALvDcbRywaEElpn9Hp6Sfg2tDP3It8+4lK4NcbsVZ4BEioDkw75SwOSIONNCrdNldSOWmMbVXlubOfroyUjPZMEcJ94Ut2OB5ASY29wCM/xUyk1eT4y/yex5rSXuTaqM7Hx5PQ4Dqylha+GawJFa1u57v0G3mSN9rVnDBeNBamlD3DQc59OBTYuUzv1K9PYLHuuBga9mhnVdT6o/JVWF6Ptx7l2OwXD+pozBXz3Df2ZKGV3WnmErcXoo+QDTzmcDmHqi10sWf5TU30vE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFAzTkNIbDNJYStkdXc3S3hRTVVjejhBWjVMWVdTcUMyQmsyczNNYm44K043?=
 =?utf-8?B?Vyt0ajRIVHVOT1cxTmNFQjZVd2dadENIRCtLOGFEdHJWRGpPMGRuVG1TS0dr?=
 =?utf-8?B?dFo5WHJJLy9FSkVXbXBVMGI3eHNkV3M4bDBjUjFzWkRCT2lPVjhiRllVM0Qw?=
 =?utf-8?B?cUZ2MHEzTkFmT3hTdHptVG5raDF3SHF6Yk1IMU12YWhHd0NpbjlBSmRSdi9a?=
 =?utf-8?B?VWx6bVZrZUpzYmlmaVMxRVlEckxYR3prbjhWNFhoODhCT2RTaVdRaDZZRmEx?=
 =?utf-8?B?S1V0QTJGR2J0R0pJSTFRdjJ2NG5Sa3VqY004TkNzWGRMU3BuelpqVnhFWldu?=
 =?utf-8?B?VUdJMVFWbmlvUjBYSlBZbS9nWG9SMDVKVURwOEZsblN3UVVDSUlHVHZoVFFX?=
 =?utf-8?B?QUVKMkoxR3o2RnJmVlFJVjFxTFIzSjNzK3YrTGhIZkRnMlB3MHh5cEZuZFZ6?=
 =?utf-8?B?Y3dwM3hUNEVKU0UzNGx2WXV4REFPWjRDYnFvSnpsTWpJcmNXRytDcjg2WG9k?=
 =?utf-8?B?TTh5eGZWYm52d3hBck1lcDA5T1BkeHdraGVQVE5CVDQxV1BPaW9iMkZRRGNQ?=
 =?utf-8?B?VEFudi9xS1FnMitpcXgyNHJYdERxdjdieW04MHUrUjExcmhrMjBtV1ZONDdw?=
 =?utf-8?B?L0tmbS9uZ2I5VDY4OXdUbmNpNzZFbGlFRm9zd1VscDVySThaV2o0RHQ3QjI4?=
 =?utf-8?B?UE5SeXVlem5tN0E2ZHd6S1VEMURzUHZyOVd0bFR2K1JpQUh2bXkzMTlKZjlz?=
 =?utf-8?B?MlpEUHBHdXNZQUNtKzJXd3BrcVRicHFZRmlhbEF3OTliS1BjZmt5UFdwTjdU?=
 =?utf-8?B?M1VJSVhJWEkvS240NmZIdGNjNVdjejBjbHZPUGwxcXhFLzE0RWtkZEFraVhT?=
 =?utf-8?B?SFlrSzNTOFJvVitiRnRFRXJ0bnJvVDNQWnc0RUQ3Q0ZLQkU4NmFsV3pUd3RI?=
 =?utf-8?B?WHBia1hvZGtmRTh1WjBsdGdFaE5YZjd3L2NkcGNMSnB1ZjkrdGJ0clo0elNw?=
 =?utf-8?B?UytiS0k3aVBteEZRZFRhUGNpRXJSUjJmQ3Izb1ZYNDFtVlFkSlZvemVjVnd3?=
 =?utf-8?B?OVFvbjk4NFVuVzd2eDRsS3dIQkRKcXJYNnpyYlMvWEpLYitXZHdlcnZMQ3VM?=
 =?utf-8?B?bHd1Q29nUnc1ZmlIVFVPT2J6N21mMTlmVWpMK2lxeTN1Tmd1QjVKczBrUERW?=
 =?utf-8?B?TXhnZHJzY2JnK2l2eFk1bzJDamk4NU5DTllJOUJpa0ZWZHVxbUk5dHZ5OERu?=
 =?utf-8?B?ODNYSE5xVC9kVEZnTWVkWXFDc3A2ZlE3REdpczcvNWZ6bUZWOWtYQW42aTRO?=
 =?utf-8?B?bTZHeVJ6Q1hrRzVaS0Y3azRMZ1hwd0lOd3hQWVR1UVd1emZkY0hIbFJIRjRU?=
 =?utf-8?B?VXpXeHdhTHRpNXFhSk5BTW5YWVlHaEJ4NHUrcjl3TmhsZFlHOTdwNGIwaXhw?=
 =?utf-8?B?RXFPbUdrYklMajNwZURTRHZMNlFseXBuWUphY1daK2M0d2RhRzM0NG1walBE?=
 =?utf-8?B?bFRFZ0FMd2ZianYveHR5WTR6eVZYUGpjRmtwZytwTHQveDhwc3FOZWlJbFF4?=
 =?utf-8?B?V2JGekR2WFp6TEl3Q0cvVWFvUVZyQktMZ3NVWGtESW84c2VWNUhpUXJIY2VJ?=
 =?utf-8?B?TVJENGtHcnEwRWdGK0NJMVRtWS9YaXdMV0lOZ1Zta2krbG4yWExDcHRxUEN3?=
 =?utf-8?B?bFJXaDhaem1ZOS9GT0IxSGJwckNCUEcyVVpocVR1N0FpeVBXL3BZcE9NUUg0?=
 =?utf-8?B?TnVzWktNN0ZVNnFZNDVPell3c1BZOVFIOFJITlZSWnJUSXRGODY1alpKUXBU?=
 =?utf-8?B?WGJpZ3Z2ZXBxYk1vL3RiWCtITGF6dDQ0azByRk90M0xaMVdNekdCMFdSc3hu?=
 =?utf-8?B?TU0vYnJsdHh1ZW51dURNQUR3UFNoaWxsZENTQ0hQWEhGQkdVNDk2bWVUdEhv?=
 =?utf-8?B?WDFOTWNySkNDNjBhYW55TzNjdThySm8xSkpWOVVHbHhQV3kwME1KVHM4dW5Z?=
 =?utf-8?B?dHN0NmEzeFlLOGIxNlNSa09kMll4N3FOcVZVYW1JVmRwYkZNZjZrVEQ2U3Bs?=
 =?utf-8?B?NmV5SDE0K3ZoUDNDV2tINnB3MnZlMkJxekxKanZBbXJHUUt0UUtwOHA0cUxi?=
 =?utf-8?Q?T3ark7i5YxQboLtJbt5WR9doY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a007a518-47c1-4e72-73de-08dc522f902c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:39:01.5465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYbQcRAJRidzB89FFR6/s0nYq0C/uQcZ2SrMrpUKZv2pmeoHBlZTM0rM5F5eLfvinS+g0m//BDmC6DeIOSI67Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6659
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
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTIvMjJd
IGRybS9pOTE1OiBQYXNzIGNvbm5lY3RvciB0byBpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcigpDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gUGFzcyB0aGUgY29ubmVjdG9yIGV4cGxpY2l0bHkgdG8gaW50ZWxfZHBfbmVlZF9i
aWdqb2luZXIoKSBzbyB0aGF0IGl0J2xsIGFjdHVhbGx5DQo+IGNoZWNrIHRoZSBjb3JyZWN0IHBs
YWNlIGZvciB0aGUgYmlnam9pbmVyIGZvcmNlIGZsYWcuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpS
ZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAg
fCAxMCArKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggICAgIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyB8ICA1ICsrKy0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IGluZGV4IDZmYThmYzU2YTM5Yy4uY2JhYmQxOTI0NDc0IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0xMTk0LDEwICsxMTk0LDEwIEBA
IGludGVsX2RwX21vZGVfdmFsaWRfZG93bnN0cmVhbShzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IsICB9DQo+IA0KPiAgYm9vbCBpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IsDQo+ICAJCQkgICAgIGludCBoZGlzcGxheSwgaW50IGNsb2NrKQ0KPiAgew0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
DQo+IC0Jc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFj
aGVkX2Nvbm5lY3RvcjsNCj4gDQo+ICAJaWYgKCFpbnRlbF9kcF9oYXNfYmlnam9pbmVyKGludGVs
X2RwKSkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiBAQCAtMTI0MSw3ICsxMjQxLDggQEAgaW50ZWxf
ZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqX2Nvbm5lY3RvciwNCj4gIAkJ
dGFyZ2V0X2Nsb2NrID0gZml4ZWRfbW9kZS0+Y2xvY2s7DQo+ICAJfQ0KPiANCj4gLQlpZiAoaW50
ZWxfZHBfbmVlZF9iaWdqb2luZXIoaW50ZWxfZHAsIG1vZGUtPmhkaXNwbGF5LCB0YXJnZXRfY2xv
Y2spKSB7DQo+ICsJaWYgKGludGVsX2RwX25lZWRfYmlnam9pbmVyKGludGVsX2RwLCBjb25uZWN0
b3IsDQo+ICsJCQkJICAgIG1vZGUtPmhkaXNwbGF5LCB0YXJnZXRfY2xvY2spKSB7DQo+ICAJCWJp
Z2pvaW5lciA9IHRydWU7DQo+ICAJCW1heF9kb3RjbGsgKj0gMjsNCj4gIAl9DQo+IEBAIC0yNDA5
LDcgKzI0MTAsNyBAQCBpbnRlbF9kcF9jb21wdXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9l
bmNvZGVyDQo+ICplbmNvZGVyLCAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKHBpcGVfY29uZmlnLT51YXBpLmNydGMpOw0KPiAtCWNvbnN0IHN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9DQo+ICsJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0NCj4gIAkJdG9faW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNv
bm5lY3Rvcik7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPQ0KPiAgCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7DQo+IEBAIC0yNDIyLDcg
KzI0MjMsOCBAQCBpbnRlbF9kcF9jb21wdXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyDQo+ICplbmNvZGVyLA0KPiAgCSAgICAhaW50ZWxfZHBfc3VwcG9ydHNfZmVjKGludGVsX2Rw
LCBjb25uZWN0b3IsIHBpcGVfY29uZmlnKSkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiAt
CWlmIChpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihpbnRlbF9kcCwgYWRqdXN0ZWRfbW9kZS0+Y3J0
Y19oZGlzcGxheSwNCj4gKwlpZiAoaW50ZWxfZHBfbmVlZF9iaWdqb2luZXIoaW50ZWxfZHAsIGNv
bm5lY3RvciwNCj4gKwkJCQkgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSwNCj4gIAkJ
CQkgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaykpDQo+ICAJCXBpcGVfY29uZmlnLT5iaWdq
b2luZXJfcGlwZXMgPSBHRU5NQVNLKGNydGMtPnBpcGUgKyAxLCBjcnRjLQ0KPiA+cGlwZSk7DQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+IGluZGV4IGQ1
Njk3Yjk5YWMyMS4uY2Q2OTY5ZDA1ZmUzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oDQo+IEBAIC0xNTAsNiArMTUwLDcgQEAgdTggaW50ZWxfZHBfZHNjX2dl
dF9zbGljZV9jb3VudChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Is
DQo+ICAJCQkJaW50IG1vZGVfY2xvY2ssIGludCBtb2RlX2hkaXNwbGF5LA0KPiAgCQkJCWJvb2wg
Ymlnam9pbmVyKTsNCj4gIGJvb2wgaW50ZWxfZHBfbmVlZF9iaWdqb2luZXIoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gKwkJCSAgICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yLA0KPiAgCQkJICAgICBpbnQgaGRpc3BsYXksIGludCBjbG9jayk7DQo+IA0KPiAgc3RhdGlj
IGlubGluZSB1bnNpZ25lZCBpbnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQgbGFuZV9j
b3VudCkgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+IGluZGV4IDFjZjYyNDFhN2Q1My4uYTNiMDAyNmFkYjJkIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTUyNyw3ICs1MjcsNyBA
QCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9
IHRvX2ludGVsX2F0b21pY19zdGF0ZShjb25uX3N0YXRlLQ0KPiA+c3RhdGUpOw0KPiAgCXN0cnVj
dCBpbnRlbF9kcF9tc3RfZW5jb2RlciAqaW50ZWxfbXN0ID0gZW5jX3RvX21zdChlbmNvZGVyKTsN
Cj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmludGVsX21zdC0+cHJpbWFyeS0+ZHA7
DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0NCj4gKwlzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQ0KPiAgCQl0b19pbnRlbF9jb25uZWN0b3Io
Y29ubl9zdGF0ZS0+Y29ubmVjdG9yKTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSAqYWRqdXN0ZWRfbW9kZSA9DQo+ICAJCSZwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsN
Cj4gQEAgLTEzNDIsNyArMTM0Miw4IEBAIGludGVsX2RwX21zdF9tb2RlX3ZhbGlkX2N0eChzdHJ1
Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiAgCQkqc3RhdHVzID0gTU9ERV9DTE9D
S19ISUdIOw0KPiAgCQlyZXR1cm4gMDsNCj4gIAl9DQo+IC0JaWYgKGludGVsX2RwX25lZWRfYmln
am9pbmVyKGludGVsX2RwLCBtb2RlLT5oZGlzcGxheSwgdGFyZ2V0X2Nsb2NrKSkgew0KPiArCWlm
IChpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihpbnRlbF9kcCwgaW50ZWxfY29ubmVjdG9yLA0KPiAr
CQkJCSAgICBtb2RlLT5oZGlzcGxheSwgdGFyZ2V0X2Nsb2NrKSkgew0KPiAgCQliaWdqb2luZXIg
PSB0cnVlOw0KPiAgCQltYXhfZG90Y2xrICo9IDI7DQo+IA0KPiAtLQ0KPiAyLjQzLjINCg0K
