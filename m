Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6678A2656E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 22:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6156E10E0C9;
	Mon,  3 Feb 2025 21:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZlCljImI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CAA10E0C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738617533; x=1770153533;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=SNs5rAIgNaW2TbgAVAZ9GeSCw+baz0c4Z2hX+vXxVfM=;
 b=ZlCljImIfrW/2gKuuKMkz7OAWOLFL6ui6knA1CVUpw8Ad9DZYVH5uEHR
 H1FzNeZBKQB1eTGNfQ11ZhbTG8AyoE29VlYASmN9WWbChd3rgc2yzoOsS
 Hqh5Qd1WIpliiJkMfad0zxVrHWTIZ3mFeIZH9xesd6e85UH9y/QvgCG/D
 YZgaGXP4JhdELerZHqa6763/Cdu2AD8zzhW1pBa/DE1BHHNW4V04ge76t
 MG1hRS4rITYrXrnvIZNE8YLmp6wvXf8FC/9kARyLYAoUEEjFAK+Njo5t2
 q55swgjU/wB3ZywZSTnp5ZxQJidwJycMz/EEPE/Mj6seJDi3PUmnGcnpz A==;
X-CSE-ConnectionGUID: hJ1/6TizQwSSHS4Z3YXm/w==
X-CSE-MsgGUID: 6wnvL9cjSgGFm0RFISwyVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="41957609"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="41957609"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 13:18:41 -0800
X-CSE-ConnectionGUID: itMg+eIgSPO/r3Jay8nE/w==
X-CSE-MsgGUID: jeM7WwQpQbuKwAiGKITOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115384757"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 13:18:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 13:18:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 13:18:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 13:18:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=frJBO/neGx8PrR/5rVLyAtF8LRxWlr2Sst4AkvucoQqEOwkmvOD5zmG6TFq+pOi+bPtK7tSvXX4SGxALLtTrHUrHUCAV7T2MuFloZzrt1oqivXTZZx9Zone1oYeP6Q0UcKOBqL0fJddtcB85U1qqsOHL+MVEXPzLMYwVvGFpOpGBdSBkT6FSl+H2PHFuRKYs/Iv1Vp62Zwv6QLwAZV0VUarNpv4zZzFuVX/fGT624G/ika+PvogIZLCYsV/5IJk+j52TNSQkpJWrIANyzKOCga0K/7W+VDBJCLrnoqiNaJFuT2qTryUTtJVgKWqhJx/b76c7lKavU43xYUWYjYG29w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Auu2H2ZO5QEu5sw6QFyjKJyMIIox6e3EphNn3X888eM=;
 b=O0zcaS5vbqFA+8TSUxX3kGGzziA4yiX0HjI+PONuk5zIWS6jKKXtrZiPRylz/L9Rxrf3H4r4jRdRF8q7V0vgwbY212AEkh3SMrLI+ADQNBb2ftV9Hjwskp70iq179m+/I+VQtyJdqDUazJSARhN/Qln0yfVnzsfLqnmCbu5n0I71hkER67YRpHvaoaxv8uCncNhYa9xeLiNPFIigOTeMFhhA68p/lUF2oi8XPI+hM9japcKCPJvvc8k4xWyO8bKkhwtEnEBNVhK6ZC2VML/YmiSJShItWpO6W5NZ9IUb0vV0gZ0yd6PYJhOGctsiWeRqtNSC1q1OaBtpbkLWEwZfRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6171.namprd11.prod.outlook.com (2603:10b6:208:3e9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 21:18:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 21:18:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <816975f84d2005fad3f870f9d7486f18cfef3578.camel@intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com> <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com> <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
 <173861394843.77773.14213626182925674257@intel.com>
 <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
 <173861525455.77773.11090522110857446904@intel.com>
 <816975f84d2005fad3f870f9d7486f18cfef3578.camel@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
To: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Date: Mon, 3 Feb 2025 18:18:29 -0300
Message-ID: <173861750965.77773.16119113504082709088@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0290.namprd04.prod.outlook.com
 (2603:10b6:303:89::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6171:EE_
X-MS-Office365-Filtering-Correlation-Id: 247a5a24-0cf1-4730-7086-08dd4498509a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDZsUDNlVG4zS0wrQVFCY1lMMTBucmpTajNWQjVjSlhEZkJtZUZSeXlSR0FD?=
 =?utf-8?B?cU01Ly9RZnlXTTFHa1FVV2dROWJIUStNNzl1UjljVCs5K0VsM003alFHRzhY?=
 =?utf-8?B?Z1p6b0luR0RmM2JjNmFNNlMzdXRualhBbkhFMVB4aGdRQmNLZG1hR0RzY2No?=
 =?utf-8?B?Um5saVhvNGNOdkRKSWRzUytFbUg1UFUzOUVheWhCc2lTYllRTlVnWWZsMGMz?=
 =?utf-8?B?NjBna1daUFQ2VXJFejQrWThzWS9GTmpWNUg4OWFyMHBQaUVKN1J3NkpOdVho?=
 =?utf-8?B?dVJMMFBsTkNreGJVTUQ0VHN2U0dCQ3B4SWxmbDJ0dkNvWWpwZ3VHWGRJZENH?=
 =?utf-8?B?TEJ6SjlJaUdUakNMU0JUTHNNRFdhU3M3Yzc1aEVqMEN3b3laMGFnM0EvQ3Mz?=
 =?utf-8?B?TU85WnM4Ly9nQWRlSnR1ays1M1JGK0xaQkYzUlJsL2grQnB0MHZFVHdXMEg1?=
 =?utf-8?B?TFVSQ0REcHpTWG1kTXR0c0Q4cjZ5ME0wOVlCQzZBd2NVVCt5R2xDZkdUcTcy?=
 =?utf-8?B?ckdKZ2RleVRjYUpCYU9lUldUcSs3c1h3cjRMdDVSZUZzeExtbXNPbU80alJr?=
 =?utf-8?B?U1EvdXlxRmJCbzRlQjRPQVFPaWxJU0dYNUpDeTNzSUljSFlVWW1PbmFOTmlk?=
 =?utf-8?B?aFNJbTFuaU1BUzRpazZHZGZubDN3KzV0NzVOeUdsb1VCTlc4dDFhcHN4Z3RJ?=
 =?utf-8?B?MUl5aE5uNW5TR25FN3B5YStSSGJSOENOYkV0RHRLQkhKTjhWVHBpSjQzVjc4?=
 =?utf-8?B?THYveHdHYkRXVFVZeC9FclRzdHEydmlNUHBuTVVtNEVGVVJLeWpJalpLcEtJ?=
 =?utf-8?B?Zi9XdTZtYkE2KzMrRUtUMlI4eG9GTG92eFFtdEU2YmxPK0dxMG50Rmh2L05O?=
 =?utf-8?B?ck5ORTZOSHNQS2pkNXp0dEJicHplRG5XTEt0MmYwSFZTcksycmNJUXVDT1RK?=
 =?utf-8?B?MUFlV1VzOGMxeXVkOFV0aURCcUU5eGk0SXhycUJYdVNEbmNZME5kZDVoTUUx?=
 =?utf-8?B?MjAxYWkxb3BzSEVBVTFTeW55QU4xdDIzRmRCQ1UzeTZ2YU91ZXdwZ0pGS1hk?=
 =?utf-8?B?d0RVSmxZOFVjMkZzTjE4TmxLUzNFc2lVVjVGR1hQc2NnaUp0TG5WeEtvb2dO?=
 =?utf-8?B?dFQ3ZW81RnppZzN4NXhhbm5nbjFHY3NLc09PdXRRd2hZOEJjTG1iekt0b2l0?=
 =?utf-8?B?MUhOV1htZjhJeTg4QVoyS3REb01sUFh2dWh2TkdoVy8xbGdlWGE5OW9TKzZ6?=
 =?utf-8?B?NExMQ29WMDFOR0Y5cjhLeXFBSStHTkhydFV2RmQvcHN3ZjV4anNBckVmVXV4?=
 =?utf-8?B?UEc1N1dXZDdWOUlKT3dqek51REVoVDh1bFd3UnN5YWY0MCtPaVdNN2UrVTBG?=
 =?utf-8?B?YzlQZW43RndwUi96b1ZuM2pzWlhvbjZ5RCt3RVlMSjlSMDVGWk9kcCtIZ3lF?=
 =?utf-8?B?YXFsd2VLKy9xL1QvbkpLU3NFeWRTQ082R1hGNnQxaVZvZ3ZQS2EyaTNmdlhJ?=
 =?utf-8?B?TFQ3UVNkdHp0N0tNZnB0cUZZQXU4SDROdmphUkRqSW9mK083TDZJMHh4R1hO?=
 =?utf-8?B?S3RyMjkxNEJpWlNXUUpBcFROYTRwVmdGTTI2RWJEUUtqR3loc0k0MEUySGMx?=
 =?utf-8?B?QW9uNGhYd21TaVM3a1hWaXBibXlzWGlweTdsdzdYa1pReUViSXdwbjZyM085?=
 =?utf-8?B?ZVhQSlRMT1NRb2YrWGZlQ2xydkUxU3dPTXdYd2luRUkxV0ZDTjBBQ0ozOXBu?=
 =?utf-8?B?NUlIakVyT0t1c3FBUHhUTzMzekcyM2JSTDRmOVVKdVZIRTFkN3JUVlo2d0JE?=
 =?utf-8?B?UUNydDdFYThtR2IvSVpVK3llelBGVTVGZEtSdEVZNlFGWlk3RW9IOE00ZFIy?=
 =?utf-8?Q?PP8vOf0+mZdLK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG1ZV1dDbU9NSGNQYWFzT3Q0V1JtdTMxYm00YkZMbUdVSXUrRW9MbStkOVpL?=
 =?utf-8?B?U2k3bEZUZzZBcE9nUHgvRzNNY3lVZEVTa1p2RUhVSnZjWlN0eHBGQUQ3amN3?=
 =?utf-8?B?ZlpUV2J1cUNCMzZSOE5Ib0NEMnBMdE5YanhrQTVjR3hOdFRBM1BNN1IxenJX?=
 =?utf-8?B?UlZrWlhTV01ZS1JjYzRIY25IdUVURG04cmlnOTMrZGRWbDUxODNHTnZGaVdl?=
 =?utf-8?B?UUJac2t0c1FtSEhVU1p1VzIxRTNVNDdoQ0hRcVQ3NDFvRHdYS2lQYUJNOVlS?=
 =?utf-8?B?bmxzNWtXdEZvUnRDbWxLREhGSXZEeTJBY3hJQzRySmpCVjQvWW5CZFVoRHox?=
 =?utf-8?B?QzloZ0k2Rmh0VXhxbStlR3pOSFBadHNPMDFGSnBzVGg1NjZJYVZCVm5UVytQ?=
 =?utf-8?B?L01QclB0bGxnQUlkUmZFdGYycUl4bE5MUTFkUnNGa1hOZnNMWldXVXlFQ1Fu?=
 =?utf-8?B?eG1LMVQ0TnBHWXdUSXg0MFQrRTgwZW9wYlRrWEVwbTNUWWxMU0NZR3B1eDFZ?=
 =?utf-8?B?NExNc3V5RzVZUUx6VVpvM0RaVm5uWUxieTRBWWt0eXpYN2N0VlhGcFNVZ2M4?=
 =?utf-8?B?L1ZFVno1Z2NpYzMveWtrZ1l1eVd5ZkJOekdZaE5aMS8xenUzQ25VaGsxR0hY?=
 =?utf-8?B?WnNHbXk3cjJrYUxaVmt5YUhwQlNtZkh5bysrL21NeXJ2QjJTeWlDaWFENjlM?=
 =?utf-8?B?TU0wRFBmZktkS3hmRnh6ZEZtbzZDTjczYkdMbDQ4ZnhYWCt4UWZHRThtdjVx?=
 =?utf-8?B?MnBEVG9ZOExLK3hIUDY3UHF1aGlSWE1aTGtucE1IaWZRb0Q3M3pYNGloZjdM?=
 =?utf-8?B?a1A3UjE1OGFLcmVkeGpsTDcwKzRza1N3U3lrR0k1SlJRZDJ3S0tCc2oydEdF?=
 =?utf-8?B?SzRucjIwOU9qWDlaWlFLeVV1NjhTeFk4RDVTL3ZsektkcTRkSWFXaVVLOU9k?=
 =?utf-8?B?Q094NWdvUHAwNThmMlk2elJoUWNWU2RuSWJqNUkyc2JVNFJldTZCWjBzb1R4?=
 =?utf-8?B?QkdJZmpPZncxd2NUNnFHVkloTFZJWWJEQlJ2a1Bsd1liY1FNREpodGNFS3RT?=
 =?utf-8?B?R3RGVFVoM1NVdXlKc2NKRzFIZm1IdEdQNnBpUndqelNwVzNhWnJWcVkrTUhP?=
 =?utf-8?B?Ky9VUEtZWXFoelkzQmkyRkxrU0poV2FnRzNnbWZDVDBRcml5WnRzOC84NkE3?=
 =?utf-8?B?czBFTno2elhyWEFvLzhTZHQ2cTlTaDRkYlZheVRjdjFRS09HY2p2NXlYVTkr?=
 =?utf-8?B?RjFKUUN0QXlva2lJQnQ1ZFl0ZWsrOFBVRDc5NDFYU3BTalNMb3hQclVwQlEz?=
 =?utf-8?B?Y0pIcnV4YXB5RVFuQyt6emdaQlVNR2tyZi9hS25YQXhvQkIxdUpRajkxMHpm?=
 =?utf-8?B?WnkwdW1YVE80ZDRxQXZ0ZFV3K0loMnNFOXJndUZDQ1N2ZjB5STV0MUd3QnMv?=
 =?utf-8?B?WHRXSzZyMzhpdkU3Wlp1TG82LzRzdFVyZVNaR3JZMFh2c2VJY0w5N1I3TURZ?=
 =?utf-8?B?cFc0dXZjYWJ3dEVjN1lhMzRLalBFSEpPdTFKZGU1RWpyV0M4OGNwYmNzSERM?=
 =?utf-8?B?ZmFaUWNVb2taaVdHaWVXZWVPUFliRFQ5UjFMeHZTaW1KSEFIVjJ3NlpiMnAr?=
 =?utf-8?B?eFlCYlJYeEhORHpwellYd1oxOXhTYTdGSENVczZ4UHpMUE05N1d1VTcyMGdV?=
 =?utf-8?B?QW41UFJQMUFsa3NKUWFsOXJOdmtJM1k5UERQZ2Jpck4vWXVYVU1mazhvTVpF?=
 =?utf-8?B?RjV6ZTErR3A4MTc3WVRxeEZidG4xZlpWbWdIekpKTmNCY0NPWHpldmlqT1Aw?=
 =?utf-8?B?T1QwbXFjTHA5dVVaekNyQk5uclVDSGJhdEVBcis2Qy9IUFZxUk9pRmpnU2FI?=
 =?utf-8?B?U1ovQ2xBK0Y1R3p6V3FtTnNCcFVhNGlHYnpQTEtDRERUdlNpWXJIeWhtd0xB?=
 =?utf-8?B?WlBwRXVNSWZZbDhWVFBZRThmQ3N0UUw3MytFWWJsNnN4Wm1Ec0dXbURScm90?=
 =?utf-8?B?bGlReEhsVXdRZWZuSk93aHVndW02KytHanQwTmF5MERrS3M1RXJYKzdLR2Rt?=
 =?utf-8?B?YkdiYlNtVE5GczZ2a0JqL3VtVHBOOTR3Qlg1V0liWWZ4WlF4MmxsdE1CNmVw?=
 =?utf-8?B?ZkdmRXVpUFUwS1JlQXlEYmh3L1FWcWdIVDBZMURQN2w5Mno0OGRZMmcxU3J4?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 247a5a24-0cf1-4730-7086-08dd4498509a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 21:18:33.8935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VLPV43C1zmGSy3PHGk1zA8zpuAn4f7n48r/JRnRPrds2HKbOyed5DorhjjuBkMdDKE6IFo2NMKhfRwq6ZTcidA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6171
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

Quoting Vivi, Rodrigo (2025-02-03 17:59:19-03:00)
>On Mon, 2025-02-03 at 17:40 -0300, Gustavo Sousa wrote:
>> Quoting Vivi, Rodrigo (2025-02-03 17:23:53-03:00)
>> > On Mon, 2025-02-03 at 17:19 -0300, Gustavo Sousa wrote:
>> > > Quoting Imre Deak (2025-02-03 16:22:44-03:00)
>> > > > On Mon, Feb 03, 2025 at 12:15:26PM -0500, Rodrigo Vivi wrote:
>> > > > > > > > [...]
>> > > > > > > >=20
>> > > > > > > > The driver enabling DC6 is not an enough condition for
>> > > > > > > > DC6
>> > > > > > > > being allowed
>> > > > > > > > from the display side. Some display clock gating etc.
>> > > > > > > > configuration by
>> > > > > > > > the driver could be blocking it. According to the HW
>> > > > > > > > team,
>> > > > > > > > DC5 being
>> > > > > > > > entered while DC6 is enabled is a guarantee that DC6 is
>> > > > > > > > allowed from the
>> > > > > > > > display side - i.e. the driver has configured
>> > > > > > > > everything
>> > > > > > > > correctly for
>> > > > > > > > that.
>> > > > > > >=20
>> > > > > > > Fair enough. So IGT test case would check directly if DC5
>> > > > > > > counter is
>> > > > > > > increasing and DC6 is allowed.
>> > > > > > >=20
>> > > > > > > Something as simple as this in the kernel code would tell
>> > > > > > > that
>> > > > > > > DC6 is enabled:
>> > > > > > >=20
>> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > > > > > > @@ -1294,6 +1294,10 @@ static int
>> > > > > > > intel_dmc_debugfs_status_show(struct seq_file *m, void
>> > > > > > > *unused)
>> > > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seq_printf(m, "DC5 -> DC6 count: %d\n",
>> > > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 intel_de_read(display,
>> > > > > > > dc6_reg));
>> > > > > > > =C2=A0
>> > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seq_printf(m, "DC6 all=
owed: %s\n",
>> > > > > > > str_yes_no((intel_de_read(display,
>> > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > > > > > > =C2=A0=C2=A0=C2=A0=C2=A0
>> > > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DC_STATE_EN)
>> > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &
>> > > > > > > 0x3)
>> > > > > > > =3D=3D 2));
>> > > > > > > +
>> > > > > > >=20
>> > > > > > > and
>> > > > > > >=20
>> > > > > > > $ cat i915_dmc_info
>> > > > > > > [snip]
>> > > > > > > DC3 -> DC5 count: 286
>> > > > > > > DC5 -> DC6 count: 0
>> > > > > > > DC6 allowed: yes
>> > > > > > > [snip]
>> > > > > > >=20
>> > > > > > > $ cat i915_dmc_info
>> > > > > > > [snip]
>> > > > > > > DC3 -> DC5 count: 292
>> > > > > > > DC5 -> DC6 count: 0
>> > > > > > > DC6 allowed: yes
>> > > > > > > [snip]
>> > > > > > >=20
>> > > > > > > Thoughts?
>> > > > > >=20
>> > > > > > The DC5 increment could've happened while DC6 was disabled
>> > > > > > by
>> > > > > > the driver.
>> > > > >=20
>> > > > > Yes, it could... in general the dc6 bit would be zero, but
>> > > > > right,
>> > > > > there's
>> > > > > a possible race.
>> > > > >=20
>> > > > > But should we complicate things when we know that on the test
>> > > > > case itself
>> > > > > we are in full control of the modeset?! From the test
>> > > > > perspective
>> > > > > I believe
>> > > > > this would be more than enough without complicating things.
>> > > >=20
>> > > > Imo having a counter which works based on the condition that
>> > > > guarantees the
>> > > > display to allow DC6, would help later in debugging.
>> >=20
>> > yeap, it makes sense
>> >=20
>> > > >=20
>> > > > > But well, if you really believe that we need to go further in
>> > > > > the
>> > > > > driver
>> > > > > to cover that it is fine by me.
>> > > > >=20
>> > > > > But just to ensure that we are in the same page, could you
>> > > > > please
>> > > > > open
>> > > > > up a bit more of your idea on when to increase the dc5 sw
>> > > > > counters
>> > > > > in a way that we would ensure that we don't have race and
>> > > > > that we
>> > > > > get the dc6 allowed counter correctly?
>> > > >=20
>> > > > Something like the following:
>> > > >=20
>> > > > 1. Right after the driver sets DC6_EN, it stores the DC5 HW
>> > > > counter's
>> > > > =C2=A0 current value:
>> > > > =C2=A0 dc5_start =3D dc5_current
>> > > > 2. Right before the driver clears DC6_EN, it updates the DC6
>> > > > allowed
>> > > > =C2=A0 counter:
>> > > > =C2=A0 dc6_allowed +=3D dc5_current - dc5_start
>> > > > =C2=A0 dc5_start =3D dc5_current
>> > > > 3. When userspace reads the counters via debugfs the driver
>> > > > first
>> > > > =C2=A0 updates dc6_allowed the same way as 2. did if DC6_EN is set=
.
>> > >=20
>> > > This sounds good to me.
>> >=20
>> > I like that as well.
>> >=20
>> > >=20
>> > > I'd like to add that we should ensure that DC6 is really being
>> > > allowed,
>> > > so that might need to be handled inside gen9_set_dc_state(),
>> > > where
>> > > allowed_dc_mask is applied.
>> >=20
>> > well, for that we can also have the=20
>> >=20
>> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> > @@ -1294,6 +1294,10 @@ static int
>> > intel_dmc_debugfs_status_show(struct
>> > seq_file *m, void *unused)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 seq_printf(m, "DC5 -> DC6 count: %d\n",
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 intel_de_read(display, dc6_reg));
>> >=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seq_printf(m, "DC6 allowed: %s\n=
",
>> > str_yes_no((intel_de_read(display,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=20
>> > DC_STATE_EN)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 & 0x3) =3D=3D
>> > 2));
>> >=20
>> > on top of what Imre suggested right?
>> > so the dc6 count is updated and also we have the live view of the
>> > register set
>>=20
>> Hm... Not sure if that would be required to validate that the display
>> engine was ready for DC6. I guess the dc6_allowed counter would be
>> enough.
>>=20
>> >=20
>> > no?
>> >=20
>> > not sure why we need to go to the dc9 func...
>>=20
>> Hm... dc9? Did you mean gen9_set_dc_state()?
>
>doh! I really need to stop trying work without glasses :)
>
>>=20
>> Function sanitizes the target value for DC_STATE_EN so that we do not
>> use a value that is not allowed (e.g. when the driver was loaded with
>> enable_dc=3D0).
>
>but this function is the only one that really writes the right values
>to the registers, so if we need something here, why not just reading
>the register directly?
>
>so perhaps I really missed your point on why we would need this...

Perhaps Imre can explain this better, but I believe the point is that we
want to track increments to DC5 counter when we have DC6 enabled. That
driver-managed counter would be in dc6_allowed.

Repeating Imre's suggestions with a minor tweak:

1. Before we tell the hardware that we are allowing DC6 (disable ->
   DC6), we store the value of the current DC5 counter.
2. After we disable DC states from DC6 (DC6 -> disable), we read the DC5
   counter again and subtract the value from (1). The result would then
   be added to the current value of dc6_allowed.

In (1) I think we should read the DC5 counter before we update
DC_STATE_EN, just to be sure we avoid some sort of race (although that
appears to be unlikely to happen).

During DC6 validation, if the test sees that dc6_allowed was
incremented, that means that the display engine reached a state where
the SOC would be able to put the display in DC6.

--
Gustavo Sousa

>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >=20
>> > >=20
>> > > --
>> > > Gustavo Sousa
>> > >=20
>> > > >=20
>> > > > > Btw, while doing this experiment I noticed that the debugfs
>> > > > > and
>> > > > > test
>> > > > > also doesn't call that residency anyway and it is just count.
>> > > > > So
>> > > > > perhaps with your idea we don't need to change the debugfs
>> > > > > interface.
>> >=20
>
