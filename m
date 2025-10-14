Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07B6BDB405
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 22:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09BF10E23F;
	Tue, 14 Oct 2025 20:31:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kltg16+N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9944610E6A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 20:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760473896; x=1792009896;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=3EYgVSXuvMYYcBJ/F7NjLEEehkyrXfJZEStus01aei0=;
 b=kltg16+NravDyGq+7IG6vIHw8i4p3ELFv+NExq1TfkoHJbf/OpRP1qz+
 mwZSil2m4o/3f7TuIUpDe5r/7vIGQQ5N+QEai9n++ce65TiL+R+fjHZ9K
 usbEEuGypD6ZVjQMwPaFSsX4wyGUGsQa9RAZWnltXaeTTQJEkcw4nIqZF
 5w/FtYnMFZW3mXZBnkOOlRlioy6e6H/nm0YNn9CEz9IKRr2LCnqEPYTzM
 8Gg1gwo6z5psTpaIKOY29e/6AEvIziRDOocTcM3/Q9D9Rdhj/9XUEuPTU
 PfXQePYPYOA87hRKYUEu9K31rT3ZktQdlYFD23inZd+R1DsY0d6HRocPM Q==;
X-CSE-ConnectionGUID: wu5RKH3RQ/KtfM/IeHua1g==
X-CSE-MsgGUID: /jx1TnV8SD20foMvA+UTyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66500336"
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="66500336"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 13:31:36 -0700
X-CSE-ConnectionGUID: CDiX5pWGQUKv4C+OD9O7Fg==
X-CSE-MsgGUID: Je0YVpQ4QBapbOUIkGZOUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="181117121"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 13:31:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 13:31:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 13:31:35 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 13:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VSa2JIsdyDb4zQsiDoLV3+FrBkiD7xqjiMH1Nspd9OW75T/onJ6gBaUscbV4El53OQzbQPYE2Urmezd9dj44MisjXDIJvb7oQQslpa5O1rcFWnD26R67JrAzA5bLx2CeUNNGtRZUrz+/EVDMLdS1hcNuuP511Tuiagktr6ttNWofOAswR7S4/x47xTMpwT9m5yLMSJiKx3X/TFcEqnx+WMbQFt27N7aSZwtkhMFucF2Yi6n+lFRLgBd3GLd70nmDo+dDpgVSyJlAyffUBQrikkfkXkKHVzmA9+daEgJS4YAx3L5M8QZq3CsXsf1HR4dQhR2kViTRbqVqY9t5TJCBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=txz1v77iEhWy9qK78adaMtyeuiehDiZa/uU4u9boweQ=;
 b=lrY9qFkRZ3QfSysufHJrR8YexYtEVAtvsGfPrCvKMQ5cmIudhLMAtFbyaJGkLhGg36NqhGovMNdwpG/FgbBFE9nagV6/B0bo7GOiUBIG+wnG9VoeKGyHO1cgUmAGfQDnheyAK1QtxVOhb1MhUXD3XB1o8sroUa4nreWcEz5+noVr4uUsz/SiUjULCT8HhYwUfRMt6vX24ZpqCliGmhtWGfutnul4c9u/S4jzuchzHaN/H+w3GRqdUZ2j1WWkai0LTkNfvJ513frwRTQX/dEw1/QuAZOUOemrMoa9fbrzrcJR4Z4ug4RhigpxU6+gOsuVG9GvewCn8MBwruCt1PCv2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by DS0PR11MB7560.namprd11.prod.outlook.com (2603:10b6:8:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 20:31:33 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%7]) with mapi id 15.20.9228.009; Tue, 14 Oct 2025
 20:31:33 +0000
Date: Tue, 14 Oct 2025 13:31:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <lucas.demarchi@intel.com>,
 <riana.tauro@intel.com>, <andi.shyti@kernel.org>, <matthew.brost@intel.com>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aO6zH/+z2VHtiz+x@soc-5CG1426VCC.clients.intel.com>
