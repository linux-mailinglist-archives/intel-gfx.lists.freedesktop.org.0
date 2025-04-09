Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C8CA820B2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 11:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EA5410E812;
	Wed,  9 Apr 2025 09:07:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W2o1luGr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B9510E1A5;
 Wed,  9 Apr 2025 09:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744189629; x=1775725629;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IUYcL0XImeP0BtMPu6HSBC+6WlJLXPQp90RVUZzN714=;
 b=W2o1luGriUw/asLML7NY38PqskcMqbYYoE5SHbxNa2WtRfY6J0a9lwyM
 zLZ5QDUmKDRPmh5mrtNI2CSQV67zslhZ/1y46K3XQwd1yhY96clHtfbjr
 Utq/8elcyRtIdjtFAyvIf073B/u9kAuBKTjylL/u9j0KTBRAKGiG35i6T
 wC2kt/6sEB+3MGkLjsaJ01xzNfcJZYKIxXzc3x2sIh00UlXaL/D34hwNq
 LXLCCZEN9w/4txZDbvlTfG+1eQZ07uDToa1J7FQ7Zv/x5vqJfRuGGJ53A
 GFii851WXRuqJ/GJGuZSmdPpGZujF1LvjoU2IEXBJKlXVtaLxoqviaImm w==;
X-CSE-ConnectionGUID: 3S+1KAfpS/6Nz8ibgWhq2g==
X-CSE-MsgGUID: zBJJBH/ZThS80zEwPr9KSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44898894"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="44898894"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:07:09 -0700
X-CSE-ConnectionGUID: XzT+O7vhQNyBlxvPbNKeSw==
X-CSE-MsgGUID: g4ekscWVS1OA7B1IjDiNPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128868751"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:07:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 02:07:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 02:07:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 02:07:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gh+kkKjs2eb+E+auyWX30r7RQouCItDdyKnjw84ugWhottcGzrWFCcEWtAn/DYbcWB9kUt1oi+AMXWarWcqP38R7uz/2yH8ZM4aWaWpxcIUngC+YCWnCBGErft1232lyuekAYQp8FHmlkopMqgByl+JeM7pEeYgQ93/QeezOH60zkgUH/2gVsf8g2NvW0/HHOtD57ra42BIws75yRhUqTZ65ml4xeM0BD2w9b1/l982ma3292m8CNa8Bv+O5gPfG9OmQPO3Gqwl1nCy4P8J9dwe+2Apa4KtmqiPg1N6grWtcccNJXqA7Hqw2xELN0FCE8hSmH9Lc2m3srVtoDIugtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUYcL0XImeP0BtMPu6HSBC+6WlJLXPQp90RVUZzN714=;
 b=XvqnKNh/PP6Il0HoDV+LwskyvvM5633UnP8UOk5QPGQ9PLLwDjs4/SkQy8AD9bTkAyAXp0cVPK69WUrql5VpkCUkZ/mqOoNI6SucEM8jWllksjLCp0C3ZCUoFM9rx+PiVjHoQI59mYsnuh3LlqKFrdBbIflIC+T3GBK05gwtsFIvayNCHmgE2m6IQ/f9zdYmcdj2o4oAo2Febzsxe2neHm3vMFbpQDsZt+0RTeUwaMA1p2WZhBg1zGfvKjI40GyygaxFSoplTkVkPl+n1j16a4je71w0afrzwukoaXfHcPw0R9xrcAuDngjb14XHHvmN+/B2ezGOL/7LpHm7ikdKyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7910.namprd11.prod.outlook.com (2603:10b6:208:40d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.33; Wed, 9 Apr 2025 09:07:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 09:07:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for
 MTL onwards
Thread-Topic: [PATCH v2] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for
 MTL onwards
Thread-Index: AQHbqRMuO0KaGgaecE+R3KOCCW6qErOa+OOAgAASfAA=
Date: Wed, 9 Apr 2025 09:07:06 +0000
Message-ID: <06cef6d6936ba7a4a2504038db3fa96fd7f27167.camel@intel.com>
References: <20250409054909.968531-1-jouni.hogander@intel.com>
 <08dfcf42-b58a-48b1-a602-de2a6f783d18@intel.com>
In-Reply-To: <08dfcf42-b58a-48b1-a602-de2a6f783d18@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7910:EE_
x-ms-office365-filtering-correlation-id: 4c94197b-007a-451c-6000-08dd7745e69d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K21NRVFlV3dGQWxlUG9RZThuNUo2dUgyY3c5Y0xKUnNUemVRdEdJWHo2amow?=
 =?utf-8?B?cDYraE5QRGpjTGF3dzdNQktJK3BvNTN4c0x1bjY1aVYzejF3eGlSbHNpOWV4?=
 =?utf-8?B?WnN3Rk9tbWhCY3pPTnZ2QXNZSTRQMzE5VWp4Uy84ZzAwZ1ltWnF5R1JHcEt4?=
 =?utf-8?B?S3hUMmdzVnJaUFJXWTc2cmcvY3gzZjNabjhTeCtmdk55dHR4eklwZmlGb1dJ?=
 =?utf-8?B?bFYwUUs5Vld3K1NKTlJjcm0wZ2RiTThBSkE3RFQySE5pY3Vxc1FEcEs1RHdY?=
 =?utf-8?B?NkZDS3FvV2Y1MFVZNHFJSnhJMjVSTGFXbTZzUWRyay9sRkdJeUV2L0txWnNI?=
 =?utf-8?B?VDBMckt2YnhNaHgvTmJBM3Y5OGtCQlUwVGppRzZ3RHNlNFBicTZXN2krV25m?=
 =?utf-8?B?eHZsTGFKMGJHS1RsckNjWGMxUjBOdU9BSzI5T0g1UUxWbStUZm9yL0NYTUpy?=
 =?utf-8?B?STBUWEpsbExxQmRseUNCWFJxZi9MWmxNTHpGZDh6WTF5SHhRT3dFenovY0xX?=
 =?utf-8?B?Q3RaMGY1dSsrNlJsOTlBOVhrRDFCM3pKM2h5b296b2ZOQmhyUGNBczVRRGZv?=
 =?utf-8?B?WWpWd2Y0cnZJam1aWCtYbXR5eklkRFdGUGVUVENNT0dPQ2R4RG81V0V1aUJZ?=
 =?utf-8?B?OWpLM3o4Ym9FT3YxNW1xQkRQc3FwNDZtaFFVQyt2aC9IQzNoOTk2eFNtemtq?=
 =?utf-8?B?MVVQY1FHWWtmVHdvc0QxdjZVR3o4c21DbUJCYWdWSHpsK2NWRWtHSXNxMERV?=
 =?utf-8?B?ME5Hek9INjNldkd1aEVYd3RBZU9kalR5b3Q4NEZDdDlGWDhTeGJxc2VsSjkx?=
 =?utf-8?B?cEFBUVJKdWxSMlVmZXY4aGdXNk1OSjdzS0hZMUhmVklWa2xnb2ZBNDM5WGd5?=
 =?utf-8?B?SVJWeXF2THhZdEpoQkN6QUlXaVZCOVVIYXJHVEZLUXpUaWErOE5MME1iYy9R?=
 =?utf-8?B?c3pNYXFVdnVUSG0vN1luY1pxdUZ0NDhOL3lYeUhEOE96UGpMVzdWbmQvMzF1?=
 =?utf-8?B?NHYxK0piUG8rcityUHc2TEhrbWlQc0hxcjhlemxMY1gyTGl2dzhCM3ZSc1Fu?=
 =?utf-8?B?NG1zWWVVSmw2dGx5VUlNbW9qN3Y0WTJ5bTZLTFErVGtlWTJHZExKbG9rbHBT?=
 =?utf-8?B?b3J6ekYyQ1VPSFlwR0taTUVxR0QzOHVYdEhQaWRGVUNXamJiZWlMQ0RuVndq?=
 =?utf-8?B?c3U5VWFPRU9sU3lEMTB3bHJvYWZJcHFGZ3ZoSERkUy85NGJIRzU0blZ2SVQr?=
 =?utf-8?B?Lzhzckl2S2NGOW9rdnZnOW1CZXp3anpDczlIUGVWZ1ZZUXc5N3QzZEZ0UnZy?=
 =?utf-8?B?REgyVVNRUUFnZk1aWDFMR3JOb1h6VFhHME05dVN1SHV5eS9oN2ZKWlJmMUpH?=
 =?utf-8?B?ekVuT0s3a1lOOWpvaEgzVTdHRWkvZHpJZFBZaGh0VFRiaHU5RUs2U0RvM3pp?=
 =?utf-8?B?SmJNamtXYWZ6SjdjZTJlaC9SQUprOTR3T0lid2E0am0rYVB4YkhEV21MeG9I?=
 =?utf-8?B?QytTaTZ1ejNmM0NHcHJjT2FvWlI0TDZ0d0F3bkpIM0VVSmpEN1pSc1ZkdytL?=
 =?utf-8?B?OTVmR3k0OHNGUGZoK2w2bHdZdWdFb21NWjNwWmhpc3djYzlURVRab3JJNU1a?=
 =?utf-8?B?NlN1SjNlYW1RRXJNdlMyMTRNN3NUWnIwQUtNWjhoanoveWpSdk5mYllCcTBy?=
 =?utf-8?B?d0l5TmtITTJVa1JzNkppWC95NEs4dHNGY0dKRmhuMHFsbG5PbEV5T2RZNTZn?=
 =?utf-8?B?bjBURE5JeXpySWZYN21FY2tyWkY0ZXgvNlB6SWdGTXduNWY5Wk5kRGxaN0ov?=
 =?utf-8?B?UVM4Q2t2OXFhbzhBVUVCNE0zUU53MklqWHRBR0VCczZ5M1BFckNjK0JsMDlH?=
 =?utf-8?B?WUhPZE9jdUgyRjRtZHFQVWtZUmMxM3hXTisrMm9aZWtqVXUvaWxCeEtTVEJk?=
 =?utf-8?B?Z3cyakZoaG8xNjluOWM0NzloUVlQYVAzeElPc2t1ajl4dzdEanc3NzVUWFdy?=
 =?utf-8?Q?7lVKIA5Q08DUAQHI0MzNNAZxRWwn8Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1d3SjVaRWh4SG9DblMvRWZWNFgwZzZ2U2dScXJ3NmlCVW5xMWJqeFdkbHpG?=
 =?utf-8?B?d1g1VmUxbDR4T0NWRFJWbUtHY1AvekVra1NkMnF0cGpNbW9ydG00bmt3cWpI?=
 =?utf-8?B?dHQweWxMbzBRZHVUUHUvUHh0Q05uWnhIWU95NlJ3bm9mekgyOGxkN3BJeEZi?=
 =?utf-8?B?K1FZNUdpb0J2b2JraGYyUzMzRWVtYmdPTVkvSlR1dklvREdNMUkxcDZpeHdz?=
 =?utf-8?B?eitFaVVTc29wbDhFWkh4clpvZTdOTUZzVXN2TlFGYmY4bUVXOXpzL0pVTWN6?=
 =?utf-8?B?YUFkNisvWlZxZXNXTGtPSmc3Z1pMNHdTVWdnQkpCb25YMnFiRmhSRUdVYVF4?=
 =?utf-8?B?UkNJZFF6VVFGT0tLSFNPOTZWeTh2S0hWdFd2eWV0SGlBVzlIL2l2cnJmWjVo?=
 =?utf-8?B?TEdVa01SWVBlKzhzQ0J3eUg5M2xwNlhTcWdmbGp6b1Q1d3d5MThlVXJBM0pX?=
 =?utf-8?B?SmcwZTVQeS8vSURMMytrc24yWGhPRElyd3p5bEo2VmRrSGZ4S2VyYXZ2c3pE?=
 =?utf-8?B?UEtnWUwzdUMzWElHczdLdUE4SzJVa002eUdJZDE0NmRBQXhXZTZwbzBQaW1x?=
 =?utf-8?B?OUliZ0c0VlRvNEFicG5YcVBVMm5pcUs0azRDRm5KUzNCallxTzdqVTltaFUx?=
 =?utf-8?B?ZlROSmZGVlNxN0ZJNkJMU0krMmVTTElJVWc3bkNSZGxMVVBrd2xQdCtZZkZw?=
 =?utf-8?B?cnBnRW0yWWFaME9Da24rSWRZME4rOUtkeXZDT3plZkM5N1hZMlF2ZzYvUHg1?=
 =?utf-8?B?aFo0R1ZkZUhhV2IwQTkrUWl6ODJNNFpobGZ3YXFaWXd6U2tZWlF3aE5JSEpI?=
 =?utf-8?B?M2szWGUvenhFcU5OSVZIcDlkc1o5SzNYQVdoci92QW5uRit0MTNLUk1Rcm1Y?=
 =?utf-8?B?Und1OVlCeUhYWTlSVFhRRnlaRFUwZGRxYyswUzl0SjhFWjJPQ2p6VVByUzY2?=
 =?utf-8?B?WnZxelBOazd3U3lyUkNUZ3lVSWYxaFhHRzVaM0s1Zy9mREpCOHhtS2NQVXFO?=
 =?utf-8?B?ZndLU1cxNy93VEFWdDZMT1MyNFFDb1ZwdHp4S01SZmZaY200czRJWm9pMkVJ?=
 =?utf-8?B?NE1ZeFhaWEc4NnpEQ3l4OTN6emdaV05VSFM1SVRURC9Dei9lcWxGT1JVaTFW?=
 =?utf-8?B?YTNHUEFDSFNDY21xYU9pazJVdm9pRjVBbTllZ2hmY1NXWE80TCt2VXhncVl0?=
 =?utf-8?B?T3NmUWZMRENUUVB5T2o3OXZRMG53anRSY0c0MnpvQVdEVm9WYjhST0lOVDdo?=
 =?utf-8?B?YTFmODdCaDUyNGNLVWE5Qm9Fc0xmZkFrUEkvYmIzYVZTN05GZGxHTEwvS2VJ?=
 =?utf-8?B?VkZnT0tKS2FHdW5hNkVPTjcvZDA5alBRd2w3Qm1ZM1U2WWNSNjBSS0daMlJz?=
 =?utf-8?B?aUxsbU5ERklLQlZTb2ZJaGRsTFF6dTk1cDFpNG94WWxrMkZ0Mkd2TjFuMVpm?=
 =?utf-8?B?SDZ6WXRWbkpLWE40UE53OWZOZEVaRURyTkVWT3lqTzE2Y2QxTjBWSjJkNmdr?=
 =?utf-8?B?eWd6clZyVHlNaUIza1FoSUNmZ21HQ3VwU2NNaUwrVHFvMy8wN2VOSEJST0JB?=
 =?utf-8?B?OURqN3dkbHhQTkVjaVltcHllOC9lM01EVTJMYW0rNzB2TXh0R3RhOEE2alFk?=
 =?utf-8?B?d3g4NGZ3NDBtN2p4SVl1N1NOMFZkZHpTakZtZUtMM2tBek45TzVXblk1VGdZ?=
 =?utf-8?B?YzlDRmRKZE1CcHZud2xMOVcvL1ZpV0pWamdZMjRwTUNHQnhDWWJrUWNlR0hp?=
 =?utf-8?B?RGIzZU0rNTRBSlZTcFZ4Wm15aG5UZHlHTlFmeDFjK1UvN2J6NnlLSEp4QUU0?=
 =?utf-8?B?ZnJzeXRpc2J3U3F5YzVNcnFkRURMYWxLZDJOeTlvSm9OYnhPcTk0QS9UZmsv?=
 =?utf-8?B?aTV6UEhsREh0SUd6NHRicWVOWjFMRW1xdDdMaTZmNlo4WHpoQ1g3V2YwMHFp?=
 =?utf-8?B?RnIwazlCcTlta1VQNGRTRTF6MnlHNHpucTJBOUR4WG9sbUhIY2UydjhaZDNV?=
 =?utf-8?B?ZlJXSmdIRTZnOTNOSXpGMktPZDh4MGdVM3ZpMks5RHM1cGdwcFJBOGlvMmxK?=
 =?utf-8?B?K0JyQ2VZNlNJS1Q0WERFMWZ1UWZQRmJXbHBOOWIzaWNjaDdxUWs4TTV3TkZY?=
 =?utf-8?B?WU5YQ3pwTEtmMGwxTjFFN0l5RXM0MlJaTjdjSnE4dGxld0pGUkJhaExPSWpP?=
 =?utf-8?B?LzIwUnBtUGZEWGtaOVo0aW5nYjZ4M2RLUmt6enZXU3IwMjlibXlxZ2VsOE1H?=
 =?utf-8?B?ay93TENzeUJwYTlTTjV5NWt4bTZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03A3982A948AA2448F9DDA047723348C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c94197b-007a-451c-6000-08dd7745e69d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 09:07:06.1820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U/pwKyCi+AZWSX7urVyS7Dg7/7vnBlY/rUgAmAKYjB9jJqZu9ckXGtTiTuLVATCqvQQ8o8oNFHAC326NMXKgydFsM8VvvG3O8BPgCErxCks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7910
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

T24gV2VkLCAyMDI1LTA0LTA5IGF0IDEzOjMwICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDQvOS8yMDI1IDExOjE5IEFNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gQWNjb3JkaW5nIHRvIEJzcGVjIFZSUl9DVExfSUdOX01BWF9TSElGVCBkb2Vzbid0IGV4aXN0
IGZvciBNVEwgYW5kDQo+ID4gb253YXJkcy4gT24gTHVuYXJMYWtlIGFuZCBvbndhcmRzIEJpdCAz
MCBpcyAiTWFzayBCbG9jayBQa2dDIg0KPiA+IGluc3RlYWQuIFN0b3ANCj4gPiB3cml0aW5nIHRo
ZSBiaXQgZm9yIE1ldGVvckxha2UgYW5kIG9ud2FyZHMNCj4gPiANCj4gPiB2MjogIklnbm9yZSBN
YXggU2hpZnQiIGJpdCBkb2Vzbid0IGV4aXN0IG9uIE1ldGVvckxha2UgZWl0aGVyDQo+ID4gDQo+
ID4gQnNwZWM6IDY4OTI1DQo+IA0KPiBQZXJoYXBzIHlvdSBjYW4gYWRkIDUwNTA4IG9yIDcxOTU2
IGZvciBNVEwuDQoNCk9rLCBJIHdpbGwgYWRkIGJlZm9yZSBwdXNoaW5nLg0KDQo+IA0KPiBSZXZp
ZXdlZC1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiAN
Cj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92cnIuYyB8IDUgKysrKy0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBpbmRleCA2MzNhNjZmNmI3M2IuLmM2NTY1YmFmODE1YSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+
IEBAIC00NDQsNyArNDQ0LDEwIEBAIHN0YXRpYyB1MzIgdHJhbnNfdnJyX2N0bChjb25zdCBzdHJ1
Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgIHsNCj4gPiDCoMKg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGNy
dGNfc3RhdGUpOw0KPiA+IMKgIA0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEz
KQ0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiA+ICsJCXJldHVybiBW
UlJfQ1RMX0ZMSVBfTElORV9FTiB8DQo+ID4gKwkJCVhFTFBEX1ZSUl9DVExfVlJSX0dVQVJEQkFO
RChjcnRjX3N0YXRlLQ0KPiA+ID52cnIuZ3VhcmRiYW5kKTsNCj4gPiArCWVsc2UgaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDEzKQ0KPiA+IMKgwqAJCXJldHVybiBWUlJfQ1RMX0lHTl9NQVhf
U0hJRlQgfA0KPiA+IFZSUl9DVExfRkxJUF9MSU5FX0VOIHwNCj4gPiDCoMKgCQkJWEVMUERfVlJS
X0NUTF9WUlJfR1VBUkRCQU5EKGNydGNfc3RhdGUtDQo+ID4gPnZyci5ndWFyZGJhbmQpOw0KPiA+
IMKgwqAJZWxzZQ0KDQo=
