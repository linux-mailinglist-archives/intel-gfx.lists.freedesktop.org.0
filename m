Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2477AC06AEE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AFF10EAA9;
	Fri, 24 Oct 2025 14:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R5ydfsgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5AD10EAA9;
 Fri, 24 Oct 2025 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315844; x=1792851844;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7M1IMG+k6/fKyiKIF1o5ek2lnNqS3VD8PUkAeQUeu84=;
 b=R5ydfsgN4UhtsaDRZgsTtNyGHWkVz7boB2g5gKULGVtyntgN0yao503T
 CIqhYZ+jj59s5UJhZdWjrf0e1OmuWFSFQ4ft9dsgROc/+dQdGMX63ppnf
 XldOi31WVaqQ5phAIGhLAgEg8rp2sglWO42kLXtkQqTkDm9mPLM1oQIDP
 tOte15M3Ypy2v68ZUVUPscc85vzbDaxVLq5CmHk/JSDCTTXpg5nAd0jHX
 Dnq6WRkJIBTiB6jBYHIrAp7poSfAaZg47IU5u9gBxXOotKe6vEheCrq4T
 sU7pvrsjSnsYbGQa+WUUwH6qiPwwMkCxQgRuIhhjzdF7HDq31+48I+/wg A==;
X-CSE-ConnectionGUID: VdvL17uCTMesVrKrsiXbHg==
X-CSE-MsgGUID: bIwRigzYR4GbtdHvATEd9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74169346"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74169346"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:24:04 -0700
X-CSE-ConnectionGUID: ylZIEUyjRtiVuDKm6qWW8g==
X-CSE-MsgGUID: 3QxMHNbDQX+YLSFhswCWgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189569154"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:24:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:24:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:24:03 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tV0veHMmRqJNzHT93JaqflYl+x5E049Kvub1dRkjftyzLG6LvyqL5r41DyQ2YDPC/8alPKv0I7WgM/5QbQIwbGwvhti9kve8c7GClyGULIsAwabMSeu1MMDSkL1FoDIDx+kK1fPWMl4X6q7MyrbcvY7MbOQ631wlhXMrrIwS6N00hZwb3EIIWCtEPswwNnLN3ce7uc1Nz/p3EM8XCAZjIz8YT/AAu1roTW1/SdV/Oamw9Ovv2Dy2UnB1oNuOR2rXZvdruGBPwL3HK9xE0CA/qRfI/JUlqhC1nhU8GlEQaApRk0Vtm7EyIlW6os2mVr3kLUMC1EV13akwm9kkLQMC6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/xgR1IOzzpyF2zsMM/boOK+XB2HNff+dZsH8tddM4cU=;
 b=GvVsWuRPL16oU+kTwCwz93hSLL1pxp0STYEpIWg7TzZ3vrOjbI4S1d++rxKFrA9Ow3T4C7sFRnhTK5IMjAHuotVXshYde+ntvjakr61oT3EGrpuVee35+gNdInb8It8hjGgFYyt6BOuEeRVhqaAW7X0htIXIlJ6Y6xuUGDH1aKcTbzyAOa/+LIuZlCmmG3X7lGsIa9VxNmfDCEQTKwKUuUkCc0pbUI9vT4uAtDxqCX8F1ozwgJvufsRSuJq0h7cGSPtitLQeizxrjvggj/3/tFWbzegsd4ypfx5f9BBkLHtfJ7hQkGNepds7laT9Q2zF6QndU+Yj5DszAYQSY//qZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:24:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:24:00 +0000
