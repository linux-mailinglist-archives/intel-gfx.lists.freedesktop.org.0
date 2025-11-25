Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C1DC858C2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 15:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C9910E420;
	Tue, 25 Nov 2025 14:48:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5eAI98f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB8C10E41D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 14:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764082129; x=1795618129;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T16H7rWVBW8UEdrpBWuhz20rOx4vC/eBfKHAvrJMe6M=;
 b=U5eAI98fWseBgr4MWKsHJEMBaXW2wnX/19kcPHvuoQGatGfoC2h+BX8I
 o26I6AQMGnHW52F8SazeIEhXrDmeDOL7Hb+FJyfKL/3H+hU6nqwz9OCiS
 VLztO/Xc2weaANjTw2RULk+J6gMY90cNpUQCFn43PhmJDFL2dxB6El26b
 wzg/lgUnKowW58vAMsHhkhL8i4Cx32Z99cpNVmuYE76zFO97/wUeYii9K
 KSIxEVRg2JkrSAPBV/s8VNaBwREG5SaZ7qxHpJ8ofrmZoedkvEBhjRd+v
 VW9WQ2rL2Du1a8E65uQVlFkDHPJM7m4cyhUJNxzWlw+NZCrPMhnt8FO8g Q==;
X-CSE-ConnectionGUID: 18PvJNRmRIKE9XtQNwT7aA==
X-CSE-MsgGUID: TeUifeMiTNuL2zEz28V8hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="68689888"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="68689888"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:48:48 -0800
X-CSE-ConnectionGUID: zzRR2RMcQ/GQevLSanxmrw==
X-CSE-MsgGUID: jwdfKbHGSh28WpUdlBrCrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="223330048"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:48:48 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:48:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 06:48:47 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:48:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uy0GuLWtnsmEE0HnoZ+xSxOEy0AwMN3HCRHRYoA7SZIDeXaztpaVwYcF4v7r+IOSIe6AQIFcg05LRp5U4WL2bm6E93A5WtgaNDa+2u/U4+y+LwCCuafrf1JCZpFKGZ+2qybS8tNaIogD1gKHZTo0GPfiobsJSAJcGpPX4CNmmJyW/WTNmkMs+z/DRiUm5HRgtpw1FR2A+DPTgcSsxwaAgWWahrsCSu5N5up+JaWfJUwyActMDMSWzpIEaTbj3XjDXQOwkihcITXxrNDODcv2yn996SXLie/q3Mj36JzOs3skc6nVG/+aaqZVHQnyElKOcfMIxiKTQ8P+nJ89NMe86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dkf7d+ChF6fnJ+Ha/Tqbk04YOc+bTh+/QWvRFD59I9Y=;
 b=c2hNVe4I7cDbDI37wc7cg3obQMVddcY3KjjTJEQ0YLNt6I91v2lmurjTyLsM/i7oXNoO1VP1tZ6CPket3lYnhfOBxXtmoOPMIKdgYVLPlPcQoyCUQ7zbftAoviWIjbOKjjiYDcCy5Ir4fz/rdzpXhnz8T2j+e01eLUYPYl8JhKfcRNm618asEm+VU71CeZKxmqTkJe8t/OWMZV13rXMSNmBNK39SJREkJ59C9vcEY4tZc/r7b9sLJhmgKr2HKR+UxkkjSt/HGEwK4rxkRIL/kVPcg24E2sYZesxK4xSs6JPEQVptPousc7lVYTwfbLVWdwrqgLBl8IUE23zmRW/MeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7164.namprd11.prod.outlook.com (2603:10b6:303:212::6)
 by DS0PR11MB8051.namprd11.prod.outlook.com (2603:10b6:8:121::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 14:48:45 +0000
Received: from MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5]) by MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 14:48:44 +0000
Message-ID: <8e482c98-2cd3-43b2-8b2a-7af6143846be@intel.com>
Date: Tue, 25 Nov 2025 20:18:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
 <aSWwoYwYb4OIVy1A@intel.com>
