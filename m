Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79D9C3407D
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 07:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543A310E177;
	Wed,  5 Nov 2025 06:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0cL2+uF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31D610E177;
 Wed,  5 Nov 2025 06:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762322684; x=1793858684;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gCKHFx7Am2csC/bouO2lKfC8XES3xmQgV0fUKI9sT54=;
 b=P0cL2+uFJxhoxYRmtQlFJSKzE7Vn9Zeil/MslXWfYlYhVBx0jHxiAT+W
 MXp7zkG/Eg8no5lfJDQK/ZmjugyjOC9io0AhvHFUdIGwEgWBS9B3dcLpC
 hF/d9BOBBwZDLiuT64es62VaHa3MVC9MeTM+G+3I1TpAyz9JHUZjskLDx
 vU6z1Y9Y//crQAz9udVcVO0ZTX1jvyWpRmcxCWKODvWurTc37ZydUlbvN
 QFd/7frzFA6xAsivmYxJ8Ha4yzmOqSk1u8ReNfFjUVILLsZ/I4vKvil+e
 JeLJ/xq9n5OFcrko/mnoXqAU6ZJCoMfig/o2InMCEByGcMS5q3wUFhNRF w==;
X-CSE-ConnectionGUID: vj7BSLbjRhWdHprYzwVdhw==
X-CSE-MsgGUID: 1RwHeFESQBKmNFKrDioKHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63437435"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="63437435"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:04:44 -0800
X-CSE-ConnectionGUID: DVyXTEvaRvCSdRI6gkOWWA==
X-CSE-MsgGUID: kKJKA8lkRQWU79T4gz+shg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187813917"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:04:43 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:04:42 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 22:04:42 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:04:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GK+M/uf/uoklXgXXfCGDnc2Xe9NlCACGe8/w6tXQ3cYgBdpNDysQzgGrltFX9aZ8VtfmgSkUbqbfogaNZQ/e4qica6g7rFjkCi6nmXKBuWGmv9nYXJ6a1IxmwA7uEKHKC0b8IpLRE+mdZk6eBl+Ce629eceJXyvLAN2q3BSaaOBC4dnfOHZIyCgn9HS9zzeNzHHRaYvyzOb5rKtMeA4ciYjaDn/NyPbqnkOFN8YplqQpAQQteMKMTCbwOXguoopUEN3uo9AfumrrMOr94u+3mcSBGWoGCJyDWYt+cGzRJeyIjTaiFDGiR4XmVEYheCEhSje+beObFIwkmF3DiO8Stg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41D/5NsMtyf9/x9NoB3F8vo8r0EdLU36ApSP1UmL6Hw=;
 b=oHwwdJvKKZLHI6H8/su0/8GdjpRk+yEceA3zZ696XoVCzS4hMfRYak+5wixIfTmvfOMnsYICgyvxdxXOJ06R/L8LJPajsWdFpXpAgf/tJPA8F1l6yYzOAqal6FtVStmEHNS6cRS3KWcKgq2WWU0iHeHmKcXzpdfSja1qUXjyAG4pL3RC8CX+7KsiBSgKrmbrmG3miPg+7MgIPT5Z7sodsvgWxqLnWVXa5IUynMvULn8jEyl+n3vgcx7L5mDK86Ix89CRZSZaaRwrRER4zYc5hqDETteSiWQ/geRwZh5Tm+3NehHcSzawylbzpdhVE0J4js980M1iMlbkFIyvZV0nsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF027BB0053.namprd11.prod.outlook.com (2603:10b6:f:fc00::f05) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 06:04:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 06:04:35 +0000
Message-ID: <4281a5ab-a1f8-4821-afd1-fb0165bbcfe6@intel.com>
Date: Wed, 5 Nov 2025 11:34:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 22/22] drm/i915/vrr: Add function to check if DC Balance
 Possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-23-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-23-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0135.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF027BB0053:EE_
