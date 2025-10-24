Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52271C06ACD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B75F10EAA7;
	Fri, 24 Oct 2025 14:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nde50czm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8C310EAA4;
 Fri, 24 Oct 2025 14:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315727; x=1792851727;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uR+4Zy0VabzEwJ0IL/JT7ugPKP0bT2hg8EiWGf/YPGQ=;
 b=nde50czmLMIEmCVlCYg8ooBNMDGU8TgzfxUsajXA3e44A3qKcGSYumyt
 zbwG1+tzANqfUpb29I6NDOgmSKKJxAWAWSmLr8FJKlMSuO8YR0yB/kPpC
 RksJCAXJ5qV920MG0VA1LkO0R5pyey8U7KWkFDGtS3lSKWwC6VPamz9/d
 0JPGpwq7wiZ7To8pPvpUQsaXsZsAgSWbwk3y8ks3CO3VR/JJK6fZVuMvH
 b2HNjwHwCTmtN8JDBX4zSLad1op4ojVTGJdn8bry0CUF9y3ZivLINaaBN
 EDyliyV5tVNC45K9rI3iTxeqX4Ca2+uyWD5XJ8RfLXzznxbgjb3mqIV8m Q==;
X-CSE-ConnectionGUID: ABbEVoWQTimvuWkjEryc/g==
X-CSE-MsgGUID: c8Sz9gbgSreF3Dvcn5VoLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66113694"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66113694"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:22:07 -0700
X-CSE-ConnectionGUID: /tYnQgSiTsacu/KshdVRSQ==
X-CSE-MsgGUID: phyv38x0QR6Y5Sstgg/JPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="215097430"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:22:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:22:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:22:06 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.45) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oKiEs8lEvYgrKTYkfxzrZBH1HpE5zhSFCLuXl0aTfD3gKPKS594oRSZZZ0aL3XCpjFDDGBIDQEhgAqt/1kF+p6Yc8TtOQIE0Tf8DcaZKaGUMBVm5e2FVTLsCdc8SXFBBZoz6Ckc6cJSaePqjcKRgL0FswTYMuTYmaDhHuzwqKasaKERnUsgO32wT1jUeTq2/E2ddL6hGjM6ESeDABw7T/FD0qxrycz9j1hVP8KsFm8xn2ohQZUbfHRk1E7dfSi4H0KWqD1bvm0/Kd7el/vFNGDcxJoWj5ZOB99RHWxDHhQ4Q3rY1uOK6kmSedjkROYQyQHFcHFc9OiWumAScYk9oHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jfVhEXkcRuWdEyqiPstsmP0VYCO/j9D08WhUsuiPndo=;
 b=wVg+G3KbxsP3uEmhGIpUNor8OKyZJ3sI/RrUVtXPcrUtHLRi84tUspoG2BM6hnlWD2C2fCv+AHDa85S15e8uxNJ1vwebyGXgfLB/wtbOQkQkoQpYodVMTIhsA55M9vYpBWUyf5wV1FNpK/l9N38L8dxCEpcz23A4yDfNecNqHYIKVPV29cKNBRVtOSIUnC7hx3s4pfTwsOLn8X75bnkbDNp/qv1KX0ZLp71dCZQyjcQ1W7qq7sG2JCAMlSmiOrun0pC6PvDZx4438A0PG459uPW6HkaKsd6wWmuN17lmNTTlgq52rI9QVFDqo3mqoKuSF9C8MKSxSt3NUFDAvplABA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:22:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:22:03 +0000
