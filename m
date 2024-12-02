Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399809DFBD8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 09:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B115110E073;
	Mon,  2 Dec 2024 08:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpbdoU3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0123B10E073;
 Mon,  2 Dec 2024 08:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733128001; x=1764664001;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DonCfhq/Qg20uaqF/x+9+ZGrareIi53bS+GwF0gh5zk=;
 b=UpbdoU3TV0dxezkEITM7mD/kX7X0X8z10ZskJIp0fzfxzHaFNk1cDZEi
 PEhvqjaX0xSoX2ScG8JKS3Fi7N0tA4GAX0fRsSqts63pUWJI/En4DORw3
 L2OQ/11XyYkmt0B52PhFMmncTefKO0F77AUeO/UIjusnCt9218d4Z/FhS
 TO2i82fUjcElaoUyOZrIXvOOevwV2z0CtwVqUw5inO1bTOzNgZYXTDFPB
 FYm4nVtIFk2pDAU796w4SYrpQ+V9JghIez2boDbPQxsJUkWCrTZhgZXlc
 oNu5UZSvJcqQ/68frWvZfSNFN5Lm27Xrexdyr0veeiOZlHSJbBDAcKhmH A==;
X-CSE-ConnectionGUID: iC8nKb5KSBu/j0ULEWM7tA==
X-CSE-MsgGUID: 2ttQexKrTZeXMfRiy4v0kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44659630"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44659630"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 00:26:40 -0800
X-CSE-ConnectionGUID: gIAChTcdSO+HF9Sn+sz9Mg==
X-CSE-MsgGUID: nBtnMeXwQiSvm9UES07bhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="123978966"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 00:26:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 00:26:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 00:26:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 00:26:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MLtorEXf1nW96t065rBJgNh2lC8qj1aIqsIngYL0n45AqXT7fTYYe3RqMIn3si34+yZr62RG1Zm2z9WmWHzky8m78iq50llVVNmZzm+5b7M1N4DdxCSc0b9KS5o5so1wX3vvdtGqzOV9nZ6ur8Qz28VRJg2uzCJEbL9tRoIT4qrsl0kOzYM5wMdM8qjy0yR76IZZ5DsFyf4ypzGkmg67so9JzdvitaCTlhh9b5z5V85OKNaaFKlTgpjpcSZZywAKEm9JUMENgJNmtkvJZ8sApWt+fGNYbEAFx74IaZLviv9+IN71OqxB10+Ms/hhKrofNofUvKlNl7dV/BRkMZIBSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v4noSmflqT+CYRKX6n/BgRCZquCVN74mmOUH8hAObRc=;
 b=rsf4NoHFzmwqJREnocQjn0JpUR8A/uHi7ugNyM2VFQ0TZph2oa+l2s9hDIOtyE8r/KXXNj6JXd1DpzJ90DYRXINST2O4apogcOONHlFADO36zYIxvofukl4ofmPJUxtNeKaBurHe3asVrv88hB1CNpjfKJDp60uw/I1pUuvpGxG8gu/kbKsC5a4knGCToisrSZSJvgV40q+YMPpoGgnsdCVtCKr2H3r4f4XxlfC+0595dKfMI/Z84PlsGaMpAPvSCJuCZq6N77qhRnFYVZf/zCVW+bXosUJ+Dx4Gu1dMVYpp66+CuYAXg8HYwuHUbTvsSGQDDkXBwNVLKpY16hhMwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Mon, 2 Dec
 2024 08:26:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 08:26:34 +0000
Message-ID: <ff6b454a-2f23-4671-ab95-722179a8a921@intel.com>
Date: Mon, 2 Dec 2024 13:56:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Remove log for HDMI HDCP LIC check
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241129090530.1814774-1-suraj.kandpal@intel.com>
 <20241202060410.1872121-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241202060410.1872121-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7073:EE_
