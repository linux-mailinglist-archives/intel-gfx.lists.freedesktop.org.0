Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D06F9D5652
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 00:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2841010E419;
	Thu, 21 Nov 2024 23:44:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njpJ/gJG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4268410E419
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 23:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732232673; x=1763768673;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8WdeKm4f5y+MpqbttL+dv/XdOpGiEefZxGd+Vqp1nXI=;
 b=njpJ/gJGLnnOPWkkE/t6zJnrA9tRG/UJ1zCNG/xOVVIVw/m4nIrA+pE2
 QQc8VNUrICL+d99YsTxm7Nl/hyp8FAR1wcCllAhMFCZlrsr1tTm3nxmqh
 xQa2JeuijDuFdBcDw0BaaYZEnE8VkBhxjBz6auXryoS+jDNXnuYMo53tX
 YQ0WqTS9wU/Iyp3ah9w6f1HJgEEMC7RYA0D0w5XKAwlZ1tZA8dD6LeSZX
 HOqtS3QfZtMjs6XLIiBzCDn83pGvF3LGGvfTFvh5UXZzCunpy03C2q0ir
 /xKMIJmPcTMZaj/JAlT381IK0jomXtrZPTCVN5wNXvIA1qnMiyGHtLoHJ Q==;
X-CSE-ConnectionGUID: 23cG2JALRW69/mmSeIHz5A==
X-CSE-MsgGUID: eh6x39keQQmM/YO5XIGoVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="42988978"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="42988978"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 15:44:32 -0800
X-CSE-ConnectionGUID: eiDDVlGRSwKjrcV/FFU2SQ==
X-CSE-MsgGUID: YjAXWR7dSV+pUsZp1EpF4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="94492911"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 15:44:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 15:44:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 15:44:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 15:44:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4PIr5c7Y7Y0WLXaf9mP4YDJ6KHNz3/hhfBRJ5CG9iVqkoPd8oPgQ/xN9CW5qzPuojXeeFCtumd4rbEn5mmgguxJx7ONL4+q94c9CmA+FGfXf65FWoCfCZ99U2EsCMsCp7XSwRK//cVEdWPhvqsWZMJbRa9fgCah+vttrO2hFkTKDkHiUTetNMZjJyIGqFMT5oVEQTNwSDVC3re/999q8/OKF6o+iYPzdbZXNQRhMmgdDFMf6patu0yvmpFVEF8poyVKe1hnvNlj00t1yR4RbL5vkRKbZ+rIjcv3ZTzYUBiEeTnwlw9DkWnovUxWCjHHzk8piwyXw9miwlyDman5Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWzWDypOqYgxD1EbUGnNtR74ZIyWB0gpk3zHl+M5AfU=;
 b=Sgqt+YCJ7uWOMOJhC4fYdPK7yjg+5zF4nPrMNxOAwWRmgJjyY4SLeg12/BJkUba5oPLjbpOrf0NsCkK01jsSD9UgD3bJQJT5eYRSzKOkAanXbrmHdctBkS0RxRD+t2VW0CTg9ZBfvjV7kFJo3DWbrcQ8uIcTDNzF9280hqC3P5bWce2Ti+pqsNA/oKZdwqBhzwSkP1T3ZMg3zUcK4DwCjGTDIAU5riACnDR2Htyv2Hi/7z6y5jwZGtGejSxb6vyg/jL8n8KAnHRQYu8xSCcTaJW45nin8EzxzvGmQfzlQB/uR09iDvvmF561FhMHB3YPuF1glHSPNqnISkVhoSlxdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by CH0PR11MB5266.namprd11.prod.outlook.com (2603:10b6:610:e1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.17; Thu, 21 Nov
 2024 23:44:28 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8158.023; Thu, 21 Nov 2024
 23:44:28 +0000
Message-ID: <990bda14-e5f6-4bce-bcd5-351d50f51334@intel.com>
Date: Thu, 21 Nov 2024 15:44:25 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915: Fixed NULL pointer dereference in
 capture_engine
To: Eugene Kobyak <eugene.kobyak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>
References: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0045.namprd03.prod.outlook.com
 (2603:10b6:303:8e::20) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|CH0PR11MB5266:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a754998-df8e-4801-601c-08dd0a867072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWNYeXdpSzkvVU9WSjJDek5DeUtUK014NlVNbHRNRUlTUVNPODhReVdtRDFN?=
 =?utf-8?B?Y3lheUJMdXdOcHpNbGFlOUlqL2FrQTZjVjcreXNQcnh3bGJjRjJuTkVTcGFQ?=
 =?utf-8?B?S0YrZTJpbmRoUzZqc0ZVM0lzQ1BuR1JMK2pOaGZwWFpIQ203SHBqTEtuek9a?=
 =?utf-8?B?Skp6V2NlZkRxWW1HbVFYM292a0ZETWxjMm5QTnNRUnF6dVo1OGk2dlJqeHRQ?=
 =?utf-8?B?SWxGd1dGSEFjdStka1ZGSnFhRVljQm15Z2RVc2tmVTRqSDRQTytHbVo1L0M1?=
 =?utf-8?B?Q2hCQTVUcUh6S1ZFUnlxNG1SRmpZZGlzak9DN0dXazV1blFYZ0FkTklGNzhw?=
 =?utf-8?B?NmwzNVBDNk1uOFhzWHFLdUdqMVdVd3NhNUJMM2V0Uit6Tkx4WXJ0MXQxN3d6?=
 =?utf-8?B?ek1EK0gxQW9Vc0hCczhMVHdyaTY2MzhHbERzZkNpWU5Da0hmTzU3NnFFalNk?=
 =?utf-8?B?V294SnlSSDVaWjR4R3JKY2lPMURTOUhTZkIzNmdYTkZ2ZTVKYXRKRXp4em5L?=
 =?utf-8?B?ZzgrMG5vcjdBOCtHTEdQcHE4RDJEMngvWjhISmZ0Slk0bU1xUXh2dWJJVjZ1?=
 =?utf-8?B?VzRmSlNZU05JanlKOUNVVk9ON2l6aW44VUNWMFRybkxqR0xOQS9yWjhHQlhn?=
 =?utf-8?B?NENtSGZsempuVmZKVG4yMjA5VkJqTHZTOGx2MGRrZ1lSSktXMmIxNnZTUi9E?=
 =?utf-8?B?ZVBmMlBUYnJuRHUxWGp0bnNmZEpJbkdXSmw4ZFJaQ3RWWnplVzhxcHQrdjNq?=
 =?utf-8?B?RXEwM3pHUGZoRGpwSjhJY3JhRm16OWQwZ0J3cHI1RkZtdmhaWVlyQ1RzUmJB?=
 =?utf-8?B?M2dRZStNUFJ1bFNNUWJiM2xrNlBoVHVFempGTVZqRktDYmJ1Sm1CZ1hLeHgw?=
 =?utf-8?B?Nno2UzBpM2JpSXFEdnJERTZsZGttYUUrMmF1UmZ0ZmtKNmV0eDZZbGNvSnBD?=
 =?utf-8?B?bENGUjBiVDhxR2paam1OM2hINXpMK2hURVpGNFRheEZrZnphN3JZbVl4WmF1?=
 =?utf-8?B?ZjZmVGVjN0hRYm45U1BQdG0wbmVLWXhOWGxrU2ExY3hCeVA2Z2JUd0RiWDZ2?=
 =?utf-8?B?MlBqa0RlUUtnWUFwd3JTaVlKRTV2U3FEamhoa2FRcGUrci94ZEVHcGdvWUhq?=
 =?utf-8?B?MnkzZnJoY283Tm5rRjFHdUo3TndwbnN3M25zR2xSZGN3bG1WeHVKZVR2WGlI?=
 =?utf-8?B?RVI3bE5SNWRIeTRYYmlhRVdkUWxxT3NTSTdyU2FoelUyZVVYNFV2dnVqUmdV?=
 =?utf-8?B?NitYNkN1eXQzSUp4QThPMk1FZTNVdmI5Ly9PYjJseWl0RlpnR2FYR3crbWxD?=
 =?utf-8?B?Z09DUWErekxoUUx6RTl1S0VzSGFMRWpMRm1ueUVDbkNTUGhJQ2pOM0pLbERM?=
 =?utf-8?B?cVp2eWtzU3RzS2kzL3dxV1VnZ2ovSkhUbjc2NUJMNnVtRm5WTHNubVdmaXBt?=
 =?utf-8?B?RkY2d3N5T2I2REg2THVQcG5pWkVKQVFCRWZFTjM3REVPblRPTkE1b04xWnk0?=
 =?utf-8?B?eVcwdnBHbkM1TWl5V3BjbDVEZHFRMkFmV20ySFFBdWJjOG5GNHh3a3Zzbnls?=
 =?utf-8?B?L0p3MTFKVkxnenVKTlF3VnBxY1VIZUd5QzJZdzdtckZzUXh6dkFOZ1Q5emxD?=
 =?utf-8?B?Ri9Ibm8zZytCdlVHOUtGb2IzTzNmYTZTRTZnL2t0WWRGREhsdzNTeEprYmdl?=
 =?utf-8?Q?7wY62lxnycFN9EyzrV1U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmJ2ZGVoZXhaNUs3aXpRRis4cmZXdDByRWlobXkvckkvak01SVJoRW85czBL?=
 =?utf-8?B?bHkrMy8xVU80RVRBc2lhc2pRZzd3N0FTbjRJM1M5cFZSVXcvME8wM1VLdHd6?=
 =?utf-8?B?cFRpRVFzVHBIM0xPTzF3cVFIbG9TQWJZaWZRL1JOODRleWJFZnE0SUlMdzJI?=
 =?utf-8?B?Qmw2OFhzZWdBclFVTlBIZnY2Vis1ZFVCQitHZUN6Wm9CM1A3WU1ZanF6Qndv?=
 =?utf-8?B?YlRqTUtVK0h3OGxqYkxta1daRHhYTnY5QXE0eGNDUlRrakNMMTRuTnB2bEJu?=
 =?utf-8?B?VkFZTVdtRzR1anVQTWxUL1gvUmFsdHd6S1hRU1kzNGtwQkoxQUJHUUMxZ1VN?=
 =?utf-8?B?MkFnbHdCa1FPWG5nejQ4TzFneFdEUkJaK2FYaElxMXJCQ2lyaHM4YmpJMXNL?=
 =?utf-8?B?cmtLc2d0dW1RWFNXcDdQZDY0V0tjYU9DM0dFSkZ3ZW1CV3U2V2p3OXU2OVpS?=
 =?utf-8?B?MHl2WGJPN1NkVGJXdTYrbVdyWnJqam1EZVpUSnluM2hST1JKWFpRcnIvak4z?=
 =?utf-8?B?OWF3bE5Va1pUMVMxMGN4Y1ZoS0ZRZUQ0VWptVHZVMEptVzZ4bWRPc2RaVUxM?=
 =?utf-8?B?ZU0wck9sUUcyc3NvQ2U2R0Ezdml2d1V5N0k3N2ttM0xQdFBWeEpIaTlMaWsw?=
 =?utf-8?B?UjVnU0RNWU9ZRDlMNVVnZmIvNFphRHg0UStTMWhlZ0RiUGNIYVJrQTVlZUMv?=
 =?utf-8?B?UXFpMDVRcW1YSHcxTUNuYUlna0szWGZmZnlQSDBPYXl1ZU9wQjFQS3h1eUNU?=
 =?utf-8?B?R0pXanM3cXl6WUhydGoyaEdHTy9kU1lVVUwxNUxOalZHTUk3U2Z6SnR5S0t5?=
 =?utf-8?B?dHRjVGF4UzhPbXJ3SjVRZjZlcjl2MGhobmZIQ29BSHF0V3ZwTUZqTEx3U1pU?=
 =?utf-8?B?aXZFQUxjOHFjTlFQZnk5c0hLa1hvbHZwL3VCekZ6TTdkVU9QZlZlK0JZQmhE?=
 =?utf-8?B?Nm1lejEvQStSQ1RHZWxTR2RpdFFiYUpVL25WbGlscHo5T20zMzhrNXBOdElm?=
 =?utf-8?B?ZTRqOFVZd1BnbGE4MFBaQkdOUkU0WXAvOUxQMHp2UFE0THZZc09BRDhiZ1ZI?=
 =?utf-8?B?d2xub0oxQjMwQ3JLTXNFMHNDc3RzOTdEeEQ5K2JGUGV5OFNRdFgxYVlVVzMv?=
 =?utf-8?B?cDNzMmVTam5uQVQ4bk9udnNVNlpTU0JTemxROEVYNDI1Yk5sbWVuaWZHQUZ1?=
 =?utf-8?B?dkswSXhHSkhkWkVKa1gzYlJhaUZYUlB6S2dab3MzVXRjN1FFcUN1Mmdzc2gv?=
 =?utf-8?B?eWl0S3YveGdvbmtHdm0rcWdzOGt5WFYraWEzRWxWb3UwcW80aDBDaFRJM0dZ?=
 =?utf-8?B?QkUzRWxmcVJlRU5iNEpGZ1FHT3RFL2NJT3FmVURNOEhzUmZUNjNseW5MTDZu?=
 =?utf-8?B?dlZTdnZIRm5oL2JYZm5ZbWQ1OUtWL1VRT08vbVFpbGcwQXNGL0ErNkdsUnJO?=
 =?utf-8?B?SW9mRXU3cmdNR0pkR0xSN0p4VDZvZUgydlk4b3pXTjhycGJ6dDhjTDRWTXU4?=
 =?utf-8?B?Tm5KODg2OUdyNEpvaGFBNUJvT0RvSDhoUjB5UkxSaUdRUG95TjF5MkEzZ1Jt?=
 =?utf-8?B?Q0tVeTVWYXlOUDVjZDByL1ZGZ0plS0ZjTm03RzVxNmQrdWtlaXhrRW1DU2M4?=
 =?utf-8?B?UlR0QTA1Q09LZ29qSjFTbmNER29pLzNmRDhqRjRkS0RhWUZaNW9SK3N0VU5V?=
 =?utf-8?B?Zk90VFJ4dElmSlR3b2pBRkZscDE4VzdTM0lDbG5lM1lsVjBjUC8zMlJTTEpi?=
 =?utf-8?B?aXJHditVM0dmZ2VsU2JaekRNYzhIZ2NVTDdJZDRxMW5aU1VIUlZFejNyME9I?=
 =?utf-8?B?clR0NklQaFdFRmZtamN6R1MvMS9mUW1rZUVUL1FQelNyQ0xOZnI1dmVnRWdh?=
 =?utf-8?B?TkZZY2F3cWVteTZOTHJubE9BUG9Mcyt2bllIUUVBWjg2Z28xQmdWb1U0QkFG?=
 =?utf-8?B?cU1qbERpNWtMMnpPOXZJdnh4c21VM29lbk04RXZYTWR4L0ZPOU5qc0E4eXpY?=
 =?utf-8?B?ek04STZPVXl6b0ZIR2p0cDJKSEQvek96ZklpYXdqYWRleWlsRklYazlCc1dw?=
 =?utf-8?B?NFFKT1FkQUkwTDNZSjVzTnlLVTE4WE82OWZWVWhlV2xlMEFjdGJtQ01tSm83?=
 =?utf-8?B?bEYrRlAzZWJmMFJWbkhyTHRuZ1NKallyMDkyQWJHYTZ6Zkw5cUNzRGFNQ2p5?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a754998-df8e-4801-601c-08dd0a867072
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2024 23:44:28.6619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6i5POU17VotASCv7jB/+WYCckc0fCas7mghFog3B6jT4nHfLc4giPqD5mc8kdRqTYCSPtWDu1viM3NF0y57Hd86/49NIoYuhGBsFHgHH4mI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5266
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

On 11/20/2024 07:03, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
>
> This patch aims to resolve issue:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
>
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gpu_error.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..acf403e4e5d6 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,9 +1643,12 @@ capture_engine(struct intel_engine_cs *engine,
>   		return NULL;
>   
>   	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> +	if (rq && !i915_request_started(rq)) {
> +		u16 guc_id = ce ? ce->guc_id.id : 0;
Note that zero is a valid GuC id. You should either set it to -1 or 
actually make the print conditional to not include the id at all.

John.

> +
>   		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +			 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> +	}
>   
>   	if (rq) {
>   		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);

