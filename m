Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOIFAu6Xw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:08:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D6432125E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE42E10E4EC;
	Wed, 25 Mar 2026 08:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2eYzBKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B248F10E4EC;
 Wed, 25 Mar 2026 08:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774426091; x=1805962091;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3dWXmSPmLOJi3JHUkJbg4AMM50iD70r3J4OAHCP+bO8=;
 b=E2eYzBKzGFY+R1neDvV7CBYlF0JYIGT4sFDD4n18rdFXA+bAqa4kei1K
 XtlJUeJq6ydclQs8bOUOEJxJvASp6ZgbRah8DrqQvA6bGIU3jCB8WxuE4
 1s5wQs8ATU9oXRADvuJnl2P8/2zxV889j3fZakLtKffXEdGVzVvIGY3YW
 mIAWjT9V35F59GErKKo8eGXfXkLqVdHWgjwFI1nEfY5qq1L4uRdVBhFLY
 HrdHnYoKlLqzz71SU7ka/r6ooCJ9ULwLSxTSIWUenv8bQHGMRIVhl3m0c
 rbZle2VsHnxvUJOC50SB3BJRTedk1sxCVQw78qTIM41leWB9sMAYs1iEJ Q==;
X-CSE-ConnectionGUID: E1xah7amQ7qEGjbsLE8wBw==
X-CSE-MsgGUID: 4clnbkfBR3W+aq354yH36g==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86151692"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86151692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:08:10 -0700
X-CSE-ConnectionGUID: Y/W8BrNvTKGLsh4OuJacfg==
X-CSE-MsgGUID: Fq5FUEuERyqQ51V9ZcjbNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="221278283"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:08:10 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:08:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:08:09 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:08:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lNqKPtUsjDcZJ339mKLya8HLbAmjjWXVjDu3xG4pnOjK62IzgZrpuW6VkFMwqw6rhHes4750MPnZ6Zrn7knMJePDujmzd2SzmvZxN8A9UVE76RI79YNj9+eC9pwuz7PfQPw92A8SLgdcjTtTdYUh2Q5Ze103YBAla6dWPJ1qUjnbl6JuXRBhKjYCIM8LBDsiji8oSQM+0+GPMR0U9BrzsGDDYw4x6u3SHMn9aGwZwddFrEhJ2By7L1Yzv87ra11SHwVpuG3sNMLrwe0Zie4F+IhqjWyurVD3Ie4Tc+7R+R6X/z6pkMODSM/HkP1h+IBx68evGqezjbru5u1KMGUvmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fWByUcqsum8mYn8VMa6EBu776TizX51QJN8/7kSESSI=;
 b=ZFsQ8iKISFvbx5hIrIMevGFMp1pjkNkAW80c0b4gHoWuUei45RhpEarv8F0wMRrjZQqxL1HrgFeE33rhoWJczzvk0RhOH6w3MKJpX5F6Hf4unzX++aVGGKR/betFaqeJPvjgENLPugXLeVdXJARUfK8VwO718BVeO68AOx5jGX9s6J6ogWI0auWX7zRBnjW1WMa0Hs2PjmAiKspRaZ3tWOUYA9Hzt2qS6e/bFqX5Rohu95rMhXpjfPAjJFO0JVACzWtAAdoYvGqdKtJqdWWN3ClieXwR++2BTKJ0LXzoODH6A0ekQPIsMHyFLlOuFzDp0sPWlaGvLv6kPZvYT1W75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF607052E81.namprd11.prod.outlook.com (2603:10b6:f:fc00::f26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Wed, 25 Mar
 2026 08:08:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 08:08:07 +0000
Message-ID: <6bf0994e-b662-47ae-a542-eaaf92180d16@intel.com>
Date: Wed, 25 Mar 2026 13:38:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/19] drm/i915/psr: Write the PR config DPCDs in burst
 mode
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-13-ankit.k.nautiyal@intel.com>
 <abQEUmV5SZVWCAX7@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abQEUmV5SZVWCAX7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0229.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF607052E81:EE_
