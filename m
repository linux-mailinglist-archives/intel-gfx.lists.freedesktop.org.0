Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AICJij8cmlOrgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 05:42:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF3270533
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 05:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2B210E1A9;
	Fri, 23 Jan 2026 04:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aATXqi78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C2D10E11D;
 Fri, 23 Jan 2026 04:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769143332; x=1800679332;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=M9nZnVDTG6uFnKh3w5IhyUJ2kBEswYLJpbG1QEcAUao=;
 b=aATXqi78duX+gyf2ASOhVkypvyoCKXBbNeZXFRV19pkCMMb4fLQJzN+n
 y2NAX7WaQ1vnd3Yhh5JXEVdIemmoRtzHbVDZguBEop9jLMQ4dZ5xIb0u9
 v0mEBjAkE7CFS1eUUYJL96Mn8dR5LWbuFCr6sCP6cdQVx3RoDtsMcA9lp
 XN9SLLPMmGsaahkXlplfeVrjLOmX7B6AUWvVWAaIAr0U2LusAyddhhJiv
 HXF8cWnceaxA64rN2WaCPgPpKZTw8aD9puZ8C2M/RwQDNQuSjRHqbgHLp
 EbVFFzIE/Cza4Uc3JxkBZx1zO2a7tQDjUFdTkE59JPRcWJX6K00YGk3Fq A==;
X-CSE-ConnectionGUID: WFASqfUkRy+Gj+uTljfqXg==
X-CSE-MsgGUID: 43p9oypGQpi4qbW3GDJEYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74256710"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="74256710"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 20:42:11 -0800
X-CSE-ConnectionGUID: Wv5ATyiXTmmdSQFu+/q5eg==
X-CSE-MsgGUID: nmTtXNYpQ3eKCmSq3iKVTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="244541312"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 20:42:11 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 20:42:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 20:42:09 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 20:42:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AMaeBAtdYx3mplqyNnU9cJ1EVH/eduf/SNuhcl7lG8xUYj4Gya51sF506DG1X3qXLOcpTsXqkuNBJMP0QGRVgCsHm+K7ubZxzaDcIgEjvXKLR4/EoKK/JjICGimEZC5ZWvo40PA7XvXaZhLUOnRjReXwKj11T9LxwUdFNLSvVDB5DSm4powjBuWE01bHeF//uyKTpNPLzX9dZBl5Mva/iISWPdEjfofJnAA1IZEgAcyseZO818S9MpiJ69jBP3/UpgXUzJfDnUOkHVWnH7wVlgn6YQXvx0rXSJ7Ah0dOigcC1bqVHQVX5Bk/SOP7ODBvTsr6T+JnRI889oS8TYa4nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k7mlpKJhvGXGbTwPQn18ks8TOIHoy2dZk7PMqX8GxEI=;
 b=UJzbezaFBSHTvMAdv48667E/QjnfCj4H5YXHAmbJEK1K3QvyME5v0In6r38H2zcF7jS0gKCZpo5KlgCiUqpdsFyQqEzXedlbliVHG+cCa+IuXTQWbOwgZY0w0kYPoxMXjM5MfDt+ry1O4koH+SH3B7UP+YL8cpATHTgwNwfXgcI8xv+SlmT1sJbLQ1vHpGxmXwc4L8lDsanrjCRxDnBFmvuq+l2v55Pradnl0pQCXymKND5yQS33PaYxbrlVG/OQEsr/+ke59h/vEkWHv5YG2JKppo3WgIfb5e4u86HaIW8SkdsKy2Kpg9jCtzq+JX5nBCF1ghq5IjjdPMIKgkTs8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 04:42:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 04:42:01 +0000
