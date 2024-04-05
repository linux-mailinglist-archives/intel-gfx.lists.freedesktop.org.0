Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E4C899A1A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 11:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5202E113AAB;
	Fri,  5 Apr 2024 09:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwUeuY2c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8CF113AAB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 09:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712311109; x=1743847109;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IgMFXucGvbELx6Q5h8lSY9Gij7kIN4Jc5jnG8cMcErc=;
 b=TwUeuY2cXYELR1KLc47XrO7VHFFMdJPwGe42Q5r+vsfB2irMDwaCdyYH
 kYpLmMxY4FatATb/3n6nGfMUygj9XH+N+YLM1K8cw6PglpnHMBoBJOz6e
 b2yqwaA7Ut5caZy6YQGos59vPXoSO+WfHmHGsJsjD5Atp/WUB3ulSm9cx
 jlHuds3/ALO0rnhcZAzi1lDIgjstkb1i/ffwZf+vDsQR1Yyap3xlv9xJ6
 YQf9oz8z4hy0MFyerYHSbf+sm/RVvjujRMNHXqgsl9M8u8NHSAkalTWkP
 h+Dg1nBTuVB4BQ15FRy8pLpQzmG7hu3WWucpxQixv7JCfUHXvMjsF2Usp A==;
X-CSE-ConnectionGUID: TG1nR1ybRWS7mE8+zyIu2Q==
X-CSE-MsgGUID: YIhycwCJQq+5LTqFbiGOGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7472925"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7472925"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 02:58:21 -0700
X-CSE-ConnectionGUID: LvKy9wCHQbWhOf+jjfdz2g==
X-CSE-MsgGUID: OYZdmC0cTm6z58fDSGAYmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23754360"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 02:58:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 02:58:20 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 02:58:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 02:58:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 02:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FnPxncSm1a+/miC7nPLn15SPPVomPRpGpulIgZ1UHCWTBMx5Et/ZPtBc1eE2nF6F0ACUu5LQKpgYjxZL+g8JfrxhAJ45aEOlG8Kk8NXD8eTnmFOLuH6IvOI46i67jLyNd6HBoGS0Gy2lnFC4VJqWCivN+fPqt5wAge14qqhcpf/Y5O8726NzTSxf7kd3jTShY+xV9ll8uYEsWjCC6xV1hnrHaePVC8oOkq5LJPEYzljqzEPOBpkWX0nPnrlo8XDC0pao0c3qd3v+VECN12F4raNvCBV//3Rmqk60mcthtGnVFQwRKPvo+5avjJyW3YABlg/RpjPsbvSU4e/do0esxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IgMFXucGvbELx6Q5h8lSY9Gij7kIN4Jc5jnG8cMcErc=;
 b=j2pkJCH1HOOBYjygyru243XCVeUow3cD39VI/t+S/6HQ4XtEuKlBFAiT815DJMJVCy5LVoKpf3k5pMkNZHNvjnjIVcFFH0T60zFbKO9Jzqx5KPHAtzi9oYj2BGN7EiSQ3YLXhQni/2cILx8T8LqCSwaTOLZ08bs4hiWRux9pa4taYcALhqwKnJNrJvQh2Tst0zox98vUHBcdgOie4h0TmaiW3KstycSOBKugzbX67yGXmNLSBR8y0byv3qmf8RFh2o/bPWYG8Q6wAiHouEVkGQY9hOD0zNknZ2DE1aq/r6AcosjoiMxCYCqodduKEyOv2xEM6yRf0ZZn0d0kvKYWrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7457.namprd11.prod.outlook.com (2603:10b6:8:140::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Fri, 5 Apr
 2024 09:58:12 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 09:58:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v5 07/19] drm/i915/psr: Call intel_psr_init_dpcd in
 intel_dp_detect
Thread-Topic: [PATCH v5 07/19] drm/i915/psr: Call intel_psr_init_dpcd in
 intel_dp_detect
Thread-Index: AQHahaV0C/P9tXCdXkCv86OQb0jQ4bFZc7Qw
Date: Fri, 5 Apr 2024 09:58:12 +0000
Message-ID: <PH7PR11MB59811570F3BEAB828654DD49F9032@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
 <20240403090013.54296-8-jouni.hogander@intel.com>
