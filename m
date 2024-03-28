Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C51488FB4A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 10:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00F010F4AE;
	Thu, 28 Mar 2024 09:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZwRj7a+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B036410F4AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 09:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711617959; x=1743153959;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3+oRfhd0/b+IQ5nrY+jygUmCxTROTD0Ar2NMhYGzGu0=;
 b=MZwRj7a+0ZBy9JDrqmazVH5oaS+AIHLnQ1nLEdcVLa6B81ioGPQrAeeM
 Oe7hSgWVYAo7AavQa0klACxiEchi33T3cdV4jbB7p2JcpUTVFlaJrXemy
 iKbcob+azgon18/EmRwwdgIbdsPZtmKb9CIU/eK9c0602E8DKAhONp5Em
 tVS5D+qS7N60kQ38/p9DlnxUG5MyYQXFmnsbSs/D577T0h0CMtmXLsrTn
 +CSOrw0EW+34XTZyVH/u3cDYISSIvGqBfjFHQ5SwIwxXcjHLQTqYW4FqN
 rc88lOWo+SvPMmYEY9cetSolKkYmyh9K0FRPq7u4DQ5nL7ByeBSlKvLiv Q==;
X-CSE-ConnectionGUID: RWInysiRRyODj0tR9UScEQ==
X-CSE-MsgGUID: bHd5lbJmRkucZtzYMoNEIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17906068"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17906068"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 02:25:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="54032004"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 02:25:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 02:25:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 02:25:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 02:25:57 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 02:25:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+lDau/+cO7YZA+Dg6NV523Teiw4ZVD2f+4DymjCsRmkVAXDcLIDKYtNXaTpWRnjAmQPOB8UtGKrse5TWP7EThHHNanQjnY+Dd0Aer+hLTqXO5QKnNPUg5gzMZCfJNnFUvSPWHXCm0/h7+VWf1m9Ayfn1rnoabBIFeaGETxgox4dmQl3JFmBs/SG7J56EkTR6j1GOqOownTpGfXUB9K2U9hV7LZIBTJJXqZ1PfmHWUspWQC1UFAShAN5JJyq+yOotEIqxVqydyx7Ak90QwB1Pwq97cI4fsquYkv9QWjcoWSn+OyijM0v/mx9SLb8AXzAUXCqDVXS+74f0uhQhqiLdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+oRfhd0/b+IQ5nrY+jygUmCxTROTD0Ar2NMhYGzGu0=;
 b=G3O41fJvaZa9K1E2f9W3J5DrA3cIomrAbRi1uYir2Mi27dcDwwyi86tDM3tGaSlIOXHpcv8QLfGfgLlsM6YbbQGNXWodjNLcEP0Oi9FFSW+85m3HOceijbKlrYmNuZnxy8vhvJjWXOI7cXA5Q6mrsIv7gbYidPubv/NMfxkeVWqmk/Xu+2ZW5yam2skLJ6ZY/h7a3oaAFXlaxvah4kNKn1bboRtrKFKfky1oQrPkZSwZSFfMmtpKjIUK0ha6FHN+cICtE8BiYgsnESJgthG1kaMcZr54ENeNBsJ2s6UZp5iSkRmCgN/Y4VdSmpVyLO9Wbug5K4vgcXHYGBMpO+SVyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 09:25:54 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 09:25:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] drm/i915/display/intel_psr: Fix
 intel_psr2_sel_fetch_et_alignment usage
Thread-Topic: [PATCH 3/5] drm/i915/display/intel_psr: Fix
 intel_psr2_sel_fetch_et_alignment usage
Thread-Index: AQHaefmy/wO0r5H0PEOAisuzmHSUHbFM79CQ
Date: Thu, 28 Mar 2024 09:25:54 +0000
Message-ID: <MW4PR11MB70548284FEF371ADB966CC9AEF3B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
 <20240319123327.1661097-4-jouni.hogander@intel.com>
