Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HqTCLF1y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CBC365021
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58A410E887;
	Tue, 31 Mar 2026 07:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WKABEMoJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6202310E2B4;
 Tue, 31 Mar 2026 07:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941614; x=1806477614;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Mn5Bxqo3KNlNnOw01fmRo5Uip7dPNfgGIdOmRUMZ5s=;
 b=WKABEMoJRN6fbvvIh6zUkDD8xVir21H1q6zSOkNA3wF5yN7/LWX3M5NR
 j4tu0abixqzLQLp1kbg7bNf7sfDIu0yQjGlVlvuJqXCbRPiRh4r4SvnUF
 7y7lMuBVPqEJ5fTDX3y6GBptHMV10qRtD+NG4kpQ8RMsiYMofaf/oBsQ0
 dUGkCdXr5MefR/Pa4iGpO1ntODzFNloPaWRCLyOZQlbTboo8L+nKkXlrs
 RAlHt95/I2kEeC2NV6XT1e/qiJQ+wbomiLEUQVMiJkSzSmO/oWyjyvznH
 NB8mX0kzu2wVHf330EbjbfSw+U26Vo257hQ9xpyh1lnIbIU4iNJZcFUz2 w==;
X-CSE-ConnectionGUID: K7gEJicQR46K2jSSmKj6Rw==
X-CSE-MsgGUID: 84UuXHRjST22bHJOGwFNBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="76135908"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="76135908"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:14 -0700
X-CSE-ConnectionGUID: KoZe0PTKTIuLXPrGgVGASA==
X-CSE-MsgGUID: 0ALNY9Z1QZiQD6d83B6B0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="222985538"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:20:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:20:12 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.27) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JUtxTty/Yo6lMRbSf7fCygfKbempydavjFABMW9z1zVXVEOxzt2AhF0JzuJGZoIf8bd3ZRngm45EQ2UE/9kh/k3p3UgmrCD7Epmco6PyAKSScV9ZPilCaZyJ91Io0Z0QsO7geBnHOB9czN9LP2705JP3Mkd/urmK6n0AekrzwiJtoj/4JehuNwtTXxGhdmpSXRb4DXSz/JcfpbYpscZT5Se/h0PbivFAfaZGVSkDreLfhlR8VtAe7YVgleDm677ALtMThZ4SbwDXDI5YtlmFBz9tkMpH1n3ETS0U8sPZFv+kHK15Bdv7Y9CWcK7Q3Dh91UFBXAW6txJ2243XpsQ4sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5IcjbtWFgKskQZOHH0NqfjFktwcbYWQwIaUBn+7A23w=;
 b=kcAVlY6iG5yNP1yfYCIfS2Y3SUBPQPsrqENFYG9KdD95wPtpS03fi9nhsd4XXm8ejVedtyLd8WorLxBap9F+cZlIRinyrWN0xG+A2P4DOFvlTLjgZwdUj8GQh4s8mf/cWzQIaQvZL4Pvm00+sX5X03rboX+Scc2v2JiWaN6r3kqU8/LDXrNk92/fkzkYADe0Wd0SxLHkThTUvkNG+Le3NHwsvff5bDw01DPsTXaQbcZkvQVeh5CX36cettomF+TACA3wJh1NMEca+a2cXMEIkHX3iUc60rA7AMG19TE1ez1+upjehe1j9J5Zkdx93UNJZl5TzXa2Lgqw/rfR4L2Q+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:20:03 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:20:02 +0000
