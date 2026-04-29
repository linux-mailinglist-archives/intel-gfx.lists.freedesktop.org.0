Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBdhE54H8mkimwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 15:29:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB5494D48
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 15:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE0510E3D9;
	Wed, 29 Apr 2026 13:28:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXEkKF74";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F354410E3D9;
 Wed, 29 Apr 2026 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777469334; x=1809005334;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qa1nLYRhWMQGvIKowAhZZa6TUibbJkJHYBG3da7OlQg=;
 b=lXEkKF74I3u2mFXIo49lkZfAvbyWnUdVUNf9yHl7+yfkyA/GEdnj5XgK
 qOJ7QpkEeImDqz5beIPjw+MRlBG58z8DUv84Bch41e8kt2uWLwYhDzhNx
 GfZrqg2nbSZr3IOSGCXKr3RLfgwv0Yuxvjt7eWn1ogZv7hPEiHSlujwN8
 4+/9G+zcAPSeRTOC6uk6O/A2jkWVkMTygnCq9cRvnVNy183hX5YzOzugo
 HodedBkTF+XIPowcH5FbJ+i6cZmBMyG3b0XTTDbhmkSJHO9vt3JI4XOIX
 wnOqa25+KIFhxx0l7owjSw3G+E8s/pGAJhfT74hW1GNXkl/Vxz8rplZB6 A==;
X-CSE-ConnectionGUID: KRI1aAc4R9qOT/WqTN5pig==
X-CSE-MsgGUID: deF+JwLsQeuPsbT75KC+iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78412158"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78412158"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:28:53 -0700
X-CSE-ConnectionGUID: zAwpDJfETvqvbSpZMGa8cQ==
X-CSE-MsgGUID: 6WXsg4MiRcuabpzM74RUEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="257594664"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:28:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:28:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 06:28:53 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:28:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RkluqnqR9zRgfhOPdymJ+GpwR6k4zohjaF765VMqxAiEUs+mERpFXUF35EeogPHqGsomrPQHfeakQVCEtG6z27SXAPWfkntHCot5N1EgBVyUjn3CQ8gz21wbePsT1Fye/mMOumyrDgm/gW6EuuqBI9eICU2qKG11fhSnCFrYrv97f7sDzQmAb8qTifEuDqB2JGppHARGGcuiRUR5YSDB57HO/xRobaxGg2x+mSFh1rD+qyyAyxQw96+a1o+1H236uS3hFd4D4n3SGIgiVFlWcJx+ekX9NmTYrMS/Xc6peuo/xYb3redxA9A/jAXQY5Or+FnDQjsBX5klmDm3d6nLBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p45ZJt00FNBuxPaSMUBqjxSddyL+06DGHUaYnRtQOGc=;
 b=XEUH775XepbREZYp3oPMiBEcIClBqwQb+VHqufdr1lic1YIKI1YhrCgZhH9WaCOUgRmKfH8WX7RPvyBri9WVL5Qfk25B3m3AV14tTc5DnjI2tJ/uq/FFSDQwGpcQgrkNng3kdMFDJriPhCHkr38LeHR7VLKmgdrHAKvuAY7qr3xzIVZWpnGSleT7MSpSJfhaGlZwCUuC7DzyvnnwrnYTujnPV6TSYWuxSBEg91gBX78USDRkTgsjLS7gsTk7CvfBNox1rt+EycqSB73E5k3k94bj50ri/0p6sRhq71t1GSWR7yVKlJ7yb4gnfsBD3MRnoTp+J5zqq14skOT6mQxWCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF44E8B88DF.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::825) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 13:28:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 13:28:49 +0000
