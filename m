Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJy/Eb0mFWpcTAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 06:51:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A0F5D0B40
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 06:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280D210E46D;
	Tue, 26 May 2026 04:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lc91Pwf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBFFE10E064;
 Tue, 26 May 2026 04:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779771063; x=1811307063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VwlZj/obSuXi9XFS9DehJYB66ixUmKmF2Xh8t3z1azU=;
 b=lc91Pwf3gmi05Krj7U7MvaDrmYL9JKf7PRTJ66e6AVwGgR486oiPpuaS
 PnYHflbVNcqDTqa+AlXJXk+pIT+aDbTEDOIALfBr0HotK85CGVlI55lEg
 rTe1GSEdRARaAo+tiwnUsf1MfD7qoLX5UMOvxVDndbr/5229UQgVqCF9b
 a/xlehArtamsYI69EuxHFyLEwrNicbvMTn5fUqNO3GhCZSej49OTUjAJY
 201sbuTOzAbxat3+/o/jZ/OcYKrUL6689rHFHNi4ZM3q0boQnCQrDGlAP
 tpDcptINvc1DjU2Wi/Ykn4pJlKAj4kyIAD8YKcqe0loWxB6ag7uvORT7M Q==;
X-CSE-ConnectionGUID: xG2Xu2HrQ7Oncj/74Wjp0w==
X-CSE-MsgGUID: 7tjKFgO9RGGRbnmm4H+eSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="90877283"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="90877283"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 21:51:02 -0700
X-CSE-ConnectionGUID: wqza3E0eRoWfSIqW2iF+aQ==
X-CSE-MsgGUID: LvxdsODYRn26tzRInZfLog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="241647877"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 21:51:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 21:51:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 21:51:02 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 21:51:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y6ZB9oXNPa7rwA/4A5P5FJnE8vRO1JUItrfd0ywFL0cJH0Z3YX0R3OpqDQcA1cbIevAB9zahJfPOdUaMH5/1MElzZ+5SDi6YrD8VNzoJeysX0a9tYmPbroljx+TYPGqLtxGiH3k+g3FVhwnxE22rq5nzmWad9MmgsU6CNJiwNWF8mQ8hE+LubPUYb93Nf/l9l7vQ1TV55jCXEg9tnaWqqfdjSIVliWblCmt6CjNfAPGxsUM5IK7uzdqDrB+rSwY2iBdDMdE1/7qmTME0C0LWA1NcFd6UkB3OGV6ghVrEVt7+comNo1L9QgJ9nYlkZ2pDJn41j1E+dOAQRKXsZUtvmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3vGb7kIFSVjtMX5SUTvzrSahQ4Y5LWh0+1I7+OjLanQ=;
 b=Th37m7m9yKL7Ek4TsfJOjWgU1CAvkUAYKdC2R36qGYnatOO3unGY6ZKU5Ym/CMkI0bg14KUNVd1IeLU2Thu72No808bDU/UIFeb6o2GVFdbmWMhz+gAnqinJrZCH8rOmyje9l1mdso4Kjw1i1mJXrDXOg8WJHst5Sk4tTqO1bl4A3wDAOMhZzuwUm69itn33f3C87DCtrBFrv+02mXwt0v/ZrvNtCFsp13EU/C5D4Tm3lwwulUZlzjd1v/zyY/bpa7Aok0CSCZe14HeerWgAmpwTpXGtKqw+6kzJPxK9Hha+lZTOc9wauD2qq3rpBVG4ciqfeHaCEst9D0FiZQHZaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY5PR11MB6512.namprd11.prod.outlook.com (2603:10b6:930:40::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 04:50:59 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0048.016; Tue, 26 May 2026
 04:50:59 +0000
Message-ID: <e645a8cf-45a2-423c-81c5-cdb9f6c57faf@intel.com>
Date: Tue, 26 May 2026 10:20:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/managed: fix drmm_add_action() kernel-doc
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
 <20260522135520.1862848-3-michal.grzelak@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260522135520.1862848-3-michal.grzelak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::18) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY5PR11MB6512:EE_