Message-ID: <c948efbc-3bc8-4c1a-8fd1-e519605fa314@intel.com>
Date: Tue, 31 Mar 2026 12:49:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 22/26] drm/i915/writeback: Enable writeback interrupts
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-23-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-23-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0192.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::12) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: a08b1bfd-e0ea-4de7-e43b-08de8ef5ec76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ZOE6gaq6xjUSAiTPBymgKhzAOWb6T01GruUbulWhft9buQG6BRl3UDDREZURpVujHZ7t+YpTrsDtOi+1K2HG4cqELll5k8U7I3T6kw7GPcWL3oDWxrWb6EbFt1ekk5ZBYS2Xy4u0tTxRe1ydb0KBrKjC0dkbkLlNjNpIJobBCHsV4VBXs5h8tamApNc9PsC2GGX6Opr0+htbPanbqK5/yF12Ey0/71C6seKBXHiA7iERwI7svNxkkgTeQsGt4aOkv8QCfWRudSvFp9J5dE3T85zhGSMpky2OuLujHSUJlBJ0UFGsgpG0qVzaebNHmOOWHgjKyYzxRCpLS8u+yPgFLepWfVDMbErwFGMGc+0ae/uXVBvjAEqjhhkaO438q7sRjsYy1gMry3ytRUhwWkII21rC4eO97uwyBvgVr2tI69IdWyuGETgcZxeSirMUIE9nvl/vui74ignNBpQjXNBqiWS3yEIujPlYHOW0MRV8T3nZX9KOvwGnjLRZMLD8Q4OyibDTczoOLqEN6ee5ybXAQblxFTxESne2K1psvU5rXQv/f0vuLElLhdHihdtDDi1FSwspMXGLrMNNdMFgcuBQ0sodXyfLChqFr5mR8WxYtx0Jco9c64+NLHwX0wPUnn/HCvlLiLKxtIcY3xxhLyN+sf4SmdhkH9kPrb/Byv6vjjrtQZySURzEch+QzD4WGQEXj/l2SUon+aL0oGRDOY69gZOi5PDDoRR1XvK3zX9Ym08=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHhxQVpVT0krcTEvczJBa3JCWS9LVmpXbVJod2lNV2ZrZUZPTWQzNGxhVk5T?=
 =?utf-8?B?bDQ0QVpRSEd0cXRkcHY2WE44eThyRGRXL00rdDNJS1lOdEtweXpjaVZQTStD?=
 =?utf-8?B?VnR4emJnTDB2WG9JVk01emlXdUFiazl6TGNvZDNqcTQxNmMxRUloaERxdUU5?=
 =?utf-8?B?blJYTzdsSlM4eFRFWW5PNUJxaFByVkxhVE9LbmMwYmdJTmx3dDNwNlR4U28v?=
 =?utf-8?B?ZTFQbGJ6KzdIYVhiUUhBREgzUERsTTA2R2RjTVdCR3ZkbWpwZzBsQ2NJOGlq?=
 =?utf-8?B?bnRObmlnWGliamY5NS9vM3locUxPaG9GSk1VM2R5V2pGMm9NQ0Y4NWlhR21B?=
 =?utf-8?B?V3h4bnNzcGlUZUR0bU1jR1FIVEFHMjdNSE5zNUJRNFRiYytXWEJFQUJqdlUx?=
 =?utf-8?B?TXdZV2tSMyt4Nk5WNEorbEtaSzJScjVDYXVDNUVOdEJaZG1EKy9wWTlnREdk?=
 =?utf-8?B?WXpYYkxOS3hRM21qdmtVRTRoY0FKcmV2dFNRMEIycHFvTS8zbSs3RS9ScUhP?=
 =?utf-8?B?ZHM2bG9HQ2ZRdGYwS1o5enZUOWlFTDc0eTFDYzBiVi9xR1c1NTcrVnVHTlNI?=
 =?utf-8?B?NzBFMXJPUkhib3RXTFJDcit2NzYrQnVsQlB2VlpsZ1ZRbHlYdCt4U1Z4S1k0?=
 =?utf-8?B?ZTloMlpjclhXOGRrbVhEY0JIakFvTEhFMmc3aVNJZ29DQklyVzRHbXRISUpO?=
 =?utf-8?B?MlJvSzgrMEJUSG5vTWVoYitZMy9TYVJsZ3Jhd1dNbXFqdit1Y1FIQzJkQVoy?=
 =?utf-8?B?MzRIeFFZQk1aK25nam40RHpEYnZBMUZLc1JKUUNsY1F4ZVVhRlB4WGNJZUZP?=
 =?utf-8?B?a3BqMGpkY2tOZm8zUnhoRHpUTmx2Z3VlL1dnY3doSVNFbFlHbVVHaXU0VU5X?=
 =?utf-8?B?azZQQlorVTcwVlQ3b1MwY09IaHEvUDhjQytLOU1wK2pTK3gyVzd0eXFVSXpo?=
 =?utf-8?B?c0RvRk9wK1g5Q2wxS0ZmNlN4U2oxU0wwYlVJdzhmOXNKRGRBME9TUmY3emc5?=
 =?utf-8?B?WElvWHI2cnp3K0JiZHNEYWs4ditaVmM5VEw0b1FuNFlUTVFIU05WaDhvOVA0?=
 =?utf-8?B?SGYzWXRaNHJ5ZzNzbGNvU3pESkxvb2JtamN2YUlLYnkydFpPWlovWDlxZFlw?=
 =?utf-8?B?b3FlVFZ5WFhoa1o3U1NFSGVPOEZocFF5dzJaNm1oNlJTek9vTURzaFMwTXRY?=
 =?utf-8?B?NE83NWttSjNsMWMwNE9HaWxtR0s4QUc4WGZsVzkvTU1oYXh2N1RUQjc0T1Ft?=
 =?utf-8?B?MThGZnNiUG54Y3EyNDJOS0lWSFFPbk9EWkhmYWNaak9RYWl6d0x6ak4va1ZN?=
 =?utf-8?B?NzErVFJDbFJZZlNrR2szT3B3NVFWQ1FrekV4UUNjTXR4OUdReTNTSGlmUE4w?=
 =?utf-8?B?eFZMcVA4RC9UQmdIQ2I0dUY5am9iWWE5TkdFQnVPOE02NmhiTGFrU2lmZEdB?=
 =?utf-8?B?bkpTMm5MR3FkcUZDNVlXNlBaeDkvallKQk0zblFjeXUxVHNBeWgzU3lmTWUy?=
 =?utf-8?B?U3kxY2Z0YmxHdDVBb3ZXOW9wcytXQ1V4RVZvR1oyTjNDNzlKdjZQWVBPWWow?=
 =?utf-8?B?YmVCM0YyQThRSFBRdWNJMGQ3eVVpay9aQ2pqSENYRElhM1czRHJCQ21vSGxx?=
 =?utf-8?B?UldpV3VFbWhwNS8vdFJqY1VUTktYSDRZVSthRlgxTVpNdk9Lelk1cnFnNDYy?=
 =?utf-8?B?Nmd2ZGVXQ0RMQlBxUEJQaks4SEpheFBuZEg5ZVp0TFpmUTVBa21BQWFDcFNS?=
 =?utf-8?B?T1NTZmE4VHpCQ3FlRVYvT3VNK3llRk5TMllzb3BLQmtTQmgydnJrbWt2U1Jp?=
 =?utf-8?B?RGpOU0VWTGdTeU0xWC9UUDlObWFGcHlKcTAwNWZ0c1pFcktwRFhqS0FDNFM1?=
 =?utf-8?B?aEJON254dE8wYUVEankwWnB2MkpGdDQzYldWMTI3aTRmVi9jRDRlUGtBQzJC?=
 =?utf-8?B?eFJ4QzgyS1czSlNkblkwWXl3c1Yzem5CRDFuWks0bCt2dUxMRzU2MFZqa0RQ?=
 =?utf-8?B?LzVjMW9MMFAyZzIvNUtROUJrQjBiSkk2RWEzVFI2Rmd4MWd6bzhPMkFGNjJi?=
 =?utf-8?B?VWVqN0hmeFVieG0yUnNsN0plTzRVMHo4RllyeVlMMXpSUEk4dndFQzhTTyt0?=
 =?utf-8?B?RGthMlk0RFh2Q0lYbTVsRU1zWkhpMWkwTUVGeGErQitiUTV4RHBFTG1JTGRk?=
 =?utf-8?B?WWtyZWFKcnBiVFRPRGhMejZocE4yVEhqMm9LVjJEZC9oRG8zcHNEaE9EdUJV?=
 =?utf-8?B?em5NZ1ByT1Z2NUQ5bEFBa3crVlVOd1lxaG9CaFUxR1J1VGlGNUJ5YnU3YXhZ?=
 =?utf-8?B?VWc0ZWVlcDhvaEcweGo1OEdqT2JOaXB0VE5zWVlYRmlRS0g3M0N4TGFkNDdr?=
 =?utf-8?Q?eKImn9Lh/y/BNkRbk7k4YRdYPwaTO6G1DEXqx?=
