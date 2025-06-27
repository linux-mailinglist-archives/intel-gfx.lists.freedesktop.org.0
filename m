Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A0FAEB202
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 11:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C1D10E98E;
	Fri, 27 Jun 2025 09:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QcZ9KPrL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDC610E98C;
 Fri, 27 Jun 2025 09:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751015151; x=1782551151;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YiQ16ZhqUkEXOHxs9HY4rewRnHEAYUGQmBOtkwBzAiM=;
 b=QcZ9KPrLSLUfLJC9YA4bju2SsAoXRy2oBY53frDkgNJPKIGjMNR4yo1x
 xMNTj1KGQC6xxT5V+3kQctHGrehoNgFWVRVB/9w0UB4AiAboYFxx1z369
 tfJZLPsHhZAjoxwbN76JEwJCQID841Uko4kM9uI/hQzPtIVoERlyjM+5p
 ZuIofFMikpqMDaOKivuG/OnU8lVabdT4gaI93RLt1v/7PItE/JTeLAk9b
 BiznpLqahsFnhhDbiMFXFODK9NOLpclcxg12dHdXYFyCHX9g4CX2cIbf5
 PjcyBs7d8cqa/dwZkkaGQU2nXCv6sfOOkcOwXH/rE8j/VK7gg8fpgl4mk w==;
