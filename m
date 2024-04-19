Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858778AAE83
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7833910E708;
	Fri, 19 Apr 2024 12:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REgkiTOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12F910E313;
 Fri, 19 Apr 2024 12:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713529984; x=1745065984;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=yoY9Iym0cjhlRw2s2yRZMcM/xTCSNYdhnstXl8OPyGk=;
 b=REgkiTOXXihyOBBvrS/p6XAhmFvUXbqur1RLJQbeaB8XSxI7gNI3JuZp
 95sudJy5Tqc/jGbMLIPwk2wA43hLRv/DlpNBoNP6WExGwVH55rdq0Q59U
 pTRlWAysI6r1LQlxM8Vc+GVhstCQsC228bQMDfE0bzFeBZmiUvGjDAc09
 MS6Lrr/RYEUT4zW3Q14NW09Cwl+kyucXXRvpp4I/LmqCK6wXCBMnkEHAZ
 AwCjPCnuWrUzy2gkkCKRq4v92EpczLQWB/pokmKPeeqEsePyNKye+AXsW
 bQMhPS2XGKBd8m8/009tGnYzFqK0TBawP8qA1ZJ7iMttGKgEKkSqqwH9G Q==;
X-CSE-ConnectionGUID: DhVKVQv4TrGxB+Jm5NxL7w==
X-CSE-MsgGUID: dz87wreTSDWTUhsoG4HlsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="20550216"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20550216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:33:03 -0700
X-CSE-ConnectionGUID: fZercTdCQE+SrUZFtrDqsA==
X-CSE-MsgGUID: se8AYSuZQT6RGz66CT+cgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="54522047"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 05:33:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 05:33:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 05:33:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 05:33:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 05:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fh+COef1bfSQVMHKIVesmf/fas960uYJ3S0Y/+CaNt0l7Iog48MmJ0NLmnO0noZfvFDkGbT3BsM/MXUvHGofsSLGfw09Ny4O/8QBrOT9UsdAG620AYniv9lc8ObhK+M14MH7lc+vr/8pvYhZ6RHy+xxr2/ExjPGjg8+AC7JkfL2vHKU4FNGsdedW0ilZ7EFZyqZOdIcG+U7On25/YXYqL8Km+rvDkqStP5BAOIPV6obxYc9hg+DKHGd7nlZ/RJ2aKPiuO/f/YmHyb171Gj0nugsMLyQe0xnK00rk/ybg8SIo77zBJ5WQSntsWOthu4UZuvLDelFv0DQMKWp6vJ9DeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O65f+k9Vc+4K/rdUcoAFpdGfnytKnHHpivnz+Y1HBbs=;
 b=cc9O97736TRLHAQ+waFmQKf8rnvFCozgsIecWjPso9EESx8d9fAcgRaH2cdbH7DTJcqgEzY5/Rbh1uKviZdFiT/325H0smHLw3Z78ZLvffBaMLwnSISrsxdG/ppe7UNGwL0d9T10hG5dgAheAJ0JHJf1w/ChGjk0t096JaSnttKWuoQDKvxhPPbHjWdAOWlYiwxnmFekX68DFnuurrXshQ9+8BgrCeNwjvoTmY00G44QtJYb5AMWl9QwgQNp21KZc8FiimPcQMSUcW1fReBN//pu8Uoo5cj16ZienNCr6eetzVWv74946WT8RVdBjp+X2E0cEHVyxuKq15TUeGimKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Fri, 19 Apr
 2024 12:32:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Fri, 19 Apr 2024
 12:32:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8695aca8a6643e36bb680bc2dcab97c637e70b00.1713519628.git.jani.nikula@intel.com>