Message-ID: <60dab503-9180-4167-a0f3-b65c7d54066a@intel.com>
Date: Wed, 29 Apr 2026 18:58:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <0fb737c2484e116721b944befff146d9069ecee3@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <0fb737c2484e116721b944befff146d9069ecee3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF44E8B88DF:EE_
X-MS-Office365-Filtering-Correlation-Id: 25968295-2ff1-412d-171f-08dea5f33efc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 9x2WROJIf2bW7mtlTmkGPAcnlxtkvE6Hls31HvMff1BIeITydhnk00274fYoJ3O8h9q5X1tmbtc4SvAsd2s2COlyoQxmJfYuXqWkh80ON2Fn1K67+LSxfqWOaj9O7pIKUKbH5DvsbEbA+qTiFeZgG01KC3GVSBqHwYLLKsrexOgNQgBwbYby4vtvhyEYViHpYgShH1ABM+9Qoo83iNQ5pNtST1GqY8L0IqX9rGN7kPzLYiMD6vPR57vogB0rua8mn7mmCtQ0Yb8evpoyij8rtHzHB05eo8YafgxD3BKL293dZk7XUMwQOjJWxw/F17IJmoZHSl5FdgDlgSKKSKf/TMtyqLs+lj/uGv0m6Z4Aw2eVCNVqAg7Y+yAQH68QBqrpY/yUTgfKwu9+UTI8nbxgDM5XLywqPCFTqJpsHhi9S5W296gbHR1c1Scf3MbgNTgFPNO5DilRGBHNRdoZvom4EuGd6tGfM3BPzJ7nBQPf1eYo1vz9MtbSkKNHIpGQ3mWlf0zhAKc/nsdFWPhIFBVHpEo0DhpDIW6tfIZUZUHF5sd7Fb2JKXnynDNCqutjtHWBmPjl4s9Eaw04wht/Eh+wIV+6DJpkozxW9tKRhgcVl4MxBF8gGHyPR46So/ukQlYapRDqEYVFd2whJ4rriAICrDin5tzAQsVOIz5RgUL4mpyKj+4FPZNlQV4Z1U9Hm5ZeiH7fKfS9gRQsMtsn6FTHq/UDjMzIzIWkViRbFBSdDL0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXNMSWRiMm9YUjdLeFg3MlBaNTAvdDNCeFdjcVFqZVhmaGwrNVRZdS9lRWJH?=
 =?utf-8?B?Yjh5Y0NrOFFGRUJRazZwMnVRdDdEeFJ1Tk8rbUN1dHdOckJaZ1I5OFlDcDlG?=
 =?utf-8?B?aGhDVUdaZTM1V0owZUNtMzcrQ0wvRmJiWnhac2tJVWlYN3pRUGZ4emJrNEsz?=
 =?utf-8?B?OHBZQ3UrNk1PR2dTZXpCV3Ayd0g3M1dCQTdSVkVnUERqWEMreldlOHY5Q3VH?=
 =?utf-8?B?M3dGWlVaMHprWTVrVlovWEhkRzJZdzBhY0piSmJiZC9sa0l2VTdsejlYUUts?=
 =?utf-8?B?Mno1ajZROWRyUHBiampHRWROdEdqMjBEL1F2ckNKMVZTa0g5a2VtUjdETFRi?=
 =?utf-8?B?ZGpFd1lGUnJyWFU3NU04RmN4dWN6ZTV6Mm1FZXpFR3JpdGN3RUw3V2U0WjMv?=
 =?utf-8?B?TEIwRmhSWkJqN0V5Y2cyMUswalFIcjNlU3lGWXNOYjFiMFlmL3FtdStVMzNk?=
 =?utf-8?B?eHIwRXBwbzEvWWhiWW1CR1UrU1RLMHdXNnpsRWU3OGZDclJhSWVya1ZMaEpi?=
 =?utf-8?B?ZVRWSFNnQmYvU2d6c1hSMWZxOGxDdld4eXdsSHU1dWhidGd2R0szcW1wMis1?=
 =?utf-8?B?TW5QSExEUHRKeEl5V1ErM2E2Z1huSHZMYytacVVkdmM5dFQ2OE16L2lvQi9a?=
 =?utf-8?B?QmhUZmNJQUNWd2txdVZoR2xuRkwxRFN1dVMyVEhOSjBMeTRib3NFd2dGdkV2?=
 =?utf-8?B?OXVJcnJPQ2lnd21ZTk0wRkVnL2NKUXJ3NlJpSCtLR2kyVzdCbEJkZSthQ3U2?=
 =?utf-8?B?bC9YeFJsQU1TakpVM0JnWDMyRTR0YWpyR3c4bElNdDRyemMvNXZEQkxiNlJV?=
 =?utf-8?B?aERLZHJWQm04Z0haOVhQNU4zZ05nby9iODNtMkVTU0plQkZRQ3ZXRkRWcndo?=
 =?utf-8?B?ZDB6OERqWklTSmxRVGtzY0w4cm1NNlpyQXd4KzNHS1VCWlJlemZRam1yQkNs?=
 =?utf-8?B?RTJyalNESU9OQUlWZHhkSEluV3Mrc1V6Um9QdytNc09USGRhbVFUTDlWOTFD?=
 =?utf-8?B?anZTVjdEbDVldjI3dUlVNnJLd2g3L2FPUFduaWNSQ3VMMUZUQkw4YlJyb1BI?=
 =?utf-8?B?THZBbVhYdEFjY0dYVmNyWUg4NjRIVXBzK2loZkFiQWV6M3dYcUZNYkE5WDVj?=
 =?utf-8?B?SUJ2VVp1RmxRMGF2bFRHQjdzaktacndrcEgvYXhmTnIwVGpPMU8xR0VBQ0Vy?=
 =?utf-8?B?UlY4d0daaEZ3NXFGMFlpcGdUYUdvZTNLU3FSQ2dQbUEyME55MUpucDNQcWEv?=
 =?utf-8?B?T2ZibDBBcGxqaGpwcE5nYWxESCtrRnprb3I5Vk80MEU3OVp5YWtJZzFGaHQ5?=
 =?utf-8?B?MWhjRytTZGtrNHlyY1VzZklIZXoveVBRc05SN3NjNjg1NmdPMEk2aDF5T2NK?=
 =?utf-8?B?Vlh4dGM1ek5PQmNZdjNiMXZORFZQMmpnS0RVWjFOdnl0Vys5d1hkZkJIVHF4?=
 =?utf-8?B?TU9XK2Ixd2JRdFJPSkl2YlV4UkpiSGJ2N1YvZmxxNG9Uc3BHTTVwVDNXR1Uz?=
 =?utf-8?B?czUrTEgzcmhDVW9UeVRyNjZpSGR3SUN4dkFrSHlnU0kxSW5LNmtQTmdtNmR2?=
 =?utf-8?B?RXRyUUlNdG56UUpZTGJkNEVBb3YvYW9lS2xGaHpEYnR2KzcyMmpnNFluZ0k5?=
 =?utf-8?B?RkZMdXBKSE9ud2ZuSk5ZZ0h6MDFWOXl2N1RPdFVQSUxPWFdZZjRXWExZZ0Rq?=
 =?utf-8?B?RjZYeGFIQkpYbFlNU1VveTJOam4zcCtyd0liZkhxdWs0SFM1b3o2S0ZlcXVw?=
 =?utf-8?B?MnFBYXN1VTJBL0JLMmNOZVVzUlE3UGptRHVCTE9BbjdZZzhYd1c1MGFUT2U3?=
 =?utf-8?B?NnNtNW9sS0NwT1FmZytLSDQ5QUpJU0grVzJsUEphcGhTcXBIaHBKRkY1cjVp?=
 =?utf-8?B?NDdZVVF1c2hqOHJFS2JnTU5HeEpqVWFWaXR4WWZZc0RocUhLOVFrQ2MrcWJU?=
 =?utf-8?B?T1V1dVlSOEhZNTlFaWVZbXc2cmdBL3o0TklKQUN2aE83RFNNUmxDY3lwZlBL?=
 =?utf-8?B?R1pub09zYThDQ0pwUlVXd3R3cW0xRjNlNXljMk11UEs4TnRLZVRrb3JwRVE1?=
 =?utf-8?B?SlYyVk90RUlnSC8yK0dhOHNDdjNlZlNHNit0Nm5sSkEzb09QZkttMTNtcXA2?=
 =?utf-8?B?UThVVFlmNDVCZnorN1NCaEQyczFUYm5rYWZPVjlhUWhpUkJhYndwTlc2aWwx?=
 =?utf-8?B?SnRVbVVhemw1VkE2TGo3S1dTU2E5NFhXTXlLUjB4emdXRWpISTIyd09JeWx3?=
 =?utf-8?B?c0pmWUV1TXFOYWxpU0pOVGVncldOVWhRWUFKdFJlMGxOMERvUGdjS0FVYmZw?=
 =?utf-8?B?Q0VZaHZMU1J1WTI3ZHVWNWJQQ05TOEVTTlJEWGFUNnMxYVIydGpJNVNDd1ov?=
 =?utf-8?Q?+qsDxBH3JRFPQwZc=3D?=
