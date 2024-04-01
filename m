Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F62893A34
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6FD10F07B;
	Mon,  1 Apr 2024 10:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QplqiUed";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6950C10E579
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711967759; x=1743503759;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1zh0XTW0M37ZGSWXN06VAn8PrLdpUKzaPhAL2OzgEls=;
 b=QplqiUedyjtjWpObCVCN9bF4godK1BHrG53b37XFU5CI5fRSfc/nwEmJ
 bo19gsdWf15b7O8Uy5wyWXHXLWTx6RywZUEzCun1D2lg6ZmPSFlKqMSzx
 0adq3cccD/25RrfBysgT6WJiqNFYG+TrX31vIfEZVrS8hoZ3UC5vHc807
 3T28TZdiNHo1B4iUhJ7w+lk8Lg3nCM7Vqng+uwLjQO2juk8mqKMJCEvQA
 V2vkQWe+d5ESag62HeYDNlmnGrt/kR42UUSXkJFPbILMr2kpEFm2AdsWm
 hmubz1yEXqn9JC5IEV9YN6S8TeeOps+wUrYXFEhZMKUIt7X3Ya2L9dAw6 w==;
X-CSE-ConnectionGUID: 5m3bxwvuSLGMMRxBb10JcA==
X-CSE-MsgGUID: O8ZHExriTxKmivdKI9NNYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7023431"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7023431"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="48870858"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:35:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:35:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:35:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:35:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:35:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/PvbH30FglxIFVHF5KEDqrA8U2SN1inZY+elzY748QpVTC162nyXW0luQMFjmynh9H0IXgzU1W4QeXdMxS7AcnUZNF1K6Yk+brGv/a3VsUVD0iMXzStC5X+uGCnS82yjzq/POH27qCtOlbl6gSf8bESHsiyMxlSEJHLjyYKm35TXWO4/GcYlcUo+1rKfdfGMH7LvSHDHxn9vjk5Uf0PNX6upZ5AFw65iRPCHK9ZmCPHeLLi/hrApSXYMqR4s4ynXLxBix5V+gE6DTofolB11gF2LNZsg4F2kRFv8QPa5wV7lFp7vRVNfBXCYmOXKLtvP4+xOgcH8yo64TMhXwntUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1zh0XTW0M37ZGSWXN06VAn8PrLdpUKzaPhAL2OzgEls=;
 b=RlvZel25G/Rv3R18cliASTi60w26WWTuoZW5dWo8/EAkb3ZuLrBPxbUGkqt7SB9j2rWvXK/IqwfTtbtJ+6Tsb3yEnAdhrcSn8Ha0Lnpf7Bghtjp0VFidUu8y4L+ik2OW/wg9SN5PquzS3Dd60pPU812nx8oAaDdw3xj14BnpjQ4luC0ykk8dRTb3/zoWBsd20nrLFmrY/R4DzTGsxDN3aMW//WJUzZIsbDRn29GTMKt5sHgL1xgF6LWvMz2l88BazCJEbHSzbciT2abBPh1Rwos/EZOfWx+iwX9hmIdp0AWQs/HSfJZPWmuETZM+HHORx2scH81P5/qdYYhs33gtKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by DS7PR11MB7952.namprd11.prod.outlook.com (2603:10b6:8:eb::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Mon, 1 Apr 2024 10:35:55 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:35:55 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/22] drm/i915: Shuffle DP .mode_valid() checks
