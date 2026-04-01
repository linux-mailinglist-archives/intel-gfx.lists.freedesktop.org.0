Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMErGe4WzWmMZwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:00:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FB37ADCD
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B21E10ED8E;
	Wed,  1 Apr 2026 13:00:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJE/UzrT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6396F10F0BC;
 Wed,  1 Apr 2026 13:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775048427; x=1806584427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jgUj7SPr4HZOHhaoa9D5GbYJJ7CSw/D/GJxGcxJJY/Y=;
 b=YJE/UzrTFkyaktpoSNFeYluXNu8sD0lNwJ/Bx/1zWW7PveRCwWkVIpMy
 4pSSW3n6uA451t4JIevHZCjvBFZ2ZT2X3sI9bEAfpxibrijfA/Q0izyx8
 bQ89GQrAHGbbP/se6GMf9G8r6aGR3NQjz11bUg7gCAWx6m8GTJzFCTpwM
 Ztc/isSRWv4exFrPse1K/+ltO/LNYHDMbi9LkzyLTNXMlHQ917+KQw8UT
 ERCmSVKR+RcU+DsR4OTzqbZAsZ4NL3KrOVgvrog/Rl7j1eUPJdC7TbgOx
 K7TzyCLzeDPNhu2RoH0kTXpdOWe6lL6NUUPrQXK8xv8JNs64mVuJF3WRB g==;
