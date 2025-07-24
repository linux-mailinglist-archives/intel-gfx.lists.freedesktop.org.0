Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3908B1085D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 13:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8454410E92D;
	Thu, 24 Jul 2025 11:00:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nz8upzUh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EC910E92B;
 Thu, 24 Jul 2025 11:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753354858; x=1784890858;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KZU7V7REL66A18gzQ41z+/jEL9YHOKRhdCH4sjzv07I=;
 b=Nz8upzUh6xnLQpQgHOMnMznhBWtQ7BV9ucWHYEGw+dJjwo/C09Pl9ZSj
 75DvEPumWj181L5Qa3Y8CyYi9GEPPiaFmv7gDxiosLWeGOEqdEJNWJCTb
 ilPt6W4jZzYPVUxDLaJpIyInjndy4Bw+d6ll7NLTmC0xTtQjHkLo9+n+S
 hayArddjF8tiwfCRMKABK5sp0v20R4fSbwaXJPN8Yhad7mdFVxNyFsVAs
 JeWhbs5mcE8EqLi1pfwuAgIEEtFUuYhkFp1AVu115cTqi3KOcEqEOG5qp
 W2Rosguv0mT4KyMOF0Vc8bSS51wnXJ1y/lfGfxVUwitYrNnZezflsaFvE g==;