References: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
 <87ikgii8k6.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ikgii8k6.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW3PR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:303:2a::35) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|DS0PR11MB7560:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aeeda61-c89f-4f39-7a2b-08de0b60a9d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXo0TDhvUUZoM21EMTZtbGJzNVMvakxOUFFQQlA0dC9GV29YaFVwS0xKbnhL?=
 =?utf-8?B?cmk5dm5BNlRPZ3V4VUNNcjEvcG1qT0tub05Edll2YUY1QjN5eUpOMkFwN2tI?=
 =?utf-8?B?Q2kxa2YzTnRSVVJjbXFhWnFUU0M0ZWMzM3NPVGkvNktubjdySU05MVdXeWV0?=
 =?utf-8?B?bk1ybkVWRTJMSVlzK3BWS0Z0YTd5OHZFVkQvejNGaWx6eVg1b1A5Z3EvK2xH?=
 =?utf-8?B?Ymo3cG80WFg1N2xvYnFPYXFpTkpyVWJoZitTMmJ0WEZYT0dWblNFYXB0RURt?=
 =?utf-8?B?ekJQUzdVZWRQNEVOQUdXaVNVRHhDVU9nOU42eTZiU0RCSmhtOWphc0N6VVlT?=
 =?utf-8?B?L2FSWXY3WFNWWEkvZ2FPSTREaVNxeGNiZUgzVnhPNXZOQzVSTjRNcE5TWEl3?=
 =?utf-8?B?b043SUQyZUpTZVlzaUxMWVBPVHNWbU00cU01NGxCQTZHREFmclpLbUhlVUZQ?=
 =?utf-8?B?dE9HYjMzSUV5MVp4NWRPRW84MENLNklHT0Z0dmlINGZOZ1l2QmluMFFMaWFO?=
 =?utf-8?B?WVltc2IzUGRBT2tXSEgzclFCNkhaR2ttd0xsUHQ2Qlh5MlhTdGJ2ZFBsQ2hS?=
 =?utf-8?B?S3RzdEdsZlg1VXRnNmlCRmp4TlY0TmlJb05ndndiVFVVK0xGM2lBUlJJdkpv?=
 =?utf-8?B?NlNLOGVQZTA2dUp1TXU4QlJMUEV3ZlVqOFE0cXovOUZSbDVQcXRmS2tZdzJ6?=
 =?utf-8?B?bkpPOHpxWnhBTTNLQlQxbk8veGJNbEM0OHJpcittdDk2WThyYXhnRkNGRS9s?=
 =?utf-8?B?MFlVQ2krOTIyUHh6M05TOTNrR1RpcWVxR0xhN05rNStuRG0vSlBkTDVORk5l?=
 =?utf-8?B?V3ZhOXgrbXd5bGhjTEI2OENPRitGT1lRZ3JZTlUrNkYvOVdVWWc3R1YrRkY0?=
 =?utf-8?B?TkVqTFFGUzNxQ2RSNnZkbmVQSzhOUzUwNGhZTjJLOWZ4cWs1dExadEFOSUN6?=
 =?utf-8?B?TGZVQVcvM1AraGJLTEtDSlVBZDhsV0dpb0k2SlBrL1R6RlBjUFEwYXppanVH?=
 =?utf-8?B?ZWZGbHJLQWdHMFg5SWErNnJjNmJoeGl4VmtldE9iRHA3VDFCR0tLSDh5b2o2?=
 =?utf-8?B?N250V2lOcUNQVEY2N0tvSTlBQlAwUDFRWkZjb1ZMcGptUW1DY0Z3Y3htZmRW?=
 =?utf-8?B?MTVuTHhtZGtubXl3ekZCdzlwSDBHWDl2R1BiMHhwZzZVMWNGSmRId3REYjUy?=
 =?utf-8?B?UW9mVjRVazBVT2FQOWNvY0l6T1RtZVRvVWE4bmFxSHJGS0hzNUJGa0RvaDlp?=
 =?utf-8?B?NXBJQ2VBMk1ldWpjd1k4VDIrU2VjNERCVDRUZHJjaS90TmxDY0xtOXBYcWVs?=
 =?utf-8?B?ZTFvQ0UwWUZHZUVOQ3NoNDl4VnU1ZjNac01LRmkyeTR1VG1GVlhqNEh5ZEpW?=
 =?utf-8?B?TTV0VUJxWFM4ZHFwK21rclZITGlTbHFpUGlzVkdDYks3WHZqNTl2UWtoeFVF?=
 =?utf-8?B?TXNiZTQ4d1FLVHdMZHk3aFJ3YmJBTWg3SlhZN1dneVZIN3FsNm5HSkkzdzJu?=
 =?utf-8?B?bjE5L08wcUxqOTZPNGJWNUxhRjl6WVY5b0pjVStlS2FRbFpFbHhaWFo2ckJZ?=
 =?utf-8?B?K3JJRTQ5NmJpam1pOUxlaFRZZjg1a0ZsN0JYZENXckpza2twTWhGNXlOZVVD?=
 =?utf-8?B?Y2FQY2QyYjdoYmFUZWhBQnpXeGNpai9IMndTWW9EVU90bG9sMXk2VTM0NjNE?=
 =?utf-8?B?bkgyREFBQW82cFZtMmZMWUQzc3BkZ3NVVUNSZTdYVmFKMHlTY2J5bFVsMGlX?=
 =?utf-8?B?ZVZvdlF4dHArV20rZjNXYndNMWlEcXNIVjhZVzZuVFJIdUx2aWN2L1RuMGo5?=
 =?utf-8?B?R3V1ZnFZWWltaXVUM3BmV0hVQ1RPV0FNWUxQbmFuZWN1YU5CU1gyZ1VmSnpw?=
 =?utf-8?B?WW5mZkdJWEI2TXNNeGRtdm1jc3FJVHBWQ012bnpyM0lSeEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEYybkNISFl0dXBGQlpHMmhSdzU0anNQL0lMMnhBVkl3WTlWZlBCYXp3Z01L?=
 =?utf-8?B?cXBFb1FhS2tneFErNWJsZ1VMSnhoSEE4MEtLMDBIL2hTUGZmYXBMa3dUTy8x?=
 =?utf-8?B?dFM3djFleUtSREdVS2ovdXRzejE0a1Qxb2pxUU1jVmJKandYT2taYlNSMDZ1?=
 =?utf-8?B?S2E4bEF1eW8zN09YemhOdTlPeERmVGhBcy9hMnhtV0RvWEgzT1RnTUNiTnJ2?=
 =?utf-8?B?elBjcDJhU2J3L0MzTjJnTG1WUk82T1pBVHd2Rk10WllreEc3RHBxbzlnQWxV?=
 =?utf-8?B?ME1CUXdJaVhqTzZvWkdDQldGUk5nenlkV2M3cURhYzZsaHdmWVhHbjhiWTZx?=
 =?utf-8?B?VVI5eFAwaTU0dklpcjQ2cGZhRmR0RktiZ1YyZ2RjT3NuUC83emdlM2x4ckNw?=
 =?utf-8?B?azBqWldCYTgxNEhmVU9QeTJFMUZna1VRNFJDYnVwVnV6bWxBdFI3NVZJTDMw?=
 =?utf-8?B?SmhvQUlqM244c2cxTmMwZTZ6TkkxUC9zSFhkNm9maFF4WEJkc3Y5L29lcFF0?=
 =?utf-8?B?SHh3VmdHS1Y0dnFkSEI4bVhEcEgvSzAxMjI0eUFtK09nZEJWM3hVTFVZb0xH?=
 =?utf-8?B?ZmEwSDVjdlNPVXZCeDY1TnF2NzR2VmluR1RHcjBRenNMbThPMk9FL20zcmVT?=
 =?utf-8?B?d2VtbktFN1NXRGowK1B1eU1qa3ViTHlQVnh1UHlVNUFCMW1lOUJvV2lCZUlO?=
 =?utf-8?B?bWtpRFJhS1RFRlpxSHNoU0hDMDNQYXVlR1grdmRxWmppY0pCQS85NFZHZGRo?=
 =?utf-8?B?TG9mUkdmNGRHeHAzODhSMituY3RHNGtxTmFUZVF1aXJCMVJxaFhtZnNHbGdD?=
 =?utf-8?B?eXFIUjhjUEhJSTNvZWNRNWdJUWNhdTVpazZnN3lwcWtEamNGU1I5dUdOYXZT?=
 =?utf-8?B?UDhMS0xpbStZWmRaQ0ZVR3k5VjkrUGhiZW01cEFuU2NZajNqbzN4c0VFVFVZ?=
 =?utf-8?B?ZHJ0ejRPUWdBSkdPMmhnOXhQVzF3eWJSZENxYnNWSStiRzd0NEEyUTEzVXJW?=
 =?utf-8?B?ZmZZVEc0enpmRC9kOW5sV1EraGZOUGtpZGhDMnNxZFBIRDE1dFBiMGQxWTY1?=
 =?utf-8?B?SzhLWW1zY2hyMUU3UHd4QXZKUlF4aE5FNVpxMFdmaVh5MTNuMXViNnRHQ3lY?=
 =?utf-8?B?bGZzQWtKd3EzbWsrYzBxUkFYTW85NWlXZVVCcWk5K3JLQ08raVMzNEFSTXVs?=
 =?utf-8?B?SFlsUzgwVDlVUnNCZFFMMkVRNjlkamZhd1BxQmd0ZkFsTC9USTUzWlVEaWVW?=
 =?utf-8?B?N2tDdGpUUFF4Tzh4eG9GQnV2WjBIME5hT0NXSEE3eXVPV21FZmJ3eWxjWHV4?=
 =?utf-8?B?ZHVpZTNOWHlLMnFvNmRyWmpBZU8yUVhDdVY2QWoyRmNRaUZkRmxEOWFhLzhq?=
 =?utf-8?B?VFJTUXhhbVdKMXpRME04RUdBM1ppUGJYM05DVThySWc1aEhlRlluZHdTYjFz?=
 =?utf-8?B?cGJxT0RXZkFqV3JwSXdjbFV2N0M3cmdUdjRwR00xSmJUZ3g2T1FaSU10bk5V?=
 =?utf-8?B?eTJXQkpCVzV6Z0c3VUsrbFlxbnVmajRpWStxWU9tM0EwNkRRYkRMY0s0OFpa?=
 =?utf-8?B?Q24wQWZvSnppN1ZWUHhMaGQrN1ordDkwaExmQXgyYWx5YjJaK2pjazhKTEVo?=
 =?utf-8?B?cEJFZ3NWUUZERit1RlZaU1VtVkhDU1BITDVkYzFEVURDVUljeXBjMTMwM1hK?=
 =?utf-8?B?OHUxUXBXTkZRckNEN0lSdzBMZDBVcnI3NGZpaC9YUzVBSGM1RkUxTEQrWFRY?=
 =?utf-8?B?c2QvNzFZMjhYVXMxSkFlK3JsUjB6QkovckRYZlhmb01Ha0lqd1hVeUVoSDJJ?=
 =?utf-8?B?L3BwcjQrK0EzL09YWFplSkNsNVdvOGxGeHhTWi82bm1CbmYwcVZ6QkJIMjdT?=
 =?utf-8?B?VWJoVWtqOEJkNUFKTTg5TWpBckxaaW1SSEdzUkNNa3FEcHAxczVHZlBGRkRN?=
 =?utf-8?B?V0RuaXhvWWUvY2x4aXdVOVh2dGNaWUFacW5UQnZqd3dObFIxTzFmVmQyL2hk?=
 =?utf-8?B?MVdlNXVkZyt5a09xOGd1Z3RnQUhNeklZeWd4bFV3cTB0dXpob1AyRGRPT2ll?=
 =?utf-8?B?QTNST3dEOTBlMTdneVFQWUszNlEwSHlGYWRPSkU5V0IvOEtzUHkyUVBQMWZR?=
 =?utf-8?B?RFJEc1VmTHFDT052MDgySXJQZzJ1SzZ1MGUxOGYza3N0NmNlb1lKRjRwWXMx?=
 =?utf-8?Q?UaX3laucyU4v/g7wP1j2iD8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aeeda61-c89f-4f39-7a2b-08de0b60a9d5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2025 20:31:32.9550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gjpi4jaM4+5/PJoS6SnoE/x0koD8dSueX6fqSouEov4GZqbOyAUelnxuSZmx1nx4KHrld03/oxVwG9PndZPmV9jH6KK0OCZSZWRM/MsFWCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7560
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

