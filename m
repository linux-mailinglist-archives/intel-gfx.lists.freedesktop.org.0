Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O6FFaSfGWq7xwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:16:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C33DA603605
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3019210FFC3;
	Fri, 29 May 2026 14:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mISQMEA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0B510FFC2;
 Fri, 29 May 2026 14:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780064160; x=1811600160;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XLCWDVbE13028SKZabJ+EbuQ2EewrBk1RFYjHmgVJIM=;
 b=mISQMEA2Ueo0lAMMxauJFNZCxCtd5UJjlRjuPQU5zHsKmZqsaO2HRq9Q
 XLyHC3ohc4Wj6reizVB5+mj+/N5wxht/83vXKtL4GjL40CPnZmQyiTy6H
 /MUw0oppPKx30jygrEyFN5pmhbJBn0Y1wnJrNB3CnMgVXjX/1zxtIWy2s
 qQHLbSL2DByiBx9uayT4T5X0aCfSJpDuedYBfxdQWxu1CHWJiK6U41Cgt
 T/WksbKprWDsFdOagl6eofUWhXYag7VgMWiHks9lMv8nM+Mfqu0+8I0Kj
 07i3XfbxXeFbSydhPLm59p9Mi8Dtxa4PrZ1dvIxQVFej4Zxryh9R+X79A g==;
