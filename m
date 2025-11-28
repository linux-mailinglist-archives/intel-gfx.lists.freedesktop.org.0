Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3BFC92248
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729F810E8F5;
	Fri, 28 Nov 2025 13:34:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GBuHtYm/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D736810E77A;
 Fri, 28 Nov 2025 13:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336878; x=1795872878;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XPAOAId5SD0PxzL4EMusUWyMU/e7QZhpm2yJ2Irs5bU=;
 b=GBuHtYm/ZaDQhHXRU4hvNBZCBWYHC2yqZOY3B9wfruZcJkGGmwtBDwLd
 GuJ/ppaKoGybbPv0LhitD6M0r+pWqj+uDggFoV8CgOrb4B2+bspNqylzN
 xJ9dnrPhM2en6reZy5yTPM7Y8AB57mrjJwgqWNhd2ledO76/ZQ5EwVmFJ
 4h0x+DWlFoWNRXIQn/ckmS0WUp1wb2J/FSq+JNyXGdr/DHy2sTJmleh8F
 KqMhMnNxM/GnIqgdUQSxNTabJAtuPB+Zpu17Z48+bYTQxD4QwTtwr+g40
 NK6fTbUHwzsS3FTMqw8B7msA4B8L2AOscBaPG/1Fo/lVq9y1wmDfOPkTO g==;
X-CSE-ConnectionGUID: /7CP9SDTQpabOqt+Ew5kNQ==
X-CSE-MsgGUID: s1wrNZ3pQ5G46+nc6Vkj+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66405214"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66405214"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:34:38 -0800
X-CSE-ConnectionGUID: VaEA70ZUQZm12yM2ne/phw==
X-CSE-MsgGUID: y8Zv1O3kRkG/SNah3YTsQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="192722479"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:34:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:34:36 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:34:36 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:34:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TeXizUn9cNW7V+XieY5cZcgnykZaM42hrJOOk8Yyg9Kv86jPPSSkDw1YgUnjkDyCdxnkE6siX4m9ZB+pJ6RpDxvLeg8pVDi4caZEaxYOQ2ZX+3P17JYmpJqUTQUdtAYPZcBf7eruwKofqiBQM2LrbklbsJ3KxViOmg3wuORUDc0PU0DGDhI7v4lKtqtlsympU7TDzVMeeURvttvx5tS2nuXxKO9tyVwMvwhjqBXZeVgEEtlJwFcqJey5ut0oHC+jXAb+iO/knnDuh7phUub8Y1AfrWc4AL2RwQEi6B19N9Zec5Qa93+dSlCUrHVyK4UoFH/hkghoLzRjBf8tHWG0NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=klOhH7srYeXxr8x8rm2rWae1HX6g7LrZiteLgP6A6s4=;
 b=hNoBR8CjgE3ren2YmiciN7MRfZZs+qAwuR5ZBtoRqc5pN/0kqn2uYDNkg2J27AShXTT+/75tpscefnOfpw6h61BKYyJI9Ha+6fbjKcGV4i92zV+npSMNIQDosQ8umm1HHHBlfFKUDGKDSZAXCH7/3HIofqjwgL7a7OT+hGQX6wWwVxsFNki3vZoQtsHFJLyetbiVKWvWzZrASQydt3mbZb0rC6I5Esv5QvLqBDU0Zg+QZP01cUxFeidokFBq7PAmCj+fLlJuLe4d2t1nmQx8h0vTBOv2dqeIPZxIE/xQ1OdMDcv1knysHwVrNDdCzIAx9SxUT4+xllMjXbwHMDbyNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Fri, 28 Nov
 2025 13:34:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:34:34 +0000
