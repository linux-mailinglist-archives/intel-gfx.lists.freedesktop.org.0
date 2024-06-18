Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983A990CFE8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 15:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE51010E063;
	Tue, 18 Jun 2024 13:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nR5Vy0P9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902CE10E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 13:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718717398; x=1750253398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ac8TVOPlv8wNjWPH5wdBiaxhX5bOm3vqRbbZ7vSEWog=;
 b=nR5Vy0P9mmA1rrEjqCRKZiZ0IoLUxR7fxAQVsJgSG1oRaVrOYj/3nw/T
 vcMbocD9qu3e6cm6o/jcbgNsK6Mn2lfnMMMsLdasn4Qv7gYzzC7k1B0M9
 L+EZ0WbwTbK9HH7YoKKf/rqKaCrSgLaposjVBmZwYSc1OSJHtiGHUZBcZ
 eWAo8GckkBWp47Ams8PONRivEi1dEd+/ba3ABAfwuf9xlVRst2tcmPjsc
 n7OLpuTLeyRb+m/UgH41lMQKBUF2oG+OaA4KaBrQBLiQtWgP0YL6KqVl/
 XKh0+ti9i7QC4ajTW1g/i69G1CQ/rkNiX7kBOQQsFDJZ4fp0OnbAyFpaJ Q==;
