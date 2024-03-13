Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE5D87A2EA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 07:20:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D24210F621;
	Wed, 13 Mar 2024 06:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqvPPvYq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FD210F621
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 06:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710310839; x=1741846839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=085/nx1gIPCEKwdKR+OcPAXU+zU/sfRePptlz24k6rk=;
 b=jqvPPvYqUqHZd37zSoAJ6VzytYiy7aVLSVYpSpq7jHOWTylLsjp/T7/z
 PlHk1LJJR85Cw73RupaXz7/zDVxW4WyVnxLYcUgtyiburUQpQB/WglNU/
 ApmIir1Z9S+Pu9jmB3E1n1Cz4K9LrETujzN0JP0Btp0z2x2hNxjXY5XV2
 tbZpITxPUbu4LTe26qxIsYvNfDTqxpoboUHuIDgMaZnfHhnBmauDR4bqN
 P4ngB6incTaes3U7qIl6gR/E3beWy8Z9GIzf1ocwvQ0uPOgTigtgk4N6Z
 8KCghoFaf7qkxJ9Bg2LTNkPccEMIpPzWaR0hDgjEhEpi+IZGVEH8in1VP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8874604"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8874604"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 23:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11718772"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 23:20:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 23:20:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 23:20:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 23:20:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2vU2h7hx5ST2iUcTQJvMv+4CnM1evK7Qybn7KjSYZQbSUZt6svsLVa5dSes3UYNaZHmC/2vnxRo4wHI1JHy3AT/Vm3s75w6xeV44sgQKSBzyJYEg5qAEEf/RANSJoi6Jvk96++1xo80osL9yCd9j1DwRNPLKleYzGgym0a6dtNKVH5nTeUTBlMsPaQcNsDkLUPJFfmFlvNva1zw3/fbNLMPZnXnaZdsOAEWLcwlJGrt0ajqq8NN5MIy2J6D+MlAkpn8/8yI75lxvlv+RUfpUlWULAhELTn/OlMnAaz1rBqvQ+dseH6ZZ7om3b+Y2it9cPw+cQB4gcGEn7SdjDLhPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=085/nx1gIPCEKwdKR+OcPAXU+zU/sfRePptlz24k6rk=;
 b=Cgo/Lq/+n/t4Df/JmyyrR+dQj1kp2kRf7/LFfObINTp9c3v+YB0+SqjIIP1QMYDp8O4luMx89sssedXw+UZs2nBBpqyvZiKoGd31+BGBTkRjwTCot7D4rLSRHnfjqFLFEhdM+6z+AuKXV5MJSUKgC9AC6vSX+A/nBnab+oC0kQwXvxLbjhNkcXtulL0nvkow66OWui8r+/NrIUW7XENM02F6RPUSY8ZzMGK6qgpYac1BSkdIqA4UBHRxh6cfXkaE4tflgIB1YTYzFrws6tg7UaF6fnxMH50KbYgGkY+qzm+KZrSNnpkStV1J1NItZ7LeZRV8AJa0LSsoHVcRUd/Sig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV8PR11MB8583.namprd11.prod.outlook.com (2603:10b6:408:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 06:20:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 06:20:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Topic: [PATCH v5 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Thread-Index: AQHacUgOf5D/nqVvskWfUORXnZoNJLE0VpkAgADj8oA=
Date: Wed, 13 Mar 2024 06:20:34 +0000
Message-ID: <535728881bacc3f5aaa5c37e91c443d79ebe2a9d.camel@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-6-jouni.hogander@intel.com>
 <ZfCGekSEs_gS9zUZ@intel.com>
In-Reply-To: <ZfCGekSEs_gS9zUZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV8PR11MB8583:EE_
x-ms-office365-filtering-correlation-id: 159ab549-b5aa-4ca6-3c1d-08dc4325b12f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JajpYJr60vW4s0bRBPOT3/kUdhT7zCimPouq/4jsKRsl0qqTW4auIdxgj2t8P82UqR0KsLFIVv68XxA5kSD0zMu+u538YYJUGh9uhhwnjU2BLX/ngERewd964Douzr6k2R0ySSYaLSydiMR7TGEN0tuYppQqFDWeC4DXSKJcgSNIhJUX+PbqTgtrzHYSa130AXiullfPWn5/aUZ9D3u5u9inuP37JrNHOVsjUGWJsBPKImDodUBnd1dM6HwbgnFjWKf1j0vCbgk2C1nThNZEcNkPHlKYfuA/Cq2dWviX5EmsKwATBbz5voeV3Rtd+FxpOlyzjGRpfjXWnAgzTJVIbPHaliu+veZfibXP3tTcLsuSpga1MHzvDzCylKRijKDtkPjYDeHtYggjldhO7Y8cg1ekKF2j5LXYg9v2RLFtKn9tJGNJbDJYD34buZGokA7Qhl2TxTq+lerk2VPkUaMrnDkxKrP+BTWZFTYr1dqcraOpjIe1LDwPG7Mc9+u7dfeU34pUbB9+1xT0gHxXpY91yuOnl6wu7eDxWkewNrs0GkIm1vAY86DZhd+FeiKKkGEZVERVoKEWDhxKnEkjA/ztrQFAc6GSSn/GLPLfPTGAJTTZaCm+cSsEZiXeY7jGcNV815vJqSurgPsshVbiiLOjnL+p77NrwgOlbxHh+FJ7Ogc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnJOYkZ2Ym80Qm1relZXU1VDWG9wYWIrZ0JldklwcjdzOUJ4czVoV0VWWm1I?=
 =?utf-8?B?VDJlQVI1Mk1GL2Zadmc0S0U2emIzRnRORm1xNU02ZTYxNjFZM281Q3RwRUF1?=
 =?utf-8?B?a1Z1RWYyeElDUk9KcXlFQlR6Q1B3TnlKMXVPM2JyeUdBekovQmF0MllkNW9h?=
 =?utf-8?B?Z2lsdGlQYzRYOEtqbjVtbi9LeDFGREFNQ0pRQ0NtTlRFTG5qa3ZlTFFSWHJF?=
 =?utf-8?B?bHF4WXRQaDVLWWJLVFRuTG1BV01hemVIZmFWd3A3T0dZK0VpYUY3c3owSUNp?=
 =?utf-8?B?TzFtTU5vL1NNVlg0eENlRDNRRjYydUVLZm1mNlpTa0xqUkdMTXBCblo2WWR0?=
 =?utf-8?B?Zk0zR3FrZXdTSGRwWVJrNkpNUkd1MjJQMXlHa3JSOEh5d3c3VUdXMStFb0NT?=
 =?utf-8?B?blNLZEFmQmlrYTk0VTY1OEtvTURtTE9QSk8rclBPa0R1cmcxNnRtc05HUlhV?=
 =?utf-8?B?TUl3d04zVTVLNDRmSHJRWHByVEVJU0U5Vld0WjZMWnU0d0tpbnJydnpBVis0?=
 =?utf-8?B?Z1lhbnRMSGt4L0JZbk81dHVaSXNLZFBBc3VWcUhuanZ2MjhiblZvMzRvOWNC?=
 =?utf-8?B?U0ZkckVnM2s0ckxMN1ZOWTVSMWxtMlUwcERISGk0MkJRUzF3WmkwS0Fsc0hH?=
 =?utf-8?B?UUt6WXNMdFFERzlKZDlOYnlOVzB3MmFHTE5heUI4bHQxY2d6MkFidHgyQW9y?=
 =?utf-8?B?SStFeTNzcU40dEFzTGM5QXFWS1RFSTdnRlBmV3lGamhoNG15V25pSjVhVlNa?=
 =?utf-8?B?WlFXNXVSdTlnMHk0YWxMcm1FSVdRZkRRbmVLWXNWR0tsYkwxMnAxUTdIejN0?=
 =?utf-8?B?ZTQxZnE5WmhacStncEhQZHliTXJSbWFtZmFKRzlYNFJobnJTSldFOHVQZzcz?=
 =?utf-8?B?empQc20vVlltQm12M3BBUDZjbGZLVzcwUVJYL2RKOEFES0lORXY4SHdVenMw?=
 =?utf-8?B?T2JtVVdCbFMzU1ljUkpnUllHbDRHbS9rbzA2SEZoWTBJY1haOXJwenJxNlIx?=
 =?utf-8?B?WHlIOElrTStZYWtTVXo1bXlJOEYxZ2xTNnh2NkpaY2VhdTc2Qjl2THVtZFcr?=
 =?utf-8?B?bkt1b3FDU0NrOERhTURYaFhSbW9paWY2TmsvMEZ4UlJPTlNzaGJyb3h6azds?=
 =?utf-8?B?VUVYYjZFZFFDQ2U1a0NlMVdoUURrZ3N6NXhqMEdueFRVY0hzWTZJVnhMOGFU?=
 =?utf-8?B?cUs1enBJcTcrbndwV0c5TCtHdWRqYUt0aU45dUtFOVgwcCtTamJ0WW53YjJr?=
 =?utf-8?B?T05Fb2haOGpTTFF2Zmc3eUtLaDdON1YxdVVjUU1sQXZ4MVdCYVRrSGxGbnhq?=
 =?utf-8?B?ZXlUUENrQTl0ZUdIbTZOV3hSaHlnVVVHQ3hLN0tmR0F4QXFlQlNLRjExb3Ny?=
 =?utf-8?B?UkJnbWVxWHQ0TnJ5NGZRR29nUHF1YlBnN3J3d0JCRjB1dWlybGxwVi9DUUlF?=
 =?utf-8?B?T1k3bWt1NkdUdHhLenBCZFRxNHpnVk1kUUJ4SjMwN1ViY0txaGJGQ3Rqd09z?=
 =?utf-8?B?TWNyaTcrS1NWbE5kYWJzZ0NZbEZSY0VXYWM2Ri9JbS9lNEpIMHE5d000Umtv?=
 =?utf-8?B?V1FSaHJzK0o0Z0NkSmtTR1hmQ2dMOFdwNHorV1N6K0QyMUhSNUsxSDB0RHpk?=
 =?utf-8?B?ajRjdk5SOVV1TDN4UmRYVytmbHJyT25FK3psNWVyZWtRZDlpVGFwaFBIdFNz?=
 =?utf-8?B?VW1lUkdibUR2WFJRa2V0NEp2L2Fsc1RVRGllTU9QUi9nMUVDNkdYVXN5bFJQ?=
 =?utf-8?B?cEdyeEZGaW0xUmM0UFFZSDFGMVhSNnljYXpPN3A2aHg2alUxTzR0TUNZT0NK?=
 =?utf-8?B?dmJyV3NLSnhvUlZmSSt4Yjk4UDk0K1JQSmN0N1BLYkMxcFQzZ3Z3T2NabUx4?=
 =?utf-8?B?WE1FSFQ1bG8yRHlTWlk1dWtlUFEweGdvaVI5akVSSEJIUXExdWMzdjVWemVu?=
 =?utf-8?B?NVppUXVyOGZBT2sweG1ONll3aTIyb0xrbHZyMDVnS1ZWck1UU0srbkpkcmc5?=
 =?utf-8?B?SC9EZzFHb0huWmVNWWFLUVVwTmZPYVorWnRVQzE1ZzJoS21tcGdMR2ZVRkhS?=
 =?utf-8?B?bHBIRDJzYXBSNHF4VjY0eG96bjVwWXAwdXVxeTdOUGd4L2lNU1ZHR244SVda?=
 =?utf-8?B?ZnFKZllEaUZiUElybU5KalJkZDlrZkZ5RnNXMHJJZDB1YTdZOWlleHpWUnpU?=
 =?utf-8?B?eHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3CB5C21761FA84F98CAE768BFF6A31B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 159ab549-b5aa-4ca6-3c1d-08dc4325b12f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 06:20:34.4758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qg4orPlPkJh0YJPEtop/WtDNoLoMV3q+yRIebSXRMALaBV4G1BOCqME1oPiR76wlKkI5j3zP7th6M36NK36CIt5kSD+TML6DVQJ7XPD/RxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8583
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

T24gVHVlLCAyMDI0LTAzLTEyIGF0IDE4OjQ0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWFyIDA4LCAyMDI0IGF0IDAxOjAwOjM5UE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBJbmNyZWFzaW5nIG51bWJlciBvZiBmYXN0IHdha2Ugc3luYyBwdWxz
ZXMgc2VlbSB0byBmaXggcHJvYmxlbXMNCj4gPiB3aXRoDQo+ID4gY2VydGFpbiBQU1IgcGFuZWxz
LiBUaGlzIHNob3VsZCBiZSBvayBmb3Igb3RoZXIgcGFuZWxzIGFzIHdlbGwgYXMNCj4gPiB0aGUg
ZURQDQo+ID4gc3BlY2lmaWNhdGlvbiBhbGxvd3MgMTAuLi4xNiBwcmVjaGFyZ2UgcHVsc2VzIGFu
ZCB3ZSBhcmUgc3RpbGwNCj4gPiB3aXRoaW4gdGhhdA0KPiA+IHJhbmdlLg0KPiA+IA0KPiA+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85
NzM5DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2F1eC5jIHwgMiArLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBpbmRleCA3ZTY5YmUxMDBkOTAuLjVkZmYxYmM4NWQ2
MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXguYw0KPiA+IEBAIC0xNDUsNyArMTQ1LDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9hdXhfc3lu
Y19sZW4odm9pZCkNCj4gPiDCoA0KPiA+IMKgaW50IGludGVsX2RwX2F1eF9md19zeW5jX2xlbih2
b2lkKQ0KPiA+IMKgew0KPiA+IC3CoMKgwqDCoMKgwqDCoGludCBwcmVjaGFyZ2UgPSAxMDsgLyog
MTAtMTYgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlID0gMTI7IC8qIDEwLTE2
ICovDQo+IA0KPiBUaGlzIGlzIHN0aWxsIGdpdmluZyBtZSBhbGxlcmdpZXMgYmVjYXVzZSBXaW5k
b3dzIGRvZXNuJ3QgaGF2ZQ0KPiBhbnl0aGluZyBsaWtlIHRoaXMuIFNvIHRoZSBteXN0ZXJ5IGlz
IGhvdyBkb2VzIFdpbmRvd3Mgd29yaz8NCj4gVGhpcyB3YXMgYW4gYWN0dWFsIHByb2R1Y3Rpb24g
bWFjaGluZSBJIHRha2UgaXQ/DQoNCk5vdCBzdXJlIGlmIGl0J3MgYWxyZWFkeSBvbiBtYXJrZXQu
IFRvIG15IHVuZGVyc3RhbmRpbmcgaXQncyBwcm9kdWN0aW9uDQptYWNoaW5lLg0KDQpUaGUgcHJv
YmxlbWF0aWMgcGFuZWwgaGVyZSBpcyBzdWNjZXNzZnVsbHkgdXNlZCBvbiBvbGRlciBwbGF0Zm9y
bSAoUlBMKQ0KYnV0IG5vdyB3ZSBhcmUgc2VlaW5nIGdsaXRjaGVzIHdoZW4gdXNlZCBvbiBNVEwu
IE1vcmUgZGlzY3Vzc2lvbiBhYm91dA0KdGhlIGlzc3VlIDogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85NzM5DQoNCj4gDQo+IERpZCB3ZSBoYXZlIGxv
b2sgYXQgdGhlIGVycm9yIGJpdHMgaW4gUFNSMl9ERUJVRyB0byBzZWUgaWYgdGhlcmUNCj4gaXMg
c29tZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHdvcmtpbmcgYW5kIG5vbi13b3JraW5nIHZhbHVl
cz8NCg0KVGhlcmUgaXMgbm8gZXJyb3IgYml0cyBpbiBQU1IyX0RFQlVHLiBKdXN0IGJpdCAxMyBp
bmRpY2F0aW5nICJGYXN0V2FrZQ0KRG9uZSINCj4gDQo+IEFueXdheXMsIHRoaXMgYXQgbGVhc3Qg
bmVlZHMgYSBwcm9wZXIgY29tbWVudCB0byBleHBsYWluIHdoeQ0KPiB3ZSdyZSBub3QgdXNpZ24g
dGhlIHN0YW5kYXJkIHZhbHVlLg0KDQpPaywgSSB3aWxsIGFkZCB0aGF0IGNvbW1lbnQgYW5kIHNl
bmQgYSBuZXcgdmVyc2lvbi4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBpbnQgcHJlYW1ibGUgPSA4Ow0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBwcmVjaGFyZ2UgKyBwcmVhbWJsZTsNCj4gPiAtLSANCj4gPiAyLjM0LjENCj4g
DQoNCg==
