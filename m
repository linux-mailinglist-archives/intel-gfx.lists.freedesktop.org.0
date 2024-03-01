Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F686DE93
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 10:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEE610E1D0;
	Fri,  1 Mar 2024 09:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+neEYl3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A27C10E1D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 09:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709286589; x=1740822589;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2orvoAD6is1eSIP5VXtBX1opiObyMxpZZnFgeYvLm38=;
 b=X+neEYl3r35odAwHlYLqHzBQ+v+saBQotkakoW9LYb5f0fYRjLdJiy4i
 Vae1mXL0jWRmJ2AaInGWsn8AcbQ7VNSe6MTWP+1K6Iu66IGQVaOx1tVNe
 JEIO0GZuL4qBs9syoJUAJ/2HzbNWlBD2Lx4KSJIpj+0ki5IOPcDg7LhLz
 VlCN3Vc0vrOhSUlj1723FyMUl8/sITYJMG7zgE8KT/QFw/kJMUe4v9g7m
 wRp2ORAnCrfSi1V3D+7OiO3JuozzEAlMf6NNbAM3jcl0DU69PbbJQEcUn
 AtKpTh7NR+lhw2m8BEpQp9i8qXOuOAseg7zQTi//Eb3fgHcrXE0WuEOCc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="7585800"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="7585800"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 01:49:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="45677747"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 01:49:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 01:49:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 01:49:46 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 01:49:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KG0aSiqM9Gm+naTTUBNMHrHf/Kw/H0WapslJN5Vj0xhEhEKKjIdEFG1foDW2xVx4scyh8JwG2MnmdUJFREFl5olaShy2A1B5/CoLniG4KV4U9mqa2FilaGowaWNXxAheHbA8b/Bem4M4oUHOszCkc5ZGclA88iOrJM/OacMXJTrx4V8S8NR0zIb0h1m6q1ZTmuD0qbS11KdFi5zmX7hA7NFaXm8UpP7kvQQ+um34ACc89cLYX0nWJvqX6zIdu9tCDHbT1n2MYdw0/poG7fq/R26klaPL9JGUzeJ5D/uWiFjxW3SqlLyku7BYuylL1kutdXpJtMFkrRwQao/YBKQsmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2orvoAD6is1eSIP5VXtBX1opiObyMxpZZnFgeYvLm38=;
 b=WLzskt5h0NASZbGcIHYJk4MmSmULW1mLpngIcnwwAGewn6/h1pGFTuFOax9W14cmrH5FRchUsw+wWanBnBl1P2pCaTWzQyDZHUCpcCLn/lMqrKvOAK+/TpKKS058k8b3X6SeFjFH5dfQfFld2RfMBr4aHm4wzWg6qPWo1ZQXzIIWNw/or4R6Q/MgX9uXUPGPQVsTqehwhhGAZfu3IOzdIovX34CjcxlxeAcv5dqKKObMO9Vqm3F4srAgq+Yk0yYGCT6sPlz1NBMwOYtPqpfGQafoyoKrfdL/OW2lp0d+JoZfxVTGCnTZjJYXtqWEBkph3EqcMZTVuJXHWeDNIuU0jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Fri, 1 Mar
 2024 09:49:43 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7339.024; Fri, 1 Mar 2024
 09:49:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH v2] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Thread-Topic: [PATCH v2] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Thread-Index: AQHaassFkg595j0yuEuN1YdEijQmNbEhJtoAgAF+3QA=
Date: Fri, 1 Mar 2024 09:49:43 +0000
Message-ID: <PH7PR11MB59814E642EB7064BEC15F523F95E2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240229043716.4065760-1-animesh.manna@intel.com>
 <87il278rl9.fsf@intel.com>
