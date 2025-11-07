Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE56BC40D6F
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 17:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6773810EB17;
	Fri,  7 Nov 2025 16:20:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JbWVduUc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA2110EB16;
 Fri,  7 Nov 2025 16:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762532405; x=1794068405;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ugMg7l16tFEis8+faXVWiKXFZBfEkdVAmc+dmSYQMFM=;
 b=JbWVduUcyHRntPV7rMImz0qLx6jNFWCgIJ/ohA8iecy3x/iCBZzw3rpy
 Q3PW6qni+boLXFvpHAfPEwS28nYkv2ebuMUk7bNmgAYe6ESmUsCDx4/P8
 +uy1ddyBs9Bri1qln1K3eX9hc8pA2K3o7t2UB6Jh0hCUn9dqnMp5lg8Em
 j3e7B1eZz+q/1TEgDDZ+W2WR8AG7+yYL/7rv4hDiIR9bHlc/7d9IKgm4b
 N2leTAdKH7T7WyDE9D6bD4EbFM2vz1rI2LZymXNYtgl4NjKfXDjRANaEr
 kNzVRFA2SX4R/NJbiPyloxia4TYRJAEKXN00cLiiOecSSjGfGx00LNYXL Q==;
X-CSE-ConnectionGUID: G3lmcrfZRguCP/dwtv6kSQ==
X-CSE-MsgGUID: N5nLtlkSRQ+hM4qSUPI3wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="68331770"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="68331770"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:20:05 -0800
X-CSE-ConnectionGUID: 07lYwsSBQWWJQLo43gTRTg==
X-CSE-MsgGUID: Xa1BG9v7RK+imXajlpI2Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188504848"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:20:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:20:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 08:20:04 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:20:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJz3RH45hj1LWiv3ezh7Nz6JXX60isOifyNkmI0LQiu/5pIlZhvgrVliQSp1tHS/xFUQ2lnw7IqJSbbsnjZsLFJFl5+IIeR+FAB8SjtFvpLnDYWz6xLf/qlZBIXFJEzRjhYITHu4FtnCmlEgpdVt4etf4o2OenmK/O0cJLFd0d1oUHjYBOH79a3mldahX1uPVMi9nAtwQq0mEDPWS/vj3l/RTYTFJFBBrK00Snx6ugxALyY+C33Uqh82KGT396drfPTsMlILMlgJEh7zQAaxws35V9MT5/rlwfpmJHZ+fUJLVbrESjefB5wsQzAWOr8j1K7NkaOrZvYvBg4a95+dKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/GEJEr0WKHwXUknBSTqzl2DTVaqA8vj3Z1Nxz7Rz13s=;
 b=PjpPGLTai9X5uaoZv1zp5YCl1zedPmWylwRn7rWfBdHcpXpXrczAFIivUah93760JwO3OD4F/iyJ8edxH+nzBV/26PpEHhu6V61OY9VdJOrkB3Xa7pqYYLPqy+rFj/NUk8vOZdrRrirO+wt88p/ygP7v1fz88W9xU3Mkz12wiSzV1NzlYCf8QdXQ4WIpjfmfNhnPeuGP3bgzf1hfirS7RSCNJUvgIeZXHbOWLXoDmUcBRYtWzf8qPtlwAIAR4v7OILnDdtvQO0xLcppAL8nz/kL9whQnW8Cs6VzoscNPnVFScrEqm7m0g55N+vWIelYoNHL1U7KavFbMTcNkJJ1leQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 7 Nov
 2025 16:20:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 16:20:01 +0000
