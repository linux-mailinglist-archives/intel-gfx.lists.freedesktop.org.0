Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCNSDtZ1y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F837365046
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE3710E2B4;
	Tue, 31 Mar 2026 07:20:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="daFbaRfZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F7F10E2B4;
 Tue, 31 Mar 2026 07:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941651; x=1806477651;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=toxc56Iv+ZY+lRnWVpjALv5ZKX0aTymGmFPGI814J4k=;
 b=daFbaRfZuaoaW0sTz6nDtrYVMfmXG3tgAW8hte2L9/VX6hKqfLN4H9A+
 6BHQ8iZ808t9/+AqOcY33r2wz1qbz3A45gmEjDgJRykGDAcgDCXkrrd9J
 gGD0j+sWSgJl1vuvAMtyh8A6vkX2R9oopAZeLam3xnwqGM/UMpiHTCfic
 QTcx/Bv3cpCN0PKsKYzwK0Uh69lwlxv0ath0RbKLeGxCJLODcKpLY2n85
 GYBi7uPcIobN/+Jwft4sM/HBUXxiuR0+rKTFeTV7qn8fUw3UQBr5KcA+m
 NklVkNtdLu6ZYWzltOCHIVYwN3FgQqqtiA5o2Au6Gglbz0LPBB7Ftp9xS A==;
X-CSE-ConnectionGUID: 9ZiHpVDJQrizY+WZWzvlxA==
X-CSE-MsgGUID: dG/OlVZRQCWheEiCGYiBSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="93328566"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="93328566"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:51 -0700
X-CSE-ConnectionGUID: IC3rgSIPQyOzvNijoMMOcg==
X-CSE-MsgGUID: uODw0eX5QcGkKWtTuEhqRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230742496"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:20:49 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPjWTDcI6RyMcAaAuaYz7BN6Eha9qNqawe6lS+d4K3OGLhmzu1lpNspzL9v0BKtImvf+lPWFtesW1sk8wXYzXKeLbDaz6CrEYWlO6qlgM090386atDWKKK+uYX4AzaS3YFuaJGQETA02ISiy6CwHw2R2yCgcmlj/rSUdHCIGBZiWPkYA3aXObGMJRqWW8g/PTrLQg2Nu0xtQkjw1aCw6vIfilqPKor/4CCf+xSBtzm7kVIImmsufDFz8Hu1UX8zG9tRALK/VsapPdd/SO1Th+gzxo5MHQlTkbczkwnBfxqZo5mS3+BOb7yiFXhlgwA+/Bk2fGpP7VEEuy1eCI61pZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VoxFAQYvXQgynCfFhk09PUhda5m649jo4dSmlQKLpWw=;
 b=Cn/cNC0kKY6oFLKDXDDGwlmQkAqn0HsLdSSbe9b/m+K+iNiHl2r+mWf0Wtruhb+hhLiZhv4viyulLFSXxztNF7yCCcGjveDHhYVqN4ZoslLam7iIwyhylVHJ11KIJkUp9UwZHNuDj2kbKqwXvjgCa60YcUcYhwUb0riCt/DozbqmgQD3YLmPd7cQNW2G7oWKpW3x36GGqkh+QCSfGUG5Xj8lOlesb4dU5Ut2RAVoYWOB2OkZE+AiGdd5QguSsavb8SP3TZ9TmsW7X0qSVrYpoCQ488Y0qOZAInJkg9YFb41REQifoABEqe3wyie24RK1I7LfR3wWeBjILHoSDZMvLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:20:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:20:42 +0000
