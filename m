Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B40F88FE2F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:35:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAD310FF2D;
	Thu, 28 Mar 2024 11:35:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEMYfbMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1FD10FF2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711625718; x=1743161718;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=54OA3Ori4+3mzXlHT4xmvm7QmzguGJRDFuJG9avkbJc=;
 b=WEMYfbMsuVZWhw4hDxnYvZOrACAuLrnTIQIuOWOUnZXyY0tZqe4ELAd8
 itMB2eGNfOAghmjEZVstUepB8QKITZL1M0lfuBZCSLirsaYTLAHKixoK6
 PdtOS66m/Wz0uob3aGV5QOGcSvfZ4IYHGlOQ9ZDO/ZlYtIL1alEQprRXs
 ef6QKwI90kkdxLsP++fXs9LhlQSql2wpB+NQU/C+5sswu0ZiJWFLqJMOa
 L24EMKAwlBndtnMyoJc+hlCh1PX69t9vdzvT3V8NLFmInLqzMwrMqs6sn
 IuW6BC65SlhZhq3r1iuy/uB8A0E0WIw7+kykUPrQ1Sja2thRjXnR5IdTk g==;
X-CSE-ConnectionGUID: Jn/S64LcRBi2zdR/P0RTeQ==
X-CSE-MsgGUID: DEcGJwZ2SWObkpbnJbn34g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17499727"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17499727"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:35:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="54068538"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:35:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:35:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:35:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:35:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TV8ByTgmftqsUKNNibfMVOunb2OFzEjwmymf/X95/VmOreu4eTUW6SA4bjoWsp7r+pL3L8ib/LOq84IaCOLjz3J3jZ0QpaXzNmFqVJHnlNHJhTH+PZ8/OfNL4jZ1c395Ui9jIQyVlxzj10k503oZJjKRwlwvnbnqkeFmeHHS/SPUcojTVadN5Ka+bwsJir4j7biW7wLTcqZK3Dss6EBlc8nHa6JblsKlXaJI6oaKFWQ646dRHvUX2NTSFxQ8N9du1pCsTQYWA75QYLuCcGy1v+jRCkggdUfsw9fiTZ73Xs9v7GLz6nMqqBe6rHg8X0S6aSHkl9x0l9EJxqDBSNytOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=54OA3Ori4+3mzXlHT4xmvm7QmzguGJRDFuJG9avkbJc=;
 b=VqzmZWO3jYzXGc610T78nOCSdJUcP74RcKKAf+584K3Y7+EuwlXN4zwOCrw25ay42Wq3mh7uHuQGokHyybraYhvttRYI9KEuA737dOsyo+KjmmYIde9HNuqlC/v7BCoxdyErp+kIqIW5n59y4jv7Mm8vq1obK6y0Ozx6Y1qKsGAQHen6XOU5v9KQDd8m559SKj14URnE5hgsRL+/Loy2nYgA20t3sUZDD9CyXac0FdESeuOiEqOCLNdm6Lokwo+B5gx/VjUG1qhS1Gyoi4BrLNHO9DQaifNQAHnFbxnchoZjEAwhwLcJhR8C1BEY6XfuFlJuNr+fJoazvMsDTtEeIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Thu, 28 Mar 2024 11:35:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:35:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Topic: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Index: AQHagG6j9deUXbsQxkm6nEYBGeVl8LFNBwMg
