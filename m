Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D169BC139
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 00:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C5E10E4D9;
	Mon,  4 Nov 2024 23:02:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PnA32vaf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1402010E4D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 23:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730761333; x=1762297333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mRJPmAuo/1lqj90XRKaAz0JWrBYhXu4hrIokLwmi014=;
 b=PnA32vafMfQiDod3i5UiQGO3CY1VMVOxKtXMgv4MY2fRaj8yb1VWZwCe
 nM8ZzMqu3/z70ySMoIy9X4uBNLPKIhfxAkX2gt4n4rDVTfLCLkvoNz31T
 qRlfxqcCxWEyq9mj+SdIFS9itVN9nGPezpgRrOgNgZuqWw/FSXfN0qkYP
 HxcMv9/4DaZdteSovl/aAJFILBVPqbZzHeYH4zALQhEwp4z/V58Yelfy6
 i3KBczBuXsgRiWAd8PrWHLwtnF3uDSM0vPSd+vCC1T+YfvRN5iuAR8+HU
 ECxcyR95vJL9vJUqCrLkGf4KHsI0zILezU8dJr3oNb2yNASxZZWWfkyqF A==;
X-CSE-ConnectionGUID: lQ8rmGdqSHGFfexV6OZGGQ==
X-CSE-MsgGUID: hvTpvIUuQTCtzRGGKPHj+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41031455"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41031455"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 15:02:13 -0800
X-CSE-ConnectionGUID: E02WqwadRz24FEUmo6JVGQ==
X-CSE-MsgGUID: lZAmjkNZQNuuvlBlQqTNqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="84133830"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 15:02:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 15:02:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 15:02:12 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 15:02:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F6NKH4cg5kL133pXfxCA2fZ0fFx8bhHGamEU9WDZE9MBixGSrLkONn+3kXYLZHgOsEa40LmWR0oGgJgwVS4js8a320PaA3R6qr1Zyv3bKzYrpJNt6jellu3qPUEm1LylZCgnZDMhcHuGU9DzEFHfoavjIQQt3DJYVd+4CtQGP/uPRaIN7Hs0E5b4S97xTpXEDhPv3knFPpBpKAQOqyGdqUfkjYz7LNHWT2sRf0m85e5yLEgu3vTy5VDUeqgM7hwZ8t/3oZ1VPpO5eQg7M126sUNkZuPrvroaUeiByJ2bry9zED5cv+LtztJNBpYTFpk2zx06r/8ikEGOjforSjsgpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6UNUlkVBDscqQDkgaN/ge+6vFMfe3mH9/Zy2ohtqAg=;
 b=fdz2EVjXBP7dQR/taKtEzhFelOWg5U9DytTEPMLD8TdyDk22I46yqSHrGZTcjX+b5plF/fDqyPX01KNLFQ2br8lVmo/cIFITwei26FNgk4iE82q2FhArlrVtE5qbjdhxso4dF39WMybvErefNOafHD5SK7EORmaTTE2yweH8xYFVUiUGM5gOpye5q6cTT2Tf6jCdRoFDFfCktPsaNk6dpWsDIsRxSmPLfC21/OfKH/EK1ZvMwS7ebmwt2xHU0oLToOVU3FIcBnf8aR+4kUQ1JjeN8K0yCMdGOq2CVD9Zgnpt0GvulbO0or3uKQS19YhmTb6js5N6gTO+W7B+IwUhwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 23:02:09 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 23:02:08 +0000
Message-ID: <92fb6446-7a25-49f8-b5ed-cead607f2070@intel.com>
Date: Mon, 4 Nov 2024 15:02:06 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gsc: ARL-H and ARL-U need a newer GSC FW.
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0001.namprd02.prod.outlook.com
 (2603:10b6:303:16d::21) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|PH0PR11MB5110:EE_
