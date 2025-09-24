Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7DFB9A242
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A99B10E72B;
	Wed, 24 Sep 2025 14:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEeWaBY6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192C010E1AE;
 Wed, 24 Sep 2025 14:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758722635; x=1790258635;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=1OuEutxo3NxX3eKi1Wy8mgXfyVvmUBTRGh253oaB/DA=;
 b=kEeWaBY6X3ffM92PV/ZZ6ZoU754ZrEoKI/uDDo/m15WjoMPM/Ck0SbSc
 1k2vOoYaQn0Vs2Knpb1qwTNy/4Sedlqgg5ZBw72fKQka/kcVQuFBMcTv+
 tOOZp1rm5rXpMDVIoIIKRMg7ihAZkTh8in+LNNbRjlQu8SLl3Rvvpx3wM
 oKSWbhaynrsCWQoJspayx3bhQp907KPSGU0T/G/it3LB+iy/3vkWinbhh
 s7JJj/UkLgYgG1PZ4Fg9ZlmXO3TgIl/GavyGgjr/tw0RQv+sFJe3j1mxV
 +midXAnI7IVogObeYXCGCGA9ZdaUGqPvAuHsE8hiMijN0YpLvq3QnvuuH g==;
X-CSE-ConnectionGUID: fu2W2YmcR7SONlaWNR1KTw==
X-CSE-MsgGUID: h5V9QchMT9aEitRUdP5+Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="60944680"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="60944680"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:03:54 -0700
X-CSE-ConnectionGUID: k4Fv8jbOQQCGUvfsVdQrTA==
X-CSE-MsgGUID: BRgFuwz8QymJuE+GDS0ejQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="182319350"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:03:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 07:03:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 07:03:31 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 07:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhnqdrjSUCHvm2PWr78lhKdJqEwvhwCY+XYGHQVmUt9FImQzkbuJpGEZLXpckBpVpUb8FYtSknmEE9t4RHqevbcxdXpR4NTPnx9AybKPrMwKaZbjKSCxIrwnOte+yqFaspQTy/J4UFcHv6M7619uWa+mXVh+U4gXsXs4VoLtZwKNF09UfncI3All0JsxUfbNRa31RaXQaUCQKaTO29fsSsLdWNwkrYBwKs3Izbt9nJgl4hJ8SCSE2DOtQGkibjfSZDkVsn+/FzLAPTri6tt8LPYRrHpBxd8MDVTxrdXPJMXWBaGMeGbk1iA7vzK7myuyUT87ZDxLP2T5Y9xWG8eDLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T08T9PreHllT6aazQmNRDKxOA/VgJ25aczPChZiEZYQ=;
 b=D3rdr4y5qv6g7btAkBvVNkzIkKAi13rSjVHkcXlzc8oQUHhPRGnTSbPZuq6AfHfopP8Hmkgp9zNoMwlxZcje3aViXSXEt0o+tqVqRXNq7FCozZ8cib0k9tSHKI23NEiFqWzfiU9F3zVojo8D6+AIk6HnxPrgcyigMl3uwd48id8YZH9qjUtyHFY/vJNGOMQPwbqi9tdpffxbekxYx7Ll32EJDvGjUynPMhnsB9WUG+4MDeZ74HHyp/jQSeWavf7wA1gCnC0ZdpdHLOJfgyWpJas969KYgDbjebmkx1yuMZW+WZ9EdhozWoMpbsI9fLsWZoThvp4pn/K35eQ6k+lwOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB6052.namprd11.prod.outlook.com (2603:10b6:208:394::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 24 Sep
 2025 14:03:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 14:03:28 +0000
Date: Wed, 24 Sep 2025 17:03:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Enable PICA power before AUX
Message-ID: <aNP6KRekZXnnNN5T@ideak-desk>
References: <20250924-pica-power-before-aux-v1-1-9fa95b80842c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250924-pica-power-before-aux-v1-1-9fa95b80842c@intel.com>
X-ClientProxiedBy: LO2P265CA0295.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ad4a696-3be2-4ffe-8d05-08ddfb7322e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?30dRNDxisg2hHR7D6/U0kSPVFoUUimE4BqaCZpKv0Lf57FTpigax5AdmFGww?=
 =?us-ascii?Q?bEzuyabR7fBNS7ThNvHsWIrDv5CHaw0Jyl6NwuuH/FcxVDPP/Tnie+v6tm3y?=
 =?us-ascii?Q?DEUjG8uCLBoQlGJxI9sFXiEfQr4f2GhOJoin7OKVeXEeZm7YHMpd9fuk2kAI?=
 =?us-ascii?Q?6qRNUuk6BdIW46ColDpUGZZbwqgebtHvpjHrb4cHFhMeL5eOW7LuZtnQ/mJo?=
 =?us-ascii?Q?PU+aSj/uHZx/27a17+jn3RST/HQUMkK7VpgW5uhaPGc2cbpi3m7rNtIheJWu?=
 =?us-ascii?Q?LaCDDDOuqRkMjPXSCBV79yKc2VxjlszIq2pgIOuPZ6DDM1lsRa96Cyp3B+Pk?=
 =?us-ascii?Q?RDWtNxHKHK9ycq6Ha0u+gY7Cf+luKMm+yZ+mqZ0vHE/RYkcEF5AK6ooc5H2L?=
 =?us-ascii?Q?xvvSWaV24rf0Me/VyZOMg+RQEXKt8lSlE+bTvKTcOkTQaGk/G5fG197/U6a4?=
 =?us-ascii?Q?hkSIc3ZFOIWngn5oOLmG5M7eT/vgZ5a/fEnhaJUwWRhHsHBfpiB9ryC20WA2?=
 =?us-ascii?Q?P3XsRiGzS1HozMSNbZ7NcATUQexfBezuk4VmwpiB5XpUGQV85keg2CnojjC7?=
 =?us-ascii?Q?kU5lg/s1kjVUCn9WK/FEemqWlLtOR833JH5ZJAhdtxywmKzZGIodYU8KVaIF?=
 =?us-ascii?Q?Xiudj6ydky46Yq/+OoE8BX0nz1xLQFsOjUbQjxchHbSFb1ggfkU1tVL2kLYO?=
 =?us-ascii?Q?4X7FqwaoOODsYBGnw8SpNtRa2wMbOjWxUVHjlbiSeEnyZRcC7TLVkSCJ7hY7?=
 =?us-ascii?Q?lCzGxMb8R8bVcRerjxNdnvl8+Wgmn9TJaFfsywE24dOLW1hYPNkX0llTgqT7?=
 =?us-ascii?Q?DN3/9vbKt2FuY649kCNBZXR71I9mXNAW30I1UOvKLf4xo5QWM+fa078aJQhV?=
 =?us-ascii?Q?ODoct8mZNWuSZ3FI1N/8XolVZkZNFNselXh5RSnpAaDGX5+0i5Fe4kx+2hlb?=
 =?us-ascii?Q?8viqApLLqFcT81YUwqf/VYxap7BWu/6TWdcEf8jNuwK4TWANohPsli6aO0k4?=
 =?us-ascii?Q?7b85pLAoNRXnDqboXbherHX8K3Jsq8/eKDF/KtdT5WCDFvNeEA7eQlzz3Ui+?=
 =?us-ascii?Q?o4+kQxWRkEqbg7+2TKUk73xdHnm8yM5pqhGmV9yIOqu9eDQRr25h0lSq99R+?=
 =?us-ascii?Q?Z/AJ1bCgsAz//0ArN+67p6whF3YqUb3mWdQoGE1qbhDJDp/nwrLb3Z6cn3Pn?=
 =?us-ascii?Q?uZEcTxQl+bx9fN3HKm4s3HG6y4X790hipNco8XajkCv0RxPowrnWUBz8raOI?=
 =?us-ascii?Q?IEvX+PEGSziRHkTwjKKXIlCV3veksGtXskHJ3MEzGNqYRDd7HyBQop9R/fCW?=
 =?us-ascii?Q?dlgfy+3qvsdath/JOHyfDA2TVlAn5AqEOrOHXZrSmKMTTcGhzeHtR9emIJ87?=
 =?us-ascii?Q?Ii9ycP51OSIREkTNupzNe4U0Nh+URwxQnAEeenp91CRqEP4m3t3Nv5pGYdDT?=
 =?us-ascii?Q?bqV5TzAqJLY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ge+74w3YWkNcFsjATIt3rS5DDoUB6fSeKY8JReZ5aBElso/C5p3nn/ltrj1Q?=
 =?us-ascii?Q?aRcgJdcisojj7m8f65JNWFMR8HGZGGCzw0jIexak+GPA1xfpF2gHs+DkB4sq?=
 =?us-ascii?Q?TxLtOySRdVtBc0RO/yZa0kHQ5Peq5Ic9h1X2ZFaNoAYLx/M4qqsbXnvbodfL?=
 =?us-ascii?Q?9s+sI/vmZritOkP0m9+HZmbnIfZZbF0UpE+TmXfQgNTyEP+QMkUxC+QfN0J5?=
 =?us-ascii?Q?IR4Gn+pwgAqXaawOg4mYlZhXCqWX+HgS2S7sJEIjd8YtNZvYC7lNNnYi0c1G?=
 =?us-ascii?Q?Ev2m6j3AkMa33MZsgEUKCENMja4+Txf6uHBUsmuEpZ5WTD842r7BiP4b1BP2?=
 =?us-ascii?Q?ueYgu4jzyShuYs/9eD3uURBXzfC2cUcRX1qQAvBLVuYork4UlRSkwLUSe93h?=
 =?us-ascii?Q?BB6HB4me+YWKARN5fc7e8ZvErDcpujkkx7UBJD4hC1JgtwYQLtwqqAXAxbRR?=
 =?us-ascii?Q?KV1fPEcEUQBPS0kCgzqMHDqDMJj4RW9YGeTSx2vV1vgtSB8fqbzvC7XtKpHo?=
 =?us-ascii?Q?vFvcR20ESZ2woash2VJnsB+RCmEfB91Cd88zPp8kAYpWH3zRuOzNfNetYbeN?=
 =?us-ascii?Q?D+BkCWnBriVkZYVdpwP0xPfrP7NPH9SOFgdsiQyvEE95oQyRs1LBS+w28uaQ?=
 =?us-ascii?Q?vUlIWWzFNfeujduT8Q2nFS4JBUcfJGCcEp0hpRUGHWFfZYoZOaVoZ4F1fNjS?=
 =?us-ascii?Q?9zX0DjpG4b5QaD7H3r/wHVRlZhEikhcvrmO3rf6IumPVdMckgyOu0GR/96xp?=
 =?us-ascii?Q?oVRi5yzQSnvQu75CzQeM0+dfCXmKffVWHJc4LYFLYW6ISFs33wzwbWx6PCkZ?=
 =?us-ascii?Q?duBpZHop3d6kFtvrCoXgVPxgaQsd3eEEgDWHYUvwaUYcklXoRhIs0Vmyc5L2?=
 =?us-ascii?Q?joPOrQzruInp/g9i4CSfOxcBXyk0zrOScq7s7nzAmI56Z5Xm8FzM0UvuMzBt?=
 =?us-ascii?Q?hUReLF7Jsl0ePdZFAUJAjpFoT1DMtpJRDGguLcgly40V5uKrhXujjHX5Rlhj?=
 =?us-ascii?Q?5F+yflzx1GuygstIxhZW6+2l0iipq7DKo96MxpKxTyEaoPWF40qiEyeDNZvU?=
 =?us-ascii?Q?th669fNNz0H4GkNXkih4rZ/lpv1sbddWtrP9nQSyVCG5ofCvFOe9FTqH4ztJ?=
 =?us-ascii?Q?MM0QOMiceGxXaaaIJNGKJP3xjpm+8FNA0mdD3/fcPUspjn9d1eAYaTSfd3vz?=
 =?us-ascii?Q?GDWoBhX76eKODcAu3nAtbS5XV6ewZT2uovAUqhb5ZcEBVpJyDyQoW3AN+l7+?=
 =?us-ascii?Q?DtGv0kSl3pmXCAUmgfrg+71GxDrjunMEHLbz+9JYsGIzWnIqjrHFPc2AGQ7h?=
 =?us-ascii?Q?07ATItUhPh4tPMqbNMF2yOiDqwgholTccN+NBK9Pvau03PD0AYfLY0q1FBcx?=
 =?us-ascii?Q?VT12Ymo4QfxwiQJqv74Tr8ZyvzUm4U6xo0iYhgHwusttm8Qqoqv4a6r1vq2Z?=
 =?us-ascii?Q?66gOYg8fexAqK/F8VzS8DTt6FC+SIv2ax2CvWataHe2HEp8IpR2cioS7lkKO?=
 =?us-ascii?Q?xV/ZdRmYSbOViG9bpSwZKQOqU+3GgYkb8d3HqLVDKmbu9qoXAtPRp4KlG5ln?=
 =?us-ascii?Q?vbOscLbqqvnAySzsVLO6yOkb2ioJDrrlj9NtM2FD/KrzuvueILqhBKJvpRQh?=
 =?us-ascii?Q?ZvSAzoXtEiQyKRqKHleCIZos43KDIJBw+OQX5+xO7sm8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ad4a696-3be2-4ffe-8d05-08ddfb7322e5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 14:03:28.4018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZyZYlSVp4F7KcLO9+t6EX0R0vLkbzhVikEhW8LETLoWPD5NPqmfXl4vuY3/hl2AfWOfpSPVJzdChRIRzKK5IHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6052
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 24, 2025 at 08:54:10AM -0300, Gustavo Sousa wrote:
> According to Bspec, before enabling AUX power, we need to have the
> "power well containing Aux logic powered up". Starting with Xe2_LPD,
> such power well is the "PICA" power well, which is managed by the driver
> on demand.
> 
> While we did add the mapping of AUX power domains to the PICA power
> well, we ended up placing its power well descriptor after the
> descriptor for AUX power. As a result, when enabling power wells for one
> of the aux power domains, the driver will enable AUX power before PICA
> power, going against the order specified in Bspec.
> 
> It appears that issue did not become apparent to us mainly because,
> luckily, AUX power is brought up after we assert PICA power, even if
> done in the wrong order; and in enough time for the first AUX
> transaction to succeed.
> 
> Furthermore, I have also realized that, in some cases, like driver
> initialization, PICA power is already up when we need to acquire AUX
> power.
> 
> One case where we can observe the incorrect ordering is when the driver
> is resuming from runtime PM suspend. Here is an excerpt of a dmesg with
> some extra debug logs extracted from a LNL machine to illustrate the
> issue:
> 
>     [  +0.000156] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
>     [  +0.001312] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
>     [  +0.000127] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
>     [  +0.001072] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1
>     [  +0.000102] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
>     [  +0.000090] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
>     [  +0.000092] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0
> 
> The first "DBG: ..." line shows that AUX power for TC1 is off after we
> assert and wait. The remaining lines show that AUX power for TC1 was on
> after we enabled PICA power and waited for AUX power.
> 
> It is important that we stay compliant with the spec, so let's fix this
> by listing the power wells in an order that matches the requirements
> from Bspec. (As a side note, it would be nice if we could define those
> dependencies explicitly.)
> 
> After this change, we have:
> 
>     [  +0.000146] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling PICA_TC
>     [  +0.001417] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 0
>     [  +0.000116] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC2 power status: 0
>     [  +0.000096] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC3 power status: 0
>     [  +0.000094] xe 0000:00:02.0: [drm:xe2lpd_pica_power_well_enable [xe]] DBG: AUX_CH_USBC4 power status: 0
>     [  +0.000095] xe 0000:00:02.0: [drm:intel_power_well_enable [xe]] enabling AUX_TC1
>     [  +0.000915] xe 0000:00:02.0: [drm:xelpdp_aux_power_well_enable [xe]] DBG: AUX_CH_USBC1 power status: 1
> 
> Bspec: 68967, 68886, 72519
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Looks correct, thanks for catching it:

Reviewed-by: Imre Deak <imre.deak@intel.com>

I wonder about Cc'ing stable.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 39b71fffa2cd..d057bbde42c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1582,8 +1582,8 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
> -	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  };
>  
>  /*
> @@ -1713,8 +1713,8 @@ static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
> -	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
>  };
>  
>  static const struct i915_power_well_desc wcl_power_wells_main[] = {
> @@ -1766,8 +1766,8 @@ static const struct i915_power_well_desc_list wcl_power_wells[] = {
>  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>  	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
> -	I915_PW_DESCRIPTORS(wcl_power_wells_main),
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +	I915_PW_DESCRIPTORS(wcl_power_wells_main),
>  };
>  
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
> 
> ---
> base-commit: 308a05859081aae4125b58d186d582b814c6deb2
> change-id: 20250923-pica-power-before-aux-70009ccd1b7b
> 
> Best regards,
> --  
> Gustavo Sousa <gustavo.sousa@intel.com>
> 
