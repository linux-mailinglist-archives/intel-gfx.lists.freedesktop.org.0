Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8372AAD702A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E4A10E7EE;
	Thu, 12 Jun 2025 12:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2V/IR+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91B910E7EE;
 Thu, 12 Jun 2025 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730980; x=1781266980;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=TbB6AuWaV1f6MDq+ydt/e+92LUzJisBPF0yKt7xHSgI=;
 b=N2V/IR+w5TppqtfmlSLVkxNjW+XuzEPsNFc2JQqshzJd8tCyVQQKQM+f
 Ahv2PycK8SRSlTzZWovQWsYahnnwuQju+wAPHRKxRsbRIbUSaZEF1vM0C
 HfK8fbOzBCps1TaHPJNNCGgVI520wZG2I+xNj52Hcz6qLGjv1MJo9hEJx
 hvV2F2Lgp7DrTDetGWqb8N4I5gMhMymQxp8xP9odoPAPG80Z+5vku2WKd
 3xmb4vaHq5ZpxZf+TPelRctnvztDJIhOzkdd3U17q4HNVszbm4EHjaFwC
 8ZIVM1+TFgmXFQ3uZnxHzqsGapGSMB2KWfuE5GJ2RhbVzJkUFkH3Afxz+ g==;
X-CSE-ConnectionGUID: o/loi6AURNiOKXLlqT1WAw==
X-CSE-MsgGUID: UeWDBpwQTgGGCGfvan9pmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62556915"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="62556915"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:22:59 -0700
X-CSE-ConnectionGUID: ElIxUSG2QTmf3htLk1HsGw==
X-CSE-MsgGUID: q/Z8cd5aTPy/2L74Uub0Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152650159"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:22:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:22:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:22:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=am2xL8eKhqZWLnIQQJ29ufQd+ThtPjum7yRGY1cDmknmhzj/eLPv1n0OcdNhs2BzW318HTc/d7CW3aZi6cytdZCuX54Wf0RfQjy6IdivL90DQAIVwZqnEFZDZNr4Rl6jnUn6A3yYwhgmvCl4nqbfHXeAoxfdUjax4muGvZgfxBfqvwmuZ2kCNb1Sc8YlGpCSRiewOrv1YGi1ErVG89kJnZn4VvphJz9Xd+XubG64X7Vr/1ajLEf6tI2kfPvDR8M6SyLb+qZNXZgX8i1xhT+Bg5L5QzjXP8i4hE0UuxdczeXhzbEfyMMvGhGSCNGpsJXfRvVKGdA/ioh/t5KUU0Gn5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yWpuUMXv8zr2UDEenjEKlezdcbGRnA85XNanpFAU8ro=;
 b=U+PS9CjoVPIt3ITkihFoUkXOxxz1BrG0vi9fUjb1EUntjoaYIkgX2FRYaulm+UEcGPz828puBKSSVXXCUMOGZwfmbAu56vwNly2gvlaWfnitTADOjxIVpdSyWYfSqiQOqq9yyVWa/xbdU9LzLrtFJ4tLsS/ZGxJPicm9L+2ZlWuyP1a3dHPFNPnnU7hzwsCFqLIt8T+75T3iYBu2UYZHCbRFCp3dG3yCRNmmPiYnxygwnoCjSonrLptFV/GIHenF70Y6v7d36ZjNoIOgwQJYvrR1rRZO1C78DPY3AjzgzmKCO20aXO335InDDOtZmoevov7K6IA6FnX7d4w/jFJFtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 12:22:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:22:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7b31a418439e514d6eeb97675d54a53d189ebcd3.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <7b31a418439e514d6eeb97675d54a53d189ebcd3.1749728173.git.jani.nikula@intel.com>