Thread-Topic: [PATCH 06/22] drm/i915: Shuffle DP .mode_valid() checks
Thread-Index: AQHagXZmn3u/L44yPk2Cc9z8UI2av7FTPZQw
Date: Mon, 1 Apr 2024 10:35:55 +0000
Message-ID: <SJ0PR11MB6789578433E081378237E6118D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|DS7PR11MB7952:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l0rRXJAaxYI4vuz88FWodFRyFwNT0BK+HmgMmqmiNsMjhzWqdM8xeTbD9h2auRrMdmWOVlr8hm4tSMSUdux65Oaj9yXdmz1l/46Cy3DbR8hSaHmfHprKXPJfzreuzrtqnfG1ZTT/HQd51MtgLb2dN7HRM9CVdN5aiANgnwfHZ5GS5H10uGEF3Svju8mdkOIKxBM0gzsOc/mo01RU5sEiowUHM3VP2jByAgZwQfqQ2QKMWTgTyf6cWcX5OJyquCzNEeY3X/x2oJBG2H8TU2WIk9nD9mv+jUd2ruJVzA99Hkyp7k8/0TGpZg1Gb26BFynLuFZLydbrLu4/riTkL+NiIVortbnukOG9WcKdP8qARViOehvY0uY4EQxhFOU/Yh5rNRcPu0x2JD9BuPYJm6OpUCGMAJyRcMyjP9v6U6iS4aCszTb0wZFamqQ+YPwHVlCQwxd98UIATpUGmeFYJnQCj9iTONPaDoLWwCVyaA0Nq8VSG0EsAc/+y2BpN/+vVUERn58KReu2QQLXMnYIb/5BRnGUmv4FaxSLtjLI4ZPqDhRh7oegUQeW5BbFDj9i+LWPxNsPhQQM6zmxdcTmlrC/QJZtR32FZyKB7ftKQwQKARKAszU2xrbN6rR321UrARB6iNL77HHibp7artO/6wdI2sHukw0sS26OAkv7IrP96uY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VklsTUIvd2lIbHlWVGk4RDBjMkNVLzQrdG5sSXlEWWNadGVON282SnJCYytC?=
 =?utf-8?B?dmNMY3pZTFhKdUlma1I3NXd5ZnlCOWY5VG9DSjMrNUs1Y0tWdDcwRzRNekY3?=
 =?utf-8?B?RTUrU1YxSkJzT2hjaXM4b0lWSU1FZEFqN0x4SmZnTHhJemZXTURMdVZBVkdE?=
 =?utf-8?B?ckxoeEdCVjA2UHkwSlFMc3ZYSm1IeEt2SXRvampqN2NKeWROM2pjeGZnV0R5?=
 =?utf-8?B?SFY5SldmNUJWaTVkZjRhaDYxd0xobExzdVB5R3VzZXR5Nkg5WXdsaGZqUEl4?=
 =?utf-8?B?eWdHTEIraFpsQmcvZUtncTlEcHlBU2tBa0RNMkZDT2NUb2tRbytMUFFjV3ZJ?=
 =?utf-8?B?emJvUUZnSU1CZzlQZ0daZWhPL09EcXVoUk50UjZUeEt2VGdoMzliL2tNaGlN?=
 =?utf-8?B?K2Iya3dQU0E3MXREN1NLeGxzaG1rSnpqeEFnc2pnMThyb3ZGa1hVbkFKd1VG?=
 =?utf-8?B?TUlobzJQMUprc3NMd1IyK3F5eTc1bW5KNDB0Yy9GbXllMTlUTWNjY2s4VWU3?=
 =?utf-8?B?T2twbytVYTVWdzQzdm9XZ0E1VVVOM2ZwajVlSjNvWCtwS2VkcjRWbm1KZG5k?=
 =?utf-8?B?R1QxZlAxQ2o3THUzUVZEb3p5M3ZiSUxhdFBxQTRIOHh0N2RqVEljV2gyMjBO?=
 =?utf-8?B?TFo5dE1nYmlYZFdTV1NmdmdwL2piZE0ybVBlZ3VleXQ4cmU1aTNrTzNPdERR?=
 =?utf-8?B?VUxLN3YrTWxuaVRnOGRwelZERXFsZGhpakMwaWRsR1p1c0JsRGplb0EzQUtu?=
 =?utf-8?B?M3JXZFdPeVE4ZStXcktCVFdRczZvUXhkeS9hRkxveUdWZDByV0RjOG9QOVZm?=
 =?utf-8?B?VmxaVXVTSjBSTWs2WjN5L2UxUFpRNGw5MVNlMklJM05pbUlRS044RlllM1dr?=
 =?utf-8?B?cnovSm1HWnZyNjI2NGxxbmU4bDQ1VStSY2VvelUyS3AzMVJRcytwQ0RUYzU1?=
 =?utf-8?B?L1hCMmNYREdTdFRvdU1zK1pRQmZ2c1J4VXp6Rk14cUlxTDIwRGYyTEdRa2dy?=
 =?utf-8?B?N3NjV1N4QnE2b3NIR1hBTHE0Ulc5YUFmWjhxV1hxTTROaVVxUzhMTWZLKzZT?=
 =?utf-8?B?Mk55NVRwK05PN2xSL0NObFFWMk15Y0hqcElTREtieGMrZHdsV3FWa1p6QTU3?=
 =?utf-8?B?VDJJQW5JMitHeENmNHBmdll4cXRFc2ZucHNWclJqTFA3T1FSVDhvZU5oaEpC?=
 =?utf-8?B?aWtwWkdIbnRMa3k0clM2bzZ2WldsK2pMTTByK3pSd3EyQ2NDcUwrcmdiQzZl?=
 =?utf-8?B?eEFoOFZyTnFxdUpDemlRaG5CUENXSTJablFxd3J3cGpVY2NTeUFCTXczeXcx?=
 =?utf-8?B?bFEybEVxam0xeFQwMDRGejNmZXhGd09FSmZVZ1daK3U3ZlBIT3MxVFdLTDM4?=
 =?utf-8?B?dUJQalE5RmlEQzBqcmplZ01DZTZyOHQwbEpDbWg0TGhlTGpyMERGZkh4aEt0?=
 =?utf-8?B?TmdXZllZZlJTMzhmZGpXNVlPYTR3RSs0dEd6ZkRpMVNyNTM0ZjNTTkUvTC9J?=
 =?utf-8?B?L25aeWloNzBJaTRYdUpCS0lYR1ozUlpDYjkvdG1maGFjaFcvbnQxWHp6VFkw?=
 =?utf-8?B?eWFPUHFnY0g3R0JUelFtemtUN3BlMThvcjYzcHUyd0xmYTJudWMyMHIzSFVJ?=
 =?utf-8?B?TzRYWnRzT2VqZ2cwdmwzL3NmaWtKTkplUEUzckd0OERhb2NYbXVPYU94TFFw?=
 =?utf-8?B?RE5MamM1M3lpOTBtVDVZdGFNd1F5ZWQ2UGYvMnpvTFNxbU5Vb1h5VCtCSHFM?=
 =?utf-8?B?N0RVTWNVeGVsNXN4cVNmZXVGVjMyeXBFM3A1V2NTZEt0UjdvbFdjcEFKSVlD?=
 =?utf-8?B?Vi94QXZaU05xNzEwZGhtdmpHaHdCT0doS0Q0OTRWbmxBSTVQZy9Ia3JhaEQx?=
 =?utf-8?B?VGJPd1o4UDBWNWlacEJ2UFQ5WUoyeHRGVVQ2QkR5N2xSMS9LRGdVK2tIb3ZJ?=
 =?utf-8?B?cEUxaEM3QWZzU2F5WG1rRGhmMlZtbG5kb2xRZ1FNcU5XaUtzcDhBaG9tQjA3?=
 =?utf-8?B?Ky9neTYwL0pXMEt1MUZTZUJ2Z0EyajVvVUZtWXFJOFRzRUtPZ290bzBuZDBV?=
 =?utf-8?B?ZFBDRjFBUldteWs0OGZZTjhJTjRKcVI1bG1KOU5qVXc4VEhyb2h0Nzg4T1Np?=
 =?utf-8?B?TWJHK2F5eXNkTzJhaVVDSlhoUW50ZnZjYktucWkyWEhwOW9ycEt2NnROeXht?=
 =?utf-8?B?bEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a65787-eaa5-4e46-26fb-08dc5237832e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:35:55.6665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W5QWg66mFrMYMNRgEu2YLr5In8evAgr3HjxFiRz94gqZ4ckqut22/cqnfel9kF6Ep9vKGN1CPCzTCfYYSnqiOEQc4FMiT/wCR2Rj+ruxCWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7952
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwNi8yMl0gZHJt
L2k5MTU6IFNodWZmbGUgRFAgLm1vZGVfdmFsaWQoKSBjaGVja3MNCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBNb3ZlIHNv
bWUgb2YgdGhlIG1vcmUgdHJpdmlhbCBjaGVja3MgaW4gdGhlIERQIC5tb2RlX3ZhbGlkKCkgaG9v
a3MgdXB3YXJkcw0KPiB0byBsZXNzZW4gdGhlIG5vaXNlIGFtb25nc3QgdGhlIG1vcmUgY29tcGxl
eCBjaGVja3MuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICB8ICA2ICsrKy0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDIxICsrKysrKysrKystLS0t
LS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
aW5kZXggYmM5ZDZlZmM5OWVlLi4yNDkwY2UzMmRhNTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTEyMjksNiArMTIyOSw5IEBAIGludGVsX2Rw
X21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3INCj4gKl9jb25uZWN0b3IsDQo+ICAJaWYg
KG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspDQo+ICAJCXJldHVybiBNT0RFX0hf
SUxMRUdBTDsNCj4gDQo+ICsJaWYgKG1vZGUtPmNsb2NrIDwgMTAwMDApDQo+ICsJCXJldHVybiBN
T0RFX0NMT0NLX0xPVzsNCj4gKw0KPiAgCWZpeGVkX21vZGUgPSBpbnRlbF9wYW5lbF9maXhlZF9t
b2RlKGNvbm5lY3RvciwgbW9kZSk7DQo+ICAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkg
JiYgZml4ZWRfbW9kZSkgew0KPiAgCQlzdGF0dXMgPSBpbnRlbF9wYW5lbF9tb2RlX3ZhbGlkKGNv
bm5lY3RvciwgbW9kZSk7IEBAIC0NCj4gMTIzOCw5ICsxMjQxLDYgQEAgaW50ZWxfZHBfbW9kZV92
YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqX2Nvbm5lY3RvciwNCj4gIAkJdGFyZ2V0X2Ns
b2NrID0gZml4ZWRfbW9kZS0+Y2xvY2s7DQo+ICAJfQ0KPiANCj4gLQlpZiAobW9kZS0+Y2xvY2sg
PCAxMDAwMCkNCj4gLQkJcmV0dXJuIE1PREVfQ0xPQ0tfTE9XOw0KPiAtDQo+ICAJaWYgKGludGVs
X2RwX25lZWRfYmlnam9pbmVyKGludGVsX2RwLCBtb2RlLT5oZGlzcGxheSwgdGFyZ2V0X2Nsb2Nr
KSkNCj4gew0KPiAgCQliaWdqb2luZXIgPSB0cnVlOw0KPiAgCQltYXhfZG90Y2xrICo9IDI7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRl
eCA5YTdjNzUwMzk5ODkuLjE0MDVhYjVlM2FjYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC0xMzAyLDYgKzEzMDIsMTYgQEAgaW50
ZWxfZHBfbXN0X21vZGVfdmFsaWRfY3R4KHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IsDQo+ICAJaWYgKCpzdGF0dXMgIT0gTU9ERV9PSykNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAr
CWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMQ0xLKSB7DQo+ICsJCSpzdGF0dXMg
PSBNT0RFX0hfSUxMRUdBTDsNCj4gKwkJcmV0dXJuIDA7DQo+ICsJfQ0KPiArDQo+ICsJaWYgKG1v
ZGUtPmNsb2NrIDwgMTAwMDApIHsNCj4gKwkJKnN0YXR1cyA9IE1PREVfQ0xPQ0tfTE9XOw0KPiAr
CQlyZXR1cm4gMDsNCj4gKwl9DQo+ICsNCj4gIAltYXhfbGlua19jbG9jayA9IGludGVsX2RwX21h
eF9saW5rX3JhdGUoaW50ZWxfZHApOw0KPiAgCW1heF9sYW5lcyA9IGludGVsX2RwX21heF9sYW5l
X2NvdW50KGludGVsX2RwKTsNCj4gDQo+IEBAIC0xMzMwLDE3ICsxMzQwLDYgQEAgaW50ZWxfZHBf
bXN0X21vZGVfdmFsaWRfY3R4KHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+
ICAJCSpzdGF0dXMgPSBNT0RFX0NMT0NLX0hJR0g7DQo+ICAJCXJldHVybiAwOw0KPiAgCX0NCj4g
LQ0KPiAtCWlmIChtb2RlLT5jbG9jayA8IDEwMDAwKSB7DQo+IC0JCSpzdGF0dXMgPSBNT0RFX0NM
T0NLX0xPVzsNCj4gLQkJcmV0dXJuIDA7DQo+IC0JfQ0KPiAtDQo+IC0JaWYgKG1vZGUtPmZsYWdz
ICYgRFJNX01PREVfRkxBR19EQkxDTEspIHsNCj4gLQkJKnN0YXR1cyA9IE1PREVfSF9JTExFR0FM
Ow0KPiAtCQlyZXR1cm4gMDsNCj4gLQl9DQo+IC0NCj4gIAlpZiAoaW50ZWxfZHBfbmVlZF9iaWdq
b2luZXIoaW50ZWxfZHAsIG1vZGUtPmhkaXNwbGF5LCB0YXJnZXRfY2xvY2spKQ0KPiB7DQo+ICAJ
CWJpZ2pvaW5lciA9IHRydWU7DQo+ICAJCW1heF9kb3RjbGsgKj0gMjsNCj4gLS0NCj4gMi40My4y
DQoNCg==
