Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F01A4F13A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 00:09:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DC410E126;
	Tue,  4 Mar 2025 23:09:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bug76Cf/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964C710E126;
 Tue,  4 Mar 2025 23:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741129752; x=1772665752;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dbc8UbpnzYvykYkZFyre5dj6TGn2k6JKzvBX15uZfRM=;
 b=bug76Cf/BcpSNNKUQ9TIa7q2AohtFSGGTqpYLDEQuTGg37xBXO+B6PzW
 qeXiUVtmFZuphNXcCXCcDDKPjDAbT1HvnU4//v9K/HhtKJnK4nJ0c+A5o
 YdWpWsi7iUcLWiGiv6qus4HRWS+mw2HfG6+z4QxoHI2XYvZeWfTg1kheV
 02WyshLqZmW8CUDP+6Sp/9sxzv0k3aIsPYeJM3TXEZLo/ii46VyVhRISp
 oUBVYZZ/MYlR1/Ktsjbaeu/rHzRFfG3A7LoY918kZRqJ77A8dh7k1+Sop
 S7Fi7EKjhdlRbHcccK4EkRlFVf4KDNi+J9CbOG5UEEw0TQyUuLZ1P6qlj A==;
X-CSE-ConnectionGUID: EP43fYCvSxy4+hLn6hFRmg==
X-CSE-MsgGUID: 1Q91BK3GSMS0u5OXjn4Bxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52278028"
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="52278028"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 15:09:10 -0800
X-CSE-ConnectionGUID: F9MrG+doSditbvi26+mxOA==
X-CSE-MsgGUID: 6Sy/IvvTT9uASv4R6H/Tyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="118518629"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 15:09:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 15:09:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 15:09:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 15:09:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UpXqFllZ+5LeIhfcHCNFuUVTbQuYpDGjZOsrbixV3QOqtjYMSuIivUZREWX9jX8UfAz8VFVG0WdAsAAqgiKtCZntE9Uoc9atKrzjAE8pb8IskORwxc9sGMfPai75B2R69fZdw3ANfcxE1gDJzihpgKufaBPQpSNdsMNoHtGM/trBDmfezR3XU987NqL8R0frwPdAZHPQ1h9SVEKBNg3NKc/FaHwelBzinCgwS/0oEuHpcYI5q9H8o1M7gJwt4YioQk/5NXW3mbmAfKl4DP921xlf2BtPmw18cqK+j0WDQGXiDqFfrVZk+ANI1hmMMAAjvv//2wUNj7+xrrWHDnMlkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZGAtv8GdJkGj9h+GhxWnGQoydEa8gGWsV09li/aPv0=;
 b=V+C+ZUCAuSRDyLzIy5267vRBYqnr2eHMfk9AE8AQuazd526hNFiQZzcaA4gy2uSlgrb9UB7nhJW6WviB7VDuHuxD8tlvLragJVTkM+nw9x8s/CLek5xRcGRSbPYFlEKQ4VmHkKcLgMSr/DOssunUae9IKu2OLero6KxAmOAcwZnrWF+QXj48ayKjX2jV5dbFOcpTWAazV5G5dqK1hDPEuYvv3qY+MyaWJitj5arPLKtrY3rZpWSJafILhQthvKzzPvNZsjJYTf6v0xGSZsYgrCFoeX5SmMoRXt9YuZRBb53Jh1mJfjhOoNCJH0F5SB/xx+OQWwVnkBs0iAIVtpYdMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 23:09:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 23:09:07 +0000
Date: Tue, 4 Mar 2025 17:09:04 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: Matthew Auld <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, Matthew Brost <matthew.brost@intel.com>
Subject: Re: [PATCH v3.1] drm/xe/display: Fix fbdev GGTT mapping handling.
Message-ID: <26z7hzbek3llumpshnxuw72c5jxfd6cotf3jpydkatm4ckk2wm@b25hwnctgtf3>
References: <20250219153441.625352-1-dev@lankhorst.se>
 <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
 <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
 <4c94aaf7-43da-4c10-b396-2d69445174dc@lankhorst.se>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4c94aaf7-43da-4c10-b396-2d69445174dc@lankhorst.se>