References: <cover.1713519628.git.jani.nikula@intel.com>
 <8695aca8a6643e36bb680bc2dcab97c637e70b00.1713519628.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 4/5] drm/i915/dmc: change how to disable DMC firmware
 using module param
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 19 Apr 2024 09:32:51 -0300
Message-ID: <171352997188.10665.1384247098686273152@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0056.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL1PR11MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: c02936fe-dfde-4c46-2dde-08dc606cd7b3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230031|1800799015|376005|366007|16122699003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGIyaEYzbzJsWXdhSi9yMEVoaE9TWkorb2hmUWlnYzFWLytNWmhqbHhjdjhD?=
 =?utf-8?B?MXFSK3RhTUdEaG1sZ3NBL2FhN1lEMDFZTTNOTW1QNGMxdVV6VEU5ZU54dFk3?=
 =?utf-8?B?dUkvLytQZHl5VGdvdWhYNDNlMzJaZjUxQWZjS3dCd1RTcWtrZGQ2Sy85cGQw?=
 =?utf-8?B?Njk1bkI0cTQxdmNtamYzSFhKZkErVkozckNZOGZQTmgydjIwRU5CeWM3N1B6?=
 =?utf-8?B?cExGYlp3YWlQd3ZpTnduWFJXd1VqV1c3MEphNzU5U0c1aCtENHIyS253N3R6?=
 =?utf-8?B?bit2VG1JL1ZmUTFTQzFCOFR5RERNRmZWdyt5cHh4T0pSM01pTk45ZGtvM1pq?=
 =?utf-8?B?SDhDVGw4N2E5YzVqOXNJa2NZWFlXRzJCVFBkVWJReXQxNzBnNld2VTVPaWpR?=
 =?utf-8?B?dVZGUlFncVMzWkRVUFlzZnlSSTNRZ1ZMQ2hicVI0VmRJYUdRNXlnSFBUNkx5?=
 =?utf-8?B?TldyZUVFeTBEK2l5WmtFdUxQeXAvREl2TkVaajQ5eFFlRXpHa0RwOHh2b3Vi?=
 =?utf-8?B?K2twdWpkZXh1K3h0TUZLKzd1M0U4OTRVdStmTVBoa2s4djh5clRkNGhWb09U?=
 =?utf-8?B?UlNhRFdzSmlOQU81NlU5NlJlMDA1clZqcFZMMExySm14aTdPcDJRMTI5S2FH?=
 =?utf-8?B?K3dJUXJjYTc3cTYzSW9OSExKbzRGMHdUYzZkcnJBVlZPNGN1bStxeVJNRjMr?=
 =?utf-8?B?ckRNSGk2K3pYZnU4VEplZ1dwRHpwL2NXaUlMRWVaeXlLcTkvYVNYK1Y5Rkxt?=
 =?utf-8?B?dUxsR0VENGNlY2ZEZkN0MXJtRFp5MCs2TkN6dFNnVGhIYTEzYiswdDgvK3B2?=
 =?utf-8?B?TFJyOVVuS1hjV25uTFdkWHBmYkFUT3dOSksva2lZYW0yLzFTR0tRZ2s3cHRQ?=
 =?utf-8?B?WlZ5N0Y2bXNuUUEwWHpoT3FxcnhncE90Z1BMZVZ2dlE0VU91QXlraUgxZExI?=
 =?utf-8?B?aWpVTjVBZmQ2R0t1SndrNWtqT3E2N2JqZnR1RFVOWmlwamx2WHVOdkgra0Ns?=
 =?utf-8?B?NDdidEo1SjIwVnEzVzZielN4K2orRkNWV3RSZlRXbGdZTjREc0Jid2JGbE9V?=
 =?utf-8?B?WFRFTXNHMUZFemhkeUhGRGwrT256aEZISkt3Wis5TWwwZnZ5WmFrSGFkakox?=
 =?utf-8?B?bnh2SzJsc0NEVzM4TkhpK050T1Z6U05WdlBERmxoS0dHbzNrTmY5KzU0a29M?=
 =?utf-8?B?ODV1WVNzOW9OcldyUzYvcGJnQjJyQzNncFg0cDJ3ZXozeTE3OUhIbzU4b1Vt?=
 =?utf-8?B?UlFtdFBSQmdPY0QreVlLVllpZ2xIRWtUb3NtZ3Q4Z09WQkJXOElmVHNJSDJO?=
 =?utf-8?B?b2FxQkJiNFNYU2RMcW1FWFduYi9zL1lQYUcyZUJhVTlHTUxlZnZPWGswei8w?=
 =?utf-8?B?WEI0cy9oRGx1T3hSdldxTUx5RmdQOGVXQzA2WUx4ai9EMWJYdmk3bW9Sa29Q?=
 =?utf-8?B?ZkJTMWprRWNyenBIR3JOTVJZY3k0WjEvK1h3UUw0eTlCdHBWUU4vd0s1UFph?=
 =?utf-8?B?ZVZnWDlKLzZRRGo5U3FrQnBWNTErbStYdWtwUy9aTWhuRG5XNFNWeDg4Zk1M?=
 =?utf-8?B?dGNrTGtuS1NUZThBa3Jtd2lnMGNDcFhoRDJwM3FidHJuR3BRb3lCaEJrRnpz?=
 =?utf-8?B?YnNGbVVpVlJmV0VTM3IxRXZ2cWlibVg2WFB4REFpakFvSW1wOVRFNkhmUnRH?=
 =?utf-8?B?U2txNFNiTVB0UlVzeFQyT1g0bE44Y3RBd1JiaDh4ZXZ3MjQ2RDNGd0wwa25a?=
 =?utf-8?B?VlBMQ1VnQ2ZhZzdvdTlicTRCTEZCNjhyL2I0dlY3UitiZDdHRVFaZnV5TnRx?=
 =?utf-8?B?bldDYksyTnY1UjVNZWpzZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGhrUW5ieXpWbjhhaDJpbTN4Yk9iVW04aC9PNzNCdTNKTWdLR0xWYVlCTEZ4?=
 =?utf-8?B?dkRkQThINjc1bitodDJaTktONEcwNGxvOW55L0dTUm4rdWx5SEtSSUFvbXNh?=
 =?utf-8?B?Zm1vUDlqZWhtcGRrdjE5cjFsTm84V1Q0Vk96UGRzc2JRd0YvUlM4MEw0Z1l0?=
 =?utf-8?B?aG1aanlxTGJsd2VQdkpCZTUrbjJvNUNIRGprYkxMc3Q4NGNSM0dMa0RlMUl1?=
 =?utf-8?B?OVRpV0VLQTB2NHAwMlkyL2FUcm9QUFhnZDV3a09QN2p6ekNwL1oxRUNiMmxs?=
 =?utf-8?B?TXBsRWlOTmg1bXRaK0crT09uTGhBaHdzSk1EQ05WUHl3NXlOem5yQnQxMmQv?=
 =?utf-8?B?VllDNHFHYzhqYnFHTUo1S1FmRStFb2ZhVW9vQndmako3R0FZbU5aT2RzazBk?=
 =?utf-8?B?Z01YcGNQb2dwYm8xYlo4MmVZT0lvUWpLZ0R3Ti9tNlNjWWJLbTdxV3ljNFQv?=
 =?utf-8?B?eE51cXpDWUpobWc5djFEeUM3QVlKUmo0b1pOZUJtMW1mcC9PdDFHOThLT3JW?=
 =?utf-8?B?eDFmbVk0WnU5ckhGWVNPTlBHNnYvNWZ5SGdCU2R6Sk5zVm8rc0ZaTFc3eFla?=
 =?utf-8?B?MERpQVBhak02SGhBb2J0SkNnODVFVGs4N1M5OElWZmpXWkVPQzRWaEZ1NERn?=
 =?utf-8?B?SC8vTk9MVitxWUNRMWtjVW5GNDRrNlV5VWM3blB5Rkx2Wmh1d3lEZm14ZitX?=
 =?utf-8?B?a2VjSDh5RzBJTUZnRndBRWtJQnU5R0c3Z3VvanY1ZWJqa0V4RmRUODdQVUo4?=
 =?utf-8?B?ZGNSQVA3VU1EQk00dmk2V2NPRld2RHR1V01YSEJnT091a3hwZWVvNDR6cURD?=
 =?utf-8?B?VW1sRlFyb2V4dWVwNU9hanA3bmh5RmVuYmlma1lTU2hXTWllRDJubUdFWE9y?=
 =?utf-8?B?Q0Mzb0dmaktLVE5TcVFEUDF1Y3VCZHFKb2F6aDBnb0owVThmR29xeW5vQVRS?=
 =?utf-8?B?REt0MVJCU2c1dS9sVkxpZ3pKcGlJYk1pSndzeFVjV0NVUUZVeHEwQ0E5Qk52?=
 =?utf-8?B?M3VtSDBOZEFkdThEMFg2bFNrRWtFcW52SHpnc3dicjJVZkNsTk42dDhPeGpt?=
 =?utf-8?B?MTZ0Tk80cnBFbGhtZ1gzR1FZczNpOUxvb1Y3dW5nNEhNbmJ0cSsvY1FsQmZK?=
 =?utf-8?B?eEZrcGZQRzNQLzBpcVhtZitnSkwyRS9IZEZYeUFDL3RPcGc3R3JDSE9NZXF4?=
 =?utf-8?B?Zms4QkY4UVhNOVFDZ0FTY1FUQzgwelRuNHBLS0dqd01COEI2cUw0WDRYVlN5?=
 =?utf-8?B?TXRuTHlRZ3owRmk1bjdQNHMvSXJrQ0NYcFF0MjV2Sm9sWkExZEVjRG1iaUZK?=
 =?utf-8?B?UFVPd1FxeGk4aDQwMmticFFCZnlJNFE5RlE4NGlhZDRkZkM4dFVGdUpURTZz?=
 =?utf-8?B?RDhWOGlWNWZKalh2VDV2azg5bnhZdXkvS0o5Uy9kNlM1eENQTzlhL0dOUVdy?=
 =?utf-8?B?SWU3Z0VRMXhrOE1yQTlTOHVXV3pkSE1YZTViM0dWVWVLeFFhRmgzUlFhdG9E?=
 =?utf-8?B?Ry9aZ0tyVm1EZVdVcFQzbjJNcjRKbFIySTUvV3pFemRlNVpJTHB1eEhTTlNx?=
 =?utf-8?B?OW4yN0U2Rk4vR3YyU0hZczNjTG9hOFMvV1lBdlNJaS9vRlRLYlZLUm5ETUNl?=
 =?utf-8?B?bU0zamlGR1VJNXJEZXBwM3c1dDJ0NGN6RkloZ01EKzVDc0FLYzZwa3FqQjZ0?=
 =?utf-8?B?N3VqZnBqZFU0amMyREhXcHBlRVJMcEdMTUhQNzBnWUoxc1pLR0l5WXl1b004?=
 =?utf-8?B?VkFGK0o3TVFjVkxNVFVpMUwyWVVneDEwRGRDRUNxWG1xQUZPeFk0U0xieWto?=
 =?utf-8?B?M29aV095ZFJuWjVVYkMyT21vajJvbFdaY1JaTVRuQ2w4SEppZW1LMTVRRnQ5?=
 =?utf-8?B?ZVNBS3Q0NE1KdWhmTEFBU1RVMDJZQ056SHR1SkorM1VIVE1KNlpCSW5sZ2dn?=
 =?utf-8?B?ekdkZGpOZlBubnFYekM1ME9MVnpJbmwxdmdBMFN2K2IxMzliMk1iUkl0bUJl?=
 =?utf-8?B?M2cvWW1XeW9TQTFqQWQzT3U4ZDVkY2hJV2Y4ekZLZEVDNVl4SEdmNE9wK2c0?=
 =?utf-8?B?QlQwYUc1Z2swQ2Juc1dCenY5UWNhU1hhWDQ3Q004d2ZPVWVheFA5VmpyK3F1?=
 =?utf-8?B?aW44TFNYaWRqOUZ1SVNVTHFvbWNYWEp5ZHl1YWZ6SzN1WHpMUjh6c2N5d0to?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c02936fe-dfde-4c46-2dde-08dc606cd7b3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2024 12:32:57.3948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIIPqkVT8CYf5Uvvo6+OVhWf954e+5H5f+2onoQrXBHifi28CgmJAcu8XUXBUraXwFQmrXBqKodm3xNam3gNGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
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

