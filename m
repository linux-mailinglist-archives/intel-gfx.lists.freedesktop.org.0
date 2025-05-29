Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE13AC7ABA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 11:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C927110E721;
	Thu, 29 May 2025 09:09:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVZd/7wT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF6E10E721;
 Thu, 29 May 2025 09:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748509788; x=1780045788;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aPI661eIC02q8/FHLfvvBbRWmGXNkiTfBjjqfBD7qYA=;
 b=LVZd/7wT2nWblCOuO5r+h4XN6Hr0qJWZpnw9qx880oh3iJ99z5Sl/qDv
 fr3qE85uID6k5sM0UGL9Z6z2JXu2OOtpm8Fzge1xKMu13fuiUMofFLYL4
 Ish6xM8Ccvn/xb0tI9xp3n96c4I9+ZhX1E6qTWn0OVNEjH6F+JZrPfME4
 /a+gKOmGgwUJlIS+3ucQz+0OgOgCWagxwqUl68ANKw31UDXH8vY38e2ur
 6DfoLzZGWqlBSQCM39/Vc79UAS5ubx87dKF+bEoyGJi+GcPoE/rcmusiB
 2zQTmfgBKrZciUxMboBUHj4PGQ2nuUbXXDX5cX11yUzDPQBsjT2mSECI2 g==;
