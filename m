Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5058A07C4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 07:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E7410EC11;
	Thu, 11 Apr 2024 05:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PsBbE8Jp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF3410EC30
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 05:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712813537; x=1744349537;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fr1QFwIO+bjZ66GupwyWnJsGd8/8DxxFZ/fOt8omeVQ=;
 b=PsBbE8Jphf90B6xRQ5ROoW1hN5hJVzIsXuonExP6+rD9itdMnpqFQ5Qs
 1ml9WAZS7YgrhaApdNSu2QrjbFA4pPhzF8OxLGm15h+iaXy7MuX+gv7Sm
 ZQXfil65WLSkC3a4QHN2G3PL61X1hAXW9zBgzgckh7aBX9S63TehDl2US
 7u2ljkZDzKl759HcHObs4lJpQLOojyY0D8tgMHpdp642rbb+sAE4iK4M2
 sBG05anSdcKEfSIgMbBZ+WXVE9wMjVlLKNxnxzH6Agzo1ENtUgKDn5frJ
 UjNvvaR2BngVh8ZFyH6KJ3X9lTb/tbxK0/uW0PYjfb6Utr/d5z7/uPDnh w==;
X-CSE-ConnectionGUID: EIwxrmnXQ9KqVHth5iELOA==
X-CSE-MsgGUID: rIQGTPKnSuq1TzeBbJLFbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18811350"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="18811350"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 22:32:16 -0700
X-CSE-ConnectionGUID: FwpgEt+FR/6bKVMt8bjHwA==
X-CSE-MsgGUID: dMBC+Oc4S/KzEEbA7uF+IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="25558285"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 22:32:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 22:32:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 22:32:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 22:32:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmYY9XTuImL+8ClKJGW3gSw37HE7D4UzhGQanACz0dpOYJirweLB1RNPM6RSTrnOtx2huZJHdrOb4KTef3QLqO0bB4WtZTgVwzAbyPbiw/YcvW9+JMqynttWS6Z5mO75TBBDnbPM3GsnK6IPeuK6ehGUiCDA1zrBkq8FXuwegJVwJBzQlU+bxtW5Gv9p5OHLR1dS6tDiT5C1wT0oHbsfvQEWN/vk7ghwmeTMqjMh7Pw4vWvUjCUHteTOMG+sjCE4JwMb3kQqdzu7JRB6SMF8B/TKi9GwLRuoPgOq+qnFobduBoChmR+L3sZmCVt0ll4xplAM5ma67xR1GQKQ+c1xNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fr1QFwIO+bjZ66GupwyWnJsGd8/8DxxFZ/fOt8omeVQ=;
 b=Lmvi6lsgL1h9VilO63y74Slv8ybT/GJy9piPqG0kwutHvaiOty3OQ2VqAXJ/iJDu/5319fSb/A5/OH9mli1mHFUTz+XCzjoqkIVUOH04ep4epY71zv08dHz4RTeM6eBABs2zpz7Zk380gTsbtQgCie40IqsJdejrRr52poX9U7UwrTiAs+jp7O6hGfVL2HjgGFR9GsQoNaRoXj94MLzzjPK/mPKYT3kWMCqhsVGcezYt0ahlH5qEwyhC4gBGHKfruLeHgEx8Vup9T0gxJJP1Z8/dSLojhW+T62QkfpGezj4exqHd8xhFqy0TWByB1iuUm2LJkrb5a8Wl5Ol+MSJHvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 05:32:08 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 05:32:08 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Use crtc_state->port_clock instead of
 intel_dp->link_rate
Thread-Topic: [PATCH] drm/i915/psr: Use crtc_state->port_clock instead of
 intel_dp->link_rate
