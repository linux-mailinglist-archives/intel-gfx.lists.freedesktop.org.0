Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3454987FFF4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 15:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F6510FB32;
	Tue, 19 Mar 2024 14:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/UVFpfy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623AF10FB37
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 14:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710859936; x=1742395936;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eEV6gfTw5jBnFRhdLUtj+yx3VYPdF0wi5FuiI+llgns=;
 b=I/UVFpfyFHJXpqpl+nobgJPwWSrofx0bT2UtKSYYDrLr66Rag7fxBFir
 j38KgZ4i0xt0Tgu6Yy8LevMTp3vIOTd1SSjrcO/72nSNKCKCPx09FGr/J
 wxXMZaIDWa4tpkjfwB4FZrhrJSoHEuaao7AGO9UVg8XJW/tB5mn9SdQcx
 yN1+rXkMuqDscXFWcqFTUZn7Um2/YUEKBUWGaIYwfwxTnO3klxa/KJsM5
 IwL5iengWETof1KAed+dwwEcqXdOHk9Of4wisS0LNZ2W1P4/xVoE9JXRE
 EhDgPafPeU34WLQAsVBqVsKtVXUxU+VnT1/quoJpnJQJaAi83TUjwIMw8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5856907"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5856907"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 07:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44787344"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 07:52:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 07:52:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 07:52:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 07:52:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nLVHg6lQPpQMyjDm7FYlVPHSI4bRzhw8wNin/C7jsKdVNIZONRlrEYN4jG3efwG7kSiXSGsTqR5CrOpwVWn9Ss3Yxii9cL8Q9iSolgo/IS8C8bplGPi5oD4bFNPE3zLhTiDlfMcHH5yPS1MJdfREU1Z2EMDdIJlysCe9a+tQZvuaHa/NhhevaI968dPE4xytx22FCN1O9Yev/UfOpKs7OaRUIVCLtVtkUoAxfsIBhALg8rdoYsa7KZYzvehuRMzUJViW4Wqk9BXefUuH6eOe/2IU7oR8tHY9HSHiMxrOKKQ97hW0sPl9l+w4bvlppTs1zTzAptD/fdGkrcxdm2M1mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JCWXROnm/jm/TIDLpdincysy5fTwnXIDS9cdCthRe0U=;
 b=nwdIdr89ST73G2SiHI0Ql7WSghsTVgSspKLY7tIENXFnwh9WPmSOs1dLCnjS2d0AbabZ7KwUn7TGu4YvS1362bHSIREooHCoAiffhUz0v7E/4LUSrILDHEUKPq5BbPm52nIqTtZ1iPyIW4Ct4kkpJiaq9GppHkrZAptPhH4/suaA4DdKgWJkca27FgamM/Ug6nmYzjc6pLUPenWqzXoVZakPE80xOZ1zSMshGgd8lfTICphh+ioY73tPsECwghxUcDTy21Ykgm0s+QjussYTqs7DnxPt6nHzzkkN8J12uQDIMFP3UFveoGAlE8bxP4RnTcC6yustJBeJqDqjj/tPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB5900.namprd11.prod.outlook.com (2603:10b6:806:238::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.13; Tue, 19 Mar
 2024 14:52:14 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 14:52:13 +0000
Date: Tue, 19 Mar 2024 09:52:08 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <luca@coelho.fi>,
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/xe/display: fix type of intel_uncore_read*() functions
Message-ID: <y5sc3bfcyhzmmeq7ru3jgsr2pw3xistizk4ycvbfw22rmn4ijb@erie627pruac>
References: <20240314065221.1181158-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240314065221.1181158-1-luciano.coelho@intel.com>
X-ClientProxiedBy: BYAPR08CA0024.namprd08.prod.outlook.com
 (2603:10b6:a03:100::37) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB5900:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LgKyxguVPjILTOJkrsFW5Ahcnb6A9WEMq5nGSJ9eA1E15hxSwow7NzVdD95DWOiLhRVJB+Kprl0mCbBqxNAyaFj0EJWr33CalKzspj33+Y6hI+Rw6SXp7HJxyP0jvKS5x4HYFBbqIkNfpFKpmWNNWEK8KnCYQD3SHibxOgR70uub8WsDy9p1pPlQN9nx9sZKTxiJZGLYdK2MYUKggBfN+WOVEoE69aB8uEsUkI0jPenB8Wf3BTnLeI53EJB7JX/ZjbQ4LZd4tyO7YbDp/VbAdaBNNpMbw6CKeXwIgqSkEa+2KE7NtLBVAzbI8T9cttVwoR+lwD5rqg0GJEq7Lfo3cWD0DdnTUSpnPmdn0w5k+xhndFOAacAdLRSTxPIc50hWDjMo1viKiE2yYjTYbXlopK7D0xm7qCHHwMjPyuKMo55zouUXiVrdXOJ8k9yLmDv/IH3fbp00uNb12xMKm+8NPbfSjJ/u7JZ/ACiOTS2oipwAV5Vs2oWJuFrf1wJME1PESV4et2ZZ5QtSVbK5ban69dlFyOJjJlP64Tb8sE1N6RlgD63351qWyIsBg6433IjScN+6jJee/F1CCz4FJlIHubmIuQ6OrTengurRjUEJCf6aBgPyovoWLDJvE2h8/qf/RqoqPwpiHw4J30MIT0Gjbrc1XIBcnCfeFV6A613KCGw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sf3tAQV5j6E9au2K9xa4iVuvFwXMXu79RB++C2pqcDa0IzVz5hctDZuu7MTx?=
 =?us-ascii?Q?IJxQlNqw12wHkRNhHvTIhP1/j7dtHBklhZofBox/+3Sb9pmVVUUahONGj5a8?=
 =?us-ascii?Q?uPs7DlEw32Yrd+cbghcNXMADGpR8WmntLz3aTSA79GqPREco0MQL50sZC8hR?=
 =?us-ascii?Q?rcJcyCgadA+mZT/mbkVqCKi2lyXcD2lGzsRSocYFR92v87n24ayHhEluydWf?=
 =?us-ascii?Q?gA0X5EvFIzKRpCs5V/604csLekEfo6wOOUTujvDVH0xMVC4Bn0VbjTkhS/KM?=
 =?us-ascii?Q?hgCSp839X5GzX5JeCd3OVXhh1Cn0dKxV56LFzXDxanZEDUICKj7wiQw8f2r3?=
 =?us-ascii?Q?fbNpxOuJaWsUf/VMtHpzQUod5ueAKD9nVp7bygzzw0WrmglONFQMghmt0dAG?=
 =?us-ascii?Q?ER60w15vuHMheULhQxCFMLWGcGn1rx1dJediO3S+ZxBDOiRAfoT/H029c5os?=
 =?us-ascii?Q?1W+H8UpwJme12+yODJnnvCdYOrGQ1M5Gy6ZLVyWaceWEx0ss0snIo5594LUN?=
 =?us-ascii?Q?CBDkPJJQUHbvPCCbU4ePvV+pnz9rzxQXCWNQunKNztUBAVNe9+QwgaxueYXS?=
 =?us-ascii?Q?YLv1Yd9+Io94BvShiYWweXaPRXbuXp6ts6z9CEC0S+to2S5uGeCdS39ev43P?=
 =?us-ascii?Q?d+10s2CjqBOMQTRNu0eAr7y41nvftmeVC9VkCWYlBB2HB+PMC8p01NXrrnDm?=
 =?us-ascii?Q?Zdxpqk4v3Z53PRz4HPjdpXWXjZ9L4waxdB7gWPiJ8mu+I2QrdzbYGSNFJMqH?=
 =?us-ascii?Q?42vder2zJ8kSOYVjqt2YWXS7YGAarD9vijY4xFO2pKus+t9pUEI4VabOQc/l?=
 =?us-ascii?Q?UBRl/UAfpOJAx7lZy1hAmlM62N/dld/UX30muod6PVhEnKm2CozqatrKF0qj?=
 =?us-ascii?Q?etbC6isZua9AlNrIpO0B3P/MFYVQkGZhDtN/+5zvmj8BmMFHYDVnkk9BscS/?=
 =?us-ascii?Q?1NLD0JZ2zUTV9BoY4d8YKtWD3M+EDETWSAXrOUw82R/5M+gkZDUMzZ4TpSrv?=
 =?us-ascii?Q?hCfSd3WhROyttwz67hcMHlYtFShqrne8Nz74bxvCih30qJuwHaVz2s1F5s1R?=
 =?us-ascii?Q?C6qGrH298Rw/0N3B0DAwOikDaiS/3V03zde4ZKajGS25l5VMaVJe6RWC37lx?=
 =?us-ascii?Q?8vEoPXAmeKjT/IKvw0Wq2/1AKfsnoRLL0WrxNp6Qlmy4l+X1mpEPHBi20A1i?=
 =?us-ascii?Q?gq7kRncx1sMntbpFNUUiOuUUHKfQx/eohnzwfpEP6rA7d/i9NKZNeXN6QQsu?=
 =?us-ascii?Q?Vst3bT5gIF1VS40txDa+5RZ20Y9jeeuH16DTvYfpgRLFb/jkd7ARkc+ndF8j?=
 =?us-ascii?Q?ey3zX3Tsz+BAawN8Lx1yxDECQZZUPqg+8P4vuURBwyRyK8eVspOoxmGZjBPj?=
 =?us-ascii?Q?VpT7W8ulDTFY8UorWoYL5hCFK54yuYI5JsChVqHNTsNSNOoloTleQeDAwez+?=
 =?us-ascii?Q?r2dKg78DI+/E0gg6QiVaFm/qOWNVxhv8NVql9x0coCPQSjy4J3OEuVbJIqol?=
 =?us-ascii?Q?ImPrfwtVT5ruCagyOyHYXfhBo7Xp7KjP9sAuCNb8LA5nqWuVvLVHT5GSqMnm?=
 =?us-ascii?Q?8+UVI0BPnpznQRC1D9q+alRc8UZTDQJqRpT+LRTNN7I1BtxXuCRd9iNUSNYT?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e68534-2340-47cf-a9d4-08dc482429a4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 14:52:13.6224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iiZVO1hvu1d+y1d2I0OX0XKIoJMyiBn38Ebg5w/JaiPPnxXn1pDzER3zlCL9cNdRxBSGJHDIgfFMuKkErhCn+PWGyh7ErUH9ev1aUavvYCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5900
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

On Thu, Mar 14, 2024 at 08:52:21AM +0200, Luca Coelho wrote:
>Some of the backported intel_uncore_read*() functions used the wrong
>types.  Change the function declarations accordingly.
>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

if a patch affects xe, please always Cc the xe mailing list so it
triggers CI on those machines

Lucas De Marchi
