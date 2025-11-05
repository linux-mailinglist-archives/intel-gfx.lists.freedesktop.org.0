Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E78C33F39
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A422C10E6B2;
	Wed,  5 Nov 2025 04:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwJnvgKR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A100C10E6B2;
 Wed,  5 Nov 2025 04:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762318371; x=1793854371;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LcDQkPM3w/ynN/YcrX1aQ5InM003H5vLNPMzqSAc+QA=;
 b=UwJnvgKRn/w+bdfoYtCoeI6H7ikSeLZIdy6ulG3KHIDDWFqH0TI17mlD
 iKW+sEy+MoQN2Kvf7kX2EGfCl5FyjeuyJYr1ws1Lh4/sn3ND1GM8MO/qW
 YRzVOpbldl0fWniT4qb8ICH7JDH+9bSb2GwEouXSQntA/52fuMy1KSQD8
 dXsJC9cba7gyTrEj8wC/7hl5ceG0umDDsv7peE65Vzx3pqV2bdwwppbJD
 TZ/sHa/mzRcnZVBZ0hY/3zGxoKji1ZDSesSUyTfCEHiq6NcyhZITpwc1j
 n/Lfx5NwESTof6NehNt0kUg/JXdacURWyPiqw3ZbUL3523dTd1ehu48fI Q==;
X-CSE-ConnectionGUID: KCzzEm3zQviA8x/owqArxA==
X-CSE-MsgGUID: u88E0lJjRLqg5K2cYAwSUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="68283487"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="68283487"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:52:50 -0800
X-CSE-ConnectionGUID: spHP00c1SGCuGqs5SRYM2A==
X-CSE-MsgGUID: zc8oMQIWRN+vzA2fGx4XbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="192513804"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:52:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:52:49 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:52:49 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:52:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SIlQwoRkNK2m+yftyas3kXuY9RwTqE5APqo3YS4h98Cc14fv81EQyU8DSqcJc/RI7NfoTCJ8845fQj0AT8rZHpfXOahGtI3/p9qaKQXHHvseNzibM61uM7zg2oiCOgeyMaNdMFCvS4JUbT0AMD98SHoqvN75S1BgQnTevC3J0GNKo/qwgdyA5ioFUzw6Kjbd7BeFm10c+BgKUQz+8QTaOSxSESBsZPvWRQzW6GF2TZhGp6QfLnaO4HeHFcgHM1x6ZaIt/Ew/ywXI8VKEr89n5+wKlnNngQXzPJa55Rc7Qo3p8NUWOEjP0bnEsN5rs6pnm/IUxBF5Wp0IS4EcWZ9LLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WzC+vNIupizeeGOhbFELyhN6nYBYplUltA/+qmDT+0U=;
 b=mZqMKHp1zBdGLsDOXXdYtRtoDWm4jRc2wx3FeGl+xBo2VihgtKnomF0nbUjqg89WeaTnGFjLRk1C07OGHpNZMnIXxdT5V14PSCZh2LCyp937LfqU67fLnRNiCkNVHi8xoiG9tak3EdeWcM6HHprOS0ehibCJKW2eJnfWGgOHo3P16OQL4yGuS84YZYHf59NuNPUXFFnUpBHUXag6G2h3/q1bPU0BNPLPDbIU5B17B31jrYdZj0Z+PnxMmWCszTo+S9C5H/E0eEvGlmRf17y+GtiTp0LJE8XnDE5L+54rslOg96S8pXW5jAQGQT0q+HFwnoWSg+SPHD6sJPltmESTSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 04:52:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:52:46 +0000
