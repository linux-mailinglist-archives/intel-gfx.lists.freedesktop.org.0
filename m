Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FCC96B37
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 11:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F2510E37F;
	Mon,  1 Dec 2025 10:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aS25sm0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BD110E35D;
 Mon,  1 Dec 2025 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764585955; x=1796121955;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=MzhXl76El/9xf80QAN7r7V5UEeA7FCVL0pmAOX0H0AM=;
 b=aS25sm0AwZ6wxyICA5AKUBKpLKUrSNBkBgh3zFasO7H0IZUtLIGxl4df
 K9sagmzNGVVg+zmVzMREO1Zn/r2AGF1MPTZPypjBBa7HjrTSYtstqSXN4
 iGmCWrSn/mGNLV99PA46UcnPkFX48g3gHJvQlJiZomjfqNmwGl/I2rH2x
 wSGMJO7qoyEtvo+RpL4UGyuN3QKWTPiuaNMVCLNXd65LkHps5xVTd7EgS
 Y5ivc45fJXCbOyCpkMBRUyQ6S2moROsr463K8I7964BI+0RiEzY/FcEim
 g6yUMEBRMTUMjFz0mQS+9b88iZv4Q/CCfDzvM+ghZp3Xt3KmtCp010WPj A==;
X-CSE-ConnectionGUID: YU9EeKsYRQWvbdqFql2XmA==
X-CSE-MsgGUID: YfusJYRISe6zQ/toNnrtDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="91997362"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="91997362"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:45:54 -0800
X-CSE-ConnectionGUID: /UQqcFYOTnWb4iV9Ir2e2Q==
X-CSE-MsgGUID: ++lfGNTcQ/aBGQZQR47OCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="194458716"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:45:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:45:53 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:45:53 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:45:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E4Do2WNj6K5Eb4eM65K4zRhz5VbMzZh1zpKRMzn/ZhTPQYOXFPy0tkbiMz/iLtpROOPqYHxKakxCkJ5qTFhW3RLISW7qL9DZAtrskYLrmaOcpnzYqS1mjF8uu65nZKUGpQ2VxyYbsRhHL/vr1IdCbKIxfITdpU/jVNet1PHzc61LvQ/Hgow7AqX7wMAjx5T3pgQIzwepmxK6uumB6OqBSKB7WG2R9yBB0ZlwaSgX2Qsoox67Yush0lhdKunPaQHGAp2/nyjMuX2KfLmsgLHCN1pjnF3GQpddwTBhS2vyXEm0Pj8QBUGUqr+vS32wIxR/8+hhf//9gdJaAqhU4Nut7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tfTmPRmcqCAjS+yXwN0GAUWRstAxkd7gs0/alDfQYnU=;
 b=t4RO7Wd5mZFqCdwHmuWLOoS1T9R47IX4UhVvZp7zJBSXRZ+0Uj+nLsWWPhjYjN7XzxFytUyGP19Dp570rDSm6ruFq5My3YDCxDVfDcPA/qr40RxLZriUH9Ijabm8EKwPkQrfb6WqErTJuyrJcGE5BEjduRTM4QHnSQBYxdinvVraDME/BhvBCgIeJIyY2324tWXEi+U6J40AXYkd5dv9uqdfF0Bqrq9pU++SRs6XaoKSPNPf3n0C8SCT3g4TgW5S7kOI+CmvgUQAXGhvuAFOZQsi9tq1jkymEqiH7cRGM6gQGiOkpsGEW/ETSWYY6wA6h7b7IZr2nf3hMRKE7ZpDoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:45:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:45:50 +0000
Date: Mon, 1 Dec 2025 12:45:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/8] drm/i915/psr: Move pr_dpcd and psr_dpcd to
 intel_connector