Thread-Index: AQHailwWAdhIOqvPxU+bzwS0/22J5LFijjEw
Date: Thu, 11 Apr 2024 05:32:07 +0000
Message-ID: <PH7PR11MB5981547B4F248079689908BDF9052@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240409085759.178235-1-jouni.hogander@intel.com>
In-Reply-To: <20240409085759.178235-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB7636:EE_
x-ms-office365-filtering-correlation-id: e8c81b76-c30e-413f-c5cb-08dc59e8bab2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nbNi5MmYrvgZy871sl7sZGybBoN+WUTkQGLtV4Tpl7tvQb98kS26OgzIBLw0pZlY09GnRlmKQthJoEK2V9HzzzoJghdFta9eQbkn60lD9yWuDlYNM92bhTV/o8RtSYCkQsKMGBUHdwBDPGAzitJEZXFpcq6txYKG+6P7XZA9k0bkSzlqeqxgFnYId4ZEKPvHB6MvlB9dEY8PzfxtfQCbKBbtJxQribq0w8Do6d+SiZWe7xBdx1REiq1vKkmlXe6QLvtqn+ePJKdHmkYM6HPeTNSjYcfa8xcV8Dlqs++n66dv4VqEUXXefw0qaiFqihWIGk01bwy2orC6mV1/qIBmxg3GgXF4OBI08Tq0P5RA+QOq2ZDEV7g7aXPTi5H/iCll1eCir2csMEbjun1UJHnykXxxtpSd18aDERUeRHHUPxQcrfXWfQr/SQd8fLNJ6qszryWssGg2mIGDP3XCoy1LGJEnovc5667Iwugrz+uMMNLQ8jTqw/FJuHNqB+ehilLSkrTrNEU8K/ZL0G4LH+RnLwvTAM5YHY+4GHZ4Okxdm5Lomw+pJPGXRGaDZ6LmaBGS3IW1IhrfnXbVxhYugJaLgfU9yQNSBj59cPCAfKGYaKwmjcLzkpCYVYBvk/uVeq1uDX03F1hnRN8o7OiiHSuM7aIkXGnGhQ9WTDZJVFyj1e8NzsrWUYYXbDYoyZ0wUSN/OqQxIAQT1uQvhjX3mVaiqkCNQzBcpNAXbnrOWqfNfZQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OENVMVhIbWl5V3FvZnhCT3lHN0EwMmV3aUJ0WFd0emo4Q1Uyc0liNUFRY0RM?=
 =?utf-8?B?SVhXWkNPNEhjOVhHcU42d1ZXYXVsbXhZbmFuZU1PZ0M3SEtlSjlvRTVKc2Z6?=
 =?utf-8?B?NWhlR2JsQUJKYURRd1FpeCtwVGpCYkhnaFhyZm1wUnVObDduaDFXQXQxb29X?=
 =?utf-8?B?QkdVaFVpeFZaM0JHWldOVWNkOEZWTnZ1ZDN4dVNaT2x2S0F3TFcyMmtzSm5O?=
 =?utf-8?B?bVVQSnllczhXMCthTHdyVTVMRzBhQVEvWDAvMExEOFQyOWRad3AvSy9RR3FR?=
 =?utf-8?B?RXQ3b0FERXlPbFdEZ3d4cU45UmZ2ZUIybklmZ1NTUFhHWU5ad2I2cGNNdVJw?=
 =?utf-8?B?SmZLMS9TeEFaUnJBWjVvVnhoNDR6eExBVGRhWUdna1I4SFR2MjYzdHJOTTFD?=
 =?utf-8?B?SElQSm9DcUFJM0F1ejVBbDNXYW1hdDBlbjVJczl6T0x6VUFDRzAvYk0yd2Ni?=
 =?utf-8?B?TW1vQ0dFL1UvNUw4YnZQV3gzWHRWWkF6SWM5c0lqUGlsaUJ1dEExVUtyUVo2?=
 =?utf-8?B?UnpOYVc5amF6WWdKcEFvczhqUVJLUE5kZ3NEbjFhSm5vNDk4cUNMaW9sZ2Iv?=
 =?utf-8?B?MzJuM0JXbUlVZkJES1JBZ0dXR25oMXoyWVVNQ0tNTWxua1FrbXl6TElVRnpq?=
 =?utf-8?B?eHplSy9JZm4rQXJyaU50QmpnSjFKZVQ0ckZuSDZEejVHeGFUcnp3NWZROFIx?=
 =?utf-8?B?alFhbDhPcGJzakcvTmJndms3eXpXZzVWTzRjUk12RGpUZE9wcVNOUGRuQWhq?=
 =?utf-8?B?SE9YUDVUOEhlVkNmSXFnWW92U01kbFIvbmwwZTVTUktrY3R4aHV2S3R6NlFZ?=
 =?utf-8?B?NHMwaDU2bm1sVFRQd2p6d1JwQXQ0OHVpaWg4M240MWFSci9PMG5KbG5IVFp5?=
 =?utf-8?B?aWRkUkRYakh6eUViZ0Ezcy9NdnlqeVVob3NPZ3FjcDBJeDJjSnYySHlXV01O?=
 =?utf-8?B?R3Q3aGNOTGJUN21saG5mK1J1WWFZRG5NWkhRbmpRbnZUOFo5V3lERVRUZmJH?=
 =?utf-8?B?ZVhtalV1QSt3b0UyQUk4UG5wOU53bSt0STBKVmMydE1sampoZFV1VWV5VTB0?=
 =?utf-8?B?dnhtV2lQRkFranFtYzI5UmtjVG81R0xKQVpna2VOczlBVnRRNUpDdmkyNWlV?=
 =?utf-8?B?UlpYNVRCczYwU2RXT0tnVEh5bDdBeXAvS3JBU2IwZWtEb2oyUWZwTUFZR1dP?=
 =?utf-8?B?RFpvYlpEeHo3T0ExeDREaHRjNHBsVHNZTlY3clF0azkrRlUveDZvdXVTR2w2?=
 =?utf-8?B?UGhCWUM1cVdwcWFZdkFwSHJDT2NBdkVESHhnYUhZVmowNUMwaUFiT3Y0aDU0?=
 =?utf-8?B?ejJSL21vdENPSFozbWdSZFlDSndVS1JnTXpzcjJRb08yTisyaHpYeWhRakw3?=
 =?utf-8?B?b3BLN3NiZDRxdnpMT2Y2VWZHS3RNQi9lRFB3c3BmVUtWdnFDbzVpTlA4eW93?=
 =?utf-8?B?RFp4ZSthMmR6VU5uZTM0d0tJdk0vZnYyVXpxd0IxM2JHVnpYQ2J4eVlDRXFH?=
 =?utf-8?B?VkVBOEJIY1BIQkNsdVVoc2dFSzdvVE9ZN3YzV2lTNU5RZjYraHg4dnhpcDdQ?=
 =?utf-8?B?Y09zU04wMzNqckFtUDFtRVBUdTZoalRMQzZQd0I0dFlHblhibGplMG5XNURE?=
 =?utf-8?B?Qkc0WWUwSU9VY1BEQWJXbEpoMUkveUw4Z3pZbnlScTViUHFHa3hnZWdsWnh6?=
 =?utf-8?B?b2M5NVJtUDdJMjEyNXB2K2RYTURxanNIQ2l5RTZWWjhjd0JORlJNY01uWTRK?=
 =?utf-8?B?RnA0K0hGcXArUmlNRnpWcnZOVVM3bWxiL1dYZDFTcFZWTVVocHNHbHFtWHc5?=
 =?utf-8?B?aUZnOWNEbTdiRkJPYmY0NUNxeU9sTEN0eC9VSmNzY0VyOU04dXk0ZHhPSDhh?=
 =?utf-8?B?bHN2aGxRdXRwRi9VMEJ6T0RqT1YwZkJSSFMvKzJtZ1EyengwcHhscGJPdkky?=
 =?utf-8?B?MVZMcy8yOTlydnVFb2ZIaFJteUh5Sld1SkQ4QTc5dGtkSkZuMGZEYUV6a0U4?=
 =?utf-8?B?UTQ0emV0enJETUlxZlduc0JsbXVLbnhpVVhoYlVDRWpXYWkvZkJDdWg4VFg0?=
 =?utf-8?B?VVhOMjVUZVhXajZCUVZIcEtZSi85aG5oenBwS0ZFL2pmbzI5eThicTJtK2JS?=
 =?utf-8?Q?lBf4B5JuQfRGi2WZJ6iCfxsST?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c81b76-c30e-413f-c5cb-08dc59e8bab2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 05:32:07.9262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBCZX18SbV/aLKLPnwfN5j1e6hslcWBmawX7XX/UMzFlBww51TW6DTv0rQn4BBfaXmw5dSjcZC3S06/4dMLazg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7636
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDksIDIw
MjQgMjoyOCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
TWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5p
DQo+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5
MTUvcHNyOiBVc2UgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayBpbnN0ZWFkIG9mDQo+IGludGVsX2Rw
LT5saW5rX3JhdGUNCj4gDQo+IEludGVsX2RwLT5saW5rX3JhdGUgaXMgbm90IHlldCBzZXQgYXQg
dGhpcyBwb2ludC4gSW5zdGVhZCB1c2UgY3J0Y19zdGF0ZS0NCj4gPnBvcnRfY2xvY2suDQo+IA0K
PiBGaXhlczogMGRkMjFmODM2OTgzICgiZHJtL2k5MTUvcHNyOiBTaWxlbmNlIHBlcmlvZCBhbmQg
bGZwcyBoYWxmIGN5Y2xlIikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBpbmRleCA3YWY5NzRiYjQxY2EuLmY1YjMzMzM1YTlhZSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMjc2LDcgKzEy
NzYsNyBAQCBzdGF0aWMgaW50DQo+IF9sbmxfY29tcHV0ZV9hdXhfbGVzc19hbHBtX3BhcmFtcyhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWF1eF9sZXNzX3dha2VfbGluZXMgPSBpbnRl
bF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlLA0K
PiAgCQkJCQkJICAgICAgIGF1eF9sZXNzX3dha2VfdGltZSk7DQo+IA0KPiAtCWlmICghX2xubF9n
ZXRfc2lsZW5jZV9wZXJpb2RfYW5kX2xmcHNfaGFsZl9jeWNsZShpbnRlbF9kcC0+bGlua19yYXRl
LA0KPiArCWlmDQo+ICsoIV9sbmxfZ2V0X3NpbGVuY2VfcGVyaW9kX2FuZF9sZnBzX2hhbGZfY3lj
bGUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywNCj4gIAkJCQkJCQkgJnNpbGVuY2VfcGVyaW9kLA0K
PiAgCQkJCQkJCSAmbGZwc19oYWxmX2N5Y2xlKSkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAtLQ0K
PiAyLjM0LjENCg0K