Message-ID: <36c19548-c76d-4f0c-98e5-937db6532573@intel.com>
Date: Fri, 23 Jan 2026 10:11:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/8] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit
 for LunarLake and onwards
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223105120.21505-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0201.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: 56cdb233-6492-4fee-fd82-08de5a39bf84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUp1TkZnZTZPZzhJV1pDdDUvOG1hdnRNMGxjbzI5NTBGRkwzU3ZRTE82d2ZS?=
 =?utf-8?B?ZDRrckNCSURaa1ppQi8xT1R6UWJKOFIxOTRuQkF3TStpVTJTMVRYQUdjbG5W?=
 =?utf-8?B?anlMMFdzMG1RQWhEdDVsaHEyclVyL1gxb09LWWl4N0szOE1TYzYxRnFzZzNN?=
 =?utf-8?B?VGRwRisxandoUXZqdFk5RmVTZzIrd1NHMU1ENkhBUU54cGx4Q3ZDWnZoUVlL?=
 =?utf-8?B?ZVRnbmx5NElhZEVIOHpvRjFQZCt1MCtlNDFHOFphT2FsSytqcktZWUdOYjQr?=
 =?utf-8?B?YXRHdEw0SXd4OWI2ZVFqVTcrLy8ycEduYW5HSXdqQ0JVeGlDSW9pZEQ2aUVv?=
 =?utf-8?B?NWw3QUdzOG52MndkRURQOUlvTGFqZCtFUlpIR3V2M1Y2YnNnQU11eitXMzl2?=
 =?utf-8?B?dUwxMTREMTR2Y0pHTDg3WSsyY3RlSUZsVGsrY2tPTVk2Y3dNeU5rdEg2RGx6?=
 =?utf-8?B?QWhKdGlaWU9PRlNlYjIwS1BPL2FVZkpweWNYZDRXMUU5aXJDaUh3dUY5aXds?=
 =?utf-8?B?UTV6dzZxU0twSy81ckxXYmpYY24zTnV6MEJtSVJJM1RZelBmdVdmTXI3OWwv?=
 =?utf-8?B?WUpaRk9pbXNob3NjM1A4bjhyUTJiMFBWMGkrN0lBK3ZHSFdsc2VJY3VDNDJh?=
 =?utf-8?B?TU5CNzlGVmFnVmYzTkk0VEhvL0pCTmtXOEljREtxNjJ5UHJVOUw3djV1TU5B?=
 =?utf-8?B?ajV3VlQyQXlhbFc5bW1vN1k0RkpOd1dSV1dpMm85ZVlTY3BOR0lwdXlkcW9X?=
 =?utf-8?B?S1pJZkVlcUF5S0pvMzlqREhMb2ZuajdSMUtXS3RCRG1YU1dFOCttV0xVYzY3?=
 =?utf-8?B?cWRsSUNGN0NlTDgzeGFyYUhQZk9OK0cvMnpaaCtFeC9uSmc3WlB3TmF6dEJL?=
 =?utf-8?B?cFIvUjFwYTUzNVJWbE5acGgwa25SSjBuVTdBV0FsQ2ZRaFBVemQwS2daM1Fh?=
 =?utf-8?B?NWJyc2Z6c3NDQnJFeUhGbEVtbzZEalhxaEdoU2dFMDRsUTdrc2dYSGkxMytu?=
 =?utf-8?B?Y3RneTFhL2VYc1NSc1AxaFpvY2ptTWwzZDBkK3U0YlROQUFGVHhuS0NkK0dT?=
 =?utf-8?B?VzhiNlBGaVFHWWRuaStreGNNUWVaU29XM1NJR1ZVUHcxa3Y4ek8xbWQzMTVN?=
 =?utf-8?B?Q0RQUm9HekFuNStJTUFzWHlCaXpiRHFVQWhEYzdnNXIwTDlDMDVwTkhib3l0?=
 =?utf-8?B?dnZOV0ozNUY2TW5PWEVia3dPaktTUzhoUk4yK21uQm9raTJqek16cExoWWJN?=
 =?utf-8?B?N2x0dzhhZGRvMS9iQjRiZUhqdHpJWnN6UkwwUFpkWW5QNXdtU3dGWnNUQm1u?=
 =?utf-8?B?Si9VSm1IS2lJZTdaV1NVeDFGbjg1bW1JWmk1MWoySlpnL3huQzgrNXdvaGRQ?=
 =?utf-8?B?SmgyeERvdHk2dVJadnZYVTY0cFpkWmZha3N2MTh0MkVVMUZFVG1FbGJqS2dM?=
 =?utf-8?B?eVFXYUx1RE5JVmRUUW5JZFp4MWY5cEJVZFFkZXljMzk4Zk96VjNzOUJPK3U2?=
 =?utf-8?B?WEpBMXViVWRUUEJEbzJHWTdZZnVWaVhNbmdrRjdEbDhqQUVKREdpdU9ib05p?=
 =?utf-8?B?MGtnRDZWVy9qNnNyck1jRVRMNXJqOFZPRzI1WWlqeDBGdm9US1J3NG5aeUw2?=
 =?utf-8?B?azRnRndBc1lrTEtJdHEreHVyRlNIUGVVTXJLUmFhQUY5SkhxYVF5T0VKWHh0?=
 =?utf-8?B?NUR0MDlVT2xJdmhOdmNteC9NcWFEUG5TYWw5OVdSVXlQb2QzS3VBRWF6VlNE?=
 =?utf-8?B?am9oTWFJNnZUUU1CRXVvUEovUDM3UjE3WG0wQS9YY0gzZ3NWeG4xd3NiNHVW?=
 =?utf-8?B?QTBsc2t4LzlPYlpoZm1lQWtsNGlaVXVhdmtJaXVvRXNxWDcycWFxV09lT2lm?=
 =?utf-8?B?clhlS0hLS01IcmVkR1MvZ0cydmJBNUFjcGYrc2tKVnhwOHBnVVpvOUtBUGNZ?=
 =?utf-8?B?a2RibGV0aUpxRVBrMm81T0NjckxSenBIb2xPb0tQS2xVc3hud3FidTh1QllC?=
 =?utf-8?B?dSt0R0YvdjhsdEc2bERKQVlKWFBIN2ZkamZXaGltL2dpaEVmc1M2eUJZMEtH?=
 =?utf-8?B?VTFhUWkwc2VYM2FhT2xjd2JObVUyNVZWRHZBUktlaUtsa1Evak5CYTRoSmow?=
 =?utf-8?Q?pJM0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlZSXZERXRvZXhzckdTZ3NmbGhIQW5tZ3ZHRHZ4Qmp2bTQzdklzWFIwRjVv?=
 =?utf-8?B?MjYrT3ZMeGZKdXJuMjhYa1JGSHRVWXE2UjNSWWF2MHdhTnBnS3N3aGRHN1ZG?=
 =?utf-8?B?WHdUbEduckFybHh6QW9SbThYbkloLy9TcDkxcHVSVGVFUVB6cVNUZUZlNnB3?=
 =?utf-8?B?NU1BYkVNVE9LWit4enJBOTNsK1ZSQjFzdHoyWjYrYmgrQ2J6Q1hPenlQZFl1?=
 =?utf-8?B?UnNVNFhKVE92a3prSkZNWVVzS1lIMEpabHJVV25yK1VxNHlyRjQxVGpyMUZh?=
 =?utf-8?B?bGsvQWo3VDIyOU9RL1BpZnArVGNEcWVCbGZYTDRSOXJWWlFBREFLRnhESUxR?=
 =?utf-8?B?dTNjTmRKSkJ2bmpSWXZHK2NFWCtCYWlwL05MempwTWRxY0ZrY0t0U1p5R2Fp?=
 =?utf-8?B?MTNuVTVucmhTUTRRSkRRSTlmOEROL3hpb1ArcFF2L0U3ekJtZnBvWitRSGo5?=
 =?utf-8?B?RWQzL2xCZ2MrdGYrdFlVMzc1a1FTOUFQSDdrRmhuL0VpNGVWTW16NzJYUC9N?=
 =?utf-8?B?YWdvMGlZOW5oWUZWTGx3THRsS1J1VTJyc3ZHUDE4UDlLL1NVbGY5Zjd4ZWk0?=
 =?utf-8?B?S1dRTm5yOVkzQXFjSlhWOWdwNVRWdUtsMXVtQm1pdWFCbkZEK01RQWdjbmdw?=
 =?utf-8?B?aDh4eUttNTJPWExpTVQ1d3Frd0RPa00xYUx6UG9LN0JIOGxQTXYrcE1wZC9V?=
 =?utf-8?B?TEYySlVhUGJRRnNaVjlidGNZS1c3MW9NSHp0NmdSaGRGWUJ5L1JuNUxraTdw?=
 =?utf-8?B?ejcrM05pZXJDNXZPbENUUmUvODlncUZiUFUyNnNzNXhOWXlFRTJvTC90T3lS?=
 =?utf-8?B?bVpBTCthWDNJZnNFbkdaL1lwMzdLenArTUllc3cxbTNwQjYvQU42S3NUdEUz?=
 =?utf-8?B?eHM0MmlRZ1NTZG1rNzIyTVd5a3Z4aXVGMU9QbjFidnZlK0E4dS9vL1ZwYlo1?=
 =?utf-8?B?aGI5dFIxOUJOMW9lKzlFRngvZHNvWW5TQTBsaWh1c04yWnVwQkNSd0ZXNXpV?=
 =?utf-8?B?c1U3RlE5WmpDMXFqeFJNaGl1bSsxRGdjSE9NL3g4b29tZ0RMSzFMUFc5MVJG?=
 =?utf-8?B?ajgzdmdleHh6NExHeU05QkNRNHEzUXI0dUxNc01NNWZiYW1pZW5QUkNJNHhC?=
 =?utf-8?B?cStVeVVpaGpJazJQMlJBajZ5RUJ4ckJIMkpKUlNycmFtY1o5ZVNLRXV5NmVZ?=
 =?utf-8?B?Q3RhbXg0MGdhcHhZZjNDUVZtakR2RWpWNkpGeWtUb2wzWWFtRkRwdDJRSVBI?=
 =?utf-8?B?VXY1SGNMb1FEWDQ4SWxCcklxN2hjQkt4bEIraUtyclA5OWMvRXZBUVBaeU1v?=
 =?utf-8?B?a2VsMXhIVEFQTTdNeGJUQjA4ZnZYbTBvRWpUZ2I4K1hodTIwTFFQMFAxVEJl?=
 =?utf-8?B?MmtsVHlsY3lMb1N4Z0UrOGovK3AzUWJmYUsvdVlUa2NGbjZxKzJCS2lFV29N?=
 =?utf-8?B?SDFhZFdXam56S1FXZ0dreGxXOENqRWszTk1pTGdrOTc0amJIN3N2Ym00eWZF?=
 =?utf-8?B?OTF0M1NYM3BldUZYWHF0VVlaalo0ZHRXWlpNUy9DWldYNlJQSXQyYVRJWE82?=
 =?utf-8?B?d3BmYXlyRWx0NVZEWnhEQ2FWSVpWVkZxaFQ5Z09TckY5K0pTV09KV2pjNm02?=
 =?utf-8?B?NXZoUlVCTnJVTEw2R0hQYmI3dVdjaStrajJJOVFkT3Zrd0JLQVdyTG11MHF6?=
 =?utf-8?B?V2l3WkRUazB1YnJnSVJESVF5eFFUQkdtcUtxS295LzR5MDdhNGo0TENCa0lO?=
 =?utf-8?B?ak1xMVpNWlE3MFFBMEsrYzNOcUFIcVZyMHNYaHBmcjl6MXcvcFhRdktxd25C?=
 =?utf-8?B?TGgvL1VhZzlJWGpyLzRBa0VaWEVka3luQkxyangvNXU0UkJLVXJmMlpmaWZQ?=
 =?utf-8?B?T0NHcm9USm9KMTZpcmJyUWZ0SVZEc3FKQnVSckFlWEptUjl4bzd0UWgrdXFm?=
 =?utf-8?B?S0QvV1g4NlhLOU1UZFBMYkRwUng0dXh1KzA1Q2xsQ2NKcThYdHI5SXpzS1dD?=
 =?utf-8?B?SytPdy9RTlVaeXJxc0NEdlhOWXZCb01HeElvZmQ4NXBZL2FlMFJDZVpXN09S?=
 =?utf-8?B?MFlYQ2d2blowWGw0NmF5a0dxRlFVUFI2c0ExekVUYmFIalhxZjZ6cENsMmNO?=
 =?utf-8?B?TnJMVEZvOXRlSHVLSnNSU21rQmZZK1NWalkwSHpXd3VqQUFWSVlhdTVscmt5?=
 =?utf-8?B?bk5Hc2JCcmYwY2JoenU1NW9BQnpxOVBIdWJPTUE5Y3ZQUllHVEl2MEl3K3hW?=
 =?utf-8?B?cEI2WTRhMnR2MmJYekVJeWFtTFZieXdGdkhpN2pnUDdkSDlYbStsKzZ2MDc4?=
 =?utf-8?B?KzloSmw1dFZnVjNPU2h2OHNUaGJtaXdsU2UwcHc4aUx2RmtZTlVsZ2lzQ1ds?=
 =?utf-8?Q?s8K9Yi9kO/EY8+yc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56cdb233-6492-4fee-fd82-08de5a39bf84
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 04:42:01.1208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XDUoskroNSNCAtk3MKl2IwF0cxgApC8AiDaR6RWHe494kM2ft9SJ9pM+xaBKsEAvu3q8HRD6hfbE5OKYsMBJD1aETNoPOrlQciTCB+nw3So=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6DF3270533
X-Rspamd-Action: no action