X-MS-Office365-Filtering-Correlation-Id: fd346de0-42e6-45d7-a3fa-08dd12ab0851
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eS9QQjl3OXlmUmtpVjlzTDhjUWMrNExiOWxGZWpDaVhqVnhPd1ZnTzZIZFVs?=
 =?utf-8?B?YlYzN1dEdWltWVY3VyswbmlsZVpFZlY4ZWdGS1QyV2lqM2gxNXp2REZ6akRL?=
 =?utf-8?B?clgxUDVMQ1VLNlI2dkp3LzNycnIzQmZkWWRXeWNlaFFMb05rVGZBSU5tS1BT?=
 =?utf-8?B?M3FMcFpMR0tSRlE5R1dDTFM3d3hjZ2lSbHlFNG9JbkFGV1ExaVVqenZmc1VK?=
 =?utf-8?B?WkZIZmUzZkg3aE9KQmRQb2VUTkZaTktTVldGbkQ2Z0JZcGh5Qi8xaEd1dFJM?=
 =?utf-8?B?NksySG9tUmJaTzVEUTJIc0taMFduNUl5WHVzWFVQdzZycXVkdlZyS1F1RzRw?=
 =?utf-8?B?dWs1YUlXTWkzS290RERVYU8vL1BoVUo4NVRJN1lxZWNXNFIxSDBRVUQ5eG9r?=
 =?utf-8?B?elorb1hpdjZaa3dmaHlqaHZvcnJ2NGt1U1dHdlFETWh5UXZwQmdZN1p3bEVs?=
 =?utf-8?B?ME9kMkVDWUF3QVE5STcyVEVWYWVCOW9mM29jM0hLSENoVmtLdThDRW4xbUJ3?=
 =?utf-8?B?Z0ttZEdFQTc4THhQbFJxRWxzWWVzS0JIQWgyME1SNUp4d1JZNk9tcHc5QUVG?=
 =?utf-8?B?SVJ0eWZSNlY2eDlOM3B0SURwcS84a2xCWXFGR3VSc1R0dndJQk5mNmU2azNr?=
 =?utf-8?B?RGVTR0xpRko5NzYzV0RuSjFRdjhmNXgxR2ZVZk1rU0FlTEtYdEdlSEpKM2xX?=
 =?utf-8?B?YllmSUdTSVNRc0hRWTRmMlBCSnR0bUVzbExuM2NuR2F2clk1dmVMenpSeSty?=
 =?utf-8?B?Mk5Bd29kRTNEcUNlNWJFQld3YmVFQlBLWWt4YTh6dERab0pxSHpjNWI5eWtS?=
 =?utf-8?B?anBITG5PbUI3K0J5NUJSWkxJaDd5dUNqUU5xNUZ5NUpVcUVoSUE0ZUZxTUp5?=
 =?utf-8?B?T3ZPbWxhQVU5RlQvSmpJVGhjZ1c5ejZHbEIza25xbzRiWVlkSmxJcHd0WGov?=
 =?utf-8?B?Mi9vV1I2dnFVRWd0WjJRWnk4K0VFWW9lVkszbUN0SHhNbDR1UmZDNEdvY3VU?=
 =?utf-8?B?Q2owZitFWlhEekxKL2V0Q25taWJVZEtUWXpLRG5tbHFQQ2szQk1qZ0hHcmFM?=
 =?utf-8?B?eksvVy9wVEI1NlpxYjNISitXdEpmZlFnL1Njems5ZnVUanIrMnJrQTdEUkZ5?=
 =?utf-8?B?eCtObDNMTXBGUUFsMEEyNkErU29iLzBVVklUY3RYQ3ZmcHhxemxlQWdjSFJv?=
 =?utf-8?B?MWJwa0Z0UXFCS0RGblh3M2VZUzdqdGY1YlFucVAyY1pNMmFtZUx2NTNWdjYy?=
 =?utf-8?B?SWVvUXhRcHdocU0rTXFkcXZlUTE0VFRuZ2pUZnE4S1NNdWVHNUJoc0ttWlI0?=
 =?utf-8?B?WVFya2lJYkU5Q01DcDdWVndJWXQ0aFVKMThUSVNSaldlTUYxa21yT3NsdTdJ?=
 =?utf-8?B?bkY1czkvcTVPekV4c3ZZcGQxbXJkd096cmEycTNMb25TTy9LazExc1ZxV05V?=
 =?utf-8?B?STNzc2xmVUVsVlhZMlNGMnZGeGRXSlh1ZWVORDNUSU9Ga2VmMlBKOUwwRE1C?=
 =?utf-8?B?ZmloOGprd0xkcm42blh4NWN0dEI0RUhyZHNRY1BTcWwybmd0QzY4TUFqbUdq?=
 =?utf-8?B?QXZ2NStLQ09BNkx3RDN1M2NPRVNYVllZMWhTNGJLb2M3UWNIUVpnS3dqMitT?=
 =?utf-8?B?S3paNlQ3N3l0U1J2cTh4aFlZSmwvQmJsa3Z3c3ZlN2dQQXozU21jdDFFUjd2?=
 =?utf-8?B?ZkRiUHI0VFVvN28rb3FKQ05PRS8xek1BRXlwWklRY2hzL1FYQVZLWlg5Ullj?=
 =?utf-8?B?MXJKVU9KMXJ2SFViY1Y2ZUJvQ1pEZEhpYXhuYTNtRC9ud04rMjhuWDkrSm9F?=
 =?utf-8?B?TUdRVDBJTnRpUlNac2ZRdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckxjUWdHbWJPanloNnVqbGI2c0w4UVVsVC9PTDloTUU1eHFxb0dJaWh1OGp3?=
 =?utf-8?B?Y1JtQ1NhNkJGMmpoa25KVFQ2WnJUZmFqK0ZYL3ZKN092R3RyM2ZqS1ZpOHlM?=
 =?utf-8?B?K014TENjZ2NzU0txQUE1L2M2M3lwQk1vdlE0WTYweGcyOTZBTG41MjBKVm1V?=
 =?utf-8?B?WVhEenhVL0xlMXNiODdVelJsdUtqNlU0c2hwZXlmWURnYWtXTE5GdWFQaU9s?=
 =?utf-8?B?TW1ZMG9HWEQvTVdqQkozTTFZdVQwcEhZU2lkRWdFWDNxS1VZWGcwRTdIUmR0?=
 =?utf-8?B?TGtVY0xoNnJLYkVuOFRCbEtIa3QzQUNxT3JnMExDUnZkR3JZM1ZidnBWMzc5?=
 =?utf-8?B?c01udlBZVXN4ZktkUVl5OGFXcHdHcnUweDJaazExaXByMW91dnUzY3g5TmpE?=
 =?utf-8?B?Qm8wMlBFWGl3S1dZUCtUSmE0ZzJRMVUxWEVXMTRHY3pMeGxXeU1pSUp4OXNU?=
 =?utf-8?B?NThCaFF2enVDVlB4ODhOenpZRTBINDE5NGs4T2dwbkx2ZUhFZEVtTCtYcllZ?=
 =?utf-8?B?M2tiZm1uQmFpS1hHakdWOG1zR0JjZndrcytMUGZ4YkluN2R3WXNLdEJlNFdM?=
 =?utf-8?B?MHlZTmp3YUk5MUhaaXZpOTdXRzRLL2NVRVJxcUt5RjdaVnFncEZzMlRtMDZZ?=
 =?utf-8?B?VzVZaTFVd01IOUprd0RhWEVUa3JwMHNtUFZKQTA2MUw2a3FQR2hGT2xpNDVp?=
 =?utf-8?B?bHAyMkpSM0tZc05BWXJaWlVHZWZLc0xKWllaVFdJU2REbDZpQWRWdWRxY1RK?=
 =?utf-8?B?c3AvbFNVRzdtNHlnNFg4cHRkWmZ2Rk1sWUJjZjNDOG0wR205QTREQlBJVUhB?=
 =?utf-8?B?UlVNUjJJMzhoOFZMZ3FaRXFuMjVrNE51c1NhNTZQUDl2NUpSUVBmMlFKMmN5?=
 =?utf-8?B?TkV5YitmYmg3RjQvL2xOaHZta1gvVWFtdGxIemFqMXMrRmJBb0lzUVFMZ1pv?=
 =?utf-8?B?N2IxOWgrZ0orcDJFdStiSTZiOWp2MmlFeThhTnViZDVuYmtGNVRvemJoOHNU?=
 =?utf-8?B?bWVQSWlOR0QzYkVuOVRSTzU3a1JMSW96QjZDdnQ0SEI1Qy9IaTZid2I2NDVH?=
 =?utf-8?B?bTJGRXdONzlBdGZZaU03cVRrbjYrOTNsV3ZmNmdsYTloay9JczNtc1I5ZkNO?=
 =?utf-8?B?ZDJTYklsUE4rak5YUzFVOERoTmowVkZmc2lQZHdsYUx3QTZqVzJ2aTczRDdk?=
 =?utf-8?B?dGFCK0trTGtDQ2lpYzl4RzQ5WXhnWVJqVU11UnZJMGkyeW9RUzlzY0xQODEw?=
 =?utf-8?B?YmNDUmtuRStwM3VyOTN1eTVNZnA1NGQ2STB0d0pEeGxpMkVwb25Fc3Rmb2Va?=
 =?utf-8?B?L0N0Y1l5aUxGN3VHQ0lsUTVqL3ZaVFJOdFI1QmZZdUNsdHUzQUU5cWdMZGIv?=
 =?utf-8?B?cVhJYjZvZzM4TTVWTm9ZVkNpZnVEb3Y3SWNVYlhHVkxiTHg0UWxaTThvalAx?=
 =?utf-8?B?WktaWHJnY3B3aUtTcGMreVhNaFMxcmNUb2ZaUEYrUW9WMjF2ZlNvVFM5ZVFp?=
 =?utf-8?B?T2g3UEt0eUM4OFh0SlE5T2dsZmdKVlJ4MGtuSmJFT042dTJRNUhtYlVYYVlJ?=
 =?utf-8?B?bVpNVFZVaVJmRmdMZXZKQVF4SHlzWEZxS2ExL0FoZS9RZm9DOFBwM29QSElL?=
 =?utf-8?B?eUZ1S1hTdVplMWVhK3Z1bnVSWmNhcFMzL0YxYnROVW9pTGp0TzM1R1hTUkJV?=
 =?utf-8?B?Y0h4dkZ5aUxHNjlWSTNVWnQwTlZuNFZudElBSG5xOVNUblJFWkV4Z0VTa0h5?=
 =?utf-8?B?bW4vK3U1Nkh3b2hNMFZoZjlQbXBqUEFWNnViWHF0MkE2MzNZdzFCOXFMSjc3?=
 =?utf-8?B?OEI1N1cxL3JnWHFMbVlPM3RIMndBN0t6VWQ2aTdmK0NIdWJFMXlkV2p6Tm55?=
 =?utf-8?B?U2NId09keTR3RzE0ckVsRSswWkRwNHdUNEpoRXFjMkUvRFFCRGFRVlZsY2Jt?=
 =?utf-8?B?Wkl0UHBOSmpPOFFmV1VzTUloblYyRXNUOFM4V2p0MzE0TnJ5L1NkN3IxcUI5?=
 =?utf-8?B?RDZVSlhEUGlQZ3U1MlJyeEQvbWZCTWZDRjM3akpVZWFrT3MwMnpsK2FLMFZp?=
 =?utf-8?B?SVUva012NGh5emMvVlhLcWM3LzRaRzQwWCtVMXVaN05JR0QzSGJ6Y3pnVzZp?=
 =?utf-8?B?VmlLVktLc0g4bTVKalNmclRMUkVzclJMcXlQZHZOVFU5Vnp1NEVOWmRPdkdM?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd346de0-42e6-45d7-a3fa-08dd12ab0851
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 08:26:34.8432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6RDIg+iTQGGaA+GsZ+2iqEAjR/dyx4KQhGrKv2DJAjvBvOSU7T3ZcnEyQlCMGDGZ5rOi5jtXc5DyreHPRZFZU+6GLdEt4bzZ2NKcRqAgf0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7073
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


On 12/2/2024 11:34 AM, Suraj Kandpal wrote:
> We don't need to shout out loud if there is a Link Integrity
> Failure. This does not mean HDCP has failed, it is expected and
> taken into account in the HDCP Spec. The real failure happens when
> we are not able to reauthenticate and get HDCP running again for
> which we already have the right logging.
>
> --v2
> -Remove the log altogether [Ankit]
>
> --v3
> -Remove useless display variable
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 23c270a8c4aa..63e56c9ff516 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1600,14 +1600,12 @@ static
>   bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port,
>   				struct intel_connector *connector)
>   {
> -	struct intel_display *display = to_intel_display(dig_port);
>   	int retry;
>   
>   	for (retry = 0; retry < 3; retry++)
>   		if (intel_hdmi_hdcp_check_link_once(dig_port, connector))
>   			return true;
>   
> -	drm_err(display->drm, "Link check failed\n");
>   	return false;
>   }
>   
