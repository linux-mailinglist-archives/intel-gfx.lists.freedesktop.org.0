Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCs2LthbsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 13:11:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11805263741
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 13:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C4710E8B4;
	Wed, 11 Mar 2026 12:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF82710E8B4;
 Wed, 11 Mar 2026 12:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773231051; x=1804767051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=etszYrQN7wmKwNtPE/XGYpYWgK2X8OB8um2DOlqXbu0=;
 b=VVrkVLPHwvQIbxpiVC4wc/pKJFCcKNFwWPdnXwGDukHAeM3/+MhXXlHc
 YExavUcX0YHR1xV4XJ/tZbWBZI0AEVeYhpWpzs9VsQqAnqwicOuHifJ6R
 +QTpAZSV3t9Qhb9tVsJalJaqrnAdjkmTi7OMcowbzj+JZXIXH0tG8U3pH
 HiOgfjWurACyWjNmZRY8w5+cp7eb1BAtVrnO0Tgs5djyhsg+HTcRbSoYx
 T6ecI1/l30kY8YQzNRyBwE0Cp1n2j1Nq771zztJmUBMyXtnMmFnhj5p7t
 3rawj4y6sLM0O8QhrKzNHxWAuhad6sG11++3Owkub2Ie/+x5c2gdZXOxZ g==;
X-CSE-ConnectionGUID: m9pTbEEsQoSBPAInyG4/cg==
X-CSE-MsgGUID: NL7RuuC3RSe+D4Z0Y/hfBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99760975"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99760975"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:10:45 -0700
X-CSE-ConnectionGUID: GYQdFrS6RMGpPwJVCWPyIQ==
X-CSE-MsgGUID: 3te19XkXR++N1bG3EVdoHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220629706"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:10:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:10:43 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 05:10:43 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MwHR7yveF4bCxV5T4VME6rRDquTlgUIkMCUiFgA1pDW7B4FvzmnDLHAXgZrlJrGaAxJhXqechE+37QrVtQRqSSbcjdl20lnWVSG5J2UeFmRYa07RC4mq8zQhJoNjmnP0P6EOznnbVkPQO4SgoTm2kUkNN9/hdok65iVuGDTx/OcXgcmYSp0zUurOyk55OHMZB1NhSNzCZOZ2Vu49FmpQJuBQtRJ3bk01oz9WEl/UfoX6q/Lj5kRwR+qYmImlY4EYZDA/PkY7YTVjmwsunfLvtfNKRiFCiQLxVzsCoM91FUNfcd4ISLMZhLn/stLQyeEMyHz+pFmiA9gclx9r91OYDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duYRGAeHirgn5PB3+pnKjqaYy5CMb0NGYH9DiyUhrZ0=;
 b=eBg14Q0yfjbc4eZWZR2BNFINbGR7mWLLp1pTGK48L3HAVUjZF38gpz2ToZR2sJnYUtoRh8aiLT+tLgQDfhZEOMOHnZ3aSLSugtJPstgSVC/Z23mtZVQr7WwrOOPK6/3CN3pZbcTrZOglhFyTnmS0yo6uqFsANpEVHCCisDum70y/ADSsJmHNF41fjjEaxBDgtPY8qg98QgTsHKpjb2PcnDhi41dqJ6RxqRNxpTmozIBMWanbO5S2FBGPwF7A6ZR+Zv06YOMJ3la6WsrfrOu2WB/jDQb+ASmak/MMxz97DjQHtCfRHIioiYWB3PW5iZTas1x2R+rtAbTGOgdNVcKqQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPFF2E67D388.namprd11.prod.outlook.com (2603:10b6:f:fc00::f60) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Wed, 11 Mar
 2026 12:10:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 12:10:40 +0000
Message-ID: <07570fdf-a053-4df0-93ad-6a404a5662e6@intel.com>
Date: Wed, 11 Mar 2026 17:40:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper for AS SDP TL and fix
 documentation
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
 <aarCQYHTCCEKtB2R@intel.com> <aa_fhRxsFcftI2Nv@intel.com>
 <270d9647-7238-4d78-a942-d45ea846b763@intel.com> <abFaPftPmvwGPXkD@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abFaPftPmvwGPXkD@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0048.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPFF2E67D388:EE_
