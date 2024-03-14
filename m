Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AFB87BF14
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F1F10E93E;
	Thu, 14 Mar 2024 14:38:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJDfIkM0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B3010E93E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 14:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710427101; x=1741963101;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=L1TH1MILqp33rpYYWxLKxsiXV9cCPON/naGPssslAZA=;
 b=UJDfIkM0bg3mfZ9iAQoDn8ZzQLm/T1LBvE0xezcC30uAONmkSGjsqgnj
 nPmnxTzPLHLQI3fjIvfIXSaJKI3LmbLHuVv0X8xPuRk4rKc+s7o0yob9Q
 rzWpSxYlDESwSl15yzS4yfk1b1ZOfHtDioUmb5Kx874vTjD1jCU0vEeOl
 7uerA5OwuHc/NHENWZouE55Jy9b6Nb4pVaJbfW/mmXJtA4tULA+xdgbKH
 acB1DqhKJ/FgDAYddpQyBbQY5Bh8AFVKe4LEIBqCLiJK2EAs6u5+zqtNM
 wvZKCFuTaa1uQW2r8gXYQ9sX7JgI2nq4s1i4AWWFnrbM5S6dNmpptszQS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5103001"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5103001"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16772526"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:38:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:38:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:38:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:38:18 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:38:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlRuw0bpdOOGheIrob/QzH0CbNdETGF+wAiMALVWQOgiKdYYKes30VvHMhAOEHZaXPaV3Wz9LPERZ8WrWlrK4v/nABzDdxLcc7DdoXK7N01O83TdrRcORvs2gQL5xPYHsqZWWK6zeFovkv/08YF5jv9s0MgC+rtyMRrAQiFYfPdveRoy3NUZH903eR4wRe7OEhkzI8eMxcGN64PQ4tk/4lf0GAMM+eMkcKtWS7Fj6pFmnk1gNtMQVpQbWN4aa52btp/CzRqKOAAU52YIKKp4zHO0OSWLN7m5T7ZC8R+nu6dsHii3vfRkzE8WamJ557O/gLI2Tn5Uz5GoZ1WR6BF14Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L1TH1MILqp33rpYYWxLKxsiXV9cCPON/naGPssslAZA=;
 b=Oj+JE+NOE0wNIHiXwDbncvEffVXDSiK0xclyS7cmz0MgciDvdBq4PNlB8Wg/+8n7gpgLVgiA2fzMDLT25xooVMjU2MXax+LUq7rHKTKKHVP3wXdhFWCDCl+SE/AKWVH+o5X6ZnFVjR9eI4EIDePorS5ZIXjzw9QRAIzs0GN2MagjFDZY/JIUZzRSQ1cSM6ijXBCiGCHE4Uy4BrxKAiY31ahLcXSxQDql58y2HCguDQPzUUeqQTy3+r/+17RZcZrrQwRV+DixV3bCzz/EaElUZ3TpeE7kkF90PJ7ia1Wbo9chP5Ddt3eF43NjdQzuMIMUZG7OoeK6dg9S7lsKfmUZgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4597.namprd11.prod.outlook.com (2603:10b6:208:268::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:38:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:38:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v6 4/4] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Topic: [PATCH v6 4/4] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Index: AQHadUrxwn60oW07A0O3GxesKl+rYrE1s2aAgAGcgQA=
Date: Thu, 14 Mar 2024 14:38:16 +0000
Message-ID: <ef40e4e9ae8b5438ed6d0b8bdab571932148b4f2.camel@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
 <20240313133221.868391-5-jouni.hogander@intel.com>
 <ZfGxzYQl5GuPGM4J@intel.com>