X-CSE-ConnectionGUID: PWUeAzJVQ0OyY1n2NXZHNg==
X-CSE-MsgGUID: 3S9NdPThRc20H7KN84fN3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52444631"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="52444631"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:05:51 -0700
X-CSE-ConnectionGUID: jbMgt5GeS/21+cJ8Y6mfMA==
X-CSE-MsgGUID: ts4bitLnTxm0cIG4KFAWyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157139452"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:05:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:05:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 02:05:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.45)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:05:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQpacwbX2LifOrbbUWKYZ8rP5Pj+lQ2JouVZUom3WzmQhsBPPiNrkNJeEMIDWrizPSxJZwt/rU3ShbTsi2x84M8o2ewpw2G5kXM3sdLs7Mt6P3KiKU6OE+TVPFLo85YXG/+8PuYRlh6PmZcleqv2O4xS5dF4BhpkxU7syQO+SKlQqzwinXIjePCeyubdVtzVYhFxud/AnzYye+t6A35IZAOAiTvX2X7JcmRzPk29SlubpEoIVNdlMLYCy4ejgZT1WJRYWsEqgqMVGXM3A5rVF9AfpXBbgoPU2nAqlSg0A+dDD7jsPCX4EIutVCL8ahwTGh/jQq+BCm20Etl+Zh4eAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ylhZxqQKzMbFGB+TTNzXLYLFkQ30lC6aKQJ3n4h3ck=;
 b=VJ77ApvIrXmO4mKoii8shqnuVKTkhBf/pFamreVMEbSnuf5gkIOdEn9hJ3MPjNNQd1s4yALjSY+vZXMOE/td3CYWMDTwNBgc+mlEOJ0sQQyaZzdcBlTE4uFtKY/0uRZvyTXPtIveAVJPVNd+XjpIKZI1A+JdOdI6S6soX/mmUcT3SNEnKnoBk8WIxHxomJirzkGzhujCJrAC77uE4aBBVk4quRuBNyOLeBcCEnyAlwM1LFR7npuX7oIgZcyw0qajhWS8aOW2iCVuBG5zuvYQpcsApz6SlvRFNpDO5MjGaYu8RUcVcjyxbyoUovm8jpCJhrDLBpj8F/kC5345e/gs1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7017.namprd11.prod.outlook.com (2603:10b6:806:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Fri, 27 Jun
 2025 09:05:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.015; Fri, 27 Jun 2025
 09:05:47 +0000
Message-ID: <a3370519-6e74-40dc-927d-4ac4cd4f1deb@intel.com>
Date: Fri, 27 Jun 2025 14:35:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/i915/dp: Refine TPS4-based HBR3 rejection and add
 quirk to limit eDP to HBR2
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@linux.intel.com>,
 <stable@vger.kernel.org>
References: <20250627084059.2575794-1-ankit.k.nautiyal@intel.com>
 <20250627084059.2575794-2-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250627084059.2575794-2-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7017:EE_
X-MS-Office365-Filtering-Correlation-Id: cbf1b7ce-117d-4da3-cd73-08ddb559cd5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUpXSHJlS05tcm1hTzdHZUk1NWtkcXZhaUZOaG1KTC9NakkxREhpWFFxcWxl?=
 =?utf-8?B?VDJPL09LOW81cTAvUmd4T3RTZEs2Qzk2Z0tOUUdEZE1tZzdKdDE0WityZmJk?=
 =?utf-8?B?NHdMOUJFWmljdGV6anVmaFpmQVdnbGRXWkxxN25NTzdYMEovTkk0OVpWK28x?=
 =?utf-8?B?RUdKbXVtZmR0V0xwYjhyaEFHMUVsZHZSQ29FaGl1Qk5wUHpiV1FjekRiS01a?=
 =?utf-8?B?WWVaamxKckZUZmtTTFZPVG5HdU1xeGlxekxWSVVNRXZKL2hLVmtNbzhsQ0Rq?=
 =?utf-8?B?VXhaU0lNUVJlQ2VZYUhReGkwQUJFL1A5S0QzYVRGcmNSandNVGVRVFlaeDZG?=
 =?utf-8?B?am9jMFFoMmtmMTJGOHJlNnQvTjlveGlOVUN2eUNxL3JMTitnN3hMbWJSbXhG?=
 =?utf-8?B?SVFQZTVEZVlDWG5lZGcvd3Vyb3B4MzFPOTdxL1pPQUlQYS83bG1GVStLYU1H?=
 =?utf-8?B?eHdMdXd2aThWdFExeE1ld3l5c0xoa1VBVWFlYkFJTWgyQy9DR1NYQ2hsUCsy?=
 =?utf-8?B?ZE4rQkFjUm5OdkhMOWxKaERra2R0bWMxMXlSa01wU3JSejBmZHlnWkhOZzQx?=
 =?utf-8?B?c3o0RzZSc1J0WjM2YmVaRDRsTFZ4RGtpQ2NNQ2FnRTl1MDIvOTI0Ry9odDcw?=
 =?utf-8?B?c21sdVNtQUltbk9BdldXUDlRR09nbnNIbFpKRVVJdFEzbGhZNWlWMGVRRCt6?=
 =?utf-8?B?SE9iNlU0TFF2S0o2a2RkWHZaVTMxL0JibUFUQWFXT1RnNkpvU05mTmxDZHBp?=
 =?utf-8?B?Q0tkSUxmTE10L0dSMzNldUJPWENncjduZTNZWlRFMjFSRmFDY0IyanFESVlk?=
 =?utf-8?B?Q2QrS0VQWWlEem9RdTlEanZVV0RBNHhWSFI0TW5uRnpwd3lYUUx1TGpFbHk2?=
 =?utf-8?B?QURud3ZQc3l6cGJLU0F6ckIva3ZOYk1Tejhrc1RqMFVlUi9HZjZUcG1zM01n?=
 =?utf-8?B?VEhGRzh6bUdJcGZVcFkyQ1NIcERoaFJ4NTZaNFk5dXJxZDZJMTJNYlQ4dlM1?=
 =?utf-8?B?Vng2c2FYV0tKMUtZREJkOVJ2QnBjWm5haVJwOVlWc0hnWmdxektsUUpZaEp6?=
 =?utf-8?B?ei94djU2M2hJbEhpVlhHK3dqTE9Scy9LOER2MkphbVhraXlmMDhBbUdLTkM2?=
 =?utf-8?B?dFI0L1Z5SU05L1J4WWhKdjRxN05WWkd2RmN5ZG5ESHo3MHFsUnBjLzd3RTBJ?=
 =?utf-8?B?R1hTelNJa3FLaGJqR09hV2t2aStvNTc1aDJUdnNzSVh0RS82U1d3Tk1zSUJs?=
 =?utf-8?B?d0FCU2YraXl5MDl2YzhGOGUyQWd1c0hSOFFKbUM5MWhMOE00Y3l2QUJqSmRG?=
 =?utf-8?B?WVpvVVlhSVhYWW9wQ1hsVE5OZjRYQm4wS05UVjlIYU9WV3V1RTMyd3F4aDZa?=
 =?utf-8?B?bmJyaWtYYW1aQlZFZmFJeXlldTVZSVZXL2MwbTVPYS9TbU92NElNY25EVFNQ?=
 =?utf-8?B?VzdnUmlSWFZtN1lqMHZDYTBTSEJZTHhFR3B2c0t5MCtJd2ZMcHFKTk1mWjA1?=
 =?utf-8?B?eTFFSmVncnBsN1FVejRyeUFiUDE0WVhJVzExZXA4Uy90Q3krSm9HeU9ZUDFp?=
 =?utf-8?B?eWN1K3FhTG5sWVJyQmx5WWQzaUVnbGVjRTJrdGtsVERvaU5RclQ4WDliUi9K?=
 =?utf-8?B?ZFEyVjg5czFUQ1lXQlRjam5BKzNHVHNvRVAvdDJhajJOUkdIem8rQmUzOHRV?=
 =?utf-8?B?cVFJT0JUTENJSUg4UFFXSzJqVy9XbmVWaVdNMXhRcDlOYVpwNXpQdmtKSE5D?=
 =?utf-8?B?YWNkOVFDNFpQZEVXdFdPcHhxb0lQMU1hU2hlcDhUam53MjhUU0t0ZzJmZTVo?=
 =?utf-8?Q?e00ThTh670HQGKKuwrouDQSAFVI9JYopplgrE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UitnT0k2aTNUemxhZVZzblc5L0gxOFZoa0xFblU3d3pSd2VqUGFQbE11VHJm?=
 =?utf-8?B?N3M5eERXM0FtbDRqRVErTm8xYVE2V3pndkZpZVJzYi8vb1pnQ21iT09GSG9r?=
 =?utf-8?B?WXRVVlNFSmZtY2IzVEpaUkVoNDBma2NoZXhvR3NsUk8zUUtVbmRleDFNSUVT?=
 =?utf-8?B?NkdyaHFKK2QxMjRKVU9NbmNaY0tjaGxnRlhwYWdtV0ZoS3lLem1YZEZwRFNs?=
 =?utf-8?B?U0lVZmpEcEVFbXNaWW9UcnEwS2RBZ25EMDhETWpsbzdpelVRckx3c1BtTnM2?=
 =?utf-8?B?MDZFTkN6WG9EaWszUms1ZEUxQUdIdDNHenMvTFZXYU5HeU94ZGlKUWxYUHZN?=
 =?utf-8?B?Mmk5czF0VHpuUldjZGYvWVRPTzhDd0RYZ0tLL3RCc0duYlNQcVpKZER3WVo4?=
 =?utf-8?B?dnliQXdMOFE4NjdFZ29SWlRlQUdUUUo4Ri92dlFrY3hOSzh2Q1JUZFUvWUc0?=
 =?utf-8?B?VVhOb3ZxSDRleFRVMzhtdG9jWGZ4RlVvcXROSEVHejNjcGNBQ2x2VmxMRmRs?=
 =?utf-8?B?UEYrV1hNU3IxL2IrQm9jOVNHVm1NRWlEMCtnLy96bDkzUkVBWFBJdC83MlB1?=
 =?utf-8?B?NXJzUVdSRXowT3J2aWhvR3EvY3VvL0htZy9DblhYOHFaaUJ1WFZLay9aNnZz?=
 =?utf-8?B?MVVQQXBncXJFa25RYTFQR212SEVDVU5yVHlnK0I0QWhOTTlGMU0xeHkxVGJj?=
 =?utf-8?B?YTBSMXdFWlB6WDl0Tjh2d0VYVzlpODZFYTRQdG4zS0tod1ZGeW4zVmo4US9T?=
 =?utf-8?B?MzhZWHg2ZzdUV0o2bUNOUG84cmJQQ1VTWHA4RmczS1pQY3VsNDM0b3NtRE1r?=
 =?utf-8?B?V29TNmhmRzQyaW5MVE0yMUJTWjQvaHA0MWpJR1paWUtpV2VpQlg4SThVbGpC?=
 =?utf-8?B?MkF3WW9lQ0pCaDY5djNmZFNUcm1KOWxDWENDa0tSZEhZeENqRW8reWduZTJX?=
 =?utf-8?B?L0RjS05rYzMrWmpyQWJwQ1dTcGs3K29lN3NYNm5tUG1QbW1MWDlQVVhCSTJs?=
 =?utf-8?B?Ky9lVStwZEpmS21Bd0hxc25PbXlBMHFkeHlOc2g0TTVNVmY3NHdjKzFqZXFX?=
 =?utf-8?B?cmFwSWNhZUJLRjByM3dXRVd4TDVKRDNzdmFKZVhndXgvTGFRWlJKTlZ3Y05J?=
 =?utf-8?B?Z2hCSG5qeGVaZTdaQ3o2d0tTV1JhQTJWRkRlUFNQYk9KL3NzMzU3NGpKVUpF?=
 =?utf-8?B?UStNTTR1SWNVTGNhOHI3UkdpTVcyZ3BkTDhiN2wrZEc3MVU4bkprNXYyZTIw?=
 =?utf-8?B?U09xWVg1UDQxZmZjeUhkYUFiNFRJT1pMMEtSM3A4VDVreHBHeHRPdndkbXpG?=
 =?utf-8?B?RlY3aThYYUUxMWRQaHRienNHaDFaclR3SkhXem9ZUU1YMmFOTE1ZUlB6SzNp?=
 =?utf-8?B?UjVKbGJlNUNsaUpYbjg1bjM4TjF6M0cyc0owVk9weTRTWjNtVHhQNDR1a0M5?=
 =?utf-8?B?OXgwNmNrOVFYSEtIUDZ0TjVNM3VVTlhHcUhNZXdvSlNEZFRJQVZBYlNzMmFw?=
 =?utf-8?B?VDY4cFNKRFNIVFhYakgzK1UrRzNvQldscHFIOTY2YzdnL1AwRm9EUEYxeU14?=
 =?utf-8?B?TnVJMnlpaGlxNlNXc0lrM3duTjBqVWlwUjBKZ3Y5aFN3OGxVRjNCQ0dob24x?=
 =?utf-8?B?blJwaDRLZVlzTXplM2Y5SkJ2RDU1THVBNTIxaUg2RjNqTnU4SmRPMytqbnBi?=
 =?utf-8?B?TFROL3pJTGd5cy9ONExsRkxHMFBpd201SnVHdXNlK1gzbFlWSXBvLytDa3k4?=
 =?utf-8?B?TEVmVmxtNUVlSUp3cDg0MlRMNzVmOUVvUlBlTmxqSXJaU3ZheFJCd3c0M0Z3?=
 =?utf-8?B?UWdDWVBZdWl0enYzQUdFK0ZZVGF3bW1BY1ZtaGR4L0xScEJ5blZxc2ViTFc5?=
 =?utf-8?B?Tjgva1RQakkwNnVybk1iU3N2NkxPN3IrOVlqRnYzVjNTdFp6ZDU5Y0Y2VXZN?=
 =?utf-8?B?OUhiQ1Z1SHMvOGl2d2crNjhYZE90R2NiM0s5amNLbEhEZzdpWDE1T05hU3lz?=
 =?utf-8?B?U3R6Wkp0c0xmZmVZLzR5NHd4SlFMZENIOThZU3BrcHhHejlkVTRjd1QzTWtL?=
 =?utf-8?B?b0I4Uzk4dUJtam1QeHgwUnpwYXZneFBpMGdMZmlGend0bVR3MHMydFBBOGhQ?=
 =?utf-8?B?NXhKN2hSRTVpYVhPdE9rNEtGTzdKcUtmODVlVlp4b0Iwc2czYmdCLzFIMGp1?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf1b7ce-117d-4da3-cd73-08ddb559cd5a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 09:05:47.3545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUitjnB46TvOrd+Sh9IWo0tKH7PzmhgArwcbPtTrQvu1w8qopASm1zerVUy5SOvboW5Po926YWDyXcfJ6IXnO0OpuGpHVN1ANF7KcvFM41I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7017
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


On 6/27/2025 2:10 PM, Ankit Nautiyal wrote:
> Refine the logic introduced in commit 584cf613c24a ("drm/i915/dp: Reject
> HBR3 when sink doesn't support TPS4") to allow HBR3 on eDP panels that
> report DPCD revision 1.4, even if TPS4 is not supported. This aligns with
> the DisplayPort specification, which does not mandate TPS4 support for eDP
> with DPCD rev 1.4.
>
> This change avoids regressions on panels that require HBR3 to operate at
> their native resolution but do not advertise TPS4 support.
>
> Additionally, some ICL/TGL platforms with combo PHY ports suffer from
> signal integrity issues at HBR3. While certain systems include a
> Parade PS8461 mux to mitigate this, its presence cannot be reliably
> detected. Furthermore, broken or missing VBT entries make it unsafe to
> rely on VBT for enforcing link rate limits.
>
> To address the HBR3-related issues on such platforms and eDP panels,
> introduce a device specific quirk to cap the eDP link rate to HBR2
> (540000 kHz). This will override any higher advertised rates from
> the sink or DPCD for specific devices.
>
> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is
> reported in gitlab issue #5969 [1].
>
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
>
> Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj_l_ <ville.syrjala@linux.intel.com>

I realized that due to some utf8 issue with my tmux, few characters did 
not come up correctly.

My sincere apologies to Ville for the oversight.

I will correct this to: Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>


Regards,

Ankit

> Cc: <stable@vger.kernel.org> # v6.15+
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++++--
>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>   3 files changed, 39 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..362e376fca27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -171,6 +171,15 @@ int intel_dp_link_symbol_clock(int rate)
>   	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
>   }
>   
> +static bool intel_dp_reject_hbr3_due_to_tps4(struct intel_dp *intel_dp)
> +{
> +	/* TPS4 is not mandatory for eDP with DPCD rev 1.4 */
> +	if (intel_dp_is_edp(intel_dp) && intel_dp->dpcd[DP_DPCD_REV] == 0x14)
> +		return false;
> +
> +	return !drm_dp_tps4_supported(intel_dp->dpcd);
> +}
> +
>   static int max_dprx_rate(struct intel_dp *intel_dp)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
> @@ -187,13 +196,22 @@ static int max_dprx_rate(struct intel_dp *intel_dp)
>   	 * HBR3 without TPS4, and are unable to produce a stable
>   	 * output. Reject HBR3 when TPS4 is not available.
>   	 */
> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +	if (max_rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>   		drm_dbg_kms(display->drm,
>   			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>   			    encoder->base.base.id, encoder->base.name);
>   		max_rate = 540000;
>   	}
>   
> +	/*
> +	 * Some platforms + eDP panels may not reliably support HBR3
> +	 * due to signal integrity limitations, despite advertising it.
> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
> +	 * known machines.
> +	 */
> +	if (intel_dp_is_edp(intel_dp) && intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +		max_rate = min(max_rate, 540000);
> +
>   	return max_rate;
>   }
>   
> @@ -4304,13 +4322,22 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   			 * HBR3 without TPS4, and are unable to produce a stable
>   			 * output. Reject HBR3 when TPS4 is not available.
>   			 */
> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +			if (rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>   				drm_dbg_kms(display->drm,
>   					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>   					    encoder->base.base.id, encoder->base.name);
>   				break;
>   			}
>   
> +			/*
> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
> +			 * the known machines for stable output.
> +			 */
> +			if (rate >= 810000 &&
> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +				break;
> +
>   			intel_dp->sink_rates[i] = rate;
>   		}
>   		intel_dp->num_sink_rates = i;
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index a32fae510ed2..d2e16b79d6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -80,6 +80,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
>   	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
>   }
>   
> +static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
> +{
> +	intel_set_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2);
> +	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
> +}
> +
>   struct intel_quirk {
>   	int device;
>   	int subsystem_vendor;
> @@ -231,6 +237,9 @@ static struct intel_quirk intel_quirks[] = {
>   	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>   	/* HP Notebook - 14-r206nv */
>   	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
> +
> +	/* Dell XPS 13 7390 2-in-1 */
> +	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
>   };
>   
>   static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
> index cafdebda7535..06da0e286c67 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -20,6 +20,7 @@ enum intel_quirk_id {
>   	QUIRK_LVDS_SSC_DISABLE,
>   	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>   	QUIRK_FW_SYNC_LEN,
> +	QUIRK_EDP_LIMIT_RATE_HBR2,
>   };
>   
>   void intel_init_quirks(struct intel_display *display);