Content-Language: en-US
From: "Kumar G, Naresh" <naresh.kumar.g@intel.com>
In-Reply-To: <aSWwoYwYb4OIVy1A@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0063.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::14) To MW4PR11MB7164.namprd11.prod.outlook.com
 (2603:10b6:303:212::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7164:EE_|DS0PR11MB8051:EE_
X-MS-Office365-Filtering-Correlation-Id: f649c086-dfcf-4333-d55e-08de2c31bbbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTNSWityNkVRTWtZODdNWG5EbGVxdTNmdElvdjYwUDlrUUZ4RVVaWlBVcDJV?=
 =?utf-8?B?V2xUV24rVkVQYzg0MTZtbCs4ZUdoY2QySWFBZy92aGVMdnlsQkRqQWYrRnY3?=
 =?utf-8?B?clcvMzFyU2xwa2YyRUF4NU5xK1BjblBBZGo1M2J6N0RMK0NabnM4TUsrMitu?=
 =?utf-8?B?NERYdklGanhSNUdKdUg2ZFJCZTByOVE1M3pnNUZOTURrRVVFRmNkT1pXTTls?=
 =?utf-8?B?Mit0QUxuUSs5TWV2U21nODhjcnFjNy9ERll5NFQwZ2g5eTdxaStBc2FlU2VV?=
 =?utf-8?B?N2lzUVlha0FGRGxwQUUvRTNpdDd3U2FBNk02VkhGNmxEc2FLUnFIR1JibnFE?=
 =?utf-8?B?WDlDWkcydTlheEk2QVlmQm9sQ2tTOWtYbTJ2TCtlcVdXRVNrczIxbnZWUEpJ?=
 =?utf-8?B?T0VxYXl5K3BnSkJQNnpSQ3RLaXY5dkJORTRtcDNFT3NVWjBnTEZ2TlBDR0R3?=
 =?utf-8?B?U2pGN2dWak4veUhjd2QyMXRTdXlCZTRnUys0MVJxMkRNa2hoaGU1Ym5pM3Zl?=
 =?utf-8?B?alNTQkxMUmxuRUFyeTFkMWNLamVqUnE5NlUveUFkaGpFM2Mra1FuaU9TY2NG?=
 =?utf-8?B?MTJJL011VkpMcWZIdm5mcWVZc1l6MXNEWW1kQ3gxMXpXcFJ0MEdGYjBOeDRB?=
 =?utf-8?B?eW1XTjM2VVA5L0R6czN2ekJzeUdpR3VOcThZOGp5T3cxME5CKzFTbFJYUVFj?=
 =?utf-8?B?WnBaM3dzRzFNQjhnVm9oczEvUGN3NVhsWng5T2Vrb3RSZXd3dzZKOWU2OEtC?=
 =?utf-8?B?T2pBYTdjSXgranYxWnFxSjJidEJnVGdjaVMwQVpNeEVZbnFTQzBXQzRROVJz?=
 =?utf-8?B?Y1k5ekdQYmgxaktxSUl0VitwdFpIU0VLaHNod1BGR096YVRyaGFmM2FXUmh5?=
 =?utf-8?B?enVOV0hIQXpFYXVWL0cvTnpubXU4N0NWWnFGSTFhS2pxbTFUa2VQcklnaVBm?=
 =?utf-8?B?OVNsbFg3OGNNbUVHV05iUVY0ZkdNUDNyUjh4cnYvV3U2YkhnZDNEMUMyU1Zr?=
 =?utf-8?B?eUhkSlY0OHFjd1ZKS1FSem8rM0dGQk9RUVBQT1EwenR1NERtTVBVOVd1ODI5?=
 =?utf-8?B?N2dteThrYiszRVhDUUlhYW9uZGZnSThVZit3WUtJRnBBQVNqTkR3VDIyTnZ2?=
 =?utf-8?B?cytSZTlxUWxYZlExKzM5YWFta2RPQW9lYWdndE4yK2NrZy93S21OVWpVL0tm?=
 =?utf-8?B?V3ZTam5qbUhoU1M2VmI0b05BQ3BST25DRmowSTJNdnA3UVM2VjNaRzN0eVdl?=
 =?utf-8?B?UXNrWVkycEZHbHFPUFRYcjBRek40LzdPcUhFR24wSW5yMjU3NHlLVzVSNnZ3?=
 =?utf-8?B?UStJdzJGSS9MWER2Z0JXMEJzOGxoSjU1QjdmUktHL1VEcG1uYUdaa2dvdEVv?=
 =?utf-8?B?aXZhZ0paSEh0elB5VXZWWVFUNExETUY5L29Wd2NrdThGZlZzd3hlRlZySG0y?=
 =?utf-8?B?YXpyYXdQMTkyNHEzdkVSN0JWNTVlU0kvSUdjS3Z0V2lCcm51WlpKT0FsYzFw?=
 =?utf-8?B?N3pBNC9KRXBBZGw1cmhNTjcwaVA1RzR1ZlFaQUFTWHRacFVlRGdmL2NNYktl?=
 =?utf-8?B?VTdKRXU1NTdsdzdDSDc5RUtmdEM1Z2pTZ28zU1hwY0UxbHRpQnlOTnM5RnYr?=
 =?utf-8?B?cWVoRlNYbk1maU1md3lUQW1YaWdOQ2V6Z3BDK3pJUzI0WjczTkU5T3hFL2dD?=
 =?utf-8?B?eDlscEFaZ1ZqWDNQSXU0UUxNUzF1MDArZjQ0bVprZkdnSVRiQ0FENlQ3MHk1?=
 =?utf-8?B?YUJ6RWxhMmtMWkJaM3ZNeHlGbFR3cVQraDc1cUxOSDJlRTRPcXhWTXd2bHFG?=
 =?utf-8?B?L0FFak45SHBXS2grVkJuQ29QVzRmNGthZFZIeFNuWmxnelgxdG1jMnZuV1di?=
 =?utf-8?B?cXJ4NlJEaDQ5SHJQaXlwNzBWbDRBNTJySC80eG5VK25LOVRsaWhEOEtGU0Zy?=
 =?utf-8?B?b1B1VTFLNXR4SzZIdDlPZWV4NnY1aGtXMTh0S3M3NUhsYkdoY0diVEk5dktp?=
 =?utf-8?B?T2hjSkNOT1NnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7164.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlliTDFVVDBnYlJMc2M3TzNoSktxWThZR2JMc3pQL0JEc1VsSlBrdENJbXdK?=
 =?utf-8?B?Q0lMSGk5WXVWSE54THZnbGZ2V3lhenRXTWdNTElMV3ZJZk8wdmhzUzdyRjhu?=
 =?utf-8?B?QVJoRW1oeFNoSGZpRVdGNXlYS2pEVjlyMVpoSVA0VjEyV05iZTlrWXUrMS9C?=
 =?utf-8?B?MEdlRjB6K3RkNHpjbGorNU11Q1VQbVgxMS94WVczdjVkK3htZlQrUkl1UmZj?=
 =?utf-8?B?RitFM1BXNkZkNWlEbHNabXJ4UDRMMG5lUjRhVFovRnZUdG54alRIbWpIVTc2?=
 =?utf-8?B?dUxHSno2b3dYV1Rmb0ZtTjlyRnBvSHhxS1ltcDZITXNpN3l2bjJwbFZwNG1h?=
 =?utf-8?B?TzNDOEVuWXhMMDg0RGowOVZQcExOaHZLZW5PK1o0emovZHZjK1hGL2R1VEhM?=
 =?utf-8?B?L3VJbk45S2ZTK1ZSUjExQzJEd2xBdUROU21Oa09sWUN1NUx2OHZqa2xoNzlG?=
 =?utf-8?B?VWU4MHJaQ0NPOVBZTEJyYkdaMVJmaW9IbjRKazFSd2ZUd0s3QzRmdEtHYVRv?=
 =?utf-8?B?WExrWWk4MWUweFhESWlVRko5YTBKRVFvRUQrYmJ5eXpiZ21leUp1WGRBTnRY?=
 =?utf-8?B?VGE1TWpOSVl4Um52SmFmbWREbU9odlNiQkdiREM4dFpUNTJvT1U1NGJic3JL?=
 =?utf-8?B?ZkxjMThDbFpMSFVnNkx4ZUVDV2tLZWc5clZKdFBSMUR2WmN3U3FQNGpiQy9N?=
 =?utf-8?B?STJmZFpaYnorNEtabmlZVzBvTGJEWk41cVdEbFo1QXRTa3BjaEJ0SW95SDJ1?=
 =?utf-8?B?dnpxcjJUQmNLNU56b0hmb0pRNU9aVFNkOUgyK1RLb2VyT1BRdklIaERYZXBs?=
 =?utf-8?B?aEp2MmIzalo3NnJjS0UvUHFkSTJsMEVFMllPYkNRS0pYRXZkc1JDSlAzL2xu?=
 =?utf-8?B?bzlVdEdXcGpjOGZhQmNMSUhIUWlva05EZnRNallSMjNMYzE2WXo0cFpWYzEz?=
 =?utf-8?B?VmhNc0hvSkEza1I0YlcxQzB3LzA3UDdNNnNMa0xIK1QvdllJM1lxMEU0QWdO?=
 =?utf-8?B?YzArSXdPYWR0Tm9uOGcvR3BvdG5kUVZ4QmhjUUpYVHVqek4rWVUxeHB6Rks2?=
 =?utf-8?B?azBzajJIbGxBT0Y3SEhNTGgzeHQ4L3hGSUNGTXEyQWUvdHI5VHVVYnRNN3hI?=
 =?utf-8?B?dFBWaW52a3Vmd01kZHdJREZaR3RuNkZ6bCsrWW81ZDNjQmEvWmFBRjBERjJu?=
 =?utf-8?B?d25iTEorUDI2SnJaaTlWVmxxS1dlL1VtZ2hqdEMyamQrZ3dHcEVyVHdveUFM?=
 =?utf-8?B?S0w4Uk1IZGY1bHNYTFJsVGV2T0M1VFhlTDB1RHRZSXBRbWVjelg1S1VCQ3dh?=
 =?utf-8?B?OG1tOXZJQVhQM0FmYjdrRnI0NHZxcm5IR1BMUE9WQUw2UGNiQ09BbkQ0TUJD?=
 =?utf-8?B?UVFXWXBzWDJQQUFpVE9FWmdGdWxNRm9XT21INzVqSW1VbWFFdlFkOU5kNTZn?=
 =?utf-8?B?aThpV3BCelc0WXJNN2tYeVlSVU1oRW9uaHB4WU5udWhpMnFOT3BCc0YyNWgr?=
 =?utf-8?B?eEZ2QXh2NmM5VGMrQUN1UmRUTzNlQlhiaE9rcXdFcElFUDdzNVFRNktJL3Fw?=
 =?utf-8?B?THB6UHdLTkMzazZIZmxjc3ZoKzR0d1RqdWtqb0xUTTdDQUVMTzB0dVJlejJs?=
 =?utf-8?B?NngrbkxsMk81VExzYWM1MEhkNnZwb1JaWmlUWGoxeHVxSnRIL0ZmYWRFd3I5?=
 =?utf-8?B?dWpKVUhySkRXdldUcmszYWY1UTFSWjg0SWNVaHorbEQvMXBEWE1USzZzOE00?=
 =?utf-8?B?aTdFdTBFTWhHb3lrdVREUEFzWGVRODN3L1RzdzhPaElOUjh0dlNMcmE2S3VZ?=
 =?utf-8?B?a3ZxWGpnaEQ1K011QWJxQ2FFUDBFdVROTGRKRnU0T09DcGlUMERkYUt1YlJx?=
 =?utf-8?B?em41SXR6QmJRLzB3bnY0Z2VDLys0N25qNDUrUVMzekRncmlpcXFveXBzZVNj?=
 =?utf-8?B?MXcyb1Q0bll3Yll4QXpiM1dkK1lGam9NakVDUm1kdVZRODdnODJDR1hyYnNs?=
 =?utf-8?B?ekZzVFZyQkRZRTA5UTgvZ1d1Y0dsYS8vUjU3Y3dqNXhRZnlyODRvckZBdzVX?=
 =?utf-8?B?RTVvM0d5WnFQL0xZd1ZKZnZKZHE2ZHg0S1YwdGtYa1VNdzYrNy83VlNiYnd6?=
 =?utf-8?B?VkxROUt0SjdFTGJJOU80R1dQUDFNMEIzT0xTZWJYOEJqdjVOY2pSS1UrMGpH?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f649c086-dfcf-4333-d55e-08de2c31bbbe
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7164.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 14:48:44.9011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /CjMN1utp6r+It8vHJz1n8dz5MOWuUiiliiUT39whCbGD/6v9EoljAbiu8rD3U/qL+pmkbnTuYPBNqY2A854zaeYL7viWq9F3uS5mLNhph8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8051
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



On 25-11-2025 19:05, Rodrigo Vivi wrote:
> On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
> 
> Hi Nareshkumar,
> 
> Thank you so much for the patch. I believe the change below is a good
> addition, but the patch itself is in a bad format.
> 
> fixup in the commit subject is absolutely no no! This is a git indication
> that the patch should be squashed to the one introducing the error,
> but we are in a non-rebasing branch. So you need to provide a fix
> as a new patch and using the proper tags indicating which patch
> it is fixing and Cc'ing author and reviewer of the original patch.
> 
Hi Rodrigo,
My appologies, will correct mentioned suggestions/feedback.but i have 
pushed this patch to this mailing list by mistake and will correct and 
route to the xe mailing list.

ignore this patch

Thanks,
Naresh
> In this case:
> Fixes: fb544b844508 ("drm/xe: Implement xe_pagefault_queue_work")
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> 
>> The variable "fence" should be initialized to NULL,
>> and any usage of fence should be guarded
>> by a check to ensure it is not NULL
> 
> Furthermore, the message itself here is a bit strange. It is not
> necessarily true that it 'should' be initialized. In this case
> it looks more like a false positive of static analysis tools,
> but it would be good to have this protection just in case...
> 
> So, some rephrasing here might be good.
> 
> Please read the documentation on how to submit patches for the
> proper style and messages:
> 
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> 
> Thanks,
> Rodrigo.
> 
> 
>>
>> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
>> ---
>>   drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
>> index afb06598b6e1..401f1835939b 100644
>> --- a/drivers/gpu/drm/xe/xe_pagefault.c
>> +++ b/drivers/gpu/drm/xe/xe_pagefault.c
>> @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>>   	struct xe_tile *tile = gt_to_tile(gt);
>>   	struct xe_validation_ctx ctx;
>>   	struct drm_exec exec;
>> -	struct dma_fence *fence;
>> +	struct dma_fence *fence = NULL;
>>   	int err, needs_vram;
>>   
>>   	lockdep_assert_held_write(&vm->lock);
>> @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>>   		}
>>   	}
>>   
>> -	dma_fence_wait(fence, false);
>> -	dma_fence_put(fence);
>> +	if (fence) {
>> +		dma_fence_wait(fence, false);
>> +		dma_fence_put(fence);
>> +	}
>>   
>>   unlock_dma_resv:
>>   	xe_validation_ctx_fini(&ctx);
>> -- 
>> 2.43.0
>>