X-CSE-ConnectionGUID: 2mHYkfLEStqSAPUGJg81cw==
X-CSE-MsgGUID: brZ9orZoQC2GsGy3cZLh9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="66227607"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="66227607"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 04:00:57 -0700
X-CSE-ConnectionGUID: IVnuEJ2YRoWYdK8y+6m4IQ==
X-CSE-MsgGUID: 4WjTLKCTTxa7tKt0bhc6ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="165701281"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 04:00:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 04:00:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 04:00:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.49)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 24 Jul 2025 04:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LNxwcfczsGT7ORYw+5evZRngCjdboc5bCeVmCXMivFq5eDRqtzQeHVft78sw0I0wciyhIDgIJcgh2TObWGjKZ2aWQPZg6Aot8PFqDF4bAKSd8xOWbHWbHpBwCtHxIeTLMbbrQ3mDDfU3JxmgyvSMbyqE+PEAFgValZVS7fiUCIcuIUK1BLjCGBu1LwxOoIFAUyQyrarJqdgwI6pwzqzQcz/8OaZ07bOTX9MjNrTfagj78Z2VXAEuOtIjMjfS07F41dXtSkJTTs8HI9dTe4Ck9YBTD+39N6uBleDOLAWKXqGL5m1AkRZJyxXEhx4mlCmhxWErLHx1jGLN/yGQqxXlkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtC68lZoIt4UcWYKi59e2msKqBEb8XC1Z4NKsCxz/O0=;
 b=ZvbCcu3AP8j6ZAvLR9fUXBqDfjEw3rN9aXhyJe/566J55Ajsj+t3ilcD33agHZBfuVsQSn6XwRClSb6cPCOVFJh11LW6GSzlPgYs+Z2DqG0qw1L10YdEFHKqTSUgwbg6SueJADgcoAXUQ2c7NKRf3BICPn3ipaq8dBzDITUh5lUBEQiAKlioi7PYnOrf58ijEiSgp8EiUhDGs9coxAJCFGs7Tzxy9tRyVivDZGLldxUNpfdYhgTxPgd5m7AQLA85gPDJG1ZshCFRUL+LQMDryMneRXVCs7hVQ6UUXRQIu101w50CMV5fKXAZNBFTdCyi1dznALHj4WiyYQYX6LSB2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9394.namprd11.prod.outlook.com (2603:10b6:208:563::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Thu, 24 Jul
 2025 11:00:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8964.021; Thu, 24 Jul 2025
 11:00:47 +0000
Message-ID: <f597a3ff-4aae-453e-8752-20039a3e1c47@intel.com>
Date: Thu, 24 Jul 2025 16:30:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/edp: eDP Data Overrride
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20250722055624.2251656-1-suraj.kandpal@intel.com>
 <20250722055624.2251656-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250722055624.2251656-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9394:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ba30112-cb40-43ac-8d2b-08ddcaa157c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clhlNnRJNjNKUktVdmRMOW9mVDV1T1lEb0J5VlUyUXF0aXhvNmZ5Tnd6dk1l?=
 =?utf-8?B?SGpXQ1dzaUFaUlRZNFcxeEtCT0VtSUpya0pVbWRMYmJ5SGJIa2Zwd0p0bnBv?=
 =?utf-8?B?SWxBVHRzOHNTbllpZzVZLyt5SCtqakdYQUpMd25QR2h3dUg1TXZWMjdzdEZD?=
 =?utf-8?B?dmcvWWJGaFFmK3NHQXU1OFJrVkgxS09BbVRPald1Yks1YkZQTjNwcE5NY1Ir?=
 =?utf-8?B?VTlFSHJrdklicUxvTnhFd3dJWHAwZ29rcDFHZi90ZkxUUW9hR2FwODlxUnZo?=
 =?utf-8?B?aWdzeWtzSDFRcjVaQ2RNQktOeldxVXVGd0xDb2lhS1RqYkRILzBWVDJHL1FX?=
 =?utf-8?B?MlVDSUxpWXpFVEdCYWRTMWwzVG1vaVNuWHdkNWZVamVFVGkvVkpmbVF0QnZT?=
 =?utf-8?B?OXA3azNDcXluU2VTWk9ObVZJWkFnTnhEcTMwejVsU0poSStZOUpybTlydTRR?=
 =?utf-8?B?US9ZazFNYWE2Uk1mQ2FwMTJvUW5PVnFDRmFuMDFXcm5PWi9rQlBpcW12OFI5?=
 =?utf-8?B?Z2VFR3BKYWUrK2RWc1hXd0hiTk9tRWVuZ0NuVjB1WnhzVnRnWWgxUkwzNkNZ?=
 =?utf-8?B?ZVlxdnJ2R2J0TVJQVG5DYnpxUjgvZHd0TW1LNHlHQUp6VG9Ka1daSERpd2Zz?=
 =?utf-8?B?QmNrdmdWREFOaFVpVnpObzY5cTEvTGdUU1RHV1lnalNSVkhlS3M1RHduS0VI?=
 =?utf-8?B?TEw0c1VPUG5Fc1pKbTFrcllxVkgzRFpRc3FVOFUxNGZBVm0xYS9malVReDZ1?=
 =?utf-8?B?Sk5Ia3BqZkV0NDFMYnNzUEFDU3VSVXptdjZRK2phUVI5VVVIN3V2MTloOXJn?=
 =?utf-8?B?NkdwOXYwMlFOMVlaeitMbXpGWGgxYXM5WXpISlV0OVdjMmxhS2ZnekR0Q2Iw?=
 =?utf-8?B?eWJlQmhSK2hkM1NEWFpsL1pmdDNlVG5VM3VndjVpL3lnRTZ1ZFVjdlZwaEZq?=
 =?utf-8?B?RzNLMDFpZjhqL0NVWmFuVEk5RW9DRnoweGxNcXkyb0hZYVR4blc5a3hWVnFW?=
 =?utf-8?B?TnFVbVBraHFZU3hkWGVtWkdqNnRCeU53TkFEd1hRZUpPOWQ2QnYrcGU1VVIy?=
 =?utf-8?B?Sk1OcTdLWHVXK1pzUG9SdkpXbEkzREdsTEk1UWRuMEEwdmNnM2pRSVZkVFg5?=
 =?utf-8?B?bERMVHQxanE5d0Ywei9YREFEaHpXdW9ETHliWm95alFPNktKUC9nWXd0WmIr?=
 =?utf-8?B?ejNtTmI5V0djT1RQZTJneUptRUtNeEhDSGUwVTd2R0xWNjFKZTU0SVBMNmZZ?=
 =?utf-8?B?MGJzeU5JU2lOVXhJSE9RU3Zlc1JRQjRiTjRUd2FkNVlBazExVENrZjJJclBI?=
 =?utf-8?B?Zm8xTk45dGIzTHR4UWFZM2FoWW5zK2pTZkpLWTlIOTROYTFqOWtJZVVCVEV1?=
 =?utf-8?B?ZUY1Vkh2VjBHNUt2L3R3NDdtRm1oOThPazBiYjR1a1J6YU9mL1ZzNEl6MTRY?=
 =?utf-8?B?Z0t6UHhCUEU5VkcvWkYxdmJETlhab1laM0VsMmJ5TFVXaEhNTVJQelhDbGhM?=
 =?utf-8?B?UFNEMkdCMmFpTGFCY3JPY0w3TG9pU0g4RTlqZ3JDOHQ1a0hTS2hpbHhJeFFo?=
 =?utf-8?B?Vld5UzB6N1BVSmpXaGN6ZWZ2Mmk0d0hwaCtUMUtRcG10bnNpNUExeTdKS2Nn?=
 =?utf-8?B?ZzBuOGF6RC9INjJuM3VHNnd6OFhxWlBvWEZhNlptUkxiZHFFaCtpTFlyQVJ2?=
 =?utf-8?B?SUozZUxvaGJkejYzRTYwNTF5UWtsOUFiWXVaaWM3WFZqMFRYaFN5TEt1bWo3?=
 =?utf-8?B?eUNnbFEwNlBqQ3ZPS25sK1pyUUxMVURTQ2hRd1E2WUF2T3d1M1UxL2hNTWdk?=
 =?utf-8?B?eS9QYlZRMWdtcGU4UzdMZExaSnhIMWxySXpCakNmM2F6VHhldUY1UlVlcG8y?=
 =?utf-8?B?NnhqR0x0QnBGNkNVdWdrS0VhNVgyMCtUR3hRNTdha2ZZb3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1FSU296UjdtSENIL1lKcjZDOC9tWW5XMmpXMzFSMHQ3alFjc2FrSU9FMkdw?=
 =?utf-8?B?Rlpia2l0aGJZNEhmc2VoaFpnam9ydUcvU0xDVlNxbDlqTkF6QytWNXNQWE50?=
 =?utf-8?B?M2x2MWdYVkJlaTlLdXhKOUJpOEVza1dFUmlKdDVNd1d6RjVTdzJ6VnJ4SG11?=
 =?utf-8?B?NnRCczFiM0tFdzNXWWFielpMRjlmaGJhZkIxekRyb05HTEFlNHd0OGFIRVZq?=
 =?utf-8?B?WVk3Y2I1MEZJRldjZ2RxTEZMOGtnZFluZHFjbThoM05VdVl5NHlUZmZ0REF1?=
 =?utf-8?B?anBVSUN1cVBwMkc5eThLZFBLZnk5L1pMdmxDaUozaVRidFdZY3h0bUgreUE3?=
 =?utf-8?B?a3pXUktsM2RHU1MyVVRxS0h6ZDVEUEtVOWg5anBOM2J3dW43aExtRFNQUzhj?=
 =?utf-8?B?NER6U0lzQ2hBQ0ZaVHB5TUVnTnBZWGhQZkVjRThYenRteU5pQTlEbXUwaTJF?=
 =?utf-8?B?dFlpYTZmVjQ4bWwvRUsrVVRLYndva1VqejNiMlREanhmQ25pYnR1dmViYzRu?=
 =?utf-8?B?OFNDU3l0QjhDdVEvUDcxaGFOR0k4dUdEeEljaHo4UlY1cTBDbHJlUnAzVmtz?=
 =?utf-8?B?OGg0eFZLVzZyYlNwS1U3a3FEbVdDcE1XNWdNSVFQaE1IYVZ4Uk1rZm5MaGlw?=
 =?utf-8?B?NnpEOWtJcVdYcHBUQVhsVmFsWTFlajNzdFo2NkRjWlRmOElmR1R6NGhaWVNk?=
 =?utf-8?B?YVo5WTlvNjY3cHNVcEFKUnpjUUdNckFmZkY1OVVic0ZZeTlXaGJTQzErZ3dX?=
 =?utf-8?B?WVpGdE5raGVhQVFDWklyWWdDaXk5QWlSN25yNnlySjY0S2hocGVrU1Y3NWhZ?=
 =?utf-8?B?c0VBNnJIcGQyaXRzeGhYaDhIelhWb1FWTkxHNkVKUDJwTjZiVlRWUS9tM0xh?=
 =?utf-8?B?L3ZLY3l6akJTbTJPSTU0U1hxemtwSFV5NHhXOGpJZDJsOVlYeHMrNDBZRzA1?=
 =?utf-8?B?djlSQk1QVXFtbENQQkZGbU43MnFYNnM2Ukh0MjU0MFQwNFcvM0RmNStZZVln?=
 =?utf-8?B?VjcrS05vcGZoY3NkanJMWXNJWjJUeGV4eDkyYlpST2kzaTVjSWtDWXJ2MGlT?=
 =?utf-8?B?OXZPUlVXeERaMm9pTGEvS2wzZCtuRks0aEI0dk9qaDdZSkhrdHd0ODBZV2lV?=
 =?utf-8?B?SUFoQ1RJaTlrSTBUTGVxbkpPZFU1ZlI4TTdFaFJBVG5LbC9WVjNkRE5OV1Fz?=
 =?utf-8?B?VTIzUDluVjFDa3FCRU9qWkdiSzlVUTNrK0w0SWpiQ0lqaHNKZ3p5d21zam1l?=
 =?utf-8?B?WEFlZmpqZlF2S3ZvOTNWQlVrb0ZNekd1M09qZ1lPOVNoRkVBeXlxRW1TenlC?=
 =?utf-8?B?UndIeTRwZDVpZ2NEbnJKc2FlbjVxYlFmNmxBSjlNTXo4TGpQdHNMOVZoNVJJ?=
 =?utf-8?B?ZGxMNjdSQ1Zra3BkcXdSTjJXN2N2TnZtOGp2WnNSbnpZb1BCTVIwT296Q1g5?=
 =?utf-8?B?aVVvVnZWU2tGZlFESVl1RzFwNE1oRE9LdUZ3V1hRVTVwK3FlQ0xITDViVW5S?=
 =?utf-8?B?ZGVpWnBwWU9Mb3hhbnRIUzV2c0Q2UThIZDl6WjF3MHA1dVRSUXJYYzE3Qmxm?=
 =?utf-8?B?R0NxQ3VqV0U1Szh3WWVJaElsTENvV2pKekVRbU1PTFpYSHNBTkd4OWN0UTZ6?=
 =?utf-8?B?UU1ENUNxaWc5VXlMR0xickhXS1pmOE5CWDF5Y0NxeVBoenlraDVQbzVRTG5h?=
 =?utf-8?B?K2VBVnUwanVXNHRKQjZIVXNQVFNHVUczRnVZL3AwT2VjMndqTHI3NFdocDRT?=
 =?utf-8?B?ank0N0VGM3l6dmF3TVBONnczSHE5TEdML2JuZHZFY1U2UHhlVHQwS3FkRFNv?=
 =?utf-8?B?QTdlc3dNdHM5L1F0Zlcvc0daZllhLzlGRWRKT1ZCTHl1OCtKZC9vUUhTelZU?=
 =?utf-8?B?c3F1ckIyTlI3Q2tlVTdQQ3hoa0E4N3lOeFAzbFp4bitBcVcvbllORHJBd2hv?=
 =?utf-8?B?M01KWW9kc3l1dXVhRUJqVEhpMVQwL3VhbEVWRElqN3ZSL2hweTk3ckJmcFZi?=
 =?utf-8?B?YjI1VkVEblJYUVdUejUyTzJaTXEySWhoalBibWJtVHlReitqWlEva0VSS2Qv?=
 =?utf-8?B?QURNL1VsUjZ4ZkVrKy9RbjgvaERqRHo4MlJzNnluZVkrd0tpbUl6K29udThX?=
 =?utf-8?B?dWVpSHJZSjZqOEE5MGhPUUNWUTkwc1RudFJCQU8ySkJnUXQ4bytBNlY0WDkv?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ba30112-cb40-43ac-8d2b-08ddcaa157c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 11:00:47.1434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dVpCLWOa/boQjVyqpLBukWarXU51D6JVD5VerCcBfGdMI4MrJVOrXJzxgud8rMU+ItF3xM9TSmhNH67ENBCKyGjrDW22Yvk1BBlKx4tPk2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9394
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


On 7/22/2025 11:26 AM, Suraj Kandpal wrote:
> We need override certain link rates in favour of the next available
> higher link rate. The Link rates that need to be overridden are
> indicated by a mask in VBT. To make sure these modes are skipped we
> don't add them in them in the sink rates array.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 56 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 +
>   drivers/gpu/drm/i915/display/intel_dp.c   | 11 +++--
>   3 files changed, 66 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8337ebe0f2c8..e68f71c0575a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2480,6 +2480,53 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>   	}
>   }
>   
> +static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)
> +{
> +	u32 val;
> +
> +	switch (rate) {
> +	default:
> +	case 2000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_20;
> +		break;
> +	case 1350000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_13_5;
> +		break;
> +	case 1000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_10;
> +		break;
> +	case 810000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_8_1;
> +		break;
> +	case 675000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_6_75;
> +		break;
> +	case 540000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_5_4;
> +		break;
> +	case 432000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_4_32;
> +		break;
> +	case 324000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_3_24;
> +		break;
> +	case 270000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_7;
> +		break;
> +	case 243000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_43;
> +		break;
> +	case 216000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_16;
> +		break;
> +	case 162000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_1_62;
> +		break;
> +	}
> +
> +	return edp_data_override_mask & val;
> +}
> +
>   int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 216)
> @@ -2499,6 +2546,15 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   	return devdata->child.dp_max_lane_count + 1;
>   }
>   
> +bool
> +intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate)
> +{
> +	if (!devdata || devdata->display->vbt.version < 263)
> +		return false;
> +
> +	return parse_bdb_263_edp_data_override(devdata->child.edp_data_override, rate);
> +}
> +

