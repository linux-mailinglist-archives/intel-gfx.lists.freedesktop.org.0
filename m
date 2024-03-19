Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9443487F53B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 03:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B467910E1F6;
	Tue, 19 Mar 2024 02:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXIHrGXU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84EF610E1F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 02:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710813872; x=1742349872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bKu1WBqo4h2MEb7FIQuh7Zc1N1zASNco9C1IzvHi8q8=;
 b=UXIHrGXU4NtqjTh1OLPLqMK/sNPdbFYHh+vWzMrwzMFxWTSqcBWkPi5j
 4Rg3MMSuD1omW/XctGOZ+wEAhhluGvg6EfKRBVVro4XXZmOzno5XQ9I5v
 7a3YuiYNgp7CAG1xqcdm8lgmnjftCspoBq0ZSLccraiNh0M82FhawLRW3
 sL2SqRXvvVr2rncjtiJypj+5gak9Hd+EWKUMKPWntcaAf6cuq4CrmnQeW
 mxuwhrwwQlWq8ZpzktjVwHZq8sGIhox4IEJWDDIoNjmomOwA/2iu/Jv40
 yj/WcZWUEF8nx2dNLLFrH9aBGd/RKhTGfjJftFT51up9CwnvKVD2Rf3f1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="9426963"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="9426963"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 19:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="18310944"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2024 19:04:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Mar 2024 19:04:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Mar 2024 19:04:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Mar 2024 19:04:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Mar 2024 19:04:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/bvz/IJ+bZfuNpxz7zdsoldvwnhmfrbeSQvdDkH18g9Hq6wiLkD6be0FXy5GUOco6bm77LX4VphileJEVDIJmXIvslWYZtfG9Zeksjwn8wJfoItTDlOtHECoSPp7rhiXxvVuhIPG4h3EDi6uKeTvW22DtbmApnVFaJdHV+iCovhmo8ghRnNjeZtTymfCjWSDVIzm48Br0GSGIEu0wJ/jIjbcjAOc0Ffrajfwc17BgyoWwJq6vJ3i1J3+a0THG/pPrTsyicLW86Scq/73YWkmuTwjwJ/KzdmcOZXUHWl26MVTlo69ja1zk/aqLNNFmavxRITmQyEMm6JLc2sLbsaug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKu1WBqo4h2MEb7FIQuh7Zc1N1zASNco9C1IzvHi8q8=;
 b=C7zKgy7qSdWeZr6CHZjHEqHCt59Bon6bQ9duEL7uW/vr9IzGA+7u5qvMKJdPP3sxLnjpqE9peBo4lIgy18L1LL+iTFcxJRWR7qE9vGLEaqYkwA9eWpPKhUa+YuVIiZYIqWv1Y6dRARLo3ekIQWMCaaFIERE9MCasEXTNfVvcZ6VsW6wbq86SIc5Ka9n1xKH7aXbR/SFMSZz43/Tqh+05eHfy8VdDXXFxvZvIxnQ/6NZa/7CIc7XM+Hh5ZgP932xuBzineM4MyuvdDzL/cPi1dfVD8Ii5ZZwAgxJKUNpVETXLaPD/nIWoTaiUwq5abS7UN2qa4dMoMEHrV1lu8ha1aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by BY1PR11MB8032.namprd11.prod.outlook.com (2603:10b6:a03:524::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 02:04:27 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf%6]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 02:04:26 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Dolan Liu
 <liuyong5@huaqin.corp-partner.google.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
Thread-Topic: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
Thread-Index: AQHab3NESZuTvK6ew06znQJuOQxKE7EqgLQAgA4w8wCABIOVgIAAYOQAgADK2HA=
Date: Tue, 19 Mar 2024 02:04:26 +0000
Message-ID: <PH0PR11MB51288042A93FB270C8978281E02C2@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <87il1zzmpt.fsf@intel.com> <ZfQqyLJBAAuNLKZ2@intel.com>
 <004a0b4f-a619-4989-901f-251de3de4af1@huaqin.corp-partner.google.com>
 <87il1jpsb5.fsf@intel.com>
