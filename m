Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC87GI9BsmlFKgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 05:31:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68C526D19F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 05:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4927410E414;
	Thu, 12 Mar 2026 04:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I5rlPVPY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D332610E414;
 Thu, 12 Mar 2026 04:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773289869; x=1804825869;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Huu04eQsEAYUYKIFc3A3hQ5ILlbVOME3feATC8qK3Gw=;
 b=I5rlPVPYvjEvzXiP9hmZGaUNDccPH7tbmmU9Z6hmqAA1DEFJV5x8Nq3G
 r41tWIS6Iu9HF3RviqOEO3W3gSHRSDq5x+fDW+KLb8TEtrMUKtqi/5ZYp
 mj1i1ga5D7UtHbvTaKz8VPeMrs4qhCFSqW9FeKWBVyr5CjlGuzmmRIizZ
 cJ/mmgQjdC765ry77Kbw0FyVG+/g+R/s+46y7Xl3Tn8rB6jqihT1Qc55Z
 rHHJL2FFg6K4L68q51JIgbEn/v1X/S0VuWy3cM9JVSywWa7wHaOeLN7m3
 B5T3MGsGhIyT8uOo4HPVroAnIoPmwYKMEOvuaAB4UrJyjqvCkEP/euFiw g==;
X-CSE-ConnectionGUID: XWKCOka9QEmyzuUQ1OH3mg==
X-CSE-MsgGUID: ZNLXQP9WS6C47ZGZ99fmxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91752345"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="91752345"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 21:31:08 -0700
X-CSE-ConnectionGUID: gAMmeakgSaWscNnCXTwyOA==
X-CSE-MsgGUID: sUlWDxqaSByx1jmzwqVt8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258596120"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 21:31:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 21:31:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 21:31:06 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.34)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 21:31:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3INXy7rQPXZcBYt+G2edXCz8PgvqAeuO2tgYiB+j9Y55WYQHdzyT4UCeepsCczYA3XlZy78idoEdq4n0Jf33zvkK0mrQVHhonnSnxfYZJNLnVoRju3AUZH083eBdRdRwFRIulJDbvbjEt6RV179QHwzk4d+MVjZYDsrTav1nNbQn3SV1nIvC65NczcknZEITrrdJoO+kckPmU1p7McCtDiwCnm8gPw8wY5a5/zihI0vXqagvEzGgMq1Di5rwkjqZNj8kW6FzYG710Zk+Pm6zjtG6PnA1r6uiRGHTkSQluFHAj4GHdA2AJd2mPFB2KnJFxDhGybr1pLEeAe50uYjBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ZlMxtvyy5qaKaJTtl59mm4TAHwowkxbjoocQUdLqKQ=;
 b=TnPC1pQ+oQS31uOFLYgDYwfwHgvbz9FfoNPufZJblxCxUvfFt4I2kyoYJGVIHeeflueErwCG9E6isBy1gmV635qdAdRMbI5ots6pntxnXJ79l2GXOA9wb/v5D2FDE040PkceoLkY2wMP0fasojKsiL6xTLdOCrJ0W/4plnZ2p9Xdfjs6vVzxJ2zWGyRrCdZLy8FpCldoaXVz5IXymq+26Evu8Dl/0W5pLIYxrejdUCRLh7gOguMKuBwgDp5ikoR4WxG+Z5Olnw4wF690bdSSRcsn4Px0RXSm1uDPEsvycYDB6vpSTatnqZHTuPVxy8KX1tm0Q9T8wqzgMDa70N8J4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9421.namprd11.prod.outlook.com (2603:10b6:208:578::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 04:31:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 04:31:02 +0000
Message-ID: <5e20f2af-e901-4cc4-be55-cc0e9ef10662@intel.com>
Date: Thu, 12 Mar 2026 10:00:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/display: Introduce skl_pipe_scaler_setup()
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
 <20251223081300.1196417-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223081300.1196417-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0122.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9421:EE_
X-MS-Office365-Filtering-Correlation-Id: ede93142-b651-453e-a223-08de7ff02abf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: qX2Y2iYKU6weX4zPBHYD35U1Yn/+8QATpOuuz1dTKl8S4zuDWS9qugrrwwiBAaSTBBvGxphIj8HJxnzkPsgaM2EXawb33zJlB6VznvoiNK4q30Gjsrnp7EbZM07Whz839RVEmL5clrTgeH1FIB3w0FNX1b7vjDLAgtjn19WyT2hxxDSKurGW8LgfHF1vsLpHiLDSdw+cuzx9pimeGne7T5adwoe0827TSxXGsgOrVxoyK0gp3s3H8W9JYz3kbEttIvX447lPiBXBdzNBxVyPfm+CipnGSQJWOrS2JSTr4XLOQeyCDTBVPyW0RCFzmabCrs8yxDNpweER5Bdb8G+gfcNVLFBL5GYVVd2JPH3/HMIoGLxQKCBKBHY4ziN/gGJce+uQ3mnIol70GsRogliwotnj+D/+J8ZruzZXiimfadmeNPrWvHrFXdGRpK0Pr3+fwmMKHl7B4efxlDH21xt5O/nZVrsqpuT63jJSa4305W1as7yR/imBpQFQXSSt5BpTRb7/9HOcBObWCbL2s887giBhNL6eK0eino0XrHhaJ++z7DjdR4qRWn/UpUiINiR2ZX25IyNV7sw+ZN9aYAlaX+0uDGiAjyofIe+c6eYQbt5SenQ6Vjr5qk2vjdrphLMUeZ1IP7xCL7O3fujzzdRSmLSsspOes5J9Xm4Yj5DtZPlFH9jLPR64APjXocab6rhoQ+Mwro8mT2RKcuK+71xnY5fkQijDT1wFKkHeCcPSm2U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkRQS1N4NzVRekRLM2pobHFxeWNMeGRlZXduejlBRThJbnFTVlhHSGk4eUVv?=
 =?utf-8?B?THc1ZDNqZmk2YlZaRWRxUHlVYlJISmR4dWVqT0FkeFdHazFwd0Z0RzhXcC9O?=
 =?utf-8?B?SGRCK3B6UW96Zk9lMlRRdjF0dk5NUEJqaGQ0MndITlRibzlkdHpvWEhnU1hJ?=
 =?utf-8?B?ODZuSW1UWS9kL1U0MERidG50cmduUnZsUmZadFpZMWYwSldXNGQzYnZHTUY3?=
 =?utf-8?B?RjA3NE5TMWEydklGYWFyUkhPazRXMUpvNjBPYmtMTm9RTnFpNncvODFid3Qr?=
 =?utf-8?B?eW1aTEswOGRSSVVEWnhJTjNENW5wM1pRZkw0cTVydjZ4S2lRaDJuUTlJc0xq?=
 =?utf-8?B?S1EvQVRIR24yZTd1RnYrY2p0N1Y3OWJPK1pDUEIrcFl1bW12U01VQm9zdVVj?=
 =?utf-8?B?WE1HUjdtRjNkRnljUFZldzhuendKUm5LR3RQN0xOVTRyK1l6ODREbjNFR01Q?=
 =?utf-8?B?U3lpTTlES3o4SzZ6L0ZLd2p4V3lLSktTQ296ZVc2elNGNDVWMzVLbDd5THlL?=
 =?utf-8?B?RzU2UFVmd1U0c3dHZ2FvQkRsN1huWS96ZjJQWVJYdG9qYVFhZ1pjMURrWmZh?=
 =?utf-8?B?Yk4xc3c4aTdFRmJDS092Rng5ZmpsaFpIcXdqUVcxV0VST29JaWRKTFBaUVc3?=
 =?utf-8?B?MEVPY3VyR3h2MW5zUTdpT2ZhcnJac0lBdjBGRWkreko1RFZwQ0JjN3BrWXJF?=
 =?utf-8?B?U3crTmxOT2QzOTBCQWVCNDY0aVZYS1JXeFQ1YnJYb0tHYUxiVnVMT0ZCenpK?=
 =?utf-8?B?SDVwTkROSE9KNkY1cTRjeU50V3h4aDg3TG5EQ2NLRGFmRDR0U1VWRlRYdElq?=
 =?utf-8?B?dkhMZUhZcmdWb0xrVXV3VXYzSGFpZUh2ZVpXd21wMnpmd3NPT2FNclo1ZjRP?=
 =?utf-8?B?b2pXTVQ1SnB5ZVMzNWRJaVBTZEs2aXBWNzNYYVMrenJBQ1JoR1FzZWxFYXlO?=
 =?utf-8?B?Y2xXUkVSM0laaW5zRzh1cjJYbThyQkpCb09ZY1krSFpXQ2luQ1BQd1JML3N5?=
 =?utf-8?B?b3ZYZkVhMGtOT1ZOUlFXQ2RHWUdsa0d3Sk5abGpLakZ6d3RDOHBSbjBXR1Ry?=
 =?utf-8?B?RXFLWTRuejErdHZQWkxzMHVPeFdzOUZHQy9yVFVwWmVJMTRHNytQMFQ5MC9r?=
 =?utf-8?B?MUsxczBsQ1pDVC9RNnZtQjI3dWZyWVF0dEkwVC9Td1l5SWxGR05rcStwS0Ix?=
 =?utf-8?B?RGt3L2RnSjVWYTNuUWJJQ0FPUmhrYkNOYW02OUhxZ0Q3Ny9mNVVjUGtLd3My?=
 =?utf-8?B?eERZeklQWWpyUkRJbmtJVUpGNEcvWlgreks0T0NWaUQzcHIvUTc3YVgvem1w?=
 =?utf-8?B?dllFVTR2djhFYU1ITlcxNWlwWGpzUzJnWE9qVm9nOVdUUVl3SjBxM1NDblhQ?=
 =?utf-8?B?c3JQRVZ6eCtlQ1ZpaVlpRkI0MFBvbjFGVDBjVzB0S3p2YWlzUDA3YXQ4S0Rm?=
 =?utf-8?B?QTI2eEFaU2NZZCt5OVlwN3FsenF4TVFPWGFrZDJyeDZITlhlTytDZndPUzVF?=
 =?utf-8?B?WVBQVmtha1hOQ0FKa0dRYjdkMzVVQkx5bVhxMkxuakx0TXNOKzNzemJwWnE2?=
 =?utf-8?B?SW1QVXc3SDZiNndoa2s4MzdvVDEwR3Bod2Vab0hyK0l6MDBEWDE2dWtMMnNN?=
 =?utf-8?B?Z0RFZCt3N1czbW1mb1htYUtXSUNyRjdpU1FwdXQ2K0o3bzc2TldvWXNvZk5h?=
 =?utf-8?B?S3hlTzdSOVhWR1JhS3pTSkFVT3AxTDk0dythTmU0UTRseTRIRHJtV0l2Rmxk?=
 =?utf-8?B?U0RuWHZsNTZIckpCcks0UGF3OTlJNVRBZGtIRnFna1lEUlp3MkdrQ2NCTzNu?=
 =?utf-8?B?elNURU9nenZUcHdUTkNISUhBK1E3Y3pTZENMTGNzNXFjSCtFdEpvSFlYZ2hR?=
 =?utf-8?B?bDArYXQ3Um1lY3hUMCtxSkErYnBzYmlBb3JUZmZlNWE2aWxWeVBSN1NINFho?=
 =?utf-8?B?SVVCUXh6U0tmWWxtS2ZkanA0dysxNFhMRmYwaW53YkpRM1RBbE03UFlaY0Ra?=
 =?utf-8?B?ODVndWhyYWFaSTlCNTdkdWJrY09oOTJQdGZJcFhkaFBwNkc5cjVsdkdFZVIx?=
 =?utf-8?B?SDE2ZjV5Z2RJSmNpR2VrRUxMYVJ5OUtXU1MzM3gxdnBxdUJveUgwMUR1WHJU?=
 =?utf-8?B?d0NJeGtCajE5enAyZ00vcVRRVnJLc3F3ekErYXkzUGx2VmREQXB3QWc3R0dh?=
 =?utf-8?B?RTMzUjIzd0hXQnJHNG1LSUl3WUFuSXpiUXFpQ01rYk5KaUNvRTc4ZWZnQmZJ?=
 =?utf-8?B?eTdZcE9RemEzc0VaRVpsQTBiL2d2VW55TW9zWnMxbFRZTWZ5M0xoeVFKdi94?=
 =?utf-8?B?bW5kcHJIc1kxSklGY0hQbmZiczRNRHV2OFMrR1AvT0lNcnZnTUdSbVkzbjM5?=
 =?utf-8?Q?1JCH5E6/Cmv1MiUI=3D?=
X-Exchange-RoutingPolicyChecked: VWu9p6QqHva9Ta/isF71/SHwIBffX85rh1EuyYj5BOMOGmAqf/DFdHJDLMpRV0C212wAhq8UyLLyedEP3POKaw9ciVW1CLyFYj5zq28ZsCoxlaoHHh1EnbpOPBuOT1uqh7ZljEBeYS5agn0NEjh8Ea7Q22P4E11IiZGmxBg7XIljzvSpzRxwurxiqK2m5cdOInZonVfyXgcQ9fAd9f/ewcg59cOBdH1F3hY/39vqj91gkuNFLgZlG+WzEeUzo6af7VL8W1ShPpCE1TpTFq4hlZb6xwdZfpI9Qzgkys04SKUSdiBSZcHhOsj/88pIICx/pU9aNqignwvhmASyiHTDoQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ede93142-b651-453e-a223-08de7ff02abf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 04:31:02.2591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AaEGVcJaoPknjfEqMPEL0hI6V8mBu6x21Zoy8HdrUPipkbHrBNsfWGAqYm3Jm8BnPlABhsUVNfI83zmMY4diM7yt+BSDCo36rkykdupYqRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9421
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C68C526D19F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12/23/2025 1:42 PM, Nemesa Garg wrote:
> As skl_pfit_enable and skl_scaler_setup_casf
> have similar logic for pipe scaler registers
> so to avoid duplicacy introduce new helper

Perhaps 'duplication' will be apt.


> skl_pipe_scaler_setup. This helper consolidates
> common scaler setup steps and is now called
> from both skl_pfit_enable() and skl_scaler_setup_casf().

As suggested in previous patch, lets use ~75 character limit.


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 67 ++++++++++++-----------
>   drivers/gpu/drm/i915/display/skl_scaler.h |  2 +
>   2 files changed, 36 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4c4deac7f9c8..abd951f7dd71 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -761,41 +761,25 @@ static void skl_scaler_setup_filter(struct intel_display *display,
>   
>   void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_display *display = to_intel_display(crtc_state);

I think we can retain the order in the new function as the previous one, 
there is no change required here.


> +        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);

Extra space before the line. In fact, I can see a lot of styling issues 
caught by the checkpatch. Please fix those.


> +	const struct intel_crtc_scaler_state *scaler_state =
> +                &crtc_state->scaler_state;
>   	struct drm_display_mode *adjusted_mode =
> -	&crtc_state->hw.adjusted_mode;
> -	struct intel_crtc_scaler_state *scaler_state =
> -		&crtc_state->scaler_state;
> -	struct drm_rect src, dest;
> -	int id, width, height;
> -	int x = 0, y = 0;
> +		&crtc_state->hw.adjusted_mode;
>   	enum pipe pipe = crtc->pipe;
> -	u32 ps_ctrl;
> +	int width, height, x = 0, y = 0;
> +	int id;
>   
>   	width = adjusted_mode->crtc_hdisplay;
>   	height = adjusted_mode->crtc_vdisplay;
>   
> -	drm_rect_init(&dest, x, y, width, height);
> -
> -	width = drm_rect_width(&dest);
> -	height = drm_rect_height(&dest);
>   	id = scaler_state->scaler_id;
>   
> -	drm_rect_init(&src, 0, 0,
> -		      drm_rect_width(&crtc_state->pipe_src) << 16,
> -		      drm_rect_height(&crtc_state->pipe_src) << 16);
> +	skl_pipe_scaler_setup(crtc_state, width, height, x, y);
>   
> -	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
> -
> -	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
> -		  CASF_SCALER_FILTER_SELECT;
> -
> -	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
> -	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
> -			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
>   	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> -			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
> +                          PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
>   }
>   
>   void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
> @@ -814,7 +798,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>   	int hscale, vscale;
>   	struct drm_rect src;
>   	int id;
> -	u32 ps_ctrl;
>   
>   	if (!crtc_state->pch_pfit.enabled)
>   		return;
> @@ -836,10 +819,34 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>   	uv_rgb_hphase = skl_scaler_calc_phase(1, hscale, false);
>   	uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
>   
> +	skl_pipe_scaler_setup(crtc_state, width, height, x, y);
> +
> +	id = scaler_state->scaler_id;
> +
> +	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> +	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, id),
> +			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> +			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
> +}
> +
> +void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
> +			   int width, int height, int x, int y)