Message-ID: <d001f61e-21b9-41fe-b19e-7d9e302e462b@intel.com>
Date: Tue, 31 Mar 2026 12:50:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 24/26] drm/i915/writeback: Define the disable sequence
 for writeback
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-25-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-25-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0091.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::13) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f3f5584-ae76-4f60-2f83-08de8ef6042f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: InOgc+9SMNrU0yRX0ZHro+iiq0zUzJYGi4uXvYpRyae1OF7rOCsF97RXkPh1AhtTGt2opJJTqZdFJ3rsvoICNJQYPe+6/f+Ww4nBlrq2IzpRWmzQwxA1SwmSUdlRpH1P5lCnx+4ok3fDNmzTwOeNSc1uUi8X1h5GcK7TI5Qslu4UEASWrkknKIC4dyLCF/geau4sl2lVHbeB9cKBmDAKjyt4+83QRkCKZhW/ursS4ggIrbgb4fE9ToXwUqvnbegpsQrrDKUptVFNMbyr/1fA5VP0OsLOazRNBHM/mcHjXeUOvOvbd8iKJlLpa2yHqJEBLtQRCXDn/OlNBeu5d2MkL3YParqrAS1yU2zMGK37Iu6HlGzRpcpmUiTU7BS5bn9ITk3WRmXfBT1gcUfVW6ArRT8q+LywjmOx4dwFkE8KmYYc55ipGko9G1BPn+zsHmnLgVYEQzY/8oIzi/msi3WX5Uicyaqsh+270WhO8tU6ypImO7wXWN8Qkd15hAjSEAQpJQMIUs5MozKGymG/ikdVZHhxQN+tbJeiPNGvb17nH0BEQZ8LKDVYzemeYdPWgYd9aB/xgSuEdKwydXjny2Q1OKxLdBqW1zgZAoW25m96oD/kZOKE90OlH9YnuUNfZRxwK6d95rHtYCmFNd8NMdbm7AutkVjiilbkGOEw8qwVd5A4rVm+lfn+VVV7oAmWF1aYvTbdhc7IZ3va+kv0U2UlSUThWmlF/x+Oau+5ae/hioU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWdWazZJVlV2ditNT3lUL2c2ZGQxK1dYVFprL0tTQ3pxdnY3ZFVldzBtQU8w?=
 =?utf-8?B?Rk5TcnBPSDZSSlMyczY4L1FFeXZLVUV6QVo2dm5BeWJ0N2VOdGU5Nmp6Skp0?=
 =?utf-8?B?UnlLYThCTTBvN3NyREsvNjVIem5MUEF3VVdkVjBvZ0gxQzFML3J0aWRqR0Qz?=
 =?utf-8?B?LzhQL056aTg0NWJQUTByNGRmWDNjQlNuRjRWM21WWmZOdXQ1K2VtSk11ZDJp?=
 =?utf-8?B?cG1DUHo2MyttWEh6VzFBZDlBdkRldHdJeFAvdXNMUFE3MndlaU52VGs4RFpS?=
 =?utf-8?B?Z1Z0QndNaWRvVmtRTEJZQk9mcHhGUUJsUXJnTlh0KzdFNHYzSzF1U3VRQ3Fz?=
 =?utf-8?B?eGpZZE9wd3J0djQydmtYaXJSMDd1MlJOb0UzbzhLM3VNWm5UNnRncDhITzVU?=
 =?utf-8?B?ZjYrUmNCZkNKNFUrVHdUMTIvR0xFR3B3QjBIVC84dGxBU3dqcGs5cDd3QUFI?=
 =?utf-8?B?Tm5rcjFZYndYei8wWUhzQSs5LzJVS1VIMldSbmxkd0MwU01mT3ptUW4zd2pm?=
 =?utf-8?B?ZWJMcDBxbWxWVVZLT05TVDFWb2lNb0tRSzQ4TGNqVnhHYkM0SDZNVjdsUXFn?=
 =?utf-8?B?WVVaYWF2Z0Zic2lOcFhITytRZ08ybEVIV1dRMnlxc0RDYVVhd29FNkI2bHZY?=
 =?utf-8?B?MFdJTmxWR1FxaGpWb1BIK3AzMHJIa3dLckxGaitNY3hjWWF1TjI0VDk3aTdo?=
 =?utf-8?B?U3FWdWRlc0lpWkZNVW1FRHJlZXptV1J1OEtvZ3RZbnBTc1NNV1hTejJKVm5m?=
 =?utf-8?B?eFlLNjFLZ1I3ZDNLSXlOdlc5ZXAyUUVtd0c4Uk5zQ25OK09WN0FSUUI3eFZv?=
 =?utf-8?B?UjJkVHFWS0x2RDlIWjc2S0p2TzczWHpuL2FUZzRUTkxwMUcvVzBRcUJqMjY2?=
 =?utf-8?B?M25jc2IwT1NQaytpbmNjdUZERWcyOHlQWGxLU1FBUVNQNXZMUnQwMFFGMVZy?=
 =?utf-8?B?NDBGMXh3NzRUOWFoMkhGMjFaUitseG1RWkZCZFJiMXFid2liakJ2dUlHY2J2?=
 =?utf-8?B?MGU4YlA0NmNiRUt0UnB6N0ZrS0xySmZEV2VoanpuUXpGck5LYkVDTGl0WXZ0?=
 =?utf-8?B?Z0lhYlQ5OFdWUHR6S28rcE9UdUtuM1pUa0Q4NmZGL2xUMmQ5OXg5UTZhMFBI?=
 =?utf-8?B?Yjk0THVJblJhSUNvd1JTZVZudHJydzN2VVlWWDZSV3lXbWpVY2hCN1hnREpT?=
 =?utf-8?B?eFA5a0VRY2NLeHJ5WXRPVnp3N1BvU3F4Rm9uRWhnNk0vaVFRRmdienpGRFBq?=
 =?utf-8?B?MzNHS0xQaUNtNy9BZVNoQ0tycVRlOWxqeVVKNlhodXhvSzduYzBVbUlDanh2?=
 =?utf-8?B?VUFTWDQ1ZElQWWlSOU5iSmxuTnRkYnBudXFveitOSGxmN2hrUU1malRDdjRm?=
 =?utf-8?B?ZlBmeTNXcm4rSG03UUgySzRJd01ZMk9jdVVxcU11SDJRUVhWdFVPSzBYYTQ3?=
 =?utf-8?B?OGlXWDlSWlpPblpxVmpWR25LY0V2cTUyWm4xaFBLR3V0V0V0STdaeGJLSm56?=
 =?utf-8?B?eWtkd0xJa080SnRtM1BNTnluNE1IekZiZUUxdE1LKzE4Y291WWFhV2hmMHM4?=
 =?utf-8?B?WHZmMWhMeUczbGNZcFdiU2MrTmhnSU85cVNObFg5bzBOYlRUWGg3ejhnN3VF?=
 =?utf-8?B?ZUNMVWFNOUFZcnZMNHRWc2hYSktIOXNDRlFTTHY2Wk5HQzc1MkJTemJkSTEv?=
 =?utf-8?B?QmEzVk9raWZEMnBvS3lBRHRROExzdDRDSUtFaVh2TWladkpUOXpXRThxRjdS?=
 =?utf-8?B?ZlVYc3lMWjV2L2J0WU1DRnBsVldTak91QWtiWkJBN2hvckQ4YlNRMDVSN3NW?=
 =?utf-8?B?V1pvWnFzYVdRWlNHNHhVN0JmQVVHYzAvaHdadlBlMFVqaFN2V0dDRXptM05U?=
 =?utf-8?B?TXhUbE94VUxEUWhHK2kzMTNOSzMxNm5IRXNvOE4rS2FLN2diSWlPSmFXN3BB?=
 =?utf-8?B?bUdIRWgxSDhPZmtubUxyREtJSitKZjhUYnlxdUVKcG1sbVZKWmdvR3cwU3J1?=
 =?utf-8?B?MGRxRm5xN01JYllTZ0NsUUdRenVsVU5GVExuUjRpUERiVHNrREpIOG5ISEw4?=
 =?utf-8?B?N0h5cTFrWWFXVXdPdTJ4V3B3VlJTK1RwTXRlYVV1WXFVOWVrOXF4VWhXN3pQ?=
 =?utf-8?B?U2V6TFhMMEhBNVRZZE1yMEJZOXFVU00xNDZIYkVibk1XUlE3MDh0eTZZNFB1?=
 =?utf-8?B?VithVEEybzRxZk8yaTVmeDlGbGQ0Yys2RnpZZE9mcXdJRHlIVExjS1FtWFpt?=
 =?utf-8?B?YnRndmVQem9FczdsZmd4Q1lvQ3JWYmNHU3lzcVllaW03YXdzSmxBMjVUZzV1?=
 =?utf-8?B?VjdZVTVqcndabzh1UXM4cWdqWitPRElGM1FhZHhLTmptRHFEMEZTMUdBcXF0?=
 =?utf-8?Q?QYQm9+R00vZqpfi6H7DiXkxi8q+FEpRx/h7KO?=
