Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A399F8643
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 21:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05DC10E2A9;
	Thu, 19 Dec 2024 20:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gawsS/Gz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0060410E2A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 20:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734641378; x=1766177378;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=d2eMGIpwIcOUbzkPYMNxGv1uqp+Q+jm4g9LpD4q4Jac=;
 b=gawsS/GzTqEyBerHPPF5Zq0Td4WvER93kKNnt7ovT5fb62VQ9/kB75DN
 WrOtF0HX8d2TUYgAw6JmoFUTF+/2EG0dbkVQBqwkX6tNHBhmcZy2n0qgX
 syHWpEPXpk8ursuCXeyT5wv0mJUx32yb/rlYnXF9r1e9RqGW8gjs2vPUi
 nRBSMdhb6Zu82GxAubvW9JfPDL546gSfAWcRjnx9Su99U0oVKrYIk74fm
 J2SjV0wY6x/CxeXBjBoaUlDm33zjO/EvLowBz64ca73tMz9YEoAWgVR58
 YcDlKspRi3PQNRo3DlQACP0QGCEjkUziwh746zwRZLpCo21s9egxkTlzW w==;
X-CSE-ConnectionGUID: Lf5FcRPbSmiwypwBubhg7Q==
X-CSE-MsgGUID: w+v2SP1WTHKQ2nfqz0wWvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35340548"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35340548"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 12:49:37 -0800
X-CSE-ConnectionGUID: SMt1VtzKRKybWif0sSsEuQ==
X-CSE-MsgGUID: WSRgun+JRz6nSEwSRSoKyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="98207419"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 12:49:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 12:49:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 12:49:37 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 12:49:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mbdRyLauySh2EWTYpBE5i633kv7dkbzYsDUyiGjkfXI9K2dC0IsamHkeVLz4dguW1OaBDLD2NprILK8ah+Nb+XuiD1V1Yysv61ZFpBKbdHMbeiU6gi26CYk91K1buwN0Zgm8+tcAhB/FbVRF9TQmLd9gPsBOGZeJw/+pry/6IX+77olI2ko6XUWSM4BwizRkqzwZ3i3rXn8Xqe/d54wb4FfuO78K+1Lykq89ciGRMwkajYNVXDxxk0NDzUTDdyeVF0upfgCKtCgeAjwqNdPOIOfgrZ/IRC6nkbGmQ3r3MPvHoyXdBKcvRNBDNAUOgeOeJNcm6KWTRUZwx0bZSgqiuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yY+3OjLQEFGjo5fLi0L39QoJZMHHCNq4aAjlR5MhjCk=;
 b=iuQSKkZypBZqN+kgR3C/K7wmX252v745nkeVT87Fj29Eznv6xRpL34DPUHO1GLgxMklZajw5QuBUHTraJkuZJoIy70HXk69AM9lLK6RTlIEcfnvUNa1WhoWiwIIK/uajQaOAUiRMOpoW/+FUlqfnWrcnDqvHeUIz/gtTcz0Wdpvb7PUILFLl8EuLRk6MPxhm6SR7Wtq7jbsEjtovxq7hBt2wWv26noEw27bHqZdotDsu9N6bvbm3phppZUe1HzDumJIUTvEyhMqponHI3+V18qzNNLW8jTRth9Ns7ULZjk0JaIHaF1g7xMKHZB7jNdP6fAXiKv8iou18bBNvJ5Zf4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MN0PR11MB6255.namprd11.prod.outlook.com (2603:10b6:208:3c4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 20:49:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.8272.005; Thu, 19 Dec 2024
 20:49:34 +0000
Date: Thu, 19 Dec 2024 12:49:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Message-ID: <20241219204931.GX3224633@mdroper-desk1.amr.corp.intel.com>
References: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
 <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY1P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MN0PR11MB6255:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a740f7c-b4c0-496f-c35f-08dd206ea4ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TYvZ1U5RLARP85xM33KPKTOp+i9HierZhJeI1r4dcgifXZAc97eyIum0m+QF?=
 =?us-ascii?Q?XdfKHz/Lx/BCvplCRW1yTKu0nCDyNKXVTnWjOhAx7DjqbVZOZ5aT90KPkKMN?=
 =?us-ascii?Q?Eu/5XLEs+jc9hMYZ/FRFGne4jIO2eAeS7EA5AOHTZeFXqWjXkeeCCPf6GqVN?=
 =?us-ascii?Q?TXoIff0Wb9c1qUAnuVbdVOz4qzVTpnIRtt2r5oYtusMqkwZZoC1BYTwz91zA?=
 =?us-ascii?Q?0Usu2bCprv7q6wGXNnBRBbpXDZbg1XTQiyMwMxhWexnbbwQ/zCU3rWJRxDZf?=
 =?us-ascii?Q?YSAqGmcMkFK25kTKSzHBbme33/C/ATovKlhSuCyrEHo6PTzyWNWy1KLxMX+3?=
 =?us-ascii?Q?4Now5nWVbxBNB7Y9ji+VauTzvHAVsi8BSiaEKaBfEZp6iuRnlDouWtaABqXI?=
 =?us-ascii?Q?9IPkmuYr6Yxhfx+CR86y0fa1EWkSMW9BgST9RZVN2v82IBXjdV4P4wiqztiz?=
 =?us-ascii?Q?gfU/YlyVzA1S/azhjg69KQxUlYbI1Vunr512nLEWcn5ihbYPlBOwlUVmXNb2?=
 =?us-ascii?Q?gO0gPkdhi+m2i8r2sH3nB0pz4lGoY8r+OsZZfuYVHVDy107NTBsJUzpAYi4x?=
 =?us-ascii?Q?WxDJqxuBUgVYnc2OPYC+eo6R4w4GKoHoLmyI6QHMiHymz0mP+mvLwfV/tOwu?=
 =?us-ascii?Q?vA7ObrtI/ZgBoGlGD5ykiwqMwgJxhblmblhBS/PDzI+2J8KbvNMkpEkdoHoK?=
 =?us-ascii?Q?g5E6M3f5Wn8BmiICngEPfdIVJGjP5ZgmhBJB5HzfZcNYZNNCgyqFQHMYHhm9?=
 =?us-ascii?Q?byNyUOqqz5Jwcjb0ifH03rIk8bFkurxh0iXUd85Ktd7+lgXgc99cmToyRTB9?=
 =?us-ascii?Q?Eyrg2Zi1LYr63bP32XOF2isfT01jLehwiCHvBB3+XA+X6rR081Z/QWfS6MsO?=
 =?us-ascii?Q?QoiXxkjeI0tw2oj0hMTV+fEIJfaLU2JviYC1B+d67YELL530aXWu4KqDZV/S?=
 =?us-ascii?Q?aiSiGMRMsyZwWyzPNjf6E8aWQkLidkm0zJcGxDpd9srVLxIzf2bfwcgCp406?=
 =?us-ascii?Q?wLcyTZ5tOomp6vT5zOYTqRMTqjapKzZdcmwU3iMWmBIymGFwyjnMX1ef7M1Y?=
 =?us-ascii?Q?VnLFlKxF41qVZM2fQ9I7e4r5xSBbw8fh1ecTA5mDkXOYdl2KGX97RpZWgm7x?=
 =?us-ascii?Q?sN1N6mI3BFvbhXLVjnMkdPgVnbfOy48zOfhCEdTF+/eyC8Yu72ytNDRxI9yf?=
 =?us-ascii?Q?xjt27b6UMbgCUsHh/yX8xp0+jt/Q75W2kJw2H+C76WsML3m+8GhXEeT1kiz0?=
 =?us-ascii?Q?OyPCv9HwiufL7j8Jzkn9AtXQWgb3sU/d1rvCFwVaBd9UBgaXMiO+rcoGAt+A?=
 =?us-ascii?Q?e1nXwa4cQv1sjQi2VhMYk5E48t3DM2AeBhz1V/JmrsXev/lzGffw1TSO6tXw?=
 =?us-ascii?Q?IAh8baBOJu/tUs57R3+GDyJgXPKo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+icGaqo66JDlD/dnSvvkYv9bobCVnUhFqcg61xNkb9Wh4c6LxL2xa5ZzBXaH?=
 =?us-ascii?Q?rV2/3R6k/8lXc3n2I+VgasUz3Tnn2MMtZ5mLsGvdQXIm9/cZQIBmoTm43kFD?=
 =?us-ascii?Q?iYuscpkNMEyGRTIhI1zjQBzTLDzFaXwmXykQtk6KNs7YvF6g/maB7w+B6TQS?=
 =?us-ascii?Q?6wJcLEZW4FY6EAsayrZ6/RVyDCJq3HVOUHCPuXQwCv9gNkIe3JTUkJDRz69V?=
 =?us-ascii?Q?OkYvm6IPrAqBTKJaFKCOiHzgopq5djHovXUYzZpbAajSfpERL9UYmm1zxA7w?=
 =?us-ascii?Q?Z5iUGRjt7mm/cyn7eNnT8DJOtuDvGXz8EODvZGrLLQ5rteWeex3G2BUKcuXV?=
 =?us-ascii?Q?zwb72ZhX6I7bUAIoCruSo546u5qz6X2BDB5n+JOO+BnmVeTlI6IanMQqWcQR?=
 =?us-ascii?Q?f06sI3y0beBx0jokR4hirtoLI3GyOxm7HyILnRfX4bG8QJ37y+bBLLVVDyZ7?=
 =?us-ascii?Q?ipyEhnvlEdUas+Lxno1GColX3NZLhsF7YH5GMe7a8AfYxJD94t7On2q8c4B1?=
 =?us-ascii?Q?4eJt3rYc4Ps0lfN+ct4YxA1jsH3momzPFRMqVLtYxm8rhx9E7zJ6AbWZpibC?=
 =?us-ascii?Q?2CjHNmdFXk15zc4Bv7b+rW214UEME41UDxOuNNDwazow80oKBg3+jV/MPoDu?=
 =?us-ascii?Q?zZEt7SY/lDWWWjJ5RXHCCO/Q8b7mwRSDkUM7bnwQhrukvN6M6AjqgumNZ51P?=
 =?us-ascii?Q?9KUKPY7+pR2eu9CyPg5ZrbYbz1ymY6XMTnshNtJub31PYH94DckoYOGy8fe4?=
 =?us-ascii?Q?5CZ/lCOkmmP1Uc20PQR8/lCJCikgNeoN9ENQS9Y0dEQj6BWCF8It4fdBQqj3?=
 =?us-ascii?Q?d0XTxRDyjH+BPBIZ+6R4P2AJ1zu4Wb6RVFH6QeqOe0iiS/Gchi5OMygvjo6H?=
 =?us-ascii?Q?C12KOnSRY9Z9CEF0GE2QwZ+cOhrjLF2HVDLHdgLPV82lbqTSF9mPAmI8LGJX?=
 =?us-ascii?Q?7UmcohX0AOC86C46gSq83cjiLdNVz+gYOG+A9OPNUetMBrkFaUydgdoXQ0Kk?=
 =?us-ascii?Q?Nb2gmFiHXNBE2nSzWXxWR3rdZEBnKKaLjPCkFw5/AxATlFQgJVFzdxkRspbp?=
 =?us-ascii?Q?8r5V3SqcIwWSGTU3ULQib+ubjecyvawyXYc9NXF+P6LbemBu9K/Dyzm21Knb?=
 =?us-ascii?Q?86aCvLMcxZp8mtT8HzCrKswfIFm83/cYnpTl3m9h1SU1wzOQbi/la+0QY9c1?=
 =?us-ascii?Q?ddirzhQW8rAZu+UW2cuc2Auiu5g3vIzZ9vtsRz2vhUphU37pf4UJSTfaBt6R?=
 =?us-ascii?Q?AJB+jH3PwlRngntHZvzX1Neb9HeCqAKYCSNwOS1aUnlmFF9NW5dhiUcgJYK+?=
 =?us-ascii?Q?VeeYyqt3wxM/A7gmg3nRPwek+iu7/Av5s6quPRMNAluArTCKV5npqMdv+j0M?=
 =?us-ascii?Q?OVgjmdqOs/JQPi8gVGkt0D7lww5yJlCYYNhguzmnHUb28PYPFm5824ImAtn5?=
 =?us-ascii?Q?NO4e88pPZRwyqSdFiWxMB2FItGhFvig73zz1qmhpQo5ABYQ8BJCzCRqcnmkA?=
 =?us-ascii?Q?e5fMkZL/KJ+Xn0FuRuqoOhdsAXHHpN21ZBP84aDCYNhMTQEywqzdAD0f7tri?=
 =?us-ascii?Q?ySYjW3J+Tge1Q3hs22Q0eG34Qpm0VORxWqhIIzc0T1SIqfpo45q+wqVATFhV?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a740f7c-b4c0-496f-c35f-08dd206ea4ac
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 20:49:33.9599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WUAugLMkrWJ7cQW5EoJWsdob/fXlXKQR4IAFem+i/JUxK8I6pQee7leOrhwyTr2Jl0EuVWzRv8EN2tC+3auypj20gCrRDOa9AMf7AzXNIG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6255
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

On Thu, Dec 19, 2024 at 11:39:07AM -0800, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ravi Kumar Vodapalli
> Sent: Thursday, December 19, 2024 9:37 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>; Atwood, Matthew S <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar <haridhar.kalvala@intel.com>; Chauhan, Shekhar <shekhar.chauhan@intel.com>
> Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state service
> > 
> > While display initialization along with MBUS credits programming
> > DBUF_CTL register is also programmed, as a part of it the tracker
> > state service field is also set to 0x8 value when default value is
> > other than 0x8 which are for platforms past display version 13.
> > For remaining platforms the default value is already 0x8 so don't
> > program them.
> 
> This could use some rewording.  Perhaps:
> """
> For platforms past display version 13, during display initialization along
> with MBUS credits and DBUF_CTL register programming, the tracker state
> service field is set to a value of 0x8, which is not the default value for
> these platforms.  All other platforms use 0x8 as the default value and thus
> do not need to be overwritten.
> """
> 
> Or maybe:
> """
> During display initialization and MBUS credits programming, the
> DBUF_CTL register is also programmed.  Specifically, when
> programming DBUF_CTL, the tracker state service field is set to the
> value 0x8.  However, this is already the default value for platforms
> using display versions 13 and prior, so we do not need to program
> the DBUF_CTL register on those platforms.
> """

I think these are still missing the point a bit.  The key is that the
bspec asks us to program non-default values _only_ on certain platforms.
For all other platforms (both earlier and later), the expectation
is that the hardware's default settings (whatever they happen to be for
a given platform) are already correct and should not be adjusted.