X-MS-Office365-Filtering-Correlation-Id: ad8a19f7-5e9f-49de-f683-08de7f673620
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: BIYRYHvteyObZimuX9MzZcATydRiUhpMMWIJISNmglIvgRXEoZ0Bxpr10sdHakTzYqEkF7hmASnUo5ltcnNtf4dgHyMqaCjtkobBOME1hV1q0YF54vZr5rgufoHStg5oLFva1UHX6FaPV2x/yA1cInE/RtcjlgG7sM2A/mHjJrC2Lslgm3/teLXIm4JlZYpOvcqS04pBtjH8bxBCvYs3EOwPs+JTFezrfqaoFXr1gYvC+hW+4b2g/5x/SoMRpiaaZzWxi4pFpeT5HX0h8rPxjWk5ybT2ZrkTFATZ0tgzZMtgzTl+m/pp/er5GvRKNwZOYPa3aH/ZHcbFY5gN4VcEPkcgZsGK9F64zI9c16OXycCGWQxUbpjrpHBuzCEOckUt0IaTqZnoQ81nY9WATmngJQaU5l9KEjskQUcZeQW4gGC5j8li9BBRfENfK8iqVLOHAw4DBwxSwuEi1zQJ7wfVMzVK5eSuRkoPs6d32A0x9R3UgRdmb2M2Xqspg790IhcGRmpcXKzJ92QHyP38+0prcWu2xpnI8Q+Zo7h+8HjpuUHqYnCRSVleKyKAqWBKKOnxSTJmA/Pu2ltIsy/dJEtiNOFbOVvgfeNJ7cV4WfcnIjodoJoell+lzNZphvw6SyNQMyOcgoNe4bddc/B4t7g8RgViz1Lb30GZ2i4IjzuULOkAWzjxGYVmwFLEHJPHqhnPhKgjqH7Bd56S1pGdyQfcTxp4kQ1N8ZofRrpNYjW5IoA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eS8zazBXZktBWTgxR0NabmhhUE1lMklKSkFqM3lZS09tWHoxRHVTUXhLSnFG?=
 =?utf-8?B?ZUx5UjM3TUVIVTdXdkIrd01OOTROUEVMNG5iRUdxTjJmSE5iZ3kvU095Z25J?=
 =?utf-8?B?TytlNGU5bXRQYmVDQ3kxWiszampSeFA0SmlkNUFzdC9tdVlZWUtpL3VrZGZ1?=
 =?utf-8?B?bDVyZlNtZ0MxeGxzNkpsQlVoUGJ0dmlCeDFSMjVUczkvdHM2RFZ3eUdyL0ZP?=
 =?utf-8?B?SnJSeEloQko5V2tjMklrTXBPaUJicUxOMDZjUm5vT2djbWNDMDFocmg5ZUEw?=
 =?utf-8?B?NmtYSjBpUzlybWxubS9LNVAwR2tJdXc2MWdRd1BjeGZJY1cyWlNGRkJJOTNX?=
 =?utf-8?B?VjNkb2lzQ1huTUtQNU04MktyWUdlMy9VSjk4SzhnWWNHQ3pkQ2JDMzg2VGpz?=
 =?utf-8?B?N2Q0VWFWRGFQUklBbEVLd1Z4a2lQUU1oTFNMYUQ0d2ZrRlVhZS9wZXNXeno5?=
 =?utf-8?B?am9GOVNOTFJUTVkrTWxqOEoyMGc0Tlo0MzNTUG83aGZVUDFQclhqaUw5NWJE?=
 =?utf-8?B?MEgxbUVaRU11QTV3b0tFbU5RRHNBYUpMT293cExvOXFkakJMMThtdVRwamdZ?=
 =?utf-8?B?NFRGSHladGdjZi9lQTRyZG05N1RKb1NXM1JmZ1B0YXVzSStEZ29xUVV4Mkxo?=
 =?utf-8?B?SkFidE1JK3laak1qeUdIV25pbXd6VGZwSStSQ3dvNWZoT1FDenJ4ejZnQ09M?=
 =?utf-8?B?VmxzV2dvek1sbTgwZWJGVC9Qc0ZMRUNQejgwcDlCb0N5VmVYaitVOC9wWFBO?=
 =?utf-8?B?OHFOaENRbjhPdDhMSE9VbTJYeUdReExRNVhUVGdsQkV1U1lsbGpSN2dRb25z?=
 =?utf-8?B?d2U3U004em5xNlRqSS81aHZXM1ZhbS9ZeDc0YXVFUkk4V2JHTStYTVFUcGYz?=
 =?utf-8?B?MTd2UytYUnVEc2VlYVcxQ20zajJnTmJ2UGYxdVFKbDBUdUVxN2kranpOcHFx?=
 =?utf-8?B?M3M0RG43dVB6UTNlcGpjZTdCSDhnWE9zUEhNcWxFU1BVVWhtTjRUajB1dXVp?=
 =?utf-8?B?RHVaZ2s2MHNZQ0xyY2k4aFFld1ZoMW5sTWw5MnpvUSthTGNMZWNDb2cwRGpF?=
 =?utf-8?B?TEpyWlVPVkwzSkhCOFlUL2pFTjcxMkZmRkxNczBzMHlIdURLN094OXhDbmxJ?=
 =?utf-8?B?Lzd1RzV3ZVVzSU5temhIVVhocHUvdUE2ZlhGbFhsQzNOVDh2TDhZUTF3cGg0?=
 =?utf-8?B?ajBuRDMrUWNuVE5RU2wzQktISkltb0VidVBLSVk5OFYwd2xUT1l2TnNiMWNk?=
 =?utf-8?B?WTJYT0haN0NQbXU5Zjlia0N2NDJDRzd0V2tmV0h3elpKTHFxZk9QdUs0V29p?=
 =?utf-8?B?cXloZjV5T1BQTGR2R0JaS3FPcCtUUXNkNUhjMCtWQTZDSmJtYWV3bHhBYnBJ?=
 =?utf-8?B?bVMwMEZiZEN2RTFLeUJyeHh4QXJHZ3dWZWtqQTFValZnZEE5Zi9idjVYMWpR?=
 =?utf-8?B?cFcvS09oemtWREZHWVNPQ00yQU1nWXdTY0tRRlJ2NGgwdVFFaStrdVBLalZt?=
 =?utf-8?B?cjBKWWZCd1RLVXUzUVE5MGNaUXNwdlh6N3NoYmxDMm53MVpMYVFaVkZENXJC?=
 =?utf-8?B?V1RCRHc5Unp0M1p5T3lhSmlZNUNHNEFkM3RxRmVya2ZrSGlZUmxnbWZKSFBm?=
 =?utf-8?B?QnJTUFR3dTV1dTdrdm5FdzlhTXdXeTd3RXlnOFBTYzFod3NkTVRFZ0VSSlF6?=
 =?utf-8?B?c3owRWxSdXdjaVNtVFZrS24xeDFuUWxqZ29Xc1VQSFhjZUZKQWU3bWFMMXNB?=
 =?utf-8?B?SW1CQ1ZCc1BadWswVHkxaWs0Qmg5R2huY0lXRGpxMTZtZCtWZXZZVmwyVG8z?=
 =?utf-8?B?ZHIxdTdadEpGYy9SajZSYnBjUVJYMnVJNXZKa0M3dmc0dVMweXFrYW1LV3lJ?=
 =?utf-8?B?YmNoeUNYa1VuZTNtbzlSVGhPbHlqQXFiQzR1L1RVLzk0NzcvTFRFblN0TWIy?=
 =?utf-8?B?OTNzUlpPbXdUWTZhZjVWTHpIVHlnQ0xUeGwrU3YzSGNTT1E3WThXR2g3alB6?=
 =?utf-8?B?ZGpURlMrenlwVzNjOTBYUSt3Y2psbE0vaXNUc0RwRGcrc1V4Tk9PT05uQ2Zs?=
 =?utf-8?B?bXZNVXFzWi9lRVlZYU4zb29zdldZQ3gyYS9IWUV5a2grTFhJMmhjaW0wTk90?=
 =?utf-8?B?S0ZYU2cvTUt4bjc1bnd3QnlrUXlJaGJqTU5OVXZpWi9jeFhjZEpwL1U1MHRl?=
 =?utf-8?B?MEpKdnk4bjVBZU8yeDE1UU8vaHhhdHE2RHE4NEhENEdNVTR2Q3Via2J5UW0x?=
 =?utf-8?B?L2FjQUptcnVlNmVuazdoblR2Y3dIZ3VmZm0zZFhjandrbkd0RitIVUtQcTZt?=
 =?utf-8?B?V0JMQTR0ZHYwa3VtVmt1dUJJUkJvMmU3U2NGYnJuYUxEWEdGMTM3R0FJUGJs?=
 =?utf-8?Q?C8w19QTNnH2trFHo=3D?=
