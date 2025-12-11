Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2090CB583E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 11:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B850610E2C4;
	Thu, 11 Dec 2025 10:28:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1MY7+5q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A234D10E2C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 10:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765448906; x=1796984906;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wwo3bkNaIQhxQyT8ESfAdSUmEJjwkvslcOwvYzUZwz0=;
 b=c1MY7+5qm6YRZwi1a5eQyJbUoZJYrs/1h4mxUUXuEavL8u3Qp5O8XF2W
 cTiM8L7iRVT+llC54yhZln5rNkxDcCV4tOuQ/1VieTJCevOkPojKDYkuM
 SX4YYNkNc+HnwWa1Atbjd1yhIAsMj1O+t9Sa9RfqFVfa7nNRITGb19L03
 qu1QCQMtRy9H7CYltxnM4TUeAaa4xBsauKXQ9vD1b6YH6GDFFYZ/LCF2X
 8Zex+f6LjskGSb3+ebqHtWdxSUjuE9UyJ1ck1x9cLMCsMPLR9o0Az3jGB
 xVLkwQlKsGXeEeg6EXwu5FkvA2184Mqeq1Y1kwsP/j8+6bx+NJg+8k+sw A==;
X-CSE-ConnectionGUID: cvCuODnrQbSQD2ZVL16g5A==
X-CSE-MsgGUID: sg5V5BYDQZaPYDaBXtcmbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67502687"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67502687"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:28:26 -0800
X-CSE-ConnectionGUID: gZIPNHTkTvSZZlxDTWQmLw==
X-CSE-MsgGUID: 1fkpaT6WRnaAX+pTjkdswQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="227823351"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:28:26 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:28:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 02:28:25 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:28:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XaAf2/qn6HW+xonjsJuIm0aBRhFaJz39N4RLTYHUmG3s7K73x9BKaYolCz5I8ZPEYfRtB0WTAbTp8iE4kZGojDMgEy8ZMdaCZH5gu8IjEDxMXayvRsZZaFMBd0l/MlizvjVuVu7xn6JvejuN1tiVm0MBOsD95sBQiUbAEyJDkeoweql4KUOcOk/h+CfKJu4eSWmBm76JB9JF/KuvQUz6N+ZqZSwvrqtr2GYANzzFR0Mz2fNhUhRyHKO6dBqL2mGnoplaCsVnvX//kY515e2K54pr7rVsPEuWB1wK9fK1oplw0zLz5kvzyGJbl47p1DXUgJGJTyTl7Yjt57vLMvEruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JneyperEv38QFToUNaTDUP3rFi8tdUKovyFFADx/Vm4=;
 b=tu+nRvux6SAQ6nn+WWqtEzHno+L0tQr6+wC8zeWE/aCV9mhutqVppDrq6prPUvXsk0/q5RYv2+Io/yy1Dz0wBqKMlMnccPvlF/H3LZGJj3KbteNhoOlODAyCfTzcLic1BBRfIqZWDXANLcj/K7xBiuvz2aP2MeOdb8oAL/F1wxmTc8gF8PLhShlD0rGCypwSP7tz/o56Td2DLWhDoWqhZv80R7a+r/q79QwgqC5q44tzbvR2zMm2n2A/QpGnrbpxZUYcHcW1inr5AwgRhGHhz7lr1tNtrHYil5cX/YsZzd//1IcMZSe1vM0UtEKe6E/chpwjFSk7AFlNLXGLQosV+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CY8PR11MB6842.namprd11.prod.outlook.com (2603:10b6:930:61::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Thu, 11 Dec
 2025 10:28:18 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 10:28:18 +0000
