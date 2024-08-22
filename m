Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A70B95B510
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 14:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EC110EA40;
	Thu, 22 Aug 2024 12:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6Fpw74G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F8210E8AD;
 Thu, 22 Aug 2024 12:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724329972; x=1755865972;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RCgMvXKJwGQXRq/Uo2lHCBb3+FKN9BPJLlHiSQtRyNs=;
 b=F6Fpw74GJ82u3yvfa2a31WazXQdPhlwTtvAqMaIDZbeFUdkhknlvVaFu
 aBhOhzy2e2ScQEG2o51lcGeqGitzbGVYT46RogkmZR1vx/8cQXrDlsWvx
 fRVonPMKXH04myhq6Licdv5aHn6CyXkl1MFAtxuH3CIbH/WLosH+BM1xR
 RroqprdyTVhHI2WErgqILr5sNUrlq5h73ODHtepOP5d3/HdtSp80qjM1r
 Yu0ZNKNT46dN8UOXq1nzWEZkE4QbgL18VY7kcww1mvcXsa6R2HKpk7n5m
 ebpNvKmbwpL1S8Zy0/E1sBCqX0v/PXC96OEWa8DjNgsItp4StJNZ6jcqO w==;
X-CSE-ConnectionGUID: HNE87pzuRXCqDJLQGo6CMg==
X-CSE-MsgGUID: xa2QWOr+Tu6zFG5yQrOf7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22706855"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22706855"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 05:32:52 -0700
X-CSE-ConnectionGUID: FTM+EKnASpq2M+3HLY9Xjw==
X-CSE-MsgGUID: oL2dckxeS6WzFvicypcMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61426140"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 05:32:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 05:32:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 05:32:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 05:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nm1c+xmPEwQ8U4GKY73grXfS4EhV+TSP0rRuiyQaXEvb74oTvx9jz2eq+uMKFzBEl1sixtoZ8pAcTbzkLMFqorV3TDN/Lm2Ms3lykc1xdUyHZZZrRt3LtykoR69Ke/wmVQuaMJ2p6q1UmbGw85sYPigiMrBkAwgSfStfZRbisKaVoryVvCwnrWyPj2gtCfJdsuRI+vMWGBJ6HejLVH7Lt2qY/cwRPWCnmpb85fjzL+aRL5lEhHf/RNLiOOaWGe9WRq2U4i/MsgWFRTgRFG3StcjlFFINjTU7kK484j1EykrCoA25+ZJzaH3LCoVqwx74G5FZWf8/zIgZ+8pY92cZ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCgMvXKJwGQXRq/Uo2lHCBb3+FKN9BPJLlHiSQtRyNs=;
 b=VRSgWeYfT9fz3Psuw2ABp2eINZC4MLMdISdsctow8KdE6wtshYD5xJLScsO+8BErQ+MPDQbMRHW44VKCi61PrGBDB5mQfdNqVQqCm+Zww7qK0/DQXoktvyB7GybYb62CV4q9Iv/LQSlIu+uWMHMo2vd0dE6aOVmIMZUueeISZJ4mysxdILAkSyydr42I+1s7c6OfzL8DHtvb1K2ksZ579SG09V1BzeOCTGjV7o4Us+dNpS6KZKPVDUrnpXbCt5XWdxAIMX/P7u/pcwc2VU2tjICTd/dl+i2jeq19dN/yyXZhaczpYQLewabkHF8myGeggdy+K9SbRNg6f87PBsmt2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4550.namprd11.prod.outlook.com (2603:10b6:208:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Thu, 22 Aug
 2024 12:32:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7875.023; Thu, 22 Aug 2024
 12:32:49 +0000
Date: Thu, 22 Aug 2024 07:32:46 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [PATCH 00/10] drm/i915/display: identify display steppings in
 display code
Message-ID: <utzs2jz3z2sookfahedjxnnujy6flfo57vnkyvf6lntw6qimma@shvydy35ocf6>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <87cym04yot.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87cym04yot.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0188.namprd04.prod.outlook.com
 (2603:10b6:303:86::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4550:EE_
X-MS-Office365-Filtering-Correlation-Id: cca07275-a059-4ecc-9fcc-08dcc2a688a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?etQ6ljTVo005MNTgIkSeZUUXr9Mau2nnHybrfceX463GNhoWGxMP/uYHIDVD?=
 =?us-ascii?Q?7QbdsvkbbozzndTRl9EoligBAy+nX9ryGQ/0yVV62Fpweylujj5f/B5fwnEf?=
 =?us-ascii?Q?WgcTAvQECxkyEax7COQwA1MzV3WlrHu7FD3mx8/gAYnQGkFo4iB2UqDFsUDf?=
 =?us-ascii?Q?WcQyHVkv16fQy9Me3DL1/3VwBshkdPo5wLt7BhrX8wlWr3w94U1XL2utmBvS?=
 =?us-ascii?Q?sSc0+rshFd5qAeb80TaJdUHTNsImTB3Puc2FgQcd8DBfpY5qqwI1UYxG9nq1?=
 =?us-ascii?Q?zWzG20deXNnv5UXG0IcT/vgM2oElQHHXQgbgE/JTmI+Mm5A3sj/vICqndtxI?=
 =?us-ascii?Q?R6UmoJKJNKaGU35GZ90ApF/1rvJc8Em7+zfVNEG1WOLN3YR0ME20pR2j5ZeQ?=
 =?us-ascii?Q?DBCRhfXtpkK2Zjj8H1Vh+Vt6n2LfB9X5uaxLCHUlL8rLSfjnA/O2eQbNzJ+t?=
 =?us-ascii?Q?UdZpOOoAijZLKNKJ5pTjufCEIg/mMMWsckQ6qYJfqD2XOUNVzTpf0n/B6yyF?=
 =?us-ascii?Q?H8J0lPUQGFAfqdMRYlVSObgIhlfgebx+jlWksM20/LtLiEsYLcj3/W6ThGyu?=
 =?us-ascii?Q?5KSHAltUSIxZMZlNpepRz7RujRx0ppvdxi00314wrNge1clsZ11gIW763tXl?=
 =?us-ascii?Q?uMH3BInbVenAwVyo8pOQkui+0R8Lybz6/H9zS5VylLH+qjOfV3f7eIgkq/TG?=
 =?us-ascii?Q?0G67ZgBCwn1VIJ7d9sH4JxKVyvsG1m+IpKwDd/hHslHxv4HvFetwzoDBtbXo?=
 =?us-ascii?Q?OvHX6IWKOdMC+/pPzps9PYLUd33uf7k+vHdv5INcSdZ3WKxwvATvLM8qD9wf?=
 =?us-ascii?Q?lokbr43XqcOw8fC8BsP8IqkxijqEV48nA4MuVq1vDxjZRr3mspimAYROT+sC?=
 =?us-ascii?Q?5ewfKQScUa5/BIFVuFWiWxJOaVOBB00VoR/OeFsPy1ZwcPNX2ipUseIRuN2s?=
 =?us-ascii?Q?mXIwrSl7Z+W/5zCVM1H0Du/tnhiPurvN9zjwm7OsVZpSbatrydks0gpjWcWe?=
 =?us-ascii?Q?ASQcXIOkbOoukyNxJCypYWNL/JcxQHnyNPBW17TILBDKKq8aZwrUTTgzH943?=
 =?us-ascii?Q?gvgrPI7+K+vbxbcP05LTNGUD8ccx2swr9HBfITZNcXJ/bciM1JSBPI65RWrr?=
 =?us-ascii?Q?RSDv3nb16E8i4alQHsdwXsx9LjM2+t7WDRYj/oy2LFqWnB8DBzDBv9ngkJvo?=
 =?us-ascii?Q?KntyEB0EeuqlPDTahbV50BSVYsQikHXpTVbne4qp7JbDTEJrZiZ8AxLDxJz0?=
 =?us-ascii?Q?3qoS5/Gpao3XUEqLNvUyuWujkqQR6R1stXRhnwDAhe1m684HY9hyc1V2zR73?=
 =?us-ascii?Q?ROiavZvX/Hk+7PeMsMgUhc1/XT0T6YTD6EGe+SiwElFBfQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0x3R/Ymsj4XkLBDArfidk0A4vCyTvNWk7OJ1Es1vQeof1CZPjCB6X0JY4XQY?=
 =?us-ascii?Q?RiPxGYMvGUJ4GAtxXakGkqzedpF2c/8y6yIaWR2dhttJosrB1HgsooeyTGsp?=
 =?us-ascii?Q?IGX75PyhnY4tYX7zT+utMLVxYpbuegyI6qZZfnJ6VFoEw0EmcClxlB6Zhnq4?=
 =?us-ascii?Q?xPwmzvrnrXkjX7YwSgKhHSEqHTOlLzjeIYHIwg2l80MbTl06So9t/t+444+W?=
 =?us-ascii?Q?3MeQ3sdaAqNPBBWlyFCWLT/mYdLCEPM1BMwwmdw1IcQ081jtwycjlO4OFnor?=
 =?us-ascii?Q?pfkjAEl2X1wykW7SxZrmRLH6vTstyt4KFSMvYkXa5np/pN8p7sMJk2zc6o+/?=
 =?us-ascii?Q?YDxJEwnyp8IuHbIuUHzqeZsTG/cPyUb9NYC/H/vgRxKDdwKhMgalMw/zGJbQ?=
 =?us-ascii?Q?m7irbwKrPynVOcnC5znZN7YZ/gB4m7w+bOGG+h2SJsuQ3lAgC6Z9SV3z5BJ4?=
 =?us-ascii?Q?2j4LpWzKxpPdz7R+kBs4aq0NWzX7KxkjBbICNY9tbZuzyjpHx7XW5AI3d2t5?=
 =?us-ascii?Q?qwDETbThoWjHKqrCVcah14/dNQN1q3U5K5IejDXoC/zq7ZJQSMK5DQkqXrNM?=
 =?us-ascii?Q?pUYlVcfcmdQGCpy7agBOBFfkYVmv4Miircv9/zYTjAd5snQgVHx+EcMEz9jE?=
 =?us-ascii?Q?73yx5QG5vudOezT5mJfj2CSmLAyX/MoAuP/BURzRY2OHUa3QNPM19qUdJIWH?=
 =?us-ascii?Q?m9DTYCsTyGcidLI0ljtdHagWVOh1GP04d7oSWE6H+XcuWXPilPQ7XQAQESU8?=
 =?us-ascii?Q?0JVKKFJHyOAIHhvf0tlHtWXDtZ5O6QDfsypumR1ORUFChii49NSzaaU7/l1R?=
 =?us-ascii?Q?Cd4/hPMj7jh+b3GdAPPLE6dCJK2n1TQkxK0qcXlnSL1/T3tWuP6NPeOkfOlY?=
 =?us-ascii?Q?8yHmPOvRfWxQWJH2F61rHFEESPnam8yd1kUPjEwSd7cw7jL19Hm2AfOfB/C7?=
 =?us-ascii?Q?9U4ildO/G5NhHAr2A5GS0RCZbmvmdq3hIyORpaNiaYx/VRjbcUl6KRzJQwj0?=
 =?us-ascii?Q?VwFrRyx2p312XHb4Ko3hX5z7yAjhPeo3mF4qCVvsIgNuAfAR7JCM7Y0On6PJ?=
 =?us-ascii?Q?TVi9jdhPsA6oio9dNhHymx9vs7O+YUd+heLQu5yAWvCbARiY+OmvXCo/vVUs?=
 =?us-ascii?Q?xRWoAMOV6+DG/sr3/Thnh4k/lz8+wwaJGskCYoFRH5DTC/SFbLqnU8hxPiEx?=
 =?us-ascii?Q?zSGsOvaTFPj62VQ9CAu+xZL0RJLnopcGbn5s5GUpDbS15/nkxT9lUUfh7fXT?=
 =?us-ascii?Q?9im041gtyQCi5ECSIN+fTSWcCbSE+U/wsReeaJfn5YlHSQeEiOUbU/NuvaAD?=
 =?us-ascii?Q?sypplIW7YZCyvyXWkWEdSQcR6y9akILNXt44Gqueg35yBh1w7Ksfg1HBaOzo?=
 =?us-ascii?Q?lgS3ifUk1tPnZToxhxa25v2z4+gbi72B5VdOKKiOCUz1KZL6mjmuyM5KlcoL?=
 =?us-ascii?Q?gGDX0gtf2t8hOdFo6mxtb3SBZ/GSF/6dnvGSK0I674Gp9zcGdJ59mkhrCRW0?=
 =?us-ascii?Q?F+16hnURcwt/FUI6pKbAqwDYuCzBH64xSn9G+etM2rRC/2u0Shos7DE6DYXf?=
 =?us-ascii?Q?JNOn+THLHAgHjvEPZY4JSSpwpZmDu+r54Wlas0ZCIWolacXMCDkwCko1P2Nh?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cca07275-a059-4ecc-9fcc-08dcc2a688a2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 12:32:49.3681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oWDDkPBtiqBypOs6pHQcwfiDFU3fTuAdDK2f8m/iMhleuzRWQk2ycYDhKLPiUoL2knTCABy+ferLL/5sKVw9DOB2X4kVx5/tjpGle6jJG5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4550
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

On Thu, Aug 22, 2024 at 01:52:18PM GMT, Jani Nikula wrote:
>On Tue, 20 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> Use a Single Point of Truth for display stepping detection instead of
>> duplicating in i915 and xe.
>
>Lucas, Rodrigo, ack for merging this via drm-intel-next?


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