Why is this exposed? I don't see this getting used outside of this file 
in this patch or the next patch.

This should be a static function. You should move this function just 
before the first caller.

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_crtc_scaler_state *scaler_state =
> +		&crtc_state->scaler_state;
> +	enum pipe pipe = crtc->pipe;
> +	int id;
> +	u32 ps_ctrl;
> +
>   	id = scaler_state->scaler_id;
>   
>   	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
> -		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter);
> +		  skl_scaler_get_filter_select(crtc_state->hw.scaling_filter) |
> +		  CASF_SCALER_FILTER_SELECT;


This seems incorrect. With this we are setting CASF SCALER FILTER SELECT 
for pfit case also, which we do not want.

We need to set this, only when the call is from skl_scaler_setup_casf.


Regards,

Ankit

>   
>   	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
>   
> @@ -848,14 +855,8 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>   
>   	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
>   
> -	intel_de_write_fw(display, SKL_PS_VPHASE(pipe, id),
> -			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
> -	intel_de_write_fw(display, SKL_PS_HPHASE(pipe, id),
> -			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
>   	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
>   			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
> -	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> -			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
>   }
>   
>   void
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 7e8d819c019d..94bde5d1c06a 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -30,6 +30,8 @@ void skl_program_plane_scaler(struct intel_dsb *dsb,
>   			      struct intel_plane *plane,
>   			      const struct intel_crtc_state *crtc_state,
>   			      const struct intel_plane_state *plane_state);
> +void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
> +			   int width, int height, int x, int y);
>   void skl_detach_scalers(struct intel_dsb *dsb,
>   			const struct intel_crtc_state *crtc_state);
>   void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