Message-ID: <aS1x2vbh5gxYqfAO@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-5-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P123CA0165.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18a::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 3019841c-bec9-4184-ecb1-08de30c6caf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?WSsiJP4o9h4xWlIYOjvXjwEAr6/Svse/DpfRDJskW1LpvrI2/w+bCLrMVF?=
 =?iso-8859-1?Q?q2ylQh5mKAECxZzvoKLDWE/shsE6RDV57T5LLQNVbDoGjjG5ELp0OjULNC?=
 =?iso-8859-1?Q?AbI4bJlUF3oeVqoPbU/FQr4VVAd61I11Kw2rQzh76RwFGxTFqzmR7GSpOL?=
 =?iso-8859-1?Q?s4bYoCJANYNnGPO2kpuaKEghZ7pisuJz/f4M360JZuzOB9FcXhHhp27ylo?=
 =?iso-8859-1?Q?E6gxibdx/kHVUHPahbCLH2ooPEIYi4FqbOhyMANjkO7rPnA6bgKxWvAHBb?=
 =?iso-8859-1?Q?6TNGrkEpJPEb7hLq0MpwDNTCI7AGjH4pCa1KBZG9xdGC5Vaz/1M+fscn3O?=
 =?iso-8859-1?Q?K3roKZAWJUhUPDuidCtT7NtUVWj9tcrZ6H08hXyYjbexVFSV4xIT7cZ8mO?=
 =?iso-8859-1?Q?cTJFfQsqe+FMrXP4stsIfSBGVkZ2d21N85E7hrXSaoXhpORrdbsdmULelT?=
 =?iso-8859-1?Q?9+ZT0tXwQGAGPFnXvxElnH+W4q0z+3j7GpCXDtzNv84UAYHaTEbasuybS4?=
 =?iso-8859-1?Q?s6ERGEShSQv0baF/GuiNDcAxP1wjCAcDMVAOfSY5ASbaLHVWHju/DM4+Md?=
 =?iso-8859-1?Q?8dLLZWLdiWjiyfcf5Mz5yOGVmoqP7qMbnpiOewTLzMblX3uAULH6qggTMW?=
 =?iso-8859-1?Q?+gINQLSsWkuBCPCgG1l4c1nI8BWg31lj2lS/IehHNWiBQDpWq1m5m3FPfZ?=
 =?iso-8859-1?Q?jUdeFEYT5Ndha6C7V0Zc9M4aIJ5fFGsnvtDqTur+gfy8RbLsuZmtE48O/Y?=
 =?iso-8859-1?Q?X0S1yGQXToBPHqeYKMJfe3JuPH+g6fwMe9yz47d2zbTpt4X5zKzC6Mjl5R?=
 =?iso-8859-1?Q?qJw1dhxBJzVrvgBwUMGhZd9RK9R/PXDZyYKkx1dC2lK9BM2kOvCzPJKo8Y?=
 =?iso-8859-1?Q?+Gi9Rx55HLHKSQzu7KJTUD6V0YEywYbnDiooaCL9YtNSfeCwMKx5iur2hh?=
 =?iso-8859-1?Q?ZalBOQT3ABfcbOzugsTIqn7C45LRe/WkzUv8dmw47hv14oOjhoTQ8HU1L8?=
 =?iso-8859-1?Q?rrwtI2mqQHGdkY/Wi117G7UFiN+HHo71dnz5xtF5c2xLQOffAXohO90WHb?=
 =?iso-8859-1?Q?HVyN6HesG6Zug5yHTgjkNT18gMdd1AoXuaMs7TC5KsF/HJ5mRMHws2sh+o?=
 =?iso-8859-1?Q?M2t6LoSl0HBi2puq9EHjyzEJdOaw1LAkvMsw2KMOWTwP5zzcfwIkMGM4kU?=
 =?iso-8859-1?Q?SvXzmU+7ijDfypGjwGW2vDjNICy2HCKc9Pow6Gqcsnme8M0P0Pv+BjaI+y?=
 =?iso-8859-1?Q?q1X+Qop091Wl/SOHbTLnRNFMQYUJhV9Ddo9hVwH4H3UeK2C7wXfzcRU26s?=
 =?iso-8859-1?Q?cpnY6adnmzGNvlCXDpGlnuc3jr9UKP/y6pMIvk9HeHujTEA68wVK/1ZZZ7?=
 =?iso-8859-1?Q?1uOvJRTOpNXi9H+dTuuiTd1jDLckZvjDqF19Zq3xPlQox0L/Go+VFIF5JZ?=
 =?iso-8859-1?Q?nUo1MObpoi24cMrbJ9pKODTze8wzzoByeS0B6RiZs7ZwqBrMzBG3BZYWbY?=
 =?iso-8859-1?Q?F3pH3EAoU73AP4C68N3grJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ob8F8s9hGDPsTkS8H5nakogzqaiu+bpgWP1Cxqi2VZ6ZOv3SmkIwX4Awk9?=
 =?iso-8859-1?Q?qkfCTJp+2ncdXOFCjdvToORRZ8iqlfQVogc0lvueziuVm8zZ517IxPX+kO?=
 =?iso-8859-1?Q?8A6kHCeYsNYKF8SokPAzSZjAO7HNDTxVU7l3ibXSl/kdi6DBHvgt6cUC2b?=
 =?iso-8859-1?Q?yXuffSv64s9auOxyjPu2H/k7WNMiktpfrb1T/tpybG6y3xwPMUPzifuk/5?=
 =?iso-8859-1?Q?SC8/SzcNpz8CSvgw6fVu5QGlhSoykUnxCa0/we7hP22xDk0jaGVkxgYtu/?=
 =?iso-8859-1?Q?Y8OXB4YBUEvnAuS2GIX7Z+/v6dqVl6HCUSxMlaXpRFjXbWfyk6lclFcdNz?=
 =?iso-8859-1?Q?4JU47WW5OjVIrIt6HMV8QnKDRirAOuNK9a50cQYJ/KfnsJ/FR9rnwwNB/O?=
 =?iso-8859-1?Q?7aIa4aNA7h4yFXOKkA0xzvASZ5pudBZ6yC/EL6DZINR5IDt3nkyjzM85nM?=
 =?iso-8859-1?Q?JG0fWwivgQgxhlwKZDD4bPVpBfBV4N/w0JlleUE2ArnfV7KqUbi+NK6aur?=
 =?iso-8859-1?Q?qWWK3SHjGl9sGwSYO2B0KCgb983FEW+hLrnHfPKMXuNJI5RvDIgtGD3VaH?=
 =?iso-8859-1?Q?4ex+k5KT1j8y0NKtj/RtezQbg2jdywd3Pb51nIhuzrHac4MLx9FlwLlqQ/?=
 =?iso-8859-1?Q?9yEu5WJmJ1tc7GIu+eyLH2/4mvX5GpJ2W4E7BDULt0zWPtmZfjkmZx7Ory?=
 =?iso-8859-1?Q?EpUGK92xjpntzghMC2HUsiRxCYVT6oZ3V6hOdAgcrrooEGHvjZvWRNwPwE?=
 =?iso-8859-1?Q?++N5D3LkxooPBR6s8X65p5h7p06KT3rqSq2GTmIsHT/qhH0o1NX0q8dBIg?=
 =?iso-8859-1?Q?LB5Euw3jXKcyj1pQXzv/pzCB+IoS6Ecqnslt4iPNO5dHwCynN47iAPz88P?=
 =?iso-8859-1?Q?EZYmMbawa48OFvg9MnODYmshEwxCX0nNyOcUeVR0PkuB5fOegBs1fNwH92?=
 =?iso-8859-1?Q?mUwVx3cZ21FJgwycxJKRvBl80IyisqNoh5SJQgMDKYS6cHZgYukL13LUes?=
 =?iso-8859-1?Q?EyA1vIZk5BkBYnBA8LP1XrZzT4dlghflj3YuqNZJSJRwUEzOVjGvRRRk18?=
 =?iso-8859-1?Q?E7Lo3DakS920elSSCUn97txr6f75rCJ8b988mQNXycanEFbAF1Wy0kI1pL?=
 =?iso-8859-1?Q?Y8PHHKXaLr3WfL4yKo3now0BJXOWorPALznPMJgN6RwKCkHW7g/Mcv41UL?=
 =?iso-8859-1?Q?hV4aRWR1Ik46Mo8wzSAdJ0MqCDctcYlFoRwajEKSh30rcEJ6FK0YlGhgGE?=
 =?iso-8859-1?Q?Nwx+giD7UxRKd7czfY6fwXObTScpA9P4vTklHG5dcOIiXccDOKAFXisDll?=
 =?iso-8859-1?Q?DkohT73IvLGtxRvZWpAZzqU44pU6xww8hy8l9hbmcPtPT0Rir89FV7IGr3?=
 =?iso-8859-1?Q?eo3BXqdsKjhMJOTnFDUdOirL1n8pUhGRkiL6BFl/TqTeW38sSj/CvxwOtj?=
 =?iso-8859-1?Q?KFtzISWfwkZ8IOn+l1WVcrk8O1k/ZSc80ZdJwRM+wpgoK+JFx4R/8EHijU?=
 =?iso-8859-1?Q?AMhXNkGmGPDh3nO0N+HTeawr/d4TeTqxYbn4DG9M4MRnBvRrX5GXoNR2cR?=
 =?iso-8859-1?Q?4ge/JW6OuIV5hTH9CL0mlXkbgx9jzSbwqpd69/vBglqKMYvKAw4K7fQHYb?=
 =?iso-8859-1?Q?eMFTeJ3ndCvsF+xGsCPHwVsrPomHT5bRrb2CaFJVUD7RWjp2/l/TPO9jdy?=
 =?iso-8859-1?Q?2lxAmgq1S4Y3VerK6uMVoJHGlOdMv0lGJGgqeZVY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3019841c-bec9-4184-ecb1-08de30c6caf7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:45:50.1004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5uQzi4hzFRa/S9lmth/Xds17h8Hs72zskodFrKWNJmBlN9pYXZs5Sd2SE4EwNwD2f7n7PIbUBoflq1wyNg73qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
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

