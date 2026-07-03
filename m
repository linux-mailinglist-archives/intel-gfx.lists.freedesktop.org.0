Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5ffCHxApR2ppTwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 05:14:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70436FE215
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 05:14:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LoDJRlsB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B60210F61F;
	Fri,  3 Jul 2026 03:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D40810F370;
 Fri,  3 Jul 2026 03:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783048459; x=1814584459;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PClthtn8Fj/Go/Sm9GjcythEj4EUYcj+ILzMYSE4i+c=;
 b=LoDJRlsBV20+sa74RdnGh7hHvEkAnvoawjgT4HWYNLTOGjICKDyfsZJH
 mfEDtd8ttbPkMSemxx9xHSYCDpR6myH2zeXosIbcGUuoGtn6UBKDkrTbL
 Pe4n41FkaHG9i/3IXjXJHbR2TvMIyXPEMYX5ZAC2U4LuGB6kWMms+meUY
 4p7wOmMllR3S8QsyML6BUUevo2sFUoDDAVkXZoILBiJETkKr9lX7GnZ0I
 WL6X1Qo6oVSma45VPL3sxe5KbSKgfkOJRJJJOtvG5+hWV8Qk7rD2qk98z
 FKdhA40BRYOU1LbW+uUKv28OfR0baOn497nLsGjBRnYOTMXbNbDoqxZer A==;
X-CSE-ConnectionGUID: IcJa14k2TMeYF965OT2REA==
X-CSE-MsgGUID: 8/RpJ+UCRP6HRopD0YfVxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="87713488"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="87713488"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 20:14:19 -0700
X-CSE-ConnectionGUID: DmGY414RT0a8RSbgDacG6w==
X-CSE-MsgGUID: /Xj2s3FrTmmk6taKXFcA+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="257890943"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 20:14:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 20:14:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 20:14:18 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 20:14:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tNLgb/rrFuizMdeEbyp7wgYasN53EU4CrJReBhWEHyPUBaN76vAdSPjV17LZbKZa/KunXbKsnmGWJKPQESunVB4UO74bdnhJBFHDmd6nUUSaqotRiOIe+qdEiwr2+HjDs/PVzGYQCo89k/+5cqTNUpaDE4xiG1WDn98FC1VaJc89SW0ILf5feTMfnmWE3ke/oYqVk0Z4jvb4DJ3aZndiVzWF4Ohdv8abiQO/F7MtMnU+uvwEKtQumYdH6M1eDxZ/Uq+MIewkor3XuPDso+qo640ptRH+9kgcO0ie123PSnwaEZXBZUxm0dr23NVkah4GAff2okgaRKNMmTdDIYwh6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Y/k4bKgv5mPIDApoQ+lm+UpuVPv/AX1OjVsfdiugoQ=;
 b=VMU8Wqs20rtGuJPHNyC0a8eMauuN0K3OgwmYNagVcojoqFKBfX8fBy3sgwlbBQze4Qv/prE5mqZy5uYoy3sFde7nTT0z7hz4KdQteMs3T3l1RjdRNpN/ZYHx9lbmHnbkG0L0Z2iFvXrWDu25uWOFZqHnHilnO8NaGQ/LALazYNQ6sK6Lc6F/zgrIXRH9+8YjGoGN0JrAojYhUvgYT7sq1H4a6EPV41XL6SNm8mlHpX2m/w10nnkCT89j/0OZ/997gyWkHWZyKgpT6i5HFKz1A57TbfC7DvIRaMwONe6x9aNONpB+VK+97Vrzb2Aktqz+hFC6yvjyFoRh6poNrc4mSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by CH3PR11MB7275.namprd11.prod.outlook.com (2603:10b6:610:14c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Fri, 3 Jul
 2026 03:14:14 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Fri, 3 Jul 2026
 03:14:13 +0000
Message-ID: <bd2843d5-7158-464f-94ba-d7217d31f5c9@intel.com>
Date: Fri, 3 Jul 2026 08:44:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>, <suraj.kandpal@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
References: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
 <51f6951d566ceda03eb47402904f8fe91c7a9f38@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <51f6951d566ceda03eb47402904f8fe91c7a9f38@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0114.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::11) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|CH3PR11MB7275:EE_
