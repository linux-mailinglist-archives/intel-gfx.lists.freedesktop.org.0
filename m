Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCAF9DACD4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 19:04:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B2B10EB88;
	Wed, 27 Nov 2024 18:04:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVb4wFbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6033388FBD;
 Wed, 27 Nov 2024 18:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732730670; x=1764266670;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=2cpXGJ8qBqknzobhShurwIUniOPSASFlcCzcCZ18iDc=;
 b=GVb4wFbv5tQ9MBQgjKYpSPqlOBKrhAuEEiKuQMpX0eim4hmcA2Xa6gjE
 iq2gtqLcYg6IBNHqq+gFdyaAvbPV1YEjwt23x483Ex6dYrSNCuxsrk/2t
 a8hq/VWCd2rw0qiGvo4s12J3NVgDHMO6V3iLkpxNWwNUL3tK0JOtFCi/M
 eT1+DaENYdY28Sx4msE/0kRQVMDnyrcMJI0TKKapX2Aby6Dl7C+hDQWvL
 RVcpdPBsKB18/78Fb5ZB0NHYSR3vANOHcUF7mKtT77zcGuWeOVhaurTnk
 KabL3ncL6ESDoTOmFRMPKQacEGJJRJwUNyUk6bdpPfHYWFvHf5AvyDWfr g==;
X-CSE-ConnectionGUID: Z/GmbHKnS3KaED6XoDYgQg==
X-CSE-MsgGUID: KK7+bzL9SuqXLUh5DMGNKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="43556363"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43556363"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 10:04:29 -0800
X-CSE-ConnectionGUID: En6lYK3zRUCgf6qGtjXv6w==
X-CSE-MsgGUID: x7xPmksERfCgSqfavBSquA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92400545"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 10:04:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 10:04:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 10:04:28 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 10:04:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JF6+pIFgye2GrLL0Yv3ay7anry5tQCm1so2UP8Gn2UjY2YJfJfZ5+LJS1CTXUkyiFn37p3fD+aqVoylNvBGOTqp/yhyCOYDw6278KB+fiLMIHn1EDBBE6vMiAgOqOM+0XXMKslI7Vio26NXzpHJ+NrMdeSUhvScuQix/RNjUjy/QfmYmHjDhmiJ6RFqdS282ZKGvNX8iOhxOgU8NKcy7RjoewefU0C2TwPfC67LprwNgRpN6Jdrpu4oyyhxaWI2c6pVpyh12UYUchcfL73TqS+EHu+RhE/9NMTk3GkJcJYfA/ojDJw2Mlr1z5+19sHNtXQvIjZgB5drxKK1h1dByzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0anEO9whrALHdVspnoVEzeUaqn+gJ1cbc9aQzGPY5o4=;
 b=YzQfExC4cwpjmeKm8vd2OkDTltoGdqygVPTIygoD6fcSMTyT75iuJDjLkQPqHiFrjENHPS0ArKdJn3CVSYAz6DqOlJt4LGQHEI87ov29suQIHIrtiap+JfKdOZ56zztdoQycwMsgCRG+4+2mALnLl22Cc3ZQnuAi8O0vNs5Wf69EbBisymtMjNblIpMQJAaTW4GyPktHWyAO3FIG5QMomG//7AGmPVMAD23UdK7Xt09lDI/k9oi475taE0pUcAPB1FQRmFwR0iWqYP6V30pDBGEBiL0V18cO6rHwAYoZAbCjfM6gUyJ48itgB8Zq3voR3RcIiW5wfHOMcnU+0nGZoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYYPR11MB8331.namprd11.prod.outlook.com (2603:10b6:930:bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Wed, 27 Nov
 2024 18:04:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 18:04:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87mshkwpw5.fsf@intel.com>
References: <20241127131838.3268735-1-jani.nikula@intel.com>
 <173272067132.9041.672991565423824805@intel.com> <87mshkwpw5.fsf@intel.com>