In-Reply-To: <20240319123327.1661097-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CO1PR11MB4787:EE_
x-ms-office365-filtering-correlation-id: 9e467120-68d3-4534-e297-08dc4f091171
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r4+iPYHOsT27XGtmvuSl8YkSxfuKGnROSawE9Htq1tl+epiQLbykuMMtIxQb3vtAXVf1tJWdf9HoblYVJRXbQG9YiZV37JxSB296IJSW3y6WcPx/gkcr/PUyShuNP+FNhDtzeBy1VDdf+CIyoyBIkeGy9ZtcwueklVtEM1X+IMP7zaKT2/ljGomWTDoWQtdj44ZCRges1Ko+YALmKU+PWMdhnjskNyhog3J68N6TrTMXCt9OqcZMInKb8z2N+A6Di7A6lJLyTEL2pTko92Ff2jskG3M9Qi5XXWlgp12C5X5UAceD1GhtQ8Sv9oGZQWBKXQAOXrwrtzHKTZMjQmmH3zXE9fm0HLyV3LCyLXxophzRCN9WgKE41hPxMNxA0wfU2iFAyQC7W2Lq9Hu12SuujTPvRkBWpWDRGa68GgrBucZu1bH9fQgJJVA0GqZtRA88HrpasNq4JvVU9y6rVZBj1UrA+EjU5aOPkIk5iCcnx2rM0zBHkoGhFIXX16H0HnJD7dwbXBgvRkgvrBR/45P+eJkYgwXvq3daTmUhx7Q+Bo1t8h2nmmbXMhkvr3BRQ1cVRVs0q7rMecPRH81a6b20FkrsZG0q2DgZnClNCS+LDQFj/Tl6KJXh9zAY1fQXLAx5MH5iMIqhHlSpnG084ovUHmaqaMW6CcqGFMWAaAdoV0yjQZQth/9YEWqvWwp8tm+vK8Ge5qcwWxT1xTgz1dnOyr8VpPrLQiM8Mkso7AI3xVk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zmlobi9NeTlzbzcxclNWT09TK2J6Ui9BeS9MUVhUbzh2b3RFODFPRGovdGdy?=
 =?utf-8?B?TE9qOGxVQk1ONE0wN0F4Qk9vOXpiYnczb3Fxa1NZckQvTlAxRUM0SnNHeXdM?=
 =?utf-8?B?QmM3UDdMbGdnbEt4Znc3VHdGN2ZjN0NXRWY2TFBDcm5oVWNvOWlvd1ZvOTNX?=
 =?utf-8?B?TmJlSVRmMlowNUl6cDNhRzRkZkw1S2xiQldka2I2T1lJZktLMFpCdTgrb2F4?=
 =?utf-8?B?Z0VhU1JMamEwN2plbzVCUWsvblVSeDFlMHFMOTNNSTh4MTFSeW1uNmRkR2Mv?=
 =?utf-8?B?KzVUNHpzUmk5N29aYVlGSjE5ZytMRDlRREsvSCt3MEd6RDl5ZzA5ZExlMDNa?=
 =?utf-8?B?L0Z1SlpwQm53VGN3cDFMaXBwdkUxZTQxZjZpU0NvQlB6WVBJMmVrSE1pcncr?=
 =?utf-8?B?Q2xWdENoNnAyUElqOEtmcXUydW1JZ0p0Tk1LQlc1Nzdndnp5SDlZcDc1UHRU?=
 =?utf-8?B?dy9RdUFoa2phcG0vR3dCRWYyTFFRcjBOVUkwbEMrZjJhVjJvd0g0bFpDdmpF?=
 =?utf-8?B?cmRXZk5YTko2MDhVVjF5d095Mk5DZUUzYTFSSHRDQnI3Z2xPWVY1ZTkvUzV2?=
 =?utf-8?B?SzZEc1VOM3FMcEtFQmlVd0NFRkJMbXA0am5tb00zZEdoN2dPVU9DcVNLVHlN?=
 =?utf-8?B?TC9yMUtrMDY2NzlXQkNyU3lLVE11T05xUU9SQUdrekMxK2F4MVJKQmJ5ekt6?=
 =?utf-8?B?aFJMWHdMOHhzNmdrSnd3TkdEVkN2ck02UHR0eXZ3cVo1MEhnaXBYNGJQMWNz?=
 =?utf-8?B?TlBwaTc2czhraXJjL2NLRDZOVFZROUJBUGw0V2dmWU1IZ1g3bTkvbkxaMVZQ?=
 =?utf-8?B?MzZFbDhZR2huQU9LbGVtNVIxT0VQUm1vWVhreHF5R1lXSnoySUpNUzVPSXor?=
 =?utf-8?B?eGFlN3NWbTVTblhVaFZKZ0JGOWpVOGEyQXhJK3hqUG9PNnZ1UXl3VHZJd21v?=
 =?utf-8?B?T1JpNW5TdDc5WU9iR2NZd1UzWitwOGJpRVc5bkJzOWs5dGsrSXgvclZjTTh0?=
 =?utf-8?B?WTkzeS9mTW9rdjhVVkNKT3RScW9zSTZsQjBDcDFlYnc0Z1B0bDBHdVBlamw5?=
 =?utf-8?B?SDk3bVVjWDZQMjJESlZia3lWeWpQMVZHSEErak1vNitQZG9zRGRIY3M0ZENS?=
 =?utf-8?B?aWRqVHZ6ejN5d3NKTWl4SHFRRDJjVDNDcnlWMGtJNnducWVmTHFvYWhoZFR6?=
 =?utf-8?B?YWdPZTlFME9ZbmJ5bnNTb09RUFI5czBjRnYyNzlLRHYxaDQ3bzNIVGxnNEd2?=
 =?utf-8?B?UHVwelE0bGVKVEF4dzBtQkZoeGg2QXlHblNuRXJlWHpGcVdxRFFIa1MxK09Z?=
 =?utf-8?B?Z3FOemZRWEdXSFhodG9WTjg5c1pSeEs2WmhRS09SbWhiUUdMRldEU1BINWEr?=
 =?utf-8?B?V01PbkNQNzQrcTVySDgyUnZKS1hnNm5wWHFibGN2OXQwNERDV0J2Q1RtM1NY?=
 =?utf-8?B?R0YrQXVxOE9QazM5eW9VTEpaS3NKWHBYQ2NsNVY4ejZ1L1I2d0FkQytOMTFT?=
 =?utf-8?B?UnZLbzJuZTVoRXhkNHBwQTllSzFhOENpeVdaSXVnamQwRDZ0TUhSNldUSWNI?=
 =?utf-8?B?OTdzcS9oaUttNktvbGx5ajVTYkQvYkhvNnNDRmFwdnJTYm9HRVNKTXd4M21j?=
 =?utf-8?B?aUZvdHZ5ZVhUSFdpUGxhdXhwclJmektrMjRWM2FJUW5OKzdMRzVSUUVUM25O?=
 =?utf-8?B?NEFGckVmNTZjQ1JTbDJ2ZU5YZXVGQ0lEQ1hOc2E5TGlScEFFWlZCVDlVQUlM?=
 =?utf-8?B?c3VLR3M0Y0E2T2VOM0R4ZmwrSURFU0JjOXlMUU5SMVkvMGpGWXhHaGlkaStF?=
 =?utf-8?B?UGJtNkRncXFKSjlFME5aRU50V1BWY044MEhtMVRoZVhZYytmNmIyL1hjK0g1?=
 =?utf-8?B?d2lLdjBOTnR1VHBHblUraHpzVXR6M3RJaCtSSEtuYndpbTgrbjFvZFpobzdl?=
 =?utf-8?B?aVlzSkdvSGV6NmdYakpNRHVIcE01emwvaDBIZjU3cGQ2dFd5V1FkRHNwdFJj?=
 =?utf-8?B?UUZlZDhHZWxieERkSDl3MmtpTDZISzVRam8zVUNZcnZmSXJLaU51NlpMdUNh?=
 =?utf-8?B?TGoxRDdBRTRkT05lUnVOUlh6ZkhiVmJsN1ZZTkM1R0lHZ1ZoR214VDdLY1la?=
 =?utf-8?Q?JqHJ3VIHN1wwI6rd4GNQHH0m+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e467120-68d3-4534-e297-08dc4f091171
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 09:25:54.5302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: raWib4fIWtrutD2QtzRU3xDd4XnzbM5oF96UeekpJUkT1mdVIRZXL7OYObgb+2PsRS4ZJWdaRtpVXwPE1VEqAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4787
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTksIDIwMjQg
MjozMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDMvNV0gZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3I6IEZpeCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQgdXNh
Z2UNCj4gDQo+IEN1cnJlbnRseSB3ZSBhcmUgbm90IGFsaWduaW5nIHNlbGVjdGl2ZSB1cGRhdGUg
YXJlYSB0byBjb3ZlciBjdXJzb3IgZnVsbHkgd2hlbiBjdXJzb3IgaXMgbm90IHVwZGF0ZWQgYnkg
aXRzZWxmIGJ1dCBzdGlsbCBpbiB0aGUNCj4gc2VsZWN0aXZlIHVwZGF0ZSBhcmVhLiBGaXggdGhp
cyBieSBjaGVja2luZyBjdXJzb3Igc2VwYXJhdGVseSBhZnRlciBkcm1fYXRvbWljX2FkZF9hZmZl
Y3RlZF9wbGFuZXMuDQo+IA0KPiBCc3BlYzogNjg5MjcNCj4gDQo+IEZpeGVzOiAxYmZmOTNiOGJj
MjcgKCJkcm0vaTkxNS9wc3I6IEV4dGVuZCBTVSBhcmVhIHRvIGNvdmVyIGN1cnNvciBmdWxseSBp
ZiBuZWVkZWQiKQ0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgNTUgKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MzMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTYxZjkyZDEwMjQxLi5lMWE5Mzk5YWE1
MDMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBA
QCAtMjE0MCwyMSArMjE0MCwzNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9w
aXBlX2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdA0KPiAgICogY3Vy
c29yIGZ1bGx5IHdoZW4gY3Vyc29yIGlzIGluIFNVIGFyZWEuDQo+ICAgKi8NCj4gIHN0YXRpYyB2
b2lkDQo+IC1pbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0JCQkJICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KmN1cnNvcl9zdGF0ZSkNCj4gK2ludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQ0KPiAgew0KPiAtCXN0cnVjdCBkcm1fcmVjdCBpbnRlcjsNCj4gKwlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3Rh
dGUoc3RhdGUsIGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5l
X3N0YXRlOw0KPiArCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7DQo+ICsJaW50IGk7DQo+IA0K
PiAtCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0IHx8DQo+IC0JICAg
ICFjdXJzb3Jfc3RhdGUtPnVhcGkudmlzaWJsZSkNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmVuYWJs
ZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpbnRlciA9IGNydGNf
c3RhdGUtPnBzcjJfc3VfYXJlYTsNCj4gLQlpZiAoIWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIs
ICZjdXJzb3Jfc3RhdGUtPnVhcGkuZHN0KSkNCj4gLQkJcmV0dXJuOw0KPiArCWZvcl9lYWNoX25l
d19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG5ld19wbGFuZV9zdGF0ZSwgaSkg
ew0KPiArCQlzdHJ1Y3QgZHJtX3JlY3QgaW50ZXI7DQo+IA0KPiAtCWNsaXBfYXJlYV91cGRhdGUo
JmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSwgJmN1cnNvcl9zdGF0ZS0+dWFwaS5kc3QsDQo+IC0J
CQkgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5jcnRjICE9IGNydGNfc3RhdGUtPnVhcGkuY3J0YykNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+
ICsJCWlmIChwbGFuZS0+aWQgIT0gUExBTkVfQ1VSU09SKQ0KPiArCQkJY29udGludWU7DQo+ICsN
Cj4gKwkJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkNCj4gKwkJCWNvbnRpbnVl
Ow0KPiArDQo+ICsJCWludGVyID0gY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhOw0KPiArCQlpZiAo
IWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIsICZuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0KSkN
Cj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUt
PnBzcjJfc3VfYXJlYSwgJm5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QsDQo+ICsJCQkJICZjcnRj
X3N0YXRlLT5waXBlX3NyYyk7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIC8qDQo+IEBAIC0yMTk3LDgg
KzIyMTIsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLCAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOw0KPiAtCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlLCAq
b2xkX3BsYW5lX3N0YXRlLA0KPiAtCQkqY3Vyc29yX3BsYW5lX3N0YXRlID0gTlVMTDsNCj4gKwlz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0
ZTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOw0KPiAgCWJvb2wgZnVsbF91cGRhdGUg
PSBmYWxzZTsNCj4gIAlpbnQgaSwgcmV0Ow0KPiBAQCAtMjI4MywxMyArMjI5Nyw2IEBAIGludCBp
bnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJCWRhbWFnZWRfYXJlYS54MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0Lngx
IC0gc3JjLngxOw0KPiANCj4gIAkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9z
dV9hcmVhLCAmZGFtYWdlZF9hcmVhLCAmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpOw0KPiAtDQo+IC0J
CS8qDQo+IC0JCSAqIEN1cnNvciBwbGFuZSBuZXcgc3RhdGUgaXMgc3RvcmVkIHRvIGFkanVzdCBz
dSBhcmVhIHRvIGNvdmVyDQo+IC0JCSAqIGN1cnNvciBhcmUgZnVsbHkuDQo+IC0JCSAqLw0KPiAt
CQlpZiAocGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikNCj4gLQkJCWN1cnNvcl9wbGFuZV9zdGF0
ZSA9IG5ld19wbGFuZV9zdGF0ZTsNCj4gIAl9DQo+IA0KPiAgCS8qDQo+IEBAIC0yMzE4LDkgKzIz
MjUsMTMgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4g
LQkvKiBBZGp1c3Qgc3UgYXJlYSB0byBjb3ZlciBjdXJzb3IgZnVsbHkgYXMgbmVjZXNzYXJ5ICov
DQo+IC0JaWYgKGN1cnNvcl9wbGFuZV9zdGF0ZSkNCj4gLQkJaW50ZWxfcHNyMl9zZWxfZmV0Y2hf
ZXRfYWxpZ25tZW50KGNydGNfc3RhdGUsIGN1cnNvcl9wbGFuZV9zdGF0ZSk7DQo+ICsJLyoNCj4g
KwkgKiBBZGp1c3Qgc3UgYXJlYSB0byBjb3ZlciBjdXJzb3IgZnVsbHkgYXMgbmVjZXNzYXJ5IChl
YXJseQ0KPiArCSAqIHRyYW5zcG9ydCkuIFRoaXMgbmVlZHMgdG8gYmUgZG9uZSBhZnRlcg0KPiAr
CSAqIGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcyB0byBlbnN1cmUgdmlzaWJsZSBjdXJz
b3IgaXMgYWRkZWQgaW50bw0KPiArCSAqIGFmZmVjdGVkIHBsYW5lcyBldmVuIHdoZW4gY3Vyc29y
IGlzIG5vdCB1cGRhdGVkIGJ5IGl0c2VsZi4NCj4gKwkgKi8NCj4gKwlpbnRlbF9wc3IyX3NlbF9m
ZXRjaF9ldF9hbGlnbm1lbnQoc3RhdGUsIGNydGMpOw0KPiANCj4gIAlpbnRlbF9wc3IyX3NlbF9m
ZXRjaF9waXBlX2FsaWdubWVudChjcnRjX3N0YXRlKTsNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
