Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05905A05E28
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E89B10E8C2;
	Wed,  8 Jan 2025 14:14:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3RjlWMU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2403A10E8C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345639; x=1767881639;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=uDwoKR/ZJqUoRxjBEQj6NpDetLGbvlWFjT0i5URrfbw=;
 b=H3RjlWMURSP8XbRrkc59Lj1F1lFGjWZN/sD0je4Yjiufb2BRp3r1f9uT
 R6TMaKb80r1XF9YOHXbnzeUbH2tjNJ/2/PQnWVKZW+xdH3w/XIVkVZJ4n
 ApM+cB9RA6+kE8NYxoK85wROrL2ADjTIV9x1uPPxnb/LeaLBjD8AN5edi
 nVgfCFdWjHvwk5vipG13f2iz+wdvLrNOUKwutUWIMNt8uCY2UYmPpR3ld
 nyCxZPdDbrlMegZaK6edISojnv7u5ReOwhuY0/jhSM5tRpM+snLHiMLRX
 +U09zLQ/d8cnW6u4SacD8r5ir5BQb5cB6Eyw2toeIwFGEUPnN90nP9Sbs Q==;
X-CSE-ConnectionGUID: Jj04nlHwTUKloUzPaYTjBw==
X-CSE-MsgGUID: P2k3euPfQeWFJUwb9d6Gng==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54121152"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="54121152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:13:59 -0800
X-CSE-ConnectionGUID: MbIKS3zeRrGLKsozPnQ8cA==
X-CSE-MsgGUID: a7rDJMWrSfSJAvHnZFUwuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103331585"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:14:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:13:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fi+h4s/hx2P7dboJMTK/ofnnu0rVSdVAPz9eSGJjLi5rVSXuyWKH3nXy/nP5Vm8rNQ7g9uAQmDNfitPBDa2+R7+NTX4jzAmuUtsKkjt6WwqsccdbEN55iO7TB4cNT4L0atu7eAylXQ7R63klv0J1kyZ1FNGmP+5LzN+KB+hawlEfhJ5xTgqlHihsJuvdJg/gtzMJWbcibtuJFagG+8GlLx62HcY6/u/oitNco4UgNLuWVz3oU4aP+hueWdzhTc8Zq+jjPQIDi91OrBWTXB5me/oYI7cA9loCcSe5sV3mxrEseI2bDbR7waZxpZlT9ZvrQ/f4GOTwa2bxzR3nqWOSEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mMvsvQS9jQiwsClVPv2CigIsJexUM/cNv4/ti0Q72gw=;
 b=ko3wwLeU8wJPPOEo+oXwF6aOBMt22OUMwjphLanr/XQd6evLjFSx0ivl5mzlaX4XQB+SioXaD24dqjIOVTRf22VclwHK4wVmKPHUEMnpc8gay88xCfTL7jgmYEXtV4c2+kZdK+FqF4A9VtyqlDUIG3kmaZgyNv2AXQ420SIyOI1xJrDmTuEPwU9bRfUr6TIZqE/UspW6rREjMnNilJZOxh2YgE5oIYnv3nh7VqtucCK8P0Lm29y5vnpP+4LHGziJHJIlmnEIvWXGZVRPbDkuXVBLPqDWKHBD6aJ2hhcFrHXhjygUnlVXXdz2OSu9Ps+QybWCXamTQsZPQna3VwWNAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 14:13:32 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:13:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 3/3] drm/i915/guc/slpc: Print more SLPC debug status
 information