On Fri, Nov 21, 2025 at 01:16:51PM +0200, Jouni Högander wrote:
> As a preparation for MST Panel Replay we need to move Panel Replay sink
> related data into intel_connector. Move pr_dpcd as well into
> intel_connector. Generally this is more correct place for this data so move
> psr_dpcd as well.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  6 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 85 ++++++++++---------
>  2 files changed, 49 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d8a222689a35b..8587d2c527f72 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -548,6 +548,9 @@ struct intel_connector {
>  	struct {
>  		struct drm_dp_aux *dsc_decompression_aux;
>  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> +		u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];

I'd add this to the psr_caps substruct you added earlier in the
patchset. Yes, the dsc fields could be also in their own substruct, but
all the PSR / Panel Replay could be added accordingly already now.

> +		u8 pr_dpcd[DP_PANEL_REPLAY_CAP_SIZE];
> +#define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)

Similarly, I'd add this to the panel_replay_caps substruct.

>  		u8 fec_capability;
>  
>  		u8 dsc_hblank_expansion_quirk:1;
> @@ -1768,9 +1771,6 @@ struct intel_dp {
>  	bool needs_modeset_retry;
>  	bool use_max_params;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> -	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> -	u8 pr_dpcd[DP_PANEL_REPLAY_CAP_SIZE];
> -#define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
>  
>  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
>  	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9d2ba39423826..b488be8c917dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -506,7 +506,7 @@ static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
>  	 * If sink don't have specific granularity requirements set legacy
>  	 * ones.
>  	 */
> -	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
> +	if (!(connector->dp.psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
>  		/* As PSR2 HW sends full lines, we do not care about x granularity */
>  		w = 4;
>  		y = 4;
> @@ -539,12 +539,12 @@ static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
>  }
>  
>  static enum intel_panel_replay_dsc_support
> -compute_pr_dsc_support(struct intel_dp *intel_dp)
> +compute_pr_dsc_support(struct intel_connector *connector)
>  {
>  	u8 pr_dsc_mode;
>  	u8 val;
>  
> -	val = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
> +	val = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
>  	pr_dsc_mode = REG_FIELD_GET8(DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK, val);
>  
>  	switch (pr_dsc_mode) {
> @@ -582,7 +582,7 @@ static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
>  	u16 w;
>  	u8 y;
>  
> -	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +	if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
>  	       DP_PANEL_REPLAY_SU_GRANULARITY_REQUIRED)) {
>  		w = 4;
>  		y = 4;
> @@ -593,9 +593,9 @@ static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
>  	 * Spec says that if the value read is 0 the default granularity should
>  	 * be used instead.
>  	 */
> -	w = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;
> +	w = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;

This needs the field size and le16_to_cpu() fix mentioned earlier.

>  
> -	y = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
> +	y = connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
>  
>  exit:
>  	connector->dp.panel_replay_caps.su_w_granularity = w;
> @@ -612,11 +612,11 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		return;
>  
>  	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
> -				    &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
> +				    &connector->dp.pr_dpcd, sizeof(connector->dp.pr_dpcd));
>  	if (ret < 0)
>  		return;
>  
> -	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> +	if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	      DP_PANEL_REPLAY_SUPPORT))
>  		return;
>  
> @@ -627,7 +627,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  			return;
>  		}
>  
> -		if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> +		if (!(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  		      DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
>  			drm_dbg_kms(display->drm,
>  				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
> @@ -637,14 +637,14 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  
>  	intel_dp->psr.sink_panel_replay_support = true;
>  
> -	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> +	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	    DP_PANEL_REPLAY_SU_SUPPORT) {
>  		intel_dp->psr.sink_panel_replay_su_support = true;
>  
>  		_panel_replay_compute_su_granularity(intel_dp, connector);
>  	}
>  
> -	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
> +	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(connector);
>  
>  	drm_dbg_kms(display->drm,
>  		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
> @@ -658,16 +658,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
>  
> -	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
> -				    sizeof(intel_dp->psr_dpcd));
> +	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, connector->dp.psr_dpcd,
> +				    sizeof(connector->dp.psr_dpcd));
>  	if (ret < 0)
>  		return;
>  
> -	if (!intel_dp->psr_dpcd[0])
> +	if (!connector->dp.psr_dpcd[0])
>  		return;
>  
>  	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
> -		    intel_dp->psr_dpcd[0]);
> +		    connector->dp.psr_dpcd[0]);
>  
>  	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PSR)) {
>  		drm_dbg_kms(display->drm,
> @@ -686,8 +686,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  		intel_dp_get_sink_sync_latency(intel_dp);
>  
>  	if (DISPLAY_VER(display) >= 9 &&
> -	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
> -		bool y_req = intel_dp->psr_dpcd[1] &
> +	    connector->dp.psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
> +		bool y_req = connector->dp.psr_dpcd[1] &
>  			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
>  
>  		/*
> @@ -755,7 +755,8 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
>  		       aux_ctl);
>  }
>  
> -static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay)
> +static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, struct intel_connector *connector,
> +				    bool panel_replay)

Nit: intel_dp could be dropped here. Similarly in the functions below to
which you need to pass connector or conn_state.

Regardless of the nit, the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> @@ -764,9 +765,9 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
>  		return false;
>  
>  	return panel_replay ?
> -		intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> +		connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  		DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
> -		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
> +		connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
>  }
>  
>  static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
> @@ -1369,16 +1370,18 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
>  }
>  
>  static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
> +					struct drm_connector_state *conn_state,
>  					const struct drm_display_mode *adjusted_mode)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	int psr_setup_time = drm_dp_psr_setup_time(connector->dp.psr_dpcd);
>  	int entry_setup_frames = 0;
>  
>  	if (psr_setup_time < 0) {
>  		drm_dbg_kms(display->drm,
>  			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
> -			    intel_dp->psr_dpcd[1]);
> +			    connector->dp.psr_dpcd[1]);
>  		return -ETIME;
>  	}
>  
> @@ -1623,6 +1626,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  					  struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  
>  	if (HAS_PSR2_SEL_FETCH(display) &&
>  	    !intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
> @@ -1676,7 +1680,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  	}
>  
>  	crtc_state->enable_psr2_su_region_et =
> -		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
> +		psr2_su_region_et_valid(intel_dp, connector, crtc_state->has_panel_replay);
>  
>  	return true;
>  
> @@ -1686,7 +1690,8 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  }
>  
>  static bool _psr_compute_config(struct intel_dp *intel_dp,
> -				struct intel_crtc_state *crtc_state)
> +				struct intel_crtc_state *crtc_state,
> +				struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> @@ -1701,7 +1706,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
>  	if (crtc_state->vrr.enable)
>  		return false;
>  
> -	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, adjusted_mode);
> +	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, conn_state, adjusted_mode);
>  
>  	if (entry_setup_frames >= 0) {
>  		intel_dp->psr.entry_setup_frames = entry_setup_frames;
> @@ -1715,15 +1720,15 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp *intel_dp)
> +static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_connector *connector)
>  {
> -	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +	return (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
>  		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
>  }
>  
> -static bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel_dp)
> +static bool compute_disable_as_sdp_when_pr_active(struct intel_connector *connector)
>  {
> -	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +	return !(connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
>  		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
>  }
>  
> @@ -1758,8 +1763,8 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(intel_dp);
> -	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(intel_dp);
> +	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
> +	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
>  
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
> @@ -1873,7 +1878,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  								    conn_state);
>  
>  	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
> -		_psr_compute_config(intel_dp, crtc_state);
> +		_psr_compute_config(intel_dp, crtc_state, conn_state);
>  
>  	if (!crtc_state->has_psr)
>  		return;
> @@ -4123,6 +4128,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>  }
>  
>  static void intel_psr_sink_capability(struct intel_dp *intel_dp,
> +				      struct intel_connector *connector,
>  				      struct seq_file *m)
>  {
>  	struct intel_psr *psr = &intel_dp->psr;
> @@ -4131,15 +4137,15 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
>  		   str_yes_no(psr->sink_support));
>  
>  	if (psr->sink_support)
> -		seq_printf(m, " [0x%02x]", intel_dp->psr_dpcd[0]);
> -	if (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
> +		seq_printf(m, " [0x%02x]", connector->dp.psr_dpcd[0]);
> +	if (connector->dp.psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
>  		seq_printf(m, " (Early Transport)");
>  	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
>  	seq_printf(m, ", Panel Replay Selective Update = %s",
>  		   str_yes_no(psr->sink_panel_replay_su_support));
>  	seq_printf(m, ", Panel Replay DSC support = %s",
>  		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
> -	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> +	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
>  		seq_printf(m, " (Early Transport)");
>  	seq_printf(m, "\n");
> @@ -4177,7 +4183,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
>  		seq_printf(m, "  %s\n", psr->no_psr_reason);
>  }
>  
> -static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
> +static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
> +			    struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> @@ -4186,7 +4193,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  	bool enabled;
>  	u32 val, psr2_ctl;
>  
> -	intel_psr_sink_capability(intel_dp, m);
> +	intel_psr_sink_capability(intel_dp, connector, m);
>  
>  	if (!(psr->sink_support || psr->sink_panel_replay_support))
>  		return 0;
> @@ -4302,7 +4309,7 @@ static int i915_edp_psr_status_show(struct seq_file *m, void *data)
>  	if (!intel_dp)
>  		return -ENODEV;
>  
> -	return intel_psr_status(m, intel_dp);
> +	return intel_psr_status(m, intel_dp, intel_dp->attached_connector);
>  }
>  DEFINE_SHOW_ATTRIBUTE(i915_edp_psr_status);
>  
> @@ -4436,7 +4443,7 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
>  	struct intel_connector *connector = m->private;
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  
> -	return intel_psr_status(m, intel_dp);
> +	return intel_psr_status(m, intel_dp, connector);
>  }
>  DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
>  
> -- 
> 2.43.0
> 