X-CSE-ConnectionGUID: fxaXjP5BQlCYEQavAa4aKw==
X-CSE-MsgGUID: C+dEC0mPRHCYvS2nQNoh0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76097978"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76097978"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:00:26 -0700
X-CSE-ConnectionGUID: o13NixDwRheLuRa2wWVISg==
X-CSE-MsgGUID: D9QIPj65Ty2mUvpKhPsALA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="231465144"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:00:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 06:00:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 06:00:25 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 06:00:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nc1mt23XuWjWolF52vHntfsZdep9z1tYwBM4mDlhfwcuTnW4soiqojLLfL/K9kCzRA3gcUElBjx4hllFaPlpaOLPdThBRMUVEUUGoISnoR7yWqsZbC1GaR60XVSh5arKdyvb0U4ZVKSOK19kUfwxFU3t3n+Sz3QCV6v5S/GhIjqKbm10FudXJvxblPfJ4VqC2+JhgMiiOq/USZbFGvBU+2vkbtl8NGZ73+/aOUv5b7vEu4CMc0rWr0OFgvS7B23f4J1ojvnVtpdPCN2Fs31V3kbD9dbI7OzMFjT07Uc2kGr/KviW3Kx2Rp8k6aGsv1zmkEpZUdETSGi1MfLMkxVnBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kH2XAZUwjPxR9L31Xm2E7eoBUCdi7kJH4Tixo+uS+Kw=;
 b=Q6xGlczC4bc+RXuHCwQJIyb5wDSDEcrgzEH8hkiTxhWBg61Ig5xU0WjijFDuRdthvigoR82Upuk8pWodMb60oFtExxZJ1r2GpVlVmFjCyEx5Nzpzq79m+lP8Pkh4IBhAK1JSHScJ3c/NT4zPVaGTDZ3D+xdFylk3C/oeheheRcxlK8gqq17brotSkJwYJipefnQJ++QfyxdSnrYiL4e4zM/5GEuVSVyY+cyClq1Wc7VC72Yl7CRGf6TtbxzEfBnTH4HlGegKZEkupyYm8F0aVe4fWj8M+3a85G7kjegfzuh/6/cDTIFmQktoFIfcH+gJ7CmO61d35GqW7xERn3P+AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF681F257FD.namprd11.prod.outlook.com (2603:10b6:518:1::d29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 13:00:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 13:00:22 +0000
Message-ID: <45c89720-1214-40c4-a7f3-7f36376cfb04@intel.com>
Date: Wed, 1 Apr 2026 18:30:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
 <IA0PR11MB7307698A73C8C19F2A8C275CBA50A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA0PR11MB7307698A73C8C19F2A8C275CBA50A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF681F257FD:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c8d096f-fc54-46f2-6989-08de8feea21a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: VETEouqQSW15eAVk6WCR5wr+AzWfHmuMXiUc3/RFeexlbxMyVkyUB2KYcNYsPK2bdAXXwKS7Bx8XX/b97Vr4fM2oV6U6iHhXkBb6O0I6niQ0vU6c1AcCtom9N3xT/zkGuyWJtRKksmoEZkcuwjfVbcuPcJgRD45qfada2BHU8FfNIhpbtoO/qSy6WdhjkmxfDtmp5qolmcgLHaYvMrm3iXeJNuK3iFS3kEh7QIlyc0Oefa6+xw3iSM9IQoiN96kVcWwuDIEgAhf3q2vMChFk0aTvaavlsXLxUkSllW9plBIM8o6roquPXYOX1CVjAmdkpiOl6qWVFbHEkmuSAbgCCQXFmUkgFEzeph7OOvxEQOQvvak26zX3MUwsUk6YcH1x/F5utKLmjsuzfWf44Hq5xlBspLUHX3Wjr4RNj9sYP0aLZ3WfIr2nfM+67cKiwHDUUfzAsGkwTxu1AwT79GRYgHaHSXbsMbKSzX6MbmSDiIbn8hkjxvlSI8V55w7WCW5TSMTInMTUTsmIbZI+ZrzLBRi4bGd37QRPHH8xt23BkxjBowwW9M8aD8AXE7OaoXMSVzUP1PovHSg26MxZbR1adC/21csQTVdDob++JdVr1KzHM1EujYUP4nYYBcTQYaKmrOCdiG4QEUcpX5Nu53LDJk6tfgdamt0WCUML0K8ioR3GYI+IJG/fS+LPfvycLWNm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHhwK1VHS2kxMTRhZktScU1FTzJZejRWNVZ4alVnZ28rdGZReE5kK2NVSzhS?=
 =?utf-8?B?aG1XSXMxb216a1RadnM0VkJyN0JCTHI4YldWalBPMVZzUGo5SGhQTXpjS3ND?=
 =?utf-8?B?VlV2MTVta1VneUlVWFRGcGg4eWVoYTl4WWpyVEpndnI4YkFEWnJEVGd3V1E2?=
 =?utf-8?B?NDBOVzZrSkI4b0FKWHowKzArUmlveTV1WXM3YjhjbkE0YUVkUmxZL3Z5VjJ6?=
 =?utf-8?B?NEVZL1lpZDFwZEdMNVJNU3c0cDBvOTdQcENnbU9JdDZoR044dXd4MUVUZXZR?=
 =?utf-8?B?Rytld1BkZUx3UWU3VWlEUU53M2ZBLythM29nRGprdEpIaWl1R3ExclNJd0tq?=
 =?utf-8?B?TzlwK3hUN0cyODdFT090OUt6b1crOW9FS0NRTXp6dlV6MGMwbkYwNGlRQW5s?=
 =?utf-8?B?aTBPNWpUdnZQQ0xLd21ZMFpIc1hMSTRkVVdrNkdQUTEwZStrZWFLbDdkMWFt?=
 =?utf-8?B?WEtuaGNndlpqNTBuUnh2UHdnZkZreU92UE82dFUrSEUrV21NblQxRnBKa2w1?=
 =?utf-8?B?Sm1MMWVldWd3UXJkbm5OZEY3OVFmanJTY3FwUmpCQzlVRWxFekdPOVQ1Wk9v?=
 =?utf-8?B?VUJhT3NaMmE2RFlyVmgva0t3Qm1iUG95ZktoYURmTWdURzBuY3JrVlhTTW5s?=
 =?utf-8?B?Q2pUMmZWclUyUHh4WjNxNS91RkkxbHpJTzhjRUxNZUVyVGJCb3FuRHY4WXlK?=
 =?utf-8?B?RVJxdXIrNmZWek1qdUgxTllOZ0grSzlUVWJhNDhKbk96elpuREtaZm1ZQWF3?=
 =?utf-8?B?L0ppb3RsMk9LZTRwbjRhYnJDS1IyWTQ0YnVuS3doRmEvT3JZdlJGY1FSUTRP?=
 =?utf-8?B?cVVSMG9KRktYQVdvWEhnZXB4NEhtb3hhMTJQUDByL2VDQUVFbGxKR1ZDejdh?=
 =?utf-8?B?S1E5SmRyQzlNQ3EvOVpjTEQ2MXBLT244MERGbXU5cHB5QysyWlpNMFhaUWRP?=
 =?utf-8?B?NmtyNVpNbEIxWUdPV09LRzBwOUxJa2U3aGkyYUZWOVJXOWxZdDZGcTB3R1RZ?=
 =?utf-8?B?V3diUTVFNlJTYy9QTUl1NXdBa3IxaGpCN05XOS9wSWluRExJdWJVUHRwRFJZ?=
 =?utf-8?B?OFJlNjFqeiswRXgwL2ZJZG5TQ1N2L3drSnFMTDc5VnZ6UWxEeHFLNlBvbk1E?=
 =?utf-8?B?S2RGcGpKSmRCa0VUblU5UElVUjlBdVUwMHY2TWF4ZTVZb1VEUUptSGZWZlF6?=
 =?utf-8?B?OGhzV1poTGErTjFxbHFoVmVkVEtjQTNDYjBkSnltNTRtMVZvZHNUdlQ0S0pi?=
 =?utf-8?B?Tmp1Rjg3SmJhaklMcHhKQW1HbU5KemtmcXJjRXZIU0dmLy9LT2VIOUUxS0lk?=
 =?utf-8?B?RkxETU9SOTJXekhHbkZOejd0NXVSa09GUWVXSEVjRVBjS1FOTCt4WHF5M1FC?=
 =?utf-8?B?Z0tJaUhKdUhKeGtHMWhab091VXNDL2pLdGIrVzQ0NW9tTHBEckpSUkN0Y1hz?=
 =?utf-8?B?NUtldDNoNGk1aVhraEpYdWdET291V0dVbktndHRvbk1lbGFad0ZYaVlhOFp1?=
 =?utf-8?B?bUFOU2h5UVBMTUVmeTZURDhqQTFxU201eTl2MXEwU2N6NzlIYUhQUFFMZmI0?=
 =?utf-8?B?d09Jc2dyKzJqNHJyMmpaR1NuUnhvSTdVWWlwWDFaR1Q5QnR2bkgzSFNUMHMz?=
 =?utf-8?B?K0h3SXB2dzFBK1pDbEJiMUw3bUNvTkNQcFEzbFNmSGZSZWNwRmY0eEZBekJU?=
 =?utf-8?B?QkdJMVVGVmZPN2NtbDFZdGtiK3R1czhQN1pjU2RZa1FKR3JWZHcxYU9YWEg0?=
 =?utf-8?B?U3hWVVZtVjhXQ052ZVdIT2pvQ0RnLzZ6VHVsc2xRdmd0ZjdEUzFycUo3UUlX?=
 =?utf-8?B?TnRxaUFibmFyQ0FTSG1Vbk9jMzJjM0o4c2JJZzBPMEpSLzF6eG1odExxN25B?=
 =?utf-8?B?UEYvQTdUQTB5cnFNWjN1T2lqY05yYlc2YTM0eHdSMlYvREhEbXhOZWRPcFgy?=
 =?utf-8?B?KzRScWpVaXJ0UUhkSDcvU3JnSGk2ai9uUkl5azRLajhVK2Fzd2JYdVY5L3pN?=
 =?utf-8?B?WmxTN2N3Nm8wS2VQcTdELzEvL25jbmZGQVhEckxBUzA3SlRjbDlPb09UMGM3?=
 =?utf-8?B?MEJGRjIxQVVaa3B1ZUhFakdBTnhSaTJTS09wMGtNSUYzVE5Zc1VCc3JWWFdG?=
 =?utf-8?B?VHR1blhYbTlUSktuNHE0TTZJY1Z2UEdmc2VlYzA4SXB1dG9TR2piMGoyQ3ht?=
 =?utf-8?B?cFNEQ1JPZE5YQk0wTHdsNitmalFhOGord3cyUFZ2U0lDNkM3R1Z4cnphSExS?=
 =?utf-8?B?NmNaK3FlMTZJK3J5dVZyTjhjcy9UWFVuMHAyMjQ2cjdwVlAxd1NaUzYwVFg3?=
 =?utf-8?B?Tk8vMUVTUWQ3STQzUFNtOHVJRnZ4TlJ2WmpML1BTZE9KbXd0WVNLQzcyMlJJ?=
 =?utf-8?Q?lf43r3IEff+yIX6c=3D?=
X-Exchange-RoutingPolicyChecked: fQnyEkqxU6/J61oxdJq0pTQAOExSjxaMeHUOkybRPU8UvWV5uLIGl29uWyOfY2Ck5Lfg/8c9HYRu6Bqi2Pc7zvrkBia1ZBx1rI6K5mn1M6hHUktwSlidHzcQerR6+vLQoaOdlFGyW6ZbM7qxnFEC9bkIw8gKz5iHg2KpmUXXyy+kSBUtmsuQXupIP+ukRrLFDxK5jzsxSO19iCMNfuEd7FxaqNcVKViBDZtL2AW0tEBF3cradu+vkfoxCStSqzv1tP9mJjhUkLItKQ+o36Gcra2mpojMKEPhTwzsjv9/zJwA3CW5zWfIwWooSfvc6OWxw3PGhJeGdMpn2+O7p0T0Fw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8d096f-fc54-46f2-6989-08de8feea21a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 13:00:22.1157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gl6JxLsGTz1MTiWBK6ipn/AgNyCg549HvbLqgL1M9Cm1mUFsLx2+i5ubCfIc7wn7iT9sVgRqRdOBijDilALEfZ6UIev09yPpTQJbRH7vztE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF681F257FD
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,linux.intel.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3F8FB37ADCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/1/2026 3:11 PM, Murthy, Arun R wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jérôme
>> Tollet
>> Sent: Thursday, January 8, 2026 2:38 PM
>> To: Jani Nikula <jani.nikula@linux.intel.com>; Vivi, Rodrigo
>> <rodrigo.vivi@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
>> TMDS_Scrambler_Status
>>
>> Hello,
>> As per HDMI 2.0 specification, after scrambled video transmission begins,  the
>> source must poll the TMDS_Scrambler_Status bit until it reads 1 or  until a
>> timeout of 200 ms.
>>
>>   Add a polling step after enabling the HDMI port to verify scrambling  status,
>> following the spec requirement.
>>
>>   Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail  to
>> decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
>> fully configured by the sink.
>>
>>   v2:
>>    - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
>>      as per the HDMI spec. (Ankit)
>>
>>   Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
>>   Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
>>   Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-
>> jerome.tollet@gmail.com/
>>   Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
>>   Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>   ---
>>    drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>>    drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
>>    drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>>    3 files changed, 29 insertions(+)
>>
>>   diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>>   index cb91d07cdaa6..c708b713f0e8 100644
>>   --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>   +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>   @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct
>> intel_atomic_state *state,
>>    }
>>
>>    intel_ddi_buf_enable(encoder, buf_ctl);  +  +
>> intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
>>    }
>>
>>    static void intel_ddi_enable(struct intel_atomic_state *state,  diff --git
>> a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>   index 055e68810d0d..958d939ae6ee 100644
>>   --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>   +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>   @@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi
>> *intel_hdmi, struct drm_connector *_
>>    drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
>>    }
>>
>>   +/*
>>   + * As Per HDMI 2.0 spec: after scrambled video transmission begins,  + * poll
>> TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
>>   + */
> Can you point out to the section in the spec?