X-Exchange-RoutingPolicyChecked: kd5i61E4EDH7oif5vihPTeMMbsLuYRKz3fDzWzfJ2IKHmtakmuKnt4IQGnE83saVyeD/Li4sJN/bPpNylRGEwKPt5G2ZJU6wOXzwdTHZ634jTWZz1LVOl4Ah+VGASpFKUob9nHfe2ZizMETfj3dIm4P6mw4XFwTjcHQGQIz2yIfuyNkef+RTXXjSps00Px5R9Ke6pbWSbLTuq0cl71YC8phb7vqTINPATPBgW4VzuOVnioVFSGQSXcEercHG0dkAu/vGt6KkRwRHt/J2PAHwUNTkBwQVAdS/YnVuVJ4cnIRF9JGlGNmk7ir6HXzzz1xt/7NUUDlZG3CjXI19cdqRUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f3f5584-ae76-4f60-2f83-08de8ef6042f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:20:42.4854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H4RKw/gra9GMY2Z5XXC9ebBFF1H9VeQtI89UGXdYcisyAfNHqqy9q9NqWgipw9/oLhgIhxC3PLq7dPkXzRnDVddZAN82HH5XXqEUrO5Ro2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9F837365046
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Define the disable sequence for a writeback encoder. We only disable
> the encoder if no writeback job is pending, if it is then we just
> need to disable the wd function so that values can be updated
> accordingly.

