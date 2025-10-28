Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D876C1364F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 08:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5199C10E00A;
	Tue, 28 Oct 2025 07:55:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leir5qxP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F52010E00A;
 Tue, 28 Oct 2025 07:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761638130; x=1793174130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a3yMMTiFslk1eTe0/VeR7yvgiTBN6idm2AZK3xXtVEk=;
 b=leir5qxP9t8oZ1MexGWybLIKYPJEFbPUao9WPlutN16EUju9/xvxX/cO
 QwTdtcLY0TwYXrbFkUeYDrbzR+zEydrlQiYhp9b8uFEWKbik0yhx0eI8Z
 FrsL5rtGsO17XovHBUbOgqyVW84zLUuQ5yExg2lGMNmp4zblbTSYXFhPh
 XIASzl4Gh41s6iimFFHwN/6nxqKVNQbDS2nozB2hpACre4U8hhK1Y98RF
 xMOHU/wXL4zOGV+d+K6kAdcT+4UrYU/wp9NWH88kQSOOUZKYvs1dyNf6o
 VfDbWDExuF43OxVMr3VxtK+1dpLpEU56pWPM1hp42s88CYcg86OhMLXTM Q==;
X-CSE-ConnectionGUID: TfC/QA+uREKfxBZU/BWTdg==
X-CSE-MsgGUID: V6RSsZR7SRSgAuvjcwD7Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63768030"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="63768030"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:55:29 -0700
X-CSE-ConnectionGUID: 8l6Sel6KRKS3RUGJgV84PA==
X-CSE-MsgGUID: qz9wKS6XSTWvOX/0FbsGtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="185608283"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:55:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:55:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:55:29 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:55:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mldhy4kt97JiFcqW77OgelAt6OJZXyom4rIlwQoeOIjNdbuQZIq43XY3jByRi8EUhk/TH2uPJJiyprf8LKwXV2Fz9SsZoLUbC4hdD/T+SYiKx9eb4s9CEi/yeC5aJ0WzhBik2cp+l/zbRImA4UxZAY17xpeCU3qzOdu6wa5bmXOm3lbbx1Im9WeuJFStR9iKbVHpFNbuLPKPv+ohYXIKnMStCZr7YDZRe5kGVrZhOe1am2/BWypt4lfnuT0C3Ar0UUtmJttm2Dq8HJG23pTGgb9BArt6A50+XX8qstRnecPAPaOf5B8tw7ySkNAfLCZQ75dM+hAajCF2hvzbwAOB+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7CFLJ4YwhhOmnaGW5W2qWdkK9s5WpX90tWQ5UBx1Llk=;
 b=KrVEWfaplFKF6wWp1yPc2SYT91QKcNKYTCNdA4RcsUH7BrIuSzJEmCLY9Uxh/inFXa3hFu3FztHiYPs7mU8KDMgi6de9YZPssePvbEROaPFKesvP0Hvhri111x322Q+AgFOoWtx2W2PRna7ocSlr0oQlZQUv5m2nyK0usfzIRJkzjVQGRRDLOATT2He6mTeBBmrVNKLppF9tbPVx3RPgaeudgPDiMhwpzx4A7BN8Y4xfhu1t1iQbQTNBsrKcd19flvHMBSJL4KBtYsh/u5aIGRv9PnAD3FY6/q9WlyeAF7sorT9f9C6Rzgx5BejR4hgYDRrZD6Y7M5xK2v9ozYxHPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 07:55:22 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:55:22 +0000