Date: Fri, 7 Nov 2025 10:19:58 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Joshi, Kunal1" <kunal1.joshi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
Message-ID: <tbhpegnd257zov5bdy7kroype6hn3pjjmc2ev5kr5wqjc74ixs@stkigbaqscwb>
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
 <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
 <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
 <sogg34aj3zol6vgybvzoid5as7wjyyvsdj3eth7g4pgsd5k2w5@xxkw7byvklfo>
 <1c58f65890e97d104075f71d7ca6a630e6073c9a.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1c58f65890e97d104075f71d7ca6a630e6073c9a.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0190.namprd05.prod.outlook.com
 (2603:10b6:a03:330::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB7542:EE_
X-MS-Office365-Filtering-Correlation-Id: 1102face-dfe5-4b6f-33fa-08de1e19801e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|27256017;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?KL29GEeG2zhaxWCPzz70xNO3Z9IwgqCk1yterMETq6uylu0to0IhqS11i8?=
 =?iso-8859-1?Q?S2OHbdMf3IZoTG3FZ9kpDQ+RdnwLY6Pt7+yMTrUl+OOHnJbzMDAJfGuJ1v?=
 =?iso-8859-1?Q?FC+hb8c9a0F3C7fMYpGY1S2QijalrQZXP0kclZT2uNIs7QEBCLfRqiPEnB?=
 =?iso-8859-1?Q?91sJBrQro4Pjp4Ti93boNXJnwphxUurBqAgnNDCvzLU2u8znVlPjHCdX9n?=
 =?iso-8859-1?Q?IedBmhTn+B9UrtqvctlgdqwGOw5k5qucoHw12gPdcbW3Oszj36rKWZOUxN?=
 =?iso-8859-1?Q?lg2AN7idqIG2RUDt5+vx6esqaZZbKwSxZjk9av84gYnV35FrRO09YHCmol?=
 =?iso-8859-1?Q?8Pj+LH0vJwYgJIKtwaLpMJHCLHiQiejXJmBzgaL08v/PaGxpXFJRyHuOgf?=
 =?iso-8859-1?Q?OMIrUnEbdclxfqrS3FPJBqK3ztHr11pqJstwMSjDdHQ+kmYzAWoRqXT6R8?=
 =?iso-8859-1?Q?Ezbkqi1O/IyZg72r1CcoDhAwNqR0zUgGMCzunCseTYOFaXzXCgWekkCBDH?=
 =?iso-8859-1?Q?ZD9w5RLveasyUWqG083mrabqRjWxlqEFmWI3/buZ+RpHHX0o2w3UgYDsj2?=
 =?iso-8859-1?Q?Gl/vogNglJhm24+livVGjqqbCVS+mmYVBK3she7TV4MGaWwTXtn5P+hTA2?=
 =?iso-8859-1?Q?JrMQTRn8RzKO88ekqJ0jWGMl3ILoCdtedDygHBqS3hSofv+5wJP9clU9AU?=
 =?iso-8859-1?Q?tSQe5K2IdDdxYisMIJ0WcTpdA39hMU+82hMUDsaaaYXNAgUzDqGNIvbYOB?=
 =?iso-8859-1?Q?IHma7Z28oI15S2irGY/GPxj64ahoamRna3TTxOIljSXuIVIYqqm79DOKZl?=
 =?iso-8859-1?Q?SB2eKJUGQ3gIFMuju6FzP/NCavAPohZx+h4f48IAj4n2Aj+L6mvgy1zMJr?=
 =?iso-8859-1?Q?4qg9Ea6UiMHi6N7XggFU5mPTaUn/zwVESnrVCqsGTKlipoQwFYk01YXT/t?=
 =?iso-8859-1?Q?jC0aQAeBhpFqDrMc6rCqerUmiv4arkxnzsYnDJn4RoG167HQdPXQhOnQUt?=
 =?iso-8859-1?Q?z9BJOn3/hXm5oztzbmhGPZKzi4gP4/jsB28FRvHcjOxdTuWRbJvoJVzSYH?=
 =?iso-8859-1?Q?p99dyckJnnV3ElRFxEHiIq742KFVng0zOYPyXW6Lk3CpV3rGmmHhm+mpj0?=
 =?iso-8859-1?Q?a7oJdw010gq/c1luJJpR3XOZF5cHmHT9qw5MNZaUDi61xXfPGenWwDyCGu?=
 =?iso-8859-1?Q?TkpvfZXdUzOuY5F4mwNmQ37jFkUUt1VRoCBJtjuvlzQAuWC4uq77IltBEz?=
 =?iso-8859-1?Q?gzjipDq9WxbBSxTny/Lt/WgslbRJvLCrNjZi7dZg57jXQvJ7FwC63GYVir?=
 =?iso-8859-1?Q?Fwo2+OvHnn0FRG0ztqu6OyXHe2gOdgFQvKKGVeXOPFKPajI3NRq80wofHx?=
 =?iso-8859-1?Q?fWCZtepwxHuWjDu8wnn2ZJh923y8pxyZ3U6w0pPpujGSCmyiksJ/Qr5vnh?=
 =?iso-8859-1?Q?LQ2+SxAupkhk9443UjaGfjeZ4xG2czqh1pl+ZsnKznq3J0IAnQGH36iqR0?=
 =?iso-8859-1?Q?I2b90UOMdfz2daFzpV16VzDyfLvg9aWrmQa6U86mC71UED42C7owBVjfW6?=
 =?iso-8859-1?Q?BQP62U4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PBFiAh7/NQ0rKE2RMvwVduUcW7yBS4ZPUGS3oBXLOvJlb/eyqjXKGtlkV9?=
 =?iso-8859-1?Q?O9w62XeVlN7izvYyLfCUw3R2YfTTXFEH1172tNL473qyFd1H8cgznzEGUU?=
 =?iso-8859-1?Q?RS2kSSmUu9AGwmpxwNQiVr6RP3ZosjFhUYgDCVEYPdLyn5hSdaxxOrJl75?=
 =?iso-8859-1?Q?8Q5AjBKd/Eipqefkqi4wZpEYjZK+S8GCtLj/nAGZLAVptENJKxeXItSkGY?=
 =?iso-8859-1?Q?8v4A1RSRox/jZNZrFKrsZKGMs2t4O/Dx8suvCS3YFfTtS8bS3RtPwFG+e0?=
 =?iso-8859-1?Q?K7djbELk36Z6iCGYtpl/lmNsYLtkna8H0c3X4fVt1+/xZxQ1fsbNKxzmjl?=
 =?iso-8859-1?Q?QIOkzNlGjaEzXafh5M27TevubJOz2MMWL7Ltfiri2yoJDBYKDhK7u6T/XW?=
 =?iso-8859-1?Q?CSB9u1XdINo5Z5l/mruaG/K/THcbIpYYd8M10GWQ/5R64FFc7j+yZ+Vy79?=
 =?iso-8859-1?Q?VTAL0CINPJFQIryGstV7zz8cy6mubG2LEEQcYrUgmnKHPucdRaRPE+Q81R?=
 =?iso-8859-1?Q?44QrJCnnddVqTp3R29TssL2wFN68ircChKX0QKnLzwzXl9/FCmA1BgNDho?=
 =?iso-8859-1?Q?SMKUIIBKSaqgonqeAMyIDNztvDBzX0LX/mG57QLq4JKqzkoIFiSvpTK2ai?=
 =?iso-8859-1?Q?TyoFquGOTqvgdmu7nOKxlUpOBptGlIGpkvpcwKgsd/653baQAJlgLe0wR0?=
 =?iso-8859-1?Q?b0QnpTg5SJf/SFtWatu6vgMhuIAPOC6elf2NAGCO5VPBiFmx0St3ycU6GL?=
 =?iso-8859-1?Q?u7uqCoqfYPGGBuoZl0p2j6tUXcHfX4pOlgY6nbStM/78Wx0iHww6ymGa6v?=
 =?iso-8859-1?Q?vsM54ZyDfReivFMsDzoIkzyTif514d3Zf09gKy3/I2KT8HiBP52LKfo8ZM?=
 =?iso-8859-1?Q?dofCDoXGbsXo1b7/xC/zjb/FGSsnlRKEcIGk/kBvlW+benC3w4oloFNLCr?=
 =?iso-8859-1?Q?9o9euuVGYGFmTXjD1BFaRtoEGBD6L/mSbe4SEVl6oAKkWS/DmBvMjGjQMo?=
 =?iso-8859-1?Q?2uLYQMvvMU4YZDK4gNQJY0JF0igEUvNU2+XHz9kp4Rbh6IjlCr8VYA15W+?=
 =?iso-8859-1?Q?/MbTSjNR6QE3g1oTCKgHft99OF6CCwZzKl3e7PM6+yRgHZOLsOJhpc1DfY?=
 =?iso-8859-1?Q?YVd37Y0n0fVmrrQh+n9jMT2WD4cJShAiKfLIF2Hk9UZ1YY/wB1nmiwG3s9?=
 =?iso-8859-1?Q?ePzduLidf1XMzxUawQLrXAwICTpLpAa8nA8392Nwb/YOOujsY1NuYff7hR?=
 =?iso-8859-1?Q?rob0oREjguCvKl7BmaetWx8zlt07MTBEIASkMyQ40T0Ab4VogIzFq2blBB?=
 =?iso-8859-1?Q?7p/1xCtzA3lCpbKxa3yOqXkisJzQDi1hOw6yQalB//Gu4NxwBq/tK6tgGn?=
 =?iso-8859-1?Q?zozSq9avyV27iawYoQGyMirzjlrhmXjZQj4ZrWRe0zAMqNPnkKUQDgvJsy?=
 =?iso-8859-1?Q?p1/21QqFJDUDV05HR3AHecElkpWda0nwN6n3owKQ/0QalxDmKw0Kh1teQ3?=
 =?iso-8859-1?Q?G7D83BRKe0x63SM3ANI89L7R9RcWQ/NNKSAC6zuv2yKDFL+VQIkbYQtX+Y?=
 =?iso-8859-1?Q?urittZ3wp0c0ka50x7I4JSYe0PHz1oh89gOhWRyykS7wql/EAZu2xgw7ah?=
 =?iso-8859-1?Q?GT0+vePSCqPyjv1n/xhaJlKfSocBGvQX155jQdbdjh/ic/qhBLd0JS2w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1102face-dfe5-4b6f-33fa-08de1e19801e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 16:20:01.3066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /x0xIVWA0gEbRk89XlYpyNBStchx9ETIwLwomb1HlzFrT35sqwGGIEe0A9MndxyIAz3TkkVz+vePPfYrTr7ZpKHCGB/1xA48nabdqG66RFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
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

On Fri, Nov 07, 2025 at 10:01:26AM -0600, Govindapillai, Vinod wrote:
>On Fri, 2025-11-07 at 07:45 -0600, Lucas De Marchi wrote:
>> On Fri, Nov 07, 2025 at 01:08:15PM +0200, Jani Nikula wrote:
>> > On Fri, 07 Nov 2025, "Govindapillai, Vinod"
>> > <vinod.govindapillai@intel.com> wrote:
>> > > On Fri, 2025-11-07 at 12:16 +0200, Jani Nikula wrote:
>> > > > On Fri, 07 Nov 2025, Vinod Govindapillai
>> > > > <vinod.govindapillai@intel.com> wrote:
>> > > > > Disable FBC as part for the wa for the bmg variant
>> > > > >
>> > > > > Bspec: 74212
>> > > > > Signed-off-by: Vinod Govindapillai
>> > > > > <vinod.govindapillai@intel.com>
>> > > > > ---
>> > > > >  drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
>> > > > >  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>> > > > >  drivers/gpu/drm/i915/display/intel_fbc.c        | 10
>> > > > > ++++++++++
>> > > > >  3 files changed, 15 insertions(+)
>> > > > >
>> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > > > > b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > > > > index c528aaa679ca..ba2272d85a04 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> > > > > @@ -10,6 +10,7 @@
>> > > > >  #include "intel_display_core.h"
>> > > > >  #include "intel_display_regs.h"
>> > > > >  #include "intel_display_wa.h"
>> > > > > +#include "intel_step.h"
>> > > > >  
>> > > > >  static void gen11_display_wa_apply(struct intel_display
>> > > > > *display)
>> > > > >  {
>> > > > > @@ -69,6 +70,9 @@ bool __intel_display_wa(struct
>> > > > > intel_display
>> > > > > *display, enum intel_display_wa wa,
>> > > > >  		return DISPLAY_VER(display) == 13;
>> > > > >  	case INTEL_DISPLAY_WA_22014263786:
>> > > > >  		return IS_DISPLAY_VERx100(display, 1100,
>> > > > > 1400);
>> > > > > +	case INTEL_DISPLAY_WA_15018326506:
>> > > > > +		return DISPLAY_VERx100(display) == 1401 &&
>> > > > > +		       INTEL_DISPLAY_STEP(display) ==
>> > > > > STEP_C0;
>> > > >
>> > > > IS_DISPLAY_VERx100_STEP().
>> > >
>> > > I was looking into the comments for that macro! This wa apply
>> > > only for
>> > > step c0 (as of now)! I wasn't sure what the "until" part could be
>> > > in
>> > > that macro! So what do you suggest for the "until"  STEP_D0 or
>> > > STEP_FOREVER in such cases!
>> >
>> > If it's C0 only, then C1 is the next step, not D0.
>>
>> it would be very weird to be C0 **only**, so I went to check the WA
>> db
>> and I don't really see any stepping restriction
>>
>> Lucas De Marchi
>
>wa_16023588340 disabled FBC in g31. But this wa 15018326506 recommends
>disabling FBC for g31 which has display stepping C0 from bspec 68090.

right, I see there the DE_ID 0x03804008. For some reason the WA itself
is not updating the stepping correctly, but if it applied to other
steppings it would actually be for g21. Matt / Uma, do you know why the
stepping is not correct?

thanks
Lucas De Marchi