X-MS-Office365-Filtering-Correlation-Id: 30cc96a9-5d5c-4aa6-1696-08ded8b12855
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|4143699003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: x3UFK0cagrBAxB29h6vt1UFLNodwEOdJkXZ2XhRGwDOIp03I3AaSjruo6SpqxPOnadKufXvd/QJq9UoF5VwDuQiyeikhT3LlCJeiEMaOidPimLlG6RELLq1NGcnBTpcuXRWSs28ki6o/W1rBHupGXxee79Gmi8Qp920Qf1rBtCIzhsnfAsZkcPkEniLl82yYpbw+mk/AJ8nLaD/XjmD6UH7u69sYrMpY5r12QgBVKqQBVkM25JhYmfW/c4YmouMKefk2gIo1SkfPRXmaXT9yGPnxeH3uLvUIB/jioJA5YQkpdRD8+QWl2OTOt83B3zPAFJ1r1n1KnYayIDocsrPkI5cnZbOxW78YFcRSSTNhYWzTnuQM2OOT/ZlmV3riKKyObrdwWDgYq6bDK/c90GKcoBsgwXBMfW7FNLkGmAr1Qt0CDiOp9xN7qZqmomAMsGeYLVWmcqsqdOSI3n45vDkavJq8fgzJgvCLQnbqNiXwvyJBbNK47WilUPY06y0UDJAtgtZEIUJJdlVAoRndJ8+MWu/JzhDrVROaolEYWRI3c2bOBgG28e3YsyBere9HaGtObTBTlOUjB7n5sWG/qtPJttiw2ZAWi5YyIhowTYrkj7lUQ39/jSP0pq6TLUT+YVjEOaWtIyA5tkxWEMD0ST8jNNkYEiQu1B+WtnODF24L/tQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(4143699003)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWlYWVlXTWdRKzlMLzZKME1lODlvRi9HbHVpeE9WMXM2MU43WE5EVTR0Ymlr?=
 =?utf-8?B?N01zRDFaYXFNU2t6VUJadDV0QVFxeTdwYnpvWVM3VmdXWk9zZXJpdWFiOWJi?=
 =?utf-8?B?RXVlcFVERXYwNWxkcElBemRDUzJTTFphdXphZWJXS2xtcktoRUQ0RzlmalFS?=
 =?utf-8?B?YkswNU5GTktUOEVSK3pTcDBGWndHQm92bVlQU1FkdHBSeEFKU0VMcDJFWU1I?=
 =?utf-8?B?T3Y3aXFkV2ZDclRGemZIaUIzOURySisyQ25wRml3UnliRFRsNzlQdFhDRFBh?=
 =?utf-8?B?QTZVc3VlUEtRTS9zZG45SlR4aEZGTmFSait1d2JIUGVOaW9zMnJGeVorMjJP?=
 =?utf-8?B?WlI3YU4yV090SVk1a0FMVXY3WEl2NVVlby9kU09wZjh3ZHlyNWt0T3dBQytF?=
 =?utf-8?B?aVA3dUM2OHQyZExXL3U3UXVNREo3eW1PUmNoK3Z0QnZtT2NpbFlCOVVHc1BO?=
 =?utf-8?B?RWdwM1JteXVYRkJkVWVIUlBWNEFRTkpiUXNveVJCWDVLTlFVMFBQRW00Uk5z?=
 =?utf-8?B?N05NYzBNZHVpZGZmOWJ5eVd6c3dKQ3BQU3RaRVVrenV1WVZRdUhldVJVeTVL?=
 =?utf-8?B?bzg4aXVRM3R6VVltd1pZYkJiR3VndXFuT0xmR1RyYkNwbloxUG82SHNjZUUy?=
 =?utf-8?B?V2thMU1sVWRlQnRrR1d1RkwxYUlUU0s3ZjdsYjkwdFQwOXVoUGRiYWlkNlRw?=
 =?utf-8?B?MXpya0p2blJaVlBMUFJCOXU3UG9FVUV6NllQM0NsdVlFeGJFdWw2eXhBakNs?=
 =?utf-8?B?YklHMjVFOVBOa2Z1VlF3MVNyR3A5Y3JDL1pQM3czMlVMeUhubnRueU9acEU4?=
 =?utf-8?B?Rms5MGJLNHI0SFlkZkc4aWR0cnNaY2NmUjRsZVd2OUF6bGtobEF5T0hDNGxw?=
 =?utf-8?B?YStib3F1WVZjaUM3YnRGdWxRRGx1dGxNV2c1VjZUMGRudFgwZDRsVjhzcmx3?=
 =?utf-8?B?aHcybWhFc0FUZjhROUxpZDhtaWFuaklleE9XZHY4NGNLeHkzZWtZU0d4TkMr?=
 =?utf-8?B?bWhrbnByZkIzQXlEZWM1V0pLTk96NXJrY1FuTk9DVWJSeXVxSmZjOUhPSEY3?=
 =?utf-8?B?YkZwNDVUU2lrNW5YU0VUNjBCNnowMFNTVlh5OXNHWVBwRU1Mc1ljclZkbHVx?=
 =?utf-8?B?R2lHTXFQUzQvZnMrallwSjRGVjdxSDJORXhCMmUyVVRUSUMrbjNCY1NyQUJ3?=
 =?utf-8?B?ZlpEZ3VkWGVtd3NHOVQvaDY4RlNyTXA3R2J0M1hpK3R6bmFWZ2NpcGhBaTBz?=
 =?utf-8?B?WXQrbWhmK245VkorOUF3bFAyNEQ1TDhESUZpQ3pCMGd0UzdKSzRjL2xRREZj?=
 =?utf-8?B?cUFWb2NtaWJxLzNOY0hYM3puK1YrR2c3TGQ5bGZtNWllMnlPOVhtcVVzbDZU?=
 =?utf-8?B?bTVOQUtxUW5qRDZmZnpYZU5QQlVEMm5Gb0xOWVBMdzQ1dE9mdjROYWF0bTV5?=
 =?utf-8?B?cGk4MjVZSHl0aHptS1VZYW5tbXp2WFhGbjR6UDdUd3NOTURJZ2UweWM0cExj?=
 =?utf-8?B?eWF3cGZKbS9HOFIzbEY3eERwOEJXWE0wRDUwSFd1Y0pXaDA1TjQ1WmZmK0E4?=
 =?utf-8?B?YUovb0x2ZHUwUGF1RE51QkdPcHRUWWVjdHcvcCtYb0N0NXFrSURVTitUblVZ?=
 =?utf-8?B?bTIvK2ZjT1krZFZHdWRhVm1rQjJtREJnT0JmY1dTK1FqTDdVb0xVTVNjOThC?=
 =?utf-8?B?MWJURlUzUHhSYlI5VW9tU3J2RTFNVSt1Z3pvUWFqemt0UGEySUV0U1d3TEFh?=
 =?utf-8?B?VmFrZ3lBZmVVcDZwWWh1TmFPdHhVWGtMMWpPMUlzOHBtcDFRVHBITHdUNWpa?=
 =?utf-8?B?NlRqVnFwTEVscVJmUW5YR2d6cFhDdFJiR0x5T0RBRFJNUjJtUGJnRy9FRGhx?=
 =?utf-8?B?c2lONHh6K0V1cTJScXJPdUl0VHZmdjAxbTVPK1ZMa3NWUU1QdUlsSkVhZnFK?=
 =?utf-8?B?VFNTdk5aNHhDSWpQcFVYUEd3K2hraWJrL1UyUWg4ZXFFUy9QQmhJYXNzRSsy?=
 =?utf-8?B?TjhSS1E1YVd5OERVNU9xMTQ3aHVRb0FKTDQ1RXhPVU5JdXYvQVhHZ3BRVzhS?=
 =?utf-8?B?ait1QUpEUG1QeEdzYmRzbHRVU3BZUloyOEl6b1JCbk9CTGhqK1NyVy8vdHVj?=
 =?utf-8?B?V0tvelY2MnZRV0p2MWhoaTR6aFAxTk1LcTRWV05lTE4xV1Q1ZjJZUDRjNUw4?=
 =?utf-8?B?N25VQmJCRXBCejBQNzNrZG82bUpqRUhadkpMZnROYlpzQ1p4UXdoTm9pSGlw?=
 =?utf-8?B?REV4SmFxTVlDK01IQlIvaVdmWXM1Um1raE51YktmVGlkcTd2V0R5T1l5cFJH?=
 =?utf-8?B?WGRYdzgycXhRMi9tZXVaYUw3bWdiVVZ6RW1POWdaR1JGb3F4QUxIMCs2blE1?=
 =?utf-8?Q?fUMDTwoArmeTsca8=3D?=