Date: Thu, 11 Dec 2025 10:28:08 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Message-ID: <r5uqgk4mfy66npkv7dkix6glsktqwx2xng5yrphefda44on6wi@zkuz5wcnhcaz>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: LO2P265CA0386.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::14) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CY8PR11MB6842:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a813147-92eb-479a-8031-08de38a00025
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUlYeVZNNVFoNnRSNWgyK3F5WWo1bkQxV0lzNmpCaTUxd05yVkdhdnFYUEQ3?=
 =?utf-8?B?UmJkL0NNeHlGMFI0RWlSa0k4UUhYcFZrcmVQYUlRZ3JOT1lTcDhoZjMyS1Qr?=
 =?utf-8?B?STBDZHpNNDM1SGsyaGRuaWYxbXNQV09Vc1NTOXU0U05QamY1Z3FIbXlWVnV2?=
 =?utf-8?B?czFQbVBLMlBteno2ektpM0QwY1Q5QmNsZVNqeE9BdU0vY3Rqb0FuNkRUSjFw?=
 =?utf-8?B?VDg5amxVRE5NdHRkejFYMndmcHcxUnB1Mk9qeHJVK29KUklHdlVrbDZ5NEE5?=
 =?utf-8?B?WlFGWURsMkkzUW5RYk4vdGYvQWQyZFlJTXJMbVRtTXRmalRXMTM0K2FISFZ4?=
 =?utf-8?B?TlRHc2k5TWsvcWcybTlqN3lkS2kvNEtaR3N3RjVzVC9EbVNielpJOURnbnQ3?=
 =?utf-8?B?d04venk2NENXVUpGWE5yWVpwUVlqSVRKOE44SFFNRTBJVWpOQjJCTWEydXAy?=
 =?utf-8?B?M3FOMG5ZODhxejRqUXJ4MkU5YmlxWlhPeTQyRWVyQlFETit4TTMwSnV5UFB1?=
 =?utf-8?B?aGtoZEhmeDJPZG43V2U0VkFZWVNna2M1ZVlLLzVBUjg2eURYU2UyM2NySURB?=
 =?utf-8?B?dmQyalZyVXA3YUtPTEJhU21QdGFPQXZ0TDFZbmtvaVFVWEpvZk9qanZ0L0pw?=
 =?utf-8?B?eHlRaThpeitBT0VwcFl1Q0VualVwang0UmdTVHd6RFpRN2RYbXVYWmZBemVl?=
 =?utf-8?B?bitxOXZHNDBtQ3dDUHlRV1hTRWRZNStRajA2bmNJdjNPSzM3ZTh0WDRYMmZm?=
 =?utf-8?B?REF1THVkSnd0MmplSWowK0preERiZ0V3U0V6UzVUalpYY0ZYcVBqQ3lManht?=
 =?utf-8?B?T0pxbWRJeEQvU2FFMS96Y3JheHVRZ0pZYm4yb0FjTld5eU1pTllBa1VsRitW?=
 =?utf-8?B?dFczaFRlZVBuVEo5V2xnbVQrdlIzVERQY3lpYUZQcTR4cUE0eHVuS0dkWmIr?=
 =?utf-8?B?bGFlRVVkd2ZhQnNta2hGS3dNbnNCV3FNQmlsaitmdlI4Q0dneHJLQmxoOExq?=
 =?utf-8?B?dEdTdlloM3prTmkrb3plZUpHV01wa3hmTWhtMGUxTmR4MUdJQk94cjF5bkdT?=
 =?utf-8?B?ZWxGNEd4TDNrekZnWEQvS3RpN2RDbzRRMTExd2djWk5hR1pjcFI5QmV1Wllt?=
 =?utf-8?B?cmtVS1NNLzNYSUV4V1lyVkdGcllneDBBOUxoTkpnSkZ2UUZ3aGo3K2JXeFBW?=
 =?utf-8?B?c3dUL0RIckkxczd6TVI0a0NOUmxTT0Z4bmF4SFFpTnR4cTZyeWJSUHVHUUZO?=
 =?utf-8?B?TS9VR083K1BDRWcxZjlQaER1ci9iTGRhUVNsNGZiMThpWk54dWEvbVIzV1JK?=
 =?utf-8?B?QmV1dURDZFdPMXljcUdVZ3R6dEs4dEhDSlRmMzVPRUluSTNiZTRZNm9UTlV3?=
 =?utf-8?B?OXc2aG5lM0ovYzNNNDF6WjlzV2d0dmtPakNUNUdIRzEvRmRyRU43QW1XWUVm?=
 =?utf-8?B?OVhhVjU4RU41b1JaL2ZyVmtTZ1MxSFp2eUtIME0xR3RiSkNkY2pPMHJJYWx6?=
 =?utf-8?B?Tlo3TzJHenp3KzdtblBxRmVoQTJHRlFHZVhOWTBnVW1EeXhNU0JtL2dQODhM?=
 =?utf-8?B?bWFUdDBwRTh6SFZZRHUxWVlyRmJDWVUzcml1dVVqNnE3VTBiQmRlVFRDU3Uz?=
 =?utf-8?B?cUZSTitOTWU5MFc5c1Urbko3MERXWXV2Z3c5SlgxbGRqMWRPOWliemkrS2Y3?=
 =?utf-8?B?RFI1K3hyQTROL1pLZ1BGTUREMGp3WkNNVWkvaFBqSmJ5aHZSK2xYY3djYndr?=
 =?utf-8?B?bEp0eWJJUDVZc0ZWd0MyOS8zcVg2ZkNGcmlFMjV6R0U0cGxpU0Z3RlpUMWVP?=
 =?utf-8?B?OHNKYzRBajVPZ0wreXVxdkNzQmxZYWowYVJQQTBhbWkxTUpmYnl0RzRoSTFz?=
 =?utf-8?B?eGtYTm9ZTWZycEk3RUlvTFgwbkQ3L0I3NzMrbysvSVRzSnljRzZYVllsaFl0?=
 =?utf-8?Q?aBxDcKIDSQVH6n6O6mhBJ7FtLPVSjokT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkZDakxYWmlqOWdkbm9rWlo1c1Uvd2JqamU1cDBWS3ZzU2RZalVPTzlMWktH?=
 =?utf-8?B?Kzh2VEljd2dSNXFHQlhuWkVaUERDbHRpcFBMbnA2QkFtY3JFbkNMR1M2NDl0?=
 =?utf-8?B?eTY2MGtSR2RweDlZNTBIbk1kYVQ2YWxCcXVhenp5QVloL3NlaGhRSjNHSUxX?=
 =?utf-8?B?M0lnb2RXOU5vMDRYb3RyVERYNjlLRWZJc01SL29ROGxmSnR1ZkpWWTcvcEVZ?=
 =?utf-8?B?ZkxjSlNETFpWWDB4cUduUjJSNnZtb2ZrdVV6czdFVy8vZTVqZjVyZTBObjlv?=
 =?utf-8?B?eU0xRG9qM2c5dFVCb3VGSU9Lc0ZsWlRwNjUyQUd6czlPWlZ3UzJMaU44WjB5?=
 =?utf-8?B?b2hFWTdMVU1WLzRLUGtSQXdOMEQwMzNhcTNQV0tVYzkyZ0pkL01HUkQrQmc4?=
 =?utf-8?B?bks1dHR1dU5rdEIvZklDRytUeVRCRVpBN1JabTFqb0l6NGNZVDh1UUNDTkl4?=
 =?utf-8?B?aDJTaW1GREt0dTlydjJpL3JhY21pNXptN1NtWjN1MlZVdWtCUXJHZG13Y0FR?=
 =?utf-8?B?YU85cnpGMklVS1VVb3BYR0NrTGJxbE94RlE4KytYWnZwZENDTTZGYWUwQ2pz?=
 =?utf-8?B?WUhGZjAyN3I3WVB4cUZ3M1lZMjlMUkwrRWN4R3loY2Fqc1djKzJ1Zm9sY1k2?=
 =?utf-8?B?SDc5Z3JzUjB4V2VQSnUvL2hqNVlCZ0VOOXlYMUE5dkRENHkxYjBSWVcrU1Rt?=
 =?utf-8?B?WDNOUllkRmpmWmFjeldzeWZKN3dGOXRVbWNPZHdwWFBXc3JVWDBBRWc0U0ZG?=
 =?utf-8?B?NGRkL3RSdlo0M2RteXBEN3dycGxFb0VEbTBoUHlaMCtEdWZyS1lYY3Q4c2dH?=
 =?utf-8?B?bDJoaGZkSXZtbW9wekJwRjVOTGdSWWwwWjdrZ1kxZG0zVnRGQ2ZPK2piY2Y0?=
 =?utf-8?B?S0w2cmZSL0dGM0ZRZDNXVW1HZnVmbklBaVlqL3pENTJ2V1lDanpHUFlLS3VJ?=
 =?utf-8?B?Y0NTWHZCTUIwRjl3UGJQNndnYUZVaW04TUtkSTkvSGsveGIzSVhVSjg4TXNX?=
 =?utf-8?B?UEZSQzhoNWtwTVgvSjZoL25FbTRPU29pcWVWbWJIR29ianNoSVQ2bktNK2Vo?=
 =?utf-8?B?dzh3K0hVb0xYRlU4MnBLellLTTV5Mzl5bUYyMnpiWmxxbTBpR29CMzRwamxt?=
 =?utf-8?B?Yi84NHM3Z0gyUWZzY240d2xaK1NKNUhiNERwYkl0d0NlWDNpM0pJZHlVQ1cy?=
 =?utf-8?B?NENZRTM2UFpla2M4MkdSRzZIQi93NUV6ZkdqSlg0Y2Q5Qno5aTVJQ3lyYnk2?=
 =?utf-8?B?RjFGWVJxZi9VVUF0S0ppTStXd3Z2ZlZJWFFXeGw2NndXMXROcmJ0MGFzNEdL?=
 =?utf-8?B?b3dNZmhydFdZaVlrSm5IZjlhdDhLUVgxSVRSWHhFTWdtWWppQTNDTUhpdHJi?=
 =?utf-8?B?VUFxS0dMWXFjUjl2aFM1QzVRQUhFWE5OMjFXRm0xRFBjMmhVVHNpRTQyODFi?=
 =?utf-8?B?a3VJUDdmNVlUOXBieTlBa3VDdUd0anFoMmtrL2pZT1JkZ05ydTNjS25BbUlN?=
 =?utf-8?B?dEhEbk1oSkhiQytQOUJ3WDdac0NuK2RtMDdHQTRlRHdlVUxjS1g3aWs3cFVX?=
 =?utf-8?B?MWRSVFJMK2hoWDJyS1NZTm5SY1J3ZDFzOWVnWHp0aWZzajZhN2lpM21UYWt6?=
 =?utf-8?B?dW5CNGppN2xPdC9naGxTbnhkYW9JVEt4WGlwUTByenA4RGQ5Sk50N0NhcDFi?=
 =?utf-8?B?d3JUc3YyaVpPQ25NSWltWDZCQzBMMlI5S2lwZWEvY2VocTlra01sYWpCMDZE?=
 =?utf-8?B?RE1NemZxT3hMbFFBRmRoa0ZPcGhMeXBBNFBNNGNWOVNpKzJVWHlISXlkMVVY?=
 =?utf-8?B?MlhBSlV3c2dXTWh0UG1NM1JkcjZuZUxMK201bGVYc2xtNlZONUYybFBLVGhz?=
 =?utf-8?B?MmY0enMyMVFvVlVQSEpiS1hCYk5iZWZRWVhCTnNLKzdSUzJ0bHp4OWNjRzE0?=
 =?utf-8?B?QmkrL0dIdXBOUXNtMkhzM3BKMzhlTHVjdmdCN2pjUS9xdG9FVklONDdBc1pT?=
 =?utf-8?B?T0c0Uzc0WFd5NkNxWUlCTUdKOUcya28wakMrOWpoVmpHc1VFWG5ma0tWbjc1?=
 =?utf-8?B?UGxpUmJjaytIY2pCbENucEpvWk1rU2wvbzQ0ejN5Qk5kOE5nRk9MK2thSE5k?=
 =?utf-8?B?WVBUQ2FvM3pOSUhTVU94NGR0dHFuaGUxSUpKb1ZLMGZPRVE2b205S0Nremhu?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a813147-92eb-479a-8031-08de38a00025
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 10:28:18.6610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: om3Ez30VLo2lPaQfZYQTdNdM1OZNks9zSTYdL0QvZEXQap4YnKo0ur1nrlqlV0oFV01w3sOVrkI9CgzCEuTrWvx8ZmZSqSvxIIRlSwszwUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6842
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

Hi Sebastian,

On 2025-12-10 at 15:51:08 +0100, Sebastian Brzezinka wrote:
> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
> initializers unsafe. The i915 GT debugfs tables were using positional
> initializers for `struct intel_gt_debugfs_file`, and on configs where
> the layout differs (e.g., presence/absence of the `.eval` callback),
> this can lead to fields being initialized incorrectly and trigger
> randstruct warnings such as:
> ```
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>   casting between randomized structure pointer types (constructor)
> ```
> 
> Switch all the GT debugfs file arrays to designated initializers. This
> binds each value to the intended member regardless of structure
> reordering or optional members and removes the warning while preserving
> the intended initialization.
> 
> No functional change, only initialization style is updated.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