X-CSE-ConnectionGUID: 00PIMWGJR/utR/AbS8M9dg==
X-CSE-MsgGUID: NkrzcvWySKyY3OKFX3WsMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="83491723"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="83491723"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:16:00 -0700
X-CSE-ConnectionGUID: 1ArC2FQCTJ+u+U7buCbRjA==
X-CSE-MsgGUID: G1XN0J3jTCWvkp8AoK+2hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247141640"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:16:00 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:15:59 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 07:15:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:15:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JwjwvUqXM/yCoBBfNogbqIqWJa22MJGfwxio3x0optiq/n/MUdWWe9Rg1mG6fvYfknvoCTTj1Bmx7AATa62RXnxWrPb08EZialTq7On79l4oLVfMp9XGNZm3YWtaCmcxEt5BFh/Lx9REhKd7RWpdCcglW6/1agcCbMrECzpHpsReYdMD1Kr644Nn+9dddkY4ZCRyBIc+LYupaotmJOOZ4c3HIRfSrunFP1Q59imESto4ttoDCIXllD/ndO7wxpcfZcMtEKpSq/b24RiVtTxiGsmfPEm0iwvP1UiPOmKvSqwq06YsF180tya+LdTAzUA22ZlrR5WFFKNjwiJrq5Tt+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4oUa3m+C/iRVnmo6rMhRiDTS9BboRBYzBXM9se1Dzsk=;
 b=tMpJvL1orHbgpZ5Lr/KWPzJYu+78Pj5Dbv1OdB+iqJqjLzWGELxyiE0kW1i/CPuaaIKUX0R+0sQHet7zOVptdI6c0Q1aIsqNpVopQkVTDMgT6GdTsAfmn2DLCaCGkqjYTuDSgSk+0vgX9zjTDt6CDljED82C7EE8GTN4+o5/NfwaIfQDhzR6Jb5sz+CmIIYgEd5DN4vcv+WPIV3nEbG6v+UBvas6OIh4zSKfPk6ecVWQGzcVn2DPKYBlJmLSlDklBtxxe1Y+R75Dl6vkPswCI8ESp5OjtEhyk5QE8bGkPPTUsrlgHjEdbR36aazHoMPcyv+qeXK1spkP4XDUOj0uGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH0PR11MB9610.namprd11.prod.outlook.com (2603:10b6:510:3b0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Fri, 29 May
 2026 14:15:57 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 14:15:57 +0000
Message-ID: <d0ca69d0-9f7d-4baa-aac5-07e84d8ae49b@intel.com>
Date: Fri, 29 May 2026 19:45:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/15] drm/i915/cmtg: Add CMTG interrupt handling
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-11-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526133811.2621675-11-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0202.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::9) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH0PR11MB9610:EE_
X-MS-Office365-Filtering-Correlation-Id: f6fed62c-6df7-4520-3b51-08debd8ccd7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099006|11063799006|6133799003|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: T3yrDiXpVg4FvgxB6CHR1gNOULxBFnOneuV+ctkmbNlJxOdTrNG1Dkc/RsMRs86amdN7XbB9eYvRHxEOD4/EBOu5rRVkW/LCxnO5b/Vo4h0oUuBs4auQYYn0dIT2/S0eFDsxbWO3tkca45m9GCMFVq2MMXD5MOUN3Xnb5nK+k+99DPCCsdSlct5zO5WBV2fAtsmdduRmkxaiheoyGXlKudH4ydOck3QEC7xfO+n9LcBkizZeTIdXH9B3QddeswFr0QpHYaX20AD2HTkkT5Xtif1NSuBPLZ649AuLCcj18h/9XeYKap3lI8bz6RLlLacdKllhNWeeRQ8T2fI8hhasLRn/YEPVic6E/4o+sTMQXa/CC9B07sjfp6ZuYwhqPS9WGImdZLa5f7skbZ1IW44/82IgHqrbzIFlXAECmOTRibha7uZsBVfSNQ00bBa8rzEIsGVSHq8IpbTkTD/FzG+XEQtXBWvDIpSxW8cRNAGF35m9whC+q+YiMwgTpoMMC1DjXA8u7lns/8Trp17wyeF05fXiYKdQVvCj2+94aPgU4Fp4iiZufZnrZxZGMMDVvCU7xtRzfHsTTrW2FzD735Tm9wGujY6yb9UCz9zlC1IZFxrLo92wkR5/78NgE8uBtwxnAJTARNFOgRYsJGqKeBG7d9udKSJ9tojv8X1npk+Gk4RqQkBHhjFshAVlnHDMWPvH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJXanpCSzBDcGZUUkpQeDEvaTVUTFRieEFMSjZaT0ZrZnVHdUxhd29QMS9y?=
 =?utf-8?B?SHdHK205cEZhdno4RUYybWlBNGxRRC8zWkZOc0pCYUx3ZmN2SFZxdENOcVNh?=
 =?utf-8?B?SmFVYjEwMlhRZEY3Y2x1cWRPRXBpRnNoUXl4VEkyV1dzNjJaVEJtWE5haEFH?=
 =?utf-8?B?VzhOengrV2FCTlUvbko3ZVJpNXo2KzJjS2FPMjB1OGg0eVJ6cjBBK3VlUVRZ?=
 =?utf-8?B?US9pUXpXNXVaOU5rVzNEa2wvQXduZTdoYzUrTGh2QmFaZlRaZVEyZys0U2VY?=
 =?utf-8?B?SmJROFNadStJWEx3bHlqNkFRQ3lMNW10V213OE9zSWFxVUtXWG9XK0JkTUVz?=
 =?utf-8?B?YlN1R1RaL1RRQ2xmNFFKSDBmcWJUVTQ4Umg1WVU5ZXpRYTl2OWVlOTZEZnRx?=
 =?utf-8?B?dDNiUnlsUVlYdlk5TXozUE1KSWxjVy9hakJscXBzcE9sbTZkemZRRXh5UkhV?=
 =?utf-8?B?Zk1qdkhsNjhoWGxEMHIzekJIR2tmcnNKQnB5ZUxRUEEreVc1TVQzMVBlME5t?=
 =?utf-8?B?ZFhMYmNXRXplNFR5RlpyUnVod3Z5Ry84WWhKbXYrcFo1dXF0SU5Cdkx6c0Zx?=
 =?utf-8?B?OWdicEV2bGNSQ2tUQWNBNjM2b3R0RU5HQ252TVRpMHhzMFZER2t6TmtxbTFo?=
 =?utf-8?B?WmI4bFNuN3BkdmNVU3RrMllucU5SRkptaVA1TitxVnhacUNIUWs0ZXdpbVFM?=
 =?utf-8?B?Z2dvVVczaTlXcG5SK01DYWw0a3pKK0xJN0dpM1EzV2NvME1yTUNTR0hVV00y?=
 =?utf-8?B?YzM2TmlRRVNreFVQaUVSVlR2WnZEQVFxVm0vaENNUm5lZzBhbWh6M1ZCQXkx?=
 =?utf-8?B?SWpoVml2YnM3bG1Dcm1NWG5YbkhFNjVQa2o2Zko5V1FQTWNFQkltOVdwUWNT?=
 =?utf-8?B?S3BFRGJ6VDkwSk05M3NCbXdQWWJHNllmVWRrczdQWHI3YkpuTFJ0TzRud21J?=
 =?utf-8?B?dWJGMEo5RG1IV2JFdlU1Nkw0Wno0QkxNcXlkZStuRTlyRXNHMjNJcEdIcWlj?=
 =?utf-8?B?MW9yOFdMUXhubkFkQS96bTdEeG05S0l0OGJvbnRxTlF2NzNpVEhuV0RxQzNa?=
 =?utf-8?B?QmJFUTNOdExkV3RvQm1pblJieFU0Vzc0a3JURU02dHJuQmVkTjBRb0s1c01Y?=
 =?utf-8?B?SUxidk9CUzhlVlhTRVJ3dTFRcGlOMzJQTm9HR0s0c29UU0RpVTFGOGI0cjk5?=
 =?utf-8?B?b3IxN2JrUG9RbUJ0ZHFNNzNaL0J2WkFHTU5nRmkxK1pGUEUrbGZoSTVHd3lH?=
 =?utf-8?B?a1dUc2h2N0ErQlM5b2hDQVQ5M212cXh1SmpQc1JPOXlacFRobng4aGJvT2Rk?=
 =?utf-8?B?MldGRUZMWjVTU3J4VUgvZ1dhR2Y3K3Iyc0tkNlA3bnVDWHJycWRiME1pVk9a?=
 =?utf-8?B?ck9PalNoWlIzc0s5cTdqbFduSzZ3RWFkQTNUbGswRnBuNXAvS2JFUkRSSGow?=
 =?utf-8?B?VStnSDdhMnExejZTeWQyNmsxSnpaRUdjUU01emRocStmWVNEV1JubjJNa05W?=
 =?utf-8?B?ZFVzcFJVSlNBM2laRUlQNVdWQ1FiRlpjbkxwOFNWdytPR3lzQlE4U0hUUS9p?=
 =?utf-8?B?eFRqN1BnZlY1TUV3ZTJmeGFOdGtCTTVPZGlLU3RLd3hNMTNldnZLb2laNVNX?=
 =?utf-8?B?QmZMbmNXN3BUSDNTYTRkZVdZMUgwR05CVXFUZUUxQi9sWHRIL1dvY3hDLzNW?=
 =?utf-8?B?NnBtckZLdkd6UWpha1Y0N25yTDBvWXhlbHlwVis2UURvK1NjK1NCaytWdTU2?=
 =?utf-8?B?WE13NFpjQS8rLzdzTEl0b3JJaXZLU210Q2liK1ZINzVPZTdQdnM3aDRxYmJt?=
 =?utf-8?B?OG5LZkR2S2JEQWZwTTR2eEhOc3ZGSmZPVDBrMVBScmdMcXYydHFpNkRmdGpi?=
 =?utf-8?B?RWZ0SGttMFhOWW5EOS9vVXc4MDQwbDJnbE02SXROcENleWVXV2JnQ1dMSUtz?=
 =?utf-8?B?eFQwNUpPMzVVZ1N4Tmt2Y3V0dVg0U21NSXl6RlB1K24yWGlxUEV1M1lpbmlC?=
 =?utf-8?B?VkhmcWFCakR5cDR1MFppR1QydWdIRXFEZ1p4VnQyMFhDM05iWEVUNXBINHdU?=
 =?utf-8?B?WHh1cndFZEFEL0dmcU9hY1Y2OHVaMVlBOE9DMk80Vy9nMzhSY2Ixa0tlSzd5?=
 =?utf-8?B?RUtYWXljeEZVUWJ0VTRNbkpNcDdHbzNubHgzd0pBb2MzUkRWRkZjZGtPUnFo?=
 =?utf-8?B?ajFnUGw4Q3FTbHBCemlTOE9FN3JqNWVJNVR4RXM1emE4U3Y1VVZCYU9WaGp1?=
 =?utf-8?B?VFNWWU9aWWpYL05LOU83MDVTUTk1a2pDQUVTQ1MwZ25MZFF5eUgwMndKRzI1?=
 =?utf-8?B?dkY3bXIvNWViNFNySnFjOHJnSjVDOEQ3ZDV6ZWU3d0JERG4vRU1VVUZmSjFU?=
 =?utf-8?Q?38wXFoDpdU8JMCJ6AU2vOqVrbGkxMVTj5lHya?=
