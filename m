Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910CB9E5A27
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 16:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE2610EED2;
	Thu,  5 Dec 2024 15:47:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avpTWZwt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8384F10EED2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 15:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733413670; x=1764949670;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=zKHdxyFdP+M7DHY2hMU06aGIqUl1ksR0HnB3aseqF30=;
 b=avpTWZwtGtwLTquGlmbTN6hRIe/qi+iAb2mJG9MF/fGFZJrAymDL1YVl
 +X0aVrOEZEuWLHsTD7FUes646oOGFqA2DyGkWvPZi8/gYtFe50YW3gqTi
 YvdsMd1cF31VrmeMsoCRZIxVqqyomsFuAjVsW8IChyrec4jUWDAY37XAA
 fFNPa+b+ylKvZ8V7kjxSr38MsjDS0UFS+VuVap34Jo85Lz6NwXnCf5/IF
 blL/pf2DWU90nEJdK9FxTJuDrcgn42tMlIYLZtcGUlda7/8uPnHc523e/
 +Jxh5AbZ36Mq3pscJsiUnMmfy2VgDv6XY5xY9SSZBeDTZtUKnSf+IusbK Q==;
X-CSE-ConnectionGUID: 4z7ZaQxcRbuT4nxbuxglOA==
X-CSE-MsgGUID: tsL5TYa5TeSIKx2NCPjhNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="44400312"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="44400312"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 07:47:49 -0800
X-CSE-ConnectionGUID: t1eU6UajTJO5mz5qFJuRcg==
X-CSE-MsgGUID: ywsbpgr/Se6BZUQ9mzeYgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="99165048"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 07:47:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 07:47:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 07:47:48 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 07:47:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GsgMlQ55L9aZ1/g9Aql96syRDJef7074qUhVxmDSZ0M2t/hNri9lABbs/Y90McPN7RfAJdk/hPHvXEhSkWgjzkwBJn9s1CdMF02stB3rfd+8BpVG6O5QeZqGD34wVdZ/AUNXWHej5k1WgOmx5bKJdczjQvVoe/DcZxgojtHp3jfULW57jCAZwidC5lMydWyBq2bDoGbLuK3RG3aXtF3PzwXWCFQaQszL157YtXqXOq2w+G0OZ1zsO5RJlHnef6kdKRoeshW+xWkeYZOrC0hkFVef+j3QgOPigdbcngBW99Yya9qlUqPUyR4bDd1xwkOqFL0SWWGhAYjHgY4aNrCICg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IK5pJNrPddYvqtku3SfHhXZLoS74T1d+zWDVuQdARtk=;
 b=WxC+wnmq0Z5vc+7Wj0/EwEFTCo2hp7ohn3KxR29ugqaRvlpdgJZTQFuKad7I1m+lhrrt7kibdkmH9zETlM9CZ6m3nRwA5hwWRrtCkTvoGESz8dGxLf9nSc79ZyPJPuvL3uDbDSZSHM6GKCpsnm5XPs28n15mX5Mgt5l1qAfoED1Kl40VIK1qSZ5YO5Gxpn0FIyu0wQPr5nsc78F6ZgugrNy1FHaDliPjT/+jQzc9BDrg9fGwcfpdlSW9QnLUW1VxvXYogkraADQ7IdpC46FW/xJGb0x64vKH6s4gMcBB/dC6IAQBK2iT2LnMV/5RGGJFGEo2AEbyth5hSfO4RUkf6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA2PR11MB4972.namprd11.prod.outlook.com (2603:10b6:806:fb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Thu, 5 Dec
 2024 15:47:41 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8207.010; Thu, 5 Dec 2024
 15:47:41 +0000
Date: Thu, 5 Dec 2024 15:47:35 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <vidya.srinivas@intel.com>
Subject: [RFC PATCH] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR07CA0263.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::30) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA2PR11MB4972:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b355071-2a1c-4049-b2c0-08dd154426ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWdXUnVuaks1Sngwc0dBVHFwcjNxaFJ5QlQ4VWQ1aVc5bWgyYjBVbDNGd29p?=
 =?utf-8?B?WXZZWEw1aDFOR0RyY2p4aFJucEpObHZCcGNRVkpDZXdwY1YzbkptL2FIMDcx?=
 =?utf-8?B?UHZIZ2tWaC9kODNZSms0aXlqQ1RDU2pEMFcxNjFyYUlvUU10cTkwdzZwR3cy?=
 =?utf-8?B?SmdoMG1UaHMra0JBd1MzY1VmR2NMeGh3ZFZYbG4vTkhkdndoYi94N1FiUFh3?=
 =?utf-8?B?T3A1SEtRWHgzSEx6VDRyVEt2ZUU4K3hJQndxSFg3NmFaRGk2ejNjWWFFODV3?=
 =?utf-8?B?ZEk3OGhCRmsxT3RiZVZmbDcyV3NCK04zcHlNVWk4SW1mSVNiSGtkbS9UYXp4?=
 =?utf-8?B?Zko5bjdVbldWV3ljcXdJQXNyalBpR1lEQXpWYmN1VWZmdDZlSVB4TzJ6TFR1?=
 =?utf-8?B?em1VVnlhN0F1TGVkaHUydks4ZTRTdDZZRldTYTJFREtaUmNxa2QrRUlWU3pz?=
 =?utf-8?B?WkYzU01MMXQ3ZWJrVGUwcHRuekd3aDJhQ01CR05oSXVnTTdQdkxCMmRDL3lv?=
 =?utf-8?B?WmVKR1doVzFPdzdFQWlvd1paaFVTVjZvRlAvUkhxYWgwbm4wM3ZiSmFNSklx?=
 =?utf-8?B?QzRLOWxRT1dxTFpqL0JXaUlqalp4aUdBNHArNUwvaERzMkgwY2NaVXNMRHF5?=
 =?utf-8?B?OEo3S0hvNjFoODA1MC9iQm9ETTV3b2dxUVFadjZLQXNWVWdRM0tSbDNDQkha?=
 =?utf-8?B?NUhqUDZzOFFCbnNjblVOQ0MxRS9WZ2JJS2JQRTRHSVZYOXhrZVNLVCtieE43?=
 =?utf-8?B?SHA4UzRnMkQ4L2d4TzBlYzdZMW9kckdIMXFQekxLTHJZakxId0Z5bXNyelpH?=
 =?utf-8?B?QmszOFJ1ek1BSGgxNWoxZlhMNjJQdk54MWZXS3dzb3EwY0UzeU5CVkM2T2FD?=
 =?utf-8?B?T3Fwb1FrLzY2VFh2SVkrOUhsaGs4VWd6c3VVTjhwWHdPZGFXay9TTFdnNXpW?=
 =?utf-8?B?WWRWSUJ6V0o3eW1RNUpvcFBHNGJKUGV1QndLTWdIYyt1Ly90Z3MxaXpnWER0?=
 =?utf-8?B?U0pia0tTblpXa0xXT1FDbHhhOGlkMEpLM0p4YTE4VGJOVGo1bU4vdkdzT01P?=
 =?utf-8?B?NGFJSDB3TXJZbEFQRmlGQkJaRWM1anhvZG5OZnpTS20wMEV5YzIxd0pXcFkw?=
 =?utf-8?B?elM2eE82M1lDTVp5L2UyVlRBQyttR09WNkV6YWQwVVNFbUxoMjZnbHUyakFj?=
 =?utf-8?B?b2xYN2lTakJORjIxeGUzTVNkeDlHT0ZGWHpaLzByaVJrTUhWZ1JmY21vVVJm?=
 =?utf-8?B?b0RjOTRuUWNFNGxxaFF0ajdkOEw5bGkxWFlOOGd6WTNsNTM1bzNkRkdkeUNo?=
 =?utf-8?B?aTdtMlBiRHc1VU9ZaHN6dlQya0Y1Zno5RTlnR1NCMG1QbEgrdlpDdVVCa2VR?=
 =?utf-8?B?MjJIdVZCM1N3SGRYS2REOHZQRzYza3kzSDFuQ0I0YXV5ampQL3VCTjhXcHZZ?=
 =?utf-8?B?bmtMK0JZdlh6TXg3bCs5eUNYVFBQandzQzZtbU14MlJTMkwyU3RJNHVTS1Bw?=
 =?utf-8?B?anJ6aE1jeHB1TjhqWCtuS2xpMHpMU0dWUm5LdUNRaGZKdEZvMW9Qenl2V3dV?=
 =?utf-8?B?TUI1R2I1c2RSbGRXR2kxblVYRUdXcXRobEdVQ2Z6VDB2VGRJeE01dzkxc211?=
 =?utf-8?B?UkUweXN6R2dYZTJDcDI5ckdOZzBmTGhOTmFqeGlmTFBPenFDemRyK0xEdUhs?=
 =?utf-8?B?clhaOS9sakFxUERMelN5Rmk3RFB3MThoZkJqanorUGpEMEc5c2F1Ly83cUJK?=
 =?utf-8?Q?49DnJdLysNwBJCSq4I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1lBbEFYU1dEeTdiam50ZDFtWjRqVHEvNEJkKzY1anNMOUxIT1hQRjY3Vmgy?=
 =?utf-8?B?MlBEOEZvTCtzYmtQTTJtNDFXRW9jN2xzWGg5VVNsbzFiTlpTNkx6R2swVFpB?=
 =?utf-8?B?YngwaVY2SXh1RU5Dc1lRS0pjaWx5SWlidUtBUUswMVEwYkJHWlRXbVJIa0c3?=
 =?utf-8?B?M096TTEwOWtCSVlKM0hpSkRDamhJUzlmSVNoTy9zQXZwZTB0SEZJTzNYVkM0?=
 =?utf-8?B?S2VPcDY4TnNGRUsySE52RHZmb29xa2hENlZSbTdjKzFlVW5ZUEtiVVo1Ymhv?=
 =?utf-8?B?YXQrckhpZDQydWpETUpLYnB0bjUwRHRscG9ISVhKTG9DdHhMalBZYmx0eWwy?=
 =?utf-8?B?d3RYb09WKzdTWHVneitGdEZwMWo1d2hnS3JpQ294Yysrb1VkYStjdmRiSVJl?=
 =?utf-8?B?dGI0ZjlFVTUzREZDeE1SNmlML1V0MlhSNCtSemRzL1pVcHFaMlhKRnVUd052?=
 =?utf-8?B?YWRKQjN5L0ZMbGNHNlVVend2Q1MzSFV3UnpvazZiY2pwZzZZdmowaFJEeGNH?=
 =?utf-8?B?Tmx1b2t5cGM0TWR4M0RYSUI3aktJZjVJQ2RjL2c5Slh2a3gweHlLaEFmZ3dO?=
 =?utf-8?B?QzNlNUthcmZtaEdxK091cmpEWFRpOHRtaG1jamtyOEFpL1NFTHNraitpblQz?=
 =?utf-8?B?RUhaQ2FvcHpBSHlzSVJBUG5sa1NzMGZLYlNpSmxjc2pScjI0QUdtS0gyUEZ2?=
 =?utf-8?B?TmQya3VVMEpuYW5mNXpHWExZUmNGa2tWdnVHK01TdGNLd2VSUnJaQm5VaVJD?=
 =?utf-8?B?cXdrMUFOTjdidXpydHB2b3V3OWFCNmlQQzJpdHEwMThaU2FSSWx3ZUJoVUVh?=
 =?utf-8?B?Z0ZKQTFGL2pveFQzcFk1Z2VPWVg2Z01aUlZvZkpXdyttanpJTW5MdXJLeCtM?=
 =?utf-8?B?djhFb2tCb3ZiMGkwYk5IT0dxT0s5UWtOMVJzYXoxWG9YdkRHdmozeVBydkc3?=
 =?utf-8?B?ZzdSZC8vcUxsSE8ydnJmdFBXMkJBYlVuQ3hUNGcxSFFUQ3k0ZHJhSVUvYjhG?=
 =?utf-8?B?NUY0SFExZ1ZQT1hBVkVLZUpUeEphcURSL1JKNGZPM0l3cDNScWtnejJxTEdv?=
 =?utf-8?B?QmNHZHdicUw4VWhvZ3Z0UjVqa0NIM1E1Y2hVQ0dDMDl6M1g1a3l4VTNiMkk1?=
 =?utf-8?B?VVpxQWxQTWM0bTNvai9PY0RGWngySENqdTkxM3d6b1VPSE1Xbmp0Z0pqWDZE?=
 =?utf-8?B?dnR0Mm14UGRBdm1OdDhYL3lYVGtWTGpOcmV1MG54YWUwYmRRLzF0VVYrSW12?=
 =?utf-8?B?WnFwRmpzY2prYkFOekJxZ01mKzAwT09FWnMya29nSk1oMEpyU3ZQZmlZUUFj?=
 =?utf-8?B?SVF3bDJGUlkrUXhHZVA4bHd6WWdGY2tPZ2RnWVl3UWg3VTRZenNvZWNldUR6?=
 =?utf-8?B?K3IrN1l2R2F5cmRsN1VxRjFpOTZETDVEd0JtY05GVGNiOHZFaHhHUU1mdm40?=
 =?utf-8?B?OS9QZ1B4bzZiVjRGRlMxdVdJYVdsTnc1K2E1dDl1T0h3c0ZMaWpiSitJUzN0?=
 =?utf-8?B?MzhIcVFLQzdZMnVuQlBiSVZVbmVpVkhkTk94RlB2a2FiZUduOXdFYkczMkU1?=
 =?utf-8?B?eWlVdVdpSFNkczBRdHdqWm1VdXhBR2FUU1BLdW1TQ0JpZlpzNDJzWmNoNHJa?=
 =?utf-8?B?Um1UYzlZNHA3aDhlYlZmeWoyaWhpenZGSkJIS0xzZmVzWmpzdU1sZGFubWh3?=
 =?utf-8?B?dGduS0VLQVV6cU9mM3M4UkFCS1F6Rys5ajFrK3A5Nkk5Q2RKbzN0VnRrUDZZ?=
 =?utf-8?B?bWovZXpEazRPQklUbDlXZC9aTDc4TGhBOW9UeC8vNy9yV0liYzNXdDJTRHFp?=
 =?utf-8?B?anowM094VWxOWUkvYlZxQ3NQaFR1cmZ1dFl1Q0VrdDNIQzBLRDdDbFZBOFhw?=
 =?utf-8?B?blI5M2g0WE8ySnFYemRFaDlQTi95eVJHZGZFTExtUzl1Wm45ZklrZm9sMU1j?=
 =?utf-8?B?U1BuY0k0QStpNjFLMERQSEZsVHdrNWpxWlRleXExeHdyb3g5ZlErd2kzMGRC?=
 =?utf-8?B?RnVuUFdqa1Q1NDRhS2gwVlMrWmE4cWFWeW80NGpsZExMSmlsK1Rqc2NTbWhZ?=
 =?utf-8?B?aVpzV3RVRTRWTFpaVlFoQ1M4Z1pVZG16cmJSZE9YWHU5RDNzcWg2OUtwMmxH?=
 =?utf-8?B?TVQyVU1FQTJuK0NTSFRYTTVzUm5MQ0lGRkFiRmNWaEUxbk9MU2JTZDNKS282?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b355071-2a1c-4049-b2c0-08dd154426ed
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 15:47:41.3060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZJ8CUhVkUaG2W7k3f4M6cHOQjTsI1M/wPwhwkFNvlTChuW6DJuaV65Sgwxmk8cVBdmRHwv3YUcrfU5gEOIRVxHyol6d15k1mYeTcV8BkJns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4972
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

`wa_verify`sporadically detects lost workaround on application; this
is unusual behavior since wa are applied at `intel_gt_init_hw` and
verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
doesn't fail on initialization as one might suspect would happen.

One approach that may be somewhat beneficial is to reapply workarounds
in the event of failure, or even get rid of verify on application,
since it's redundant to `intel_gt_verify_workarounds`.

This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 570c91878189..4ee623448223 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1761,6 +1761,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
 				intel_uncore_read_fw(uncore, wa->reg);
 
+			if ((val ^ wa->set) & wa->read) { 
+				if (wa->is_mcr)
+					intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
+				else
+					intel_uncore_write_fw(uncore, wa->reg, val);
+			}
+
+			val = wa->is_mcr ?
+				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
+				intel_uncore_read_fw(uncore, wa->reg);
+
 			wa_verify(gt, wa, val, wal->name, "application");
 		}
 	}
-- 
2.34.1