X-Exchange-RoutingPolicyChecked: NnA3IUz6am9WCHw3ZqV4evH87qmFIVTf6MzM98P6ozV8EEbYpLNrL+fksuvZ5jjgXVBuV1k8WKrHkTwNBlhL8FloKUxfiglOOBKChMR9yf/eTBif0Nvvme/WrkPR5v5IX68fGi+RArSEbMYy3lNwTqTApqh1kdAA0jl3DiscM+3UrDdq2wpZvfiKmf3XQTo3nEai/hCZYPSvC//vQJKo9po3CqFlwtPkJZ3dgPi+AjW67U4Fki+o30CZl8thgYay7BU7b89xH7/xjRjHq5inCcuUd12shAOOlCrAKHJT0NV+QimI8SeOfnY+y/yOqr6aCobuDgUz5QvOhU07nN/pZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 25968295-2ff1-412d-171f-08dea5f33efc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 13:28:49.2119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8rEr3P8htwmfLqXDH+In6YisnMCFhb0Uwvp0UQFdn0oDZgVpLsTsJkvqBuWCiVUo0Oyh6tPctZkzrlAHmcVS5s+zlEcfn7jHgwl1FwRZ94k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF44E8B88DF
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
X-Rspamd-Queue-Id: CBBB5494D48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 4/28/2026 3:09 PM, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> intel_panel_fixed_mode() intends to choose a fixed mode at or above the
>> requested refresh rate for VRR panels, so the requested refresh can be
>> reached by extending vblank.
>>
>> This is called in compute config to find the 'best' fixed mode for a
>> requested mode and also called during mode valid phase to prune the
>> unsupported fixed modes.
>>
>> For Non-VRR panels there is no issue:
>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the mode
>>    with refresh rate nearest to the requested mode.
>> - Seamless switch to a lower mode is only possible if the platform has
>>    support for Double buffered MN and the sink is Seamless-DRRS capable.
>>    In this case the user sets a lower refresh rate mode and doesn't set
>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() returns
>>    again the fixed mode whose refresh rate is nearest to the requested
>>    mode.
>> - Since Duble buffered MN is not supported on LNL+, the seamless switch
>>    is not possible for such panels from LNL+.
>>
>> For VRR panels the current logic has some issues:
>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed mode
>>    at or above the requested refresh rate so the requested refresh can be
>>    reached by extending vblank.
>> - However, as per the current logic the helper can return a lower refresh
>>    rate mode, if the lower refresh rate mode is first in the list of fixed
>>    mode. Later, if the selected fixed mode's refresh rate < the requested
>>    mode's refresh rate, then the requested rate is matched by extending
>>    the vblank.
>> - In case of a full modeset request with a custom mode this is not a
>>    problem. But for the seamless switch features like LRR (Lower Refresh
>>    Rate) and the Seamless-DRRS this creates a problem as this results in
>>    change in vsync_start/end and resulting in a full modeset.
>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is not
>>    supported on LNL+, but for VRR panels, the vblank can be extended
>>    similar to LRR case. But due to the above mentioned problem in the
>>    intel_panel_fixed_mode() this also results in full modeset.
>>
>> To solve these problems for the VRR panels, identify if the user wants a
>> full modeset or expects seamless switch. If seamless switch to a lower
>> mode is desired, make intel_panel_fixed_mode() return the highest
>> refresh rate mode, provided the requested rate is in vrr range. This
>> will then be modified to extend the vblank to provide the desired
>> refresh rate.
>>
>> This is particularly needed for DRRS panels on platforms without the
>> double buffered M/N support (display version 20+), where seamless clock
>> changes are not possible.
>>
>> To understand the user requirement for full modeset/seamless switch, the
>> intel_panel_fixed_mode() and intel_panel_compute_config() need access to
>> the connector state to check the allow_modeset flag.
>>
>> Add a nullable conn_state parameter to both. The mode_valid callers pass
>> NULL since they have no atomic state and the compute_config callers pass
>> their conn_state.
>>
>> Also remove the VRR check from is_best_fixed_mode() since the selection is
>> handled upfront in intel_panel_fixed_mode().
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>>   drivers/gpu/drm/i915/display/intel_panel.c | 35 +++++++++++-----------
>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>>   9 files changed, 37 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index afbaa0465842..1efe81404d01 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);
> Whenever I see the parameters changed for a "compute config" call in the
> compute config path, my immediate reaction is that it should be changed
> to take the same parameters as the encoder->compute_config hook, and be
> done with it for good.
>
> Maybe the first parameter should be connector instead of encoder here,
> but otherwise would make sense.