X-Exchange-RoutingPolicyChecked: GcYIRiOX6KLE4GcoHGFOk6qSLfRlfmtJ/m8a+MzkuBB70Zm0W3soFq0dKrb9F1od2xgwA84jGA1Et+bKWOq4ROicI0ozTJ2KAAH81cakeAXgHfm33V+broBNSGB6dZrbayDa2UgUMc6xvCfxbq/yRa7mCIhKeg1a4hX7u1YneA5NJrLSbnwThQmlusWwLTsVXEwud3iPkpwI4djXcm3Wmud7eZ2r8wiQdXEJ4dlkiCteHjQocgB+Xd9qd258ELDpmhds01xXJQZk5ZgZjGsCb53OhySd7tszxiZJab6pO91cjx+zrYfHNNBs1E+Rk1U16CXub0dA7zqlkUsgy578Fg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a08b1bfd-e0ea-4de7-e43b-08de8ef5ec76
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:20:02.7880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ikZp8Kl9S1uc5m2FCGfyZAGNdhqrodAHBTfBXq8TSEd99k5NQyRawRCG8oiEex4ofqUSPJltQiZdpjEdZmrOugonwHkv8nJj8FJF6KDoVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 64CBC365021
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Enable writeback interrupts while enabling writeback
> and define the isr handler and schedule work for later
> to signal completion job.