Date: Thu, 28 Mar 2024 11:35:13 +0000
Message-ID: <DM4PR11MB6360E9E35559CDAFDB4CB487F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6289:EE_
x-ms-office365-filtering-correlation-id: be469703-97de-496b-1d09-08dc4f1b2204
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OCg12SMBiasZ6feUaNIbuoZSwqB4VsHLwl7YCbR1fNwFrEY0jFiXbxqt9T9b+m156cNBHyCowxxjS0vMYZa9vi0QNOIBz22xGNLOGleJ44t9cDhH+DDSFgzUYN8mL5N0ejo1Xe93vUluU37JtlkeD08YKOn6GwomyBLgaKhQYVyIOzS9wAabKWb67bgKCMothIkm/JL4jxkAqB9gt1edbAqld1VWX87Bbi2dDfoYluE4av+NxP6uyqsqSeLvbQ1lfA6RMNcbpUDaLaZUsoZ99cDn7ozhz2K7AgPFFX+QMDd0cVxBoxcmuRcG9TGMzgxHyjouAT8nCw3zXtwffyz4GluWZ4Dx+Pa99LMSCpWMzDLZGFFlSX4IWHReU8WUA7ZsTKKUjwAijvomAuKxUWg4xWW/KXufkDyqEfQzBysjrfkvOvnjXvDtVrTnrQGnd8vl+iwa5NJCcPVOVQk98wOgXNeOSG8/0gQwb3h7fmcdqQW1wdCnOl7XGzBFKibFDfoIKgV2eTQg9L7Qn4QEyF3aK0Bx/0SUXy5bxLa1207thmReUA7b48KHUbaOo5FIsCL9tcOv9BbZLNnu9k+KX/CTdTvVlbn3MxX5i+UFfJ1ist3s0rGL3NxnvT1Q15VvrjQo81FQwfJ2AD97lflOenu2sZoOZkbB5A6/5ix9sboO8t5NbRuqHrkXSfVnmkdlple983YefmxH2lkMUtk1QP56JA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHI3RHFIMlk5akJuMXN4SWR5QTV6YVRmMGtoNmhwWFhrT2ZwclNWUVJCQU42?=
 =?utf-8?B?Vk9taUxvZ1VRbjdJVFY2cnp1aEdaZ2NLOVpyTEN4bDZyTGkvK2l3SExFVlJu?=
 =?utf-8?B?VmNqL0ZMSGJFNGZ6UGhuaUI4c25IazV2dzFpZHFiV3ZPY01oVXNPUjgveHdp?=
 =?utf-8?B?bEdndWV5V2VoLzMrKytvajd2a2ZoN3hXYlZwWXhQQURTRXZqbmhWUlNqdFdo?=
 =?utf-8?B?aEgySzc0eTNFSEo5QWhYajZOWFRadG5raG13clJnalByWElOU0lvenh0ZUxU?=
 =?utf-8?B?dXdxdThIODdNcUZRVWlWR0FvWTh2UXVXSi91TUpIZ2JXc2JiUVA1b09SVk45?=
 =?utf-8?B?eGlOZldtSHYwMXhHa244c1pBN3RTVjErcDUyWUVDemtDN0ppRUVsZURGWE5h?=
 =?utf-8?B?RDFoNGV3QzdqZDl3amErWEJ0VTFBOEdpT3p2WGdLcUErREJTeWpCM2xSQ0w4?=
 =?utf-8?B?bFpRNUVwdWhBNW9xd1BOa3VpbUhmMUZKWmFUSHlnQWpPbkZYMFZCNnNJRTN4?=
 =?utf-8?B?dnh1UU4yK0lxTXR2clcwSTN2L2FEcjdhUUEyeThUWW10ajZGdUVvL2F2N1Y1?=
 =?utf-8?B?ZnJtT3V3VUkwQUZmOXJqVkVJRXBzamE5R3laaTdFSjBFcjdlSEFrVG03QUQw?=
 =?utf-8?B?enRHZlpoWEJnMENxcVdKL2NMSFpXcVRSYWl1TEJaWDBRaHo5aysyWmNMUEZY?=
 =?utf-8?B?S0s5NFBFNDFYSFFPMUxhRy9TTkpoRTlMemFJdE91YVZYR3I4aU9SckRKZnpD?=
 =?utf-8?B?WldKa2E2MzE3R0tqQXZLMWlmVVBLWWtLcDkydnZvMGx2NWM3dzUwSmozZE1U?=
 =?utf-8?B?Y3NENGUzTXVoeWRuVHB6MUlhcjlnTWVpelMybGJ5ajlhN2hueVNrUUxuSGMz?=
 =?utf-8?B?N1M3VEVxQk8zMmRTNzNmdkF1ZDZTYnVJajNtS2pzQW5aVGN2bDQyb25lRUs1?=
 =?utf-8?B?QW5YUitBaUhTM3JlQ3Z3N3d2SjNRTmlEVVNxaElFOE1MUVJMTU9PSUc4L2pQ?=
 =?utf-8?B?MlpMMWJ3ODN2dmtsWlNVbkFsMWM4KzVGanZ2ZkxRZ2gwTW53d01IUlJrTDZ5?=
 =?utf-8?B?MzIxVHRQUjg4eVBrSTd2aGRsZ0VFeHIzRDIvbnRzUWJZZFpTelZMc0JZS1My?=
 =?utf-8?B?V29mWlBqanV4SFFsWVFrY2YwT2dPYUxFZXI5Q3dxVktJempDUzhpcWl6ZU5w?=
 =?utf-8?B?bmUyU2VFWmlmZDBEL2V4K2hYOVN1Tjg5RW9nZUNKMmFZVEd1ZHU4OUI0a3R5?=
 =?utf-8?B?cnlTWDVQdGEydnpLNDkwMFBsNUl2V0xXK29vSXArbGZrWVp0Y2I4djhtTERx?=
 =?utf-8?B?emFpMWxSMWdZblRCdmZvV28zblptWW0zbzVEdHNYVk1qM3k1bUtDQTlSYmlu?=
 =?utf-8?B?YlY3TUNTZllCQnNqL21xRDBmYkJ5V0dvb3lrdGpHdUZQcDdjMER0T1JGTFN5?=
 =?utf-8?B?akFQd2RqUXZ0OWFXODllaFpyYnkxM3NhNzA4YkExdzFSRnpROGtDZmZjT294?=
 =?utf-8?B?Y3lxZ2ZrV0NyeVFSM3RKQTFtbzk0aTlzWUVWOUVmZTRaM2licUZ5aC9lQWdT?=
 =?utf-8?B?Y0JmM0FoY3NmVjF1bk5TMlJndGUyM3dkT1lud0FTVWpTUDdIMnRHTm56bVVG?=
 =?utf-8?B?L0gydDJxeGV3a1p1YkFCYVNSbmNycXN0Yy9oajB6UldrR2lEOWZMVk1JWjkr?=
 =?utf-8?B?bTJLazZSbktUclp1ZEpWUHdDeXBqaUVYMmpuc3o1cUhGeks3UTI2NnU0d29i?=
 =?utf-8?B?Nnc4dWpKVll0WkxQdlBMSyt5b2o1TVg3bFJtdEFlUEpQcVpmV0ZsS3gyellE?=
 =?utf-8?B?dTBzVXFQNEpGUkpna1g4WU54Tnl4RGN6YlpOTWJKRFRTbWQ5MlQwRTJGNy9Q?=
 =?utf-8?B?Z3BCR01RbDFzcDNXQzFzY0tKZk8yY2VSRFRCTXNGQVpMMFRZYXNLOVBuTVRM?=
 =?utf-8?B?VjNIUzJ6YVYvZUdJSzdub1RGQ3Ayc2s2dUpGb2VPdFFHQUhsR2tqa1JuZVlN?=
 =?utf-8?B?bEZxREVDN2RTQ1JLUVE0UGJjZVRGcThUUUxRcGt5RThYZjR5M01tVDhYMEJh?=
 =?utf-8?B?TnIzV1kzQ2V5MHhFcVg3OTVXTlVITHRqcUFyNU1kZ1cvZUcyYzZ3cS9ybDN1?=
 =?utf-8?Q?neWLGmc8SCJ70X70LBv1tExn4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be469703-97de-496b-1d09-08dc4f1b2204
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:35:13.2794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pFchAv7I5+FrO9bX5XphspDbbpFvyGXIzDnK/41KCaam30IJks8Eyewba6h+a8EzYmylmbnkGAe65smT1pm8+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
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
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAx
LzEzXSBkcm0vaTkxNS9jZGNsazogRml4IENEQ0xLIHByb2dyYW1taW5nIG9yZGVyIHdoZW4NCj4g
cGlwZXMgYXJlIGFjdGl2ZQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEN1cnJlbnRseSB3ZSBhbHdheXMgcmVwcm9ncmFt
IENEQ0xLIGZyb20gdGhlDQo+IGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKCkgd2hl
biB1c2luZyBzcXVhaHMvY3Jhd2wuDQoNCk5pdHBpY2s6IFR5cG8gaW4gc3F1YXNoDQoNCkNoYW5n
ZSBMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNCj4gVGhlIGNvZGUgb25seSB3b3JrcyBjb3JyZWN0bHkgZm9yIHRoZSBj
ZDJ4IHVwZGF0ZSBvciBmdWxsIG1vZGVzZXQgY2FzZXMsIGFuZCBpdA0KPiB3YXMgc2ltcGx5IG5l
dmVyIHVwZGF0ZWQgdG8gZGVhbCB3aXRoIHNxdWFzaC9jcmF3bC4NCj4gDQo+IElmIHRoZSBDRENM
SyBmcmVxdWVuY3kgaXMgaW5jcmVhc2luZyB3ZSBtdXN0IHJlcHJvZ3JhbSBpdCBiZWZvcmUgd2Ug
ZG8gYW55dGhpbmcNCj4gZWxzZSB0aGF0IG1pZ2h0IGRlcGVuZCBvbiB0aGUgbmV3IGhpZ2hlciBm
cmVxdWVuY3ksIGFuZCBjb252ZXJzZWx5IHdlIG11c3Qgbm90DQo+IGRlY3JlYXNlIHRoZSBmcmVx
dWVuY3kgdW50aWwgZXZlcnl0aGluZyB0aGF0IG1pZ2h0IHN0aWxsIGRlcGVuZCBvbiB0aGUgb2xk
IGhpZ2hlcg0KPiBmcmVxdWVuY3kgaGFzIGJlZW4gZGVhbHQgd2l0aC4NCj4gDQo+IFNpbmNlIGNk
Y2xrX3N0YXRlLT5waXBlIGlzIG9ubHkgcmVsZXZhbnQgd2hlbiBkb2luZyBhIGNkMnggdXBkYXRl
IHdlIGNhbid0IHVzZSBpdA0KPiB0byBkZXRlcm1pbmUgdGhlIGNvcnJlY3Qgc2VxdWVuY2UgZHVy
aW5nIHNxdWFzaC9jcmF3bC4gVG8gdGhhdCBlbmQgaW50cm9kdWNlDQo+IGNkY2xrX3N0YXRlLT5k
aXNhYmxlX3BpcGVzIHdoaWNoIHNpbXBseSBpbmRpY2F0ZXMgdGhhdCB3ZSBtdXN0IHBlcmZvcm0g
dGhlDQo+IHVwZGF0ZSB3aGlsZSB0aGUgcGlwZXMgYXJlIGRpc2FibGUgKGllLiBkdXJpbmcNCj4g
aW50ZWxfc2V0X2NkY2xrX3ByZV9wbGFuZV91cGRhdGUoKSkuIE90aGVyd2lzZSB3ZSB1c2UgdGhl
IHNhbWUgb2xkIHZzLiBuZXcNCj4gQ0RDTEsgZnJlcXVlbmN5IGNvbXBhcnNpb25nIGFzIGZvciBj
ZDJ4IHVwZGF0ZXMuDQo+IA0KPiBUaGUgb25seSByZW1haW5pbmcgcHJvYmxlbSBjYXNlIGlzIHdo
ZW4gdGhlIHZvbHRhZ2VfbGV2ZWwgbmVlZHMgdG8gaW5jcmVhc2UgZHVlDQo+IHRvIGEgRERJIHBv
cnQsIGJ1dCB0aGUgQ0RDTEsgZnJlcXVlbmN5IGlzIGRlY3JlYXNpbmcgKGFuZCBub3QgYWxsIHBp
cGVzIGFyZSBiZWluZw0KPiBkaXNhYmxlZCkuIFRoZSBjdXJyZW50IGFwcHJvYWNoIHdpbGwgbm90
IGJ1bXAgdGhlIHZvbHRhZ2UgbGV2ZWwgdXAgdW50aWwgYWZ0ZXIgdGhlDQo+IHBvcnQgaGFzIGFs
cmVhZHkgYmVlbiBlbmFibGVkLCB3aGljaCBpcyB0b28gbGF0ZS4NCj4gQnV0IHdlJ2xsIHRha2Ug
Y2FyZSBvZiB0aGF0IGNhc2Ugc2VwYXJhdGVseS4NCj4gDQo+IHYyOiBEb24ndCBicmVhayB0aGUg
Im11c3QgZGlzYWJsZSBwaXBlcyBjYXNlIg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxNSArKysrKysrKystLS0tLS0N
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oIHwgIDMgKysrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4
IDMxYWFhOTc4MGRmYy4uNjE5NTI5ZGJhMDk1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yNjAwLDcgKzI2MDAsNiBAQCBpbnRlbF9z
ZXRfY2RjbGtfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAg
CWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqbmV3X2NkY2xrX3N0YXRlID0NCj4gIAkJ
aW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAtCWVudW0gcGlwZSBw
aXBlID0gbmV3X2NkY2xrX3N0YXRlLT5waXBlOw0KPiANCj4gIAlpZiAoIWludGVsX2NkY2xrX2No
YW5nZWQoJm9sZF9jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiAgCQkJCSAmbmV3X2NkY2xrX3N0YXRl
LT5hY3R1YWwpKQ0KPiBAQCAtMjYwOSwxMSArMjYwOCwxMiBAQCBpbnRlbF9zZXRfY2RjbGtfcHJl
X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlp
ZiAoSVNfREcyKGk5MTUpKQ0KPiAgCQlpbnRlbF9jZGNsa19wY29kZV9wcmVfbm90aWZ5KHN0YXRl
KTsNCj4gDQo+IC0JaWYgKHBpcGUgPT0gSU5WQUxJRF9QSVBFIHx8DQo+ICsJaWYgKG5ld19jZGNs
a19zdGF0ZS0+ZGlzYWJsZV9waXBlcyB8fA0KPiAgCSAgICBvbGRfY2RjbGtfc3RhdGUtPmFjdHVh
bC5jZGNsayA8PSBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsaykgew0KPiAgCQlkcm1fV0FS
Tl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRlLQ0KPiA+YmFzZS5jaGFuZ2VkKTsNCj4g
DQo+IC0JCWludGVsX3NldF9jZGNsayhpOTE1LCAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwsIHBp
cGUpOw0KPiArCQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFs
LA0KPiArCQkJCW5ld19jZGNsa19zdGF0ZS0+cGlwZSk7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAg
LTI2MzIsNyArMjYzMiw2IEBAIGludGVsX3NldF9jZGNsa19wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9v
bGRfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0
ZSAqbmV3X2NkY2xrX3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3Rh
dGUoc3RhdGUpOw0KPiAtCWVudW0gcGlwZSBwaXBlID0gbmV3X2NkY2xrX3N0YXRlLT5waXBlOw0K
PiANCj4gIAlpZiAoIWludGVsX2NkY2xrX2NoYW5nZWQoJm9sZF9jZGNsa19zdGF0ZS0+YWN0dWFs
LA0KPiAgCQkJCSAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwpKQ0KPiBAQCAtMjY0MSwxMSArMjY0
MCwxMiBAQCBpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJaWYgKElTX0RHMihpOTE1KSkNCj4gIAkJaW50ZWxf
Y2RjbGtfcGNvZGVfcG9zdF9ub3RpZnkoc3RhdGUpOw0KPiANCj4gLQlpZiAocGlwZSAhPSBJTlZB
TElEX1BJUEUgJiYNCj4gKwlpZiAoIW5ld19jZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcyAmJg0K
PiAgCSAgICBvbGRfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsayA+IG5ld19jZGNsa19zdGF0ZS0+
YWN0dWFsLmNkY2xrKSB7DQo+ICAJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sICFuZXdfY2RjbGtf
c3RhdGUtDQo+ID5iYXNlLmNoYW5nZWQpOw0KPiANCj4gLQkJaW50ZWxfc2V0X2NkY2xrKGk5MTUs
ICZuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbCwgcGlwZSk7DQo+ICsJCWludGVsX3NldF9jZGNsayhp
OTE1LCAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwsDQo+ICsJCQkJbmV3X2NkY2xrX3N0YXRlLT5w
aXBlKTsNCj4gIAl9DQo+ICB9DQo+IA0KPiBAQCAtMzEyNCw2ICszMTI0LDcgQEAgc3RhdGljIHN0
cnVjdCBpbnRlbF9nbG9iYWxfc3RhdGUNCj4gKmludGVsX2NkY2xrX2R1cGxpY2F0ZV9zdGF0ZShz
dHJ1Y3QgaW50ZWxfZ2xvYmENCj4gIAkJcmV0dXJuIE5VTEw7DQo+IA0KPiAgCWNkY2xrX3N0YXRl
LT5waXBlID0gSU5WQUxJRF9QSVBFOw0KPiArCWNkY2xrX3N0YXRlLT5kaXNhYmxlX3BpcGVzID0g
ZmFsc2U7DQo+IA0KPiAgCXJldHVybiAmY2RjbGtfc3RhdGUtPmJhc2U7DQo+ICB9DQo+IEBAIC0z
MzE2LDYgKzMzMTcsOCBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdA0KPiBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpZiAocmV0KQ0KPiAgCQkJcmV0dXJuIHJl
dDsNCj4gDQo+ICsJCW5ld19jZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcyA9IHRydWU7DQo+ICsN
Cj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICAJCQkgICAgIk1vZGVzZXQgcmVx
dWlyZWQgZm9yIGNkY2xrIGNoYW5nZVxuIik7DQo+ICAJfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+IGluZGV4IGJjOGY4NmUyOTJkOC4uMjg0M2Zj
MDkxMDg2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5oDQo+IEBAIC01Myw2ICs1Myw5IEBAIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSB7DQo+IA0K
PiAgCS8qIGJpdG1hc2sgb2YgYWN0aXZlIHBpcGVzICovDQo+ICAJdTggYWN0aXZlX3BpcGVzOw0K
PiArDQo+ICsJLyogdXBkYXRlIGNkY2xrIHdpdGggcGlwZXMgZGlzYWJsZWQgKi8NCj4gKwlib29s
IGRpc2FibGVfcGlwZXM7DQo+ICB9Ow0KPiANCj4gIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWlu
X2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gLS0N
Cj4gMi40My4yDQoNCg==