In-Reply-To: <20240403090013.54296-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7457:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I4ukSxUgm+VABmkG6VESKi5XdfmJwLMYinVwee/08tdcznyroYeta3VDcUys5qCwb5umYDBx3TcS1P3UyE1hxIUNu8V7ze2tR1xpniOWvj8QjX58EAT+6cl8DQC1g5EcCqtgKzfAPm2QRVeUroSbeP06m8sYzIRXJ7Nh9Fh05tgiDHIC8JpLZ9/6SpJDiR5Y0z8Vyzd8y0uM5Nr6rlVCxce4K102zOJ7nsSm94JQTb56eJrPcJCF2vS5tvhZmE0suLCF0lpSHDZ869NeKe0D+iqj2Br8DJCYnljXFEA5ZEaolKR+U2BOVTIRDijUQy9W5cctAl8qpZaSVJRbpG4FuTUEfezjz5Yf36KZoD2h1jVhXnkL+DlUf0drfEFZPNH3uu4Kijow4SfHCZfxmbV9U6CmvbzMDpRzf5NlHBEnl8inPCqyEXsIRpROKheJbaHvre1IHq4o7tCKRaj1f66u7O559r587MnTHPM9mGrCbIaH7IUswqoOJYOgl/Ue/fcKDpR/m9T+kDuqnmlhmwIfmk/CyOwpT3Ud5X5/q+6IjKk/WC6pcDsWbJm8OVGx/+ZnLLzg3KF9YseWAkeaYE25qKkip667ArgeRBaqKBnk4GuZHeERu75XWvW5STkb2umw8T9R/RiuDjBxYnZOHkHphe/F8n2XacwkuiNkkEpzveI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ai90eE1odUsyTTFtNWY2V21lVmRwc1FkWXdaV0dZT0Rlc3BaQ2xTOUJBZWMx?=
 =?utf-8?B?WTBsbGtLUzJXZWE5TkhZL0ovQTJFak1NbVBUbXQzcjExVS9SekdNZk1wbTVW?=
 =?utf-8?B?UDhPak5ReTRkQWo2ZkhWL2t3WWJ0cU54Z05pdUpRTUcyTGNGUTFjZjVwOGRs?=
 =?utf-8?B?N2R1bDlCTDNEUkRNaE1ZVXVidGIvNjRiUVF6Mms5dXZVaDI2ZVcvc1lwVVg2?=
 =?utf-8?B?bGJNa0wyejJObWd0Y1VOVkkzbXh1WUNuUExMR2hYQ3RGaTJWQkNPSk1qdkc0?=
 =?utf-8?B?VjA4WU5OenhYUllhWkcvRzlOQ1JabExmbzA2a01LaUdGdDN5bjRmaTVzVDJ0?=
 =?utf-8?B?WUFVQkQrTnlSdW1xSmpVeU9GaGx0bFNjUnZ2cy9ickdUM0cxWXlKS0hoSjE3?=
 =?utf-8?B?dUVsVjh0TFhiRUtjTGNTYWYvQlNDOTdFeGtHaTExQXh6cWFzMFRINk42UEp6?=
 =?utf-8?B?SXNQK09UMGJ0NWVNLzJZZzl6dzZJV05pbHBOam8zV1grNmw4SlJoOTVGZ3pQ?=
 =?utf-8?B?UnVhbVI0WXpsSkxkTE5PdmNnVnJvdXNITE5SeStGSFBPLzVQOW1uSW5UQ1pw?=
 =?utf-8?B?NXpIR3BNYlA3T0J4QU1sU3lCd2tjNTlTV2NoNk1Vc1FOdzZEaWxLTTE1TVhZ?=
 =?utf-8?B?ZW95cWxxQXJvWXZtTlNtYXhPRGEyYTlMU0pRUzZFeE16NGh0NjR2OFRPRFJJ?=
 =?utf-8?B?R0RqUFlKSklRTWhBNWU0bHVpdDdheHVabTZEYTlvcUtoRjBaaDdvbndxdmVB?=
 =?utf-8?B?YzYydVNPMHQ0a2xJUjYzUGxvMXozNzVjZ0l0eW5saGtnbXErM0U0U3F2NEFW?=
 =?utf-8?B?b29mTHNReHp6c3l3VytpMUNrd2RIellJbjdIWTFrN3FHczZycW0rejF3bnJy?=
 =?utf-8?B?Z0VBQmFUU1owWEt4a0paNmhsbW0zWWhNci9GM3N4Y0pXK3U5WVVMNzNQWW5l?=
 =?utf-8?B?bDFGamZ2aXpoTmwxUlJLQlpUL3IrUkFxbzlzdVBpUUhkM2xlb1JTSm1oUjRq?=
 =?utf-8?B?S1FmaDdCM05YRUpoUDdFamh4bndnbnJrZkczS2kyY29Jb1ZRRDVMZ2dSVWJ2?=
 =?utf-8?B?b3JiVXUxMW5Ra1JkMzlVYTI5QW5MVkp1RlFTejhuOVIzVVJoT0JmeFN6VnRQ?=
 =?utf-8?B?ZE15Tk9rQUlNT0JwNW50dkNhUW5GTkVtUWFCRjNrV0NFKzNmWmxpVTg0MXJ1?=
 =?utf-8?B?K214WGgwdHBTNlM4U2orT0oza2sxdlNJQlJnQzl5L0VTOUF5RWRXTUNHT0xY?=
 =?utf-8?B?OVN3bC9FOWFXNk1OaTdpRHRkeTNucW5vWklpcGtVZFNUeDZldlZiaW5qWk1v?=
 =?utf-8?B?WmFOVWpmYlhmS2o1TW9GL0wwbXhsR0luWGxTeHAxREVBY1J1UlRzbG1RSVdt?=
 =?utf-8?B?R0VMem41SU9rSExOaDkyS01tbXZYM3hFN2JwdjJDTkZrN1JKc2RNZmJiVWJW?=
 =?utf-8?B?ZDFtc0tMdFN3eGxId3RuVnk1bnY2U2M3MjNvQnFjWlE4YXhKMWpqSU52R2Nj?=
 =?utf-8?B?OHV0N1Z0RFlCbWN6cFA1cU84aWttK1YvQitVMXNVYUlzdmNFWHA3SXlMSTlJ?=
 =?utf-8?B?VUI4QmlNZGs5Vk9wS2J3M1NNSEtaTmVpL1hZNjhTU2tibGZCNWFXWS9oKzRy?=
 =?utf-8?B?VkR0ZXVyQ0N2cEVhN3NLNTJlVU5UVDdZNEc5MU85NnhGVVZFd1YyOTdYeVg4?=
 =?utf-8?B?VHpMN3dDRHcxQTV1Y0JWNXYxUWRkYmkrdTNRQ0czVlVwWjNLTWRwUnFRRlNw?=
 =?utf-8?B?eHgraWtNajc1emk5YkYvekRqK3o5cmdlbENNWUtnc3hpVysyZDF3eENER3Fa?=
 =?utf-8?B?UGt3azRkRTl6ajRQNk1MUnFJdWNqMms3WjVZaDA2UDVYVGw1VXRBei8rcVBS?=
 =?utf-8?B?ZDg2eWZxZ0tTbTBhZitGU3ptcWNzUW9vOUhVeW50VEZLanVsSWI1WHBkd0Vx?=
 =?utf-8?B?UzVma0JuK3ppTXZ1ckttRStzK09raDdUdVVBbFBRVDlhblFieTVLSGx2ZUVG?=
 =?utf-8?B?QkdnZWkzMy82S0xrT3JEV3EwdXVGclFYcnBBaGlVWUkwbmN6MGRWUjRMVGNp?=
 =?utf-8?B?Mk9TdFZubFdzeTd2TGNVTjdSNnBOaWtCWkhEakVtYzB3SSt6a21Ec3ZkcHFy?=
 =?utf-8?Q?DetL9bjqYAtitBdIbU6yIV/Ca?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 363c9447-bf08-4170-dfbd-08dc5556e7d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 09:58:12.4465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lSnPb3rdtDVTrIYZFj3BUC0drf/G+DJlbq78hGIF7fW9ZZKrlQEvMX3GFS/gWYwd2Kq+eoUCwZpNXvQb1/AVGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7457
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMywg
MjAyNCAyOjMwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY1IDA3
LzE5XSBkcm0vaTkxNS9wc3I6IENhbGwgaW50ZWxfcHNyX2luaXRfZHBjZCBpbg0KPiBpbnRlbF9k
cF9kZXRlY3QNCj4gDQo+IEN1cnJlbnRseSBwYW5lbCByZXBsYXkgZHBjZCBjYXBhYmlsaXR5IGlz
bid0IHByb3Blcmx5IGNoZWNrZWQgYWZ0ZXIgcGx1Z2dpbmcgaW4NCj4gRFAgcGFuZWwuIEZpeCB0
aGlzIGJ5IGNhbGxpbmcgaW50ZWxfcHNyX2luaXRfZHBjZCBpbiBpbnRlbF9kcF9kZXRlY3QuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCAyICsrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGIzOTNkZGJiN2IzNS4u
Yjg5NzZiYjY3NTEwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC01NzQ0LDYgKzU3NDQsOCBAQCBpbnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvciwNCj4gDQo+ICAJaW50ZWxfZHBfbXN0X2NvbmZpZ3VyZShpbnRl
bF9kcCk7DQo+IA0KPiArCWludGVsX3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiArDQoNClRo
aXMgaXMgZml4ZWQgYW5kIG1lcmdlZC4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiAgCS8qDQo+
ICAJICogVE9ETzogUmVzZXQgbGluayBwYXJhbXMgd2hlbiBzd2l0Y2hpbmcgdG8gTVNUIG1vZGUs
IHVudGlsIE1TVA0KPiAgCSAqIHN1cHBvcnRzIGxpbmsgdHJhaW5pbmcgZmFsbGJhY2sgcGFyYW1z
Lg0KPiAtLQ0KPiAyLjM0LjENCg0K
