Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ktwaKBRBRWrb9QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:32:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC686EFD22
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:32:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bR4TOzaP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68FA10F056;
	Wed,  1 Jul 2026 16:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755B310F055;
 Wed,  1 Jul 2026 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923537; x=1814459537;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jtDEkBYepRQtmgS0O8ivQTQW/dX2VzTap/NSywagj48=;
 b=bR4TOzaPkJAp7RCEoTqNNB27jUoB03G3OGmeL4EUTw6ZPsnVB56awFRz
 IAa0hDgoHfyRN3JH8/60+bipEsqN1hf0UA/37DQuvU5+rXMaB1Sj2DPt/
 7x0FGENQ94nPFR58irQXWvi5cexfW334oy/3e5nBinXGEjD7OP1TszrRu
 SRyBd9A2w5IIxdFiKKsyPUhbXG1Fg4mannNfApCL81Dx4uhYAQUtpAbK9
 1NFEWNcORpJuF1nyxJm3X3SAIyhiKCLXYAWT7lZCFwDaq6v6s4FuMdUgB
 bNgzUsSEqr6CkAhY8xEQSOyFw4TvcVtIljtpt+FSHx7mpDGTZ4YzrQZnY w==;
X-CSE-ConnectionGUID: Nycwr7IrRB2KVVuR7USz4Q==
X-CSE-MsgGUID: mMXHE55LQk6zvj24zVooDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94816011"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94816011"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:32:17 -0700
X-CSE-ConnectionGUID: kaad5ZKLT5+wbRpma0MKog==
X-CSE-MsgGUID: tPxQJAU8Ray4ABIIKkaWrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="290724970"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:32:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:32:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:32:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:32:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jFXSuj0t+YV3/gZbSVKrl29u1PvKqc2UM8RIsrIYwcZ1lgAycGlqCiHxwk2493UlvEOfvQW+3pNPb4p6bDJ1hPajfbTwM7ETwvXVB6gLl4k/h/isFvubhAG6mhAUNU5quNbLIJOHV8unytzQNK5ETuy76iK7geam6LwB8E45x/LdXE/GTIcBBrk0U6whzOIH/DTcVujR7qLLLMTOjnrybwZFCcNmMeaPQIqPyg3RdPDS24tlGWS21HwKsmCHdcz3/fjBkMdZ7nv5BrbdqVtvD1Z31F6psXfP3tBcZ33KEyXSBXQZ3HWcGbZwNX1g7WmfdkOsK/xg7jo4AJU5NT7LFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwl3+e5SiRrMLBB2RZ0OiH5PruEp/DBLbSAqRG067U0=;
 b=VCRbPtnN360FTgk3UC7IRrIZME/k9bMruHlXk39b3snNC+R+5I6bSM70A0wdQshcAqMZXNhS6zTISCLuwdzSXnCbN8xDI0R1oW1V5uNmlrVeeXBzoH3PMBrqTw+Pp4xx/68ggm3ERG+ndvmBHQFzedHHfJvh9ClTcE9K2jv1QEeZi2YN+gjhEnsR6+xYDW+F63VVeyTd+uFgdDATLGtk2FJ0NTrwkExA4oi3iACE7ZgxgiX4xaP7oaw7m1+5DPSCriGfzSipRiIKXn0lqor72DmXYAGf5nDzJefF4MYYz8VGxtVrydBeekPcLMSn8EQh4I+RCR+x6JptuntOd9mKHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by CH2PR11MB8865.namprd11.prod.outlook.com (2603:10b6:610:282::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 16:32:13 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:32:13 +0000
Message-ID: <102518db-f3ed-43fd-9726-5865e32265a6@intel.com>
Date: Wed, 1 Jul 2026 22:02:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] drm/i915/cursor: Sync joiner secondary cursor state
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-5-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-5-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0053.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::18) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|CH2PR11MB8865:EE_
X-MS-Office365-Filtering-Correlation-Id: 968ab9cb-7189-4cd1-adb7-08ded78e4e07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|5023799004|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: OZZH5GrNPnA0BZBNEmA4u8HKahOkTRJcXaGoO9yMuO1Mguxv9BUJehagqH+hboKtlATD1+DO0DLfHWRJVUrOAdhYU2SQt6SVusrnQaGRZJypm9HkSwCRas0bVeP6MDZqDyioIzPlPu3TXMWfn07KEwkvNTjjT+ukv57Z4Df1Y6NMr5JJblJUQvewoG9GuBxoOuaT+IpUSIecNwz4afj2cpwUev5WZXAMYF4Z7+uszE62nXEnXQdcZsyTtwZHTEDQhqX346gZAQgaN3sBMcrAIlcRnjPvf66JMywN91/IgnMaA+BRjxABVzfJ9JOL0LRTZ5aVFL1KSsQ9z4AtBzNMemJUJElxBBg7yxEoLOk+ZBi5XMdX5zxTC9AnmpID6MU/n9TiOLuMinqNU/oDfMF9Vky5ZomcmAIenuvxUhXTzXADnhB7hCHgrqrHvAqjdAjzqgOVLJV0cPKDEILxEQWQplbQsFpb2NWdJG6N+5gs8cMijlYbQTUoKyX674brE9Z2C6/QFFuZ/pwSe9FtylLSE9estOBFOuEFp8pETga+MjSq8PJKtxk/n9VgF7P4jvqxGNEQXqKCsmfQepPvDG0BznzPVm0CbeMxIeWLcXNp6jazPZvvRL0xBu0RCfs16/53BRDzMjmJdEe20pUqOIfZJpPm0+vzZP/yBjDfXpyD3fk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(5023799004)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTduTHRLOGlMVVUwYzZ1MlJBVHl4N2RjcDNNSE5zbEJQd2JpaXM3S1BBbVVQ?=
 =?utf-8?B?aklML3hRNUhxc3R1RlRJalFiMzFKSEJtMmxKRXowQU5DcElVaEpMV1dnQjZ5?=
 =?utf-8?B?VjNQamVGajFMYU1zUnBaUTdsNExvclBoeGtQVDI3Q0c1V05RR2x6T2dKcHQ2?=
 =?utf-8?B?TnRaZFZsTTBhMkQ5Z05ZSGJ4YzhiVmlQT1dyTGZrYjhlaHh6b2J1UG1sdFp6?=
 =?utf-8?B?L3NUcXFETEhyMlNIblFQY3V0bStmb0NtOGFkWGVVemRzc0VhcGFVSFdsdElX?=
 =?utf-8?B?Um5aRUwwWFRDTlZvZm83Yzl1YU01cWNiTXh2bFVHazVsRVNwQmFGZThpRC8r?=
 =?utf-8?B?MXVZRFg5V09DV2Y1ZzlPMlNMZW5ZZm9YcW9iM2V2QzRxa3BaVEcrai9FUE0y?=
 =?utf-8?B?WmhxeU42S2lhdlRhZkd6d3h5TVA1NEhOZEJSOHZscGdKSlVKTVE0RFpaWUNP?=
 =?utf-8?B?Q1hxUXpzV2xsUkFTSHBwOGxkZVdQcS9TcDdaRWNQYUErS2Y2cUVGNExCQnNR?=
 =?utf-8?B?bkU4YTdHcWRXb0lkbitmcUNHdUtIRXl5MGdXNXMwdEtCbXZrZlArZCtOWWpz?=
 =?utf-8?B?TFhJeThJOCtDZC9OUjZJY3VaSHVOVU5EMExwRUNwNjN6MUNzV2xUSHBxRFlz?=
 =?utf-8?B?ZmxlaUJ3Z2sxTHJkRU1Ga2lXR1U3QkFUTDN3SGZHVDIrTmFNa1MyMEd1RW1J?=
 =?utf-8?B?OHJqVVVhQ2Rsd1grRHFFdFVpZXBRbE1lWHhNZW9aT2pNVjZqcUZnZHE2bWlC?=
 =?utf-8?B?MUVPRUFtYTV4dmVEM3JFMFd3WlB6NUFDMG5sUXE4VjVSajd1ZkRhQjdrQVFz?=
 =?utf-8?B?dzZ4WlYrejRYRis1M1U1R3dNbkRBMUFDejV3Y01HME1aRXpSU3I2Rm1pSk5k?=
 =?utf-8?B?Qm5uZ3lsNmpobG9ZdzFzaEl4YjVWTU9tS0NVUEJQZ0hldHJtYThTYUJyVDF1?=
 =?utf-8?B?UXVOd01mVjArV2tmamN0aDlQRTNwRmptVlFFblFtV1o4U0Q1KzF3SW44Yit3?=
 =?utf-8?B?VHV2K216YzJKZjRRQzJVS2ZNM3VNRExPNDZhaXVJelU2T0xROWNuc2pQZ0Y0?=
 =?utf-8?B?VndVWERrY0RlMk5tK2poM0ZSbkhYWVRmdk80VWd1RkRxbmZLNk4xSXNyeXRp?=
 =?utf-8?B?MVZQaWxmVy81TVUxeUZaOTQ0M3A0eE50QTZzRmNEM0ljTysvRlVyeHNXL0t1?=
 =?utf-8?B?MWZnU0E2RjNuNWNCS21hZmw3b0Rxa3NmMVpFQjY4ZS9ibjNleWdONTdNTGpX?=
 =?utf-8?B?dUxIK3QyYkF6Q0Fxb1czWW4rSE80WXZWTjhCalV0ODVNN01IRkhIZlQyemQ1?=
 =?utf-8?B?TTAxYmpBV2hRcWZPbVFLRDRQcVl2QklxZWpHd2pwMnMyWEo0MVFXV1UyUVlp?=
 =?utf-8?B?QkNmWjZqUzhWSGRSZGVTZ3RtSUNobTYxSXdUbCtwY29pSkdYN0dQUUJOS1dS?=
 =?utf-8?B?Z2VKdys3blJQUnJqbkdrdzNlTGUwdjNUL0lXd2FEc05rcmtNQmJrYjNwM3NP?=
 =?utf-8?B?R1dwbWF2ak91MUk4dTE4RW1NZ1lDemR1UTFVRGwzUVhqazF5dHlCZDZNK0Zy?=
 =?utf-8?B?S2Jma0pkNzdMalJwSjdLNTBmdUtBSGxsRmdBQzB1NXFlZUZsZjdGMGZqWFE3?=
 =?utf-8?B?d2ZmamlmZU1FREkreVRkMThKeC9UTEtyY0JBSTJvODVaVnU2Y2pPSUtkZnNZ?=
 =?utf-8?B?NUJzRUpESHNtWVk5K0hOUGpPb3ZqaWF1c2J1RG5QMjBnaHp3SEtIMXVhVFZ4?=
 =?utf-8?B?bHpRTm85amkvTzQ2Q2FqZlg5OENiSjhSQWk1NVRoRE9GSmpGTUJ3aGFNN09a?=
 =?utf-8?B?cnhJam9NNkt3NDdpVHFUMXdlWlRUeWRwTzdHUWZZbHU0MSs0endJU3N6UkF1?=
 =?utf-8?B?eXc2QS93OXpzdmo4Sm0xaEt3UmJ1eG8zaGlXaDZRSlRVenBWRU9VRUtNSGgv?=
 =?utf-8?B?b3ZQWWhtU0JRRnNIZXpwTHBzOWI3MW5tVGtLV01md050MFBZR0dsMnBSeVhq?=
 =?utf-8?B?Z3pyektST3E4TzRvcS9xOFdnWWNCMDVTU2xNTHdmRUV2eDhmMU12YmIzK2Ji?=
 =?utf-8?B?b1NaTzVRd0hSWHRXNzNnaUdiMjlXbHR6TmdxOEZnUitOWVgvMkd6ZURuaGZz?=
 =?utf-8?B?VUZ4aVoxcThjVkdlMTVXRUFIc3duK1ZPaGkxdUJEdEEvazUrS2ZkdUcrOG1Y?=
 =?utf-8?B?MU5INytaaW8rSm4yamQvV0YybU5hNjZuQXhQbUxHSHpHK3UvZUxsQU01a3li?=
 =?utf-8?B?WHRMbEcxbWF1QlNISzZleVlZTHg2djI2YUVHN0lMVEx5TTRZSjlYYVc2cmo5?=
 =?utf-8?B?QjdNcWF4T29VNElEMWdPSzQvS2xSVm9oclUyQm5pTzY4UFNPNll5OVVST1U5?=
 =?utf-8?Q?mFN8EEtBhlgXPFAI=3D?=