Subject: Re: [RESEND 1/5] drm/i915/plane: rename intel_atomic_plane.[ch] to
 intel_plane.[ch]
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Date: Thu, 12 Jun 2025 09:22:52 -0300
Message-ID: <174973097216.14553.9772836479169726081@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P223CA0021.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: b9c186a3-a48b-484b-4dbc-08dda9abdcd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWRZNTRqS0NYaXR2S2JLR2F0bjdCZEdZdGx3bFlEa29EbXpZcEhFWE9KTWRn?=
 =?utf-8?B?NWpyck1wVThPaFJabVVGT1ZCREgxdXNITzJaVzErbGlMM2xGdlhaVWszdFFr?=
 =?utf-8?B?Q2lqZWpKWkswRE8ySG90Y2hhbHVsMFlBSWEzeXg2alV3NVNwZ2tNL2JBNFZM?=
 =?utf-8?B?NENsZG81Q0lUZVVVblo3eDZpbjF4N1FKSW1HR1NuVTRkb2tlU3g1RWEwdmhn?=
 =?utf-8?B?N2VtaXBpRTgxZnl1NzlpYkpPaVZwMjFkY0ZCYXd0WFUwNTJaOURXdmNESkxo?=
 =?utf-8?B?aG4rNU5Id1hUVW9rNDhwMWRsa0VoUU1oQ3h2aGNDampoZ2pKbWV5RkRsSENX?=
 =?utf-8?B?dGswMVFYdlNYM1U5WWdaS05RTTFNOXpZd0IwVWhjQzZsSTkwMkVvQ1MvNHNm?=
 =?utf-8?B?QVIzZTJBdTdDUGJtNm9rZUorQllYQTFWb0M0c0puWngxU2toQWhmVWlJY3lt?=
 =?utf-8?B?SEg2ZnhqejMxeHlKOCtkR3JiNU5zV09WdW9LN0hYalVZL2Q0T3NYMjhvRm9D?=
 =?utf-8?B?MDMxQW8ycjNiQmRobTNQK2NuQlVNRE1FbGF0Q0RsL1lRMWxFK3A5WklseXpU?=
 =?utf-8?B?VlB5VGVyaGsxOWhvekJuQy81VHpJenJRbDNuMTArTXp1ZzJMazFFV0hWV01s?=
 =?utf-8?B?NUNobnZZVEQzVVN6Z1RuNEc3Z0VPS0gxZDB3aTBFYnVYVllzYWFCa1BVYitP?=
 =?utf-8?B?QlNVd1F1Z0k2MHlidnV2MzQyOWlHNzFHVVpQaDlqc3lXb3FVQmdORUY5ODZv?=
 =?utf-8?B?a3c1WDlmNWNIUkMvMXUveStDOGJ3TW4ydGVzcTAwT0dYQ2lZL0FHWVp1Q0tZ?=
 =?utf-8?B?Qm1nMTRKUWxjV3JsWjJJdlNHc0lxOWROdG9pL2ZaMUxWVnZUVXVMNUZ1ZG92?=
 =?utf-8?B?WDIwSVZ2NUFLa25waTFUQjhLbXlQdzZVQXJ6R2xZa0pTYXJCb1JudldwZk9S?=
 =?utf-8?B?NHhVZWdLTkovbjZ3WXpCOEhQekxXMFpHL1FXQzQ2RkZkMDFDdHF1Ym5uTHd1?=
 =?utf-8?B?M0t5Tnhwc0R3L1o0dmhrcVNtdjFycVlsQ3VXcVRDSlpESGZLcE1weHYrcEhX?=
 =?utf-8?B?eEZVbVhaWDhGbDM2d1lQVksrNVJKTDNnbHhMQitZdFVwK0ZHYWROWFBjR0dT?=
 =?utf-8?B?T0tCejd2Q2hwVDNmZGhzUmV2YzJBMlFBM0xsUFlaeVdUNGNHV3hDdllnQVpa?=
 =?utf-8?B?M2VicWdTUmcxbmRVS0tyZXp0YzFja3RvSll4U29DbkZrNzQ2V2ZJWGFaeVZz?=
 =?utf-8?B?ZGFYUUNVdVlsZ0dmemY4N2ltSmNHZ3lVcjZjZXVUUjgxK2ZpSEpFNklVVllT?=
 =?utf-8?B?blQ1NEtsdkpKRGJQdmhkd1BNeWZpenQ3ZEJrVk4vQkpTV3NiUGdqaFNIQ3NJ?=
 =?utf-8?B?VkliZ1l4MzQvcHR5cTFwdmx0NFdxVWVrc1F3MS8yTk05Z3h5TFlnZnNoWG9L?=
 =?utf-8?B?VVZCQ3p2SFFrckI0NnZtYU1rRmxUbVF1WFAxbCtPOFUwNVNnaU9FMUIyNUl3?=
 =?utf-8?B?cjc0UDJDSTNBMWcxZWdXbG92dXZmTTFFYlNicmkyVTRqUHA4NzBWY0IyYUY3?=
 =?utf-8?B?dmJmTTF3b1hiMmJGWjFqNXkzcEo5NzFzUGtLT3NtVXQvTGwvSG5KVmM3aVo4?=
 =?utf-8?B?b0dtRC85RWhobDlPVXBnWURoVld3U0EwMEMza2QvdjJ3enlSQUM0OGkyZFlE?=
 =?utf-8?B?azY1VVBwQm1ndDJaNzEyMFpuU1dJc0VwSHU2Mzh0Nm9KRTVZOGJPYWtmZDFi?=
 =?utf-8?B?emdCVzlMTklTSEp3eHFnZkNIckRJVk5JdUZoWjBUMzNITk5UWU50YzNlVHY1?=
 =?utf-8?B?di9QVVdOT2YyemhTdThsemNTRDlhVm5Ub2t4YUEyUXNvN2FFSDBFeExxUzBG?=
 =?utf-8?B?ak1xb3loUHBEcmJNa2wxTUt2Vit0NUlEN1BycmpxSm5CRE45ZG95Zm04SERY?=
 =?utf-8?B?bEVTTzVEaTdGc1JJOUhkOGxVNnBuL2orNU14S3ZxbEJBcWlhQ1ZZcndvMkhF?=
 =?utf-8?B?d0UxMjRxRU1nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFhiL0ZvMXc0YmNPcnVyelFXREU3em9UaHlpbFFaOEFnRi9oajFna3ptVDE1?=
 =?utf-8?B?cldINVp1Yzlhb3llLytIa2lQUncrTmxxYUREVlRaTnpETEx6OFN4THdlbTR5?=
 =?utf-8?B?T01oVVMyWWtPOFVudHN3UEhnZ0ZJREpGcExINEE4K2Q2NzZKNjByRUtGUllC?=
 =?utf-8?B?Wm15UWhHN3RqZjNSVkZiQzdZSEs5OUNQRVJ1QXcrSmpDUFZwQUluMXVweXRv?=
 =?utf-8?B?SThOMlFScU8wTk9EOTB3OUM0VFRkRWgrdUw2cjFwTEYrT2pnOHp0SE9XWUQy?=
 =?utf-8?B?cG1ISkl3UHRlZnd1c1JEVGNvcHd6M3dSeGdNWTlxTFJUVVNNQTlyMTBVRWVS?=
 =?utf-8?B?MVJPK3FZbkpOS2d0a3ZQWTBOaFdDSkljT2pMUUN6d2t1V3RsVElwdERRYjZX?=
 =?utf-8?B?aUVBOVBVZUlyYnhJVkhHT0RKZXNQM2ljeGNNbFNvUnZzT292UGxObmowRGdE?=
 =?utf-8?B?aWFXTVBmTGJ2RWwvSjk2QURCNVFDNHZiVnlYMFZXaW1vNUlJZmpmZHR6b0hP?=
 =?utf-8?B?QVlFV3pnSXBIY0hCcjl6b1FQSzdrTkg0OUwyczBpc1plRFBXRVpnY0YwTjlw?=
 =?utf-8?B?ZDBGTmR2L1FGSGlCSHg4WnBCNVdLVWl6cVBFRFk4REoyQWxacFd1d0tmY2Zl?=
 =?utf-8?B?ODBjMW1taC9icUEvS05hbFpoVmxWaDh0bjYrOHpEeEdGbUYyL3lmbENPU05o?=
 =?utf-8?B?dnlMUnlwdnNkWEJYNnVlR3Q5WXg3OUhiTTVOOHN4VHB1SVlaQytyTklsMTc2?=
 =?utf-8?B?aVgvNWU5NWdyekZNVTh1SUdPK0p4RGxKSitTaGNtRUhaYUxyeVdYV0E0MFVS?=
 =?utf-8?B?UHI2aXJ4UCtLRFg3N1VnemphS0VNUHhnOVFndU90ZUlGd3lrajZhazlyck1o?=
 =?utf-8?B?Wko4djJWR0wwWVUzdlRmQ3QwMUlHSzkyT3JSVGRjZ2J1U2tQSUV2N1N4M2Vj?=
 =?utf-8?B?ODlhMlIvMXl2bjN6NTBXQTd6eTQ2aE9zSlNlS2VKUVY1ZXYvTTNGSFRTYnpF?=
 =?utf-8?B?VUE4ZVk0c0h3bm5WdFBiUERYTWp4VmRITXR3aDgycm9jZVpyVW5TUm9qSVcz?=
 =?utf-8?B?bmorSEQyUWZPR2J2NU5NbE1DWHk4MC9NTmREdFhSKy9ZdUtCbytNYlVWSm1D?=
 =?utf-8?B?bmlBSC9LMzhuTnllTmE4ZnJCMUR0OEt2MVJEWEt2am5wQ2UzbVMwS2h1ckI2?=
 =?utf-8?B?c1BwM0VUN29vMWJWbGdvbE5oTE1uMjRqK0syaTBQZjhVZURobHB4Q01PdnFX?=
 =?utf-8?B?aG4rdjdXVzYwWkZjbXJodUg1QWFzUncrL0JEcWJaeSs3NjFzRU9VSkttZVpv?=
 =?utf-8?B?WkNTT3czVWVUQTk5bHpDT1JFL3NiRkdTSDJWanpxRXV3ZHU1WHk2VE44K253?=
 =?utf-8?B?WDVnTEVWbENDZW5tZEVFQ0lEYWlRVGM1UEwzRUsrYkRPSUlzK3U3WEhkYXI1?=
 =?utf-8?B?VUxZTzVNWHVmTDBvdWs4eXQ1NzE3dnNLbW83alFUY250a2FEb0FzMEpjRGdD?=
 =?utf-8?B?bGY0a3hJME5JdlFQUXpkUkd0RFFOUGxGOXlHZmVOVUdGeGRwYzB0RlJ1YTdY?=
 =?utf-8?B?QzZmNXVJRnF6eGx3bWdQOG5yUTJPYS9iWWRjSkcwaDd3Zno1UnR4V05TcHJa?=
 =?utf-8?B?cnIrV0J0WUZxYkNYaklOMElneVY3aWdlU1NZalNqKzNVbGZ5YjUySmFxbjdV?=
 =?utf-8?B?c05LUXo4SDNESno5dHNVakFlc3c5cUJIQ0JaT0tPVitkdFFkV0I5RkxWR1Vi?=
 =?utf-8?B?cVZ3V3dncWErYmxTcVk2SzdvU2dXT0dxK1djdGY3SXBhenAxZ2JCa0V4UlJM?=
 =?utf-8?B?Smd3Y2hqRDc2aUVrWlB4R0ZBU00wTEJ0dkJ2a0NpMldVVm5Qem5WV05PaHBy?=
 =?utf-8?B?VWcrdDlxVUtxWmR3RjRRS0lFRUxBZzI1NkNWbkFBRkZRZmFscFM2c1BrOEJh?=
 =?utf-8?B?ajFjaFNQMXE1azBwT2IxUWpaVW5zVUZGcFhjdkFvbVZOZURRYUlpK3ZVTmtQ?=
 =?utf-8?B?Z25vK2czRXZMS2NYUEZrNHBWNlhpYmtmRURjRVpCQ1VDdEZJdzMrV2FBcE1h?=
 =?utf-8?B?b0ZCZDFkUVlqODFTUnBPNjVrUWRuZnI2V0xuam9vVFVIVW84d1ZmbzUzR3hD?=
 =?utf-8?B?Q0VkUTZYME1YSVlibkEvdlo2OWw1K3VQWG1IOTBkOWViVi9adDc3aWxweXBI?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9c186a3-a48b-484b-4dbc-08dda9abdcd9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:22:56.9673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DbG9LZuxg2fSrJWSdybAy2DW8yvpX4xb8eoXcq1IM7C6T2WHqO/MepBazIE7+6kGIIix9jxEOloD1VCSTuEaqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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

