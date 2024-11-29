Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D35F9DC14F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 10:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C230010E4A2;
	Fri, 29 Nov 2024 09:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIwBFcEd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F6810E4A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 09:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732871774; x=1764407774;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=P7NeDjCRks1p9Wuk8P7MtYKA0aQnbd1yoCu1hY3F9+8=;
 b=aIwBFcEd/ceNz6WfjijdxXrCZ05MrMvb968QXqbDcsa/xuomsOI4LJds
 gp+mVmk8LzPSxfUwUD/x3AJnqwoNF0hH52kiuAhJgCq7GpsLjSnb628Va
 BU1wITXKFhPhFZ1Dqr33081qF+6fZ1ps4LL8g+hNHG6fBecACmJyRTgd2
 M+BZupo5DJiRN8D1HxTfm84ig5iq8DWHGA5HkoIzcPoeifZREo95fBOYB
 BrbIDuro/Oh6rwOoEDig4ldjHtf9hGvqYQvy6x4BwaB+P9KhBQ1W1aNw4
 bpeLlPpuoRMkJiYirz5PrZkHE+NI0R63j6YpURl6wr0mIZM729wuf9wqc Q==;
X-CSE-ConnectionGUID: UiStLogbQ++kH6tiEt9R2g==
X-CSE-MsgGUID: tqpQEEwsRn+3dz+CdU7lag==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="43773498"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="43773498"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 01:16:14 -0800
X-CSE-ConnectionGUID: bYyGuSv6Qi+GqDN2VHni/Q==
X-CSE-MsgGUID: ciDWldukSJ+GpbDuQnAR0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="129928590"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 01:16:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 01:16:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 01:16:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 01:16:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P7nnRQZNRgYJonafCloMaf364DEYWBxF0tP1PaepE8pBqOp3JyjoyAavQ4EZV8nVhWAqHEp6Kly3g6dUz2iXV2n5efq6nDfXpVyOS2u0YWd0A5JCKiXNGAHjyB6ke3RDHJKHz43BrkvAV+mJcAZHTZIXyOIDRuEbB1Ew8CKb3/0wh3Slb2ghd4bA3azr1au14b+bIpO0wtKGOetf7RcCvrGmgfxT0aBqfmJj20svImgW1pFKR1N3QvtlHk27eE3rE3eitaKYYX3MNDUY7vWMfHjQs4bo/VOAfOxY9Gdsver9l/GQfhSn8qf/90fc0hnEEK35eUceJhLq9+/HCRMz+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXxGEvmgtISJKNuGVOOjAKlO3NulIfMw2hULu3FzLRw=;
 b=PjW4jGFv9OKpZz2KmSFY3fbkcXxKk7RKJIf7jwe1wij3AF33amvK3cgWJqOLrl9PvfdrhDOHK4NTPt37OVGDmIMiAJnMaO1PgnGHazljfOMus6EQPADmUAxHkUYUI+ONyoZauPOvVpNMccgDj5TfUDpXTe99Rnk38N2LnbCUrS8dpqFJmdVRKY3NaMPRtJSLHzispDn2NvRrwXTNetI0lgNRdjFfQBGRF2sM9ndGMosDPbOFh9YeGbxBKFfGOFRGMnMfQIZm+Q7TXEIrsVEJI+Ir8osoR1jLtLzcDefqK38unQlsZJs3t7UqQDGHIHW5zU65mDwEFDlAtnTCzLQYWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6498.namprd11.prod.outlook.com (2603:10b6:510:1f1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Fri, 29 Nov
 2024 09:16:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 09:16:10 +0000
Date: Fri, 29 Nov 2024 09:16:01 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <chris@chris-wilson.co.uk>
Subject: [PATCH RESEND] drm/i915: add GEM_WARN_ON to remap_io_sg
Message-ID: <vtdwvjmd6mo7ln6oxtmjro7vizngwykeoaru272rbrontxedyj@6hmjcyrfwdvv>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: FR2P281CA0143.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6498:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fce9f2e-aa0f-413d-23b7-08dd105676bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFp0TnQ4OVc1NklIRGRtTEY4cTd3MUVnbFZHZkVINlRkb240NlVEQTcxcEF2?=
 =?utf-8?B?ZDd4dUZJckV0TExKNUFQVHp0d1o4TTdRakRqbHFobUVtRFVlOHFZWmpVTFVi?=
 =?utf-8?B?MmZhQUJQYnBLRjV5TDU3TVBDakNZa01EWWpDQSt2UW5QNWJtVDFMa0IrWlRk?=
 =?utf-8?B?YkZWYkNWdHhUOUEvcGJwWkdRRUNvUld5WS9QVVFMWisrUlluRHE1QWtNWVR1?=
 =?utf-8?B?QjJlSlVRSFF6WVQ1YWlwaWs2SUROZ2RDWHUxSmFmc0NzZUl5QXd5ZUMyQkU4?=
 =?utf-8?B?STlQWmhMQlUxYVZ2Y1g4ZXZLN3hKM3JrRDA4OUJrZmwvKytEUU5yNnpILzhV?=
 =?utf-8?B?TjhRSzQzQkpuTk1aa2pXMUNuWVQ5bDIyTVhZa1FoM3FNdmFXQlFGNEhzaDJG?=
 =?utf-8?B?UTAvcy8xcDFJdW52ZmgwYmw0VmtZZ1o2UDgrUjg2WGhFMW1EN2RvVzQ5MkUr?=
 =?utf-8?B?R1dTanM1ZmYyQ1gyUWVIMmtvTTE4YWlyOHRHckdaVEl3TTh6L3F6akNwTHlJ?=
 =?utf-8?B?YjR2dmIvMlVITlhTaWVld1p0bXFmbVRJcStRQ1oydjJGclFtM1d2Vk9DR0N4?=
 =?utf-8?B?amlzR1hVdHhraWd4RjNpc1BTejNNcXdQSGxLMElUV3BYenlzV2g5UmhWTjVV?=
 =?utf-8?B?Vmt0TVhTWlFwdXhzaTUvVFc2K3lZSjN1WG9ZcUUvemM4UFB6TDM0WEtFcVBz?=
 =?utf-8?B?bFlZdXZGK1E1cE1rTDJjdTBBSFd5Z3Y0Rm91eU14Z2d5WTVXMnBOcXRlMGpO?=
 =?utf-8?B?Wm5vcDhzaTI1UmUySEFNbE55S2twOG94NmhsdTdZSlF5d0l2MmxsNlE5SVBz?=
 =?utf-8?B?eEtnbmVqRU41WHBjYkFPMmVleVFWNis1c1h3ZTVSMXp3bkYyMzdDd0psR0hX?=
 =?utf-8?B?cHB3NmhwWFd3Q2tGWi95Q2hNSW5NaU50SUlJY0FFR1h2U09BaXVYaVF6aFMy?=
 =?utf-8?B?Lyt2WGUrdTdSVFlVTzBnRFZNd0JzalY0LzJZdkJGVy9DYlhYNDF6RDhVZFJu?=
 =?utf-8?B?dFhvYU5WUEFLbHhJTk9McHcvSTJQemN3R0pOcGtqL28zL3BrWjdjWk0vYUtL?=
 =?utf-8?B?ZmV2dEMvUkc3N3lKd1BhV0hCUTBpai84aFJLM1U4SkgyNzkrN0VUbEtLRVJZ?=
 =?utf-8?B?YjVVNFRMR1RKS05MdFNiNDdkMktseHJEM2RkV2F4N3dhMGt1R3AvMmoxdXN2?=
 =?utf-8?B?dUViYmhyRnNQcExPaDRxUjJoRHRxV2I4ZXJrTURJYjJCREFkZS9iRUVaVktr?=
 =?utf-8?B?VVJObHVzcEJVSWMzSDlWUmhaNElUWjc1eUNjUjhXWnhzNmdMeUk3S09UYkUx?=
 =?utf-8?B?Zm1qb0hKWHhKdlZqMUo1VjZhSDZJTWl0Qm4xOXFSdTNaYjVVTTJDQ2UzcUVX?=
 =?utf-8?B?TzFDRFRCd1F3UTdkcU1lbVFJelZSMnJCamcrVEJ0RktidXBOckM3N1FrU1Jl?=
 =?utf-8?B?dUxSYllQNmhwakJpVFBKR3lMb1dOOEluU2UvekdkdHBCZVMweUpKTkpKNkgw?=
 =?utf-8?B?MDZtYWdNbDNON0VzeXFDQjdSUGR1SUNLck9taU0vUnR1K0N2YmEyQVhjV0Qv?=
 =?utf-8?B?NjB1cjVYZEwrempKRFloNGZkU0RxanVkY1RCU2t4WEVTL0cxc29jMUtJRHEv?=
 =?utf-8?B?eVd6VmhHYXZBY1J6NnQzRFo5cG9NQlF6a3cvQmt2ekRMU0syOXBHbDlyRHQ5?=
 =?utf-8?B?dndTa0huSTJQQmUyL29Sbmc0enRjV2ZqR05YVGovQ2UyQ0NDdDZUQXZZNVZh?=
 =?utf-8?B?aXVyS3FmaGRiaGNrV0JsS08vZjNoS2dRdFdxWXpqZGFtKzQzVWp5aURibG5T?=
 =?utf-8?B?d1g5U1JBZGY3eFFmZ0FIUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU50VjBycThvbnFnMEZ4VFF1R2cxNGxpMC9xdkh2REc5bGhkTmhDU0VjM2V5?=
 =?utf-8?B?dXpaek5YK0JoR0pKbGNGc1R2UldQeFlvaDNNTUhvYnRPOGI2UENXaklpWWNS?=
 =?utf-8?B?U1hRYnA3SmpTTlJFQWtYcXczeHpOREpITlhhRnR6cjR0VU1ZVTRiQjNOVUJ6?=
 =?utf-8?B?NWo4cjdSL1pMYlRRTEo4Y2RNNEE0ZEM1T3lySm12b1I0Sno4dDZUZXVyME5u?=
 =?utf-8?B?dTR5Y2hqN0t0OGJRRnQrNUtTb0ZIckFtUjF1VFRHVFUra0x3eHBSdDZ1eHNM?=
 =?utf-8?B?V2QraXFlbVNiQUhyMit5TzA0cWdNNTFsRnlUVUNYeXhUd0J4SWZCdUxya3dO?=
 =?utf-8?B?bFlQTlBRaVo4Z3BpbFRiOE44RkFzSVd2RzVxWGZjWUV2em1iVm0wTkwrTkpj?=
 =?utf-8?B?a08zMnlOZUVyR2hTN3hqT2ZlZG43Mm5iSFRZK2V4cnArNUNscXVPd0hnSXdN?=
 =?utf-8?B?TUNSRUp5NExqWVcrcE5Ud0xBR25NczRrTDgwWFBPQjhVMlN1RHdBNWJlL1lk?=
 =?utf-8?B?VVdOcC9EYzlMYitKK1hBNEF5U0ozYXMyY2JNN3d6UXRRcXhjSktObDRSaG1Y?=
 =?utf-8?B?MFIxWlRuU1VaN2hvUFZQZk9UNnR5WkdWZmtQQjJlSzFSRkJPTlNXWjNBK0l0?=
 =?utf-8?B?a2FxeVBwak1odXl3R096WVRtRDYyaXVyQm9RREt6cGgvMkhKQ2dkTXQ0YW5k?=
 =?utf-8?B?M0xJbURwVTFFZlhUb0xVUUdnSTI3YUJHMWVwMTN5NzZaS1RWUTB1U0hFK2tE?=
 =?utf-8?B?SUVWRHdFM1pNcXRDaWdkczZ2bk9BUHV3RFd1emRROVo3Ulp1OFhwUTJUVW51?=
 =?utf-8?B?ckFqT29udVZrQVR5WW5ZY0V4ZVp6YVhMY3c3SkNvSm5LYW9mUjVKNVozeVh0?=
 =?utf-8?B?ckM1dStoUlIrQXNqL1dPQlU4ekN0MDh3SEplOGpaOHdZdjI0VHMxRWh0RUZK?=
 =?utf-8?B?enBZRytCVk5UeGpWZWsvU1JOTU5QUmlKZUdwOFYyQk9tSnNsaVdwQVZ1S3pu?=
 =?utf-8?B?OWxYaytjLzg0MGV4Sm9GNkVIdnlLOGV4NnFyVEx2MW5JSEZGM0piYlhrMEdm?=
 =?utf-8?B?STU0ZENMKzlDY3RtbWI2ajhsSlRPVVR3bjhINkhZQmVjWGJsamZ6U2V2NldC?=
 =?utf-8?B?YUdIcHZ2NkxmaHFSSzhwS1RZRlpIQ3NOOFR1MEt0SDFJR2N0SWZsRllKWmNJ?=
 =?utf-8?B?SnM3VjNGT1RjbjlqbjgzSW5EckR4NDYrUU92RTlmRUo5eVV3UUdkNXBxSE8x?=
 =?utf-8?B?SzBlQkNudkMzQ1NPdU9OazdLWGFGMVNaRDJIaTI3dkpHQmdDb1NteGN1QWkv?=
 =?utf-8?B?NEhlRkdXekpmOHNEc1JodExmUHJGRWk4UzZsVVc4OGFzNlJyOVB0cEZnbkdD?=
 =?utf-8?B?RlpRNnBGZlo3QVhNVkREWS85NTRxM3FXYmhoU1dmcWJEaFZWTmZrQUtYM052?=
 =?utf-8?B?Z01GMk9OcjdmcW93SUg0SjdmNVR4QmFiTjJ0MmxidGVxRnM1VzBFUkR4bEY5?=
 =?utf-8?B?TjRjcGtzS09uOUVtR1Z5OEhCQWJPUWlvZ05VUGp3TmV4cENRRkdpb0tkWmpO?=
 =?utf-8?B?YmdWbDU1U2RqbU83ZnliRXAycXB4a1pYOUlYeWpIQ3M5SW1oVWoxc3piY0Fw?=
 =?utf-8?B?N2xYMGh3bUpsaGdhRlQ3NVZmTHU2Q0RQc2w1KzB4YkhhamVwWGhtY09KbS8r?=
 =?utf-8?B?T2Fqbk9EUDZvZmRhYTlGT0E3a2J6YWRWRVhOSm5aUjBmS3BtMzZzUHVxQUVE?=
 =?utf-8?B?ZitoMG5NczhTNjU3WE45NnNWQVhKRHJDTDd3MHNQUm1zMm1LZUFrMWtKalky?=
 =?utf-8?B?ek5IOFVQOVRYQmJqK29KNHVPOHk3aC8vSTI4ZlBMRUZrOU43QVhGSkdvNUJO?=
 =?utf-8?B?SC9ibTRwMTlaSFA0OXZGZ2kwSmZ3cXBuVjZkSnkwUklJa2ZpT2VCS0JBWnl1?=
 =?utf-8?B?SjRVSHJoaVd5TFVpL01TTWRIUFJoelA5bDBXOG9GMEYyL0IwYU5TUDN1ZmlG?=
 =?utf-8?B?UkZ5V0VMUndleHFZS1owbWk5bTRjVXN4WWxrM1JreHhVN2tGUzR6MzFlSTJZ?=
 =?utf-8?B?S05pZWVlV0JENjZRRWpsZEUwZXNWUFFIWFJHZmQ4YzNadWVrQ2YxamlyUUVN?=
 =?utf-8?B?eFI1eTZ0STg5SWQyV0JWVGNmQnBsSmNKTi9oMnpNbW9HSVRGSXdnR2p5dHRt?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fce9f2e-aa0f-413d-23b7-08dd105676bf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 09:16:10.2867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i348vyt7LK7U3ZRYWURofleMgc3k5RaSyGAbMrVkCUWh8Lot/ma57uqYAKwxytTIV2zsVH9/gxvW8BQALhSu8W3WJPQQKNKsvSu22h7QopU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6498
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

Since we already have that warning inside `remap_sg` we can also catch
this condition inside `remap_io_sg`.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..8a2779191f18 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -146,7 +146,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
 		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
 		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
-		if (!r.sgt.sgp)
+		if (GEM_WARN_ON(!r.sgt.sgp))
 			return -EINVAL;
 	}
 	r.sgt.curr = offset << PAGE_SHIFT;
-- 
2.43.0