X-MS-Office365-Filtering-Correlation-Id: 10d4d30a-8eca-4078-10d0-08dcfd24b591
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTZKRGIyc1FnVHo3QW9sTzV5aHpDbndPMCtrbUNqYWxDY1FSMWkwK0tYUitF?=
 =?utf-8?B?aUhVR1RLbnBlbStieWtDUVpjWFBKUnpqYVhaaWpiRjVKQlFrRm5HeHFZMmla?=
 =?utf-8?B?K0toOVlRQURBMHFGRFo0SkJ6VjMvd2UzMThRU2U1ZTlwandFenFZNlNibmVI?=
 =?utf-8?B?MVh1VXBZOWZmODNIcllxakNoOHBkazN3WUJYNWpzanR5OU9LYzJmUElUVWJJ?=
 =?utf-8?B?U0NHaWdla3pETS9ZclVPUlFoNzY2REd2ZUsvTG1IZFVta0xsci9nOG8yM0h2?=
 =?utf-8?B?aDRJSDVhUHl5WXRuYlRMZHVRUzNLdGJ4LzY2aTJwWitxTjFxa2xnUktLSFlO?=
 =?utf-8?B?QmRSenFNSzhhU0EvSDFLUUlBeDF2eFBlMi94ZENValh4WEk3MXp1S0xZZXRZ?=
 =?utf-8?B?bFlRSzF6OWRsWEt6d2ZoUXZzMDJIYi9oWkkyd2RidGVTb29iWktoTnFxQUJa?=
 =?utf-8?B?K2RCbUtVQ25XV1hnSDZnTXIxOHdEdDl3QVZGSUNFZVFtUUtVUk9QVFhYbW95?=
 =?utf-8?B?M243NVkrWVYyTHlLVmNiM0loTG1pNHdwcFVQMlM2TWlXWm1VazdWSFhhd2ZH?=
 =?utf-8?B?T1VibWRJOXRySTRUOWcvbG40enA5RU5BZFBUSDZxTnp3N2VqNXpaeXVKUENP?=
 =?utf-8?B?K3k5cWIwamlFVXZxdmVDa0NsenEwOUFNUDh3empRVHhIT1JrNjA1WDZ6NWti?=
 =?utf-8?B?dGNDejZJckN6c2lFVENZc3ZWaTF6bmRjenZ6T1JCaytOYThPTDREZmtEMFRZ?=
 =?utf-8?B?Zk9pT1VMUXV4RFJic3BXb1hZeENOb0lhcmI0WHVmS3Vuc0EwaVdVam4ycTgw?=
 =?utf-8?B?TFkrMDR4ZlZ3Sklid1Y3R1lHVS94T2hYZ2tjMDU5dEp1Um1lSFNBeklPUzR3?=
 =?utf-8?B?RmVkd3RHZC92K05USmFuV3RTRnRoVmpVY0pvd3pySTV0RXZPL1lOZTJ3aWNn?=
 =?utf-8?B?QWw0d1dOb3Y1aEo5cmxvdVI1bFpTQ0c1allxT0VVeGVoU0l1dFkwWjVpTWdZ?=
 =?utf-8?B?VFp4UkdheDdhRmtyRFF6bndGdy9IYUR2eXlWYmx2OTRHZ2JmNDdXNzBhV293?=
 =?utf-8?B?WWhmd3BUVTUyZnV2WWNKS2s0WVUzRmt3QWQ4RmtkcWZKK3JKZ1FTa1NhdTJK?=
 =?utf-8?B?UXUzS0Vha3dReG5acHVjK1RLeU56bXNPais3MEpkak5GVHVCOWlQUCtBVzYx?=
 =?utf-8?B?Mld3RDhGelNONDBuR1NaV3JVVmxiRzFMSmpWWkFDT3lBV24wQllsQ3N2OFZ1?=
 =?utf-8?B?cEJiZmdhT1NQbjNvMmUyd09xQWlVMkk2QVRqMnJIeDJCbFpUZy9SWlFRZy9Y?=
 =?utf-8?B?SUtZN0pqTXJqWE5XOEM0bjNvZVo3RmIrdjZWL3lqNG1kaEpMU1B4eUoza09Z?=
 =?utf-8?B?SzF0WTgzR0ZYS3REZDEyTjFNWFJCL1gvRHV6VzV2ZDE3TExMWFFWU0o5Wk9T?=
 =?utf-8?B?RWoxOG1JTitGZlVIYmdBSGh3eEhmUGZ5U0cxRUhUbEErTnhzQkpOVm9EVkxS?=
 =?utf-8?B?RWlBNm9EbEI5V0cyR2hWWnd2SEhEeG1IRkNDM0VnU1gvNVNZUFowOW1FV0l5?=
 =?utf-8?B?RDFXTURBampIUENFaEFtcklJTzJCNW1DMWlrVmN3REZZNjVTTjVsdld2clhK?=
 =?utf-8?B?dm9yRmtUSHk5YkMrci9QZGNRSWVkZ0FlUld1bTRrbnZBdWQ2V1lPZ0hsSjl5?=
 =?utf-8?B?QXZseGNOaDA5MWVFbklIY3pOU1Ewc3pEekhuSEFmSjZrTkNQVkM2NU42RUl3?=
 =?utf-8?Q?i/3xkNqEH2ypb2bK9U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUs1U0pJOFdGeUN5dzU4cndja0Rxa2ZPZDdYRlowZm9rRnVrajRiN2hJRERy?=
 =?utf-8?B?emFHVFpkMTNBNjdsK1paOFpnaFI4ZmRDb0I1VWRrN1Z1UUdtR1l6bDYzMUY3?=
 =?utf-8?B?UzFITHo1Z0dUMTMya0JmRnJhZE1pSGVPL0lnWWZJVVNkRDgvZXhZTVlBMFh0?=
 =?utf-8?B?cWYrTElqOEROci95dktzN3V3WEFLNnBYRStNbm95dmZ2ekZlL3pKdHpHVGJ2?=
 =?utf-8?B?ZVQzVm5JNWl5TER3c2Erdm5zeEg0MU1jRXowT2RJNFRhc2RMNHFsZTMwUHZy?=
 =?utf-8?B?SXpVQ1ppVFY0QmZiRSt2WmxiUFFhY3pweCtmU0o1bUpiZnI4QXVtTDJ2NDRM?=
 =?utf-8?B?N3U1cktCTlNKL0FVSHUybGhRTTYxWWpmcG1aQndQSDNJMUd5eHJrVUtvM0Ey?=
 =?utf-8?B?UWhHbkRic2pMbGY2eTVqcUJKRENvMk5XVTU0YUNWNmM0UG1ubXVFVHpqOVg2?=
 =?utf-8?B?a0Nua2pJNGdCblNLakYwQ2dDNWVOaS9CWHlyYm4wVXAwUThLbVNOREVBeHVs?=
 =?utf-8?B?Ui9tbFE4OE5SQVJ5Z2dmL1lQWCt3ZkdhNkdzbmd5ODIrdTZDTW85elY0ekdk?=
 =?utf-8?B?b0xDZGpJQ1RMcGlJdDRKUFprUExDbVdDOVo4S3B3SlhHVWJGckJTT1V6bE4z?=
 =?utf-8?B?OUhJWGNjaUZnVmM5dWo5S3NEUnlMVEtmQ2wrV0Z4ZHZrdmh1cU1rS3ZSUGJQ?=
 =?utf-8?B?dWs0YkN1bmtqMDlYYXd2VmNYOWNoZXdJZG5YNEFnZkdJMyt3Szh5a1pwY1Ji?=
 =?utf-8?B?eloxNlhrdXQxSG00cXphSzZyR09kYTZ5S3d1SHpwZjdjcUk0aVpKVXN6bzUv?=
 =?utf-8?B?UUIzSUZWdk10VEM0MFMwQ2ZJQ0g4SEFZOS9OaXNLa0g1WlEzSFZOTElpOFZG?=
 =?utf-8?B?MDFtYmhRemFLTXcrcHVVSFh1Z0VNWXFSbHlobU4rUGlCaVl2akxKcVJpcWhy?=
 =?utf-8?B?RDZudGZZSXBEUktGOFRKRWx1L0RCYUtnMkp2bDNIaWl0UnYyYmNZL3Z1bUZp?=
 =?utf-8?B?VkxPRmljc0NadXdqU1FTSTFESHZUMzZtall1OWgwT0loWFMyZjBIcjRoWkY5?=
 =?utf-8?B?UXpLSVZ0TGZnVTA2RHV2TnZWcUdqUnhFLzdqSzd2cVpPNFFhUUdmbm1hOHlv?=
 =?utf-8?B?N3Q1MVY2anNyWXhkMWUzd094Lzl6UFpoa2g1alA1MnplMmdzMnExY2l5TlVW?=
 =?utf-8?B?bUljOU12dW1Fc0g2akRXVDFramVhN1VpUHdxTDZFeUdaZVhnSnM0N3ZwaStI?=
 =?utf-8?B?alNxamExbUFmUVdJeFI1RktwaXhrelZOaGowSnNic2lqTDc5M0JsVVhVOXFO?=
 =?utf-8?B?TDBDUnJNdE5YNDBPWjEzWDcwT2xkaXRsR1BYR2pySENDM0FuZzBWTS9HbFF2?=
 =?utf-8?B?MjFZSXBabndkWnMvYktXZ2RZQmZaMHJENWdNVW5CeVpKVmpRcGRhS3VKalQy?=
 =?utf-8?B?WXIxT1VOcGYzVmtHNjhEaWRJTzkzTzl1bWdWMkFhdzRNZU9RZVpUdk8zcW5I?=
 =?utf-8?B?NHFtZ1ozRkt2NjE2Sng1UWhRMEZha0NsWjZDeXV4K0hTZXhmeDQvQlVHSVNH?=
 =?utf-8?B?TWU1bFNyM1ZRajNTeERocFpyQlZsUGVTWXNkNVRydXpvL3BUVHkxeCthTkMw?=
 =?utf-8?B?QXpUTmo0SWJCM0lLam51NzJycTlLQUJNTFB0SzM5WFMxMXEwUEhpRGc1NFBy?=
 =?utf-8?B?ZVg1ZHRieHlhZFhmRzd2YVNlb3NpblhYVUtPNTB4TkJSMDI4T3lWanVtMkUr?=
 =?utf-8?B?Ykp5SHpIN0dHZmV1VWs1Ny85VEJSWlUrbTZNLzlJRDZaNVRmV1hhNmJodmFz?=
 =?utf-8?B?TmRHSW05ZnhxbHQrRndXNlF6bFhXSGdjVTdDc0lEcUV0VmZvTFFFTDhGRktB?=
 =?utf-8?B?M013R2VQL3JwRitxU2NPL3VjRUhvQ0Q1cUphWXM2M0d1L1FPWHVpKy9DUXZ3?=
 =?utf-8?B?Uk9pT0xVbXB2TkJ1VjQyaGJ6Zk93QWdOQmE5TXIyZEVwdXpwaVpoeFJHM0cw?=
 =?utf-8?B?eDV1ZmhnTjlyNmJJUFZjcnJHWGFmUnY2RXJTZWlBdEpRb2RQVTN6UnZ3OURt?=
 =?utf-8?B?d2xpU0NGWjE4UTJhU1B6d0gyL0NWdlVHSWhtaGZPd1dCbnlSMDk5WHRGN3Ew?=
 =?utf-8?B?ZlhmdUl1ejdtRFVrNktRcUowU05mNW4waTlka0RHQ2tZNnZMbk1LdExaUE0v?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d4d30a-8eca-4078-10d0-08dcfd24b591
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 23:02:08.8452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dhydPC/siwBegnKEKCz0heQ0w1FNOYgbmpepNEHs4tN8lyuO6RBkTLxaJtLh+IzyLSR9jpBEIExExSNcM3pa8nZ205ElOXLbHD7f/zCU/k0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
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