The code here was originally written back during gen12 development
following the standard "assume driver changes will apply to all future
platforms too until we know otherwise" design, so the original test was
written as ">= 12."  It looks like DG2 (one display version 13 platform)
still needed the programming, but ADL-P (the other display version 13
platform) did not.  From version 14 onward, no platforms need it.  So
the correct condition to match the hardware/bspec's rules would be:

    if (DISPLAY_VER(display) == 12 || display->platform.dg2)

(I think on an earlier review of this I said it should be just
"DISPLAY_VER(display) == 12" but I overlooked that DG2 is indeed
included in the list of platforms on bspec page 49213).

Once later platforms like ADL-P, MTL, etc. rolled around, it turned out
that explicit programming was actually not expected to carry forward,
and we should have adjusted the condition to just 12+DG2 at that time,
but it was overlooked.  That was technically a bug, but it turned out to
be harmless because the explicit value we were programming (8) happened
to match the new hardware defaults on display version 13.  However we
shouldn't count on it staying harmless forever --- if the hardware
default ever changes to something else in the future, then it can cause
problems if we're still explicitly programming it to "8" by accident;
this patch is addressing that earlier oversight.

> 
> > 
> > Bspec: 49213
> > Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 34465d56def0..98db721cba33 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
> >  {
> >  	enum dbuf_slice slice;
> >  
> > -	if (display->platform.alderlake_p)
> > -		return;
> > -
> 
> I take it we're removing this condition because we no longer expect this code to run
> on alderlake_p anyways?

There's a platform/version check at the callsite and another here inside
the function.  We only need to do the check at one place or the other;
that's somewhat independent of fixing the check(s) themselves to match
the right platforms.

> 
> >  	for_each_dbuf_slice(display, slice)
> >  		intel_de_rmw(display, DBUF_CTL_S(slice),
> >  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> > @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
> >  	/* 4. Enable CDCLK. */
> >  	intel_cdclk_init_hw(display);
> >  
> > -	if (DISPLAY_VER(display) >= 12)
> > +	if (DISPLAY_VER(display) == 12)
> 
> If I'm understanding the purpose of this patch correctly (which I'm probably not),
> shouldn't this be "if (DISPLAY_VER(display) > 13)"?
> We only want to overwrite the tracker state service field on platforms after display version 13,
> and it seems like gen12_dbuf_slices_config overwrites the tracker state service field.

No, this change here is [mostly] correct; explicit driver programming at
display init time should only happen on 12 and DG2.  The DG2 condition
is missing (probably because I overlooked it and misspoke in an earlier
code review).  For all other platforms (both earlier and later versions)
we should leave the MBUF_CTL registers at their hardware defaults and
not touch them here.

Also, don't confuse the code here (which adjusts the register at display
init time) with the other (re)programming of these values that happens
at runtime during modeset (adjusting based on how many pipes are
active).  There are separate rules later in the bspec page and separate
code that handles that (correctly I believe); the patch here is just
addressing the specific stanza of the bspec page that says "The MBus
credits should be setup once with the following default values during
the display initialization," and that block only applies to the various
platforms that user display version 12, and then also to DG2.


Matt

> 
> -Jonathan Cavitt
> 
> >  		gen12_dbuf_slices_config(display);
> >  
> >  	/* 5. Enable DBUF. */
> > -- 
> > 2.25.1
> > 
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