X-Exchange-RoutingPolicyChecked: RBbEXy+i0FAk3qQQKh7yXLFTCzLW7K5G9pICesaeQ+m/3RQwP5RJmj5LYm6ovsvtCTgH0QKawKpRBMRIUzi2w2JDHPguYTEfrNbRiCpaOB++nyoWppRLcMIr7YZXkCRmilz3fQFD6uWU8SMGnfAObLRfr9Qg7X0wdY+edtU9l8SPOPLsyUgL/cHoL0kl/Pf20ebxTR2LNqtD5yS4pBnzgVTYVmr3PraK/cCkVgK+fYE6l7vxZm5pj/kIh45fTOyLSdWpG4n30MX8sVMf3C3A1/E9xJep6f1aJNhYm2LICL0Zd2LVg2xnAF539QfAWUVS6UkUJOULQMeegAGxSzyAaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 968ab9cb-7189-4cd1-adb7-08ded78e4e07
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:32:13.2070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEFdYMXhd10FSaXcw5JUX0YnYa6ROqm36/P1avJIFJNyBS1MfSwlYpE6OR0jVcYqGTsId2jnO+yuLcFvY8EMvPGsUjxwr5/gj6/QMZUBy6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8865
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BC686EFD22



On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> Before entering the vblank evade window, swap in the new
> plane states for all joined cursor planes uniformly and update
> each pipe crtc's active_planes bitmask to reflect the
> new cursor visibility.
> 
> The bitmask is updated on the live crtc state (read via
> pipe_crtcs[i]->base.state) rather than on the duplicated
> new_crtc_state, since the duplicate is destroyed at out_free and
> its value would otherwise be lost. The same update is applied
> uniformly to primary and secondary pipes based on
> new_pipe_states[i]->uapi.visible.
> 
> v2: Check primary and secondary pipe together. [Ville]
> v3: Update active_planes on the live crtc state for all pipes. [sashiko]
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 3da2c2308081..147ed6efb174 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -1045,9 +1045,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   					to_intel_frontbuffer(new_pipe_states[i]->hw.fb),
>   					pipe_planes[i]->frontbuffer_bit);
>   
> -	/* Swap plane state */
> -	plane->base.state = &new_plane_state->uapi;
> -
>   	/*
>   	 * We cannot swap crtc_state as it may be in use by an atomic commit or
>   	 * page flip that's running simultaneously. If we swap crtc_state and
> @@ -1058,7 +1055,17 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	 * planes atomically. If the cursor was part of the atomic update then
>   	 * we would have taken the slowpath.
>   	 */
> -	crtc_state->active_planes = new_crtc_state->active_planes;

This removes the last user of the duplicated new_crtc_state.

> +	for (int i = 0; i < num_pipes; i++) {
> +		struct intel_crtc_state *pipe_crtc_state =
> +				to_intel_crtc_state(pipe_crtcs[i]->base.state);
> +
> +		pipe_planes[i]->base.state = &new_pipe_states[i]->uapi;
> +
> +		if (new_pipe_states[i]->uapi.visible)
> +			pipe_crtc_state->active_planes |= BIT(PLANE_CURSOR);
> +		else
> +			pipe_crtc_state->active_planes &= ~BIT(PLANE_CURSOR);
> +	}

After this patch nothing consumes new_crtc_state->active_planes, so the 
primary's intel_crtc_duplicate_state + 
intel_plane_atomic_check_with_state are dead weight. So perhaps we can 
drop them here and use bare check_plane() for the primary
as well. Then new_crtc_state can go entirely.

==
Chaitanya

>   
>   	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
>   

