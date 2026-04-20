Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLHvB30b5mkprgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:26:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335442AA7F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 14:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF7A10E582;
	Mon, 20 Apr 2026 12:26:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YxV0o4rA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348F310E582;
 Mon, 20 Apr 2026 12:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776687995; x=1808223995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A8YZncK5fJbzZC3ogsjnyebmciLBRNtPIcEsqZm/1sk=;
 b=YxV0o4rAqliqqhuyMjQnfaVBX65ielCWLwXjVB/zIh4kQBrMHTS+Eu38
 5QQwX8hUUnZpTB18JNTdRbX90BDMTVOYgQT/X59UQvtjHlPHVWL9PfqA5
 1GrksO8koC/cmR+pC+Sbjb+D0/aAKTnTtFyC+hioNwmkC/JlJxf8gFiVx
 1Oqwt7eXbR8nkfjt0I2lsvVDqqWvrRWQbaEeGRwp3DQ/lVoyFa5eUUbJv
 cAZibBvKfYFCgqvWrQgRMhmw8usz9wcsZL7Yr7CyiVpMxTr3prXeON78t
 SDZlh7NUP5qlBNFAULLz9xsP53fNRx5oSS0gMIKUdUsy+v4NfDSFIBbvK Q==;
X-CSE-ConnectionGUID: RJDgltNiTk6ccLgJEUs/Jw==
X-CSE-MsgGUID: B2fIVts/SMuftbfiOqxvpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="95004556"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="95004556"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:26:34 -0700
X-CSE-ConnectionGUID: mGZrH4MhRtGkG0DG6rSvnw==
X-CSE-MsgGUID: K5FV+e2UTKalKmeRuxwXww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="228560489"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 05:26:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:26:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 05:26:33 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 05:26:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nin6uy6Efsnd7w+Cg2rvBr9DRcpS4lxhHeRhfNmS5Vtv3NpTgKt3i92zOu8zkrxBAC/MUKJKDcwdSjHuqCkE6R1UhT1YjxjcdrGdzNJ9WGwdEO3ififvscXYSacMDB0tg4j8OcYFPYrNVo4X5cpxO0Bn64Hq81Rj2H4L0I6OZMh1KRt+orGCdfUgk/fcfMdDVyZ35kfnZEYJ9Tvi+3OaTqydwJmXwNlzErDxg9KwLOlTOxaL605cHCrFCZNoQlh5rUFIHz1HtZk3bKaITykSF8leriIUoVQ7InLlLYzruixh4817FHYI5DRRAw9lksARCunG1E+26Ku5yY+1dN9XLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TMf/3eHwHVYQ0O9MTyuNmrdAtGBc9uzT4RPad/Gciqc=;
 b=eaNjT3UlVOAUteTKyploJW+5zw4HtU0gCIiebmfHdOQsbpEczL7giMPq/J8mMiwKcG1/LNxlcYYtMnz0EaoyR2mw/Kdu38ZnpUMydd0AmfhiTxepiQCUAzHhf1awPhRrqeGctlq3VYUEPdNuPDR1Mw+uB/d7wDO143mIhbx5DJN2Zk0dwhhHWXIs8FY9Y+ydhIrLtGk2iB/mNV/L7PKxFGsrprbJCu3nkwlVDgG77xstsra36j/OrgdNVaMP9lXxgqYci2yRGSopUHyp6pLvbOrgLQgy73vKMIQLc/hqqHC1oy8P767n4/7OwNz91J6JVc64LIdF/k6/eb7DxwxwlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 12:26:29 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.007; Mon, 20 Apr 2026
 12:26:29 +0000