In-Reply-To: <ZfGxzYQl5GuPGM4J@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4597:EE_
x-ms-office365-filtering-correlation-id: 3bff44d3-e660-4d3f-ad33-08dc44346288
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6StpQcqXOF6htKUS1K56Q/AC2SeHQ2upy6v0pz6OyEhntD8sSdhdIKItnh99cPGJ/8peUFa1tZkOyJsoNEFskAi7bt2Qj1jgel8PnEx6Ug3n3DSfe+F14RFufow9zNwYGy8fVDOpM290OZcZgmFDX3QBJTSR3sAWFGVWsMSZwNpoVbtVQSbdK5BgKK8bQX7gXCJaVO2peiuN/TuKOw4hS0L39QMdwkbV6KB8gbNlrGQoKn64w/b0SJR7hQgiQCYH7YR2gry4B0neNwoIk/IWUJsO3rw5k0GOHgIyAHKKbt7TmrO4/P9C4eH77JkQnlVDT+mD9J+jK4axe8h3CTFjigiYnjF4Q+iDbKr1jhxNP6FH85ONmVriDlFBykyjUZ8bMAkpQLVBJIpEX8LMkKhNm+znz7tLScOtZFmeGZRp7JjbJG+fFBxfZu1Vf7LrdLvr4OcAoTzq6cLhAAevOIWLYZx6MakFByHw4fdLG5nXifq/aVeIj871StwOH7z4L0wLPpXMQgfQkk5376doiENi7TvbaQv+7KkDfQMJ9f9lJEzkvQCmmOxGfBxkuPxb2WYueC4PalrlK6hZfpUTPBwO+v6bd2QthqZDUda7QCn+k4BA2bAwYbYe6b/e+Ek86zlYl7VD6zj5M+tptco35RFTwwJRV84LTGVdCjhsVd7w0x8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXV4SHZnTlBxQUtzTEdNOVdFbkdkVXROSE5DaC9jTE1lM2FmQkFLd3QvRmF1?=
 =?utf-8?B?TGc5WXFtbmNQZmRlWTdUaUx5bGpBeVByc2QrMkgyOFdKVnlVdUgrd2FxUity?=
 =?utf-8?B?cHBHaUU5VVVucTdxVE9VWFNaaHdMenh4R0VPdHFlMTNoVmFIVnF0b252aWJX?=
 =?utf-8?B?bGQ0TGNSMERkVS96NXNWdUhvazZUcEJFRU9mQWQwZjhsUGx2dDZmd2dHUUNq?=
 =?utf-8?B?UkNTTVJYaHQ3QnNrVWVKSGl5c0xvWVBRZWIxc0tpQlJ4Y0dEblMyS1ZlOE1O?=
 =?utf-8?B?cDBtZ1JLOVNkTzU1T2tRQjByQ24wVnVFOUpKbG9FRDF5ZGNlcjdNNzJVYXJF?=
 =?utf-8?B?bCtzbGJ5YVkzem5QVGtWNEx1YmdTOEpEdzVvdWZyQjNncmErRk9HdEhncW04?=
 =?utf-8?B?RWo1NDBmVkUwRmJVcEF4NzFzdWR6ZFJzckNGZzFGTFlLMzF4SGFXRWRNRlBW?=
 =?utf-8?B?eXQ3SXZ2VmlkQjd3ZTB3V2V6bVNDZndjUHdOWHdlM0xUcVBwNFdLUlFUaXl3?=
 =?utf-8?B?MjhyRk9jTC9WRm1BSVJFdS9CR2ZNRDI0R1hRZ3pkb2c3SEFyRkNMRnhmaG9y?=
 =?utf-8?B?SGIrR0NTS2N6dUk2UkhjdDVZMkEzTG1oVzZFU0NDMHBHTEl4N1dZT2s5QWFj?=
 =?utf-8?B?dE9KY1orMjRHMWU1VWhoeUhNb1NGR29Dczl6ZktUT3Qvbk9IRWplMWR3RTFP?=
 =?utf-8?B?TWpVNXVPTGVmQmdTZXRmQ0FPUmZvbTV4TDJqblA1RGlIYUJPR3pwUWs1UTR6?=
 =?utf-8?B?OGllWkZHTGFkZjdlZUdMQ1RtR29vbnpOQmlWUWRFenpzd3dDTzBXelZTd29K?=
 =?utf-8?B?THRJT2FBWitHbEFoZmczOThBZkRaYlZZTDkzUURtUTgzNEpUQWhKdGtDa3dl?=
 =?utf-8?B?Umw2aXFNRWNHS3BKeUw4NHBBK0hzSzg1bUNQbHBhVkpndnVWelYzWU5jRmxq?=
 =?utf-8?B?eCtoekkycE9iS3VIZGxyTWo0UXJ2aUgzM2dadGFpTUNCOUlKY3lMRnQ1OTl5?=
 =?utf-8?B?aEVxZXI0cFVBZktRbDJmRGlxMG5Cbnhyc2N2bjNMTTAzNmRFMHBCQ0NIemlL?=
 =?utf-8?B?VGwzKzhSRitydDEyTTYrWUtNTytJVUVBRXVKeWxUK21TZ1hGSGZwWFUwQnYr?=
 =?utf-8?B?NmhBbHBqNU01SERyakRXdVZNWXRtVEliSW9yQVRtMDk1VUJndVViZTRQcFZj?=
 =?utf-8?B?L3pKam9INGhiZXNYUjhxTE80a2ZEWWFOYWVvNUZDek5jVUM1NUU5UjFtWVZC?=
 =?utf-8?B?bUVlVkM2Mno0U3A3YVVrNTdXYzQ0T3RONTR3QzNwcS9Zd0x2OGZQZ1RDZEhs?=
 =?utf-8?B?M1dBbDVDdkRsYlBDL3JsNkkxMU50MjZiQndCTVNlL3ZtbXdQbVU0YkZLSjV5?=
 =?utf-8?B?ZkoyT1NOUlg0dTlFM2FXOFBNUDY1NENJTFdFSnpmSnE3T1RmQ01PcDUwM3dS?=
 =?utf-8?B?Wko5MHB2Wk8xbG5nWm1IaUxweVREZGJjeVJmUnB1eVZaM0E4TDdZMnBoVE9S?=
 =?utf-8?B?QW1kTVpPNWNTQkFTSXZCczFmK0FOVnp4blE0MTNGUnlzUmMwdVhmcVB4WnNE?=
 =?utf-8?B?eDVSSnY4WlhZZjhxNUFmTmp4RVd2anVPREoxOGd0ajVxZ0toY0dtdllITFhN?=
 =?utf-8?B?L0hWbi9ZTzlOeFo2Z1NjTGNBN0NRamExdFBtS250bExuZGFmbEN5bXZJKzlh?=
 =?utf-8?B?L2dNOVZqQXZ1WjgrcHZtYXo0alJsdEhyMDhJNW9YZkhDKzRYcjA5cG5vd1l0?=
 =?utf-8?B?WDJGd1BUQ1Z3UE03bzJGMURsQVEvZDlNSHptdjE0NXVSR0w4RG44QzVzN2Mw?=
 =?utf-8?B?NzR1bjNkQzNRaW1nQkoweUJUUUV3eUNzWUF4V0I5bUl2dnVjRGFxcVV5NDVW?=
 =?utf-8?B?SDFHcXdQdjFkYjU1NllORWVRTDNFVVhMZnYvbjlwbEo4ck91dFg3QlVTSHVt?=
 =?utf-8?B?S1A1NlRKelk2am5pbXVUME1IV1FibGVPaE5WUEpFUHBZdjB3cEsvRTUrRGlz?=
 =?utf-8?B?VHRVV3QvMzd4WTkvU01OUVc3UmpHY0ZqQmY5UzQxc1VhRDhvUktmZUZIWmsx?=
 =?utf-8?B?MDBMczEzUTdjdStzSE0yeXVPZkFZdGFtd0ZFUEYvZFpBSGxCSEhwL29tMFZH?=
 =?utf-8?B?Qy8wSVRSZWYxSHZJVDdCc0xWRDRWWjlnY0lUa01nTk8ydEpXUTBsMkp0dmdx?=
 =?utf-8?B?QkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3B75737C3CCD1F4CB0B99BC82FB01DE3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bff44d3-e660-4d3f-ad33-08dc44346288
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2024 14:38:16.1650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q1OAl0ITwootUzYUFi29nT5mFpZ4umboEMWDR6YIdXUZchhOpkHHMxoGJ1LDeOL6u5J0tv7sZY93dyGIaTB+WyqfMpT/JlgfNglhL2GMrt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4597
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

