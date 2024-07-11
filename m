Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3681B92E38F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEE910E9E2;
	Thu, 11 Jul 2024 09:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY2DZe/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA9010E1E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 09:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690737; x=1752226737;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w4KyZkX2voVbeqObQ5dM2k8X7EotceOPQxyr2VT6uLE=;
 b=WY2DZe/jnD3Cwgl75B+w2T5gTeds7PPECdodCoxP+yH4qAu8hAK9tume
 m+d43J+XwkNa4s5MZmoZGRW6RQbSMTqq2o4Qt9/akwPJoDMHDnxSwtC12
 QDXeMwgxtgAuY69VBP46zNCmv0PhLO5ZHVzUHeE9+Kzxi4lqu1IKI5Snq
 lsPMUox5ayWTSLAVh1rJOPW8iBMRg6GokGotVkrAmOb9493o26wOdHcho
 6DY4K1Ol+/TUAha1DtWhT1JFU5zQVwbmL2UU0Dgf5fwzCb+Sxd1RqR41l
 es1U92ro9+FdfGh27XtgBw2Lylo9b24qiaX3RSUNbVWLwUcTfxIlod/G4 g==;
X-CSE-ConnectionGUID: A55RBBaASLCfd7qcCd8HEA==
X-CSE-MsgGUID: r48Z+vrnTR+pTdItcS/SyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="17900509"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="17900509"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:38:57 -0700
X-CSE-ConnectionGUID: ElF9BC4nRBmBYEvDy2QHlg==
X-CSE-MsgGUID: c/R3VodJRmu8jymsIYSntg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52884598"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 02:38:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 02:38:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 02:38:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 02:38:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9qFi6ZuyN9+pfaOR1JxDGeK/qOiKd1gp7bbCXSVndAKfjUD/UwgqP6aEs+SpoFBuWwA03G/quY8lv1Afxbsi646e/JkzfOqWlTT5It1Q8/PO2UlF2RjxbqXy74gFpihMKHb4GjL0OmlLFMEX5K2mJg/w7BffNDzy9XwQTBx1v8P/ApAF4s3MLtnR/dnnbQlE/92aNRNkqdovb0ZUytiPVaJneeN3DPhFx/80Rw7dBhfUxcdotA8tTYDaNHsLew5m0ARJPOFZlL8jCW/iEP+yV2gvWCmsqjdZCPLNKFq7bqFOXqbxkrdu3Rk4Lmokul+fQ75R8yWdQpeQvuxi5K9yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OF8ngmurayL9D/abcQulIBC+/qPoM5F+wHF4woRCWg4=;
 b=D7cbV89F3ieEe3LQ+5/fkpoqRt9jPrKi8Yi64JWkL05rUhcb4+2ogl1eAlr7HCT+9Jq9pYuuORhkT03pAku8igBN2lZExme6Fn2SGomO0rqvChOali9zTT2h6F3RhnBKZxjammk5Y0NIo3Uk1CTwK3Fsd3jBGdgzJVJxPn/dnkdqVVM8FpssMI6qva3pbDci1pGAewIX5ccqqzJ7E2S+cFlFEqTi4b1ESJtP2U3ECKgUIzo5midrzHHRhG+wfPc5nsxXk3zW0MPQ6B1GhgbuIcpQ+hCcqz+M5NFsIdBbmEHNNOO+0nDT5OG4pRuO2081txQ/imPFD34SHwz1dguPgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8299.namprd11.prod.outlook.com (2603:10b6:a03:53f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 09:38:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7762.016; Thu, 11 Jul 2024
 09:38:54 +0000
Message-ID: <1207ea8e-db79-4605-9912-fa72776394ab@intel.com>
Date: Thu, 11 Jul 2024 15:08:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] drm/i915/dp: Reset intel_dp->link_trained before
 retraining the link
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708190029.271247-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8299:EE_
X-MS-Office365-Filtering-Correlation-Id: e5fb13af-d6f5-44c3-97f5-08dca18d4749
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akdpeWdMY05IM01sbE9tV2Q5NmtEbjZRUGJ1UmZMaWdidUlwOUZnMnNORkE1?=
 =?utf-8?B?RHlNek82bit3ZWx1MHpBSkdRVFdkU0pTZmZMeVVUUnFFMURWSVhmc21ZbW9E?=
 =?utf-8?B?OFlJcm5RSUpHa2dIVXFmbG9EM1hMZkxrN3QyS1l5Rnhlem9Za0RpYUkzSWwx?=
 =?utf-8?B?T3B1Y0RmZXZxVVJKc29FRjlpRC9heVIyNTJhQzh4RW1QZlVKSFk5bmxvQWY5?=
 =?utf-8?B?ZnpTQTlZSFNFVEZXQVF0bTNZMzh2M0NGa2RNSHdNUzA4bS9ZU0RtQ0RjYkpD?=
 =?utf-8?B?WGQ5QzZQMHpoZlVnYmoxZWp2aVJHbTk0b0NtQm5OWFZ4UzIvOUxTS0FLVmVW?=
 =?utf-8?B?OVU1c2NFZGMwNmtrSCtkay9iMSswYzFibDhJVEJOS01qUytzWTFnT1RKZW9r?=
 =?utf-8?B?VVpnTHhYRkd1eXR2RmdIYjlyNDdiYk1DemYzeVVTSkRWK2ZiU21uN0JGRmFU?=
 =?utf-8?B?YVd4MXpxR093eHpaL1lZWkpHM1dBTG1qZHlKd2IrTFJJYWpFbjloUS84a3Nw?=
 =?utf-8?B?MGtHNXpyOUdnbnl3c0ZpejJabEgzaU05TjlkWlBIUXNpV3hJS0lxMmJYN3JE?=
 =?utf-8?B?emVQc1VnMmF4R2t3OW9ManYzbXAvVFlqdUdXcFY2dEVMZlBRZFlFRW1WdUR6?=
 =?utf-8?B?N0lVUy9INEhNa2hhZGg0Uk44MWg2RVVjV0VZcVR0MXNsOUhZWUh2WnpRbEpt?=
 =?utf-8?B?UmdLRFlmc3ppYzlCUlgwTkFxV1ZVY2FCemNSVUFXUWU5cWR0YjFmbWNvZW4r?=
 =?utf-8?B?OFd3K2NSRSt2SnR1OEh2UUxMQmZqWjRReVJqZEpQcmxURXBMUlgwRlhKTzJ2?=
 =?utf-8?B?M1BUd2tpb0kxczZna1lrV3hXTkNIby83NEo4SGJhYytSak9uUUdZYng0cjhB?=
 =?utf-8?B?NkxKakdUYlFoclA5WEdkVUdROWtnenNGYXpKdkUxOEIzUmM0NUpWdVBSNk11?=
 =?utf-8?B?Q1JTeE43dTJ5dTlsMDJ3dmY5Z3VMdE5RRVRGbGdNWXBEbUZjSHVPRlBtZWg4?=
 =?utf-8?B?OFdvMzUyK21CdEE1bS85UXhHcVB5dGRySDZKVldDQzU4MVpCQWMxM1EvaHE0?=
 =?utf-8?B?SXQ3NitpQTN1cXkxTUQyTG41YmVkM09oMllJNWYxRzk4UjFINUNoVXFTdnFS?=
 =?utf-8?B?SmZIUFBSR01GRCtEVjR4b1dKaTNHazVBakZRdXNuVkhLR1pFNjBKNVhNb2VB?=
 =?utf-8?B?a1FGOW5WNEdrRjlqWUFySVJjZDVkRzRrWVduZTdtWmY2T2VWeDV6RlNDMFlB?=
 =?utf-8?B?RE1TQ0dhSS9BUC8yVURaMzhxM2tDcU1jYVNGdFdlUUFpdmZMeUFoTlVoYXU1?=
 =?utf-8?B?VFFTVzRUVkFCQTZiZ1RyUUY4Q0JUbHdUQytwV1hZaGxCTWxFdlN0OFdhVis1?=
 =?utf-8?B?cFF5MVI1QnptRVgrT2lSZGpHTndMMC94NFNXdUhmWWJ3YnRlNlpTUkExS3Vi?=
 =?utf-8?B?RTVMcHphUDVWaFMyS1NNeG5PWDVrc09SLzBSUHV3cjB0Ny94dEpvVUxiMXlB?=
 =?utf-8?B?TkZoTHhUR0RlR2JsV3NCcnJmMFRzZDB2UG1qbmxWSU1JaVpleEhoMHhOOUg0?=
 =?utf-8?B?cStZVnZtSGQ4a1BtMFJzSXArUnJiNlRXdVBjK0JzUWI3dlJ5UTBKSnNwaXdl?=
 =?utf-8?B?WWdJNUIxSkUxeEx1RERwQ3puQnNWdlVKN09uVzQrNFptdHVrQmhtbUZFa2xm?=
 =?utf-8?B?eGczQWJ0M2haL3NtWlJ4Y2UxU1U0eE55QTNvZ1UzeTF3QUxOdWxlTUZFaXBG?=
 =?utf-8?B?VXB4ZlZUbHdoUUxkWFgwM0ZQeVUrOVJlVlg5anBEbTV3K3plNHFYbUJxUFRH?=
 =?utf-8?B?N1ZNSUIvRXFXLzdQS1RCdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzBZWmMvNUxOMjZHTWJlSm9YSnNud0ErVXJBMEVhQWdBcUVPY29LMy9aTXdU?=
 =?utf-8?B?MWgzbVhYQVROMW5haThCd2JtMGpTNUI5NjZnSncrS0t1c1RTNzNxV2ppWG13?=
 =?utf-8?B?YXJHbk1rUEZLYUZucGhXZFpNU29DRUMyZlBJSFp0Z09uR2w0ZFhabEhmT0tk?=
 =?utf-8?B?cWt1K3VXWndVd0hQV0pSZFR6Q1V3SWszM1lZVFdkN1F1MHphcDREeGpmcGJl?=
 =?utf-8?B?NDB4cTZtYUxvUUpyWVdIYjNtTWJZSDR2VSswem9NYVk3M1NmcVRqRHQ1dzlO?=
 =?utf-8?B?N2VkUXloeEQ4TXk1YTJGdXdzZWRNWUZGd3kzclI5Z1BONTJGT21UeEdDNnFi?=
 =?utf-8?B?WEJ1UndodldUTmllSlpJM2FiNnVxUlErTHgxNk9SQUZ6QVRZaW43bHJWbTRv?=
 =?utf-8?B?WGtuVXVnb085OUxDTTk1VkUzcTFPVEdseUI5QXBwd3dxbFI4TklqREVsSjJS?=
 =?utf-8?B?MHByVkJNWG5YU2Y0VU0zdVhzR3hjZ3dhWUEvMWM5WldDUm1Ubjl4VUo4aW1v?=
 =?utf-8?B?N1lhb2Z3c3RRc3ZEaStIcWxLWTVIajFWb2RXNVhsbVNXclFqM1ZJK3pPOHFr?=
 =?utf-8?B?NG5IV3hRYmtuUnViRUs2ZWUwdDVkbHhIYlhwZG90R1dIbUZNQnJEc3ZaYzly?=
 =?utf-8?B?OWNDY3VHUU1hUCszeUJYS1AyYVUzcFpxdDFjQ0Nja1Q5Zy9SdnVFRVN3WGQ2?=
 =?utf-8?B?c1JCVUYxVzZrT3NKOHhJdlB5TXh0eGtKUW9kSTV2U29heXZlMHRjaXFtek5i?=
 =?utf-8?B?V3BzelQ4M0lFeEp4bTRxTjFmSGZPRFI5NUJTY1Znc1lzbm82enhONXhvRkN2?=
 =?utf-8?B?cHp1bmVaYzBTYnhYTGIvaHVsekdlQ0tBZXprMzFDL2Z4U29sQlhXckNFaXZG?=
 =?utf-8?B?bDRwYU82VEZCOTZMazdKOHRwZnRHL2x6UVNxK2JPbDd1dFdTWlAyekcyVit3?=
 =?utf-8?B?K1JQaFMxU0pScVB4S2lRTXNNcXRxZUlzdG5icGFIM0pWTjRreUJoYzgvbndh?=
 =?utf-8?B?L25SbkcvaFVlRTJ4czYrb0dPcnJDcHMyeHhHVW15eVN3S3dVWk5MM1lJaFhq?=
 =?utf-8?B?Y3N2TkFGSEVIT1NSZ1Nsb0tmK1VVd1lmRUpHMEYyTXYyNlV2eEljSlNLS0R4?=
 =?utf-8?B?cHMxU3ZJK0RkQkJwOFlZS0VqbHJjdGtwY2hpdGtSMXZUdFFlRSt1ckx0VEpz?=
 =?utf-8?B?Z1VCdTR4U1hFMkFGWkNPYWo1dHBsZkdBOHVoTjc0SHg4eGtCNi9TVlExa2pN?=
 =?utf-8?B?eWZJY0dnKzJueWtXdDdIMlZxRzJyT3BoVU5IREsrcCsySTlnUlYyRVEyZVlG?=
 =?utf-8?B?MEp4RzMzbzRPYXQyREliRW45Q0RjZkd1dnYxK09rb0hFeXBreUwyRURtcHNo?=
 =?utf-8?B?WUd4WVJTSUtYK0p4QUcvZThicm5mNXlUZnBXSkI1U0tQbWY1UHRmS0ZyRjRI?=
 =?utf-8?B?TXJFTmNTdDBRZVBWRzBTS25sRXNKS0J4VUhVUjY2R1NoeXI4bWVqdHMxSGow?=
 =?utf-8?B?TUFyNG1mUXFac0FJUjkwVnFoR3FmZW41SXlkY3AxQkZaam5keWhwL1FjWGFt?=
 =?utf-8?B?Vjh2VDZqUW5XZDFBbGFsRHF5WVVWRzUzaWJoOU0rY2w2WDRtVjd0SjBGNHFQ?=
 =?utf-8?B?L0Vuek1LdEdGMzhoUTZSdytCRkNobUtldjdIL083RWtlZURtVWp0bFk4L1Z3?=
 =?utf-8?B?aDhlZmF3c1ZGRzNta2xEQktueFduRlBjRWt6STk1RlFuNHpnVERDWVZSWFpn?=
 =?utf-8?B?OWN3eUNacGJuY2cySTFVTmlsbnhEbkM1ZEZkTzhna3Bzc2Nxcm9TMlRzMFRx?=
 =?utf-8?B?U3Z2VXptT2xJaWM5K2REVytWVmVmaE9CWWk5aGFvekJDZzdHNnV5ZGlXNXdT?=
 =?utf-8?B?WFM4N1gxaEozUzF6RUVEVk9BK1JPTGJnZlExMDhsVmJ6Qmp2cDFUb0t4ZHlN?=
 =?utf-8?B?L1N3M3ltem1XalhlWEJmZUE5MGZpaWZmZzgvaXg2TVRLRTYwbkFUT3o1TTRv?=
 =?utf-8?B?WitEWXlnenllMzVTQWVBNXpnbFZTT1pUNHBXSCtFVDFUYkJFbG13T00yMXZk?=
 =?utf-8?B?SmEyRmd0VFNKbmJxS0h5L21ZYkE3RDhBM3ZYSDRZcVRYSVIzRHYwWTR3QjZr?=
 =?utf-8?B?ak1HbGxoUExaV2FBbUU0VHZJaFNWUWVRUUQ5dTl4bldaem1wZEYvUHJSOWlP?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5fb13af-d6f5-44c3-97f5-08dca18d4749
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 09:38:54.1266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AigmIxDFiGqFw+TheT06mgz4vqQXunP2eyuPgPut64fzeonv9pZKEv++dS5lSNFIY2MuGQmOAKET3WsnYOVEUkn8j1/o6ltnScuwKrkbi2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8299
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


On 7/9/2024 12:30 AM, Imre Deak wrote:
> Regularly retraining a link during an atomic commit happens with the
> given pipe/link already disabled and hence intel_dp->link_trained being
> false. Ensure this also for retraining a DP SST link via direct calls to
> the link training functions (vs. an actual commit as for DP MST). So far
> nothing depended on this, however the next patch will depend on
> link_trained==false for changing the LTTPR mode to non-transparent.
>
> Cc: <stable@vger.kernel.org> # v5.15+
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e66..59f11af3b0a1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5314,6 +5314,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
>   		const struct intel_crtc_state *crtc_state =
>   			to_intel_crtc_state(crtc->base.state);
>   
> +		intel_dp->link_trained = false;
> +
>   		intel_dp_check_frl_training(intel_dp);
>   		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
>   		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