Message-ID: <5603694c-9b3a-4743-bcee-03dd77f2bbb9@intel.com>
Date: Mon, 20 Apr 2026 17:56:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/19] drm/i915/display: Remove unused dc3co_exitline from
 intel_crtc_state
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-11-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB63602FBD1CE52C3C81959917F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB63602FBD1CE52C3C81959917F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0229.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::9) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SN7PR11MB7137:EE_
X-MS-Office365-Filtering-Correlation-Id: f13d7389-923d-4144-ede6-08de9ed80c5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 1snaz7zy2UWQ2waBMS1dwEATpNjRiTx14vNkOztOTxI0m/3eKE3hyqYa2gc+ftfZFvvyBgVzYwTpqH7VWhsnsJp5H2LPWiPmF2e+KR5lKXzxiqGxiImDdDjiQIdW1YSJjcj1Bgr3Cwpxb1NuV355b9q3WMrU+dFIKb1Bla8MP/ReZvo7OJGA/Uf+qifMUXXjCaIrd6hM6Zi1x7CivbtJM5RNqWekqM9EmwJjqWQ5bDys9rk1OcBpV5b1gupjH/geKZUHhsVQ0RxMV8+QJmKg1lnH7LJ5lcfrOnOUYU5aMPSgSb24u6MIbKLpiQgt18K6Sx0FCzK5ZMK37xZRI+rJq91wd/BpvmOlpj/9GoZY/9pkd1jHmbjIr/cijsBDJHxAT14IphunwnyhBm43fPR0MYkFcyUlm62ZFfukY0QYw6VSVXk+ea7GpzYShBnzXD15zrSaxBgb+NPSbNOe24KoZ7B/Gg22tsVSv8g7Jn5XoLsKEpQVB5+B52EeuyZ3EEjyKLjAU63oSDlhv+5otOdcbGn2XnK4HAA9hjeGH5QrTWiHxxI0TSjJP05hjmKEPxe4jcVu6PwlYEzviMzbIQ3yms1QY7XmCEffXlMv/jkbKALydoKMzW5NJubyvHrvZGTx7lQc/Y32Urjio+mdeaYE1v7NACucKB+8ybtA6DxFwxEw+qhOcVWZbVaG/Nh5aHQKvVo1mDmuzkLjBuwiXHNuKOVxI5sb6bUyR8duBe9x4DQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjgreEtGVHgwZnJRV0xLbkV5ZllzZHIrOUlERkxJVjgyOUJkTnkvSy8rSFB6?=
 =?utf-8?B?U0hicWZwYkM5SHhBMWtBNTBkL2JiU2xkNnFxcS9mQnlqUy9QbjFxNzJUbHdj?=
 =?utf-8?B?bkxjeUNPU2ZVV0RYNkJSSEJzak5KOFUyaWNFUk45am5UazdXWU5hdmFaVXBx?=
 =?utf-8?B?MXVaQmhtRXNjRyszb3loNVljN3lkZDFTT3hVSXk4Y1J3cHBVMkRFS1dqakI5?=
 =?utf-8?B?MXpMaVZFUjNWWXZ2Wlg5RE9jS3E0YzNKVTJnZUQ3ZmtvaS9sMW5VNE90OW1I?=
 =?utf-8?B?WC9UcEJvbUY2SWVrUVdIQmRkN0ZuWDFHUjRMVDJ6U2QwRGR2K1c3d0o5YW9x?=
 =?utf-8?B?cEZaZ3N5YndYeWR6RTRGTzZpb1FPSlE0aWZDTE1neE9xWXBLcWw1dVRzZ0sw?=
 =?utf-8?B?cjBaZFhEQlgybmxjeGFmaS9LUDVRK2w4cVhYc1NKMU5mTmo2Rk9pMWJWTHdO?=
 =?utf-8?B?bGFrcGpUdlRzUm9TRDdJbDlVeGFmSnFWdTVrQnpsa1VsbGprSFJnVEtZOWx5?=
 =?utf-8?B?SXlYd0ZYZVJ4VStIN0wya0xVN2dIaDQ5R0VvY091VEJQY1J2ZGxqenNzM1FG?=
 =?utf-8?B?cVVaTk9tSlM1eFhDcjBHNXd2SkJaUGpYL0hDN21uTjNqMHZ1d2hiOWJhQWlk?=
 =?utf-8?B?NTAvSEZEVzljREpUMk56cHRncTJQTURieTRuU1VvNjhUMHB4REMwRXNzZmYz?=
 =?utf-8?B?RmQ3UnpWZ2d0QkljMDhHNmg0bkg0RTZsZ3p3U2NuTzNmUVByWXFNZjJGblVJ?=
 =?utf-8?B?Z292bW9sUlhNbHc1K3JnV016aFBiVVdxeTBwNVJidjJVZVdLdGhvQmQwUlhE?=
 =?utf-8?B?ZGRjTk9jYk84LzA2L3I2UWlVKytqTnM4YVgvS3JpTTVHTDlRZG5uSWRnWURS?=
 =?utf-8?B?OVRDVTJrVVpTVlQzekdPN3VreDdiZStJQnR1dFlqYi82VGZQbW9CQ0YwdWxW?=
 =?utf-8?B?KzdsTWxZSXZhZjh0VllJZjljbnhLNnlkaWErS2loQ1pKbkhYbitpNDhsMWFw?=
 =?utf-8?B?U0xYZmpyOS9rVjRxdU0vNGlyaHZURStJaTdZekk0NEhzV05OVUd2dkQwT3VQ?=
 =?utf-8?B?SDBlYXFFeFdoajdVYkozRVlSRXgyMG9FYitoZi9pZ3ZVZWNMcWJkVlVFeHBr?=
 =?utf-8?B?NnNUWmM5czNYVkkrc2sxRmYyT2Q4ZnpOUGpmZDhNcmtKYmc5Tm5qL0x6aEdD?=
 =?utf-8?B?OHpXL1R0cU9yQ3BJa1d3N0p0WmpiNE81RTZMVm0rUSszY0pTelIrWWtqaVlo?=
 =?utf-8?B?OGJNL2dtR1poUlRXQWpobXVkWnVScmEra0J1eDg3UE92Vm1NUVYvbWhGTUFX?=
 =?utf-8?B?WjY4bkNlK0VLUTlOMWFYb2lrN0dvRFhsTlZ3OUNPR05PZkVJY0Qza1JabkJt?=
 =?utf-8?B?ZWE2Skx6cFdYV0p6MTg4Vzd0eCtkaWVTR3lyVGhIZFYraDBMczNKMkZWK3Er?=
 =?utf-8?B?WEcxa2V3bytGRzcrTHd0ek5ZazFVdUZLazhEOUZQYStQOEhUY1RQbUQzYkM0?=
 =?utf-8?B?S2UvVnVOWlB5QUE2VllUSlBVUm9iZDVTOTJoY1FlS1BUUk4xd3F0SHV1M0h4?=
 =?utf-8?B?WEpTajNhanA5SXV6bDZneTFnNGZaSzF5SGUrTlRPTnd6KzQvTHhhZ0o5L1Uy?=
 =?utf-8?B?NWxTajNiRUI3RTZDR2k4aTU5c3NEeExYemdYaWw5NEtDSmI1MGlaUnYzaEdQ?=
 =?utf-8?B?bXlvajJxSWczL1orODgwVC9GZmxiNDkrZ3EyVVQvbHJtUFkycTEzM0hocnVO?=
 =?utf-8?B?dkZ3bW12TnlIcHBSMkU2dFJSc3hadjc1WnRjQTdvOUtUbVY2YUthTm5udlB1?=
 =?utf-8?B?d3l3Sk9Sa09Xa3UrYmlwR0pLZzdOdnU5WnpXTHRFNm5JVnNCYWFxbTRvb2ZO?=
 =?utf-8?B?SkdjbUppb2JkUnBXTzdQSm1HNTh6U3ZSall4dEVmZ2pRa1hpTjg1Ry9vbFEx?=
 =?utf-8?B?YTExL2dTaWNsMFhleDNETk5ITlBtR3c0NXpqRWJZQi9RbDJqbkw5OHlhOHhM?=
 =?utf-8?B?dndxQlBSNmtBcmh5ZzhGRmNudnc3QnlSazE3Rm5OY05oV2NKbDIyN0ZKVmwx?=
 =?utf-8?B?b1Q5SDRyNnNxeEEvaUJuK1JRblRRTUc2RXdLUjMvM0p1M3kzV0RNTmV6MXlt?=
 =?utf-8?B?czczWFh6aGVKSDZyMXNoeGhVMWYvVUE0M3Y5alRETGYxMjNrUk1QZHVsM0do?=
 =?utf-8?B?Y09ISGUwM0RneHBWTkt0ZFg3ZmQrZytMOEx5eGh1UDNqaXh1b2RJL0JRWWlu?=
 =?utf-8?B?TVNzTU5DaGMvbG9MZFlTZkpuMlE4clRBQ3ZsNFhROWJpT004b042d0pkbm5i?=
 =?utf-8?B?NFBFS2V4OUxGYkZ4L3pUYnkxRTB0Qy9DaUxqNEEwOU9ZVXJGamNQbzE4QllL?=
 =?utf-8?Q?RGa6dWvUPVRl9dCXWjs9YGwx0029lUOPqBXhM8J4G2gpH?=