Message-ID: <eecf0b1d-7a90-4624-b462-0829b6d6094c@intel.com>
Date: Fri, 28 Nov 2025 19:04:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 10/17] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0056.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8384:EE_
X-MS-Office365-Filtering-Correlation-Id: ad0e2e1f-df3e-4175-95ea-08de2e82de48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VG55cHZQc0h3aHpXU0ZUcXVVczFDN2Npb2JyMVdQeHpzOXllT3oyMHhibHJV?=
 =?utf-8?B?RFpybTVFUGg1U09haThyWHl2VStRZUI1SFVCdlZrcThNY1B0c29aSG1FRGh5?=
 =?utf-8?B?U014c3dzblFzbmd6ekhEMHZ2WVREcWRRbVRwTmdGaDhOL2FGdVRNTlNBOGM5?=
 =?utf-8?B?UWNaeUpCdG9HL05hUkVvZnJqUlpYcDhkR1N5bzNqZnM0bEM2clA2bWVDRzE3?=
 =?utf-8?B?UUFIQldUL1VzUVRjc00yM0hnK2dYMGd5RitpN0pQdmVWOE03Tk5JYkxtSmo0?=
 =?utf-8?B?Qks2TmhvVW5DTG1EaW1BN1hTM2s4QytndnpWLzUvaUlwampET3NjeVNhSnVI?=
 =?utf-8?B?cXUrVTkrUzFWcGJtQVhxQUs3QnNmaG1TQXhVcFRaWWVTcWEzbzhYZHVqWExW?=
 =?utf-8?B?UVorMFhpMHgvcEtKWHBBV0M5QzdsN1JmblphQk9mRlB4enJIbzNpSUErVG1h?=
 =?utf-8?B?SkJBZUcrSWQ0RzB5RFdMUG9yRWVLeHNhdGNjYzJidmpvRythcWJjYXgwZ0xP?=
 =?utf-8?B?djQ3VnZjQXJwUmdhWU1Mc3RRY0ZHaFFrRHB2N2hDQUpBck54K1lhSXdlcGQv?=
 =?utf-8?B?TmdvZ1M4cFJheVVHUzk3SjhsbWdsckJGU0dHamxSdnE1RUVYVkJRS0ZlQlhR?=
 =?utf-8?B?NWk0SnROZDNaeitpalhJUldZdzVGcXhKT21yazFZN3RKOExoQTJKYnNNR0tU?=
 =?utf-8?B?a0JOTWtldmovd2M4aFFpQWR0Qzg4eUZ3RWN4NGIveTBuYWdIQW82OEszSEFR?=
 =?utf-8?B?TWg1Q3phV3lyVE4vd01xcjNJTkZXMm9uZXFSamlKSld2TGt0QkNQUGtFQ0tM?=
 =?utf-8?B?cVhXbmNzRUlXV0o0TE1ZN2FNZ3hXcXBzdXArWGtwdkJiMlZEaEVDSlU1QnJL?=
 =?utf-8?B?QVIxQmEySDlEa2FTdDBCanpCVG1GNzE0cGpRSmlnalRBeHdzYjVSRElpU3dZ?=
 =?utf-8?B?d2JBWU0yQXZRRHNSclFaMmY4RVVoZEptaVNZVmZ1cUtBSDM1Q1VKUG0rMUEr?=
 =?utf-8?B?RVFUbEozQ3JPR2F3OTN0dnBEd3VWNjFNM2QvcFoyczZrMTkyQ1NBbXMzK3JQ?=
 =?utf-8?B?VlNxN1VMSjdwU0Q4UnFreHlzOTYzeldMVVdIZnBqMWViRVJvNFJ0WExZOExQ?=
 =?utf-8?B?RUZVRnc0UnFMMnoxRFBvaUJzZ1ZXcDFEZTBkNVl4Q1cvNFRqMWgxU2JaTlp6?=
 =?utf-8?B?TFQ1TzVtOXpGOVRwOUhrNURsaHVmWi95ekltWUVyVFZNRm5LYTlGVU5BUThF?=
 =?utf-8?B?RmlXZ2w5cm5MdXY4RzVoWkFHWVRWWU9jOVJiSTdENU5JSzB4cDNoY05weVQy?=
 =?utf-8?B?dkF5eDNTdGRWbjNvOTBOVGVJTEhoRVVSWm56dTRyMGpocDJsbHhDbE1NWnhY?=
 =?utf-8?B?RjV3bGxSU0tzUlFwR2ZmaGR6WFhDMXdyY2FoV3lMcHpQUlRIVU1JWVNNM25J?=
 =?utf-8?B?K0ZocVhWTUoyODdHMDN4TDhFdGhLQ3BCYlU2Zko2SmJqRlBHYWtDallvMDdv?=
 =?utf-8?B?V2pZRU95SmRDMmgxejlIc1UxTXFwQk4vTlR4c1MzNGxoRzhoWHVwdU93eXdD?=
 =?utf-8?B?RGV4Z0UrWkNVaVRsWHllL3ZHRW1tOVd2L1EwQUFJV3pGelZpWG5QYjV1UEVp?=
 =?utf-8?B?RXpJa1lTdlVmTzRSbWQvaHNYZ3MxSHB2amJ3KzlnNG1vZ0xyVmNQMjJZYUJB?=
 =?utf-8?B?Z1NjYzRacmdZZEdGdGsvYkxuaStMcEl3SDVGaGZOTHRyK2pISUxqNno2MHpy?=
 =?utf-8?B?T3ZOSXM3Z2RvcDFoREp2cjVDbTZteFlhVkE5eHZZSU9XUTdiVnc4bHE1QmtU?=
 =?utf-8?B?Z0c5c2dDRFpWY1FMMkc1TFUzbXdvQVQ5WXYwZHdFQUVXbTU5clZiRVdKSE5k?=
 =?utf-8?B?d2RJSHJUUi9rNHNCY1F1aG5UT3pueG51OWpLRm9CUzFGQUZlWXNrYSt6RmFu?=
 =?utf-8?Q?Vl0N/k/AZ2jbKrDg2QPMpyvjRLBr6nl/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3BvRDhFaGZpTDM4ZXd4dXg1WE5NdjJzMkxBV1BlNzFXZ0FDK3NORnBjWHFV?=
 =?utf-8?B?a05PdGlOZmlmUzlJLytzcXNDQWsvZUZJWC9hcHpXblZ5MWczOFpqc0NWendv?=
 =?utf-8?B?UndYUERJMkp6UkU4ekQyUTdLR0N5dkRyVEZDZzJZdWpUOE5pSWF2ZmdOT3Fq?=
 =?utf-8?B?SHcySitGUTJoOEpXT3BPeGJYSFM1NTAxTnEvWTdrQ3ZZVVZVNUJoUVBxdzMr?=
 =?utf-8?B?d1pJN1dTZ2dhMnBiNmVuN3pBWlJ1V2R0UEhUdnNiRlBwYnVVaVZkQm93ZkJN?=
 =?utf-8?B?eEFOYzdER0k2NVJUODZYNHJzUWZrMWtOak5RQk56Z1Y3WlZzZVpONkZqek5S?=
 =?utf-8?B?Y3hoeWl5UDdsWXdzSEVHbFFVZ3l4RFUwYkJnMmJlTVJ5OUpFK3h2THZnN2J2?=
 =?utf-8?B?TFcyM09lalU5VnFVREl1VEwwRCtNbDdZU1pJUHdDWWNDaFBBellNUnpQNU10?=
 =?utf-8?B?TUk5cnlUMlVocWcrcHlZdjc2dUt3QUFITUg2T0VmZ2xJUk5VZkYxeEh4bzRN?=
 =?utf-8?B?RXhPdTM4SXBEa0tGQWNuNjN5UkdTTlJKamp3WXg5UEVzRjhPQzM2dDFobHNL?=
 =?utf-8?B?OG9SSlhNLzdEVFRLU0lkTWRKakEyajlxYzR6OGZtQWQ2Um1zaHRWcWMrT1Jv?=
 =?utf-8?B?bVNRSGU2L2Z2WnlxbFd0ejVaYTNHVG9vWU4yZXcwY2s1ZXd2REc3clRRbnJn?=
 =?utf-8?B?bFJ6NFhmY1NCb1pVckdSdFdGSkNkV2NsZTZQbTFBaFo3Z21VUmVLazhCeURx?=
 =?utf-8?B?cGg0VGIyK0xVb01XREkrRWdLTWg1YzRHTERjWE5JZjk5OVBVQTlaM2wzWFdD?=
 =?utf-8?B?ak1uWjRFK2NsOW9IRTgvaS9MNGI3d0ozWGEydlNFamhMTTFCVEVCZWhXRTRt?=
 =?utf-8?B?dCtLSGhMUlNtYnFNbFdRRmJkdlljZnBVWjRiTE44bjZhOHk2TSt2VFBRcVdG?=
 =?utf-8?B?bkZ2NUdhVTdDMmJJeTkwQm1MK0hkR3FDMkNuSUlyZEZxbVFwYytQVEZFbFRp?=
 =?utf-8?B?Y1VhOXRvZHNQaXhjVU5DZmJ2UXh6N2ErR296VkRUZVM1cG1SVE95ZFUvbksz?=
 =?utf-8?B?V0pRTjFRcXFzQTQ0ckQ0Zjd1MmhuSzJ4NVJlQ1M4c3pvS251aDBYQklmSFN2?=
 =?utf-8?B?T1h1VjRUcFBiZU5zdW5NejlaMXpXdkkzb2FXckFjNjNCRXIxRGZWYkNQVkxo?=
 =?utf-8?B?OEJNcVlsTkgyQklXNGRLS0ROekRIY1FVMW9BaGpGSEdlTjR2Q2tobFBxdzkz?=
 =?utf-8?B?cGlnOEx0Mk9SZW5MWEJja0RRWFpQQ3I3eHBDVDJKNU5pb0UzTVdQNnlhYXU1?=
 =?utf-8?B?M1g0czVRMXBmdDYzMm5Zb0JwL1ZpTW9Ga0hxOGNkZCs0NjdXYmtGSE0wVXp5?=
 =?utf-8?B?OWtuVmhoeHFuVFd5Z0w3R2ZUNjliRFNnejRSM0FUbTBnWmxqM3VBd3JBUHlO?=
 =?utf-8?B?WFpMNFNSZGVITVNnSjY2L3ZOWVdWUFF1L0FBZXNDZDI3ZklGYkpzSU14dkVu?=
 =?utf-8?B?MGZjVGFoZUJnVExjam5xazNJZXBEYW1Hb3VLMDV3SG5aUEtQVHd0RzVJY2Zr?=
 =?utf-8?B?MmZtVi9EcmlJKzVsUW5jaWdGK0Zwc1FWR0kyUVFXMnRvdjBzSFBDYm5xOEVB?=
 =?utf-8?B?bW8rYko2SHpjN0VJK3B1QS9YZ21GSWplNzFPck9ZQzFzRUUzOWVMR2lMdTd6?=
 =?utf-8?B?ZENBMWR6ODJLODRkU0Vmc1F0WENxaHdFbXhLWlE4MjZrS2R1YlNWWUVoRjJa?=
 =?utf-8?B?UFFaTzhYV1pjZlJLZVZFVmxzQmtBcFUwcE1TdFFYZmdKVHB1dE03S21uNGJB?=
 =?utf-8?B?UDBYRTJGWTJCRFVOdXgya3RHZmd5RjUzRXdyZmc3YzBEMnVYS3FwMHM4c0dy?=
 =?utf-8?B?NmFlS3N5ZTNmeUJ3L0xXWHNLZC8reVVqNnNOaXZNdFlCUXJMOWFwRlFSRitC?=
 =?utf-8?B?OGdkZk12VVpJc2gyb1dOOTRtaStSMHhiOG1nYnlNNk83Q2Y5RUczS2hkQWlt?=
 =?utf-8?B?Y0FkeGJYNUJMV3dRL1dOQmsrc3FRSURUNVdhNkI5V0RSM29PMXZ0WCszdDhw?=
 =?utf-8?B?MVFYbysvOGdyNi9lTEovQzNrdVNHeDVHbE51VitXREdyaERHR1NPditnNHB5?=
 =?utf-8?B?ODBHQ1NJVm8rdkxoRFp3MjhFQlYxd2dsUEJoV2RIdEVkR1lOY2lES0FOQS8w?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0e2e1f-df3e-4175-95ea-08de2e82de48
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:34:34.8708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: em+hNanjHmY3cZyat/8cMw4qebppmQ+mYg2xqGM9XVkT0gDjCi7oEE75bLSf6STQ6CHXpASA6QKK0O/Sw7ouKFYilooXBQHg/eSKKM7AN6k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> --v3:
> - Write registers at compute config.
> - Update condition for write.
>
> --v4:
> - Address issue with state checker.
>
> --v5:
> - Initialise some more dc balance register while enabling VRR.
>
> --v6:
> - FLIPLINE_CFG need to be configure at last, as it is double buffer
> arming point.
>
> --v7:
> - Initialise and reset live value of vmax and vmin as well.
>
> --v8:
> - Add separate functions while writing hw registers. (Ankit)
>
> --v9:
> - Add DC Balance counter enable bit to this patch. (Ankit)
>
> --v10:
> - Add rigister writes to vrr_enable/disable. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 76 ++++++++++++++++++++++++
>   1 file changed, 76 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 411ae5da3824..11f06a5b854a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -767,6 +767,80 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void
> +intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder),
> +		       VRR_DCB_VMAX(crtc_state->vrr.vmax - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder),
> +		       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
> +		       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
> +		       crtc_state->vrr.dc_balance.vmin - 1);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
> +		       crtc_state->vrr.dc_balance.vmax - 1);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_increase);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
> +		       crtc_state->vrr.dc_balance.max_decrease);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
> +		       crtc_state->vrr.dc_balance.guardband);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
> +		       crtc_state->vrr.dc_balance.slope);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> +		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
> +		       ADAPTIVE_SYNC_COUNTER_EN);
> +}
> +
> +static void
> +intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!old_crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe), 0);
> +	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_VMAX_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +}
> +
>   static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   				bool cmrr_enable)
>   {
> @@ -813,6 +887,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	intel_vrr_set_vrr_timings(crtc_state);
> +	intel_vrr_enable_dc_balancing(crtc_state);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
> @@ -828,6 +903,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!intel_vrr_always_use_vrr_tg(display))
>   		intel_vrr_tg_disable(old_crtc_state);
>   
> +	intel_vrr_disable_dc_balancing(old_crtc_state);
>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>   }
>   