X-MS-Office365-Filtering-Correlation-Id: e4bbe773-4c40-446a-8101-08de8a45a5d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|7053199007|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: bxNgv60iuOufvGN38PfsFY+FyB401Sb/t02z6jzoYb/8r550hCXXTZ/TOrrXMd3nxpzrl+4PrdNaIli74dUBIeN2NPe372l+Nx6Q5bCLoL744Gy2YRISeK/4aX3mdoJ3+GmNeOVUUAyDFUAktGnOxTzftA2ooTsC3YhcHpKRrQf4ZFQGB63K24a2ARFQfKeFv0h2k5vlix62i0NZodWSxmtsBzhrNBeCijpwV8XK7qUoMaG8eHhjg3XFe0zBqLRU3P0VQL6h7sTveayUSpNQ/+sUWPeeKT8MmnYo9VEp16V3YvTMk+pJYsfSzPqsjINb6zj07g49CVYvpShn62rZ+ld2m5enHZKc07tP6+Zn9JHz9TMeE5T3LIsNLsH7+1DJ8W2m8SNCMcCKVX0BhZmOUMAmKNwsZgcqVnLFK8YW57WVjyZp0zycrf2gflCRk/2VqNqASml+E5eZ62Uu2xaWGElK47xNPD2SyId4t1OhreYLolb9lI5F4X8WYNsYu8vTEDIaIe/BKSZ7kpr+w8C6kiPh0tfi1PYuBuiHHo0FwGyxOEiQJ8zjTfF6B4MkeYZUs0tbMJ9HmMDWUU5L1jWCEWYzGsBH+Jpyc8xGPCn7dCXcwB5O1bfrG7pK0xiAQiyHyU61KjeUtotzCU4bFmrQzz99Bw9rTMxpUN1wAgl0OYF0WhLMAeoRTbxawrp270WFlr6AH91HPS6najXLcENdvec4cU4mdhHXc7ST2scFfjA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NG9ZUlNRdlQxeGowbjVXbGwvTFMxOVlzdXpDa0h3T0dkM3NwWGxaZmxETVhO?=
 =?utf-8?B?V3liaVc3WlVIODJQbjdkdmhnS1grUzhoTEM5QjZ3cEp1WW1tcm1Ra09DK29B?=
 =?utf-8?B?K0llU3l0VnRncHBUVTBaSVFBTzdod0pRSWtSRXQ0elczd09qbjFvVVBGckw3?=
 =?utf-8?B?TVFnbS92WWl1UnFmT3c5NGRSUElzeHgrRmEycUhKYWlKQnRVYm8weU44VHpv?=
 =?utf-8?B?ZUY3bDBOSkdKME5MRkJvYU12eVpyRHRmb3VVWFlNdlN2M2F0eEkwR3Y3cUxq?=
 =?utf-8?B?UVQ2VXM0TmVzV0xXNUN1K3ZoZmFxbWM1M1Y1TnRpWU9UbHlQTHBQVURFaEEy?=
 =?utf-8?B?eHBLbTE1dmRDYUtUS3lYNk1TYjJRTGtCNFJPOU9pVXVsUG5RM0lGcGN5cVhB?=
 =?utf-8?B?ZEhuaXNSaW42ekdxOGdxTnk4TFpHcFV4a2grMWFnakNXbXdFc0tXbU9FMGZ4?=
 =?utf-8?B?TnpacWRzMDdjZHVHUDhhZ0hOTkc1dGRxTHpUbHNlS0VnbE55SmM0Z1Z5S2NR?=
 =?utf-8?B?TS9DVDVBT25qUTZqbzdtaXRKQVVpcjdQRU9BNlhWOFJvWC9rZWpmQkJJWjRV?=
 =?utf-8?B?VGE5YmNZN25rYmo4QytSaEJZeVptYkJ3bmlFNGkrc3JFYktyaEpwdnBiZ0py?=
 =?utf-8?B?YTNvRjU4b0hxbFFrWlhvNyt3L2hFU1FyWll1Z0FxejhvZ25JZDB3dlFtcElh?=
 =?utf-8?B?SmNKYlc2cjFkMklwT01tM3lQZUN3U29IdFArMkMzc3RHWllFZ2I3a0FyZ2xP?=
 =?utf-8?B?VVlNbXVrRzF5d3JGZFhYcWFHMHlBU1RVTlptbndITFBOSS9QR3BaN1piS0lZ?=
 =?utf-8?B?UUxZME9aM3F6cm55VlVoR090QjBjY2pueDB6LzI1RldzK0RlQ1U5d1F6UnpH?=
 =?utf-8?B?TndIc3I2RkxiOHFCRjR0TGN1NEJUcDVDQXh5MExnOTIrOGI4R1VWbzJ2Z0xp?=
 =?utf-8?B?Y0JWWjdSaHkwTTBYNmFQWi9HRitkYVlpT0RUY0JtTjh0aWVibThaa0p4Tzg3?=
 =?utf-8?B?QUxkbGJMS0NCUWJ3a29nV2V5bmExWnBSa29scSt6OXdjUkhZbitld0NtZFRa?=
 =?utf-8?B?L0pXRjAwQUtpQjZoSStZNE1aOHpYcTdQWnBCYzM3VkVQOFpwTi9DQnhJelgx?=
 =?utf-8?B?a2hrY2RtanBEaGtGWm9FZVZReEV3bUtvWHRMRWFibXY0SlRuaENndjBaLzNt?=
 =?utf-8?B?dkI5WmFCbGdONTFsdjlBZDVDQXZCVE0zaTUybjZ6YXZOSWxuSHFFR2o1ellE?=
 =?utf-8?B?YmVlS2t6RHVwWUxwWVlXRGlEZ1NUUlBsbEFaNndRVWhjSWdmQnRsa3UvbGU5?=
 =?utf-8?B?V0RIQjJnWnpaMEJ3VnpsdFkvTmkzRnRUYm03Sm9JeFNucjhRVExubjBVRElX?=
 =?utf-8?B?aEgwN2F2L1c2UXZvekV3OEU3YTRFVUdVMW9GSlBLSkw4Z1dVa0V3bmdERzgz?=
 =?utf-8?B?K2s5dmlhdkNBNDFZK2pQb1VVY2VhVENHelIxY0ErSFZhZHgveTdGMHplODBk?=
 =?utf-8?B?RENqWEJBWEV3MmM1NFJXYTlTeXNGYkdiYzVzR1NkV2prMDJWU3lERUE2cGJD?=
 =?utf-8?B?dmZWaDFRcXRXcFZxU01UQWV5OGsySkNYclB4UWJzRlEvOW5iVk8rOFFjMEdm?=
 =?utf-8?B?ck90ZmNUNzcxWjNLdmd3RWJmcFAwa296OUFWTFVHTWNiQUJWWXVTL1dmVkNo?=
 =?utf-8?B?ZUZja2IrVEpFSnBXVVlUSDhGdThQck12eFNET2d3UDE0L0lxZjhMaVUyRUZn?=
 =?utf-8?B?SWdVSFh6UFZHZUd1a0h1S1VjRFpadkpPRm1taDRycUp4cWluSFNkbzZiWTA0?=
 =?utf-8?B?VC83c2NmMmwwOG16SzFvRm13SCtWcDBadHprSWx3bEtac1V3SW12bUpZdisz?=
 =?utf-8?B?R3NsamVwbjlsQmlHRGhwOEd2S1FRcFBzRFBhaXNsbkk2OFNKOUs3UUVuTG5S?=
 =?utf-8?B?cUw5eGs0aGZhT0I2czQ4UFpaUHd3N2dHUjRPRHUvampJMFFKbS9BVzFyaGZ1?=
 =?utf-8?B?YWRNcUZFYTM2V3p0aGgrNnc1Uk5VTC80R0hoMGNmUCt6NUZmQ1YrRTdYbGFZ?=
 =?utf-8?B?enZDZjI0ZVozOU9mYWw4ODBDMlpMc0NFdmVkUSt3QkVZQm1HakZjNUlVVUEz?=
 =?utf-8?B?WGt4ZnRDWTljUTFJd28wMmZMNDNSSWh1KzFIWDVaOVRhbzhPdEhtcVVEQ2RR?=
 =?utf-8?B?dHU1enRwblhRUGh2MFlDOW42aVB6aUl4bTQ2SDhpNmhidE9CZVhWazRvOU04?=
 =?utf-8?B?aWlKbklOMy9BeXdnQURYM2dVUFJjR1lzeVZ1Vk9wdE1mN0duYjNqV2lDUEVZ?=
 =?utf-8?B?c0kxRGFyQXpnUnp6bURxVjUySHh1dEhyTmJ1clQrYlExQTJyMm02QVdjSkhB?=
 =?utf-8?Q?QzcIamiRZk5OYzBc=3D?=