I guess this is not hooked up yet.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_display_irq.c  | 10 ++++
>   .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>   .../gpu/drm/i915/display/intel_writeback.c    | 50 +++++++++++++++++++
>   .../gpu/drm/i915/display/intel_writeback.h    |  1 +
>   4 files changed, 62 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 70c1bba7c0a8..656fb314b985 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -29,6 +29,8 @@
>   #include "intel_pmdemand.h"
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
> +#include "intel_writeback.h"
> +#include "intel_writeback_reg.h"
>   
>   static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
>   {
> @@ -1281,6 +1283,11 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
>   		found = true;
>   	}
>   
> +	if (iir & (GEN8_DE_MISC_WD0)) {
> +		intel_writeback_isr_handler(display);
> +		found = true;
> +	}
> +
>   	if (iir & GEN8_DE_EDP_PSR) {
>   		struct intel_encoder *encoder;
>   		u32 psr_iir;
> @@ -2337,6 +2344,9 @@ void gen8_de_irq_postinstall(struct intel_display *display)
>   	if (DISPLAY_VER(display) < 11)
>   		de_misc_masked |= GEN8_DE_MISC_GSE;
>   
> +	if (DISPLAY_VER(display) >= 13)
> +		de_misc_masked |= GEN8_DE_MISC_WD0;
> +
>   	if (display->platform.geminilake || display->platform.broxton)
>   		de_port_masked |= BXT_DE_PORT_GMBUS;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4746e9ebd920..e637b10597c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1495,6 +1495,7 @@
>   #define  XELPDP_RM_TIMEOUT		REG_BIT(29)
>   #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>   #define  GEN8_DE_MISC_GSE		REG_BIT(27)
> +#define  GEN8_DE_MISC_WD0		REG_BIT(23)
>   #define  GEN8_DE_EDP_PSR		REG_BIT(19)
>   #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
>   #define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 54e74450e080..864d4a28de10 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -14,6 +14,7 @@
>   #include <drm/drm_encoder.h>
>   #include <drm/drm_edid.h>
>   #include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_vblank.h>
>   
>   #include "intel_atomic.h"
>   #include "intel_connector.h"
> @@ -323,6 +324,20 @@ void intel_writeback_atomic_commit(struct intel_atomic_state *state)
>   	}
>   }
>   
> +static void
> +intel_writeback_enable_interrupts(struct intel_display *display,
> +				  enum transcoder trans)
> +{
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display, WD_IIR(trans));
> +	intel_de_write_fw(display, WD_IIR(trans), tmp);
> +
> +	tmp = ~(WD_GTT_FAULT_INT | WD_WRITE_COMPLETE_INT |
> +		WD_VBLANK_INT | WD_CAPTURING_INT);
> +	intel_de_write(display, WD_IMR(trans), tmp);
> +}
> +
>   static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
>   					   struct intel_encoder *encoder,
>   					   const struct intel_crtc_state *crtc_state,
> @@ -348,6 +363,7 @@ static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
>   	fb = job->fb;
>   	hactive = adjusted_mode->hdisplay;
>   	vactive = adjusted_mode->vdisplay;
> +	intel_writeback_enable_interrupts(display, trans);
>   
>   	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
>   	/* Enable Planes, Pipes and Transcoder */
> @@ -509,6 +525,40 @@ intel_writeback_get_hw_state(struct intel_encoder *encoder,
>   	return true;
>   }
>   
> +void intel_writeback_isr_handler(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +	struct intel_writeback_connector *wb_conn;
> +	struct intel_crtc *crtc;
> +	u32 iir;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		if (encoder->type != INTEL_OUTPUT_WRITEBACK)
> +			continue;
> +
> +		wb_conn = enc_to_intel_writeback_connector(encoder);
> +		if (!wb_conn->job) {
> +			drm_err(display->drm, "No writeback job for the connector\n");
> +			continue;
> +		}
> +
> +		crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
> +		iir = intel_de_read(display, WD_IIR(wb_conn->trans));
> +		if (iir & WD_GTT_FAULT_INT)
> +			drm_err(display->drm, " GTT fault during writeback\n");
> +		if (iir & WD_WRITE_COMPLETE_INT)
> +			drm_dbg_kms(display->drm, "Writeback job write completed\n");
> +		if (iir & WD_VBLANK_INT) {
> +			drm_crtc_handle_vblank(&crtc->base);
> +			drm_dbg_kms(display->drm, "Writeback vblank raised\n");
> +		}
> +		if (iir & WD_CAPTURING_INT)
> +			drm_dbg_kms(display->drm, "Writeback job capture has started\n");
> +
> +		intel_de_write(display, WD_IIR(wb_conn->trans), iir);
> +	}
> +}
> +
>   int intel_writeback_init(struct intel_display *display)
>   {
>   	struct intel_encoder *encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> index 3c145cf73e20..83a986753c4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -16,6 +16,7 @@ struct intel_writeback_connector;
>   
>   int intel_writeback_init(struct intel_display *display);
>   void intel_writeback_atomic_commit(struct intel_atomic_state *state);
> +void intel_writeback_isr_handler(struct intel_display *display);
>   
>   #endif /* __INTEL_WRITEBACK_H__ */
>   

