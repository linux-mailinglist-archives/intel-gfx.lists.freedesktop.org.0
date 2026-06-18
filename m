Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uNTODoPCM2qAFwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 12:03:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D569F131
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 12:03:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K7g+kCFQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB0A10F21A;
	Thu, 18 Jun 2026 10:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B8F10F217;
 Thu, 18 Jun 2026 10:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781777023; x=1813313023;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=74OdQSAw514xqcCgQg9IwwQlvp+VUDcmCD82kdZBL58=;
 b=K7g+kCFQtm23IPz0H9QmRUZlypsg5NtpIl7nWprCWrCXbPikRNeKjSow
 Ruyg/Mkk0BiQVdfKRCNQGad+XVf+gbjq6kZwSBYuk2cbnvSDkk1UmHz4P
 nGgVGXs4h4CTBQfGAGLvh7B5EX1soMIJLiTM7KMLeUXo266svIxSqdjli
 AOZy395ESSN0R9AN3KgSMxxgr98hgmKLPHE22HS5Ix3LE/74Ne/eJkPB3
 fMTBgGjUY/aIxGHUbURHthz3nUUY9fwKybc4uEq3vX0xiFuk2na6CcGcE
 h8xO0Ee65tzlF4gWVkmUD4uIrdhvT66wJpmF35irgbAxd+hpcgAyhX5fb A==;