Subject: Re: [PATCH] drm/i915/dp: use seq buf for printing rates
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 27 Nov 2024 15:04:19 -0300
Message-ID: <173273065947.59080.1992042682043420881@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0319.namprd04.prod.outlook.com
 (2603:10b6:303:82::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYYPR11MB8331:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e606b63-444e-4015-19b1-08dd0f0dedf4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2xaU3l0YWxmR2lsZnBBWjJrZUpJNU50bjk1MmpLVm1KK3BMYXRzVU02UzVh?=
 =?utf-8?B?c0puSzlRUk4vdGp5ZmNaOWhRdkx4ZlBNbFVDMkJMOTZxWVllNjl3UW5CZ0dD?=
 =?utf-8?B?QitqbXg3NmFiYWdyQzEvU1g1OUIzUm4zYkNNMXlHWGxyYk0wQVl3bDJ4Vnkw?=
 =?utf-8?B?ZVZUdVJ6aTZocGxxdGJBK2lZd05rSkw1QVZYMWk1M2dlY3FUYWk4NWxLNXpV?=
 =?utf-8?B?ZnJWNGljS0ZIQ2ZzV0xDdUI0ZHk0MWVSK041S1BZYmFPYTlaek95VXlXcTFq?=
 =?utf-8?B?NEt1emdQN2xIWUJ5WTVXWXZ4ZFl1a0luZEJETkZsUzZrQmIyQVczMFVIQTRT?=
 =?utf-8?B?aWMxV2U1aUFybHkybEsxOEZnRnVCRy9XdGhHNVJ3dXZSS3dLZWJtS1NwUlRw?=
 =?utf-8?B?L1VHNElZZTlmdzFTdVZtWjhxWGhyMTNBMk10c1NIRzM1ZytETXpHSXYzU2tn?=
 =?utf-8?B?QTYzczQwTHJmRVdOZ2Y5MXNQck1zT1RMSUkwWGhNSDIzclVwNC9zZjRTSFV2?=
 =?utf-8?B?bUg2bFh0cUgxcC8ycXNPMm1FOWw3TWpYa3lscUhVWFBOQUF6ejIxUEQ1WlZT?=
 =?utf-8?B?NVJSNHpvdnFBQnVBZ1RtV0lJaEg2Y0RvdU1BUXNoZkNBZ2Y1TXVFclB2QjBz?=
 =?utf-8?B?Qyt0ak5zaTZvbm5acG1FUXR3WG1sUTVNRE9pM0IxY3lSQy9VbTcreHVkMUhC?=
 =?utf-8?B?RTZISHBpUU5tQk1FS3BtcWlRd0dMdVJHL2RxSlF2dTZNVjNoQURBMWtzRTZL?=
 =?utf-8?B?bGJ5cWdaR3VQZkk1blE0dW94VHlKRmxMNWtibUsrOGhTSGpUMVp6Sm9MQnl1?=
 =?utf-8?B?cU1RZVg2THNsYjdmMGMzVFhreTdiemVHREEyU2t4Z3pVdTYrYkcvb1kzVm9r?=
 =?utf-8?B?aGtDeldrYVpkQjU1M3ZaZkJtWk5jaVFrUWozYnRMd2lrZGUxSHE2NnpnWG9R?=
 =?utf-8?B?VFp6NTRSZXZQbHAyeFkzc2tybVRDdlQ2MVF6S1c0Qno2c3l6MitKRmpwc3Vk?=
 =?utf-8?B?dnFvbGhxdUJENFpWcGM4UkJPdnQ1RHdaU0tPd0VrMFRzaXRpcUhBUlVOV2xm?=
 =?utf-8?B?cEFEOXNhRnhEYWlwbEhPU2U4Z1pFTjJ6S3kyYUhMOGpGUVVJWk1qNlNicGtW?=
 =?utf-8?B?clBsQXFvM2hvcm9iamRuTHZZaExma1NYTS9xbGNDekluQUFZTC9BYk1aTEVz?=
 =?utf-8?B?SXQ5a3RwSWQzdUN0aUF0cG5MZ3g3ZmU4ZllNM2NMOUtjaWJ0WWpEU3pDTGJj?=
 =?utf-8?B?NHV3YVdPcDgrVC84eGozUFkxem1ab3U3VWpDcnF4bUZzZHhYUjlsSG9EYktM?=
 =?utf-8?B?aFMvVERGblJQNWhJNGxpR0MySHNlS3g5K0pRTWlpemxEeXcvanNWZ090OHFV?=
 =?utf-8?B?NnpuVjBvYjVJd2NVdXVTdWozb1Y5bEp3dXA0MWhnQXVtTUx6N2hiVEk2R0xa?=
 =?utf-8?B?WUt1WG11VWRnc0pYMTlJWjVmdzdhcy9CemM1QysrOXdnNUJmYmkySXZJZzRD?=
 =?utf-8?B?bDZKUjVoT2huVHpUK1RrVlkyQUpKTmNMZ1pOeGJUeFJIM2NCSnhJQm1WSFZy?=
 =?utf-8?B?d0h2bDhNLzVhbEZMTXVoRFNlTFZqa0wzc1JwWmFSNjhrVWdKQkExcDJ6Ukl3?=
 =?utf-8?B?SGFjUzJxMDFtUEFkeDhxQ2RnNy9PK0NiSjlOMG9vV3RhYlJoV1FVRjFMdDQ2?=
 =?utf-8?B?UWdRaE8zMXZpTTRFdVNzZ1Y2MjZLdkk2VGdOenpWYWlvdU9qbTlBeGowVll5?=
 =?utf-8?B?VTluaHpJMm8vSklxNytkdmh1Rzl4UndJWm5DQS9uUmwwV1JxYm5BWDFuR29Q?=
 =?utf-8?B?QnZ2RGtsVGgyUko2ZWJPZW00TTZWV3p3K1Zsb0dDOHJVUjRFMGdsUVJ0dGR0?=
 =?utf-8?B?NU9sc2RlSGpSU3dzbWJXbzIyU1QraldGbGZQZVBkQlVKVnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1RCYkYzRHFRU2lwMnVicmdCUjNBQmRmY3RNQWtjWVdEcEdmRmhSQ2lPOUc3?=
 =?utf-8?B?Q3JqY3o0aG9ZNEgrOFUzbXRNS21lK1JoMG1ZMnBiSTY2bWJTNGpwYnBjejZI?=
 =?utf-8?B?VXp3aXJpcFdYemh6c0hvY0ZFd0pkQWF3NTUxeURCNCtQV2cyKzhBT2NtWGJ4?=
 =?utf-8?B?Q3pTL21SRHF3Qno4aGVDY25PRnFhK0p3L0tCQlpxRjV2NTk5eDRSQlY0Q3FQ?=
 =?utf-8?B?K04vNSt6d2l4dXV1TXhqK1htbExIWGhhT2YvcHVMYjJzMDJnRzN2SDV1cGt0?=
 =?utf-8?B?M1EwcDVtRy9Ha2lldkkzRytER25rc0NKL0czMENPU0l2VzhiSWw4VEpJSnZj?=
 =?utf-8?B?a2ZjUk8ySkNLeDlMS2J0cllZbW12QVR1a29FcmRiSnlwUGVleGZCbGQ4ZlFP?=
 =?utf-8?B?aTR5MjJ1TVRDRXVKdnBXMGFFT1pwcU9uMUtJQTJKRVY4WXgxUERCSXhiL05D?=
 =?utf-8?B?OUNuOWtwcmpZQ1RYaXVNYVZjKzAxSzZZK1k3OWxPS1BrV0dEVGh0L0w4SVZC?=
 =?utf-8?B?d0FWVUpicEZnRk4wSStYTmZzOFVaNjYxSVRGUnBkUEFhTTNod2lWdFpreWJ2?=
 =?utf-8?B?Um45c0tnUE5zcDR5c1k2NmJYLzNPelVOZWFUZkpNd1g3akc1M3pxdGJTVTNr?=
 =?utf-8?B?aUY4eXV6VHVoZzZxU2ExMGNrbG1DVWhkMDFEdHl4NDgzbzhvNHdYOVJHSDE1?=
 =?utf-8?B?U0ErR2VlQnZPSE5pYlNDYjNvZFM2bUFROUVLOVFKT2VKN01zVCtpeWlrUk9y?=
 =?utf-8?B?MDVRVnI0OHE1elZxUDFhYnMxazh1N1pCRmk5cjdsR09RRDIzY3VWY3RFZ2gy?=
 =?utf-8?B?bHhvck03MTNXTTU1cVEwMTZrbzBnTWI5TTVxcDZCMThEZnIrSXYzK1R3UXZy?=
 =?utf-8?B?SXR4clV1ZVZXRGRMejJSOVNhOG5CMjViZzU4aUM1azNUVEl3SHVxMWZuS0g2?=
 =?utf-8?B?dC9zMWhFRXZWSGl4c0M5ZnVGNzVjZGcvOXZVQkE4dHBaemw0bTJsUm5hNHdT?=
 =?utf-8?B?c24vNzhnOW1obzEzV0ZQa2hYV01lZHRRdFJSTE9jeS96QUl4WnpWTHY2cXZI?=
 =?utf-8?B?NWJUWWlsR0dUTEN0eEh5RWZLMzRWd21raDFUZG9Hb1V5b0l2Z1hnQnJ3WVRG?=
 =?utf-8?B?b1UyUFdjSXB1ZlBoV3dnaVRWc1JPT1c2UFZ0aUJwd0tmb3FPNWJmc0VGWWpt?=
 =?utf-8?B?KzVuWjY1TTQ4Y1Qzajk2SEc0UEZ0YjZyODZCRDJFS1lDUUg5dGlubzFFeUQ1?=
 =?utf-8?B?UzJWalB5cFhWR21QSmEya1RPUzV1eDJGTkF3d0RuRGYweEUxWGJLVDdKbG1O?=
 =?utf-8?B?QzZEellGNVhEdHM5QkpMd3V0c2hVTDRGNVpZKy8xdEJ4Wk0yVVY0QWdwT0lz?=
 =?utf-8?B?R0JDZDZQZVZvaUptRDFEUzZnSmxIRkNEMlZFeno0MSs3aXlZQU9HNWhXQW93?=
 =?utf-8?B?cndnYmxuMVAwRm95bjVtdkI2Uk5hRXVGNWZsU3RKNC9WQTZHaUd6NlNvbUtl?=
 =?utf-8?B?cXNsWUFWVml2aEFldmpscEtWSkZPRFRRS1dibTBrNEozdFhXaHgwOHEzSG5T?=
 =?utf-8?B?QVZiOHlzMm0vRVJXUlM3dXNyVG83eUM3MFNkWGxzR3BDUFczVVNpMXlSTDhr?=
 =?utf-8?B?aEwvZ0tqSFkwSy9TY3ByMVFPeXRISGZWeUtaMUN3RnM3b011ZUtZN1YwaUZY?=
 =?utf-8?B?MWwyTUx2WVg0QzBwaXphcDFuUVF0TjVEYmJFNjVOd0V6RHFQL0w2N054dmlt?=
 =?utf-8?B?RWZLNkd2WmQxVWVWNlBiVVdIOS95cHNZNlRsZnI0UENyVkxvQ1BXeGhOM3Qw?=
 =?utf-8?B?TUJZVDI2SWZFWDA4cmJGdkpDbjFuTFF1WmZUZWp4Uy9GeWNHRlRESDRDbGNL?=
 =?utf-8?B?Y1RjYzc2cjJVWS9VWDlrVTdGVUxLZVV3alJSb3dUWHIySjVrdGxvZkVmY0pU?=
 =?utf-8?B?R0lRSE52c3M2eFFMaVFWTVpkdmxLalN1VnBselh6RWozR2pUTkdvbDZlSWMr?=
 =?utf-8?B?YTdmenNQVmJLRHM2L05vUTBtU0REclkxcHJRTHdSeWxhVklqVkJqQk5jTzli?=
 =?utf-8?B?YWF5Tlo1UFZUVDZkYit5MTdtN1Z4Um9vbk1qRUtvYWJGOXd1bzFTcDl1S25I?=
 =?utf-8?B?MTRnQ050S0NXN2J0UjZ4MnVob1pnOUprYmZOQ1FFT0oySnFDTjMrdzM3eEZR?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e606b63-444e-4015-19b1-08dd0f0dedf4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2024 18:04:25.9263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MDM1wksa9zGevNAlezSOx6GgJFef257fCNWLwXc5ywpSuJOe2FuLyBYTWIbYTdDk+T2pcgMEE0v3BR84z8RxLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8331
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

Quoting Jani Nikula (2024-11-27 14:24:58-03:00)
>On Wed, 27 Nov 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-11-27 10:18:38-03:00)
>>>Hand rolling the buffer overflow handling with snprintf() is a bit
>>>tedious. The seq_buf interface is made for this. Switch to it.
>>
>> Cool! Today I learned a new kernel interface. :-)
>
>\o/
>
>>>
>>>Use struct intel_display while at it.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
>>> 1 file changed, 14 insertions(+), 22 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>>>index 053a9a4182e7..4471c8fcd478 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>@@ -28,6 +28,7 @@
>>> #include <linux/export.h>
>>> #include <linux/i2c.h>
>>> #include <linux/notifier.h>
>>>+#include <linux/seq_buf.h>
>>> #include <linux/slab.h>
>>> #include <linux/sort.h>
>>> #include <linux/string_helpers.h>
>>>@@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i9=
15_private *i915)
>>>         return DISPLAY_VER(i915) >=3D 10;
>>> }
>>>=20
>>>-static void snprintf_int_array(char *str, size_t len,
>>>-                               const int *array, int nelem)
>>>+static void seq_buf_print_array(struct seq_buf *s, const int *array, in=
t nelem)
>>> {
>>>         int i;
>>>=20
>>>-        str[0] =3D '\0';
>>>-
>>>-        for (i =3D 0; i < nelem; i++) {
>>>-                int r =3D snprintf(str, len, "%s%d", i ? ", " : "", arr=
ay[i]);
>>>-                if (r >=3D len)
>>>-                        return;
>>>-                str +=3D r;
>>>-                len -=3D r;
>>>-        }
>>>+        for (i =3D 0; i < nelem; i++)
>>>+                seq_buf_printf(s, "%s%d", i ? ", " : "", array[i]);
>>> }
>>>=20
>>> static void intel_dp_print_rates(struct intel_dp *intel_dp)
>>> {
>>>-        struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>>-        char str[128]; /* FIXME: too big for stack? */
>>>+        struct intel_display *display =3D to_intel_display(intel_dp);
>>>+        DECLARE_SEQ_BUF(s, 128); /* FIXME: too big for stack? */
>>
>> I wonder if just using drm_dbg_printer() would make things simpler,
>> without requiring a buffer.
>
>Mmh, that's always line based, isn't it? It would result in each rate
>getting printed on its own line, which is too spammy.

Oh... I thought we could keep the "\n" to be emitted at the end. However,
now that you mentioned, I'm not sure if that really works and/or that it
is race-free.

Looking at results of

    git grep -W -e 'drm_printf(.*",' --and --not -e '\\n'

, I see that ivpu_bo_print_info(), drm_buddy_print(), bridges_show() and
drm_print_bits() are some examples of the existing cases that are
similar to what I was thinking.

--
Gustavo Sousa

>
>> Anyway, the patch looks good to me, so:
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Thanks!
>
>>
>>>=20
>>>         if (!drm_debug_enabled(DRM_UT_KMS))
>>>                 return;
>>>=20
>>>-        snprintf_int_array(str, sizeof(str),
>>>-                           intel_dp->source_rates, intel_dp->num_source=
_rates);
>>>-        drm_dbg_kms(&i915->drm, "source rates: %s\n", str);
>>>+        seq_buf_print_array(&s, intel_dp->source_rates, intel_dp->num_s=
ource_rates);
>>>+        drm_dbg_kms(display->drm, "source rates: %s\n", seq_buf_str(&s)=
);
>>>=20
>>>-        snprintf_int_array(str, sizeof(str),
>>>-                           intel_dp->sink_rates, intel_dp->num_sink_rat=
es);
>>>-        drm_dbg_kms(&i915->drm, "sink rates: %s\n", str);
>>>+        seq_buf_clear(&s);
>>>+        seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp->num_sin=
k_rates);
>>>+        drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
>>>=20
>>>-        snprintf_int_array(str, sizeof(str),
>>>-                           intel_dp->common_rates, intel_dp->num_common=
_rates);
>>>-        drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
>>>+        seq_buf_clear(&s);
>>>+        seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_c=
ommon_rates);
>>>+        drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s)=
);
>>> }
>>>=20
>>> static int forced_link_rate(struct intel_dp *intel_dp)
>>>--=20
>>>2.39.5
>>>
>
>--=20
>Jani Nikula, Intel