X-Exchange-RoutingPolicyChecked: fZl3UFFkc5kDzId1BdP3Sid3fyOWm1ioMsV6Cxl6hZKlLcz7ys7XXN37xcsBzoIuVkcAd46ftdDqQzp2MSxPI1H6pnqqiEJ95l/2+YiuYh/E6btZQ9OfqxFf3TRYlOEj6NeuNdZSZUqlrEa5bN0EtHf/X0txQnyJRfJAcnTfb8k8ziB5YFVY1d91qOdBB0kpOEHLrHZ6naY1/pSWFCIaKZMwk4XcYDwP086CXLRN94h7z45D/Z4QVVATK4CplVxqZGHE0bOuHIK6ABjhwA6SCxH/V9946OM3ANKrpq0a6LePHmSEPgu0opQWK/vUly/o7djynZN/VNMzMpj15fbM9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: e4bbe773-4c40-446a-8101-08de8a45a5d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 08:08:07.6805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: veda8ke/YPd3HthW++gKFt+grlgVfWmCG5RhpsDh51MnjeQMRcZgsYWqC2ve44Y5jd2fA2QXSZTOp+37fIv949QSXSl4ClyT47WnEkCqj6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF607052E81
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 67D6432125E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:04 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:04PM +0530, Ankit Nautiyal wrote:
>> Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
>> CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
>> reducing AUX transactions.
>>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++------
>>   1 file changed, 12 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 5041a5a138d1..ee6e26abd05e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -774,27 +774,33 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
>>   static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   				      const struct intel_crtc_state *crtc_state)
>>   {
>> -	u8 val = DP_PANEL_REPLAY_ENABLE |
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	u8 panel_replay_config = DP_PANEL_REPLAY_ENABLE |
>>   		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
>>   		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
>>   		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>>   		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>>   	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
>> +	u8 buf[2];
> u8 panel_replay_config[2];
>
> would reduce the number of variables we have to contend with.


Makes sense. I will change as suggested in the next version.


>
>> +	int ret;
>>   
>>   	if (crtc_state->has_sel_update)
>> -		val |= DP_PANEL_REPLAY_SU_ENABLE;
>> +		panel_replay_config |= DP_PANEL_REPLAY_SU_ENABLE;
>>   
>>   	if (crtc_state->enable_psr2_su_region_et)
>> -		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
>> +		panel_replay_config |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
>>   
>>   	if (crtc_state->req_psr2_sdp_prior_scanline)
>>   		panel_replay_config2 |=
>>   			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
>>   
>> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
>> +	buf[0] = panel_replay_config;
>> +	buf[1] = panel_replay_config2;
>> +
>> +	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG, buf, sizeof(buf));
>>   
>> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
>> -			   panel_replay_config2);
>> +	if (ret < 0 || ret != sizeof(buf))
> The < 0 check is redunadnt.

You are right, the other condition is sufficient. I will drop the 
redundant check.

Regards,
Ankit


>
>> +		drm_dbg_kms(display->drm, "Failed to write Panel Replay Configs\n");
>>   }
>>   
>>   static void _psr_enable_sink(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