On 10/28/2024 16:31, Daniele Ceraolo Spurio wrote:
> All MTL and ARL SKUs share the same GSC FW, but the newer platforms are
> only supported in newer blobs. In particular, ARL-S is supported
> starting from 102.0.10.1878 (which is already the minimum required
> version for ARL in the code), while ARL-H and ARL-U are supported from
> 102.1.15.1926. Therefore, the driver needs to check which specific ARL
> subplatform its running on when verifying that the GSC FW is new enough
> for it.
>
> Fixes: 2955ae8186c8 ("drm/i915: ARL requires a newer GSC firmware")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 50 +++++++++++++++--------
>   drivers/gpu/drm/i915/i915_drv.h           |  8 +++-
>   drivers/gpu/drm/i915/intel_device_info.c  | 24 ++++++++---
>   drivers/gpu/drm/i915/intel_device_info.h  |  4 +-
>   include/drm/intel/i915_pciids.h           | 15 +++++--
>   5 files changed, 72 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> index 551b0d7974ff..5dc0ccd07636 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -80,6 +80,7 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
>   	const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
>   	const struct intel_gsc_cpd_entry *cpd_entry = NULL;
>   	const struct intel_gsc_manifest_header *manifest;
> +	struct intel_uc_fw_ver min_ver = { 0 };
>   	size_t min_size = sizeof(*layout);
>   	int i;
>   
> @@ -212,33 +213,46 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
>   		}
>   	}
>   
> -	if (IS_ARROWLAKE(gt->i915)) {
> +	/*
> +	 * ARL SKUs require newer firmwares, but the blob is actually common
> +	 * across all MTL and ARL SKUs, so we need to do an explicit version check
> +	 * here rather than using a separate table entry. If a too old version
> +	 * is found, then just don't use GSC rather than aborting the driver load.
> +	 * Note that the major number in the GSC FW version is used to indicate
> +	 * the platform, so we expect it to always be 102 for MTL/ARL binaries.
> +	 */
> +	if (IS_ARROWLAKE_S(gt->i915))
> +		min_ver = (struct intel_uc_fw_ver){ 102, 0, 10, 1878 };
> +	else if (IS_ARROWLAKE_H(gt->i915) || IS_ARROWLAKE_U(gt->i915))
> +		min_ver = (struct intel_uc_fw_ver){ 102, 1, 15, 1926 };
> +
> +	if (IS_METEORLAKE(gt->i915) && gsc->release.major != 102) {
> +		gt_info(gt, "Invalid GSC firmware for MTL/ARL, got %d.%d.%d.%d but need 102.x.x.x",
> +			gsc->release.major, gsc->release.minor,
> +			gsc->release.patch, gsc->release.build);
> +			return -EINVAL;
> +	}
> +
> +	if (min_ver.major) {
>   		bool too_old = false;
>   
> -		/*
> -		 * ARL requires a newer firmware than MTL did (102.0.10.1878) but the
> -		 * firmware is actually common. So, need to do an explicit version check
> -		 * here rather than using a separate table entry. And if the older
> -		 * MTL-only version is found, then just don't use GSC rather than aborting
> -		 * the driver load.
> -		 */
> -		if (gsc->release.major < 102) {
> +		if (gsc->release.minor < min_ver.minor) {
>   			too_old = true;
> -		} else if (gsc->release.major == 102) {
> -			if (gsc->release.minor == 0) {
> -				if (gsc->release.patch < 10) {
> +		} else if (gsc->release.minor == min_ver.minor) {
> +			if (gsc->release.patch < min_ver.patch) {
> +				too_old = true;
> +			} else if (gsc->release.patch == min_ver.patch) {
> +				if (gsc->release.build < min_ver.build)
>   					too_old = true;
> -				} else if (gsc->release.patch == 10) {
> -					if (gsc->release.build < 1878)
> -						too_old = true;
> -				}
>   			}
>   		}
>   
>   		if (too_old) {
> -			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least 102.0.10.1878",
> +			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least %d.%d.%d.%d",
>   				gsc->release.major, gsc->release.minor,
> -				gsc->release.patch, gsc->release.build);
> +				gsc->release.patch, gsc->release.build,
> +				min_ver.major, min_ver.minor,
> +				min_ver.patch, min_ver.build);
>   			return -EINVAL;
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a66e5bb078cf..b1f2183aa156 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -539,8 +539,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define IS_LUNARLAKE(i915) (0 && i915)
>   #define IS_BATTLEMAGE(i915)  (0 && i915)
>   
> -#define IS_ARROWLAKE(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
> +#define IS_ARROWLAKE_H(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
> +#define IS_ARROWLAKE_U(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
> +#define IS_ARROWLAKE_S(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
>   #define IS_DG2_G10(i915) \
>   	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>   #define IS_DG2_G11(i915) \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 3c47c625993e..467999249b9a 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -200,8 +200,16 @@ static const u16 subplatform_g12_ids[] = {
>   	INTEL_DG2_G12_IDS(ID),
>   };
>   
> -static const u16 subplatform_arl_ids[] = {
> -	INTEL_ARL_IDS(ID),
> +static const u16 subplatform_arl_h_ids[] = {
> +	INTEL_ARL_H_IDS(ID),
> +};
> +
> +static const u16 subplatform_arl_u_ids[] = {
> +	INTEL_ARL_U_IDS(ID),
> +};
> +
> +static const u16 subplatform_arl_s_ids[] = {
> +	INTEL_ARL_S_IDS(ID),
>   };
>   
>   static bool find_devid(u16 id, const u16 *p, unsigned int num)
> @@ -261,9 +269,15 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>   	} else if (find_devid(devid, subplatform_g12_ids,
>   			      ARRAY_SIZE(subplatform_g12_ids))) {
>   		mask = BIT(INTEL_SUBPLATFORM_G12);
> -	} else if (find_devid(devid, subplatform_arl_ids,
> -			      ARRAY_SIZE(subplatform_arl_ids))) {
> -		mask = BIT(INTEL_SUBPLATFORM_ARL);
> +	} else if (find_devid(devid, subplatform_arl_h_ids,
> +			      ARRAY_SIZE(subplatform_arl_h_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_H);
> +	} else if (find_devid(devid, subplatform_arl_u_ids,
> +			      ARRAY_SIZE(subplatform_arl_u_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_U);
> +	} else if (find_devid(devid, subplatform_arl_s_ids,
> +			      ARRAY_SIZE(subplatform_arl_s_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_S);
>   	}
>   
>   	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 4f4aa4ff9963..ef84eea9ba0b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -128,7 +128,9 @@ enum intel_platform {
>   #define INTEL_SUBPLATFORM_RPLU  2
>   
>   /* MTL */
> -#define INTEL_SUBPLATFORM_ARL	0
> +#define INTEL_SUBPLATFORM_ARL_H	0
> +#define INTEL_SUBPLATFORM_ARL_U	1
> +#define INTEL_SUBPLATFORM_ARL_S	2
>   
>   enum intel_ppgtt_type {
>   	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 6b92f8c3731b..ae64e8ec1adc 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -765,13 +765,22 @@
>   	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>   
>   /* ARL */
> -#define INTEL_ARL_IDS(MACRO__, ...) \
> -	MACRO__(0x7D41, ## __VA_ARGS__), \
> +#define INTEL_ARL_H_IDS(MACRO__, ...) \
>   	MACRO__(0x7D51, ## __VA_ARGS__), \
> +	MACRO__(0x7DD1, ## __VA_ARGS__)
> +
> +#define INTEL_ARL_U_IDS(MACRO__, ...) \
> +	MACRO__(0x7D41, ## __VA_ARGS__) \
> +
> +#define INTEL_ARL_S_IDS(MACRO__, ...) \
>   	MACRO__(0x7D67, ## __VA_ARGS__), \
> -	MACRO__(0x7DD1, ## __VA_ARGS__), \
>   	MACRO__(0xB640, ## __VA_ARGS__)
>   
> +#define INTEL_ARL_IDS(MACRO__, ...) \
> +	INTEL_ARL_H_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_ARL_U_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
Is there any point in defining this? I'm not seeing it being used 
anywhere. There is no longer a generic 'IS_ARROWLAKE()' macro. So does 
seem to be worth defining a generic ARL id list.

John.

> +
>   /* MTL */
>   #define INTEL_MTL_IDS(MACRO__, ...) \
>   	MACRO__(0x7D40, ## __VA_ARGS__), \