Message-ID: <0ff0bc05-38dd-4a1a-a00e-796885d0daac@intel.com>
Date: Tue, 28 Oct 2025 13:25:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/26] drm/i915/ltphy: Program the P2P Transaction flow
 for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-14-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251024100712.3776261-14-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cb55cb5-0233-4284-288d-08de15f75878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWJHbXlZRklybUlEV3Y5dmhzVGtEd0ZRUElXQzFNN25Eb0lVQmtUTFgxUVBT?=
 =?utf-8?B?WWxUcHJLZWFHbXY2ZlQwdm8rUWVrL1A1c3JCWGFTTTZEWGJPdUpTZ3FSYmxi?=
 =?utf-8?B?bnhHNXN1S0pWMnVDTlRnMFR2NGtHMVNIb1pmalczYVJiQkFXbUZkTGlkYnhk?=
 =?utf-8?B?a2RFWGhWWHBLR0h2SEo0TDlJQ0ZEVDJJYXZuZ2E5VGU2c1BObDl1TkV4aFcv?=
 =?utf-8?B?YStaYUV2dS9rdDUyZGt0QWpqcUx4aVlLOXk1emYyV1RhTEtud3VEaWlxcFJX?=
 =?utf-8?B?MVZXYVl4eXFjTk5EQlNuYm5LOU9Pbk5CZVM3YjRTa2RkWWYrWE5Oamg1VEly?=
 =?utf-8?B?am4ycGNoRm5UeitTSTZhb3RwZEE1bG8vcnBxVFZyRWJYTnRHQjJzdHQyaXRS?=
 =?utf-8?B?N1pmT1V0R2E4NDBJU2g4akdiTFpodDJYT3V2dEc3WEsxNGcrbmk1alpUS1d0?=
 =?utf-8?B?ek9pY0Vhd1RFWXd5dEdaVitkeXBZRmRiRi9iaTBObitGbExYTDMra1pkVVMv?=
 =?utf-8?B?NkJHenlCblJYQ0tiMkcwUko0RmViMUJxTCtJa3hMRUc4M2kzSkdnaHUva3JJ?=
 =?utf-8?B?RFZkNXRoeURaQXZEVFhVUWZyM0Vld1FEd1VSMDdEM0U3Y0tLZ25MalgrNFNT?=
 =?utf-8?B?UVFMeWZWWGROUk9IVG9oQXhScFFMaVA3QTRyQkFBS0h4cHBGUGRTajNJZjBK?=
 =?utf-8?B?eFVGTkl0cXE5Kzh1V0xrQkhVcS9FR1YxTkFDVjVnTVgxb2ttYzJOZExJSzZt?=
 =?utf-8?B?enBiN2U2WTZBa2UycE1QTDhMOXYybnBqbXRuSG16Umo5UzUzYXFWUnZYdmJM?=
 =?utf-8?B?LzJtSk1HYUtoQ3VtWEk5VzlXV2k2MFlhdWhsa2I2bHVEM3A0RHRzVklwa3py?=
 =?utf-8?B?V3h6K3I0NVpsbGNabWVlVUp4WFRHNG9RTnlQU1NvajV4Wlphc2M4R1drRlN3?=
 =?utf-8?B?THNWWWFnNmhaWXJHR0lELy9KRmxtcVdWTXFHeWdub0FkK3phYmlmZCtXWDQy?=
 =?utf-8?B?amJsMFJmc3ptY2xDL3QyZlE3bjN2YjhkTWVhL0wwcjRWYk4waFdRVzk0YUdk?=
 =?utf-8?B?RGROTno5UmZZMlU2VU1sWlpUcll0aDA3SlpWUVdxMmdYU0NlMnhjcUg1MDkw?=
 =?utf-8?B?YWFFUE1seEVHTzFBN3E4aEFTV1ZuUHBsZ0dPZnVuMEMvV1JMNzlXZEVRVnFO?=
 =?utf-8?B?SE1yQk4rVDlEWXZEMTNpSERuTEdIbTRobkpudEFJTWU5dkRJT2FiN3JVSWxi?=
 =?utf-8?B?b3A2YUFDM0VEdWh2eVFVRW9PUWhlNmpxOHlpbUZWWXF5L1FOb2lBbFBqUS9N?=
 =?utf-8?B?eWI0QU1vUk9zdmlSb3c3S1NXU1U3YTk0bklDTnEzem93VDNHSVYwN0phbWhO?=
 =?utf-8?B?ZnFlMHB6dENVaGdTaDIwTFlGUDB5bm1UcUw5ZXN1M0hvT1BqUkNsYS9CMzEv?=
 =?utf-8?B?QmZvNm4vQ20yMlhkWnJGeHJxN0hpdDRLUmhNUEdHcjA5RkhPSlVnVmh5YjhY?=
 =?utf-8?B?NDU1T05mdWdhOGdjZDJhVk96TkZtT0xJUzF2YVh2T1pqVGt5emxibGdqMlJK?=
 =?utf-8?B?MUFpeUE4S0FDNFZ2MWt4cHNQUksyOWsxeWs3cCtoaXNxRkhZc0Q4dTZDb0xk?=
 =?utf-8?B?eVlKSEpFdHB5VEJzeEs3NFEvRE9Lek9hd3k2Zk10M0FFV0lSU1ZLMWtNK2F4?=
 =?utf-8?B?YWhnLzlZMi9ZRU1yK0o4aCthUDllR0dLRGliUDdrb0IzS2pOZ2prdXJQTGJ1?=
 =?utf-8?B?UzdtL2lUK2xsMXE2alIwUE0vWXlMbmVlMnVOSHJEbndvclBYZ1hjMmpCTjR4?=
 =?utf-8?B?b2NuZ2FISGJzSk84MjA4RHp2ZkZvd3orSDAvcVNFS2thWitPdUdiWmtRSVhD?=
 =?utf-8?B?Y3lvMnFaT0dYb2ZZYSsrbEJKdmU0T3gxdExjRXZQZlBETGR4MVcxMFhQaFNi?=
 =?utf-8?Q?go4adpzQqwuGmnTLDF8JsgD03ZYnUZWi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjI3NHAxaUg1VzZaOE12OGlCMTdicG14R3AyUDdjSUowb0dXSWZqRStteUdT?=
 =?utf-8?B?TXROdlYyY2xVRkNoWkZhZVhtbzNKQjZEWjhIM2ZhRytCNE9YZnN2V3hNcXQ5?=
 =?utf-8?B?RXFXbXZVWWN0QUJaUUZhQlhyb29Dd0pPOWp4bEVoaHdNVis0emhGaElzWTJx?=
 =?utf-8?B?T2VlTlgvWkkzQjRON01GZ3VBNWsvVzNJN1B0L3hLM1llZmRnWGFDN1RoWWR5?=
 =?utf-8?B?amdXTEdMcW1LNDRiUzVSbkN5U2JUaDdwMHlkQ2Jiak85S1RjeFF3OVUxOGJz?=
 =?utf-8?B?WGkxQVd5MzB0TkNVVGJ5SksvRFJtckZHZDl6aGdkL1JtNmdYS2FLdUUxTEdy?=
 =?utf-8?B?YVBYaU9iNTQwaXVTZlZLUlZydzdDSlp2clZzMWNrSzVabXdieGtoYnJiTERa?=
 =?utf-8?B?OU8rZU54Rjd5cndoVHRwN1FUaGFuWGxmTmNSZUFOVWUwRXlKKzdqRVQwNFBt?=
 =?utf-8?B?YTROUGdiaitWek5qTHFXTjhBbW9JazUxUng2Y09nN1pPZ0R2bjlLTG5FSWJO?=
 =?utf-8?B?N3VDZXFVNzI3dWpER3h6azBpMGZ5a2h2KzFyZDhndjVFejl1NXFuTHk4L0d4?=
 =?utf-8?B?YjAvL2RoVzhxQU0vT0NPdXFJb0MrQW93aEZJOVJLbDlGbkZQOGl5bVhXZGdw?=
 =?utf-8?B?Sno0L1RUUk93NVk2VVAvV1Y4UW91aTh3TVVpM1ZYVk42UzRKNmIxSXhnNVZr?=
 =?utf-8?B?R2RPWStvSXk4T3M4OFJQT21sc3JzeUhIR3ZDWXoyczluYnljRk85eUtUYVlw?=
 =?utf-8?B?eEE2bHF5TUg2eHN5aHY2SXNtOStlbU8vWm9WK1doZ2QrNm1Ta3o2T1FYaFR1?=
 =?utf-8?B?MFh3bnA5ekwvRlFOT1hsdnZneFcvd05QcjA2em5FWVNXaERTM2tCSjltTEpP?=
 =?utf-8?B?S3B3Vi9XMDlYUUo0QXBlQUdzMS9NQi9va3hrK1VHalFmQ1dRK1FUSklrTldG?=
 =?utf-8?B?czdDdFRGNVUrYndDV2g0WUVwUTlBNitLK0ZCckJseEpHSGZTaG9hOEszVURr?=
 =?utf-8?B?M0ZVbDNaVWZNYWcrVS9iYjFtNDZSN3IyaG41MmdVQ01lSkU5MEpqWktySnUz?=
 =?utf-8?B?czM1ejFHMXFLZkc5Y1pCcWVWMjdpcmhYQWthNlRjbldUdkpVUTIrVGVCNmN1?=
 =?utf-8?B?NVRJU1BOc3kxQlhCMy9tOHBYa29sdmtFTXVTZjN4VzVGeXYrUUxaSklyZXdx?=
 =?utf-8?B?N0NvNWhYd05zQktsU1lXcmpyWmc4K0pyRm1LOFpJa01FbncxYW9mL2VpL0li?=
 =?utf-8?B?T3FNTHd4TXZmTHRLVEMzRTluQ1BqNDVFZWY4Y1ZLWjJSNEpXemtLYzVEdUZn?=
 =?utf-8?B?MW9HL0FZMWVQYnQvakdDZ2IwMkhVSEdwRmkzWU9WVjNaUkJINXdzT1JwaWw1?=
 =?utf-8?B?NDhhZTZlMzlhaWJiWndXYzVONk1CaUROd2wwUGdTdGRIWDkwbm9SVkRoL0ZI?=
 =?utf-8?B?QVVBaTdkV3lrLzdzOC9XaWhtZnllbTloOXFPeUl3ODFIYUlLYW9MVkY3RVZM?=
 =?utf-8?B?YmlKM0hzNzF5STRqYVhqeE9rL3VQeERpbWxOMW5KdnpGODErV21MbCtaZjY4?=
 =?utf-8?B?SUVNdWNock0yL0RsVW44dGFOTE5uZFNkNmxMVEpBTFJVYis2NEdaei9nRWVL?=
 =?utf-8?B?NHRsdWUyUml3MU85UGVidGZVL0NxdFQxRWZKMXUvMTkxL1ZkcTNSKzd0MkZK?=
 =?utf-8?B?aTA1NlZIZ1R5eHZqNHlXdzl1cjd1YksvWnVBbHU3VXZITVdiNURmOVA4SXpo?=
 =?utf-8?B?MEUrWFZIazlJRGRHN2VZNVFkbnNVcG5QWmtaVUVzaHZrWjY1em5lSWd5WFRL?=
 =?utf-8?B?S09OS29HQVlMUC9RRzZ2VSt6Y2kzVzVDUTd6V1lnb2tqMlY3Nk9SbEtFQXFq?=
 =?utf-8?B?dVFaazM4ZjZaZm92dDBJdS9MUXFQMjQyQ2RNQkVwTC93SUpMQlU2OExNQUp3?=
 =?utf-8?B?ZDNxaGRNYTlHWUtsNE1UcytZa24xaGVKbVVla1ZuakdEU201bU5OM3BqbW8v?=
 =?utf-8?B?ZDFkV0FQbkhWMHhEdzVwNi9aZnlhWWZUYnhtQ2dYVTkzZlNMMi9aazZtNm1Q?=
 =?utf-8?B?M1ZtYzVFbFd1d3RjK3BaVkV6OS9raHdlVDhkNytQUU5oRmJtTXI4dDhzYlhy?=
 =?utf-8?B?bisxek0xNDJtaWpyVStFWTJORVV0aGExMS9oWDJ4K2pRYmEwaHdpRGxWTExo?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb55cb5-0233-4284-288d-08de15f75878
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 07:55:22.1646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exGeRSwbibRZsuVryicWEJYkvY91q6xdS5wrh4nbkgG/d0L3rhiEhKV5TdbhzGAxi832KJs+MphJk8eg/59BeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
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