In-Reply-To: <87il1jpsb5.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|BY1PR11MB8032:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X6wC6gJoVLNd+p5VyHFYDgpqbK6fTnYbMSxADd86LTgk4krxsZMFMGQ2CZrGOaywZmrbTTPG0wCfrF54uT2e4b9yxORgmMBBduqb1p6wfYKlCL2aZJnhnwLrDJpsadvBxUqzSuk4O0NH0eQHzal3aHwlBebTj05M3I0wbSw4e2JllA2I9/YlYYVi3jMnliJwF+62wpIuuDFyiJSB+eZ10izXJIYuvXrQVchU4K3+mGHnkk0y1M/zNcAVha9F3bGuyP8uxQpstj9KxovuuQ1GmnH/R+/1wXgytxiWvT2X5BvONEFtCGSHP9QrSmG9I/FUpdX73o0ALaHlvDpsVUV6/I8wI8odrnA2SFYmx8j90/dVj4hXmuzPvSr0/UWATooU3s0vIEl2TYsGBZibLg+5DtR4NHTkll2ptNLQCTMxneqT9510hWWZWLsAD+gXSVDYyslPKiMnAGQb2Y690Sf0yiw2thmzKHTH04bz0LoV9Wpow96cOqCE3BpXiE2ZkTz52JosrZcT3pPqJnI2Bn9obOrG5ras+gNc9Dt+qz9x4OWr9o1Ww0xSaDOuXHctcI2cpvay4IByDCMgFbFrjFgTT4vEyvWx7GY/jjliP886e1Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?am9WekI2a0p3YjVURlB3VHNsMkZDdFdFT3JNMUlPUGZPR1d4enJqZVNSY2l6?=
 =?utf-8?B?K1ozMlFMNlh5N2c4SVVId3JVL3RMZDZXWjFCbjRINFdUYjBiN2pkc1RBUXd1?=
 =?utf-8?B?MWVqdWNuNk01NTlRNkU2UDdUdE5mMWpnWGpvU0dkTzRRK2RpMllYMGJ4aFN0?=
 =?utf-8?B?cTc3QjcvSXVqZVJSa0haMHZCU0dsY21uMDk5U05abnBhNGZBd1BxNFNONzY2?=
 =?utf-8?B?a25EcXZDUlc1OVN6VHNmaGZWMUlqUjRVcFdkUGhNQTdDT2UyamtWTHRpSzhB?=
 =?utf-8?B?aGhkL05zZ3d5TkZVNFlKRHdGYXo2bzNoMWRuakt4NjV3Y0Q4K2R2bnR6OTRh?=
 =?utf-8?B?WGNiWnI4d2xmWEZQRk4wU05vU1hOU3dkK1FKUTlWN0tKdldZcWtyWG1Xdmgx?=
 =?utf-8?B?Wnh2VUxQcXBOM2JkbWhWNlc3dkxvMWZ5QWJKdnA2TS9hOHN0bzVacUNaY0lp?=
 =?utf-8?B?YW91ZGs2MGFDUlNpbHVtaFc3T1g2Z1NNMXo3dEZhdmV3UnFzdmIxNkQ2TVla?=
 =?utf-8?B?R3V0c25rZUpBYWc3Z2Fub3pmdTNyVmFzcmNPQi9nMUdWZkZGR09aai8vb04w?=
 =?utf-8?B?V1EyMXZMY01BMndSMkRhc040d3ZqenAzaS9xWEw1WEdNWWg5bjNHQzFlU2ZK?=
 =?utf-8?B?TXBmdmhtNG9UL2ZJVjk5U1hmM3pPcnNKaUJzTDNCaW9JNVlqRFdFOU4vSU9q?=
 =?utf-8?B?Y3lkanlFQVdtZE9mWjlYZ1ZWV3pTMU15L09UUU5BRDE4ZjBkSXVsdGh1amhL?=
 =?utf-8?B?T3hEeC85TDBhOUF5RUVlTytNS0dpRnFaNnAzOEpqN2NrLzBOSklMSjRScmdr?=
 =?utf-8?B?OG1GanZiR0NzQmI0ZDZpVlVIMWYzVkl1UXhiUG5JaUxmRVp2aTVndFlzbDNM?=
 =?utf-8?B?Q25SN1N0TUR4S0lsQ0Fvd1B6UUV4QlUxWG1QSlFLZjFpR1V4SnZ5RVRvb2Nw?=
 =?utf-8?B?SUp6ZFdDSHl4OVVoUXlsS2VteXY0aCtjcnl4c2tETE5nbzNqUE5HV0psdUli?=
 =?utf-8?B?TFJYczJaclI5VEtGSytEVjFEUkFPTmZkY3ZHNTA4YnZ2ZHh2YkZaak5vckF5?=
 =?utf-8?B?ZGRzQnpHWWJoR0Zmd1BudXZ1bDk3dGZYVGs5STRzQkU3U1JGRjlabjErVzJ1?=
 =?utf-8?B?akpxOVpHSlZJUnRMOE1xT3RyNWtqeDdUTnlMVzE4QmJkT2xuTGIwb2RjaGZS?=
 =?utf-8?B?RUcvOGh6cTIxakxiUTJ2WmMwRXpPYk14VUNGQ3ljY1RHOTJnWVlyL09RZ2NZ?=
 =?utf-8?B?bzJ0SUxkbDRLaDB2clk2OVUzQThFK0IvSXRnNFl4bDhBcXBwZTdpa012SlJw?=
 =?utf-8?B?cTl3dm0vcHFkNFdLWmpyRnU3eksvcFFkeVJUMHJwbGFPeE4xRm0zSTcxV255?=
 =?utf-8?B?MEo2OHJXeUNZWFZYMmcwMVBjTUR0dXdvMjBXcE5rRVFXQk0xTXVtcGtOMGdI?=
 =?utf-8?B?dG4rR1ZLbU9Xc0c5SlNLdTdxeFNPUEhGS3NoN2p6a1h1eTc1OExKeU5OOWlC?=
 =?utf-8?B?MU5nczRFN1VML0FPcmtYSk5IMXhFaEN3cEsrVmxhR2NoU3A5SU1Sd2R3ZHdO?=
 =?utf-8?B?RG5GUW1aZW1ray9VZ25RR0trUzBBZFZ4SmpWSEhwbE5vK3BTRXBxRG9aaGM0?=
 =?utf-8?B?cU4yUzlTS1owZm8xRWIvNzlsdC82ZVhoUFZ3cFlwSnh3bVJqdm0zbXU1QjJD?=
 =?utf-8?B?UStTSVJWNVJwdnlpMmx4YVdTKzNXNHY2bno1blB2cXdzOFl1NFBiN3NWQ0lp?=
 =?utf-8?B?L3VEclFxK2oxQ0pTbXJDZGd0Vld3OUg0eFFHTWdVVjlGV2E4TFFjeS9IWWFy?=
 =?utf-8?B?QTUxMys1dXdqUFBDSWlHb3JqTmk3cGFndndSRFA1WlZGejU5NFJHb3UxLy9n?=
 =?utf-8?B?UHpuc0N2a2l4T01Gc0JJOHkzNW9wMllEQTFZckIvSnpneDB6R0IxQWEvUXFs?=
 =?utf-8?B?MnJSaFF5RXVzYUJxUEJpaVBsSVpUTHowQkppN2hRbUFoUW9LMWZ6VGhRaDFZ?=
 =?utf-8?B?UXlnZTNGbmhGMlpZWVFvQ2J6SkVhckNtNUF3d2N2S3M0MWJJMG1IVlNEZmxX?=
 =?utf-8?B?eHdZeGkwU2Vhd25KSnZqTmNzVGNWaGJkZ0t5aVFJWTgxVXpUSWRHSHdOM2Z4?=
 =?utf-8?Q?StK4zSe55IjVNtM1t3XlC9m8P?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4c2b21-9ad7-4b92-407f-08dc47b8e7c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2024 02:04:26.7624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DAjk9zWyldUkAES1LUzn89xHGX3Qt+IccLlQB6JzSuRtmHRdhHwuTwAeU5p5fBYB1AiIucVGTJcyy0hpHPW59g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8032
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

aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzU4MjQxMS8/c2VyaWVzPTEz
MDc4MCZyZXY9MiBwcm92aWRlcyB0aGUgc2NlbmFyaW8gYW5kIHRoZSBkZXRhaWxzIG9mIERNRVNH
IGluIHRoZSBjb21taXQgbWVzc2FnZSBvbiByZXYjMS4gSSdsbCBhc3N1bWUgd2UnbGwgZ28gd2l0
aCByZXYjMi4NCg0KVGhhbmtzLA0KR2FyZXRoDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6
IE1vbmRheSwgTWFyY2ggMTgsIDIwMjQgOTo0NSBQTQ0KVG86IERvbGFuIExpdSA8bGl1eW9uZzVA
aHVhcWluLmNvcnAtcGFydG5lci5nb29nbGUuY29tPjsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCkNjOiBZdSwgR2FyZXRoIDxnYXJldGgueXVAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IFtQQVRD
SF0gZHJtL2k5MTUvZGlzcGxheTogRml4ZWQgYSBzY3JlZW4gZmxpY2tlcmluZyB3aGVuIHR1cm5p
bmcgb24gZGlzcGxheSBmcm9tIG9mZg0KDQouLi4NCg0KQXMgZmFyIGFzIHRoZSBjaGFuZ2UgZ29l
cywgdGhlIG9yaWdpbmFsIHBhdGNoIGlzIHByZXR0eSBtdWNoIHRoZSBvbmx5IG9uZSB3ZSBzaG91
bGQgY29uc2lkZXIuIEkgb25seSBldmVyIGFza2VkIGZvciAxKSBhbiBpc3N1ZSB0byBiZSByZXBv
cnRlZCBhdCBmZG8gZ2l0bGFiLCBhbmQgMikgYSBjb21taXQgbWVzc2FnZSBwcm9wZXJseSBkZXRh
aWxpbmcgdGhlIGlzc3VlLg0KDQpJIG5ldmVyIGFza2VkIGZvciBmdW5jdGlvbmFsIGNoYW5nZXMg
aW4gdGhlIHBhdGNoLiBGcmFua2x5LCBhbGwgdGhlIGFsdGVybmF0aXZlIHZlcnNpb25zIGFyZSBu
b25zZW5zZS4NCg0KSSB0aGluayB3ZSBjYW4gdHJ5IHRvIGdvIHdpdGggdGhlIHBhdGNoLCBidXQg
cGxlYXNlIHVuZGVyc3RhbmQgdGhhdCBpZiBpdCByZWdyZXNzZXMgc29tZSBzaWxseSB1c2Vyc3Bh
Y2UsIHRoZSBjaGFuZ2Ugd2lsbCBiZSByZXZlcnRlZCBpbnN0ZWFkIG9mIGZpeGluZyB0aGF0IHNp
bGx5IHVzZXJzcGFjZSwgYmVjYXVzZSB0aGF0J3MgdGhlIHJ1bGUgaW4ga2VybmVsIGRldmVsb3Bt
ZW50Lg0KDQoNCkJSLA0KSmFuaS4NCg0KDQpQUy4gUGxlYXNlIHRyeSB0byByZXBseSBpbmxpbmUg
aW5zdGVhZCBvZiB0b3AtcG9zdGluZyBpbiBwdWJsaWMgbWFpbGluZyBsaXN0cy4NCg0K