X-Exchange-RoutingPolicyChecked: G5HQdz4jZ2l+K29DclO2jQSEyDSFl8riZeO2CsgXJUb8cS4wob1kUkomySU8/tMz6BpTj+mSDMbH2Is7JqIcKp7HK8UXXECrouvDb8SAVPnxCfkmtb6cBctBCcF7hyqn+zB0Qk0WSI1Dz3N2jnmZFaYLyHT1A5Nc39QOwcuHX6YNe7KHZOTGp9ERTSqMX5w5d8ihPcrNtTJhi1L93nwC+uuui1iC3tEw1hq7s8CEYUv7CQj9nH86suyq94Y3ufm/P4ZbM4Kh5LXRTcei9kTPJ7D9oqytvXmVdd2HvSFgx7Bz2NsBJaDa1o0jmVDgL/K5daSPafWC0A7M25khhNvUhA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f6fed62c-6df7-4520-3b51-08debd8ccd7b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 14:15:57.4874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IHxBdMBzEROQSj0bu0xUru7knp8Zwd1bableTkk1p+GdIoao9rvoEzOKEhZSmh6q44zdu+gIYiRhbhjrkDwfZGj3mfDNTq87boX2FLtN/86kZp65jP1s2J6N+IE1QP9D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9610
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C33DA603605
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 26-05-2026 19:08, Animesh Manna wrote:
> Add support for vsync, vblank, and delayed vblank interrupts of
> CMTG which are part of DE port interrupt.
>
> v2:
> - Use consistent DC3co check as used in earlier patches. [Uma]
> - Use else-if instead of separate if block. [Uma]
> - Merge mask and unmask function as it is similar. [Uma]
> - Modify DISPLAY_VER() check. [Uma]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c     | 42 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 +
>   .../gpu/drm/i915/display/intel_display_irq.c  | 12 ++++++
>   .../gpu/drm/i915/display/intel_display_regs.h |  6 +++
>   4 files changed, 62 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 643e2e846d25..17e8da4fa7ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -13,6 +13,7 @@
>   #include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>   #include "intel_display_power.h"
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
> @@ -402,3 +403,44 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
>   
>   	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
>   }
> +
> +static void intel_cmtg_mask_interrupt(const struct intel_crtc_state *crtc_state, bool mask)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 interrupt_mask = 0;
> +
> +	if (cpu_transcoder == TRANSCODER_A)
> +		interrupt_mask = CMTG_VBLANK_A | CMTG_DELAYED_VBLANK_A | CMTG_VSYNC_A;
> +	else if (cpu_transcoder == TRANSCODER_B)
> +		interrupt_mask = CMTG_VBLANK_B | CMTG_DELAYED_VBLANK_B | CMTG_VSYNC_B;
> +
> +	if (mask)
> +		bdw_update_port_irq(display, interrupt_mask, 0);
> +	else
> +		bdw_update_port_irq(display, interrupt_mask, interrupt_mask);
> +}
> +
> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, false);
> +	spin_unlock_irq(&display->irq.lock);
> +}