Message-ID: <66d7cd20-e4cc-4de9-b0f8-c7b218744085@intel.com>
Date: Fri, 24 Oct 2025 19:51:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/22] drm/i915/vrr: Update the
 intel_vrr_extra_vblank_delay() comment
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-22-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-22-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8231:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b879e62-319d-4082-7bf4-08de1308b3ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dW12WTFoN1Z1eFdJT3ZnNnFZTmJldEpuck16OUR4QjVYVWdNbFBxN3BJY3Bt?=
 =?utf-8?B?Z1pZc0hMUnhmc2VrMUlnVmllUTZHRDdEOGtLVUloaXR6QmpLdWlFcENpdkx4?=
 =?utf-8?B?WnlRS3F4MGNnRFZjTm9zaHZxdno5SkwzdDBGVDVNd2RTVTQwT1FaQXhpbkgy?=
 =?utf-8?B?Zkd3T2FORlB4cFJRWGZXRGZZSERzTTk0bStzclRHRmN6Q3dITHU2Qk1tRms5?=
 =?utf-8?B?YWZUNTIzNCtOci9zYjRQNzB3OW55N0htelVZbDVYR2FVV2tiRm05UWRYbkJN?=
 =?utf-8?B?TTk5VDFIWnY0R3huVjdQUFRiZHVUUEFmQ0prY3BFMExKRldIQTE3VXA4RHNH?=
 =?utf-8?B?VXE2RW84SytTbUE1ZHV4Vi9OaTNLbEU3VzMrVGRkMGt0aGxUL21ZcjdWbmtG?=
 =?utf-8?B?bjhkUDNhZ0grajVLVm04eTdNNGVUMDFncGZWU3hsamdvRzFYQUlvYWU3Slpr?=
 =?utf-8?B?UmMvVG9za0NZZlIyY0srOUowOVhvNWxPZEMxdXg4Ty93TTJ6dW5aR1J3aW5O?=
 =?utf-8?B?YTJmdHJLQVZOdjN0NEpmWWhhZ2Z0Sm40Zk9EK00xNGhpdCtUdGVDU1F1aGNY?=
 =?utf-8?B?TzAxZEVFSGl4VmF2ZUVQOFptcUhMZ2F6aXBiU2VRWVY5cEQ5RkhvMmpnYWVa?=
 =?utf-8?B?YjZ3RGVRQW8xMjdBQWd0cTRNUWVzTmd0NjdnOTZRMU9YVkljK2dUSkhtOVI2?=
 =?utf-8?B?WXQ2UDdkcnRmbVk3UloyQ3FkbkN1S1ZjNWt6dGxxUzRDOHBzRDJhRkdlbkNC?=
 =?utf-8?B?QXAzZGFRN1A5ZldheUY0RkhuZGdWK1F1Uzk3WHk5RFFXUEdWclZFTXQxTVQ2?=
 =?utf-8?B?eStqVzZiT3dUc1g0bVdXYTR3aTJJRE95Y0d3U3hiN2xad0o2YnhOL05pVWxu?=
 =?utf-8?B?Rk9hZXRubE9BV1pBSmpxQUhsMjhwWDhPaEQ3NHl3Z0dRTUJqZ2V3eTh6cGcv?=
 =?utf-8?B?VWpUbkFMTnRrUW41cmtGd2kyaXd2dy9nQWJueU1vSVBZRW5NMTVQVm55K1Er?=
 =?utf-8?B?clhuV1hUVWVHcDU1TDc0c0dEZ2gxaE1mQVVNMXFOTzlMaitNNWpyNTFuR21h?=
 =?utf-8?B?a016L0U5K1NFQk51T3ZNZFNjdmowZlQwNFhwVlVIbHZaQkVmM2t6U2FrQXVR?=
 =?utf-8?B?VXlaNmN6b0huSHlIRnlqNlBYdC9VaVVBcU1pRUVZbUx2YXNXU3JyZHJSSnNN?=
 =?utf-8?B?MGxyVWlNUDA5TnhmM081Z0U4dVBrbWY0YjRBOGJWdDg2ZjJRZXpVdFhiN2U0?=
 =?utf-8?B?T2JnRHpramdRTnMyUk8wdGlzclkyTkMxN21DZnducUR6dXJCbkdmanNhTnpj?=
 =?utf-8?B?K0dnc1IzbXhQWm9TeWh6SnpHeHN1aENFb1dOUk4yUHc0ZGRDbm5mZnNUdk53?=
 =?utf-8?B?NWRwUW85WnZzdjdORnBsYXZOZlErS0xlbUxLaG5IYWt3cGIyN3RjWCt3a0Uz?=
 =?utf-8?B?S3Q3VGJrMk9aOWVPNXpCd0orV1l4UWFsYUloNnJJZDdzTk02VXVvb0wvMUNM?=
 =?utf-8?B?NmlVQkxCUDhNbCtQTEdPSkdTSm9xNnU0VFE2b1E4UkhqMXppWmJBQXNQQXR0?=
 =?utf-8?B?V01SWXdtZmZIZ2t0cUlzTXRZN2hIZElZT2RoemRMYkFrN294SEFuN1VnNnQ1?=
 =?utf-8?B?cHYxSXVNT2xBNUV1SW93SVUvaHRBRWpxcDhHd2NnSEhJcE9QVUhXc1duMmUy?=
 =?utf-8?B?NUxqcTlEWkJ6bWpvV05ZODRIbTJMVkZGYVIzZXFpbnNYaUVDbm44V0VGemZv?=
 =?utf-8?B?R28rNlJ6dnlreHIxV2Q1MTJNaWk4R21jYVNWNFdkd2k1bGl0THdXMndWMkNt?=
 =?utf-8?B?alBiN1hzR2tHNEhFSWFvRklMeVYzbG5OTDhVZWpMYkdsd1YzUlkycG1xQ1lY?=
 =?utf-8?B?MHdCdGhNTE5LZW9SdG9yNDl2K3ZkbTd4UGpLOVp4ZWFtZVJQVEVPbEovVURP?=
 =?utf-8?Q?MAr9+vRpMRze8H36yLyfTwwa+h6jI1WS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWtxSmVPZXJLV1ZwRzJ3QVh0ejNSVWJyU2E2SnE0clhMWU5uVHR5ZTc3TU5E?=
 =?utf-8?B?dkExYmR1SVJJdXE1QVo4WnBRaDRqVWxkZ1NUQWI2djBOR242bG5BR0dydXFk?=
 =?utf-8?B?eFR6WEk2QklwTWt6NEFybFBGMzNHN2VKSlA2d3l6SERONWdvN3g5OU4rckQx?=
 =?utf-8?B?LzltQXVDU2djdythNUpGZmUzZXNUNFNrQnhYRGhidmFBcmlSUERMOUNkWTJa?=
 =?utf-8?B?RkpLQ1FtTGlHdk1vSDVOSzNIRFRBYzhuK3pkOXQya09HQUVRdkFPWS95a0t2?=
 =?utf-8?B?ZGJRcGhzSU5nOGs0V2ZvMzRrNmNhSHY1RzdZMW1JVHJjalBmUHVVM3N4WE5k?=
 =?utf-8?B?L0FuYnZIdXV6RzBVa0UyUjFHZ2lDLzQrVDJWNUcyelNCdzlPNGZlQ2pXMk9K?=
 =?utf-8?B?d3NRSlIzQThRMXhuTko3a3F6clBLZFoyWXBvSHh1SHNFOVE0OENYQjIxTFBI?=
 =?utf-8?B?b1lrZjNhcFFrM2tlVHZWOEdVQVJlME5rV1RIaDE0Q3U0M0ZNSDJacHlRanF0?=
 =?utf-8?B?aEg0c2RDMTNsL0J0REpXQ0c5Sit3cjlLMmVPaDROUUpWNUNOa3Z5QktVZmlo?=
 =?utf-8?B?NjlBTjdrRkliWmxLRm9WSmpJV0F3cjBmcWhET2UxUmlRVU1jR05sd0R6YkNN?=
 =?utf-8?B?TlB3RENMV2ZaWmtQM1I4M3FFVGt0V0hLNThJM0JRcXhvdFFCR2E5bzVJRWM3?=
 =?utf-8?B?T1V4bjk3Z2ZtemQ3dTY3U25JK2tFZnNGN3NOdnc4RUhyZWYvVU4rRWh4d3Zx?=
 =?utf-8?B?bEpLQXZaaEJIakIwdUZodk1iaWtsb3dwQVBEclVqdWtQMTRIaTdQdnpvbjhQ?=
 =?utf-8?B?eXBFVDlYNitWY0xDQ1psRS85b3FTWkdIallKaEkyU1dDdkJBekYySWxPYkp2?=
 =?utf-8?B?SXFJdG9hNnU2dDlvZFh4VzcyZE1qcUZ1cmhrektTZ1JzTlZrcDc3b2RqV04r?=
 =?utf-8?B?OHh6d0tPZHdzVE9UQmo4SFRVNDhCUmlCVm5ZTEVDVnlMWVdCNHlBdTB5TXR6?=
 =?utf-8?B?MDBMZHZ1QjJZKzFKZEFzbWIzTjJoK1UzMURlUlpLMFZpVkF1VzlKYUg4aWZR?=
 =?utf-8?B?RU5PcUFIcXVaRHp1bHh5aWMzVEdmTXFGc2FhUkt4YXVUdmh4ZjBZTzNvcVdL?=
 =?utf-8?B?R0VYQXBYTTlHbFA2eGd2VTRBLzJxeXZPbzNaNDVxbElibm5DdzkyZlBhR25m?=
 =?utf-8?B?V0NNTzVScmxVbmxJY1FXd1dYYVZvbmIwODJCNGhYRjc3YW1MTDBsc2IvZHIv?=
 =?utf-8?B?d1JxSlQwZHBjZjlyWHBGdFNHeVM2TzhMSy83ZEpKNkdYMXJCWklESktabGlH?=
 =?utf-8?B?NDNxN3FxdGh6cStmRDdUNkJrYXVBQy9MZTFJV3p0MGNSU0VKaWZiYUtvRC8v?=
 =?utf-8?B?QXJsa3FEcVBRdTh6M0xFSWdMR0JuKzEyTUlzVXJES1RocHdUTmVIMEtMbExk?=
 =?utf-8?B?Z2pzR2psdkpIdlZWenIvZ2xZdVNLSUxhdjdTZ1VGK0VtWGFKNkZxOUdBT0Rq?=
 =?utf-8?B?S2dYUGJhVDIvK05CYVVDdEQzelBZdjVwZTZqbWI1eUc5OEo3a2JMRkFpemRn?=
 =?utf-8?B?bzZFSFRkczc5RXBibnpFVzVmNy9jelZUMEJVbWFBUjdEZ2VwK215clRiblhB?=
 =?utf-8?B?b0ZNemdkakhaa1UrZytyU0pRTTBmQXNPU3VXRVk1VUp2eFFVYmpuR1F2VldJ?=
 =?utf-8?B?d1pEQ0F1NUZXSEVqdndUSFo0c0NxbGd1RGhqaFlWMklxamw2ZUIwZkkwSFRl?=
 =?utf-8?B?N2I3U3R2Q1pwWjhKRy9SeHZUeU02QlZpMXFuYUNrZmpOUGxrbzFJYlVHZ0hz?=
 =?utf-8?B?TXNzaXplVXdMS21IalhWL2NLU1NVdDBTa2swZFg3eUMwZWRycW8wUDVMS0tK?=
 =?utf-8?B?aEdEeVRHK0hMRFFwWTlGODlWY1pTTFk3M3crSUV2bDFNMGJBdi9qRWRSOXZQ?=
 =?utf-8?B?empoV0szK3Q3WC9lT3VIMUhvZVFiczNHME5GNkEyamg5VnQxaWJLK3BFaXFY?=
 =?utf-8?B?TThjM0NzMUNuVnBnQUE3cmdYWFlHKytGT3lPUmE1bHF2NGZlTjQwYytPTzVh?=
 =?utf-8?B?UXpZQ2ZoQ1NCRGFJeC9WbzNIWVVUZ2NVbEZZeU1BOFhmYnZZbFpuclM5dkhF?=
 =?utf-8?B?Zlg4QnN1RWVrTEhpUEhsajV5d0FyYXVYQW52eHUvVlVEK0xCWHBpR2x5dFE3?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b879e62-319d-4082-7bf4-08de1308b3ac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:22:03.6377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nwmzw79+gDE02V6YHm6NQ8vm/QPgtAqREzCSLySC+ThWDe2gTo/Ql4TkUugvbmnBx4IoNflRB3kZDapAWZ/Go4NCTX7fFqpk96z64AWtcjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
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
> The coment in intel_vrr_extra_vblank_delay() is a bit outdated now
> that we generally got rid of the "vblank delay" stuff. Update the
> comment to better describe the current state of things.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8875e5fe86aa..c28491b9002a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -87,10 +87,8 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>   	/*
>   	 * On ICL/TGL VRR hardware inserts one extra scanline
>   	 * just after vactive, which pushes the vmin decision
> -	 * boundary ahead accordingly. We'll include the extra
> -	 * scanline in our vblank delay estimates to make sure
> -	 * that we never underestimate how long we have until
> -	 * the delayed vblank has passed.
> +	 * boundary ahead accordingly, and thus reduces the
> +	 * max guardband length by one scanline.
>   	 */
>   	return DISPLAY_VER(display) < 13 ? 1 : 0;
>   }