Date: Wed, 8 Jan 2025 09:13:17 -0500
Message-ID: <20250108141318.63823-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250108141318.63823-1-rodrigo.vivi@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0286.namprd04.prod.outlook.com
 (2603:10b6:303:89::21) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: d2cd25e2-6dd8-4ac0-336c-08dd2feea1a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tDf15Bdu42odQvY8Gmk2qwsKQ+UVij6NMjCrk5dbAFTTz9jfpsV9BUxN7M+F?=
 =?us-ascii?Q?V/Reuse6yohXPvh17LvS18yt4viuk9KJ00YVBEQpkWvyzT/oTNHHYo4uco6f?=
 =?us-ascii?Q?aMEsMUJGHRsme72edFwtA3gocJaB5YZalf3/JwfngQG+/XAwWb8DPfDXhYG1?=
 =?us-ascii?Q?ZBqetLpUT/l9i1mozzl1oAmUlPVnRZ9/sptZCI+ghuEEM2lg454z/4OMECkw?=
 =?us-ascii?Q?d7rsmmeQoQuFLbZmRqQX6OKOaKGNaIFPLcJcrhcIFXVuv70CDULmbuIZRmD6?=
 =?us-ascii?Q?9ikeaWBtTXB4xf5epwfUzGzUKPXv8HdUTuB/BBtuxwI6l0gMfEwKfLK80RTk?=
 =?us-ascii?Q?hKdg8cvV+c6EqHk6r//e5cvDIc6CFiUabcbFNBKl2nhGe9cBp3V9zadwIdBf?=
 =?us-ascii?Q?osYc7olzqao7krXSn35uNgkDcgQepTA2+oE7d5Y/oLGA5KkIya1uRzohbWcI?=
 =?us-ascii?Q?o0LZR6NH6hTMhC3UVjRQj//O8ZXrFj6kBFwnboCjV6vdfvZM5U+U9C5Fw6v2?=
 =?us-ascii?Q?9FNaP9rDAiMXLTGjZ0au0gXZ/L+c6ZS1w1XnAxMf2QFDCrhOpcKFdE5FhlZP?=
 =?us-ascii?Q?DpZ5Bl7Y7mQFaitpkdMDmbLhqU1OQLu68m/ggnXPCTRK9Dhl0mxcM3D5KlCo?=
 =?us-ascii?Q?EEODvVNbV9IhfSiqp+YGx3SLIv47KQhJ3Xo6OtsHuU1gAgV008/r78+v229g?=
 =?us-ascii?Q?XyobPz74zak1j1llGmDeimEphYQguxm009DxD9CXfuAwgBctO+x44ahpyMZH?=
 =?us-ascii?Q?KWb+DlUgS4dWC+SfS7OCD/HywnB9NS8ZoDutWKEXwFpbB2svjel1Ajwk2Lzk?=
 =?us-ascii?Q?bsMPdxKAXjmqjpPHxpTKelsdTFEThZ5sd9+4SMgVhNtZtCP/voDA4dykNnbf?=
 =?us-ascii?Q?QUt2lMlctdK069zNrSDcKPUTB2FO5+vVHLyZwtT0OJoB7FQV/29IZTpm7CYV?=
 =?us-ascii?Q?DJ67u979hTUVfGmtc/j2/AJURuJlB25MdGoPxhdBElHCMcRG76JyRXmN4rIG?=
 =?us-ascii?Q?6IfYlNqc+Gj3rBIpf1uURrjkKKxb86FDjPzrqX23F3BFpcOKgRamwOnNn3RY?=
 =?us-ascii?Q?9vctqB+UGKnhupWbMVT5A54HtWXyfz2HbB7ils+obEwhsqXQlPF0ZNZdtlFG?=
 =?us-ascii?Q?va/AgCcO6hwjkJEHu5Cfhqpp/CuYa/PGo7bhOt4fVDjS6uqOgMOHABYfIQxL?=
 =?us-ascii?Q?0YcwALjRaHejYjQuxDOfpusCNJcSujqEqVqzjaHBqbeHFBdbGWF913rrUOSC?=
 =?us-ascii?Q?8L3BTqmZBkdRnEH3kl3sNcdF8r1q25bl5Ii0qd2HHYqejOfVnTSjvg6prNHJ?=
 =?us-ascii?Q?dRTo5Y1RTS/Wonhzd1EeNx+c2auQxF+cxobXB7tB66hLotAK7JRZP27a0Cxl?=
 =?us-ascii?Q?nR6rKPHy24E0zrQrG2Qta/chlfsd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IpSidgc1+0LUS/hecP6tjVSaR2DJ2Olz99tb2qVGD/DQq1E0aFCDBAKRF0LR?=
 =?us-ascii?Q?byD2KUm95B/i2QXCWAfv7c2YoudWL5rZa3IdE2lzjn6W3qpxy+hbE3aliQT4?=
 =?us-ascii?Q?st+DmTHyU6x8veroQeyJNybN3HCfyt2o/s8MMiiyoyXgUCKwtijL24qdebWZ?=
 =?us-ascii?Q?ugSZ7BdU57zDPNKKlH1CQyus+vVazXgj4XWeobVosxFuyYWDR4RcOaYfAoW6?=
 =?us-ascii?Q?IbRvdoDKfZKr4wpTjZwllxOOtPRI0O7a37TIPD6wTqrNDI8WvR2KyCI+wrmI?=
 =?us-ascii?Q?sYHwYiLHfR8hRqRX2k2WMxQCzS7UCLB32YqIFX0J8RCjMh7z0BmUEsbL1gdC?=
 =?us-ascii?Q?suSz2vboqCp4ZLZ8K3EVrfvUKNRS2BgrlvgHjhGSZXXHcv8yWgWVTNKAe5Ie?=
 =?us-ascii?Q?Wb48Q5JDXJ/LB3VcomRuIW1I+UiHhtu3Mb+oLY8teKodvGeLcuCTIV/sTZJj?=
 =?us-ascii?Q?URM2cG4D99TOv23H6ZBQMqJNSuh47RWvh+K/Vw3N7JK7OPxK+w7Ds8SuR7F6?=
 =?us-ascii?Q?P/VPRD1tg/3A3Mj/qPF5TXzFgaJH+mt+6YMBiERmtvZbrSpKVfJRc0gmDBP4?=
 =?us-ascii?Q?E8nqiwrHoX1nY6Ac237OLccAbtkScDkMKo5s2mIOzU5LsNyMx61lVeyDvHuD?=
 =?us-ascii?Q?GZ+2jgAIFFkNUDsZdRjdRT3e05M+Vz1op9nPydX2u+sgNsAxmwtPBWOfWe+d?=
 =?us-ascii?Q?prbSm4rFJpWGMm7kwKuk07rK+xFJODVKmVAeSwlhDlRVx63JbOGekXMIDfzD?=
 =?us-ascii?Q?+V2onNyE7sVbCRANLCrBc936LZDzF+BYQxLmc9K2uYoibYsgdVj2XfZcLc5c?=
 =?us-ascii?Q?sg8YyJUgDrwyDSCMCuG4Mnfckqdl0RPsXx6O3Yv07M/0cl+v6nMm2wTIesz7?=
 =?us-ascii?Q?YczPTL/9tA2oGDtH/2KWt+3y2J0njkbmb4r+pP/TaFk5xb0HpS5tvAUh8sOz?=
 =?us-ascii?Q?6iMe15cgOMy0YNWf8/BCzp9GC2SFiQbNKdDpsaMCHzlnX+N4JpggV67HMpTF?=
 =?us-ascii?Q?+5u6anb6BSnsidauaw2oX2Hnguk5JOF2O939xq0dLN0UO5CsbFjDCzuR0Cdp?=
 =?us-ascii?Q?hNzTEGVLc2wQKEhObOJkSlUN6pmvEbGi1wXlsupLFFpTl4707pLEEZhFsm/F?=
 =?us-ascii?Q?2mYoEb38phNyV8/3+AZhK8CAZHebL1myPYc+Bn4S2dTjb28UnvN3cl0xargx?=
 =?us-ascii?Q?wSRRqt9GV72ZLedgcIBcbSxuVP6BUbZdeidto0wkEWoGy5QCXPLJqP7uy6sW?=
 =?us-ascii?Q?zq8BS8l0CyaPf8rbuCF3qjmaSwxGIwNbhDAudYGcXmrBfOfIKJLCMiBPpQa8?=
 =?us-ascii?Q?nua7x6GriUBbNCYiwM0HtTv1JJGu2AFHL1Lxn94OayLcUUWqzk6I/8JXHUgK?=
 =?us-ascii?Q?+WMEhFkpc8rfBSR5Rj5p59sCjHETPpUVDYEd0hWmiBfMeyzwvjVZOVTqtjQP?=
 =?us-ascii?Q?4LIUpnjSFvQhK67WpVzXA1CRujqccQ4fI34yf+PNuOmB9pWiNnXML6CfX6sP?=
 =?us-ascii?Q?yZu0JEiedhhKAcRGtPbf7AXewhQuGL5+Hu6Kts+TL7GjuhKwiOvDynDU/Uw4?=
 =?us-ascii?Q?bdk1qVkChjsejDMAPBotmaiziB04u6Yg1o5eEp+eEdViIhSh4mKdnJhqcuYK?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2cd25e2-6dd8-4ac0-336c-08dd2feea1a9
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:13:32.1361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2sYpkSBmjEMOmMglbaLlJBm9NFXc83HL6//RuFNrg+Z8I850Dvi1tdXB2o8w9HXHjwqKtMlMse8ftKB8nXv9dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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

Let's peak on the Balancer and DCC status, now that we
are using the default strategies.

v2: fix identation

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 722da8a7f852..7a9a79fb46fb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -774,6 +774,23 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
 				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+			drm_printf(p, "\tDCC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_DCC_TASK_ENABLED));
+			drm_printf(p, "\tDCC in: %s\n",
+				   str_yes_no(slpc_tasks->status & SLPC_IN_DCC));
+			drm_printf(p, "\tBalancer enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_ENABLED));
+			drm_printf(p, "\tIBC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_IBC_TASK_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT active: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ACTIVE));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
-- 
2.47.1

