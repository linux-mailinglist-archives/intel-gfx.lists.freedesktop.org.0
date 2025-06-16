Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F741ADA96A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 09:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3070010E17C;
	Mon, 16 Jun 2025 07:27:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m4jarTl7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228FE10E031;
 Mon, 16 Jun 2025 07:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750058870; x=1781594870;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=stdExVKuWOZ/r14iTEMgwt0FmU64b8zqK94oLU3IW0M=;
 b=m4jarTl7WbLIMxKIqsSRG1vYSAUe6LPnRULLn5VH+iZWVw7FKliLGV4X
 uZmk62oMWslVX8VoRs0hB5QjnvDa+bDup9CJQzmWbyrGe0Mfo4yJqhnEx
 c39qYyFPgfjZAP4Zia241/qLqGgbSMkt6H1hpi9UnV21/f/1RgEZlSm10
 T+Zvk/cWQJGgwzqQ1tuzY4h3VCjx+dV9C01KTh0AIRnTonRtwwuIO40mu
 AzXJGYJEVnOFSn73TRiqwDdSofuZCfNpJhB6D/ADkc0NMtuUESGgU5mM+
 uUdZ9j9kHSEwW71JT9JfOSETRMDpNL+kkfsVnkjeqUNFkHycH+9KagYaU w==;
X-CSE-ConnectionGUID: LLHs5GJ5T32PiXrTBPeDjw==
X-CSE-MsgGUID: +o9xaCyoTxq+KQ+CalWRkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52063493"
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="52063493"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:27:45 -0700
X-CSE-ConnectionGUID: YZ9mPPa0Rmm5S2QJ7NOQcg==
X-CSE-MsgGUID: AFUrwqtaSs+sfp4MBh1Cqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="148856618"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:27:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:27:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 00:27:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:27:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mdd75bXYrXZx/2Rr97JFAktpGbeRSK+J2dDo0dfoRBfm0sz5EBpbh6GyYqHVbaTjconicxTuH5XAvnJMyWcL60wca0M+wMQ//LDeNQoNroX/wtF4Ujj2JjOan20JDBG+LsBPq931Xna/Lu4O7NOOOqtr6vXR+UN5yCX3+JJmAuM0NFyoJD4Ok/WqZDCpjPIjVEJckUM16PIwjW3fA41Hd9Qu4clEHtNyVB+3iAH8qL9aoiysZTE4L5PmtMyQRsPyYlaGDeOtf4x9G+d35W+RiI5RgPWmZJb08LzHYKIf9Ft/J/H+0PuYieyFC47miBBfpZNiRPSiGp/5XqYcBp6Enw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=stdExVKuWOZ/r14iTEMgwt0FmU64b8zqK94oLU3IW0M=;
 b=DiOdxk1B/dsDx7dUwZGBURcWXQPPh/9T23rBPqfQOrh8gnzOWXL3pjTs76qKFjNlGT23WVC/q+p/uDhaUAfm+if/hQHW0D2oF2vrU4hbibHysDtealbZ8EuCmHT0g+06ET0yumy980p5Bq7ZNOWr9RtMtwZqhI08VFSKs35fcXWVuVZxOrQKhqm/ouCj8K5NanuIsfaLaQr5OhRmY4RFI6b+IPwoDn4SsUjHvuD+fdWot6qrzhxgG3pASQHFBjHg7f85lvEWhD3HJ9hrmGKhK2OHkN1SW9eQhS256ljVIIhvi9xlyQuT57FmoqMTxKvxfNIpgMm+qJDyhijI5YMKcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA3PR11MB7433.namprd11.prod.outlook.com (2603:10b6:806:31e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Mon, 16 Jun
 2025 07:27:25 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%5]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 07:27:24 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHNi?=
 =?utf-8?Q?:_DSB_fixed_and_flip_queue_prep_work_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kc2I6IERT?=
 =?utf-8?Q?B_fixed_and_flip_queue_prep_work_(rev3)?=
Thread-Index: AQHb3RwTsiTkzAcYE0eIURizl5psKrQFZbLA
Date: Mon, 16 Jun 2025 07:27:24 +0000
Message-ID: <DM8PR11MB565584C752FB1C26B9E19852E070A@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
 <174989903395.79834.421344106672910374@1538d3639d33>