X-MS-Office365-Filtering-Correlation-Id: 0178a1f2-161f-4a0f-2b80-08debae2611c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: LDmvBiLzUiynSDWUeUxOA/1KsKo08KP2jMafbYzcRRKXokG9eEWh5qNOwumGjUA8f9fSOAMU1x1ZclY4s5fL/nIHjr+NO7teEr7xEde1ER3FZJAn1q2TvUU9KgDPMXUxb6ftxfFdFDc90JVeF8dnXbLCjfgZTzEbOFf20+xdhYykz0Iwhpt6iaYv51ttzmEdOhpSSge/cXJVxY4Wasluqsr7UAGBn24XEJMl5ubVu0xO5lUqDV3pyyjR2RHI49TjUW9xUpFZKRtdeeY3LY6jcEjXRhwme6c8bBVIlPVOeO65R26E7GkuoVhNc4fGpxL+5TDI50EtnwEuBGux8eRqXAiI0F2Zz/w7dRvhP0NnZ5gIEoaIHtWD1Pg0K4f/DYQALKaVYZZCrW69VCP9j6y823bG/hKI/AQJrtuxKOZ1X14OaYz0X3bTh5K6Kibiecu2uRbVhpKo4rLzL0KiEwmX/r3T4SsQtJ7gfh5uohSfPhHunkQ11q2f415Itmaa3zUtTnV3M2Nr+wLx+qRI29TnJqkwIXkOeJPNRAZw/gpdrBgcvkhJGYE8DKN5PkjfmqgCU+oiVPp/+EeKsXeWCE0TmK6JWk8wgC7fKfrmyLVqqxyviKXDJbzaQ7O74CEf/BR7eaqV73UkSusVZ701AqypWT0a7SoIMfUJP7Y1Ijl29EsEqAeiPE0GeiBAae+btmQ7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tm5LbnRNU1JvS3p3c0piQkpEUE5jeXVHOUFVR2xYY1l6TnJxVWRKVXN1a2hD?=
 =?utf-8?B?YURmaTZCOXdUT0hzeVN6RWFLaDcyTWN2OWZQOWlpd3BDUUpieWZSYWZUU2ZO?=
 =?utf-8?B?TFJ6bzEyWEpnd0phcHBYMFdCdDNDNXRYSEJmS0lzTUdsM3g0NVljY21tcTEy?=
 =?utf-8?B?Z2tJQ3I5VnZYWk5Pc1BwV0xSNDg4eVQ2S3FDS2JsaHppb0dpL3crNjhYU1RM?=
 =?utf-8?B?ZXRmV2ZoRmtsRmVnMjVuWjBhVnBWUnlkVm9Odi8xaXdaVDgyVGxHUjNGZTNy?=
 =?utf-8?B?WFVWSVZMMEExUWovSTh0TXVWaFlQUGZFTUhyUHA1aGFTdko0Wk82Ynkyc0VP?=
 =?utf-8?B?Z044cEpkWHRKRlV1Y01kNCszVGcydDBzUExPNTAzaHZ3allhaEd3VnRkVWtl?=
 =?utf-8?B?NGZSc1dyWHcyblZXRXhtNE1QOFhxQ3I0UUVIYW93bjRhUzZZMkZhbm1ScW55?=
 =?utf-8?B?aCtiMk1vMXFOd1VYS204RStXNDJnVmw2eGZXNG82ODN4ZTdKV1JLL1FpeUhk?=
 =?utf-8?B?RGpYenB5QjcxOVdUOG5wVGRKWFJIOUo0b1phcmkvVE9lQ3V5Zk5aa0I3cEx6?=
 =?utf-8?B?eGJ4MnBqcXh0MldwbnJtVGo0SHlFa3RmSGpFNFhVdmdsOUFMYytzMlJYTGpT?=
 =?utf-8?B?R1ZkS2lhcmszNUdvdzU4LzhPZFQ2OGozNlhxSW9JM3NOQXZldW5CWEYwR0ty?=
 =?utf-8?B?WXZnczhXbFJaaTdhaklLK3JaYSsySTNlajgvbnFiK2FDb284aGdlSng4STJC?=
 =?utf-8?B?REJIeWVWRkFIZEk5TkZqOGJtVk1WeGhSOWxiei8wd1BKTm1XUGRrdnJwdDlv?=
 =?utf-8?B?NkJrd2E0OER1N2VwR0hkd25JbFZibG1ZK0d1aDQwb0FRTndlQllLT1gwS0N6?=
 =?utf-8?B?M1phZ3A4TmcyQXQrY09aUXNkV284SnB3ODhGY1ozNjdNbi83MnVFSWNzOS9j?=
 =?utf-8?B?TDAzdFhXUkw3UU5leUhwbGx5N0FqeEM0L1ZUYWlsb3pnTjBFNjEzNWdHYWlI?=
 =?utf-8?B?ZnMyVlBNcDgzNTRvK2JNa3JpTS9RcFlNcnI1TUFFY0tlWm5TeC84bUMzV0l1?=
 =?utf-8?B?OFA5Yk8zR2wreXM1OVpyU3JqR1ZVZlc0VDBTQUFjNTNjem5EQVFNRFpmZFJz?=
 =?utf-8?B?WjgzcVc0d1RESzVZTitaWGFCdEFPRFBqR0hUQVpkdmc3Rlh4ZE5ENGFKU1M1?=
 =?utf-8?B?aXVuNW53dG42SnQ5TXRlSDk3NEowVEdaNnBFUVk3OFZvdjZEWEJhUGFXc0Vj?=
 =?utf-8?B?c0dORlp6QnJMUnUzQVFEaUJwd1VmSTc0STlTVFZFU3p3WWcrb1RKVE5naGN5?=
 =?utf-8?B?R1V1TGMycVN0WTNvbEE1ajlqQjh1QTZBcHQ0QkRJay9mL1Nta3N2L0EvUFhC?=
 =?utf-8?B?VkhGSnNpcTcrZUJqN0Y4TlM0TGl5bklXZXljaDRQcFkyTjVPV09vRFhyQmdG?=
 =?utf-8?B?UXVjbzhiN0lGZUpjTVZSS1ZLMURneHYxNWgvOW9OMmM0dnVGYVVkUG50a1Vw?=
 =?utf-8?B?bHFCYkJZVlZFakxSQ29rVHJrcm9qQ1lZNTlaSWJqTTNUdXJENVF4N2tkOEVU?=
 =?utf-8?B?enByRVFobTdXRVI3cUs4SWROb0lLTHpvbkdwNTdjWkthR1VsKzhtK21NS1Bl?=
 =?utf-8?B?bDBsZDJYejMyZ0FiMjVKNFQ5UFFqN21xR1V5OUVGclFxbW9YQ2FnRFVteHRW?=
 =?utf-8?B?VTFVaWtBR0JBdWNZNnNqV1hoOUJRLytZaDJMSDBvZ1pISkxaQjJBNXZjOGsz?=
 =?utf-8?B?REV0d0FQVlBJV2Z6dFhrV3NlSjdYTUdzOUQvdkVrNzdPRjhrdHFwUml0OUd1?=
 =?utf-8?B?bHp3eHJzMUZNUERoZnBnaVo0TmpUTnFueFpjbkljQythdzNQZnZWNFYyanQv?=
 =?utf-8?B?TGxaV0dFdzMyZ3FZQjNtZklyb3lkdVFUN2cwekIzSVUxOXlMaXVXa2JRQzdw?=
 =?utf-8?B?aW14R0l3TkFmdzdXc256UHVlZCtwYkhOU0ltbDdvcld3d294bnp1WlBJOUdK?=
 =?utf-8?B?KzZLUWF5TDAvZTdDcDlTUmt1bkhlY3FReVZzTHBjQUJDOUY3RUV4b1lWa2FB?=
 =?utf-8?B?YmFJaFFrVDduQkNZODEzSWZpdVZiV3hNWk1OYWVIQ1JwUG1aYVJ5d2JTTVBS?=
 =?utf-8?B?QTArUWV1bTZqSnFJcGs2WHFvRytBTDV3TnJ0ZzIwT0FkcGs0bzRjWS9vdWMv?=
 =?utf-8?B?enNGMzlEOTd1M2pPZmVBYnFHNmptdzlYNGF6ejRzZUJWK1VXRlp1RUI1T1dU?=
 =?utf-8?B?OEVzV2IvNzd5dFRJemlkTFdUeERyeTZvV3hnRTFNVU1aL2VPYWZyaUE4VlFj?=
 =?utf-8?B?UlRpSDZzcy9DbXdhTEJ4ZSs2Yk9PZjlBYWl0WjAwVEhIVzdUMHRJS0tFQ093?=
 =?utf-8?Q?DogOQTQIx4EB3xDw=3D?=