HDMI Specification 2.0

Section 6.1.3 Control

Subsection 6.1.3.1 Scrambling Control

Mentions about the polling for TMDS_Scrambler_bit for 200msec.


Regards,

Ankit

>
> Apart from that, patch looks good to be as this polling will be done only if scrambling is enabled and this is mandated in the HDMI spec.
>
> Thanks and Regards,
> Arun R Murthy
> -------------------
>
>>   +void
>>   +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state
>> *crtc_state,
>>   +       struct drm_connector *_connector)
>>   +{
>>   + struct intel_connector *connector = to_intel_connector(_connector);  + struct
>> intel_display *display = to_intel_display(crtc_state);  + bool scrambling_enabled
>> = false;  + int ret;  +  + if (!crtc_state->hdmi_scrambling)  + return;  +  + /* Poll
>> for a max of 200 msec as per HDMI spec */  + ret =
>> poll_timeout_us(scrambling_enabled =
>> drm_scdc_get_scrambling_status(&connector->base),
>>   +       scrambling_enabled, 1000, 200 * 1000, false);
>>   + if (ret)
>>   + drm_dbg_kms(display->drm,
>>   +     "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
>>   +     connector->base.base.id, connector->base.name);
>>   +}
>>   +
>>    /*
>>     * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ratio
>> setup
>>     * @encoder: intel_encoder
>>   diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> b/drivers/gpu/drm/i915/display/intel_hdmi.h
>>   index be2fad57e4ad..0fa3661568e8 100644
>>   --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>>   +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>>   @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>>    const struct intel_crtc_state *crtc_state,
>>    unsigned int type,
>>    void *frame, ssize_t len);
>>   +void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state
>> *crtc_state,
>>   +    struct drm_connector *_connector);
>>
>>    #endif /* __INTEL_HDMI_H__ */
>>   --
>>   2.45.2