X-ClientProxiedBy: MW4PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:303:b9::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB4833:EE_
X-MS-Office365-Filtering-Correlation-Id: e7f07842-71e1-4cdb-6ca4-08dd5b71906d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?NTOZ9lVgCPShaaXJT50H/Gv7VCRXQryU2N2bWZ4z3mcQr5pm+2/tXmhi6g?=
 =?iso-8859-1?Q?L8j8aQfK86dDCYjFQa+SeGtD41ipTiaS3DjP+HhN2BvKTNkvjHJgdNUYyZ?=
 =?iso-8859-1?Q?ti+2Yi73LNPVqjbNO5fT4iE02SJmH2D0lzc2KJXj72p9iZLn+rX7hRrXIv?=
 =?iso-8859-1?Q?T0gZVPAEl5I/FqhaqrZGxmVeVOR295nYar2W28K2uPDtNTcTaptMGEhWhm?=
 =?iso-8859-1?Q?CBEq4g2jUVkffBW4c2yX/Krn/FtaiMxCR6kvuOP0CWdNImj6la6+h4fM5J?=
 =?iso-8859-1?Q?bVpuiRjsuyz0JvFxeLg/6k7cxBshzLIcRm1zE2boXnGQFQQaW75HXPseYl?=
 =?iso-8859-1?Q?UB/XOCWgvOkj4NDThK2USgaAKaRNoTjwrJ9ii25DA+WUkgSBKzE7rCvHvY?=
 =?iso-8859-1?Q?N49mgJA0ZY0DAQSg2Qx0waDKlsSpKiWy5hdidvvCsq3w2y0E4jqOZN+f76?=
 =?iso-8859-1?Q?CTqBTI7xLvIgi8spC1I5uv3A7bPiJTdl0aulc1gP0yJ49x6+akgmIUSWvW?=
 =?iso-8859-1?Q?U4KIHS4FYet6rVaZmp/cw5yc0YOWh3fiMVZkI3aXkwIr79LLv18wfLvUK8?=
 =?iso-8859-1?Q?8nxlwCntNus+/H5XUdzgpXQSLtaezy25AhqXdsOqgJ5cKCQaQI9Q41BYaB?=
 =?iso-8859-1?Q?pixRzELUymGKrItp47nr1CD7XAx5BjP5XKz0hDjjy0q15Ce50AiAllWtEQ?=
 =?iso-8859-1?Q?djTgX9XN6B46LXkJklstB1bDvmJYK124bMeNHuJFWfs7/4qctRWf/IRZAA?=
 =?iso-8859-1?Q?eTzcpiRZVoWWrEK+H3xz+Z2jGabFa3/DkbvsQxso7/lsdP6PgJ9b0mpeAp?=
 =?iso-8859-1?Q?KAUxJdsUO/is7T4zP0OjVHAzqg8B3k8QQY8XfSh1Ki9JNtRiHd4SR/G+kb?=
 =?iso-8859-1?Q?dl2TJuNXTFLUYx8HQydDYrRFsJNcCRGLHStpGBsUrTDKP7m7TSIEwv7KOr?=
 =?iso-8859-1?Q?hXVJr8Vu7DO+miLJZqxPc72X/PrOSKOg8r+5550QP4kLG+pOyQFcsNgHsH?=
 =?iso-8859-1?Q?/Vik9FM2PKZsOrCKD/zJiN2TI9H93AZGFwJrY77ZOu5o2s2EKd/4xeF/eg?=
 =?iso-8859-1?Q?g1ZUAX1nUf/1biP/CJ/RX4nhOT2qn2pWMc373b5hhE2g9WWjCHRyd5Mz5B?=
 =?iso-8859-1?Q?6dUuC7Hp1UvUiKYCLSTxaA2FY1AhQOTLUHe7sJOYIXrOFngqGewIfKyjWG?=
 =?iso-8859-1?Q?b4xVEruXsPji4J0mzO7zCUz83Yjwwz3/Z4uhkOEWduQ/Yciv1J568aIIJ4?=
 =?iso-8859-1?Q?RynjZso9pQJ1PYahyGhFtA2f0CK6HSbyJ6DNMvz6ssefo89bmvBcEvxlxm?=
 =?iso-8859-1?Q?kNZjcjPQ/rqiOrFSdmTpx674wFILF5un337c88u0EmZhud4vAT23DO+Za5?=
 =?iso-8859-1?Q?pngw703k8fwSym4PIMXOwVZkSrgd87yxbnTvRSkSt8w6WXjT+t+ITo5ng9?=
 =?iso-8859-1?Q?vbGtceOPSneyjcWK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9ZmIo9ZUY7A5filYt8GlLtsEhhJCH9QmnPoloUuF/Zs8PWpdsUOWy3U8FP?=
 =?iso-8859-1?Q?jh/d0qMLtLQqukfQRmvcS5bHB0G6A0XT1Cv4j1ZD2ziRCXU6U2YzPp4A9/?=
 =?iso-8859-1?Q?HG46kZc52TQ/hcQL9iNEm7mFGF3jenh5WJ6b9KXGLyQ4mpmVGnbigcycPZ?=
 =?iso-8859-1?Q?+wb2JWWQ86H4bB3eERzZONBjO+KLVcwagrGkhdgQ+Fyq+m9klV3h933wh1?=
 =?iso-8859-1?Q?mMwnbPPi1PSwAkcncAW+Vo8hgOW3TnZYrH0PpASWZe+xTaKXByrxcSqPWa?=
 =?iso-8859-1?Q?KJU3Hyw5Ts7GjIa2RGcOxZbMdeHZMya2qFuupk0eGKs/mThZd05jBMCRR3?=
 =?iso-8859-1?Q?8BVO92rCpM1Nrr/tvzqT1v4+EhLsubDp//U0pmQEXpFC3louQv2VYH6dIo?=
 =?iso-8859-1?Q?M6xUVB11dlgzyhtkvLZlgUpeBxCa6LN7j99RMHOnqtRn3sFNjaJo/LrqAs?=
 =?iso-8859-1?Q?KmBFLAUPY49Ml42pfrLtX2z8Otw8zR/gOLz+uSwgUncVZ6c6Av/ekuLdv3?=
 =?iso-8859-1?Q?i0VLwNNGqPZnLmoo0pKoyd2+q0eCCPmAWksR3QD6oDp9uK/tGgVjfZ/8WD?=
 =?iso-8859-1?Q?LMsTeZPFJNDEmGp4FgNgUNVaLV8/3N0KVEZMMF75N1ZjMpE4gvVTh3dlmI?=
 =?iso-8859-1?Q?gXmkD6/61XqZ7dlF5YavyFMuKhQkO+unoCBdauRZ/j2ck48/6+988v3blM?=
 =?iso-8859-1?Q?wvaKTa3dzCsS35jRAYloKWGbjzBjwVaztPDtGmBL8g3YPwSuALLDtKPrr0?=
 =?iso-8859-1?Q?wncpMvcOyM8p7jhVOfEsVbEYRMWyDYmZZejCV1TSAOLdgRjuEUVpeXpCn+?=
 =?iso-8859-1?Q?Rf37XK5CWi5zkeDlframUGReoO366tAWxtlwBiQ9VvHmJ0Eem01Ptfjb4M?=
 =?iso-8859-1?Q?HTVPGTwMtOIE7BWWTSPFcmww3o4+7Mu5Bws70f6D0RKkcjCZr1ghhxC6pa?=
 =?iso-8859-1?Q?9pf3vLW6OHm/O3XuRj5/4ThcjbR2znQxzIE+jwTKEvxG1YPgml2IfxnGfi?=
 =?iso-8859-1?Q?eD+CFLXMi8rhKHCMCHpFvrFLKZlb/AvkD4yIYtD32pVi6gvHjFN+4t+Pjh?=
 =?iso-8859-1?Q?OH/B4IkJg+Jgk/5wxys4AtspCY3rOgBXgmmSf7s+vL8srvWQewHo7kgQHC?=
 =?iso-8859-1?Q?XmyqOv1GgZBnLoC3OFN/S1y4bGCug3tXSMehBm060y7GjGVGnQ+GdIVtWq?=
 =?iso-8859-1?Q?UPpeWuJgSshVMSA0gx9AGpJl0yhsbyx2rq12qGdwGyO6ZO9uyTskS1pBZ5?=
 =?iso-8859-1?Q?JVfuK5XIS0VPz7Yr1NChPScF9tzFDqGHfxKSBkrY+82uAx2i4mZXn5JrD9?=
 =?iso-8859-1?Q?8JUb9XVs6RovDkHD/UpnhUASEG6fr6QhfWb+iIDG9ptahDrszZ4OEaRjx8?=
 =?iso-8859-1?Q?c581HwWT7J+E0NQQ4BiVNfW8OArDs6wJDvx7omh6lL/LhHAY06jjwls/ZH?=
 =?iso-8859-1?Q?1cFiKJd/irRs5jj+Rhifnx1ENP7HQgVY3CTX2TPbaS/zHcihla0x2Z3613?=
 =?iso-8859-1?Q?T8bd7PdufH0MoGsr2VcTq5U+s5CZFnDh1GmnnzeZoYDgvw+2yBjIbO7qV+?=
 =?iso-8859-1?Q?vQBR4mJ03RsyztFvUp1wZna/8H7XoFbklq9nIcCoSsVbcO7lS9R+ZmhNOw?=
 =?iso-8859-1?Q?p3Rf1K98V/5IungjmAoXEbVhQFs1I7TdhJcXz52tXDawipEu4+pUsghQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7f07842-71e1-4cdb-6ca4-08dd5b71906d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 23:09:07.1641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6itNYD2uzE9RS7gHfbj1u+wD7nCOAh4bsLFPtf38rJvtLaGicnSEUtl5thoubdOaOtesQWjOAuaKOw44cM/d0W8ONAiLRnnWHU2w6DhwRFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4833
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