Thanks Jan, this makes sense. I am working on this as suggested.

I have changed intel_panel_compute_config to take crtc_state and 
conn_state so its arguments align with encoder compute_config shape as 
much as possible, while still taking intel_connector as first arg.

I am also adding conn_state in the same patch to avoid another signature 
modifications in follow-up patches where allow_modeset handling is needed.


>
> Also, I forget why we have ->attached_connector in a number of
> intel_encoder "subclasses" but not in intel_encoder itself. Would make
> this easier, perhaps. And could conform to the exact same params.
>
>>   	if (ret)
>>   		return ret;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 35b8fb5740aa..f014ce28e69f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>   		return MODE_H_ILLEGAL;
>>   
>> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
>> +	fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>>   	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>   		status = intel_panel_mode_valid(connector, mode);
>>   		if (status != MODE_OK)
>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>>   	int ret = 0, link_bpp_x16;
>>   
>> -	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>> +	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>   	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>> -		ret = intel_panel_compute_config(connector, adjusted_mode);
>> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
>> index 9005c1f5d857..a480bb79dca7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>>   	struct intel_display *display = to_intel_display(connector->dev);
>>   	struct intel_connector *intel_connector = to_intel_connector(connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_connector, mode);
>> +		intel_panel_fixed_mode(intel_connector, mode, NULL);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 405b33aca9dd..0ec25d895777 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	int target_clock = mode->clock;
>>   	enum drm_mode_status status;
>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>>   	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
>> +		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode, conn_state);
>>   
>>   	/*
>>   	 * If we have timings from the BIOS for the panel, put them in
>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	if (fixed_mode) {
>>   		int ret;
>>   
>> -		ret = intel_panel_compute_config(connector, adjusted_mode);
>> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index cc6d4bfcff10..2e30bc3f1e62 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
>>   	struct intel_display *display = to_intel_display(_connector->dev);
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   	int max_pixclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>>   
>> @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>>   	 * with the panel scaling set up to source from the H/VDisplay
>>   	 * of the original mode.
>>   	 */
>> -	ret = intel_panel_compute_config(connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   	if (ret)
>>   		return ret;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 5e918ee0c8ea..65d017371d78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
>>   					struct drm_display_mode, head);
>>   }
>>   
>> -static bool is_best_fixed_mode(struct intel_connector *connector,
>> -			       int vrefresh, int fixed_mode_vrefresh,
>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>>   			       const struct drm_display_mode *best_mode)
>>   {
>>   	/* we want to always return something */
>>   	if (!best_mode)
>>   		return true;
>>   
>> -	/*
>> -	 * With VRR always pick a mode with equal/higher than requested
>> -	 * vrefresh, which we can then reduce to match the requested
>> -	 * vrefresh by extending the vblank length.
>> -	 */
>> -	if (intel_vrr_is_in_range(connector, vrefresh) &&
>> -	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>> -	    fixed_mode_vrefresh < vrefresh)
>> -		return false;
>> -
>>   	/* pick the fixed_mode that is closest in terms of vrefresh */
>>   	return abs(fixed_mode_vrefresh - vrefresh) <
>>   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>>   
>>   const struct drm_display_mode *
>>   intel_panel_fixed_mode(struct intel_connector *connector,
>> -		       const struct drm_display_mode *mode)
>> +		       const struct drm_display_mode *mode,
>> +		       const struct drm_connector_state *conn_state)
>>   {
>>   	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>   	int vrefresh = drm_mode_vrefresh(mode);
>>   
>> +	/*
>> +	 * With VRR always pick the highest refresh rate mode,
>> +	 * which we can then reduce to match the requested
>> +	 * vrefresh by extending the vblank length.
>> +	 */
>> +	if (conn_state && !conn_state->state->allow_modeset &&
>> +	    intel_vrr_is_capable(connector) &&
>> +	    intel_vrr_is_in_range(connector, vrefresh))
>> +		return intel_panel_highest_vrefresh_mode(connector);
> I do dislike making intel_panel_fixed_mode() this convoluted.
>
> I'm thinking perhaps we should try to refactor this so that we reduce
> intel_panel_fixed_mode() calls in encoder code.
>
> Instead, handle more in intel_panel_mode_valid() and
> intel_panel_compute_config(). It's much more clear to have the above
> conditions in intel_panel_compute_config(), and have that choose the
> function to call instead.
>
> Besides, we have a lot of code calling intel_panel_fixed_mode() and then
> intel_panel_mode_valid() or intel_panel_compute_config(), which both
> call intel_panel_fixed_mode() as the first thing. That's just silly.

I want to remove direct intel_panel_fixed_mode() calls from encoder 
mode_valid() paths.

The problem is that after intel_panel_mode_valid(), many callers still 
need fixed_mode->clock for max_dotclk checks. (sdvo seems to be missing 
this check today as well; perhaps will add that check first).

I tried a few options:

- Put max_dotclk check inside intel_panel_mode_valid() and return 
MODE_CLOCK_HIGH there.
   This works, but changes the semantics of intel_panel_mode_valid() 
where we are only doing panel-mode matching.

- Extend intel_panel_mode_valid() with an out param for effective 
target_clock.
   Callers can then do max_dotclk checks without a second 
intel_panel_fixed_mode() call.
   This feels cleaner semantically, but the API gets an extra out param.

- Add a helper for fixed_mode clock.
   But that still does another intel_panel_fixed_mode() call, so it does 
not really solve the duplication. :|

I keep going in circles and end up erasing everything. (-_-)

Do you have a preferred direction?

Regards,
Ankit


>
>
> BR,
> Jani.
>
>> +
>>   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>>   		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>   
>> -		if (is_best_fixed_mode(connector, vrefresh,
>> +		if (is_best_fixed_mode(vrefresh,
>>   				       fixed_mode_vrefresh, best_mode))
>>   			best_mode = fixed_mode;
>>   	}
>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>>   }
>>   
>>   int intel_panel_compute_config(struct intel_connector *connector,
>> -			       struct drm_display_mode *adjusted_mode)
>> +			       struct drm_display_mode *adjusted_mode,
>> +			       const struct drm_connector_state *conn_state)
>>   {
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, adjusted_mode);
>> +		intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>   	int vrefresh, fixed_mode_vrefresh;
>>   	bool is_vrr;
>>   
>> @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector *connector,
>>   		       const struct drm_display_mode *mode)
>>   {
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   
>>   	if (!fixed_mode)
>>   		return MODE_OK;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 2f7a317995ea..c1189a20c8b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>>   const struct drm_display_mode *
>>   intel_panel_fixed_mode(struct intel_connector *connector,
>> -		       const struct drm_display_mode *mode);
>> +		       const struct drm_display_mode *mode,
>> +		       const struct drm_connector_state *conn_state);
>>   const struct drm_display_mode *
>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>   			   const struct drm_display_mode *adjusted_mode);
>> @@ -47,7 +48,8 @@ enum drm_mode_status
>>   intel_panel_mode_valid(struct intel_connector *connector,
>>   		       const struct drm_display_mode *mode);
>>   int intel_panel_compute_config(struct intel_connector *connector,
>> -			       struct drm_display_mode *adjusted_mode);
>> +			       struct drm_display_mode *adjusted_mode,
>> +			       const struct drm_connector_state *conn_state);
>>   void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
>>   				      bool use_alt_fixed_modes);
>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index 2e1af9e869de..e07c1070a3ec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
>>   
>>   	if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>>   
>>   		if (fixed_mode->hdisplay != args.width ||
>>   		    fixed_mode->vdisplay != args.height)
>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>>   		pipe_config->sdvo_tv_clock = true;
>>   	} else if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>>   		int ret;
>>   
>>   		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
>> -						 adjusted_mode);
>> +						 adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   
>> @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
>>   	/* lvds has a special fixed output timing. */
>>   	if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>>   
>>   		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>>   	} else {
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 76e8cd0f65a4..bfe465443d20 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);
>>   	if (ret)
>>   		return ret;