X-Exchange-RoutingPolicyChecked: dlqQ9bw5LKwZp48wvOO5bJjxrEneFC+lzA39l6mpv2UiSuA75o0fEZrxiGoSetIln9ZcTImol8DYTmFKpSzX4G66BdyJ+l0AJ8FTPDvwy802pkEzR+RPzx2Lczorfsu6crrsO5lLVicTZz01W42Ev5cYa0yfBCii0gx7+zlcnNvuqa5vGDvRR+AupbsTeLVaVXnGFBuvn6c/f9DQbCiJuNbTVLJpY/aynHwynUtyVAhKYlQtxsU6WddltL/dc0cMpaSOjTOYzdlTI2Ms70Ng9Nj6p+uW6flZpaxU6xyR5hLT6XyaXdqYJy/EGVkT3S/dYj0Ihm0bUFpdEwjGp+LA3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 30cc96a9-5d5c-4aa6-1696-08ded8b12855
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2026 03:14:13.6196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NdV46LyrlFCWJPs2uNVbHesDFKQLPn9Zk6YFHwX1sMEM92ySEImLfW/lM9OHYBbWDEJwBTQ/TWSYlYSlI41nOP/GzFvP72JkbNBdL+UN180=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7275
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A70436FE215


On 7/2/2026 9:20 PM, Jani Nikula wrote:
> On Mon, 22 Jun 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> This reverts commit 4f1cab2e4863d96ce13b8d94151f4848e38c3d5b.
>>
>> Allowing SCL=0 on platforms with always-on VRR timing generator is
>> causing underruns and other issues on PTL in some cases.
>>
>> SCL still needs to be non-zero in certain scenarios. Revert for now
>> until this is better understood.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> This would've needed
>
> Fixes: 4f1cab2e4863 ("drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG")
>
> to have it be picked up for v7.2-rc2. Please talk to Joonas to ensure it
> gets picked up for -rc3.


Hi Jani,

Sorry I missed to add the fixes tag.

I'll coordinate with Joonas to make sure the revert gets picked up for 
v7.2-rc3.


Thanks,

Ankit


>
> BR,
> Jani.
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 911afb9cb24e..92af21d823a3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1405,9 +1405,6 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
>>   	    needs_panel_replay)
>>   		return 0;
>>   
>> -	if (intel_vrr_always_use_vrr_tg(display))
>> -		return 0;
>> -
>>   	return 1;
>>   }
