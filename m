Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C85D3C3D4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 10:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3535F10E591;
	Tue, 20 Jan 2026 09:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhQVI3Wv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2917110E596;
 Tue, 20 Jan 2026 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768902005; x=1800438005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IO1x8uK/oUnIsotMfzOuTif3nmTqeuSxCuvqhOuNSy4=;
 b=BhQVI3WvlT1FXRXUdXRYfX6kYIHaEzGoadhGwMXZGgmI5d/wG9j4czig
 /Tw5KFuccESNjJ81wYDRhwGTD/2GiFXkIdi5U2M9WzY2mjIMUfSczN4N1
 ZqONWLByRhYi/6Qavq6Zdu8i658cdEOd3t81U4O9GPRiAU/ebRTHRwRvo
 V94rS1aibi3KRMtLySNP0b1GiRnF4D+UgqL/MxnPoKdzANLGvL8WJyYGV
 TZ4oAKGDIdxUWkXLEWBzufsep00upENimtFLH4vouZSwUTPhfTx3ZnTzg
 D3SglSsnGA6HKxephK+p4oAwZQuRc9Tzxpcn9PRhfzdk/0gJSXbgd9YEP w==;
X-CSE-ConnectionGUID: YOQ9odXuSIuEsgLBAyCGMA==
X-CSE-MsgGUID: s3K7FF7rSMm+zangg5BTQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70160357"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70160357"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:40:05 -0800
X-CSE-ConnectionGUID: T2mauhAdQtGtG9NpaDfojg==
X-CSE-MsgGUID: HWt10MMAQ96voTNRkxea7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="206498944"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 01:40:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 01:40:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 01:40:04 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.69) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 01:40:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xgvx+TurW4/MJXsnP9ik8OCZtJODH+7xyce5EoZ+OidXKLLbvdyBXeHWXDV4QQmIut9j19NeXEiTiJ8ujsLsUeY17MSGYIa7/dG3J1UZv678zl9hD2oKdEN63EzfVr1SQAipmOytizLo3vLt258zU+fuUNfXzYlpQha2x7T76pn92OO4GyKkNB0Abs/PnS5S+5RGVoUF4vkRnHZ20fOSvkxVcgZSB6l+nSAGq1dPSLA3rGo61E39up/mESrg0mLUPrhp0+2HHuD1+WcKd3pP55nJVg3OvueCJEyejoV/5cn4itUHrYbzHj7wT3ypIrX55DB9jt4XB6fSrk7nzLm1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IO1x8uK/oUnIsotMfzOuTif3nmTqeuSxCuvqhOuNSy4=;
 b=lk6aNTmYK70s0Ns8iuRAwkSA8sMFo633+5BqUH9rb3dp4I8C9Ke8Tbrf8uJQza3usSZeixxDeEydrlh0HTYKz9cWkUMwVc2Y454FdVYJVbRwmFgspzeUQiYz2EF8Hlmmrsnqo8kSJljDzoZc7hWFSW7zjtEnhM6IIkhNqHhrmHJ+pJjAuaUp+AfKlroz5GuoX1kKs8VEQcxOSSogc7BuHyoenvPcjKwZJVicN5cxGInVBumgflVXKF/q6QOngxp4UYgOEufrUQLi03S68FUc4Nxgi70VYvrpeRoPLWcSPeHI1KReS6t5wmgGAZMYGzSTvh/mldinrOeVj63fEdeAyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CH8PR11MB9481.namprd11.prod.outlook.com
 (2603:10b6:610:2bb::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 09:39:57 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 09:39:57 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Thread-Topic: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Thread-Index: AQHchfO5QDCLXrkU3EmdGCdu0HfktLVUU6aAgAaBjxA=
Date: Tue, 20 Jan 2026 09:39:57 +0000
Message-ID: <DS4PPF69154114FDAD055E2F5A7F15FF4EAEF89A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
 <DM3PPF208195D8D01D2E895A42C64591FEFE38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D01D2E895A42C64591FEFE38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CH8PR11MB9481:EE_
x-ms-office365-filtering-correlation-id: 47255b73-d9d2-405b-0db2-08de5807dfba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?a3plS3JWWStSeTc1Z0VndlEvSStXR3BoNHczSmpLVldhVTdZVU14djBJdEVO?=
 =?utf-8?B?NkwxR1pYbXN4cEQ3WUlIbEZwaUc5YkUwQk9IN1ZEaTllRnRmTkVCbEJpSDB4?=
 =?utf-8?B?ZU9MUThjTWlidjdqUkV5RXIrSXR0MlRkNkZFMFR6UmxTZk5pR0gzc0llMXB5?=
 =?utf-8?B?ZEV2SjNmZGNEcU0zZkVVdWgyNHliTmNsUFUvZFlHY2xOQ1dJeDh1NWhuQ3Iw?=
 =?utf-8?B?OE9KaFF4VzF0RVg2b1NiUmhwL3ZxcDlBNVUwcTdqZ2IxMEVpVktZMkw2RGVj?=
 =?utf-8?B?bW1FTzRWc3M5MGZLODNaY1pXT1JDa0NPeUQySU5lQmFEdm44M09kMlVXSk9X?=
 =?utf-8?B?c0tQVllubWZCbGFxSXRvZ1ZOeGgyVkx5enNIeUFFTHBQZm5jZk91cVlXQUhz?=
 =?utf-8?B?cW5YVC9oMFhPT08xSm03VU5jWlJiY2JEVnk0VzZrV1VzcW0wQjk0OUtuYW1F?=
 =?utf-8?B?MWU5NEdxSlpIVDZiQ3RCVmZuTVZtNEVDS2hybzB3c0NVTXI4YWFmREg5dldJ?=
 =?utf-8?B?STAzU3FZU0JrQUFZWWJsait4bHlNWjhKMXRGWkdKMTF2V1hzTUM3S2ZzOFlX?=
 =?utf-8?B?WlFhWDg4Q2JUUVp4VUF1M3lvVTBLaTFUUDVBK1ZqV2dQNTZVQTlEV0JaaDRQ?=
 =?utf-8?B?TEhWaGMwMkVGbGZQZ0gwekJlai9tWmNnQWJjTDhBM2pVMk03K2M4ZjFwdlZT?=
 =?utf-8?B?YndTZ0Nrc0dJOCtScjFlaVFSaHlNcTdMbDBmcllBVFQ5U1d2elhCbDduMDdk?=
 =?utf-8?B?bnNvNm55d0lpMWFXeC9mQnpqQTEzNnZVdnFESVlDb0x1MzRySnUvaFhKcXpP?=
 =?utf-8?B?ZW5sN3JEQTZLLzVUYVplcjRpSWhmc0s5YmJQWjd2b1dpeGpOeHpDQlhDOW5Z?=
 =?utf-8?B?K01TWmloVkZKdncwSXEyTU82ZGsxd0NNc1lGNHUvUVI2MThScVZxT0xFYXVH?=
 =?utf-8?B?R0pWZkhRbTRWNytqekppbFVlNWxoRWdhdFIrQk0wYzZFNnZyZFdvYTNjYjdu?=
 =?utf-8?B?NlRQeFpIa1NLMzZJcldLTk5IZ01SUXJVRGZYb2kvaWlvdDRqM3o4SzRQZVZF?=
 =?utf-8?B?bm9LcC9Ramg5Yks0NDRXck9NNHVSVXMwbUdiblpYMWJ6U0ZnU21tdFA5eitI?=
 =?utf-8?B?RzhMYm1jaG80MUFya0dieFVSVVpCdEhIUTFUMlltMlhESVRMclFkL2RxZ2xG?=
 =?utf-8?B?c0xURG9nbTY0Y1V6ZnI1anNNVlhBcmZHV2RWRW85RWJCWC9keHZNK1BQSVFY?=
 =?utf-8?B?eitDbmZJbXVDZlQvbUxXUXVhQjJUMStXMXFMMlJzUVhuc2R1YUN5dmU5QkZO?=
 =?utf-8?B?QW5oTzYzdHVvUU8vRERLQ3IyUlVQZVdlVVlqZ2dJeTJXWTd3SXpkK0UvTWJh?=
 =?utf-8?B?bVl2M0Y1TUJKeFQ5Ry9hR3ptRHhHWGNmakdVSHJ6MkJrVXg5RHlMa1l1cTE5?=
 =?utf-8?B?YUsvcDVtWGJTQjQ0OVZoM1ptcEdYREJBWkF2UlltT244bHlhTk9jUlpQWVR4?=
 =?utf-8?B?aXB5bnNMNXp2L3UyQmswWS83V0g4UjFjb3MxMnhBQ1VoQXZIbWNpVWVUMnpX?=
 =?utf-8?B?MFJydmg1WnVma0o0UXVDeVA0R3lBWUhKRDVaK0lSUFBxZkwzN25naHVyajVy?=
 =?utf-8?B?bXRaaU5wblBJbTZERjN0WXVGeEtabm0rbk4rcU9GMFJPQ25nWGtpcm43ODdV?=
 =?utf-8?B?cVkxZkFwMFZ4NFJkSW1VbnAvWjdVOUQzckRjSmo2VERWWVpMcUxjMW5yTHVa?=
 =?utf-8?B?VUVDL2VueEY0SDIwbXIrYzczbWM1WkozMm03bnZvQlpHMXRyRWVDSlJaRmtQ?=
 =?utf-8?B?RTN1VXFwdjN0SzJIQnVWOEozN1gyYzFGVEZLQWx1WE5rRmpoNUpQa3FMSWMw?=
 =?utf-8?B?aC9zbmhheHVLWFZia1Rvb2p2VFBtQTJrdmJRS3RHM25TVWg5OXJvMVR5aUYx?=
 =?utf-8?B?QVlwdStiSWhRaUJOaDFLMVlvalBzM1Q0aGgrVUdITkF2akRSQnlYWHBXcXgv?=
 =?utf-8?B?OXNGY3dzN0c0R0ZKNytzalF2OXdnTldnQ0xzbU5JUXY4Z0t2VnlweHg4SG1T?=
 =?utf-8?B?R1JpNWdkRm0wSUhFS2hMSnlTSFcydExQRFBXWWxXdEFKS3UwVEZyUnZ4L0M5?=
 =?utf-8?B?M3J2ZkR4dzR4bjBrd1hpYXVoTHlGU2dRb3BBN3FUcVowMTJsUlRaL1ZoYlo0?=
 =?utf-8?Q?JeokueNdHosKRoEYIr8GFw4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THNqdjRzclEvL0FVbWErbjAyVzJ1TzczQnhjQlhubVVjQWFlVWovTWhXZ2N3?=
 =?utf-8?B?WGNFendINHJuRFZ5cE9QVE8yOGlvY1pvOFg5N09hbHhCeGNPU3RxV3M3WnU4?=
 =?utf-8?B?bk40Mk0rQlRwd0M3aFdiSjNnOEJwRUJHVC9BWXFzdGszUlZYU2E1MW84alFx?=
 =?utf-8?B?MFlDNGNkM3RmQnkzL056YjVpLzdUWVJBRm85VXQ1dUI3dXdkbnN3NS9ralFQ?=
 =?utf-8?B?T2xEWUk3ckEvQXJQcG9mMjBJeFlHUlZCYU43TitBMUdHZmorSDl6cUh5M1FU?=
 =?utf-8?B?N2p1dTRqY2VRNVVPYWRHMXo0TkJZYi9XMS96VzZPVnByakw3V0RNY2ZvSGE3?=
 =?utf-8?B?UnVveS90RXd6SWxDdldWVzlYeGo2YjNQdDRRNzcxT01sLzBzYU1rcHdjc3pW?=
 =?utf-8?B?aWk1Ym04RHdsQ1lvbzZBREpLOU5SV0NKOG1iV3czYitsd1g2bmYrbkMvMFh6?=
 =?utf-8?B?cllmUlQvQ0hVNVV4UVM4NjhpbTZWVW1NZVRkVjYvMUtSZE8vd2VJTWYvaWlD?=
 =?utf-8?B?dWZZeU9mWW1JZ1ZrYi9iNVF6NmZSc3FiWFdMMmQ2MDJBSGh6M0NZcmhCczNv?=
 =?utf-8?B?U0s2T3huNDR4RFlrUDk0UmdiaCtnTC80MjVkS1E3MUJsbjdsM0VxdDFzenFt?=
 =?utf-8?B?UHQ3M24wcTB2RFJvbWZKQXNQS00wMVVUVTRlcVNkb1hHZDRVNUpEeGZWN2Rx?=
 =?utf-8?B?eTBMNWhQaDF6V2w3K0FFZFpEdmt3Zm1ES1UwM3RZSElaRlRCOHVZaVdwTngv?=
 =?utf-8?B?SXlVdzNWRElTbFJCV1dGYWs0LzMxVnIxRVJYbzdNaGRVR1VjbzR2UWRXK0Nm?=
 =?utf-8?B?TmZsZjF0Yk8xbFlHek5PcTgzT2gxNmNCNE41N0RhM0Y3Z2xFTmRwMmRXaVNr?=
 =?utf-8?B?QVBrM0hnMUNFUkRyRGs1aTlvTlJtZy9tYzFNZFhrYmJCTnMvblZYWFNKMEpM?=
 =?utf-8?B?dC9YVjlwL2J1N0J4V0J5MVUyUUhhbm1seTB2Z01mV2xkb3lCaFY1Rmd1cEZG?=
 =?utf-8?B?eWxZdHVES3NxL2hsUzhFQU9oL2pjVU93VlBsdXRUaUp1aW9CMFhWdnRNaGti?=
 =?utf-8?B?UTlEQWhRSkRBNTNyejdybGRVRCtQNmNtTkhRLzZibUZQNWI0bWwvWEVaQktG?=
 =?utf-8?B?dFZPaUIxWTlLQ3V5WkNoZWxydWxGZHVFVjRCM0JLTllLV21YRnF0cUlSSXhv?=
 =?utf-8?B?VEcyU0pzUFJVU1I0T3pFeENudENWN2N1UWNVb1Z0TmZ4Skd0YnVXOUV3S3dw?=
 =?utf-8?B?Q0VlU21xNHgwTFY1U1ZNTnowQ2g1TnptYUxqeUlsdVk4Wk1LR1RiNkZ6Tndo?=
 =?utf-8?B?V081TnhtU2NSdVdwWXJRaFJOL0ErL1RvT3pJN3YwWEV0WW5HR0JLR1ZOQk40?=
 =?utf-8?B?QmQ2YWRIYURuMEI2NHhndkQ0OHFJSkhUazQ1TERvOVdHczQwbHRTRlNZYXhj?=
 =?utf-8?B?L2tEZWJkQjN1cWRaVkJtcGQ2c2RsRkxyL0R6SUlYQmFMcmVORGJjT09LY1B4?=
 =?utf-8?B?cGU4RUo3NmZXa2plM3lvSkZDOStuRTM2ZTEyUy9xSFJqQzYwWGp0cGlQQUdG?=
 =?utf-8?B?eUQzT0xEd3ozMUpPV0FqREl4ZkFVb053ellBVFZGOVJKSEhBRGtYRS9HR3oy?=
 =?utf-8?B?M1VCQ3h2Qmo2WFZIcVNHUEI0cmpqdGFoaStGZUYyY2RBK296TE9YbmpURUdx?=
 =?utf-8?B?WVZSUFVnUUl6QnBrckthS21FcTU2WlBRWlBDeXJGTVdTNGtmYmNPNG14WFRu?=
 =?utf-8?B?L0VETFB3RVZIYTY5MEdoM3Vhc3pWMnBRUHRNOXozZlhJUVNkS1Uwc0FRZXB4?=
 =?utf-8?B?ZklyM0ZhdUh4SE9uVnJzb2VVQzlHb0FOc1loa1NwdUlQOTN0Q3dWYVRycjdJ?=
 =?utf-8?B?RytzVXVjYkxQNEpNSk5ORCtMTkplZjFSd1VtaVZyd3RLUDhxdllJOEp0eHhw?=
 =?utf-8?B?YkQ2ZHFQajE5SFFESEFWS3dzc1hsa0VrTWVXMDNzNTdRYll1YXlydm1McVVK?=
 =?utf-8?B?bFV4UFVFbEQwQ0U0SlRiczl3cjZkeXZwbDRESjBHb1FZMlVrYjhUajdxNE1Q?=
 =?utf-8?B?dndrQWFNRTB6U2FwZlRuajRyZUdZRHkvczE4TGI0SGlDT05tV2dJMHBHOUFv?=
 =?utf-8?B?REYwVVJnbGNQd2s4V1EyQUQxM0o4NEtnSVFqbnlpeU1WU0Q3RFBQWTZsR0JK?=
 =?utf-8?B?N3lwclNib0JKeU5rNU90V0hVNXVReFpmWWN6RWdUWUtBWVdNNUZ6dlh1SXRa?=
 =?utf-8?B?eTNDaGRweGZ3cXRoT1hSUlRaUVNjWXZqK1lCRXlQaW1maFJuN2RwU0JnMHdk?=
 =?utf-8?B?azNiLzhzMHNJZTh6THRQdzQrVTVlOHQxODR0N1RPUHQxazZqaXphUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47255b73-d9d2-405b-0db2-08de5807dfba
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 09:39:57.4367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 39r64RGws4pMkKINSUVu0kwWy+XRllxhiW55vWl2TTHoXqdK3X3VZ7R6U/XROd7lgBe2BPjELJEtvyoesScaEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9481
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgMTYgSmFudWFyeSAyMDI2IDgu
MTcNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBEZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BB
VENIIHYzIDAwLzE1XSBkcm0vaTkxNS9wbGw6IFZlcmlmeSBwbGwgZGl2aWRlcnMgYW5kIHJlbW92
ZSByZWR1bmRhbnQgLmNsb2NrIG1lbWJlcg0KPiANCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDAv
MTVdIGRybS9pOTE1L3BsbDogVmVyaWZ5IHBsbCBkaXZpZGVycyBhbmQgcmVtb3ZlDQo+ID4gcmVk
dW5kYW50IC5jbG9jayBtZW1iZXINCj4gPg0KPiA+IFRoaXMgaXMgdjIgb2YgWzFdLCB3aXRoIHRo
ZSB1cGRhdGVzIG9uIGNvbW1pdCBtZXNzYWdlcyBhbmQgZnV6enkgY2xvY2sgY2hlY2suDQo+ID4N
Cj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwteGUvMjAyNTEyMTcxNTE5NTUu
MTY5MDIwMi0xLQ0KPiA+IG1pa2Eua2Fob2xhQGludGVsLmNvbS8NCj4gPg0KPiA+IENjOiBTdXJh
aiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiBDYzogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPg0KPiANCj4gDQo+IFNvbWUgY2hlY2twYXRjaCBlcnJvcnMgYXJl
IHNlZW4gaW4gdGhpcyB0aGF0IGNhbiBhbmQgc2hvdWxkIGJlIHNvbHZlZC4NCj4gT3RoZXIgQ2hl
Y2twYXRjaCB3YXJuaW5nICBzZWVtIHVuYXZvaWRhYmxlLg0KDQpUaGVzZSBjaGVja3BhdGNoIGlz
c3VlcyBmaXhlZCBhbmQgdmVyaWZpZWQgYnkgc3Bpbm5pbmcgYSBDSSBydW4uDQoNClRoZXNlIHBh
dGNoZXMgYXJlIG5vdyBtZXJnZWQuIFRoYW5rcyBmb3IgYWxsIHRoZSBjb21tZW50cyBhbmQgcmV2
aWV3IQ0KDQotTWlrYS0gDQo+IA0KPiAjMTAyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGwuYzoyMzQwOg0KPiArICAgICAgICByZXR1cm4gYWJzKGNsb2NrMSAt
IGNsb2NrMikgPD0gMTskDQo+IA0KPiAtOjEwMjogV0FSTklORzpMRUFESU5HX1NQQUNFOiBwbGVh
c2UsIG5vIHNwYWNlcyBhdCB0aGUgc3RhcnQgb2YgYSBsaW5lDQo+ICMxMDI6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jOjIzNDA6DQo+ICsgICAgICAgIHJl
dHVybiBhYnMoY2xvY2sxIC0gY2xvY2syKSA8PSAxOyQNCj4gDQo+IHRvdGFsOiAxIGVycm9ycywg
MSB3YXJuaW5ncywgMCBjaGVja3MsIDk4IGxpbmVzIGNoZWNrZWQgNTMxNDNkYWRjMTRkIGRybS9p
OTE1L2N4MDogRml4IEhETUkgRlJMIGNsb2NrIHJhdGVzDQo+IDM5MmViYjY0MjRlMCBkcm0vaTkx
NS9jeDA6IEFkZCBhIGZ1enp5IGNoZWNrIGZvciBEUC9IRE1JIGNsb2NrIHJhdGVzIGR1cmluZyBw
cm9ncmFtbWluZw0KPiAwZjNmZDEzY2M2YTcgZHJtL2k5MTUvY3gwOiBWZXJpZnkgQzEwL0MyMCBw
bGwgZGl2aWRlcnMNCj4gLTo3MDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgbGVuZ3RoIG9mIDEw
OCBleGNlZWRzIDEwMCBjb2x1bW5zDQo+ICM3MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmM6Mzg3ODoNCj4gKwlpbnRlbF9jMTBwbGxfdmVyaWZ5X2Ns
b2NrKGRpc3BsYXksIHBsbF9wYXJhbXMtPmNsb2NrX3JhdGUsDQo+ICtwbGxfcGFyYW1zLT5uYW1l
LCBwbGxfcGFyYW1zLT5jMTAsIHRydWUpOw0KPiANCj4gLTo3NzogV0FSTklORzpMT05HX0xJTkU6
IGxpbmUgbGVuZ3RoIG9mIDEwNCBleGNlZWRzIDEwMCBjb2x1bW5zDQo+ICM3NzogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmM6Mzg4NToNCj4gKwlpbnRl
bF9jMTBwbGxfdmVyaWZ5X2Nsb2NrKGRpc3BsYXksIHBsbF9wYXJhbXMtPmNsb2NrX3JhdGUsDQo+
ICtwbGxfcGFyYW1zLT5uYW1lLCAmcGxsX3N0YXRlLCBmYWxzZSk7DQo+IA0KPiAtOjExNjogV0FS
TklORzpMT05HX0xJTkU6IGxpbmUgbGVuZ3RoIG9mIDEwOCBleGNlZWRzIDEwMCBjb2x1bW5zDQo+
ICMxMTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
OjM5MjQ6DQo+ICsJaW50ZWxfYzIwcGxsX3ZlcmlmeV9jbG9jayhkaXNwbGF5LCBwbGxfcGFyYW1z
LT5jbG9ja19yYXRlLA0KPiArcGxsX3BhcmFtcy0+bmFtZSwgcGxsX3BhcmFtcy0+YzIwLCB0cnVl
KTsNCj4gDQo+IC06MTI0OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBsZW5ndGggb2YgMTA0IGV4
Y2VlZHMgMTAwIGNvbHVtbnMNCj4gIzEyNDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmM6MzkzMjoNCj4gKwlpbnRlbF9jMjBwbGxfdmVyaWZ5X2Nsb2Nr
KGRpc3BsYXksIHBsbF9wYXJhbXMtPmNsb2NrX3JhdGUsDQo+ICtwbGxfcGFyYW1zLT5uYW1lLCAm
cGxsX3N0YXRlLCBmYWxzZSk7DQo+IA0KPiB0b3RhbDogMCBlcnJvcnMsIDQgd2FybmluZ3MsIDAg
Y2hlY2tzLCAxNTIgbGluZXMgY2hlY2tlZCBmOTEyZGExMGZiOGMgZHJtL2k5MTUvbHRfcGh5OiBB
ZGQgdmVyaWZpY2F0aW9uIGZvciBsdCBwaHkgcGxsIGRpdmlkZXJzDQo+IC06ODY6IFdBUk5JTkc6
TE9OR19MSU5FOiBsaW5lIGxlbmd0aCBvZiAxMTQgZXhjZWVkcyAxMDAgY29sdW1ucw0KPiAjODY6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmM6MjM3NzoN
Cj4gKwlpbnRlbF9sdF9waHlfcGxsX3ZlcmlmeV9jbG9jayhkaXNwbGF5LCBwbGxfcGFyYW1zLT5j
bG9ja19yYXRlLA0KPiArcGxsX3BhcmFtcy0+bmFtZSwgcGxsX3BhcmFtcy0+c3RhdGUsIHRydWUp
Ow0KPiANCj4gLTo5NDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgbGVuZ3RoIG9mIDEwOCBleGNl
ZWRzIDEwMCBjb2x1bW5zDQo+ICM5NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sdF9waHkuYzoyMzg1Og0KPiArCWludGVsX2x0X3BoeV9wbGxfdmVyaWZ5X2Nsb2Nr
KGRpc3BsYXksIHBsbF9wYXJhbXMtPmNsb2NrX3JhdGUsDQo+ICtwbGxfcGFyYW1zLT5uYW1lLCAm
cGxsX3N0YXRlLCBmYWxzZSk7DQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0K
PiA+DQo+ID4gTWlrYSBLYWhvbGEgKDE1KToNCj4gPiAgIGRybS9pOTE1L2N4MDogTW92ZSBDMTAg
cG9ydCBjbG9jayBjYWxjdWxhdGlvbg0KPiA+ICAgZHJtL2k5MTUvY3gwOiBNb3ZlIEMyMCBwb3J0
IGNsb2NrIGNhbGN1bGF0aW9uDQo+ID4gICBkcm0vaTkxNS9jeDA6IERyb3AgQ3gwIGNydGNfc3Rh
dGUgZnJvbSBIRE1JIFRNRFMgcGxsIGRpdmlkZXINCj4gPiAgICAgY2FsY3VsYXRpb24NCj4gPiAg
IGRybS9pOTE1L2x0X3BoeTogRHJvcCBMVCBQSFkgY3J0Y19zdGF0ZSBmb3IgcG9ydCBjYWxjdWxh
dGlvbg0KPiA+ICAgZHJtL2k5MTUvY3gwOiBEcm9wIGVuY29kZXIgZnJvbSBwb3J0IGNsb2NrIGNh
bGN1bGF0aW9uDQo+ID4gICBkcm0vaTkxNS9jeDA6IENyZWF0ZSBtYWNybyBhcm91bmQgUExMIHRh
Ymxlcw0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBDcmVhdGUgbWFjcm8gZm9yIExUIFBIWSBQTEwg
c3RhdGUNCj4gPiAgIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBoZWxwZXIgZnVuY3Rpb24gZm9yIGZ1
enp5IGNsb2NrIGNoZWNrDQo+ID4gICBkcm0vaTkxNS9jeDA6IEZpeCBIRE1JIEZSTCBjbG9jayBy
YXRlcw0KPiA+ICAgZHJtL2k5MTUvY3gwOiBBZGQgYSBmdXp6eSBjaGVjayBmb3IgRFAvSERNSSBj
bG9jayByYXRlcyBkdXJpbmcNCj4gPiAgICAgcHJvZ3JhbW1pbmcNCj4gPiAgIGRybS9pOTE1L2N4
MDogVmVyaWZ5IEMxMC9DMjAgcGxsIGRpdmlkZXJzDQo+ID4gICBkcm0vaTkxNS9sdF9waHk6IEFk
ZCB2ZXJpZmljYXRpb24gZm9yIGx0IHBoeSBwbGwgZGl2aWRlcnMNCj4gPiAgIGRybS9pOTE1L2N4
MDogRHJvcCBDMjAgMjUuMTc1IE1IeiByYXRlDQo+ID4gICBkcm0vaTkxNS9sdF9waHk6IERyb3Ag
MjcuMiBNSHogcmF0ZQ0KPiA+ICAgZHJtL2k5MTUvZGlzcGxheTogUmVtb3ZlIC5jbG9jayBtZW1i
ZXIgZnJvbSBlRFAvRFAvSERNSSBwbGwgdGFibGVzDQo+ID4NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgNzI3ICsrKysrKysrKystLS0tLS0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCAgfCAgIDEg
Kw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAg
IDQgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMgICAg
IHwgICA4ICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5o
ICAgICB8ICAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYyB8ICAxMSArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmggfCAgIDMgLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyAgICAgfCAgMTkgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sdF9waHkuYyAgIHwgMjM5ICsrKy0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2x0X3BoeS5oICAgfCAgIDUgKy0NCj4gPiAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc25wc19oZG1pX3BsbC5jICAgIHwgICAyIC0NCj4gPiAgMTEgZmlsZXMgY2hh
bmdlZCwgNTUzIGluc2VydGlvbnMoKyksIDQ2NyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IC0tDQo+
ID4gMi40My4wDQoNCg==