X-CSE-ConnectionGUID: yPXzGAXaT4W7CVhqc09VmA==
X-CSE-MsgGUID: xnbsJg/tQY+MKAmp6jDpUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="93719886"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="93719886"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 03:03:43 -0700
X-CSE-ConnectionGUID: pbCwE0OwS6CiK8YUqx8e4w==
X-CSE-MsgGUID: us+AorLdR4WrRRxiv3p7CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="272020624"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 03:03:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 03:03:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 03:03:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 03:03:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fr7DlIMcYOIbAk6CRssNnpdgZAjdfhTU56EzAkX0XugNhmetP5DcLVEn8DmxzwOUJ1ypcrDqgGpFslTX48Y3YexHZVupbu9zbA9tPnuay2ePsMMx0mk57FLapdGnnK98W4N9rM/SWHC2moku15GrVMKMe8+zC1oKrz3tNLDlYlukA9O82p0LIZabnkmaA1lzBXKhKat8bmQdohj9zKKH9YovEhvgNcPBTteeeu2bsaecHulOnEBjJ1gqCvC4fXN81lHOnqZNd1MxRtlrAbyYmd+chHQcf6fHYFDNpNNZlHTDdWhGLOLonk+qVEiapJYuWKAGM/thFU+k1U+gxkH7CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74OdQSAw514xqcCgQg9IwwQlvp+VUDcmCD82kdZBL58=;
 b=p/pMeivtXQrzLkFfJJFzpMXyAbfbaT0xcaRPvilKolq6tYIHH5l7+A4EBHRyKPpBTNkH5gFdLZ7ol3N7D+gwjWB5m4S8ZIccV2f4rTCPjrUsstze9Pl6GCjh/XK3bv9hg4LDLLodSgyy7/CL58ojTby6OyOgf0kywaz2o2GuXjVx00KeGGkWfeRZQl+c9WazUGIyC5xtNt6ldz7Ov9LYrHQKooYjXrCmEIg22Y2xPjqFaEpOpks7fC56DWnc0dTpgG66rl0rcZOms4vr7yIVwgU0erxbV5Ov0Kbg5eLCRxGcEg7noz8vFBCs4SrRU5T/vKykU/dAc2aYQxnZnWWfWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5237.namprd11.prod.outlook.com (2603:10b6:208:310::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 10:03:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0139.009; Thu, 18 Jun 2026
 10:03:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/psr: Split intel_psr_short_pulse
Thread-Topic: [PATCH 1/3] drm/i915/psr: Split intel_psr_short_pulse
Thread-Index: AQHc+iz3IKa4+TvnnEWoJI4+PKHWy7ZEDHAAgAASpQA=
Date: Thu, 18 Jun 2026 10:03:32 +0000
Message-ID: <216ba3c53f80a96457a07ca2c86fa362a5c52fb9.camel@intel.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
 <20260612053249.246878-2-jouni.hogander@intel.com>
 <DS0PR11MB8049C2756485E0F2F20678CBF9E32@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB8049C2756485E0F2F20678CBF9E32@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5237:EE_
x-ms-office365-filtering-correlation-id: 65c9edf4-cd2f-47d6-a6b9-08decd20db06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|23010399003|1800799024|376014|366016|11063799006|4143699003|56012099006|6133799003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: WWZzx+cmRDkCr6VbGrRo5nSzLftfyrwmkVHuq+kE4ZCuphga/1ad237BjCQR6TNbb68sW3t9+0sZ77oipSqcmaIR2jIuKczYQJguPeTZAWA+2JXEiKaAL3Dvszi/gZQ+AcZE7trdXDyG1i0P5RMnKJlpQ1j1CS4quEr1t2vmEZjjWj4H4EpaDLuhXFQObN6lYlIHT9pwv5fpkuumO05OYFpFzcC0kbbjL5qa+CL1fYG7Z9D1X1Y4rQp7pOFfBqz8pZxtMzwbhI3wZSWlCAj//XTNCIZ0TlniYzqERYiNMJa4VAO7SSS4nzuXfhfEzElxE5DKhEMoR+vbXga1jK7CeeyQkNf5yKhPtETPW4N4ZHWYkVkEWh1DpHkKE4NA+DnlrITJT1F4rboK8Cz8yBSw8u1uADRl8vVvxWTxDSb/fs1ebYmkmOepAhGQwqfwjLyMRCE41BR9295l+QHTsGgO8bUhYsd+NMJLHxE485uj5DqGEjJgEMO2350j/UeDQJTFiSriweP+Sf0y6sUWUf6gCCZTa1xJZ/qYv76d+22QJ8YTrcHQcvzo8i0NC5GR46XAmAWREtumTKVY/uqSewwyQpxxvylnGBX8VwtnMwvEbOcyeSNH4lhNtIJPSz/zQBXzqBnVNP/V5OAm/CQUPhYbakl1AnkvaAHImticD8Jl8UNZZuq35iVWs2P++01MKNyksNXQv2ePmfyRwAYs56QXRcoj0GWzwL1wC2NWqoxwNN+RpPei5KWMgtGHJV+mu02w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(23010399003)(1800799024)(376014)(366016)(11063799006)(4143699003)(56012099006)(6133799003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZG94YmdWZ3RxQThBbGg3S2t3TGgvUk9lckZMb0prZUdUT3ZzVnVteU54N0FC?=
 =?utf-8?B?dUpXWEUvMmdiQ1UxWkthWWkxaHIvQkQ3MmFmcG1sYklSZjJjY2ZDcUpWVHNl?=
 =?utf-8?B?UkpPV2JCMHNKaUYyRTdROU9FN2hha0o0ZVBERFVQdW5ZeXJNT1FtL0J1Vkpy?=
 =?utf-8?B?MUFGbmRna2RCbEpObmxUaTFlNlorcjhNRmlkV3NBb3NoSElyaVMwOGpSU0FB?=
 =?utf-8?B?WWNkVEd4bUNTYWZZRDNId2h1M2F4VzZvNUlZczZ5ZW5sSU05dU82eHFkSHRy?=
 =?utf-8?B?TFYwTmlCTUlkSzYwRHlSOSsxcFBBY2Y3VytKb3AyQUc2cElZQlAvV0g0cGNJ?=
 =?utf-8?B?Zm9rcEt4dGlVciswUnZRNVJlL0RJTWwvOVd3N2RrS1NIKzhoWGxJRUNrWUR0?=
 =?utf-8?B?V2dOeFhRK2dpOTRTREE3T2IxcUllSXAvV01IcHRSWm1LOGQ1bXN3SHBmRk9h?=
 =?utf-8?B?T3BUZnJCbEJnS0lGT25Yb1VCdDI0eUxiMWN5YUdMaFc2TU5ZcTNqazR6aVZ5?=
 =?utf-8?B?aTFrL0tGM1pXeFU3MW1uMlRmUHFGRUpTejQ1UzlOcEJDUmdUTW9sZlkydGlj?=
 =?utf-8?B?Vm5hWGZWdlpvTDdQekkzUWhia01ZNDdQUkZTUXZCRHpUOFBOR0U0YjlTRThX?=
 =?utf-8?B?aU5sanphenJDdzBWZ0tRV1ZJcHNteGI2L1UvRk45UFUwWFJYdlNLMDFuQW9Y?=
 =?utf-8?B?U3RkbDhwQWkyLzhSODN5dFpOT25waDVKZHpQWDd3WkNyUDB1VWxRbWxXRFkv?=
 =?utf-8?B?bjNiRWRIU2RabHB5ZGRkYVNwQytBQWY3NW53UzNoYXZWSC9ZaXV2eUF0OGFG?=
 =?utf-8?B?RThleFJ5VkFMb21GSktxd0tLQWNKVi9nY3dqYjBTWXFGT2FtR0tuVzZIQno4?=
 =?utf-8?B?Y2E4S0dDaHZyN0RHdXd4QTBySURrMDlZVnpHODhrQXIzc3Z1Q3diaW5LRlk1?=
 =?utf-8?B?WlR3eVJJSWhGWGt4MEw0WHg0WElZYlN3bXJhSkRhY2MzajlGOUV0Y3pBdDBS?=
 =?utf-8?B?QjdUZEt4ellsdmZHV2FDQ3hEcmhRL1BmcHl6YTFSa0syNVU1VCtNRXU4cXVH?=
 =?utf-8?B?ejZLMW1IdnNJTjlJRm9HdlVvZ09YQU93SzluTzh2ak4wWDlJemZBWXNqd3JK?=
 =?utf-8?B?L3RRSW1oQkNFdUp3NnhtRkkvZGJZTjY2cG9oajU2WkV1ajFoeS9uc2s0SW9B?=
 =?utf-8?B?a2hGRlBnK2RZdGk3VUdHb0J1QUc5bDIyZXBGY3Ftd3RzR1cxejd2V3NkNUNu?=
 =?utf-8?B?ZzRqRklqY3lSZlNMTUFMcjJJWnFVM3BoOWw5TEozSkZyUzNrb1ZLWjdsY1NX?=
 =?utf-8?B?d21zUDBkRHE2LzdLRHhLYWg4cno3OWdyUHRHc1ZyOGJoamU4d0pMN0JYZzZ1?=
 =?utf-8?B?MVI3VEYrcGNlY1duc0JpWjN6anVnc1JlTHYzZXkxaEpVM3NVdVFQeGxnc3c4?=
 =?utf-8?B?MllEeksyZXZsMVR3YTRsNlUxSDBvRnlLcDFOSU8yamVLQWltY014REJpZm9P?=
 =?utf-8?B?YU5RVENaMHM0M1FBdzlYUklVOUlkNlFiUG5qeVEzRXY3dE5PYTZCQ1I2WVRy?=
 =?utf-8?B?MVZVZmYzekxnK1gzZzR2VVRxNVYzTUc2UFhyaUl3T1pWa0ZaYWxkSk1Qb3Ro?=
 =?utf-8?B?a0VpNVp3KzFTMCsvSlRTKzB2d0JhMURSdHNGVGc0WlZGbUU1cS9OQU5DeTlL?=
 =?utf-8?B?aDBGOVRSVWh4ZWw0ZGpubkd0TVZWU1RmOHh5UkJqaVZ0bmR5WDBKQ3REV2dh?=
 =?utf-8?B?bjR2L09iYmE5MFFJR0pQd2p4T1NFL3RnY2c3UUJienhRVWd1RFAyREJVTDYv?=
 =?utf-8?B?cld5Mmczc0ZyTUNWc1BmMitDRjhKc01kbkJUangrTlUxSmNzUEhtZnI5eDVo?=
 =?utf-8?B?YUVPZGtVd0tKTVFIL0dEMnc1S3JXbi9wR2ZGR0hGNElqSjhnTjNZMnlUWjZR?=
 =?utf-8?B?T3hab09LZGtzRld2MVhwbjRBZFUzUzVONlFhZHJCOCswZTN5QjdJNjlzdG5Z?=
 =?utf-8?B?SS9TMGpBQVdMSHR4ZWIyN0NGR0U2NEMrcUxnbnFSTS90VkxFbjJFQzcrNVpk?=
 =?utf-8?B?MHBWQmZZOXliYzBSelU5aFlKN3p5Zm1NdTJWL3NkM3BGemFnRlN1cTlZKzlS?=
 =?utf-8?B?RDQwS1BtK1RVcGVqeGt0YkJQbEhrd2w2bkNTOVNULzJPWFZaTTdjQjBJTnZs?=
 =?utf-8?B?a1ZrZG00RHB4ZHB1K0I5dWdoRU1RQ2tWK2VhdVkyY2pyT0ZSLzg0U0taY0FM?=
 =?utf-8?B?MmV4ZzI3U20xbXBkeDk2QTQyZSt5bkZKWFBXQjJFY3B4dFJLT3NNVFBKNlZm?=
 =?utf-8?B?RFVpZzlKRmxuZEhVSjNZZ3huRk16UXNFWEU3RlMxNVNyUnFSaHp3aEgxZGNO?=
 =?utf-8?Q?powAxSN8LreVTLhXA94sYqbiVwRUHfTyZV0qaxOXY2AUw?=
x-ms-exchange-antispam-messagedata-1: ETew8DlMLlHrtg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <D1CF49A3471AC542A0E717231FAE37E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NvBBnqkZPp+rEpV1NlTw0oJWCF61KNSe7VpULh7AFmaFFl29PC7FHjO8kBCiHT/pQ9dEO7Q+DUUSNf25ygmt4VcNLJSwGEBOompeBlZgGHFn/qz+bVT5enOakvR8uqOuTQWfn9fpmB+WJAzdeanghzpJuvrjvV2fRKqhrun0hNyCfYp9XQLHZEEL73oHpxkX+3Gy4xGvDhp/dA4Hb+Dti6t2pZF4J9hV4IZLxjISoZuclFlRccwE3TxZzI+oj6SIc1nVpSnS7vJn8fk3LwA3q2vK3uEJzBsBYSBDQhg0hXtubW3MIMiru9kQAElfNZtpPnnnuF5FwmdupzGngy9bBw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c9edf4-cd2f-47d6-a6b9-08decd20db06
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 10:03:33.0034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QShkg5XtBKC+4SPVlknH1js3DsQj9ck/o3zdeoTWmfLOSqmdnwcaUy1TMqIzrTEVIXvzIqvHO9Nkf6n9B4fqnpg+V5ZRL6IHWJQBEXpLDu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5237
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 841D569F131

T24gVGh1LCAyMDI2LTA2LTE4IGF0IDA4OjU2ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IEZyaWRheSwgSnVuZSAxMiwgMjAy
NiAxMTowMyBBTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRl
bC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIDEvM10gZHJtL2k5MTUv
cHNyOiBTcGxpdCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2UNCj4gPiANCj4gPiBXZSBhcmUgY3VycmVu
dGx5IGhhbmRsaW5nIFBhbmVsIFJlcGxheSBhbmQgUFNSIGJvdGggaW4NCj4gPiBpbnRlbF9wc3Jf
c2hvcnRfcHVsc2UuIEFzIG93biBsb2dpYyBmb3IgZXJyb3IgaGFuZGxpbmcgaXMgbmVlZGVkDQo+
ID4gZm9yIFBhbmVsDQo+ID4gUmVwbGF5IGxldCdzIHNwbGl0IGl0IG5vdy4gS2VlcCBmdW5jdGlv
bmFsaXR5IGFzIGl0IGlzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDk0ICsrKysrKysrKysrKysrKysrLS0tDQo+
ID4gLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDI4IGRlbGV0
aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gaW5kZXggZTEzODk4MmRjOTFmNi4uOTlkMzU3YmZkODRiNyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0zODk5
LDQ2ICszODk5LDY3IEBAIHN0YXRpYyB2b2lkDQo+ID4gcHNyX2NhcGFiaWxpdHlfY2hhbmdlZF9j
aGVjayhzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqAJfQ0KPiA+IMKgfQ0K
PiA+IA0KPiA+IC0vKg0KPiA+IC0gKiBPbiBjb21tb24gYml0czoNCj4gPiAtICogRFBfUFNSX1JG
Ql9TVE9SQUdFX0VSUk9SID09DQo+ID4gRFBfUEFORUxfUkVQTEFZX1JGQl9TVE9SQUdFX0VSUk9S
DQo+ID4gLSAqIERQX1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IgPT0NCj4gPiBEUF9Q
QU5FTF9SRVBMQVlfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SDQo+ID4gLSAqIERQX1BTUl9M
SU5LX0NSQ19FUlJPUiA9PSBEUF9QQU5FTF9SRVBMQVlfTElOS19DUkNfRVJST1INCj4gPiAtICog
dGhpcyBmdW5jdGlvbiBpcyByZWx5aW5nIG9uIFBTUiBkZWZpbml0aW9ucw0KPiA+IC0gKi8NCj4g
PiAtdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gPiArc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoAlzdHJ1Y3QgaW50
ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiAtCXU4IHN0YXR1cywgZXJyb3Jfc3Rh
dHVzOw0KPiA+IC0JY29uc3QgdTggZXJyb3JzID0gRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SIHwN
Cj4gPiAtCQkJwqAgRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUiB8DQo+ID4gLQkJ
CcKgIERQX1BTUl9MSU5LX0NSQ19FUlJPUjsNCj4gPiArCWludCByZXQ7DQo+ID4gKwl1OCBlcnJv
cl9zdGF0dXM7DQo+ID4gKwljb25zdCB1OCBlcnJvcnMgPSBEUF9QQU5FTF9SRVBMQVlfTElOS19D
UkNfRVJST1IgfA0KPiA+ICsJCQnCoCBEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1Ig
fA0KPiA+ICsNCj4gPiBEUF9QQU5FTF9SRVBMQVlfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9S
Ow0KPiA+IA0KPiA+IC0JaWYgKCFDQU5fUFNSKGludGVsX2RwKSAmJiAhQ0FOX1BBTkVMX1JFUExB
WShpbnRlbF9kcCkpDQo+ID4gKwlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkX2J5dGUoJmludGVsX2Rw
LT5hdXgsDQo+ID4gRFBfUEFORUxfUkVQTEFZX0VSUk9SX1NUQVRVUywNCj4gPiArCQkJCcKgwqDC
oCAmZXJyb3Jfc3RhdHVzKTsNCj4gPiArCWlmIChyZXQgPCAwKQ0KPiA+IMKgCQlyZXR1cm47DQo+
IA0KPiBBZGRpbmcgYSBkcm1fZXJyIHdpbGwgYmUgaGVscGZ1bCBpZiByZWFkIGZhaWxlZCBmb3Ig
c29tZSByZWFzb24gYW5kDQo+IHNpbWlsYXIgaXMgZG9uZSBmb3IgUFNSLg0KDQpUaGVyZSBpcyBh
bHJlYWR5IGVycm9yIG1lc3NhZ2UgZHJtX2RwX2RwY2RfcmVhZF9ieXRlIG9yIGZ1bmN0aW9ucyBp
dCBpcw0KY2FsbGluZy4gSSdtIG5vdCBjb252aW5jZWQgdGhpcyB3b3VsZCBoZWxwLg0KDQo+IA0K
PiA+IA0KPiA+IC0JbXV0ZXhfbG9jaygmcHNyLT5sb2NrKTsNCj4gPiArCWlmIChlcnJvcl9zdGF0
dXMgJiBlcnJvcnMpIHsNCj4gPiArCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHAp
Ow0KPiA+ICsJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiA+ICsJfQ0KPiA+IA0K
PiA+IC0JcHNyLT5saW5rX29rID0gZmFsc2U7DQo+ID4gKwlpZiAoZXJyb3Jfc3RhdHVzICYgRFBf
UEFORUxfUkVQTEFZX1JGQl9TVE9SQUdFX0VSUk9SKQ0KPiA+ICsJCWRybV9kYmdfa21zKGRpc3Bs
YXktPmRybSwNCj4gPiArCQkJwqDCoMKgICJQYW5lbCBSZXBsYXkgUkZCIHN0b3JhZ2UgZXJyb3Jc
biIpOw0KPiA+ICsJaWYgKGVycm9yX3N0YXR1cyAmDQo+ID4gRFBfUEFORUxfUkVQTEFZX1ZTQ19T
RFBfVU5DT1JSRUNUQUJMRV9FUlJPUikNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0s
DQo+ID4gKwkJCcKgwqDCoCAiUGFuZWwgUmVwbGF5IFZTQyBTRFAgdW5jb3JyZWN0YWJsZQ0KPiA+
IGVycm9yXG4iKTsNCj4gPiArCWlmIChlcnJvcl9zdGF0dXMgJiBEUF9QQU5FTF9SRVBMQVlfTElO
S19DUkNfRVJST1IpDQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnC
oMKgwqAgIlBhbmVsIFJlcGxheSBMaW5rIENSQyBlcnJvclxuIik7DQo+ID4gDQo+ID4gLQlpZiAo
IXBzci0+ZW5hYmxlZCkNCj4gPiAtCQlnb3RvIGV4aXQ7DQo+ID4gKwlpZiAoZXJyb3Jfc3RhdHVz
ICYgfmVycm9ycykNCj4gPiArCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCj4gPiArCQkJIlBBTkVM
X1JFUExBWV9FUlJPUl9TVEFUVVMgdW5oYW5kbGVkDQo+ID4gZXJyb3JzDQo+ID4gJXhcbiIsDQo+
ID4gKwkJCWVycm9yX3N0YXR1cyAmIH5lcnJvcnMpOw0KPiA+ICsNCj4gPiArCS8qIGNsZWFyIHN0
YXR1cyByZWdpc3RlciAqLw0KPiA+ICsJZHJtX2RwX2RwY2Rfd3JpdGVfYnl0ZSgmaW50ZWxfZHAt
PmF1eCwNCj4gPiBEUF9QQU5FTF9SRVBMQVlfRVJST1JfU1RBVFVTLA0KPiA+ICsJCQnCoMKgwqDC
oMKgwqAgZXJyb3Jfc3RhdHVzKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgX3Bz
cl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gKwlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRl
bF9kcCk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4g
PiArCXU4IHN0YXR1cywgZXJyb3Jfc3RhdHVzOw0KPiA+ICsJY29uc3QgdTggZXJyb3JzID0gRFBf
UFNSX1JGQl9TVE9SQUdFX0VSUk9SIHwNCj4gPiArCQkJwqAgRFBfUFNSX1ZTQ19TRFBfVU5DT1JS
RUNUQUJMRV9FUlJPUiB8DQo+ID4gKwkJCcKgIERQX1BTUl9MSU5LX0NSQ19FUlJPUjsNCj4gPiAN
Cj4gPiDCoAlpZiAocHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhpbnRlbF9kcCwgJnN0
YXR1cywNCj4gPiAmZXJyb3Jfc3RhdHVzKSkgew0KPiANCj4gcHNyX2dldF9zdGF0dXNfYW5kX2Vy
cm9yX3N0YXR1cygpIG5lZWQgc29tZSBjbGVhbnVwLCBwYW5lbCByZXBsYXkNCj4gcmVsYXRlZCBj
b2RlIGNhbiBiZSByZW1vdmVkLg0KDQpTaW5rIHN0YXR1cyBkZWJ1Z2ZzIGludGVyZmFjZSBzdGls
bCB1c2VzIGl0Lg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLg0KPiBB
bmltZXNoDQo+IMKgDQo+ID4gwqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiA+IMKgCQkJIkVy
cm9yIHJlYWRpbmcgUFNSIHN0YXR1cyBvciBlcnJvcg0KPiA+IHN0YXR1c1xuIik7DQo+ID4gLQkJ
Z290byBleGl0Ow0KPiA+ICsJCXJldHVybjsNCj4gPiDCoAl9DQo+ID4gDQo+ID4gLQlpZiAoKCFw
c3ItPnBhbmVsX3JlcGxheV9lbmFibGVkICYmIHN0YXR1cyA9PQ0KPiA+IERQX1BTUl9TSU5LX0lO
VEVSTkFMX0VSUk9SKSB8fA0KPiA+IC0JwqDCoMKgIChlcnJvcl9zdGF0dXMgJiBlcnJvcnMpKSB7
DQo+ID4gKwlpZiAoc3RhdHVzID09IERQX1BTUl9TSU5LX0lOVEVSTkFMX0VSUk9SIHx8IChlcnJv
cl9zdGF0dXMNCj4gPiAmDQo+ID4gZXJyb3JzKSkgew0KPiA+IMKgCQlpbnRlbF9wc3JfZGlzYWJs
ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+IMKgCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1
ZTsNCj4gPiDCoAl9DQo+ID4gDQo+ID4gLQlpZiAoIXBzci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQg
JiYgc3RhdHVzID09DQo+ID4gRFBfUFNSX1NJTktfSU5URVJOQUxfRVJST1IgJiYNCj4gPiAtCcKg
wqDCoCAhZXJyb3Jfc3RhdHVzKQ0KPiA+ICsJaWYgKHN0YXR1cyA9PSBEUF9QU1JfU0lOS19JTlRF
Uk5BTF9FUlJPUiAmJiAhZXJyb3Jfc3RhdHVzKQ0KPiA+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5
LT5kcm0sDQo+ID4gwqAJCQnCoMKgwqAgIlBTUiBzaW5rIGludGVybmFsIGVycm9yLCBkaXNhYmxp
bmcNCj4gPiBQU1JcbiIpOw0KPiA+IMKgCWlmIChlcnJvcl9zdGF0dXMgJiBEUF9QU1JfUkZCX1NU
T1JBR0VfRVJST1IpDQo+ID4gQEAgLTM5NTUsMTYgKzM5NzYsMzMgQEAgdm9pZCBpbnRlbF9wc3Jf
c2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCQlkcm1f
ZXJyKGRpc3BsYXktPmRybSwNCj4gPiDCoAkJCSJQU1JfRVJST1JfU1RBVFVTIHVuaGFuZGxlZCBl
cnJvcnMgJXhcbiIsDQo+ID4gwqAJCQllcnJvcl9zdGF0dXMgJiB+ZXJyb3JzKTsNCj4gPiArDQo+
ID4gwqAJLyogY2xlYXIgc3RhdHVzIHJlZ2lzdGVyICovDQo+ID4gLQlkcm1fZHBfZHBjZF93cml0
ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FUlJPUl9TVEFUVVMsDQo+ID4gZXJyb3Jfc3RhdHVz
KTsNCj4gPiArCWRybV9kcF9kcGNkX3dyaXRlX2J5dGUoJmludGVsX2RwLT5hdXgsDQo+ID4gRFBf
UFNSX0VSUk9SX1NUQVRVUywNCj4gPiBlcnJvcl9zdGF0dXMpOw0KPiA+IA0KPiA+IC0JaWYgKCFw
c3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ID4gLQkJcHNyX2FscG1fY2hlY2soaW50ZWxf
ZHApOw0KPiA+IC0JCXBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50ZWxfZHApOw0KPiA+
IC0JfQ0KPiA+ICsJcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOw0KPiA+ICsJcHNyX2NhcGFiaWxp
dHlfY2hhbmdlZF9jaGVjayhpbnRlbF9kcCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3ZvaWQgaW50
ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gK3sNCj4g
PiArCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHAp
KQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwltdXRleF9sb2NrKCZpbnRlbF9kcC0+cHNy
LmxvY2spOw0KPiA+ICsNCj4gPiArCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiA+ICsJ
CWdvdG8gZXhpdDsNCj4gPiArDQo+ID4gKwlpbnRlbF9kcC0+cHNyLmxpbmtfb2sgPSBmYWxzZTsN
Cj4gPiArDQo+ID4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4g
PiArCQlfcGFuZWxfcmVwbGF5X3Nob3J0X3B1bHNlKGludGVsX2RwKTsNCj4gPiArCWVsc2UNCj4g
PiArCQlfcHNyX3Nob3J0X3B1bHNlKGludGVsX2RwKTsNCj4gPiANCj4gPiDCoGV4aXQ6DQo+ID4g
LQltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gKwltdXRleF91bmxvY2soJmludGVsX2Rw
LT5wc3IubG9jayk7DQo+ID4gwqB9DQo+ID4gDQo+ID4gwqBib29sIGludGVsX3Bzcl9lbmFibGVk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoNCg==