Is this interrupt getting enabled through `GEN8_DE_PORT_IRQ`
IER ?

> +
> +void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, true);
> +	spin_unlock_irq(&display->irq.lock);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 79785afccc51..8fcb44d6398f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -21,5 +21,7 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
>   void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>   void intel_cmtg_sanitize(struct intel_display *display);
>   bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 899a38c0a7b7..f7f670dd5900 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1469,6 +1469,18 @@ static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>   				found = true;
>   			}
>   
> +			if (DISPLAY_VER(display) == 35) {
> +				if (iir & (CMTG_VBLANK_A | CMTG_VSYNC_A | CMTG_DELAYED_VBLANK_A)) {
> +					intel_handle_vblank(display, PIPE_A);
> +					found = true;
> +				}
> +
> +				if (iir & (CMTG_VBLANK_B | CMTG_VSYNC_B | CMTG_DELAYED_VBLANK_B)) {
> +					intel_handle_vblank(display, PIPE_B);
> +					found = true;
> +				}
> +			}

I could see `intel_handle_vblank()` getting called only for
`GEN8_PIPE_VBLANK` interrupts. Does it need to be called for
all three interrupts here?

> +
>   			if (DISPLAY_VER(display) >= 11) {
>   				u32 te_trigger = iir & (DSI0_TE | DSI1_TE);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..f38dcd9b6c48 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1458,6 +1458,12 @@
>   #define  GEN9_AUX_CHANNEL_B		(1 << 25)
>   #define  DSI1_TE			(1 << 24)
>   #define  DSI0_TE			(1 << 23)
> +#define  CMTG_VSYNC_B			(1 << 19)
> +#define  CMTG_DELAYED_VBLANK_B		(1 << 18)
> +#define  CMTG_VBLANK_B			(1 << 17)
> +#define  CMTG_VSYNC_A			(1 << 16)
> +#define  CMTG_DELAYED_VBLANK_A		(1 << 15)
> +#define  CMTG_VBLANK_A			(1 << 14)
>   #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 + _HPD_PIN_DDI(hpd_pin))
>   #define  BXT_DE_PORT_HOTPLUG_MASK	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>   					 GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