Message-ID: <bc51a853-179f-4e86-bc6d-655282fbcf22@intel.com>
Date: Fri, 24 Oct 2025 19:53:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/22] drm/i915/vrr: Check HAS_VRR() first in
 intel_vrr_is_capable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-23-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-23-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0188.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 95ca53ad-e2f5-4fd0-a25f-08de1308f9d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3k1MjFUTE5RcDh3aldpbEpocEd6cFlGWjhrdUxMaGkrYVUxVXVsanFXRFFs?=
 =?utf-8?B?QVpnbjI3VTFwQ2M0NE4yVG5QZE9PNzByRkdTQksxSU82cytIT243cW82aHdG?=
 =?utf-8?B?R3U0cVdwRW10bFRVOGFPYUt5WTFDUWJuSytCSUtoTWg2RmR6ZWVteDY1TE84?=
 =?utf-8?B?dTJKRXhpcmFLbnpPcDJ4dkh5MmZVSmtMdU5pcG1FQVZWMW52OC9VU3hWdWww?=
 =?utf-8?B?bEFOTTFYQWs2UTBFamdaZFgzbnFtVG56b2ZQTHVKS20zTXRzV2w2cmR0YTU2?=
 =?utf-8?B?L2Z6UlhoMG1ZSllYSWRaMm5CMjF6NFVxNkhCby9iaU5ZbThINFE3Z0dFcHpx?=
 =?utf-8?B?SU4vcUZpMlp4M1QvWU1tY2NSdkgzVW1TOEt5UlQxMXdHNmY3LzN6eEpEVXd0?=
 =?utf-8?B?dHhuVW5jU29leGFxbkhKU1dKTmFyU0ExNytzcnZmWDYyRXlaeklFa3N4elVW?=
 =?utf-8?B?TTRieXo0cHJ2WFJWTjhxdk50aVgwM2FoaFJETjJMZ3UzNG5YSzR2YlNPSzg2?=
 =?utf-8?B?ek5RNE1XaTVaT3dHbTA1R0M4MFZyZ1VxTS9uckxlSVA5YUp5NW95cFZkOE9Z?=
 =?utf-8?B?UjN6QmpJcmFLM0hNRkliYlVRWDVJeDVkNFJvby8yY0wzaDN3S2tHREh2eERv?=
 =?utf-8?B?Z0hHOUwrRjY4Y2hVOHZGWFZXVVhpTCtiV09LRkRYaFllM0l6UVR6TzVaTFpn?=
 =?utf-8?B?cHMzNUJSMDcvVnk2SUJJOC9uYTRYdTNZdFFxNXdJNGE1enZEVzZrWW1ucXFL?=
 =?utf-8?B?NkFWY3dyYnRpSXU3Z0EvMTd0N2IwcFoyOGkvNStaY2k5MElPemQveldyNDND?=
 =?utf-8?B?eWVOL0t0SkNyaEcwdjI2bUl6OVhIcGdoVjRnQ2Fic1pjSzl0WTNyeTUvV0E2?=
 =?utf-8?B?WXdFN1JMWW1Rd2dSNGNxd0NyL1VsUitnYSt5RCs0NlozV0Iva2hzNVYwR3dN?=
 =?utf-8?B?WU1DWFhsMmtDVm9lZEQ5TXVGbXpncENpZnRNaUJKNzNnVEIwRE1KZDBQVnda?=
 =?utf-8?B?VERsZFdiczVpUFlrL05UZ0JOUEJiYWh6M2NRZ1h0SlY5NnFxQi83OEErelZM?=
 =?utf-8?B?ei95VmU4eWhsaHFJb2x5dFEvNDh0dk01S2ZjenNLaWZZZExscjFmUXFYd2Z2?=
 =?utf-8?B?TTY3dFNyWFdhdExjMG1QczJmRzlvakhpNUUwS0VDU3RGbmhoWW1CbnQ2RzFW?=
 =?utf-8?B?Q3B5N2NyeEFUdXI4cUZ3MWRzdGR6TDZnWW9SN2E3dU9oUVJpMjFNVDZFODVH?=
 =?utf-8?B?V1lpcWlWcW5Sd0tFMjVrUWFOMHM1Q2RGR3NXRG85bGdZL2ZUbS9jL0ZUeC80?=
 =?utf-8?B?ajJmQ3kvNUh4NTVwWkF4MlRJNTNBWEg1ZnhQTTd1UHZYaUxIaTFKeTUyZTNC?=
 =?utf-8?B?RElGdzQ5QkN5d1JEQ2RYV0ovMkRrc3RqZzkwTzFDaXFaK2p2Y3ZWZ3BVUlpv?=
 =?utf-8?B?eitBV0Y0NXo0ejZ6Q3FYY0tYSXdMdG80WCtVL3Q1VEtHUzJacTJPSzlNSEVl?=
 =?utf-8?B?UXFpT3dPbC9Fa0xsbmdkbEpjREZkN2lSWmFGSzd2d2RMUWcwRVppTUZURWRO?=
 =?utf-8?B?cFZVZzJtZUF4bGVtUkh2NFNtYWpHVGlUOGV1dUdRa0JpSFNCQnVLc3o1Y3Bp?=
 =?utf-8?B?R0RCNG9mbGhHZE4rUGwvR20yRUFoZFVQYkRPWXl1QnI5MEEyOWdlRU5pWHMw?=
 =?utf-8?B?SC9ZNGhWL2VVQTBPU0NTKytDbG95bFpZc1ZIbUdQSlNGbG5RWE13MGJoUm51?=
 =?utf-8?B?SDhxT2QrR2lnT1JtYTRPS015UnZpemJabDA1dFRUbGxwWUQ5R3RRSzhYWlg1?=
 =?utf-8?B?L3FibEk3dUZxT1JRb21BWTJXU3NIUHRvbUh4V3BiVmgzODhQMmtFRUFuSHZC?=
 =?utf-8?B?Y1FMWUlJYzVJcEpVRW5mdmdPV05NTTEzbDFidms5SFR6dGVrdlllYXRUaW5q?=
 =?utf-8?Q?+LIFrG0Rnhk1wZasORhTj1gnIy9CIZvT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUwzY1pDbnRMalFLcUJlZUFYOHR6dk9MTkZGUUZEODZ3Tmk0UmZOZ3g5TXNn?=
 =?utf-8?B?VmRXRWhhL1lyNU43RXZLdVNWbTc4T3hiaHRHUmsrWnRIZ0FVU2lROXJ3VzRs?=
 =?utf-8?B?Vzk4aktmMHM4RW1KOUpSSDJHbWZoR0MxWnROMjJNR2JnL0pmdldhQ0RrREl4?=
 =?utf-8?B?Zm5VUVp5eFhjcGhQdzRCZE9wMDNmYVMxMDdHQ1FGbW9YTkVEaUNxNEZxYnhv?=
 =?utf-8?B?bTJwVUhFZ3NvdTRGWmdWUmNGdGNydUE2Zm5qM292aG8zalBUZUMwMkl4aE15?=
 =?utf-8?B?MkFRUHNHbnRHdm1FN0VERjBkL252NERhOTZBMWw3YWRxa1FjNGpiVGFwSjZI?=
 =?utf-8?B?ejlIZ0pDaXRreGtXN3hmdGFWMDdlbURVTUVvWU1qbWVyQXZGVEJUTDZlNlNQ?=
 =?utf-8?B?cldoZHNEaHJINXJJT2ZwMUFhVENGeWppZjByWEg5TFdkbmpybXhkVy8wOGJy?=
 =?utf-8?B?TWRmWUdLQWw5MURiVC9PTVVHRU5QNUI4QUpEOFptWmx0cGF0aWpkZ0FkMmNJ?=
 =?utf-8?B?YlhZc0s0OHlZdzYwWEQ3TGZzbjYwMVM1bEtCU2tESEJEYnc2NUxTOGhOVnQ0?=
 =?utf-8?B?aWxwSFhQbTVRejBvcXkwUnM5YUJjaEtEaGVISFpuUmgxRVM4S3NjU2MxTlpC?=
 =?utf-8?B?KzJ5M2xwRTc0MHg3c0ptakVITVRjb01DSGh2M25ENVBnWkNGNi80d2VXTUVQ?=
 =?utf-8?B?RjdaVU1DVityUlEzdVRqNi9ueCtpOXYrK1JvOVpGVlRSSTFiUkV2MWRWMnU4?=
 =?utf-8?B?MHJ2UVpCRnBaeEdvRFBZdDJsYUZWdGRxajIvcHgxQ0xNdjlUbW03WE5hSFJN?=
 =?utf-8?B?eEVxRitCcWtLVVFIRnBmQkQ0V2l2a3JBc3NxbHhiQkNWcDA3RitwcXlyQ0ow?=
 =?utf-8?B?RGhDTHBzcm5DeVZ6eEMyZHZkSDJ0d2hER1kwemFFdFI3aWFvYnN5aWNqb1R4?=
 =?utf-8?B?ZVJVTTgxQ2UyVTdLeWozYVpDYUFGam9SbDlNbTM0RGIrNHE1cmF1MUZWczEy?=
 =?utf-8?B?T2I1dXAwdUlmMjltaldHTzJpVHgwdTNTUlVMZlJWbTJJTjBwdjBXWWY3U1My?=
 =?utf-8?B?V2U2UFV5ZHNiTkZmdXV6T1FpUGxRZ2Zoc1RkaWdZKy83bUFTZHFFT2s2Vmw3?=
 =?utf-8?B?S043RHNramg3ZEJYL1VNRmpCb2xnNlRFeXFXRXpCOE5RdUNrSGZiUGdEdDJt?=
 =?utf-8?B?YkQwL2c0d3FCZlFvbXB0bkl3VzFTVHMvb05ROEVBdWZNTC8vWUJ3aWRNQjc2?=
 =?utf-8?B?M0VlZWlzWnhIVWtEVlk2RzNHQzl6SmVvWThaanM3TExac2FIVG5OSDdPYmU5?=
 =?utf-8?B?aE9TdUZLRUc5eE9IZTZWNU5ZL2hoN3EvR1BncVI2OXpoSEJEcXBNTlY2T2pQ?=
 =?utf-8?B?alM2WTRxREVRRXFZdnQrNkZML3JhdExTUko1YmtlSHZsTmFJYnRFRU5SQUMw?=
 =?utf-8?B?Y0FPdjhXT1VoWHl5c0hEcjZlaTQveVg1VG12NkZ4QXlETk40WXkwUDgxWU9q?=
 =?utf-8?B?bXFzUWlvMG1ZRURXRS9TSXh2ZmtjTHlpWGJlL0JtOXV6ejhjTG4vTGRiZTM3?=
 =?utf-8?B?dGV0Z1ptcTcvS083OGtnQWlWSm4vOWh4K0VzWWZPUlRwaFBLVGYvV2t1VlFv?=
 =?utf-8?B?Q1pDc2diVmc5L0hKS2FVenkxbWhPakxIRU82V00zUGdNVmlFV2MwYjhmUmNI?=
 =?utf-8?B?RVRjRG9jc1UyWHVwb3hTdWVGTnQzN3p6bHE3QURmVnlkVC9nMTd1UUJEVmVM?=
 =?utf-8?B?NU11b0FPMzQrcVRnM2RXOFpPNGtqalljem1UNE5QVGJoVUdwZjNQTk12SzBI?=
 =?utf-8?B?djRMWG54MktGMzQ5SFZaRzd3ZGtjZHVWNjdWeDRsSnEreGg0R3U0K09tTXVp?=
 =?utf-8?B?S3k5eVI2aDZVQ1lkcGdoaUNrYkwzaURyenRubURNVDdoTlYxZitCbU5uVHcw?=
 =?utf-8?B?TzN6Ykh3N3hPZzFzRlczdkhtL3pyT2ZhM0ZHcjhmMlJDd3BGdDVsUVN4Q0ZY?=
 =?utf-8?B?YTFEMVBYV0ZlWFdpT21kLzBlNUtBVDIyUkNKdktleTdnRFB3ZDNHWkgyUlAv?=
 =?utf-8?B?RkE1YmlqcGlIcThZcXJ0NW1qUTdrVjBYZVZ1UWxZZndsKzVrTXpMSEk5K0tM?=
 =?utf-8?B?ems4WmNZNGVsbCtmeWc0OTl3RVE5TWJlU0M0alRvUExGbXFvWm9tNEhUbGlo?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95ca53ad-e2f5-4fd0-a25f-08de1308f9d7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:24:00.9027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uelP6TotVB8t2GoVOYfZfpAMTAsKUgV3macIIkm7x0TXjy13tlmxE5eqJvetyrvCqK4xB/BRJbtealhXPBSv0XaEmy5Wc+qezHCDq0sCtqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> There's no point in doing all the other checks in
> intel_vrr_is_capable() is the platform doesn't support VRR at all

s/is/if


> Check HAS_VRR() before wasting time on the other checks.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c28491b9002a..00cbc126fb36 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -25,6 +25,9 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>   	const struct drm_display_info *info = &connector->base.display_info;
>   	struct intel_dp *intel_dp;
>   
> +	if (!HAS_VRR(display))
> +		return false;
> +
>   	/*
>   	 * DP Sink is capable of VRR video timings if
>   	 * Ignore MSA bit is set in DPCD.
> @@ -49,8 +52,7 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>   		return false;
>   	}
>   
> -	return HAS_VRR(display) &&
> -		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
> +	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>   }
>   
>   bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