X-CSE-ConnectionGUID: vc6p4CASSzWLDyNLK4T7ag==
X-CSE-MsgGUID: cYZAwBZ1Tg6ch9+wawAXkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="61224078"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="61224078"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 02:09:47 -0700
X-CSE-ConnectionGUID: BOyv2WjvRvCd/cY1kP64jQ==
X-CSE-MsgGUID: 2VBSbuL0SbifyHw3zRNxdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="148369606"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 02:09:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 02:09:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 02:09:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.59) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 02:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZxav9piyttZJc4Z1+PaZTkc3wx79tjUIdZzyw9LRbjBSmgAdbvqN3lLr2M1WWCwFLGvTHhr7lncVk/veP3/+ba/+vQGuf23aBuf3Nl6V888rUEWxzSRDkk4cCDdtA6+xIpmyAQ3RZoZdeM63mCHG+6PglBOehB6YUd79UoRuP0iuOHjETYPqNA5sls7v/okEy7iTTYQyrCqV39aRloSLGQ1I8/Raqw65h8swSjiHqEuvObRWI+1WJ1VEG9R8Tfo+w43orR8Bq1pXxke0lhpf4uoUMK+C1nOpE/jLlySYJym4mRa06NV3PXsGP0Bz6R5l8Hpkm7ZFZ4zO/Jxav8iqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2FlEvVaJqxx7CrTnaruKRQ4rQ6diX4WPjDkk9tUGLCw=;
 b=KLrKumv9W33PPUxnsCLggWfzjtWVKCnqTtdbx0HIpu88z10pSgribX/3780WdJ2u0CcWw9wxQ0eT3SqBJFpjvidCK57DKIsmbw00qoxVnUhPyq/+bCyzIeRnT3utwUhaLa5h1rCPZT44a7SqXz9kxDqEjPU+guohxUhgdqlskcx+0azUGsLnlEfVDz3s8KW+ThfS5U5PLogVN6qhMu5h116GxfU3+bgNUdtJdw8WRru7dBIk+fHniYSUBCw2QylKqMJBseYYNmUIqX5hA/TC3RfHpA73rYwEmMBSenH/3FCg8VhAVY6h6ibyGbkJC5RrOt+CbDBIgijtoH88ltSu3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6048.namprd11.prod.outlook.com (2603:10b6:408:178::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.27; Thu, 29 May
 2025 09:09:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 09:09:03 +0000
Message-ID: <03941c3f-644a-4a64-8d2b-7fb0970e78b6@intel.com>
Date: Thu, 29 May 2025 14:38:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Set vrr.vmin to min Vtotal to re-enable LRR
 for PTL
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250509031107.958280-1-ankit.k.nautiyal@intel.com>
 <aDb3zdphjZ15amZR@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aDb3zdphjZ15amZR@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0039.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6048:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c4be4a7-0aa0-414d-60d0-08dd9e90752f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TE5pVkJDTVV2eDliTUhPMHZtNFBKVVY4NXl0NjhFc2xCSENwTThwR3loSFla?=
 =?utf-8?B?OW5HUC91T2huRzc0Q2M0cGIvd1pQb0RoaEhnWTRNQ3RTZkVNS21QL21kR1NI?=
 =?utf-8?B?dTU3SmFWdThOUFY0TFFaY1RPQWExYndKUmc3QzBqRTcrQTdVUjRySFNjTWhn?=
 =?utf-8?B?TG1xVnNLVXFyR0MyOWJaOVl5UklHYmlDem9JQU43eTZYOWpVNmFGMjR2MWxX?=
 =?utf-8?B?LzBGb1VLNkRsQ3dJaUlSWlY1dnpLakwxTnJqbS9iaGdlQk9nNUdOd1Jqc0Vi?=
 =?utf-8?B?NGFXSjFpNG4rWFZEc1l1OU1JNkR0bXZtSWZ3ZHNabHhJOGNnSC8rV2pNbVl1?=
 =?utf-8?B?SUVOMUUyQXFZNC9JRlM0bmxRd3JRZ0dxWEc4V2hFejF5UlliWXAyZHpIREZQ?=
 =?utf-8?B?WkZLd1dqZW9hNEZHNU5NVWZjVnhPOVN0SlJ0eVRmYkRmMzZhL2JjcjBaZnhk?=
 =?utf-8?B?MDI3VEFtenk1TERpVU1POXVZN1p3NzhPdUZ0WUZPS0RWOTVQbU5DSEs2S1Ay?=
 =?utf-8?B?MFJrTEN5aWhKODZDNTJROUw2YWxJcjNlMUFmVUlqYVdVbHFvUUhscFdTbGhB?=
 =?utf-8?B?aC96VUkrMTUvM2czaVltb01rNGcvR1F2UzdNNEZBV1U2ME9mWXpJZTdldHI1?=
 =?utf-8?B?dHZGMUxMWTRoaURxRTlHclg3SEVtNTNXUVFIdldYb3JLZmFKWkZKL2VaUUZ0?=
 =?utf-8?B?OTRQZzRzYmdESHF1dk14T2YzZnQwaFJMYTRZdjN5anNJM3Rwd0lqZUVqcXd6?=
 =?utf-8?B?UStna3l1ZUlmcnB0VVRhN2tmMUFpRm9EK1RMWXZNV05MaUMyQUszczVWSUhH?=
 =?utf-8?B?clp6blMybzllWWNNYjZTZUZRcmYxaXNrWDdQZGdudVNLcjBMbWRWcCtLTmlr?=
 =?utf-8?B?SXA1QmsrWTB3WmRoSDYzYzRpTThzQkcrNlJGQXI4ejNxb3BYVFQ5dm9sZllh?=
 =?utf-8?B?cHo0WXhpd3FhNHQvSUN6M2JrMTdDVG5nckZPb3F2K3BPdnlkeGdIaUhIZWhG?=
 =?utf-8?B?aVFyVzVFd0VFL1JPOHJXeVpCZDhGaGJqSlBLdzJnRjN0b1VHaW9WOWFLcE1K?=
 =?utf-8?B?N1ZlNjNQZkYrT1dYb0J6VXQ5Wm5iZk9JazdMT0xqZ2tRRlFvNWVOOGgwK0RN?=
 =?utf-8?B?cnNUM1k3ZDQ1VmJqcTlmbXpnc1U0SmtWREJYL0FWZ1Y1TkZHTHlPQ0swZnVr?=
 =?utf-8?B?U0tPQUxnRG5DaCtTSDNyS2V0Q3hyTjYxYWViTDZqNTdDZzc0Z0IySFk2YWdO?=
 =?utf-8?B?bmFMYS9tNDBRdHB3WDdWSFNWS2VSbWJseGhvSUVBSDlCcVVNOUtrN2N2Q1FX?=
 =?utf-8?B?S205R1ZWU2YxcHcvU3RVSk9DVFU2SU43ZHFUVVVUVHhmUGprQmtWY2NYWEhX?=
 =?utf-8?B?KzJ4ZkJhTGNQazBMTTcza1doOVlOcGNzU0hwQWczUHRaa3F4MmRkN243d3d4?=
 =?utf-8?B?Z2pzbjdteC94NGw0YWtLUVp0UGtlMEZrdjI2ejZoam0ybGF5bk1BUVVUQS9l?=
 =?utf-8?B?MVp3K3VEWTR0WFNhM2lnQ1RKM3M5ckF5R0lKTk1lVk9TWVMycUMwc1cvQWFx?=
 =?utf-8?B?eHBndElwVW5paVlKM0I4RVlwd055OTRvckYzUnhjdUpGeEdBQVpXMHdPSWxY?=
 =?utf-8?B?RzFQSzNCUG1pbXBPY2taRHpYVWtKdnNpZTQxR081RUxyZ3M4R0p5cnlMN2FK?=
 =?utf-8?B?M0dxcjZNV1AxNERNalk5WkFYNXBmMFNpZndQeEI4amVFcGJtekMwd3pkN0Rl?=
 =?utf-8?B?dEwreG1BdXZoVEVvMVB6RC9ZVDMzTW8yUGJXUXFpaVpwNVl1OGQyNHNBTk81?=
 =?utf-8?B?Q0xZZTJPbW05S3JjVTE1NjB3Y3hucHl1c2RacVVpRzZCV3d2d2NjSTUrdFhR?=
 =?utf-8?B?RG5wUnpPbnFaeUN3T2YvMkVyMW9UYndQcmNXWUY1SzZQU3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFlEQ1ZhZTdQMmZkMWV2bzhWYkh6amlDM1N1ZFlUUlhBUHNxbnNLM0Y2Mmxn?=
 =?utf-8?B?NUU0WEZJSjcvendXY2NNd3RhUlgxSFZ5MDRGd3FkbEsrdnJ2aWpHMW1tcFpi?=
 =?utf-8?B?YXEvcUxPWHd0dEdXRGNjbGhqR2ROOUlJTXh4L2s4ZWZBeGowZm5RbDVPNUZK?=
 =?utf-8?B?a3lMRDMxZEJGSDVJR0FsTjQ0Ky9oZGdWdDZpQnF3TUVYQ1hvVHVSVnlNVDdI?=
 =?utf-8?B?dXI3cDZmcWowMzNmenozMkJuc1ptTmkxTGZiMHA1Y2hkYXNoNzNtMnZzTzRC?=
 =?utf-8?B?Kzcxcy9GRUlSYXNwcWx3YVh6dmZZNkhNUDNPV1g0dHdrYjRZRU5XU1MvVnRD?=
 =?utf-8?B?QmVnZnFheFk0aWpFQmFhUEFXYU1BaEVlZGQ5TUkrQVB5QjhJT2FYem54N2p4?=
 =?utf-8?B?QWFJQTN5NmhEV0xWY3l0bkdnNHc4RWtDTE5RK0JBN1NoZlczWDlpejBZSDdm?=
 =?utf-8?B?ZldseEN1TlVOcitvNkxURzY0RmgvYUdhT293TzQ5TFZLa2w5MEtxdHg0b1Fp?=
 =?utf-8?B?R2pwUkMxTWxtRjZVbEdpN0FkUCtWR2xtQkZTRzZpZkVLeFFOMEhvYVptbFNE?=
 =?utf-8?B?Z0xkVjdVK2RxSnhkVk92clA5WnRrQUphUnA1RHE3aDM4ME5QSis5U1F3ZlEw?=
 =?utf-8?B?bFJqOTJQa29sU3lWUDlKVS9FakF6UlZDQWN6ckN6M04zOEFPYUFRM2Q1R1Er?=
 =?utf-8?B?MTA2bjVYN0xrQU1RY2xhckg3cEtoNUFJZ0JTeXpKSjY2S3FydFdWc1VLN3hj?=
 =?utf-8?B?eFVibCsxMmJTRXFQK2oyQnZnTVdkdHBHZ2NpT0NJU1hNeG4zQ3liTW5GNzhZ?=
 =?utf-8?B?VjNXZlJDLytCbmdWa1NVVTIrSXNFVFI2V0tudVNXTkRLMU1DYlRrN1RHL1F1?=
 =?utf-8?B?YXdTbjJoTlpYd2dXNmJDYTBkODk0a0M3SjZqZWdPVjRDK3JDS2lYLzVRdmRB?=
 =?utf-8?B?aWJjNU1VRUdtVGpLQ3ZjcGxwNk1yL3dJdFNvaW9xelF0UFFoWFZVTklwWTE0?=
 =?utf-8?B?cFJtc1lRQVJ3QW5FdXNSTW9GSHM5eHNKTnUwZEpHN2JDeEhoVmRVU3FDVDlD?=
 =?utf-8?B?dmg5anlZMkNLVThmdnI3VVY2ZjRUMnRKeTBHRWRiTVRqMC9aeUpxMnBHTmlK?=
 =?utf-8?B?NnBoOVdibHhTa3JQZ09iV29QSEU4RGY2NEV1dzhYaXVORkFvN2piMWd0S2FV?=
 =?utf-8?B?QXJGbUlWVkhnMXlabk9kT2hYUW9rd0h0ZWdJb0czY2dhSDlpWjljK3dIOFhk?=
 =?utf-8?B?RVE2RkN4N0xnS0JXUWpaOFdBeWxFNTJnZnU2YVZYM3o3Z1ZtTTduaENBSHVw?=
 =?utf-8?B?bEtyMTVBOGJrbGUyMUxaK1hxUWI1aGg2YUhkdDkwNEh4V0xrYTdWOHFBTHhM?=
 =?utf-8?B?cWR1YkFCcHZXVHZINStnc1NHckRMU0FWSjkwbkloNjMra044cTg0UHVJSlJJ?=
 =?utf-8?B?MU1EU2xRdSswcVpCMm5OcWFWRmZnVVN2SjVubW03RDYrYUxkb2hVSXBjL0FU?=
 =?utf-8?B?MkxZSHZmbFZ3M3JlNUxiYXRuZzcvQVYzRGM2ZEZlamcyL3JIQktJdU92S3JJ?=
 =?utf-8?B?OUsyM0RxQkYxejZJR0ZBcFhYQmpJems4UmdvTTJHeXZiRndYSGErSzU3VVgy?=
 =?utf-8?B?d2NPdmNVMzRzeUFrSmVFcUNXczRWVk1HeFdPako0ZjNES3NGMUdyU1FFQ1Nk?=
 =?utf-8?B?LytJekNDcG1aQ1FKWldzNUhjVmMzV1E4QXZKZHpvSlRubUJ3NUNiamNPRmc3?=
 =?utf-8?B?VkVCTm94azV5Z0JVdUtzVldSOUMxZkJLUEVlNGlrZzNLdXg2VFhPZ01QelpB?=
 =?utf-8?B?eWFUZnpDOVRhd1NFL1hvNmxFK1doc0tsOFBEaVNibnlzbGRMVlZkUVY5MW1h?=
 =?utf-8?B?b2Zja1pTcTZlU0c0V1ArMlYrNWx5Y1RWT0c1WmtITEdLS01aU3R5eVdQRS9s?=
 =?utf-8?B?OWVFMDBUTjVmQjdvV0JRUGUwU1hoRCtQU2thODBrSmxqam5PSzcwZGVLOUFn?=
 =?utf-8?B?SlR1a3lsdU9Rb2IyQTNlR1RmWnBpVGlMRG9PcTlPWFluWGhpQmxDbnBzVDNy?=
 =?utf-8?B?VURldEJTMTllUTJWdXNFMk1iSmJBUGYwaWV6andldUw3WlBBdmp1NW9wMTA2?=
 =?utf-8?B?dlpRUXZUNW9GYW1heHlqamYwVkh4SUxBbmRjTU5CZjFITGtMcGFzR2ovRTR4?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4be4a7-0aa0-414d-60d0-08dd9e90752f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 09:09:03.8444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MbKbiZ7+A+X9IIx6N+Th2nuNqnuiwihZbSRaOo9sC+Dmqow5MwlrcEoYvvwQfYLrcZ+K3vx8lzP+Vs49a/FO/nrv0a3MfKEdIS0MreuoDoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6048
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


On 5/28/2025 5:17 PM, Ville Syrjälä wrote:
> On Fri, May 09, 2025 at 08:41:07AM +0530, Ankit Nautiyal wrote:
>> Currently in intel_vrr_compute_config, we set vrr.vmin to crtc_vtotal for
>> all cases to avoid having vrr.vmin changed when we switch from
>> fixed refresh rate timings to variable refresh rate timings. This works for
>> all cases, except for LRR case where user can change the clock so as to
>> seamlessly switch to a lower refresh rate only for a VRR supporting panel.
>>
>> In LRR case the crtc_vtotal changes for the mode, and due to which vrr.vmin
>> changes and therefore the guardband also changes. Since we cannot change
>> the guardband on the fly when VRR Timing Generator is on, this gets
>> rejected.
>>
>> To overcome this, for panels that support VRR, instead of setting the
>> vrr.vmin to crtc_vtotal, we set that to the lowest Vtotal (for highest
>> Refresh rate supported by the panel). For non-vrr panels, the vrr.vmin
>> stays the same i.e. crtc_vtotal.
> The guardband must match the actual vblank length or else we'll end
> up completely changing where the double buffered registers get
> latched/vblank interrupts are generated. And nothing is prepared
> for that.

Hmm.. so how do we deal with the LRR case?

Alternatively can we go for a constant guardband (not matching the 
actual vblank length) that will fit in the smallest vblank?



>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 64 ++++++++++++++++--------
>>   1 file changed, 42 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index c6565baf815a..f0949a598f53 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -278,6 +278,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   
>> +	if (crtc_state->vrr.in_range)
>> +		return crtc_state->vrr.vmin;
>> +
>>   	return intel_vrr_fixed_rr_vtotal(crtc_state) -
>>   		intel_vrr_flipline_offset(display);
>>   }
>> @@ -308,26 +311,37 @@ static
>>   void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
>>   {
>>   	/*
>> -	 * For fixed rr,  vmin = vmax = flipline.
>> -	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
>> +	 * For fixed rr vmax = flipline.
>> +	 * set vmax and flipline same as vtotal.
>>   	 */
>>   	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
>>   	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
>>   }
>>   
>>   static
>> -int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>> +int intel_vrr_compute_fixed_vmin(struct intel_crtc_state *crtc_state)
>>   {
>>   	/*
>> -	 * To make fixed rr and vrr work seamless the guardband/pipeline full
>> -	 * should be set such that it satisfies both the fixed and variable
>> -	 * timings.
>> -	 * For this set the vmin as crtc_vtotal. With this we never need to
>> -	 * change anything to do with the guardband.
>> +	 * For non VRR supporting panels/config, set the vmin to crtc_vtotal.
>> +	 * This will help the case where VRR TG is used even for non-vrr panels/config.
>>   	 */
>>   	return crtc_state->hw.adjusted_mode.crtc_vtotal;
>>   }
>>   
>> +static
>> +int intel_vrr_compute_vmin(struct intel_connector *connector,
>> +			   const struct drm_display_mode *adjusted_mode)
>> +{
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +	int vmin;
>> +
>> +	vmin = adjusted_mode->crtc_clock * 1000 /
>> +		(adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
>> +	vmin = min_t(int, vmin, adjusted_mode->crtc_vtotal);
>> +
>> +	return vmin;
>> +}
>> +
>>   static
>>   int intel_vrr_compute_vmax(struct intel_connector *connector,
>>   			   const struct drm_display_mode *adjusted_mode)
>> @@ -374,13 +388,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	if (crtc_state->joiner_pipes)
>>   		crtc_state->vrr.in_range = false;
>>   
>> -	vmin = intel_vrr_compute_vmin(crtc_state);
>> -
>>   	if (crtc_state->vrr.in_range) {
>>   		if (HAS_LRR(display))
>>   			crtc_state->update_lrr = true;
>>   		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>> +		vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
>>   	} else {
>> +		vmin = intel_vrr_compute_fixed_vmin(crtc_state);
>>   		vmax = vmin;
>>   	}
>>   
>> @@ -671,8 +685,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>>   	return crtc_state->vrr.flipline &&
>> -	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
>> -	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
>> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmax;
>>   }
>>   
>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>> @@ -713,16 +726,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		crtc_state->vrr.vmin = intel_de_read(display,
>>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>   
>> -		/*
>> -		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> -		 * bits are not filled. Since for these platforms TRAN_VMIN is always
>> -		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
>> -		 * adjusted_mode.
>> -		 */
>> -		if (intel_vrr_always_use_vrr_tg(display))
>> -			crtc_state->hw.adjusted_mode.crtc_vtotal =
>> -				intel_vrr_vmin_vtotal(crtc_state);
>> -
>>   		if (HAS_AS_SDP(display)) {
>>   			trans_vrr_vsync =
>>   				intel_de_read(display,
>> @@ -732,6 +735,23 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   			crtc_state->vrr.vsync_end =
>>   				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>>   		}
>> +		/*
>> +		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>> +		 * bits are not filled. For fixed timings the vmax vtotal can be used to
>> +		 * fill the VTOTAL. For variable timings, we need to compute the vtotal.
>> +		 */
>> +		if (intel_vrr_always_use_vrr_tg(display)) {
>> +			u32 crtc_vtotal;
>> +
>> +			if (intel_vrr_is_fixed_rr(crtc_state))
>> +				crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
>> +			else
>> +				crtc_vtotal = intel_vrr_vmin_vtotal(crtc_state) +
>> +					      crtc_state->vrr.guardband +
>> +					      crtc_state->vrr.vsync_start +
>> +					      crtc_state->vrr.vsync_end + 1;
> This looks like nonsense to me. No idea what you're trying to do here.

I was trying to compute vtotal from other things, since we do not store 
the vtotal in Vtotal reg.

Earlier it was just same as vmin_vtotal , which I tried to change in 
this patch.


Regards,

Ankit

>
>> +			crtc_state->hw.adjusted_mode.crtc_vtotal = crtc_vtotal;
>> +		}
>>   	}
>>   
>>   	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>> -- 
>> 2.45.2