In-Reply-To: <174989903395.79834.421344106672910374@1538d3639d33>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA3PR11MB7433:EE_
x-ms-office365-filtering-correlation-id: f30127f9-1fe1-4fe3-3eb6-08ddaca73d70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Q202M3RJSjU3Z2dyN3FRUTJ0K21tSzd6elhjcVNRc0ZOV2VnV2ZVSnBWVVk4?=
 =?utf-8?B?TUxyOEQ2MTRYRWxuZ3h4dFN4M2NmeWVLZTlSUG81QjlDL1FxOHA1bXE1NFl2?=
 =?utf-8?B?VGN2WlVWZHUrbFljTkl3bFhZb1lUbUpzVkF4eUlKdDY1dzVQR2tZU3ZVa1Vh?=
 =?utf-8?B?ekltWTN1UkZYbThZcDEyT3dacmRPWUtMV1BnQlE3YTFoOGpLUFNJSzA0bjhV?=
 =?utf-8?B?dWJWalRYZnViMFlXSDJQaURrSm05Y0llZERJQU9NVlNzZlU1TnhXdVdwMFph?=
 =?utf-8?B?S2xIQ09hTkg5bjdSY0ViZHYyYjdhU3djVmRuTXhVeXlkYi8vOGUwWUQ1emlE?=
 =?utf-8?B?UmNjRmgySUN0SUJ6SUR6Ly9UQytRTy9ycFVyRGc3a3l1L3hoVk51ZHU1WDFh?=
 =?utf-8?B?Z3FBSGZSSW9ROGxhNW1uZitDYThSbHNCZG5UQVdrVGNpTjMwdS9UQ1J4QmtP?=
 =?utf-8?B?d3YwL2VNK21sYWs4UUN1cWp4OUJpSCs2Q0ZqMkNuZTFlRDUrNlpHTlhuMWoy?=
 =?utf-8?B?R05XcEhBUkxWYk82a01HTUlwVGJPblhkNVRCN01vZ2pEN3NZV01oUXJtWTdB?=
 =?utf-8?B?NjBsaWE1UE0zZEg0WGJQeExqUGMyREFMaWliRFd6UE9XOGlkYmNuSFhuRVdC?=
 =?utf-8?B?Q1A1RDljeGNVb1hxcStSTFVYV3NZUlZoVFFWckNJQWw0SlRVenA0Mzk3T2tr?=
 =?utf-8?B?bStmQXVlV1B2aVZ2eVRKN2M2RnRadm5tdGtmK1h3cUtmYlpyMWlNbjBQdjBt?=
 =?utf-8?B?M05ncWF0NmFsL01kN3phSEt1aHpwYzNHWVp6NEN6aW5acXhhbkdOR0o1YUtu?=
 =?utf-8?B?ekVaVDlCQ0lqY2gvS0srSGZidUpYTFlIQnkrOGV2dDZUS1BSeXdBRWNQWmpq?=
 =?utf-8?B?Y1pOb0tHTXJMNWo3UGdtNGdLUjJxbjVxUTRGQzQ2aXJvTTc2RTRNdWhINTB2?=
 =?utf-8?B?ODBmcVl4VU1aWE9DdU5ZSWZoZ0FjWHZrQ1U1a1hyOG9mQnNxcGVZeXN5VWVa?=
 =?utf-8?B?WmdCUWtiVEwxT1Frb3hZcGZUU0FaWGpuUTZNYk0vT0RjUHk4WlB1MUJZVUls?=
 =?utf-8?B?Q01idVAzWFU0aWE5VmJNL1BTMTZ5SC9xbjRCYkpJb01ZU2lpbEZ4NFZOTFBL?=
 =?utf-8?B?Njc3elo0VnpPUWVBeGF1V0Q3Tm1JYVVaRzlHSXZrY3MvdkpIVDBDdld2Uk5Y?=
 =?utf-8?B?MnBQR3ZORUFHa3ZEY0pRcnM5UzNHYnY2WW1KZThaaW1QZFJ1M0g2bjVwc2NZ?=
 =?utf-8?B?S2FHaVZUenpzQU1VdnArdVJLRDBRQXVTV0pJb0RDcjR4TVhSS2R2aldFd2FE?=
 =?utf-8?B?azh5NTF0WS9rL2lsU0tOSm5jKzd3YkZrRkFnWFdmbzZUYVp1WFl6MVNVVWNy?=
 =?utf-8?B?ellvTUpYRlNuSWgrSklpSjRqV2pOMG13NlhaaWE1S08vdkpQQVN1WUlIaTZK?=
 =?utf-8?B?dkh6NGVXL001UGp1YUt4cnRLWWJSdUtZSEpwb0pxK2trR0FGNVhGazErOXJB?=
 =?utf-8?B?alhNQ3k0Y3ZGeU5HKy9SOWg1YlFzMHpnaXhPN3duSWZXdjduZjlSN1Y5U2xU?=
 =?utf-8?B?Q05NOWY2K3JJckpOM0tiZ05BYjRRZkFLN3FBcnk4ZVhFQzVlbDFLVzYrN0JK?=
 =?utf-8?B?Uk5MQ082R3BMa0NQTjJDdUpjOWt0b2JHenVkTjFOelk3NmxiZUg2MytBQlVD?=
 =?utf-8?B?ZmlHYUl3b21GNHFFTkVhM0FTbVRIckZsVUhSRTNKLy9jekRLWVpWTWh2WGZD?=
 =?utf-8?B?YWdXbTZ0SWlBRjNqVWRDM2ZqSVlRR08xUWRmQWQ1RDlOYzRYN1E4TmR4aGZT?=
 =?utf-8?B?VzF3ZGRoS0FtZ09VKzRaZ2xOYU14cEhJbysrQkN0cDgzVEw2R2V1OXczVURZ?=
 =?utf-8?B?V2xUcXZqNFRWL2Jxa21vN09RZ1FlU1MremN6VnJOeTA3eFNoWWJpdm9ybmhO?=
 =?utf-8?Q?vSsue5ZV+4M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(13003099007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEd2OXcrYUdnMUg3OTFRbzI4MVFzWHdheXl0Nk40TWtONmZYaW9TbVlpaEgy?=
 =?utf-8?B?RERWRmVTQ3d3ZGczS214RTVhV3VVSVd2MkZ3aHpGYkV5b2s3MXdUQkllZ0Mx?=
 =?utf-8?B?S1ZUb0o0OEl1d0pDSWFUd0UyY1o1aHFKY2Z1NEpnMWlGUnplZFdZbExzOVl5?=
 =?utf-8?B?QjR4dXJ6UGlIZmMwbkUvdGFQQlRMcEtKK1l0SjNRQloxSENZelpMdEZVOWpp?=
 =?utf-8?B?ZUVENVEwZ2cvdTkwUjBzNWRteU9Dd2wzWW1nS2hpcXEydWJWRlR4QS8xNFl2?=
 =?utf-8?B?NlJzY2ZCNFRFWEs4TkNCeXRLVEI3U0Rmb2M1K2Y5dVNoUGRId21WQTZmTlVn?=
 =?utf-8?B?dnZKN0ZpR2tTSW9RZ3RwMitkNWpGRWcrbEdtTjVLODgySExhbTJyQWYrc3lH?=
 =?utf-8?B?ZU5qZXJncmk5UStGQThGNmExUjZYbnB2by8xeGhwR3NjUHpBdTZCOERYNCt2?=
 =?utf-8?B?cnBlUFozRmNxQ0JxK1FqaFF6QTVFNzU0ZFZsMEVPK29CZ2t5b0tQZHVRa1VK?=
 =?utf-8?B?RGpDL1BwdDFuVGRCbXZ3UkZ0aE1tYnBZdXp0a1FBQUVXQVN6V1BPOVUzN0Rl?=
 =?utf-8?B?NXVjQktmZ0pIRjN0RFg1RkYyVWdTU3JOcDhhYWhDcGZGTEhtNnR0cVRsTXMx?=
 =?utf-8?B?Z3RJa3M1Q1hSS3U5ZUs1eFRzVEYxWWE4blY0T0Z6VWJDRmVocTQ0TW1ubGtU?=
 =?utf-8?B?NGx3ZGZ5SjNhRWVSMnF1OXAxVnYyOHVnNVBLWGw1b09YN2YzZlNuZG94L2hH?=
 =?utf-8?B?T0ZEWEhYNnIrQTlUcFJHWGJSZTFqWXVDUmpJRnpxVlRERWJUUktDdlRTMTlU?=
 =?utf-8?B?TW1iVjh6RG1NT2FqRStvTVI5N1V2MjlJTFpQK1d6RnFaRHFnRGo2T1lIa0pS?=
 =?utf-8?B?TWtlWXE0dHh5SXV4UjBudi80cEExamVPRzNqZmNTQkRSWWR4eU5KME9pd3Zj?=
 =?utf-8?B?aVlsZ1VaaTNMSVcvdjdmeHlVcGRZYXUvaW5zaUF2S0tNOFJ1bG9qUVplblFu?=
 =?utf-8?B?bjlneTRReGV6Z3RQSEl3SGkwOXpQZ1Z6YzRaM3habTQ1enBuSUpPZk8zRXdM?=
 =?utf-8?B?VHBKVVhkMHhaSHhnQzJiU25Ocno3dDVXL3F3RjQ2UVhRS1p4Ty91WUlOTmVV?=
 =?utf-8?B?dy91Wk16UEpRRnpvaTlRL1BOaE9LbXVISnhXdzlhVE5EWlYwSVQ5RDY0SVVH?=
 =?utf-8?B?azVJZWVob0xYbjZuWS9NMS9MdjNCOWVsLy9IeGV1bHp2NUxEek9LZklzM0Ur?=
 =?utf-8?B?UVFRN3VsYzVHOVhQemhoYi80Z0xxZUZZOG1PQ2w4V0FVVHB1WHNOUCtwQjQ5?=
 =?utf-8?B?VkM4bkE5Q2E1UEJGTk9PbUd2d09TZUFBWHFLdWFia1ZtbGs4MEtZRTJneGd3?=
 =?utf-8?B?N1hHNk0yTGc1OXBKN3BVNC8xTlhoMVMzTlc5aTBvQzRYbnNGNDdCYjR0RnhD?=
 =?utf-8?B?aktyMkxWMGlxcURRWU11WFIwUUlubFVnN2FEaUtLS2FBRXBkWU92N016bmcz?=
 =?utf-8?B?Z3NmZDRIQUdONk5FaENZTnVNSXMwQzRUNXBZc2I0enc2S2RNTlZ6T0hxWlJ1?=
 =?utf-8?B?NHNKcVFPWTRRWEdMZ3dKdHZ6d3VLc0JiVzN0ZElVRWpQUFZmTWNBYU5Jd3Jt?=
 =?utf-8?B?NUZuL1lHSS8za1hITkV1L00wK3F3WFY5NEJVTDFCdFhDNzFUVE5lLzUvOEpu?=
 =?utf-8?B?dEl1VmdCckNkQXFycVcyK1NPcUY0N3d3YitES0gwOFBuS3ZKbkEyYmlSTUFo?=
 =?utf-8?B?dGFYTHg3Y2RnNnQvam5oVmpnVDliS3pGdHF4N29rNjhiUlAwVDkrZFo3VkJT?=
 =?utf-8?B?cjVPUFdIVjlkdTFyQXNCZlhta0Q3MmVDUVA2YWpWMytjS0x1QjVRbHNhclMr?=
 =?utf-8?B?UjA2Q3RiYnNsV1p2WDRWSzlaV0xQTTR2QjJPWkJaajhFQmp2dHBYMmpWSnVU?=
 =?utf-8?B?MlVqdWUvcE9OUHRtdGc3NDMwNjNKTWltaEpqTFZWUXlmR0p5dFBINDAxOXAr?=
 =?utf-8?B?SEVFZTdoRWJ4d3dUSGFKaSt1dWlaTmh2aFcrMkw4NTUwNkp1Vkw0T0FEb1RS?=
 =?utf-8?B?enA0TTRyRmZvSTRYTmc0OGdveGVueE9PMEo3QkdJdkZCZlVpYXh4eVFFc0JQ?=
 =?utf-8?Q?bSwPpmh7u33DGPMMv/3Aa4G2/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30127f9-1fe1-4fe3-3eb6-08ddaca73d70
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2025 07:27:24.6383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jH53DLgah2zP7ZkFMgsosOmHEYGBqTEdNTVaU9IDuZzHs8DepvJlUHa1VAzAis8NywRBP+ZMGBRNAJx1sEPJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7433
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4g
UGF0Y2h3b3JrDQo+IFNlbnQ6IFNhdHVyZGF5LCAxNCBKdW5lIDIwMjUgMTQuMDQNCj4gVG86IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IOKclyBpOTE1LkNJLkJBVDog
ZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHNiOiBEU0IgZml4ZWQgYW5kIGZsaXAgcXVldWUNCj4gcHJl
cCB3b3JrIChyZXYzKQ0KPiANCj4gUGF0Y2ggRGV0YWlscw0KPiBTZXJpZXM6CWRybS9pOTE1L2Rz
YjogRFNCIGZpeGVkIGFuZCBmbGlwIHF1ZXVlIHByZXAgd29yayAocmV2MykNCj4gVVJMOglodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1MDE3Mi8NCj4gU3RhdGU6CWZh
aWx1cmUNCj4gRGV0YWlsczoJaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0K
PiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2luZGV4Lmh0bWwNCj4gDQo+IENJIEJ1ZyBMb2cgLSBj
aGFuZ2VzIGZyb20gQ0lfRFJNXzE2NzA0IC0+IFBhdGNod29ya18xNTAxNzJ2Mw0KPiANCj4gDQo+
IFN1bW1hcnkNCj4gDQo+IA0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdl
cyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTUwMTcydjMgYWJzb2x1dGVseSBuZWVkDQo+IHRvIGJl
IHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFu
Z2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE1MDE3MnYzLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2kt
DQo+IGluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbSB0byBkb2N1bWVu
dCB0aGlzIG5ldyBmYWlsdXJlDQo+IG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2luZGV4Lmh0bWwNCj4gDQo+
IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NCAtPiA0MykNCj4gDQo+IA0KPiBNaXNzaW5nICgx
KTogZmktc25iLTI1MjBtDQo+IA0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiANCj4gDQo+
IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVj
ZWQgaW4NCj4gUGF0Y2h3b3JrXzE1MDE3MnYzOg0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0K
PiANCj4gUG9zc2libGUgcmVncmVzc2lvbnMNCj4gDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmU6DQo+IA0KPiAJKgliYXQtYWRscC02OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTY3MDQvYmF0LWFkbHAtNi9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlLmh0bWw+ICAtPiBBQk9SVA0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMTcydjMvYmF0LWFkbHAtDQo+IDYvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZS5odG1sPg0KDQpOb3QgcmVsYXRlZCB0byB0aGlzIHNlcmllcywgcGxl
YXNlIHJlLXJlcG9ydC4gDQoNCj4gDQo+IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJl
IGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTUwMTcydjMgdGhhdCBjb21lIGZy
b20ga25vd24NCj4gaXNzdWVzOg0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNz
dWVzIGhpdA0KPiANCj4gDQo+ICoJaWd0QGRtYWJ1ZkBhbGwtdGVzdHNAZG1hX2ZlbmNlX2NoYWlu
Og0KPiANCj4gCSoJZmktYnN3LW4zMDUwOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTY3MDQvZmktYnN3LW4zMDUwL2lndEBkbWFidWZA
YWxsLQ0KPiB0ZXN0c0BkbWFfZmVuY2VfY2hhaW4uaHRtbD4gIC0+IElOQ09NUExFVEUgPGh0dHBz
Oi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAxNzJ2
My9maS1ic3ctDQo+IG4zMDUwL2lndEBkbWFidWZAYWxsLXRlc3RzQGRtYV9mZW5jZV9jaGFpbi5o
dG1sPiAgKGk5MTUjMTI5MDQNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MDQ+ICkgKzEgb3RoZXINCj4gdGVzdCBpbmNvbXBsZXRl
DQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrOg0KPiANCj4gCSoJYmF0
LWFkbHAtNjogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0
aXAvQ0lfRFJNXzE2NzA0L2JhdC1hZGxwLTYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hl
Y2suaHRtbD4gIC0+DQo+IEFCT1JUIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNTAxNzJ2My9iYXQtDQo+IGFkbHAtNi9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGhhbmdjaGVjay5odG1sPiAgKGk5MTUjMTQzNjUNCj4gPGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQzNjU+ICkNCj4gDQo+ICoJ
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gDQo+IAkqCWJhdC1hcmxoLTM6
IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RS
TV8xNjcwNC9iYXQtYXJsaC0zL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRt
bD4NCj4gLT4gRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LQ0KPiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2JhdC1hcmxoLQ0KPiAzL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gIChpOTE1IzEyMDYxDQo+IDxodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxPiApICsxIG90
aGVyDQo+IHRlc3QgZG1lc2ctZmFpbA0KPiAJKgliYXQtZGcyLTE0OiBQQVNTIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTY3MDQvYmF0LWRnMi0x
NC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+DQo+IC0+IERNRVNHLUZB
SUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29y
a18xNTAxNzJ2My9iYXQtZGcyLQ0KPiAxNC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWw+ICAoaTkxNSMxMjA2MQ0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSArMSBvdGhlcg0KPiB0ZXN0IGRtZXNn
LWZhaWwNCj4gDQo+IA0KPiBQb3NzaWJsZSBmaXhlcw0KPiANCj4gDQo+ICoJaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBndWNfaGFuZzoNCj4gDQo+IAkqCWJhdC10d2wtMjogSU5DT01QTEVURSA8aHR0
cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NzA0L2Jh
dC10d2wtDQo+IDIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndWNfaGFuZy5odG1sPiAgKGk5MTUj
MTQwOTYNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwv
LS9pc3N1ZXMvMTQwOTY+ICkgLT4gUEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUwMTcydjMvYmF0LXR3bC0NCj4gMi9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQGd1Y19oYW5nLmh0bWw+ICArMSBvdGhlciB0ZXN0IHBhc3MNCj4gDQo+ICoJ
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gDQo+IAkqCWJhdC1tdGxwLTk6
IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xNjcwNC9iYXQtbXRscC0NCj4gOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzLmh0bWw+ICAoaTkxNSMxMjA2MQ0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSAtPiBQQVNTDQo+IDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTAxNzJ2My9iYXQt
bXRscC0NCj4gOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+ICArMSBv
dGhlciB0ZXN0IHBhc3MNCj4gDQo+IA0KPiBXYXJuaW5ncw0KPiANCj4gDQo+ICoJaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZToNCj4gDQo+IAkqCWJhdC1hdHNtLTE6IERNRVNHLUZBSUwgPGh0dHBzOi8v
aW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjcwNC9iYXQtYXRz
bS0NCj4gMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWw+ICAoaTkxNSMxMjA2MQ0KPiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2
MT4gIC8NCj4gaTkxNSMxMzkyOSA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
OTE1L2tlcm5lbC8tDQo+IC9pc3N1ZXMvMTM5Mjk+ICkgLT4gRE1FU0ctRkFJTCA8aHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2Jh
dC1hdHNtLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sPg0KPiAoaTkxNSMxMjA2MSA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+IC9pc3N1ZXMv
MTIwNjE+ICAvIGk5MTUjMTQyMDQNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQyMDQ+ICkNCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUBtbWFuOg0KPiANCj4gCSoJYmF0LWF0c20tMTogRE1FU0ctRkFJTCA8aHR0cHM6Ly9p
bnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NzA0L2JhdC1hdHNt
LQ0KPiAxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbW1hbi5odG1sPiAgKGk5MTUjMTM5MjkNCj4g
PGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMv
MTM5Mjk+ICkgLT4NCj4gRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE1MDE3MnYzL2JhdC1hdHNtLTEvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBtbWFuLmh0bWw+DQo+IChpOTE1IzE0MjA0IDxodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0NCj4gL2lzc3Vlcy8xNDIwND4gKQ0KPiANCj4g
DQo+IEJ1aWxkIGNoYW5nZXMNCj4gDQo+IA0KPiAqCUxpbnV4OiBDSV9EUk1fMTY3MDQgLT4gUGF0
Y2h3b3JrXzE1MDE3MnYzDQo+IA0KPiBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gQ0lfRFJNXzE2
NzA0OiA3MDdiZDg4ZDViNzk5YzAwZmY1YmU5NjM0YjJmNGU0ZWNlNzlkODg5IEANCj4gZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IElHVF84NDExOiBkNWI1ZDJi
YjRmODc5NWE5OGVhNTgzNzZhMTI4Yjc0ZjY1NGI3ZWMxIEANCj4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiBQYXRjaHdvcmtfMTUwMTcydjM6
IDcwN2JkODhkNWI3OTljMDBmZjViZTk2MzRiMmY0ZTRlY2U3OWQ4ODkgQA0KPiBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCg0K