X-Exchange-RoutingPolicyChecked: F2XNipv4sDhQxdBMNaXEW3FQg1A7LI5RkYAk/2mrYXsz2FAzHXus70BmpJsTaZGWcBZvRQq1Z32IM/hSH2yjKv919lE5d93nDOONKdjY5FDMHnOhwUmwYzMg45YEvUgjEgtXSFn59qYvKHQ8yQvgxd86kjoox2o0eCfGN6wKOmF3d1jRQIQgf2zslIfJ3Ou6HR/JS9ySqxhf1MldOPWaAvmhgR4THEmL0uLl65Sw9mOMrLNzIO9AFI71MRuV0wGM1w4QabfvG0Hj6PtDCsUSPjJaAm9IIgiU5UYyb7es6YHX4TH3Clb3mTeT+/VLi+g0ARx5HmTJjIPHwbNBqW9DPw==
X-MS-Exchange-CrossTenant-Network-Message-Id: ad8a19f7-5e9f-49de-f683-08de7f673620
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 12:10:40.4928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xwrTc8tKBJySV3MCvPowVcQcbCECXzeNfwEKK8yons8IOLV98Y9I+Q+MHFiL86B9ziWsXCv6WN6cTdKIv/5EVAjncjsFO/hm4tgo4Foq4Qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF2E67D388
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
X-Rspamd-Queue-Id: 11805263741
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 3/11/2026 5:34 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:24:22PM +0530, Nautiyal, Ankit K wrote:
>> On 3/10/2026 2:38 PM, Ville Syrjälä wrote:
>>> On Fri, Mar 06, 2026 at 02:02:09PM +0200, Ville Syrjälä wrote:
>>>> On Thu, Mar 05, 2026 at 09:31:16AM +0530, Ankit Nautiyal wrote:
>>>>> Add a helper, intel_dp_emp_as_sdp_tl(), to compute the EMP_AS_SDP_TL
>>>>> value used when programming the double‑buffering point and transmission
>>>>> line for VRR packets.
>>>>> Also improve the documentation: the AS SDP transmission line corresponds
>>>>> to the T1 position, which maps to the start of the Vsync pulse.
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_dp.c  | 9 +++++++++
>>>>>    drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
>>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>>>>>    3 files changed, 12 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index 86390553800d..9204a813639a 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -7288,6 +7288,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>>>    	return true;
>>>>>    }
>>>>>    
>>>>> +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>>>>> +{
>>>>> +	/*
>>>>> +	 * EMP_AS_SDP_TL defines the T1 position : The default AS SDP position
>>>>> +	 * that corresponds to the start of the Vsync pulse.
>>>>> +	 */
>>>>> +	return crtc_state->vrr.vsync_start;
>>>>> +}
>>>> Other parts of the code (eg. ALPM) still just directly use the
>>>> adjusted_mode timings to calculate the same stuff. So this doesn't
>>>> really seem to help us.
>>>>
>>>> Feels like all of our abstractions around this SDP transmission line
>>>> stuff are way too low level, and thus the same information is
>>>> calculated in different ways in different parts of the code. There
>>>> should be a single place that defines the transmission line(s),
>>>> and everyone should just consult that stuff (regardless of whether
>>>> the platform uses implicit transmission lines, EMP_AS_SDP_TL, or
>>>> the new stuff).
>>> I think instead of tracking the low level stagger values directly, what
>>> we want to track is just the transmission line itself for each type of
>>> SDP. That seems like a form that is easier to use elsewhere in the code.
>> Agreed storing TL will be easier, stagger values can be derived from that.
>>
>> So we set the transmission line for the packets only if we plan to send
>> them right?
> I don't see why we wouldn't just always set them. And if we set one we
> have to anyway set all of them since they're all derived from that one
> pair of registers.

Hmm alright, I will take care of this in the next revision.

(I will be Off for a few days, will come back to it in couple of weeks).

Thanks Ville for all the inputs.


Regards,

Ankit

>
>>
>>> And to accommodate VRR I suppose we should use the "transmission line
>>> is specified relative to the end of vblank/vtotal" convention for all
>>> of these.
>> Makes sense.
>>
>>
>> Regards,
>>
>> Ankit
>>