Message-ID: <57d5e8b3-5c1d-469c-a89b-f6d77d182d9c@intel.com>
Date: Wed, 5 Nov 2025 10:22:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 10/22] drm/i915/vrr: Add function to reset DC Balance
 flip count
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0099.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: dc01dcaa-9998-46ae-c38c-08de1c27297b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2txeFQ5bCtvbUwzNnl3VnhRNElrdm43cHBVQzB6VDl1QzZPZWR6ZkFzN2U2?=
 =?utf-8?B?TFFlVWUyMFg5cCtxTHJpZGhVNUNjbjBqK2w4L3Z6dWNFbTIvazFBOFJKSnJ1?=
 =?utf-8?B?am5EL2NhSnBSR1ZKNlpSMzBFUHZJT0gzRW9jNDREdUwvOHpsZ3J3R0VJT1Qz?=
 =?utf-8?B?bmR4QlIrZUl0WDdVbDdVWURIZ2MvbU1Ha3ZZYjRiU1lpQXFSa1FPT3UvZExM?=
 =?utf-8?B?ODBsa1RTSDJsazlRQlBNVHhOQkRheGlQSmZOMzJRM3Z4MENpazM2MWJjQmRn?=
 =?utf-8?B?STNKVjA3RmpKTE5tQ1ZOa2pLNGRYNkpNMmhRTi9hTjc5bVV1UmF0RDNLVEox?=
 =?utf-8?B?RElaVFloZ2VoVzFMbHNoQkdhL3FlRnRwU0VFMEQweVNHRmxxb1NLWHgyNUMr?=
 =?utf-8?B?ZmZZeTJJU2hEeUo1bjM5czNYQnJ2MHBHTllEUEFGaEpTU0tBYndXZnhySjdD?=
 =?utf-8?B?OUFNRDA0SXpKZWc4cEY2N2NvV1N4ZVZLTUZwM1lKNWd1SGphZzRrUFpEL25W?=
 =?utf-8?B?Qktpc1BsdVgxRzJKRUZQREhxVmRJUklta1B6bUNkbVdqbXh5bloxSldGQmRk?=
 =?utf-8?B?dldBRk02R2QxZUd1UDdGTzZZeGZybGxvRERvSERCQkZpS2ZCYW8rdVZiUEUv?=
 =?utf-8?B?VEhDeGRlRU9MbDRMVi84Y1lNRHVieXFHckhIcWhMMU5nb05hSmpYZ0JlZ2Q2?=
 =?utf-8?B?dUNneGtxMzVVVjlpMEZTLzR2Zk8yU2t6bHN3VHdSMGI0Qy9EK0RCQkgvTGNx?=
 =?utf-8?B?QzJYMXJVY2puUitIZEtpRENva1pBSURHVkZvZ3I0UFZibmxrMkgvM1hEMnB4?=
 =?utf-8?B?ZlhGRU55VlFyWVl4Q2l4NUcwWk1BeCtjWFlZdmt5aFlKalVKNEllaUtTWGt5?=
 =?utf-8?B?UTg5U3pxOUM0K2lSKzVaUjFVZEtzRUNwUCtGcWc0Zmw3UDR5amFsV3VyTkp1?=
 =?utf-8?B?cEVReXV3SWRhd1RybmtNT29NZ1lHclA5WlZyYjU1TmNNUC96bFJoVUdranZ3?=
 =?utf-8?B?UEdsd0lqYld3UVdyV0J2OTh5NlUxak1VcVNTdU90TitndzFjbXhUYUdZVGxm?=
 =?utf-8?B?UkFtWWptbFRCUnpnVm9VTEE1V3lqb09zUk9pcU1BZ0M3OEZ6bC9xcE1ITkd0?=
 =?utf-8?B?OFEwZERRZEhlUWdmVmo5SFJWbFNyUUZPY3pPT3RrWmhJM09CejRoQzBQSWM2?=
 =?utf-8?B?aVdHQTNVTUZ2V1VNQXJQR0xGc01rc2hKVFgvMUNXaHZBeU5Kd2ZsenB6aHhz?=
 =?utf-8?B?Snl4VERScWk3Y2I0QXQvaEZ1dFVJN2M5L0ZsZlJlaDVOazFNNEY2MXp0cE93?=
 =?utf-8?B?Y1l1VEZyMjc5ZWo3WndTUzJQQmowVGJZSVpIQVJVVUQwK05BcExHUS91VG4r?=
 =?utf-8?B?RG9jVkI4T2YzRktESDhZeWtFQXMwdUVlQlI4R0Z5d0gxYXNlNWpVcW9tdnN1?=
 =?utf-8?B?cG1sSGsxaXI5VC83djE5a21PNnQ2ZUxZandNVCtMMDluczdaTzNucHdhKzRx?=
 =?utf-8?B?RXVNVXJHU1daZ0dSZHVjZkt3V3lmQmJRRkRUYi93N0lWQkhxbDE1N0JLdzFj?=
 =?utf-8?B?QVIyWFZtZG0zMmwxZWhoK0hZZnlJZHhCYnlOOVVsUnkzNjhqV3dyV082VmEv?=
 =?utf-8?B?TDY2NzVzTndPN0VxY2NkTllSR3JGbHBEUEhib2RONncyMG4vMFJPVTVLYnE4?=
 =?utf-8?B?K3N4T0tiRkdKcWhQZVF4WnczTDlycjVCK3Z4T210R04yeWpneERBUHlPM0g5?=
 =?utf-8?B?enBqWHVUQmdaT3lHNU1jSXRIMWs2SWpKVnpvLzVCRWJUSmZQY2V4ZmpxYmhH?=
 =?utf-8?B?VkY0T2EwNXY1MWhiYXI2bVloUWx3T0dFMHpXS094cWhQVUZwZGFGSkpnL1lQ?=
 =?utf-8?B?NkpsUk5lOXppSWd2cUtiUmc4bnlvbVBnNDdkN1V0VFVBTUlmT2lkVnV0MDVl?=
 =?utf-8?Q?LbdGxwmVOeHB0bMgslncpljJCe6j6SoV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1hJZWlVOU1iMXJIcmJ1WGt1VkRYUE5MTnVGY2dJeGN3Si9pczhNSEY1b1ZK?=
 =?utf-8?B?RWNUdzRWM3NULzUyUVFsS2R6bXV6M1d6cE9JSldHOVFrcUplVFFKRGY0eGN4?=
 =?utf-8?B?OE8zbWFIV0VpdUJuZDNhNFJUZXk3eWFzZm1jWC9zd245VUpUaGdIUVlwdGNJ?=
 =?utf-8?B?VnZ6YjJFYWk3ekd3N29nQlJTQWlSZ2dZY1hCUG91bFFocjJoRnRtMWJkdWRF?=
 =?utf-8?B?cmRtQWRWTHRwYmEvUW9QQy94am1hbXc4UFluMUYrVmh0bHhNM3pwRVVIbmpJ?=
 =?utf-8?B?UkFySXdnTXRDczhpVC9neGxhblJHQitJdHoybEt4VzdCWVBIdFpGUmltK0ZN?=
 =?utf-8?B?dmJzd3FkbkpDellmcUJhVkhwdWNRY1hKNW13WllyTXlvNUdBMlBvYldJWjla?=
 =?utf-8?B?NCtYTElVTmRzZUZaNmFJU1N2K0phYTdiZjRycERUY3A2bDhKTVVFMENlK25O?=
 =?utf-8?B?TzRtYkhBV1BncVQzL0Jpblp4QVBQdGxzR1VOaUhCbkVoQ1JhQUZXY0RrdzYr?=
 =?utf-8?B?L21MRStIelU4Tk4xZHh1ODdvNm55WXlHa0RGaEU3eVNpMnU2aGtvS3VWR2xv?=
 =?utf-8?B?ZXJVOEhId0QwWXR4TXNWYXNzc29LQW5seWFuU2pTTlFVbnp6OFB1dWRpc2tM?=
 =?utf-8?B?OHZ0Y3A1Tk1yQkN2WlM3c0FNL1ZtbVZ0bVprWFNGakRqZEtUOFZqZ3hMaisr?=
 =?utf-8?B?UUhWZzluYjM3Q2VEYXB6WVEzWHROYXRXZFViUkk0NkRzLzVaaFJwdjZyWWs4?=
 =?utf-8?B?U3RDamoyKzlGNTUyeVZlS0djd0pXRWhIcjhUUmFrOCsrUVZJaTAraWY4TnBa?=
 =?utf-8?B?T1F1MHYvYm45SzlGcms0enczVUxycU1rTktMajExLzk0L3MyaHk3R0xUMmUv?=
 =?utf-8?B?YmUzRkVockM0RDdCWGFnQTR6YzgrSEFscFU5OHQ4VzRzYThLdVkxU0VRZWE5?=
 =?utf-8?B?ZVFRVVM3U1prMVBCcU9teExBL2RrRCszMzJLL3dLaUtmOXRhLzhRaEUweHVw?=
 =?utf-8?B?U3ppSkhtM0ZJK0cwZ1E1OE1RcndxZHRkUmZsREdhYUZESi8xZjBpMXAzZTdI?=
 =?utf-8?B?OE9wUXJ3L3JyUmYrMGhFTkszT0o4L3JMM1pwTFVMckQwNk53RzFGYkp5VkpP?=
 =?utf-8?B?V3YyOHF6aTdoVnhwdzQ1T2hLOHlBRlNpKzNoUUd1UFZtSTN4WU4vLzV1SmhV?=
 =?utf-8?B?UzRiSytaWU5oTXpDVnQvRlNBMlZPUWZ6SlpsWlBhbVg1aGxDaFUxYTA1bjJt?=
 =?utf-8?B?UUI3blBsWHZCRVhSSFVPTW1vVW8vb1k5U3NvdXVsZTl6TVBHQTgzUTh0bC9w?=
 =?utf-8?B?R3hpTU1HLzNUNVpBaktPS3NlSy9lZ2RCRjNGK3FWQ1VVZUtGWGUwVC9NYXpr?=
 =?utf-8?B?Q08xakx4VkM5eTdOeUM5bUNobUxaN2VKYVJCU05lY3FDRGhnbVlXbGt0VWdh?=
 =?utf-8?B?SjFSRVBlaUI4N1RzQzdwdHZlZ2tXMjRMaUo3QVp2THprdjVKaWVqYU9QSE9o?=
 =?utf-8?B?aW1taVlmaEEvRjgvdEhlTXBoeDNRK2ZjSTRZT0RwbkRJTmNQRjI4djJlUWky?=
 =?utf-8?B?cXBsTTdXZjZmdEdmUDNvM0RMeC9qQW1kbUVyWFdUdHA5VmI3UGRSY2hpSmZS?=
 =?utf-8?B?WE5kMW5ET3ZnWHJKMjVlT1ZWVGozS0tyQXZqM3QvS2RLMFdOWmJCMkQwbVl1?=
 =?utf-8?B?eEh1Yi9BdlNoTVlRTFJwd1UrbE15OU0vY2NGZW0wNGtGb01qR2l6OVhVWWRq?=
 =?utf-8?B?SnJUNElGVUc2K2FtcmtGZXJ6YWFldGZ3ZUpuMHI3WG9IUW4vaUg0WXJHS3VT?=
 =?utf-8?B?NGJTTy82eWQrR01LMXVVOVhFYmN4cHk4YlE4L1VqR0FGaG02MEdFM3lJdS9l?=
 =?utf-8?B?R3RobFR5Y2ptcHNVbHhEVkQ0UVFDMmpTNXYrSWlmNjNTcEk4RDdhQkVJbUU3?=
 =?utf-8?B?MkNVelc5K2l3QWVBSUpRM2kyM0FvclNQUzlBYzlDUzM0aHhOK3B1OFlzMjBG?=
 =?utf-8?B?cWVHeTFaOUpoOVZRQU1mMlByN2p4bEUrWHByVzlpOHZnL1c1eGpRNDdnL2h6?=
 =?utf-8?B?NC9EQUNDSjFJZWpUSUl5NDJOSEplOWR4UHdnck9iUURnS0QrUnRjdmd1b3NI?=
 =?utf-8?B?TXJTY2UyVUJrazIvaU9YQy9BcElkdjNKLzk5QTJJSnlza0loK2ViYklacjB3?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc01dcaa-9998-46ae-c38c-08de1c27297b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:52:46.2717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kXZnPTaU9A8Gk3nTtUm+fqK0xUzYb+Z+hf4bj56FVkARC8280neTR8+kPF7eNY84oSWqFqxc4jYrKtIkc1pprsSENjD0zMfxn3RyIDpSF2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Reset DC balance flip count value while disabling VRR
> adaptive mode, this is to start with fresh counts when
> VRR adaptive refresh mode is triggered again.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 12 ++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>   3 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1a3e7a6e4ab7..323293f4bf6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1148,6 +1148,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>   
>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>   		intel_vrr_disable(old_crtc_state);
> +		intel_vrr_dcb_reset_flip_count(old_crtc_state, crtc);


IMHO we should merge patches#8,9,10 to have a single patch that 
introduces a new member flip_count to struct intel_crtc, and to 
increment and reset the counter.


Regards,

Ankit


>   		intel_crtc_update_active_timings(old_crtc_state, false);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 87bd722aa32d..2ae27751e5b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -627,6 +627,18 @@ intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
>   		       ++crtc->dc_balance.flip_count);
>   }
>   
> +void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index eebc7be309db..8f97525b8e2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -42,6 +42,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
>   					struct intel_crtc *crtc);
> +void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
> +				    struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