T24gV2VkLCAyMDI0LTAzLTEzIGF0IDE2OjAxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDEzLCAyMDI0IGF0IDAzOjMyOjIxUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBJbmNyZWFzaW5nIG51bWJlciBvZiBmYXN0IHdha2Ugc3luYyBwdWxz
ZXMgc2VlbSB0byBmaXggcHJvYmxlbXMNCj4gPiB3aXRoDQo+ID4gY2VydGFpbiBQU1IgcGFuZWxz
LiBUaGlzIHNob3VsZCBiZSBvayBmb3Igb3RoZXIgcGFuZWxzIGFzIHdlbGwgYXMNCj4gPiB0aGUg
ZURQDQo+ID4gc3BlY2lmaWNhdGlvbiBhbGxvd3MgMTAuLi4xNiBwcmVjaGFyZ2UgcHVsc2VzIGFu
ZCB3ZSBhcmUgc3RpbGwNCj4gPiB3aXRoaW4gdGhhdA0KPiA+IHJhbmdlLg0KPiA+IA0KPiA+IHYy
OiBhZGQgY29tbWVudCBleHBsYWluaW5nIHB1bHNlIGNvdW50IGlzIGluY3JlYXNlZA0KPiA+IA0K
PiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy85NzM5DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eC5jIHwgNyArKysrKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBpbmRleCA3ZTY5YmUxMDBkOTAu
LjMyNjQwMjY0NTRiMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0xNDUsNyArMTQ1LDEyIEBAIHN0YXRpYyBpbnQgaW50
ZWxfZHBfYXV4X3N5bmNfbGVuKHZvaWQpDQo+ID4gwqANCj4gPiDCoGludCBpbnRlbF9kcF9hdXhf
Zndfc3luY19sZW4odm9pZCkNCj4gPiDCoHsNCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnQgcHJlY2hh
cmdlID0gMTA7IC8qIDEwLTE2ICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiArwqDCoMKg
wqDCoMKgwqAgKiBXZSBmYWNlZCBzb21lIGdsaXRjaGVzIG9uIE1UTCB3aXRoIG9uZSBQU1IyIHBh
bmVsIHdoZW4NCj4gPiB1c2luZyBIVw0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGRlZmF1bHQgMTgu
IFVzaW5nIDIwIGlzIGZpeGluZyB0aGVzZSBwcm9ibGVtcyB3aXRoIHRoZQ0KPiA+IHBhbmVsLiBJ
dCBpcw0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHN0aWxsIHdpdGhpbiByYW5nZSBtZW50aW9uZWQg
aW4gZURQIHNwZWNpZmljYXRpb24uDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+IA0KPiAiTVRM
IHdpdGggb25lIFBTUjIgcGFuZWwiIGlzIHN1cGVyIHZhZ3VlLiBQbGVhc2UgbWVudGlvbiB0aGUN
Cj4gYWN0dWFsIG1hY2hpbmUgbW9kZWwgaGVyZS4NCj4gDQo+IFdpdGggdGhhdCANCj4gQWNrZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClRo
YW5rIHlvdSBWaWxsZSBmb3IgeW91ciByZXZpZXcgaGVyZS4gUGF0Y2ggc2V0IHB1c2hlZCB0byBk
cm0taW50ZWwtDQpuZXh0IHdpdGggY29tbWVudCB1cGRhdGVkLg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHByZWNoYXJnZSA9IDEyOyAvKiAx
MC0xNiAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcHJlYW1ibGUgPSA4Ow0KPiA+IMKgDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBwcmVjaGFyZ2UgKyBwcmVhbWJsZTsNCj4gPiAtLSAN
Cj4gPiAyLjM0LjENCj4gDQoNCg==