On Thu, Feb 20, 2025 at 06:17:01PM +0100, Maarten Lankhorst wrote:
>Hey,
>
>On 2025-02-20 16:43, Matthew Auld wrote:
>>On 20/02/2025 14:22, Lucas De Marchi wrote:
>>>On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>>>>The fbdev vma is a normal unrotated VMA, so add ane explicit check
>>>>before re-using.
>>>>
>>>>When re-using, we have to restore the GGTT mapping on resume, so add
>>>>some code to do that too.
>>>>
>>>>Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when 
>>>>possible")
>>>>Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>>>---
>>>>drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
>>>>drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
>>>>drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
>>>>3 files changed, 41 insertions(+), 2 deletions(-)
>>>>create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>>>>
>>>>diff --git a/drivers/gpu/drm/xe/display/xe_display.c 
>>>>b/drivers/gpu/ drm/xe/display/xe_display.c
>>>>index 02a413a073824..999f25a562c19 100644
>>>>--- a/drivers/gpu/drm/xe/display/xe_display.c
>>>>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>>>>@@ -30,6 +30,7 @@
>>>>#include "intel_hotplug.h"
>>>>#include "intel_opregion.h"
>>>>#include "skl_watermark.h"
>>>>+#include "xe_fb_pin.h"
>>>>#include "xe_module.h"
>>>>
>>>>/* Xe device functions */
>>>>@@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>>        intel_display_driver_enable_user_access(display);
>>>>    }
>>>>
>>>>-    if (has_display(xe))
>>>>+    if (has_display(xe)) {
>>>>+        xe_fb_pin_resume(xe);
>>>
>>>this looks odd. I remember when we had issues with LNL about pages
>>>coming with garbage after a resume we talked about marking them as
>>>"needed" on suspend so they'd be saved by mm. The ggtt afair was one of
>>>them. Or did we go with a different approach and I'm misremembering?
>>
>>Hmm, I thought for display fbs we don't use the same pin tracking so 
>>it is rather skipped by the GGTT save/restore logic. But I thought 
>>previously the display stuff ensured all fb are unpinned by the time 
>>we do the suspend, so on resume we would just re-program the GGTT 
>>for fb when re-pinning it (handled by display code). But I guess 
>>issue now comes with re-using the vma and its GGTT mapping, since it 
>>will now also skip re-programming the GGTT on re-pin? But wouldn't 
>>we have this same issue for all fb, and not just this fbdev stuff or 
>>does reuse_vma() somehow handle this?
>
>Correct. Display has its own GGTT tracking.
>
>In general, all FB's are unpinned during suspend, and suspend will 
>destroy the VMA. A new VMA and re-pinning will be done after resume, 
>so this is not a problem in general.
>
>The special case is unfortunately FBDEV vma pin, which we started 
>re-using in the patch series. That one should be preserved across 
>suspend/resume, otherwise we get pipe fault errors after a cycle 
>because the GGTT is wiped.
>
>The bug was there before, but never hit because we never used the 
>initial GGTT mapping, it was only there to keep fbdev pinned.
>
>I'm honestly wondering how much it's needed, but not doing so likely 
>breaks i915. Perhaps we could make a dummy noop instead.

I stared at the current code in xe_fb_pin.c and related xe_display.c for
some time and for me it's hard to understand to suggest a better fix.
I'd rather use the traking we have instead of adding yet another hook to
call on resume.

But if it fixes the pipe fault, maybe better to land it and improve the
abstraction on top.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>
>Cheers,
>~Maarten