X-Exchange-RoutingPolicyChecked: YSX7r0lFOWme0ufA4qV3H/GPyo+RaXH7Sult1dfnVMvwRSWDnTDVNeLZThDVKlsBQgtjjjdKhtMvIImwdAt5mrUuy3NJg9AQNoKZGbcFf8R2XxvR2cJHp1fFTA6jaGTuX+MwkhkjfgBR4lDyJrRjN3sT1yGDKDcEA09x7ihyyewNKeX0Nxl/nqQQQAKOnWqJQE8CqwyGLFnFkyvZkeOymsAVK/+AdOVye29WMMxwyQXi9DGevszL88hGs5CLY1asN3pMnDdGxWwuuER5YWtUNMK1RxjOLMqUDwA7mvAGI0kzTmNNKC0U4VprBWNCO1xobgaJ8Wb70wBNytYkbkMJhA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0178a1f2-161f-4a0f-2b80-08debae2611c
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2026 04:50:59.1294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MTSnSb0sH832kuaK8TBEl7EfNrEBCL6e1wpGkywN6X4oxqJc7rvW0JDYerc8nCJNk40U8/muf95wTeFzuNZ77Pp+EEUW0vPBSu5fwtO0oqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6512
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74A0F5D0B40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/22/2026 7:25 PM, Michał Grzelak wrote:
> Kernel-doc of drmm_add_action() references @releases which is not
> on argument list. Swap '@' between 'releases' and 'action' words to fix
> the documentation.
> 

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>   include/drm/drm_managed.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
> index 72bfac002c06..72d0d68be226 100644
> --- a/include/drm/drm_managed.h
> +++ b/include/drm/drm_managed.h
> @@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
>    * @action: function which should be called when @dev is released
>    * @data: opaque pointer, passed to @action
>    *
> - * This function adds the @release action with optional parameter @data to the
> + * This function adds the release @action with optional parameter @data to the
>    * list of cleanup actions for @dev. The cleanup actions will be run in reverse
>    * order in the final drm_dev_put() call for @dev.
>    */