Quoting Jani Nikula (2025-06-12 08:37:07-03:00)
>It's all atomic, no need to emphasize this.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I think we should also update the kernel-doc directives in
Documentation/gpu/i915.rst. With that addressed,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/Makefile                               | 4 ++--
> drivers/gpu/drm/i915/display/i9xx_plane.c                   | 2 +-
> drivers/gpu/drm/i915/display/intel_atomic.c                 | 2 +-
> drivers/gpu/drm/i915/display/intel_cdclk.c                  | 2 +-
> drivers/gpu/drm/i915/display/intel_crtc.c                   | 2 +-
> drivers/gpu/drm/i915/display/intel_cursor.c                 | 2 +-
> drivers/gpu/drm/i915/display/intel_display.c                | 2 +-
> drivers/gpu/drm/i915/display/intel_display_irq.c            | 2 +-
> drivers/gpu/drm/i915/display/intel_fb.c                     | 2 +-
> drivers/gpu/drm/i915/display/intel_fb_pin.c                 | 2 +-
> .../i915/display/{intel_atomic_plane.c =3D> intel_plane.c}    | 2 +-
> .../i915/display/{intel_atomic_plane.h =3D> intel_plane.h}    | 6 +++---
> drivers/gpu/drm/i915/display/intel_plane_initial.c          | 2 +-
> drivers/gpu/drm/i915/display/intel_sprite.c                 | 2 +-
> drivers/gpu/drm/i915/display/skl_universal_plane.c          | 3 +--
> drivers/gpu/drm/i915/display/skl_watermark.c                | 2 +-
> drivers/gpu/drm/xe/Makefile                                 | 2 +-
> drivers/gpu/drm/xe/display/xe_plane_initial.c               | 2 +-
> 18 files changed, 21 insertions(+), 22 deletions(-)
> rename drivers/gpu/drm/i915/display/{intel_atomic_plane.c =3D> intel_plan=
e.c} (99%)
> rename drivers/gpu/drm/i915/display/{intel_atomic_plane.h =3D> intel_plan=
e.h} (97%)
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 7c6075bc483c..0c3fbd0d14e7 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -218,12 +218,11 @@ i915-$(CONFIG_HWMON) +=3D \
> # modesetting core code
> i915-y +=3D \
>         display/hsw_ips.o \
>-        display/i9xx_plane.o \
>         display/i9xx_display_sr.o \
>+        display/i9xx_plane.o \
>         display/i9xx_wm.o \
>         display/intel_alpm.o \
>         display/intel_atomic.o \
>-        display/intel_atomic_plane.o \
>         display/intel_audio.o \
>         display/intel_bios.o \
>         display/intel_bo.o \
>@@ -283,6 +282,7 @@ i915-y +=3D \
>         display/intel_pch.o \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>+        display/intel_plane.o \
>         display/intel_plane_initial.o \
>         display/intel_pmdemand.o \
>         display/intel_psr.o \
>diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i=
915/display/i9xx_plane.c
>index 8f15333a4b07..eba8eb745aa7 100644
>--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>@@ -15,7 +15,6 @@
> #include "i9xx_plane.h"
> #include "i9xx_plane_regs.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_de.h"
> #include "intel_display_irq.h"
> #include "intel_display_regs.h"
>@@ -23,6 +22,7 @@
> #include "intel_fb.h"
> #include "intel_fbc.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_sprite.h"
>=20
> /* Primary plane formats for gen <=3D 3 */
>diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm=
/i915/display/intel_atomic.c
>index f85edb374c97..348b1655435e 100644
>--- a/drivers/gpu/drm/i915/display/intel_atomic.c
>+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>@@ -26,7 +26,7 @@
>  *
>  * The functions here implement the state management and hardware program=
ming
>  * dispatch required by the atomic modeset infrastructure.
>- * See intel_atomic_plane.c for the plane-specific atomic functionality.
>+ * See intel_plane.c for the plane-specific atomic functionality.
>  */
>=20
> #include <drm/display/drm_dp_tunnel.h>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 38b3094b37d7..bae85603543c 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -32,7 +32,6 @@
> #include "i915_drv.h"
> #include "i915_reg.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_audio.h"
> #include "intel_bw.h"
> #include "intel_cdclk.h"
>@@ -43,6 +42,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pci_config.h"
> #include "intel_pcode.h"
>+#include "intel_plane.h"
> #include "intel_psr.h"
> #include "intel_vdsc.h"
> #include "skl_watermark.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i=
915/display/intel_crtc.c
>index a88317ea4e9c..a187db6df2d3 100644
>--- a/drivers/gpu/drm/i915/display/intel_crtc.c
>+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>@@ -17,7 +17,6 @@
> #include "i9xx_plane.h"
> #include "icl_dsi.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_color.h"
> #include "intel_crtc.h"
> #include "intel_cursor.h"
>@@ -29,6 +28,7 @@
> #include "intel_dsi.h"
> #include "intel_fifo_underrun.h"
> #include "intel_pipe_crc.h"
>+#include "intel_plane.h"
> #include "intel_psr.h"
> #include "intel_sprite.h"
> #include "intel_vblank.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm=
/i915/display/intel_cursor.c
>index 6bd4f6a28cae..27d86549af2c 100644
>--- a/drivers/gpu/drm/i915/display/intel_cursor.c
>+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>@@ -14,7 +14,6 @@
>=20
> #include "i915_utils.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_cursor.h"
> #include "intel_cursor_regs.h"
> #include "intel_de.h"
>@@ -23,6 +22,7 @@
> #include "intel_fb.h"
> #include "intel_fb_pin.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
> #include "intel_vblank.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index b0c7c46ffbe2..acc03b4c9e89 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -57,7 +57,6 @@
> #include "i9xx_wm.h"
> #include "intel_alpm.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_audio.h"
> #include "intel_bo.h"
> #include "intel_bw.h"
>@@ -108,6 +107,7 @@
> #include "intel_pch_refclk.h"
> #include "intel_pfit.h"
> #include "intel_pipe_crc.h"
>+#include "intel_plane.h"
> #include "intel_plane_initial.h"
> #include "intel_pmdemand.h"
> #include "intel_pps.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 8d0dcf252bed..fb25ec8adae3 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -9,7 +9,6 @@
> #include "i915_irq.h"
> #include "i915_reg.h"
> #include "icl_dsi_regs.h"
>-#include "intel_atomic_plane.h"
> #include "intel_crtc.h"
> #include "intel_de.h"
> #include "intel_display_irq.h"
>@@ -27,6 +26,7 @@
> #include "intel_gmbus.h"
> #include "intel_hotplug_irq.h"
> #include "intel_pipe_crc_regs.h"
>+#include "intel_plane.h"
> #include "intel_pmdemand.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i91=
5/display/intel_fb.c
>index a5906cb4900c..763b36c4de10 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -11,7 +11,6 @@
> #include <drm/drm_modeset_helper.h>
>=20
> #include "i915_drv.h"
>-#include "intel_atomic_plane.h"
> #include "intel_bo.h"
> #include "intel_display.h"
> #include "intel_display_core.h"
>@@ -20,6 +19,7 @@
> #include "intel_fb.h"
> #include "intel_fb_bo.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
>=20
> #define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i)=
 >=3D ARRAY_SIZE(a))
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm=
/i915/display/intel_fb_pin.c
>index 98a61a7b0b93..fcc88e677e47 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>@@ -11,13 +11,13 @@
> #include "gem/i915_gem_object.h"
>=20
> #include "i915_drv.h"
>-#include "intel_atomic_plane.h"
> #include "intel_display_core.h"
> #include "intel_display_rpm.h"
> #include "intel_display_types.h"
> #include "intel_dpt.h"
> #include "intel_fb.h"
> #include "intel_fb_pin.h"
>+#include "intel_plane.h"
>=20
> static struct i915_vma *
> intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/g=
pu/drm/i915/display/intel_plane.c
>similarity index 99%
>rename from drivers/gpu/drm/i915/display/intel_atomic_plane.c
>rename to drivers/gpu/drm/i915/display/intel_plane.c
>index 15ede7678636..f079963c5dff 100644
>--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane.c
>@@ -45,7 +45,6 @@
> #include "i915_scheduler_types.h"
> #include "i915_vma.h"
> #include "i9xx_plane_regs.h"
>-#include "intel_atomic_plane.h"
> #include "intel_cdclk.h"
> #include "intel_cursor.h"
> #include "intel_display_rps.h"
>@@ -53,6 +52,7 @@
> #include "intel_display_types.h"
> #include "intel_fb.h"
> #include "intel_fb_pin.h"
>+#include "intel_plane.h"
> #include "skl_scaler.h"
> #include "skl_universal_plane.h"
> #include "skl_watermark.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/g=
pu/drm/i915/display/intel_plane.h
>similarity index 97%
>rename from drivers/gpu/drm/i915/display/intel_atomic_plane.h
>rename to drivers/gpu/drm/i915/display/intel_plane.h
>index 317320c32285..1dd32586ac16 100644
>--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>+++ b/drivers/gpu/drm/i915/display/intel_plane.h
>@@ -3,8 +3,8 @@
>  * Copyright =C2=A9 2019 Intel Corporation
>  */
>=20
>-#ifndef __INTEL_ATOMIC_PLANE_H__
>-#define __INTEL_ATOMIC_PLANE_H__
>+#ifndef __INTEL_PLANE_H__
>+#define __INTEL_PLANE_H__
>=20
> #include <linux/types.h>
>=20
>@@ -94,4 +94,4 @@ bool intel_plane_format_mod_supported_async(struct drm_p=
lane *plane,
>                                             u32 format,
>                                             u64 modifier);
>=20
>-#endif /* __INTEL_ATOMIC_PLANE_H__ */
>+#endif /* __INTEL_PLANE_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/=
gpu/drm/i915/display/intel_plane_initial.c
>index 8800a657cd21..2194d39a5c98 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>@@ -6,13 +6,13 @@
> #include "gem/i915_gem_lmem.h"
> #include "gem/i915_gem_region.h"
> #include "i915_drv.h"
>-#include "intel_atomic_plane.h"
> #include "intel_crtc.h"
> #include "intel_display.h"
> #include "intel_display_core.h"
> #include "intel_display_types.h"
> #include "intel_fb.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_plane_initial.h"
>=20
> void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm=
/i915/display/intel_sprite.c
>index fd92e6b89b43..db0c48d0c743 100644
>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>@@ -41,11 +41,11 @@
>=20
> #include "i915_utils.h"
> #include "i9xx_plane.h"
>-#include "intel_atomic_plane.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
> #include "intel_fb.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_sprite.h"
> #include "intel_sprite_regs.h"
>=20
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/=
gpu/drm/i915/display/skl_universal_plane.c
>index 2aa64482d44b..9c8dac97cc40 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -9,9 +9,7 @@
> #include <drm/drm_fourcc.h>
>=20
> #include "pxp/intel_pxp.h"
>-
> #include "i915_drv.h"
>-#include "intel_atomic_plane.h"
> #include "intel_bo.h"
> #include "intel_de.h"
> #include "intel_display_irq.h"
>@@ -21,6 +19,7 @@
> #include "intel_fb.h"
> #include "intel_fbc.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
> #include "skl_scaler.h"
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index 2c2371574d6f..c2e11d9ee652 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -13,7 +13,6 @@
> #include "i915_reg.h"
> #include "i9xx_wm.h"
> #include "intel_atomic.h"
>-#include "intel_atomic_plane.h"
> #include "intel_bw.h"
> #include "intel_cdclk.h"
> #include "intel_crtc.h"
>@@ -27,6 +26,7 @@
> #include "intel_fb.h"
> #include "intel_fixed.h"
> #include "intel_pcode.h"
>+#include "intel_plane.h"
> #include "intel_wm.h"
> #include "skl_universal_plane_regs.h"
> #include "skl_watermark.h"
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index f5f5775acdc0..40d01751b49e 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -205,7 +205,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>         i915-display/icl_dsi.o \
>         i915-display/intel_alpm.o \
>         i915-display/intel_atomic.o \
>-        i915-display/intel_atomic_plane.o \
>         i915-display/intel_audio.o \
>         i915-display/intel_backlight.o \
>         i915-display/intel_bios.o \
>@@ -271,6 +270,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>         i915-display/intel_modeset_verify.o \
>         i915-display/intel_panel.o \
>         i915-display/intel_pfit.o \
>+        i915-display/intel_plane.o \
>         i915-display/intel_pmdemand.o \
>         i915-display/intel_pch.o \
>         i915-display/intel_pps.o \
>diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/d=
rm/xe/display/xe_plane_initial.c
>index af47ce34102c..b2ede3af9345 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -10,7 +10,6 @@
> #include "xe_ggtt.h"
> #include "xe_mmio.h"
>=20
>-#include "intel_atomic_plane.h"
> #include "intel_crtc.h"
> #include "intel_display.h"
> #include "intel_display_core.h"
>@@ -19,6 +18,7 @@
> #include "intel_fb.h"
> #include "intel_fb_pin.h"
> #include "intel_frontbuffer.h"
>+#include "intel_plane.h"
> #include "intel_plane_initial.h"
> #include "xe_bo.h"
> #include "xe_wa.h"
>--=20
>2.39.5
>