X-CSE-ConnectionGUID: qyl4R5u4QuWoPEJGLz2H3g==
X-CSE-MsgGUID: c5L8mWEIRkOh01/pbAlKsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33131010"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33131010"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:29:58 -0700
X-CSE-ConnectionGUID: gYrQmA1iTCmu9hECcztQ6A==
X-CSE-MsgGUID: t4YhxSxYTOC80J1fV3QjIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46465667"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 06:29:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 06:29:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 06:29:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 06:29:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlI/B24MjrJ3bc7M0t5fDWz+tqtF44wMx2Ub3TX2WXqKbr2B5d4p4CXA8irLPwMuikPmBkIowhqI7SS8Pgo2WzGa1SvgZIvnHoWWZXeVUOM/YJb/Wcd9FRGhCRIIaERfwVBrhc8GAq2qTnp5BNYkbj7Pn7UkjiXq0BrY3oDsqduvBc4yfOOuZpNkXyel4toWB45TnM+jTynX/k47Ad09If7ealmC+3heiORNq1N2tgLoCibWG4OTIzcNhnwGT8ZsG/i4JfzG5U8DQd+do5DskIoe4TaNdmzpzoCzWRxARUCMN+tUIq2IfUIN0r0akC3eB441DbzYKGb6y8MGkhLpgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ac8TVOPlv8wNjWPH5wdBiaxhX5bOm3vqRbbZ7vSEWog=;
 b=GTGgrVM9NI/eJ5F9cLEAIFn6yWDY6imUAdb5RkOTuFHyMI/hjqIAPcQ2UHqdQ9lXsgDZ81zAK5V3J+zmGNjBEyKmmpMJetp97fNPiQdi07P1Wtr5e18SFubcyIxJogwmX6Fr4Cftf9+WWg4IYqUjPWscbHmAWrY5UTNYhVedVZCbMbBAXxNFaL34MBZoheM3f2voUq6FVXqSjvoTK2Jr282ys/8MLNyCoBxwhWriUuHwNcmAp+X+/81M0C9lRTcTOd7hY56Z7OyDfEYrRQ1e6yzo2tyB81iJCz36tsjVoq9kRSlGoSCWbtpH25FmiYMTMdsJZI4MC4icJVnODjYKow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB6285.namprd11.prod.outlook.com (2603:10b6:8:a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Tue, 18 Jun
 2024 13:29:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 13:29:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong
 register
Thread-Topic: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong
 register
Thread-Index: AQHawUC0huogL6wKT0q+snLraU1rDLHNe2/Q
Date: Tue, 18 Jun 2024 13:29:54 +0000
Message-ID: <MW4PR11MB7054C1F5245EAEF159B43161EFCE2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-3-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB6285:EE_
x-ms-office365-filtering-correlation-id: 33dc6fb8-d200-4691-def7-08dc8f9abda0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?bEt5Rnl3cERDMGtRN1Bycy9MNHp4clhNVDM4ZDRQY0hUVjVLRFpnOTM1M3kz?=
 =?utf-8?B?ZUE3dlNYS29LcXhJbzd6U2F5Z1ZXMnRyaENwajF3V0l6c1dJbmRCMXVlOENl?=
 =?utf-8?B?cDlUZC9TWm1SMklNUnB4dUE4bTRKb2toUmZNaWRxMUVxOGl6ZVZvdUhpdzcw?=
 =?utf-8?B?NzZWMGdWK0xoOG1KK0UvMEJiRU54SXh2ODd3eTdjdWFsYnNoaVZQZUVKSEVx?=
 =?utf-8?B?M0ZjZGcxbTNxNkNLVWk0Nko3RVN6Z3FSRlc0SWxabzMya2lZMGlwZVFtOW5K?=
 =?utf-8?B?NW1UT0xOSXV6cHFSVjVlbG1pY0ZNMExCdUpmdDBPNHVLM3l1Yk40eEl5YTho?=
 =?utf-8?B?S29iMkNwYmtDZW9XdDU4RHNpQWM4OXZOZTJYZ2lHaUlITTlGRmdxVDM4ckVI?=
 =?utf-8?B?YTk5dzBibGl2UXRhYzR6UVdBSTdTWTFpWXE1NVBreGxXdk9FeDQvSGhBWUI4?=
 =?utf-8?B?aDJCakxHL2dLemF0cWJqUTgxS01lUFVSK1ZKTHRYRGRzUHQxQ251aVhRZE5r?=
 =?utf-8?B?UURxeklDK2JuS01Xejc0WDZoMTRpemM2d1dMc09EdjRRaGFkak9rSUE2MmV0?=
 =?utf-8?B?TzBHWjBKeTVyY3JGZnZ0cCt1bTVKVEdZNGVwTWhWbjZ0a0JYbHRHVmIvSTBs?=
 =?utf-8?B?UkFTcmh1UU5XNERNOUtvSXAxUHYrTWIvUktSeGNtT0kyWnc5d2J3QnFrd3FU?=
 =?utf-8?B?RVB4SjdjclZteG9MeWQxMVQwRytKSmI3ZDZiZmRsQ250Y0pBRXZveGJMVWVh?=
 =?utf-8?B?Sk9VUnZjMTJ1elFVS3ZQa0drSUhPSExrb3U5SHNwUURJTkIzam5ydUdjVGYx?=
 =?utf-8?B?TUE0MUROSkppWDlnaVBSa3M2RWRCZEFJeTRoTVMrNWVZbGVKcllWM0syejZ4?=
 =?utf-8?B?SmNSOTcyK0FvZXpCVlUvWVpaVDI2TGxwUHphTHlhRm1hRVo1REU5WVdYZHpL?=
 =?utf-8?B?d1ora1pEMHVxcUxJbWp0STR3L3I2ZUg2STdlNHdpK1dvdTM1eC84U0RIQXBx?=
 =?utf-8?B?dk84VVJFUkRXSVMyaUFHbW4yMWpxMzRaS0tIOHN5bzBBaW9HVklBU0RIVGY1?=
 =?utf-8?B?cXM1cVhoWk1uUXAvRlhjWmQ0MEw2S1MyLzIyU2tGUktrMk1heFc3c3hadjR0?=
 =?utf-8?B?a2J3Sit3WEkvbGg0QUhVUWRONDdnTXZaZ1E0Tk45NmluUzRZS2VzaEFIbWtk?=
 =?utf-8?B?VUUyd01MYVMvdnBCZjdFcHBKYUExWkNtVExNWVcyQUhLakVUTWtoOGtXSXdJ?=
 =?utf-8?B?cWsxWGhnUjBYM0VwNnVlWEdPNldvallNZFdXZ1dGU0RBNWpuUHBhdE5qRW42?=
 =?utf-8?B?L2VGNUtsVFJEOVorb0JneVJRd0RFK0NKMlI3NTFIdHg1QXVCTkF3bnQ3MC9F?=
 =?utf-8?B?NXBCK25OZHh4Z0g3aDdCeTFnajJUbmtNZCtFcFJCTVFUT1NqOCtOMUg3bk5Q?=
 =?utf-8?B?QktLbkFoODZwQk1hLzV0S0RhMnowOWoyL2cyVy9OTUpIU3RxeUZpY25ZS3Fu?=
 =?utf-8?B?MWhQR3pnT0N4N2pRWTRoWTdqSENadHNaY3pKNm1mSVdvdCsrWHF1Mm1DODU1?=
 =?utf-8?B?ZHMvWExPZ1ZKZEZMYm4xcWhJdzF0YnRaYTB5OUhRdFJ3TmRXMzNpdGlLSWdX?=
 =?utf-8?B?Q29TWDl5ajE4bXhEQWkwbkVqVTdEM3ZHK3hGWVd3bjhvcXF1cmk0M0NSNjFa?=
 =?utf-8?B?UThBaENkL0xJL0thajF0Yys1dzhpWFNVVnBXMzBOY3hEaHNTalVobEUzTnNv?=
 =?utf-8?B?S1MvUElRNGdnNEFZTTdjd1BVaFNPdnRMUU1tQ2FPVlBXRTFKbzdjTmw2QWpE?=
 =?utf-8?Q?wnDMG41vtrHVj1+k406HNuRnZ5Y3nMvVAv8ms=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUVjNVBrYUdUanRvN01DQ2o0NjdTOXJtNUlyNHlHRHNuZVNxYW8xZVhORFZG?=
 =?utf-8?B?SkdCQlVnTTZqTkhqSnRRL3RHN1V4WENrUmtpa0pLMktiQ21ZME9oeUxEOFRJ?=
 =?utf-8?B?bXFCL2ZTRVpKc3lYUVBYMDh3YXlwOU1NOVdFdVNId2oyZVVKTTlYbmhnQllj?=
 =?utf-8?B?TDhVYnpkMG4vVC84T3MyUjA1cXlWQXhzVmwrdVlxY01kUDdJQ1RUT0ZBV0Nt?=
 =?utf-8?B?M3QzdG9ITU1sWXpCZkk5SGJveEtpSzlVS1NWTmNydzkyZzhybUZzcG1oVmhx?=
 =?utf-8?B?YUs1ZXF2cFBXOWJybEQyK2dsRVVMYkd5c3hCOURPSUtoR0ZnNVpFVkp1Mm5p?=
 =?utf-8?B?RmxVN1FRSDdzQ0lTQndNaVlvOFVIeHZjSngwaG1LOCt2YWJYUkpVSHU3dlZD?=
 =?utf-8?B?a2s3U3UxVWh4OWY0Q2wybVJqRzN3M2krM29hOTRXZy9YZkpGd1M0TWpzazNh?=
 =?utf-8?B?YVNyQ0ZvNXNkdmk1VTl5SGwwVjNGVktXQ3A1QlppMHlRMHA0UUU1a25PdTdn?=
 =?utf-8?B?c0FlK3JnZndUTXdXVkNWU1FpNjNqdGtXcGhhNVltR0sxbW9PcXJhN0ErbGVI?=
 =?utf-8?B?R1d2ZmVjUmJxdWMzaWVlMzVTTnFIRDFjTVZlRkwwTzVPVU10Y3FwNWZlQ2NH?=
 =?utf-8?B?ZS9takhFN3VWTjVxdkRRTU9Yd05YTlUwRlU5bmRnczNoRmdqeG9VUXpLSmdx?=
 =?utf-8?B?bzh5bXdzSEFGaFlkT2ExL3VjT2dKaTVGOVMwS3J5NEFhRm9IbURWa0hHM1I3?=
 =?utf-8?B?aXFFUE9MSFlHajBTU2FjTzJ1alYwQURJbmgvcm9BVmxuQ25EbnVla05DTW5t?=
 =?utf-8?B?QlVuUUh6RS9nVSsvcEhKb2FTRlNjK2ZseDRwWklwdGFDRVB0azVaUExxTHRS?=
 =?utf-8?B?QTU4cm13dlFJU21iNVlDMUxMWFhnOFpRRXB1MjVBQzZsYmh3c1hjV21TYy9a?=
 =?utf-8?B?MEJGWlJsQUtTRzlVMUZGM3BML3R5Qm9mWDRvV0ZXMkprZkJLbWtoL3NYc1BB?=
 =?utf-8?B?Qk84MjVqejArVTVaNDBrYWRuZVdWTVNrdEJDdnN1OWhIempDUUdyU3pTaGZ0?=
 =?utf-8?B?WVY0bmNpV1RoZTJpUVVpUU9waklPbytleTdvQXExWFdJbFlRMWFET0I1VTlp?=
 =?utf-8?B?NkF0TFM2dUVHNXBzWEcyaW1DWkVkVXZUMWRlRkpXL0o5djREc3ltUTlXdFRh?=
 =?utf-8?B?UFRqR1ZNc1JMSEpUWUhYRjBlM0pHLytyNmR2WXRWS1pNUXJua1g2MGlHSjB3?=
 =?utf-8?B?cDBJZm1VekJCUVlqekZzRWthNTc5akRraTFMdDgwVDIzYkJrWFdFRmJTZGZI?=
 =?utf-8?B?U09OZUM2cWF3WkxSUStOc3RzdnlheThJOHNrb0Y4VFdhOThIeGhSMkVXRWNY?=
 =?utf-8?B?Zlord21MNjdUNi9udG9iYTZBcHhKdXVUelZlU3JGZUxxb1ZPN090dU5sdGJu?=
 =?utf-8?B?Q2dhb3JKK2RMbDhmMEQzUWZ0aE9aODBYS2xZZ0ZaeWdoMElYWmY1M21jYmY1?=
 =?utf-8?B?cFJJeEhGdDRJTnpIWFR1bEROSzlPOGsrNTBUZkp2Q2VLaSt0WnB3Z2JNK3RY?=
 =?utf-8?B?VE5QRVFmaGR0R2JSZmluaW01UDFDdVJDcUUvZ0JON3RNNTRVUS92SXJtdFN6?=
 =?utf-8?B?WjVYZk1Qa0h3VlI3a1hEeFZGdEw5L3hxYVlyUWtUZ3pVQmZNbDI5YzQ2NXI4?=
 =?utf-8?B?Q2ZMM25EdTBuYVpaMzdPWENMaVpjSC8rL1ErNCs0aFBuaWxUOWVRREFrZTlU?=
 =?utf-8?B?SERIMzUva0xFcFRrUkxTc2E1b0k3WnNwdHlsekYyL3pHODNHazg0S2NaWlpq?=
 =?utf-8?B?MHhDelcxNDBvMTVuSVlFUWNBRWFSU1hpSFQyZ0cwcWZ1VFMzNVlyQzZnSFU3?=
 =?utf-8?B?UUdwS0RCLzVNYTVuckFIOWNjZ1M4RkFCVUFleWR1RDNnTHFzcUdDc0NqbmtH?=
 =?utf-8?B?RDRDR1FyUGxOZXlXSDM4OFV0YWxWNndzcllwVHZDNWFId2ZodEpSckdiQ0xX?=
 =?utf-8?B?NlpwZXE2TWhwWHREdUphYjRJQzZSVzBUNkZyUXpvOXNsTkJraHEvU3dDRFhu?=
 =?utf-8?B?V2JralNiejZoYVpuMDBCSEVZaFZqOVoxSW9nVnlORG5YNUZaUUFPdTJEMnBB?=
 =?utf-8?Q?80Zuv+WNjPBRjqCagvJcwqCgU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33dc6fb8-d200-4691-def7-08dc8f9abda0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 13:29:54.8430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7hFm9Gtacb8oKVJmzv5cvZ9Ny2SDl0l4j/HR65Q0OZNK+quNaz9ClGJhYlFJf8Ajf/L9BC+3cogD3dgXYiQZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6285
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
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSAxOCwgMjAyNCA4
OjMwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5u
YSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPG1p
a2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi85XSBkcm0vaTkxNS9kaXNwbGF5OiBXYSAxNjAy
MTQ0MDg3MyBpcyB3cml0aW5nIHdyb25nIHJlZ2lzdGVyDQo+IA0KPiBXYSAxNjAyMTQ0MDg3MyBp
cyB3cml0aW5nIHdyb25nIHJlZ2lzdGVyLiBJbnN0ZWFkIG9mIFBJUEVfU1JDU1pfRVJMWV9UUFQg
d3JpdGUNCj4gQ1VSUE9TX0VSTFlfVFBULg0KPiANCj4gdjI6IHVzZSByaWdodCBvZmZzZXQgYXMg
d2VsbA0KPiANCj4gRml4ZXM6IDI5Y2RlZjg1MzljMyAoImRybS9pOTE1L2Rpc3BsYXk6IEltcGxl
bWVudCBXYV8xNjAyMTQ0MDg3MyIpDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3Vyc29yLmMgfCAgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jICAgIHwgMTIgKysrLS0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gaW5kZXggN2Y3ZmM3MTAzNTBj
Li42NjQzNmU1MjYwMjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3Vyc29yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jdXJzb3IuYw0KPiBAQCAtNTI0LDggKzUyNCw4IEBAIHN0YXRpYyB2b2lkIHdhXzE2MDIx
NDQwODczKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+IA0KPiAgCWludGVsX2RlX3dyaXRl
X2Z3KGRldl9wcml2LCBTRUxfRkVUQ0hfQ1VSX0NUTChwaXBlKSwgY3RsKTsNCj4gDQo+IC0JaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfU1JDU1pfRVJMWV9UUFQocGlwZSksDQo+IC0JCSAg
ICAgICBQSVBFU1JDX0hFSUdIVChldF95X3Bvc2l0aW9uKSk7DQo+ICsJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIENVUlBPU19FUkxZX1RQVChkZXZfcHJpdiwgcGlwZSksDQo+ICsJCSAgICAgICBD
VVJTT1JfUE9TX1koZXRfeV9wb3NpdGlvbikpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGk5
eHhfY3Vyc29yX3VwZGF0ZV9zZWxfZmV0Y2hfYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUs
IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAz
ZjM2Yjk0MDIwZmYuLjJhMzNlMzVjZWVmZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMTY0LDE5ICsyMTY0LDE0IEBAIHN0YXRpYyB2b2lk
IHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSwNCj4gIAljcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwgPSB2YWw7DQo+ICB9DQo+
IA0KPiAtc3RhdGljIHUzMg0KPiAtcHNyMl9waXBlX3NyY3N6X2Vhcmx5X3RwdF9jYWxjKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAtCQkJICAgICAgIGJvb2wgZnVsbF91
cGRhdGUsIGJvb2wgY3Vyc29yX2luX3N1X2FyZWEpDQo+ICtzdGF0aWMgdTMyIHBzcjJfcGlwZV9z
cmNzel9lYXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwN
Cj4gKwkJCQkJICBib29sIGZ1bGxfdXBkYXRlKQ0KPiAgew0KPiAgCWludCB3aWR0aCwgaGVpZ2h0
Ow0KPiANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCB8fCBm
dWxsX3VwZGF0ZSkNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAtCWlmICghY3Vyc29yX2luX3N1X2Fy
ZWEpDQo+IC0JCXJldHVybiBQSVBFU1JDX1dJRFRIKDApIHwNCj4gLQkJCVBJUEVTUkNfSEVJR0hU
KGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpKTsNCj4gLQ0KPiAgCXdpZHRo
ID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSk7DQo+ICAJaGVpZ2h0
ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEpOw0KPiANCj4gQEAg
LTI0ODUsOCArMjQ4MCw3IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICBza2lwX3NlbF9mZXRjaF9zZXRfbG9v
cDoNCj4gIAlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUpOw0K
PiAgCWNydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0ID0NCj4gLQkJcHNyMl9waXBlX3Ny
Y3N6X2Vhcmx5X3RwdF9jYWxjKGNydGNfc3RhdGUsIGZ1bGxfdXBkYXRlLA0KPiAtCQkJCQkgICAg
ICAgY3Vyc29yX2luX3N1X2FyZWEpOw0KPiArCQlwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2Nh
bGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUpOw0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4g
LS0NCj4gMi4zNC4xDQoNCg==