On 24-10-2025 15:36, Suraj Kandpal wrote:
> Program the LT PHY P2P transaction which uses P2M cycle to get
> get data fro Phy when it is ready and then go read the MAC register
> from the MAC address space.
>
> Bspec: 68966, 74497, 74483, 74500
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> V1 -> V2: Update the comment for udelay added (Arun)
Would prefer to have a Re-visit: tag in the comment.
Upon adding

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  10 +-
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   5 +
>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   1 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 116 ++++++++++++++++++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  15 +++
>   5 files changed, 142 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 00c6bac55872..d0f44594f21d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -125,8 +125,8 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
>   	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
>   }
>   
> -static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -					    int lane)
> +void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> +				     int lane)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   
> @@ -135,7 +135,7 @@ static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
>   		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
>   }
>   
> -static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
> +void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> @@ -156,8 +156,8 @@ static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>   	intel_clear_response_ready_flag(encoder, lane);
>   }
>   
> -static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> -				  int command, int lane, u32 *val)
> +int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> +			   int command, int lane, u32 *val)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 283be36d5dff..a5446686b23b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -22,6 +22,8 @@ struct intel_display;
>   struct intel_encoder;
>   struct intel_hdmi;
>   
> +void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> +				     int lane);
>   bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
>   void intel_mtl_pll_enable(struct intel_encoder *encoder,
>   			  const struct intel_crtc_state *crtc_state);
> @@ -53,6 +55,9 @@ u8 intel_cx0_read(struct intel_encoder *encoder,
>   		  u8 lane_mask, u16 addr);
>   void intel_cx0_write(struct intel_encoder *encoder,
>   		     u8 lane_mask, u16 addr, u8 data, bool committed);
> +int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> +			   int command, int lane, u32 *val);
> +void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 93bed6b0bda1..635b35669348 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -50,6 +50,7 @@
>   #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>   #define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
>   #define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
> +#define   XELPDP_PORT_P2P_TRANSACTION_PENDING		REG_BIT(24)
>   #define   XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
>   #define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
>   #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c7a109e4422c..281f4c5eb4a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -20,6 +20,10 @@
>   #include "intel_psr.h"
>   #include "intel_tc.h"
>   
> +#define for_each_lt_phy_lane_in_mask(__lane_mask, __lane) \
> +	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
> +		for_each_if((__lane_mask) & BIT(__lane))
> +
>   #define INTEL_LT_PHY_LANE0		BIT(0)
>   #define INTEL_LT_PHY_LANE1		BIT(1)
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
> @@ -1000,6 +1004,114 @@ static void intel_lt_phy_write(struct intel_encoder *encoder,
>   	intel_cx0_write(encoder, lane_mask, addr, data, committed);
>   }
>   
> +static void intel_lt_phy_clear_status_p2p(struct intel_encoder *encoder,
> +					  int lane)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	intel_de_rmw(display,
> +		     XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(encoder->port, lane),
> +		     XELPDP_PORT_P2M_RESPONSE_READY, 0);
> +}
> +
> +static void
> +assert_dc_off(struct intel_display *display)
> +{
> +	bool enabled;
> +
> +	enabled = intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF);
> +	drm_WARN_ON(display->drm, !enabled);
> +}
> +
> +static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
> +					 int lane, u16 addr, u8 data,
> +					 i915_reg_t mac_reg_addr,
> +					 u8 expected_mac_val)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum port port = encoder->port;
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	int ack;
> +	u32 val;
> +
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> +				    XELPDP_PORT_P2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Timeout waiting for previous transaction to complete. Resetting bus.\n",
> +			    phy_name(phy));
> +		intel_cx0_bus_reset(encoder, lane);
> +		return -ETIMEDOUT;
> +	}
> +
> +	intel_de_rmw(display, XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane), 0, 0);
> +
> +	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> +		       XELPDP_PORT_P2P_TRANSACTION_PENDING |
> +		       XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED |
> +		       XELPDP_PORT_M2P_DATA(data) |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
> +	if (ack < 0)
> +		return ack;
> +
> +	if (val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Error occurred during P2P write command. Status: 0x%x\n",
> +			    phy_name(phy), val);
> +		intel_lt_phy_clear_status_p2p(encoder, lane);
> +		intel_cx0_bus_reset(encoder, lane);
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * This needs to be added to give PHY time to set everything up this was a requirement
> +	 * to get the display up and running
> +	 * This is the time PHY takes to settle down after programming the PHY.
> +	 */
> +	udelay(150);
> +	intel_clear_response_ready_flag(encoder, lane);
> +	intel_lt_phy_clear_status_p2p(encoder, lane);
> +
> +	return 0;
> +}
> +
> +static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> +				     int lane, u16 addr, u8 data,
> +				     i915_reg_t mac_reg_addr,
> +				     u8 expected_mac_val)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	int i, status;
> +
> +	assert_dc_off(display);
> +
> +	/* 3 tries is assumed to be enough to write successfully */
> +	for (i = 0; i < 3; i++) {
> +		status = __intel_lt_phy_p2p_write_once(encoder, lane, addr, data, mac_reg_addr,
> +						       expected_mac_val);
> +
> +		if (status == 0)
> +			return;
> +	}
> +
> +	drm_err_once(display->drm,
> +		     "PHY %c P2P Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +}
> +
> +static void intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> +				   u8 lane_mask, u16 addr, u8 data,
> +				   i915_reg_t mac_reg_addr,
> +				   u8 expected_mac_val)
> +{
> +	int lane;
> +
> +	for_each_lt_phy_lane_in_mask(lane_mask, lane)
> +		__intel_lt_phy_p2p_write(encoder, lane, addr, data, mac_reg_addr, expected_mac_val);
> +}
> +
>   static void
>   intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
>   {
> @@ -1412,6 +1524,10 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   		 * register at offset 0xC00 for Owned PHY Lanes*.
>   		 */
>   		/* 6.3. Clear P2P transaction Ready bit. */
> +		intel_lt_phy_p2p_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
> +				       LT_PHY_RATE_CONTROL_VDR_UPDATE, LT_PHY_MAC_VDR,
> +				       LT_PHY_PCLKIN_GATE);
> +
>   		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
>   		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
>   		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 8bc25a564300..eb3a3dd53ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -6,12 +6,17 @@
>   #ifndef __INTEL_LT_PHY_REGS_H__
>   #define __INTEL_LT_PHY_REGS_H__
>   
> +#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
>   #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>   #define XE3PLPD_RESET_START_LATENCY_US	10
>   #define XE3PLPD_RESET_END_LATENCY_US		200
>   
> +/* LT Phy MAC Register */
> +#define LT_PHY_MAC_VDR			_MMIO(0xC00)
> +#define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
> +
>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> @@ -26,6 +31,7 @@
>   #define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
>   
>   #define LT_PHY_RATE_UPDATE		0xCC4
> +#define    LT_PHY_RATE_CONTROL_VDR_UPDATE	REG_BIT8(0)
>   
>   #define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>   								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
> @@ -38,4 +44,13 @@
>   #define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
>   #define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
>   
> +#define _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) \
> +										 + 0x60 + (lane) * 0x4)
> +#define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
> +											    lane)
> +#define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