X-MS-Exchange-AntiSpam-MessageData-1: oc7CPCJahcc1Iw==
X-Exchange-RoutingPolicyChecked: kyasXPg9nQAPASaSqYH7aYd1Atc2syssUUzkLBnHPMZ1CxlCoePSw7eFdzlcy3Qad3UBheNKY3T7CiOoU1R0uJxlAhLcetttyx8Fprec68Tl3uy07g1ofcXuFkikJzxUHJtt7YNk2qa21KTZmlPdqPAzoQWPhI8FZf4c4O+Lh2tprBNeo3lLHp0j3mrFu3Rl8FAJLUhtl40y7TebJrxUenR8TQcr0CThE994wD+nFE80+z+Wgm7HtYnqqj44EW1/L596GnczvCi8e4HvA57J3frBd60X8ea769gqBNEDV4nQCTdJPUFACynDRw4YaUlgw3r420K3YzaCW2k0+z0H8Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: f13d7389-923d-4144-ede6-08de9ed80c5d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 12:26:29.5685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PTowU0HRVK8ynmLjckbpPY+IX4rTGWK4FRViLGm2ccyXxFj/C5XIv0YAO0+2n2g7GIsGY7Uoi98mXaJv3Ho8xt51hBxwqrrg63c9933NHwVI/hPHkFuR1AxOUdyPPhn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6335442AA7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 03:14, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 10/19] drm/i915/display: Remove unused dc3co_exitline from
>> intel_crtc_state
>>
>> Remove dc3co_exitline from struct intel_crtc_state, as it is not used anywhere in
>> the driver.
>>
>> Also remove the corresponding register read in intel_psr_get_config().
> Change Looks Good, but squash it with earlier patch (9) in the series.

I will squash this and patch 09 into patch 01,
as they all remove existing DC3CO structures.

>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
>>   drivers/gpu/drm/i915/display/intel_psr.c           | 1 -
>>   2 files changed, 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 60366087038f..0a327c4df98d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1192,7 +1192,6 @@ struct intel_crtc_state {
>>   	bool pkg_c_latency_used;
>>   	/* Only used for state verification. */
>>   	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
>> -	u32 dc3co_exitline;
>>   	u16 su_y_granularity;
>>   	u8 active_non_psr_pipes;
>>   	const char *no_psr_reason;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 40adbd1c8ddc..987d49536548 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1822,7 +1822,6 @@ void intel_psr_get_config(struct intel_encoder
>> *encoder,
>>   	if (DISPLAY_VER(display) >= 12) {
>>   		val = intel_de_read(display,
>>   				    TRANS_EXITLINE(display, cpu_transcoder));
>> -		pipe_config->dc3co_exitline =
>> REG_FIELD_GET(EXITLINE_MASK, val);
>>   	}
>>   unlock:
>>   	mutex_unlock(&intel_dp->psr.lock);
>> --
>> 2.43.0