Where is this handled?

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_writeback.c    | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 864d4a28de10..870fbfdddef5 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -559,6 +559,33 @@ void intel_writeback_isr_handler(struct intel_display *display)
>   	}
>   }
>   
> +static void
> +intel_writeback_disable_encoder(struct intel_atomic_state *state,
> +				struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				const struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_writeback_connector *wb_conn =
> +		enc_to_intel_writeback_connector(encoder);
> +	struct intel_crtc *pipe_crtc;
> +	int i = 0;
> +
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, crtc_state, i) {
> +		const struct intel_crtc_state *old_pipe_crtc_state =
> +			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> +
> +		intel_crtc_vblank_off(old_pipe_crtc_state);
> +	}
> +
> +	intel_de_rmw(display, TRANSCONF_WD(crtc_state->cpu_transcoder), WD_TRANS_ENABLE,
> +		     REG_FIELD_PREP(WD_TRANS_ENABLE, 0));
> +	intel_de_rmw(display, WD_TRANS_FUNC_CTL(crtc_state->cpu_transcoder),
> +		     TRANS_WD_FUNC_ENABLE,
> +		     REG_FIELD_PREP(TRANS_WD_FUNC_ENABLE, 0));

All of the above appears to be steps that are traditionally handled in 
encoder->post_disable(). There is a FIXME in hsw_crtc_disable to 
collapse the hooks to one but until then it is probably a good idea to 
keep it uniform across encoders.

> +	wb_conn->frame_num = 1;
> +}
> +
>   int intel_writeback_init(struct intel_display *display)
>   {
>   	struct intel_encoder *encoder;
> @@ -587,6 +614,7 @@ int intel_writeback_init(struct intel_display *display)
>   	encoder->get_hw_state = intel_writeback_get_hw_state;
>   	encoder->compute_config = intel_writeback_compute_config;
>   	encoder->enable = intel_writeback_enable_encoder;
> +	encoder->disable = intel_writeback_disable_encoder;
>   
>   	connector = &writeback_conn->connector;
>   	ret = intel_writeback_connector_alloc(connector);