On Mon, Oct 13, 2025 at 06:19:37PM -0700, Dixit, Ashutosh wrote:
>On Tue, 07 Oct 2025 16:35:44 -0700, Umesh Nerlige Ramappa wrote:
>
>Hi Umesh,
>
>>
>> When tick values are large, the multiplication by NSEC_PER_SEC is larger
>> than 64 bits and results in bad conversions.
>>
>> The issue is seen in PMU busyness counters that look like they have
>> wrapped around due to bad conversion. i915 PMU implementation returns
>> monotonically increasing counters. If a count is lesser than previous
>> one, it will only return the larger value until the smaller value
>> catches up. The user will see this as zero delta between two
>> measurements even though the engines are busy.
>>
>> Fix it by using a scaling factor to do the conversion. Add the same fix
>> for reverse conversion as well.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> v2:
>> - Fix divide by zero for Gen11 (Andi)
>> - Update commit message
>> ---
>>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 19 ++++++++++++++-----
>>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 ++
>>  2 files changed, 16 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> index 88b147fa5cb1..41a0e8622b33 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
>> @@ -3,6 +3,8 @@
>>   * Copyright © 2020 Intel Corporation
>>   */
>>
>> +#include <linux/gcd.h>
>> +
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "intel_gt.h"
>> @@ -171,7 +173,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
>>
>>  void intel_gt_init_clock_frequency(struct intel_gt *gt)
>>  {
>> +	unsigned long clock_period_scale;
>> +
>>	gt->clock_frequency = read_clock_frequency(gt->uncore);
>> +	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
>> +	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
>> +	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
>>
>>	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
>>	if (GRAPHICS_VER(gt->i915) == 11)
>> @@ -180,11 +187,11 @@ void intel_gt_init_clock_frequency(struct intel_gt *gt)
>>		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
>>
>>	GT_TRACE(gt,
>> -		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",
>> +		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms, scale %lu\n",
>>		 gt->clock_frequency / 1000,
>>		 gt->clock_period_ns,
>> -		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX),
>> -			 USEC_PER_SEC));
>> +		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX), USEC_PER_SEC),
>> +		 clock_period_scale);
>>  }
>>
>>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
>> @@ -205,7 +212,8 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>>
>>  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>>  {
>> -	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
>> +	return div_u64_roundup(count * gt->clock_nsec_scaled,
>> +			       gt->clock_freq_scaled);
>>  }
>>
>>  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>> @@ -215,7 +223,8 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>>
>>  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>>  {
>> -	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
>> +	return div_u64_roundup(gt->clock_freq_scaled * ns,
>> +			       gt->clock_nsec_scaled);
>
>Instead of this approach, how about just using the already available
>mul_u64_u32_div() (or even mul_u64_u64_div_u64())? That would be preferable
>I think (though not sure if the rounding is needed?).

I still think that we need to use the GCD for this calculation and I 
don't see any of the available helpers doing it already. I will assume 
your comment is just about replacing the div_u64_roundup with something 
already available. Are you okay if I leave it as is here, but change it 
in Xe KMD as per your suggestion?

>
>There is also a roundup_u64() available in math64.h as a replacement for
>div_u64_roundup().


Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>>  }
>>
>>  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> index bcee084b1f27..a19c568fcdc0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>> @@ -166,6 +166,8 @@ struct intel_gt {
>>
>>	u32 clock_frequency;
>>	u32 clock_period_ns;
>> +	u32 clock_freq_scaled;
>> +	u32 clock_nsec_scaled;
>>
>>	struct intel_llc llc;
>>	struct intel_rc6 rc6;
>> --
>> 2.43.0
>>