X-MS-Office365-Filtering-Correlation-Id: d560d595-7eb9-46dd-d3c9-08de1c31322d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjI1bWxhVGtvRk5uakJ6TjlnMUsxN21BMmVHZ3FVL0h5OUVtK0JLQW9ZMWZO?=
 =?utf-8?B?YlpPOVRNRFlrZDVsK1dmU1g1Um9IdFFtcnRTclJNSDVma2FjOFBxcUdGTkVm?=
 =?utf-8?B?TytxQUdxNmNPeVFIb2grdE1vMG9xTUhMd0JQL1FHZy9QN0xrYzB5dHV2REQv?=
 =?utf-8?B?MGdPUE94bzlENXBwaWJLMnVhUlFlbnpJTmFtYjQ5aVJJUWxtME9YcjlVNklY?=
 =?utf-8?B?OHRoVzVhRER5K2lVaWtWRGpiQWNqRkJjZmNTZU81R2lUTVZPZmdPZS9sc2hV?=
 =?utf-8?B?SkF6dVBOeVJzSUpRSjZ6UmVSU1QzYTNUMFZGYmJiaGt1SkpnVmdOOXd4WU9n?=
 =?utf-8?B?b1pmK2E3NkVlNEpnNmRHWDJNNElpVUc4cENsdE4ySVBXY3NhVkpXWThBZlBX?=
 =?utf-8?B?Z1pmK3ZiVzJvUHAvSHdscFBXVmpOa3V5c3gvOFdYQ252VGtNWm9iNzRobUZt?=
 =?utf-8?B?M2MwUmw0WFVvd0dUc0ljd1NLMi9SQ1dhK0ZZbkZHNlcxelJ6NHc3bVl1UUU3?=
 =?utf-8?B?NkZ3WDVEdGszUTBlMGVjNllxYWVXUkVBNjBuWVNtTWZMRWQ3a3IvU0puV0Jh?=
 =?utf-8?B?VXowZnBneUFzU2R0c21BMHhPc2RjRVExNDVTMDlHQUJjMXpYY3ZlZ0l6Ritx?=
 =?utf-8?B?WmRJM09UbWhmQUlicjRMUWNYNXU3bkRpRDVBWXpzTjN2WDBoVGhxdXQ5Zmxa?=
 =?utf-8?B?N2l1OC9hVFZMYmlmd1Y4d3dWaDhUQUpKR2Y5TXNLU3loNzZMSWNRYncxRGZ4?=
 =?utf-8?B?c0ZPQm1rc2M0U0N0RDdENzBWeW5Yc09adllDM2hDS3V1R0RrWUU2aTZSemxN?=
 =?utf-8?B?OU82aG9EcDRocWZHU1RuSDY1UnVmbnBIMDJKcVdZUE8xL0Fxbm5zQ1o5dXVl?=
 =?utf-8?B?NGVCNVBobFZwK2xsUy9EaGJ1WVB4dmFLN0VqeVk5TVArREI4RVQ3dTdtTGJC?=
 =?utf-8?B?a21vVnpnclBOSlRTTTlCaHhEMElITnJWb1c0Y1FmZGYveU1MNm5HeXBwVzdh?=
 =?utf-8?B?Z20remdtazFGeTBuVHUzQ0s4OEN4M3h0M0RyWmV4MkRKdGRNRzZyVjRtRXlR?=
 =?utf-8?B?M0VaUU93aEtLV2s5cURsNTBlYjZTOFVRQXowNFVlYUFjSjJ3b3g4MVlnd1Nz?=
 =?utf-8?B?eVNXYndNR0ZuMjdwd05EVnFMNk1VSVQwLzVMMDJLejlpMkhKekRGOVZzL0g4?=
 =?utf-8?B?dk05QnNSbmU1bXdIblhyYnNCMVdYTGNqNkZVeXhsQjdTTnNicTJGd0JpaDh3?=
 =?utf-8?B?ZWxDVm9FeDFiM2g4WFVZVTVlS2NmakV5OEV0UnBpV2JjZVBiQ2MrQTRQN0lO?=
 =?utf-8?B?Sm1LUFF6WmF3dDVJRDVSMEZjU2V3bHJMaGdBVTJDV2FKaEZMVnVsajY5b1dt?=
 =?utf-8?B?U0FvTE9LVm13MVQvOFlxTTRnK2F3cU92Y29HWG5uRmoyZFRtTzRPNEFjVnFU?=
 =?utf-8?B?SEJQU0dEY1ZjS0pqRHRISWJqY1FQVmhGT3lxR3JrZDQ3U3MwZ1hoUEZqRU96?=
 =?utf-8?B?bGVJdk1GZEVQN0MwYkhmR2xDNUp0VXJncmc2ZCt0MUlNcis5ZE0wSURjVHVZ?=
 =?utf-8?B?MUx0SHVGQ29Dc1QxSVFwUGlkb2RqL1NsUzVwYVA5TlhudENkZGhqSE1pS3di?=
 =?utf-8?B?Zyt6cFhRMkJyWjBTSVJyeVpuS25sVjcveDhMb1hRZUVRQ0Y3YXh3bnk2dEFy?=
 =?utf-8?B?NzBJeW9xeSsxS2RzZzNRTHc2L1g0MmJlREkzNG9SUHVpbHllbEIzbnNPSzVm?=
 =?utf-8?B?NzdxYThpK3ZYdmR4U3h2UDFSbHdmSmpJYnRsSGllbllpc20ySVNPWkNJSTFY?=
 =?utf-8?B?T1dKTDhkcWxxS21NMXRhQVR2SkxrZWJjdm1XWkd1QXVuWGMzK1VRcDJLd1pW?=
 =?utf-8?B?R0hZbWVSaW5sYVFZT3ROQy9EeU1SangvYVNPOTJkOVdjeC9JQlVLUEN4SndY?=
 =?utf-8?Q?8hEDxqSb7bWXt0YWRYPQUh7x5nlsKhLl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODBsNUFXK0VmbS9Uc1gvUTJpZktQOWRWUm5xTkd3dlZka3MrRm5pblZRZGtj?=
 =?utf-8?B?UlZOeGkreDJLdTE3LzFnNHVBWkR3RXcrRXk0dHEzeFJQQWFUQXExTzNMckJq?=
 =?utf-8?B?TWlIQVlyVjlsK0xpQTd0RklhOHg2d240TlU4N1JHNjNPSS9vYVZPaFlTbDk1?=
 =?utf-8?B?SEVQejFjOFpGK1BnaVMvNVF3MGRDcEZPMEw5RnJLUnJEa0NkWUFxY2RMa0Z5?=
 =?utf-8?B?WWMyY2hMSGt3TTMxd0hGbEVZdm5kSEdhMGtLMExZd3JDMS9ZOWErSWIyN2JX?=
 =?utf-8?B?V0dVVnlGemVTU3c2RlJYTkhyTG1UbHhrMWE5YkRlQUxBSWN6MEtkc29YbEk4?=
 =?utf-8?B?VkdwZmQ1RnpDSENaSGN3WldYcUtxWHZqZXV4ckNCSkVQNnp0eWZCZmVJbFhs?=
 =?utf-8?B?YVRsMXNvd2JDT0JDQlFTWUR6OFNUSEFldTNCVGE2WCtpTDEyMFRDWmFyU3Er?=
 =?utf-8?B?SUpkL3RteXhYdzlYanRrd1RKYmFTT2EwVzd0RnhmQ0FQUkdYeWFocE9aT25N?=
 =?utf-8?B?S1d0ZmNkd29QUEQ3RG5aR3VWcVpoVm5pSWFzQUM3a044SEthZlpyQUhEWGFK?=
 =?utf-8?B?c1laV21JcUlGN0JnNzBVNjV3b0lpbG1DMTNpNlM4RFhQWlZVeE9SdUpkcVhz?=
 =?utf-8?B?bHhSbUtBZHlKZlFGYXJNSFFFeSthQk9WTEFzZzFLWlZ3NS9XRzFKdnRYY296?=
 =?utf-8?B?TzhvdnJabU93QWRWZ2RtTCtvc2duOXBtSVV3US9GS2Z0OEY4QnlhaHk0VTNE?=
 =?utf-8?B?M0NjWmlMOUt1akVIQXE2bXRKWktEbVNvYW5xV1dYTVlIT1BzamhoY3dhbms1?=
 =?utf-8?B?c2g1RHZqSE0xdDd2QlN4VW9JOTN3emdoNnRaMFdzQk1EbGNXTk9qMW5aOWow?=
 =?utf-8?B?WERoeFZHc0c5MjJsbFJ6S01kZzR0Zzc5aWpOY2o1OENBNDB2TW5YeHQvSUZh?=
 =?utf-8?B?VHptZkVzalJNZDRCdFlCQ3pKek5mV05mRC9raXQvTUFSNDRrTUtYZWZzRTkz?=
 =?utf-8?B?a1B2eE5pZWVPcEtEY1lpVkJ6dUpjT1lEaklXNC9IUkp3ZFNEbDR0SGs3MTFY?=
 =?utf-8?B?cCtia2hVbU9UMXdPTmlpaGxkNTlrbGJNYnlmckJOaHkwQm1RSDUvS29PNVJ2?=
 =?utf-8?B?cUtiR0NxeWJFc1Q0TXE3RXIwNm9ac29ZRlRzdGIydVJ2OWVSdXRQU1RKdGEy?=
 =?utf-8?B?NTY1TFhaTytHeTZSTmRPS2kxVDRhWkFvbklXZWVxQmdEZFh0M1FZYTYzd0c2?=
 =?utf-8?B?MVBIMDZUQlJaZVM4RmsvYzljN2RhSGlFOFFLRmdUVmpRaDZrcmJ6UEg4Tkkx?=
 =?utf-8?B?NDNZSUt2VWoxdVpDVWNrNHZoaWEwMXdSV0oyN0QwSHk1dVgrT1ZMblN0WFk4?=
 =?utf-8?B?RG1CZHhRK3RZUjhiaWVsV2dJUWprd05RRFg3ZUFKWmxJNlMxczFCQzNNOXFr?=
 =?utf-8?B?TDN5YytXZytkN1hXRStzUW83aXNsc0grbXJVNWloWjIvcTVwbkN4dHpkb2tQ?=
 =?utf-8?B?R2tlMVl6YlBxUHdnRFhoQ0wyRVpqd2RpMzZybGI5d2lKR1RXUUZTZTM2cmkw?=
 =?utf-8?B?bXNGdkprOW1icHRsVUlUN2hKRnZmRTRDOW5pVkl5Rkh6N0UrSkdPais2TVo4?=
 =?utf-8?B?VmpIK2k1VHVUZjJpbjRZNElEcEtvcCs5aklLaUN4YU1DRjZLcUNoR0dYSlkv?=
 =?utf-8?B?OUZwQ3BwVkZwaVAzQzBWbGRlMDliSUhuVC8xTHdNL3VMNmwwd29ndnNvQ2Zz?=
 =?utf-8?B?ODhaSTdXamV3a0VxY3pPeXloL3M0TFp1TVgyaWpYbEdhK3pEWVlFWVoxQnFl?=
 =?utf-8?B?NSs4M0ZUenhjN0l4Tkc1c1NXY3pyVlhQeVdXQnJERFArOHZMSlorV3kzY2cz?=
 =?utf-8?B?UzMwT0tob2VYdlZZQkwzNXFvN1Fydm4yS3pOYlRUYytzWXQ4elMyYjRGSVJX?=
 =?utf-8?B?MllxWjkzNGRRZVpGb2dNMnFyRkttcmpvQ2kxRi94WVhiTkVCM251UGVYR2cv?=
 =?utf-8?B?S25yOVVXMzhqY2hqVExINU9RVlF3cjlvcEUzb3VQdnYzSG1taHVXd2g1S2Mr?=
 =?utf-8?B?aGFDZ0dIeGxjQkxnSDExempiT3puSUIxMUZSWm05Nk1FbC9oVndNTzVCVjdp?=
 =?utf-8?B?dXpHdXd4MTJiKytUQnNKdDMydzQ1WUdGbks2QUcvSzkyd3l1Y0xySWcyT0tX?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d560d595-7eb9-46dd-d3c9-08de1c31322d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 06:04:35.8926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VT9LVtNVnHOi8HzDnela6de/rCyItLEVwZU9hP1v7wnSFJTkxxjPoJvQjkhs9eEx6jnQajIclyf3i94NCZgHZ6VlWxA55ZxU+3W3hmLyLow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF027BB0053
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


On 11/3/2025 11:00 AM, Mitul Golani wrote:
> Add function to check if DC Balance possibile on
> requested PIPE and also validate along with DISPLAY_VER
> check.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++++++++-
>   1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index d68306cdbf57..50bb3a1f6105 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,6 +236,22 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
> +static
> +int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	/*
> +	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
> +	 * and PIPE B. Account those limitation while computing DC
> +	 * Balance parameters.
> +	 */
> +	return (HAS_VRR_DC_BALANCE(display) &&
> +		((pipe == PIPE_A) || (pipe == PIPE_B)));

Earlier there were plans to have this supported on other pipes, but now 
I think this condition is fixed that only PIPE A/B have this feature. So 
this change can be clubbed with the previous patch.


Regards,

Ankit


> +}
> +
>   static
>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   				   int vmin, int vmax)
> @@ -249,7 +265,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   	crtc_state->vrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   
> -	if (HAS_VRR_DC_BALANCE(display))
> +	if (intel_vrr_dc_balance_possible(crtc_state))
>   		crtc_state->vrr.dc_balance.enable = true;
>   }
>   