I think this should be a separate patch or perhaps part of previous 
patch where we define the bits.


>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   				 enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 6cd7a011b8c4..b554fff96082 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
>   					      const struct intel_bios_encoder_data *devdata));
>   
>   void intel_bios_debugfs_register(struct intel_display *display);
> +bool
> +intel_bios_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate);
>   
>   #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6d4e0fa0c054..0a227822b46a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4275,12 +4275,13 @@ static void
>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>   
>   	intel_dp->num_sink_rates = 0;
>   
>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>   		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
> -		int i;
> +		int i, j = 0;

lets use count /count_rates here? i, j mostly are used for loop index.

This will make it clear that purpose is counting, and not iterating.


>   
>   		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
>   				 sink_rates, sizeof(sink_rates));
> @@ -4308,9 +4309,13 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>   			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>   				break;
>   
> -			intel_dp->sink_rates[i] = rate;
> +			if (intel_bios_edp_data_override(encoder->devdata, rate))
> +				continue;
> +
> +			intel_dp->sink_rates[j] = rate;
> +			j++;

Then this can simply be intel_dp->sink_rate[count++] = rate;


>   		}
> -		intel_dp->num_sink_rates = i;
> +		intel_dp->num_sink_rates = j;

And intel_dp->num_sink_rates= count;


>   	}

For eDP < 1.4 that do not have SUPPORTED_LINK_RATES and use 
MAX_LINK_RATE , for them intel_dp_set_sink_rates() sets the 
intel_dp->sink_rates.

So need to have the override logic there also. Or perhaps we can do the 
check for override at the end after sink_rates are already sent.


Regards,

Ankit

>   
>   	/*