In-Reply-To: <87il278rl9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ2PR11MB7669:EE_
x-ms-office365-filtering-correlation-id: 74faefa2-f0b3-4476-5a7e-08dc39d4ebdf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zib/Mnio08LsD4cW4bZyAsLtZc7BLyzMv+IbBjlnwJv7qOEXWN5ksQSa9CEsbcuIHSzZdLX1OFg4fZ7XtAH60EBXDynV3VFMSb60d31fXpoKhyWhfWDStoB5mZYXutr284Xppo0kNKmBp0PLUkjpmBrhsI83F8UJ9q7yjUFCmcGH7e6Klw7M4X02tz3hiObUKdRiYZtxhr5YPiH2TzV+cR4YJAf8F55a9zNYMtqRd+F10IR3da57KkwfpIJeohDadScfakSe/u5sJSTDdpQxvTWUm79dlYZfplBWZHDH/iEG1gfx9UwJz7OvXm7F8UU90nVz0QcB8JmBgKnQPubHUUGzNxETx5Om8C4oDPcw/WaIwUuVadkJkJRtdbnkONCzD1iRQL0VbMu8OW2jZ7NK4Jv+bmI+Fq2RSa7h5q/OPn/TXER3XcDk1FfSh/CZ7swPNoQwZhnyR50h6qzjkX00sqlrtZCk/ffu6Sf1r3QpzeQZu45jOe2DrM041LrVMv4KFIx5PI4eUHsp/B45b1JhCIfMSOUvdcwZ5yMdMnOw1dRCKzIGxF4mKAjqmTpG9zArCTJ6F0b2nvrWv0rsvBgoj4J105vaC8soKwqnhmkLwNOW82o3YtE4ONou7fcipZSlOW/5e/2q0lehv+FxUKtmyQrKMzDwefiT5XDD2vDMN8Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzFia2FpWmh3ZHJWa2xVYWVEVkNIcXA1OTZBY01BNm9XYzhDRGtpTnl5UUNK?=
 =?utf-8?B?eGYrdklCNjA4L0N6ck40QzRBVjhKL1hnL1BTc2JBYzV4SlgrS3I0QWptbWM2?=
 =?utf-8?B?YmkzdDVMU25udS81Qis0R0pPUU5QSmM0ZWY5OWU2NmxoUmgrRHNmdGswa2NL?=
 =?utf-8?B?VXBCc0ZmZHJrRE94N01SaG5UNmwvWnVuL0RwL2RjZm9mOUtVSGVLYnNMOGFT?=
 =?utf-8?B?UWZNb1JROXhjdXM2dGg3VnF4ZGdVVGFoUGorWHRtazg4djBwTVdoQnJwVnBL?=
 =?utf-8?B?OSs4QTlpdzh1TVVsWTBlL3ljZTB1RFpYalcvY0RQNkpxVzFaRjJhb2ZsUFF0?=
 =?utf-8?B?MG1oeEpSOHo3VGkxN29qc1pOcWVObFdIbmwwMWxyWkVsYStQVnpabFpFSVBR?=
 =?utf-8?B?dy9KOVRlbzFIOE8rNXRTejZQV3RJUzh0blZWRjZHbHdINGsyeXduaHBsa2V3?=
 =?utf-8?B?ck41ZzI1SU5FVEY5eVVoWjRxaGdCWE1FVG43S0xvVG1PWmJnMDc5VDhpWlJH?=
 =?utf-8?B?VVQvSGUxdmtJZjBrbVI2NVY4OVhaem41dWg3RWVBMzhMSnhndERMOU01Lzdt?=
 =?utf-8?B?dWJKaVBHNzdud1J6U2xXdjIxZlFNRkFTL0poQTJCNzlzNDJ0N2FFcEpxMkZR?=
 =?utf-8?B?cFFnTjdvSHVLQVcwNUw4cTh0bVNHUzRKZkJPSXBJdE9XTk9ESmJQb2k0Q0Rr?=
 =?utf-8?B?clJpMXpLZUFaYmt0WFNWZFlQRzlBeTFvNlBkNzRoaVVNcGFEWVpjNHNpKzRF?=
 =?utf-8?B?Z0lkRW44RHR3L1RhTE9UNDFiWlNBWU5FVmlvQ2VRMHZJMU41M1dEby90OWJs?=
 =?utf-8?B?M0k5ZS9lMmhtaUhyRmVJN0IyQ01FTzlQc2gxcmpNbUc3dERlYm1mdTJrSFJi?=
 =?utf-8?B?S1A5Nmx1MzJJSm1ISHp6a2RaaFcvWlRUM3I2KzZieHMzZ1lGZjliVXRMZ0ZS?=
 =?utf-8?B?d2ZmdFczY2QyY2xwbFA5aHl5Q1Rmd0hZTzhPZFg4NE5CdFZwNW9jMUVrQ3Ux?=
 =?utf-8?B?M3hBWkwrMi8xcmFyeThVZ0I3MC85ZUFXQ25HbHQ3YjBHZ1dhczVWdVhiMXc2?=
 =?utf-8?B?OGxKVTVlY2tobS9UWXQyeDE1TThMWmR1c2NOT2JuUERVeEtTK2wzblU3Z05h?=
 =?utf-8?B?R1dxV0Jmak5RL0k3NE5DeGlTK2swZGI2VERpRUtHNjQ3Rk45WThUOUVHWWsr?=
 =?utf-8?B?cUtjZ3k1RWN3OHFxYy9JU0FWYXNSM254UlkzZmE4ZTA1d0U2VUNOTW9qeVJT?=
 =?utf-8?B?QUxZcDhBQVB0WjFaSnE2aUc4VjRyWkVIZ0VzUjg4ZmZBQkduTjFLWFRhUmdl?=
 =?utf-8?B?RmtiY29MR2ZydzZaK1VRcUgwUldQK3YzaEhYSmJuQTl1R3h1c001NnpyaGZX?=
 =?utf-8?B?WmlXMGpNSERNMmE2bFQzbkdsZjFOMkdHcnUrWWhwbEdaYzdNT3g4Y28rMHNK?=
 =?utf-8?B?TVRyUHVzNDVjTkI3K0VPY0VWNXZVZHpMSXJNZ25sUkJvd2d6ZnpWSFRvWmV3?=
 =?utf-8?B?citkNFhLSUVyZjNXSmxsOFptZWsxMDc0NUdHU2ZQamtKYVJoa1A0dFhiVVVh?=
 =?utf-8?B?V1NiMHFKZlJRY28zdFB1Uld5VVZMV2dmby9ZcEJ0YVJvb3dYaWxYODc4cmJl?=
 =?utf-8?B?cU1ESUt5UjdVaGlkNW9jSms1UlZDNGovWUc1MkJIcitEQ3RwVlNoNFpadjY2?=
 =?utf-8?B?RHJ6bVdTQmtrQ0VBMTVKbzc2akJ0eW1mNnlkdjJ6dFNxSk5FSEJrcFdQcWlX?=
 =?utf-8?B?SUVOSnl0MlRkR05vZnpBY2Mzb0NMYWs5SXZaQjFJbzFoU254VXRHZnd5TlQy?=
 =?utf-8?B?Q3RnZ2RDZnl1emkzYzB2b1oreUFSUlNJNWpDcUdUamlneklRS0VEbzVCMjly?=
 =?utf-8?B?MlRpYS9iUnR2Y0VJVjhIeGNZbkFxS01QTytZV1Z6WUF1WWF4ZnUveThrdHAr?=
 =?utf-8?B?THU0YitUNDQ2NklNV3NTOGFWcm54OVlxUmJ3WWd2UHFzbXhMNlRUTXdZZXFP?=
 =?utf-8?B?bXdpYTFYSnhCclQ5ZGQ1dU5JdjJMTERHcVlVRFFpdXk3OHNqOE14Q3FTRlo0?=
 =?utf-8?B?WU9HRlUvODRpVmdCZ3B4alYvK096WjdraytibHRmQytKRFIrUjliSFRSdEJF?=
 =?utf-8?Q?lcWEuMhA2o5filrU8Ogz16AWa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74faefa2-f0b3-4476-5a7e-08dc39d4ebdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 09:49:43.2854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hyXokNOkRgADpzaF8JC9HLIf67fWVS1Hy3Z4Nl0BSeQcx5aKOlEyO96NyCseU3J/ziKuuRMWtfk0lRPZbTIi1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyOSwgMjAy
NCA0OjI4IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IEhvZ2FuZGVyLCBKb3VuaQ0KPiA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gTWFu
bmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BB
VENIIHYyXSBkcm0vaTkxNS9wYW5lbHJlcGxheTogTW92ZSBvdXQgcHNyX2luaXRfZHBjZCgpDQo+
IGZyb20gaW5pdF9jb25uZWN0b3IoKQ0KPiANCj4gT24gVGh1LCAyOSBGZWIgMjAyNCwgQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE1vdmUgcHNyX2lu
aXRfZHBjZCgpIGZyb20gaW5pdC1jb25uZWN0b3IgdG8gY29ubmVjdG9yLWRldGVjdCBmdW5jdGlv
bi4NCj4gPiBUaGUgZHBjZCBwcm9iZSBmb3IgY2hlY2tpbmcgcGFuZWwgcmVwbGF5IGNhcGFiaWxp
dHkgZm9yIGV4dGVybmFsIGRwDQo+ID4gY29ubmVjdG9yIGlzIGNhdXNpbmcgZGVsYXkgZHVyaW5n
IGJvb3Qgd2hpY2ggY2FuIGJlIG9wdGltaXplZCBieQ0KPiA+IG1vdmluZyBkcGNkIHByb2JlIHRv
IGNvbm5lY3RvciBzcGVjaWZpYyBkZXRlY3QoKS4NCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZlcnNp
b24uDQo+ID4gdjI6IEFkZCBkZXRhaWxzIGluIGNvbW1pdCBkZXNjcmlwdGlvbi4gW0phbmldDQo+
ID4NCj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsLy0vaXNzdWVzLzEwMjg0DQo+IA0KPiBGaXhlczogY2NlZWFhMzEyZDM5ICgiZHJt
L2k5MTUvcGFuZWxyZXBsYXk6IEVuYWJsZSBwYW5lbCByZXBsYXkgZHBjZA0KPiBpbml0aWFsaXph
dGlvbiBmb3IgRFAiKQ0KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCg0KVGhhbmtzIGZvciByZXZpZXcuIFB1c2hlZCB0aGUgY2hhbmdlIGluIGRpbi4N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCAzICsrKw0KPiA+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzIC0tLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDZlY2UyYzU2M2M3YS4uYjQ4NWVj
MzIwMDg1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiA+IEBAIC01NzA5LDYgKzU3MDksOSBAQCBpbnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9j
b25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gPiAgCWlmIChyZXQgPT0gMSkNCj4gPiAgCQlpbnRl
bF9jb25uZWN0b3ItPmJhc2UuZXBvY2hfY291bnRlcisrOw0KPiA+DQo+ID4gKwlpZiAoIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gKwkJaW50ZWxfcHNyX2luaXRfZHBjZChpbnRlbF9k
cCk7DQo+ID4gKw0KPiA+ICAJaW50ZWxfZHBfZGV0ZWN0X2RzY19jYXBzKGludGVsX2RwLCBpbnRl
bF9jb25uZWN0b3IpOw0KPiA+DQo+ID4gIAlpbnRlbF9kcF9jb25maWd1cmVfbXN0KGludGVsX2Rw
KTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGluZGV4IDcyY2FkYWQwOWRiNS4uNjkyNzc4NWZkNmZmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTI4ODMsOSArMjg4Myw2IEBA
IHZvaWQgaW50ZWxfcHNyX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiAgCWlm
ICghKEhBU19QU1IoZGV2X3ByaXYpIHx8IEhBU19EUDIwKGRldl9wcml2KSkpDQo+ID4gIAkJcmV0
dXJuOw0KPiA+DQo+ID4gLQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gLQkJ
aW50ZWxfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gLQ0KPiA+ICAJLyoNCj4gPiAgCSAq
IEhTVyBzcGVjIGV4cGxpY2l0bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuDQo+ID4gIAkg
KiBCRFcrIHBsYXRmb3JtcyBoYXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJh
bnNjb2Rlcg0KPiA+IGJ1dA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