Quoting Jani Nikula (2024-04-19 06:41:57-03:00)
>The distinction between the dmc_firmware_path module param being NULL
>and the empty string "" is problematic. It's not possible to set the
>parameter back to NULL via sysfs or debugfs. Remove the distinction, and
>consider NULL and the empty string to be the same thing, and use the
>platform default for them.
>
>This removes the possibility to disable DMC (and runtime PM) via
>i915.dmc_firmware_path=3D"". Instead, use "/dev/null" as the magic
>firmware path to skip DMC firmware loading and disable runtime PM.
>
>v2: Add support for i915.dmc_firmware_path=3D"/dev/null" (Gustavo)
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 31 +++++++++++++++++-------
> drivers/gpu/drm/i915/i915_params.c       |  3 ++-
> 2 files changed, 24 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index a2027c6cf4f1..7dabfaa636e4 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -73,6 +73,21 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_pr=
ivate *i915)
>         return i915->display.dmc.dmc;
> }
>=20
>+static const char *dmc_firmware_param(struct drm_i915_private *i915)
>+{
>+        const char *p =3D i915->params.dmc_firmware_path;
>+
>+        return p && *p ? p : NULL;
>+}
>+
>+static bool dmc_firmware_param_disabled(struct drm_i915_private *i915)
>+{
>+        const char *p =3D dmc_firmware_param(i915);
>+
>+        /* Magic path to indicate disabled */
>+        return p && !strcmp(p, "/dev/null");
>+}
>+
> #define DMC_VERSION(major, minor)        ((major) << 16 | (minor))
> #define DMC_VERSION_MAJOR(version)        ((version) >> 16)
> #define DMC_VERSION_MINOR(version)        ((version) & 0xffff)
>@@ -991,7 +1006,7 @@ static void dmc_load_work_fn(struct work_struct *work=
)
>=20
>         err =3D request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>=20
>-        if (err =3D=3D -ENOENT && !i915->params.dmc_firmware_path) {
>+        if (err =3D=3D -ENOENT && !dmc_firmware_param(i915)) {
>                 fallback_path =3D dmc_fallback_path(i915);
>                 if (fallback_path) {
>                         drm_dbg_kms(&i915->drm, "%s not found, falling ba=
ck to %s\n",
>@@ -1064,16 +1079,14 @@ void intel_dmc_init(struct drm_i915_private *i915)
>=20
>         dmc->fw_path =3D dmc_firmware_default(i915, &dmc->max_fw_size);
>=20
>-        if (i915->params.dmc_firmware_path) {
>-                if (strlen(i915->params.dmc_firmware_path) =3D=3D 0) {
>-                        drm_info(&i915->drm,
>-                                 "Disabling DMC firmware and runtime PM\n=
");
>-                        goto out;
>-                }
>-
>-                dmc->fw_path =3D i915->params.dmc_firmware_path;
>+        if (dmc_firmware_param_disabled(i915)) {
>+                drm_info(&i915->drm, "Disabling DMC firmware and runtime =
PM\n");
>+                goto out;
>         }
>=20
>+        if (dmc_firmware_param(i915))
>+                dmc->fw_path =3D dmc_firmware_param(i915);
>+
>         if (!dmc->fw_path) {
>                 drm_dbg_kms(&i915->drm,
>                             "No known DMC firmware for platform, disablin=
g runtime PM\n");
>diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i91=
5_params.c
>index de43048543e8..edfd1f54a882 100644
>--- a/drivers/gpu/drm/i915/i915_params.c
>+++ b/drivers/gpu/drm/i915/i915_params.c
>@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400=
,
>         "HuC firmware path to use instead of the default one");
>=20
> i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>-        "DMC firmware path to use instead of the default one");
>+        "DMC firmware path to use instead of the default one. "
>+        "Use /dev/null to disable DMC and runtime PM.");
>=20
> i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>         "GSC firmware path to use instead of the default one");
>--=20
>2.39.2
>