On 12/23/2025 4:21 PM, Jouni Högander wrote:
> On LunarLake we are using TRANS_PUSH mechanism to trigger "Frame Change"
> event. This way we have more control on when PSR HW is woken up. I.e. not
> every display register write is triggering sending update. This allows us
> setting DSB_SKIP_WAITS_EN chicken bit as well.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ec2a3fb171ab..19a99f82f413 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -17,6 +17,7 @@
>   #include "intel_dsb.h"
>   #include "intel_dsb_buffer.h"
>   #include "intel_dsb_regs.h"
> +#include "intel_psr.h"
>   #include "intel_vblank.h"
>   #include "intel_vrr.h"
>   #include "skl_watermark.h"
> @@ -166,18 +167,24 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
>    * definitely do not want to skip vblank wait. We also have concern what comes
>    * to skipping vblank evasion. I.e. arming registers are latched before we have
>    * managed writing them. Due to these reasons we are not setting
> - * DSB_SKIP_WAITS_EN.
> + * DSB_SKIP_WAITS_EN except when using TRANS_PUSH mechanism to trigger
> + * "frame change" event.
>    */
>   static u32 dsb_chicken(struct intel_atomic_state *state,
>   		       struct intel_crtc *crtc)
>   {
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
> +		DSB_SKIP_WAITS_EN : 0;


I have a query regarding Panel Replay. Let's say Panel Replay is enabled.

crtc_state->has_psr will be set for Panel Replay as well so 
DSB_SKIP_WAITS_EN bit gets set.

As per the bspec: "When set, this will enable the DSB to jump from WAIT 
for Vblank, wait for scanline number, in range and out of range states 
to IDLE state when PSR and PSR2 is entered."

When it says "PSR and PSR2 is entered", does this apply to Panel Replay 
as well? Meaning in case of Panel Replay will the wait be skipped?


Regards,

Ankit

> +
>   	if (pre_commit_is_vrr_active(state, crtc))
> -		return DSB_CTRL_WAIT_SAFE_WINDOW |
> +		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
>   			DSB_CTRL_NO_WAIT_VBLANK |
>   			DSB_INST_WAIT_SAFE_WINDOW |
>   			DSB_INST_NO_WAIT_VBLANK;
> -	else
> -		return 0;
> +
> +	return chicken;
>   }
>   
>   static bool assert_dsb_has_room(struct intel_dsb *dsb)
