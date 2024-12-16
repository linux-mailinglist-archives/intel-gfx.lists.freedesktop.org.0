Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2436E9F3CD6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 22:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C162610E7B1;
	Mon, 16 Dec 2024 21:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IZFOx+vb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F3310E7B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 21:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734384692; x=1765920692;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=eqhEgk6grLyqlXPrbbpqJHdxH63lnJGivNi9D6QrmtI=;
 b=IZFOx+vberEErsgCMufAe3s56T7RonxqibiL0/ZAEFHwAhodALZC6o8C
 I0Y1//hPtLMaNpH0TPAIB6kYnAW9yvZIdcVoiB2384CSofVslU00wFVwI
 GQm8aXjnnApMtiCOCnma3HfUgMQiFxrRrRl2XDz3igLFOCPALHKgXxmWL
 wjbkNm8j+PQdqypqQcuYpYanUMd48khL33/oeKCUty6BI2X9aRJ1EthQ+
 cKooUm9DnboU8HEPGS8C3IbpBJk1NH7vWmyIkLhIrRq9uBQtnBVw4hwy3
 aDYlbDKdfoJ2Og+jLTuXFMoNFxIEHwRor/7Yh065bKlwxo9xeSaYXgBDC g==;
X-CSE-ConnectionGUID: i+IJaWViTgSyEzyuRCoWPA==
X-CSE-MsgGUID: hCqBSAx3QC6PDjJeuNUzcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="22378950"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="22378950"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 13:31:31 -0800
X-CSE-ConnectionGUID: 6i3subbYQme2LDDGHs9ecw==
X-CSE-MsgGUID: 3Guxsg38SpuDzRwX5RmCIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101936047"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 13:31:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 13:31:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 13:31:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 13:31:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwDjipECSzNF/YDjTNl5LcQX+rns8X+w6cSO2Z3pfDp3B7zj0x5e1j3KQVcaVlP5asqal1jdphbOFTgIWenA0cuvBvOwnVTltUoilXfHdXWvd7BNUmdfk0YthYdmCMgny/eRxJb23u9udangAFHJcGSwwMvKZobqzU0SEdQsDjJ6/Orug+ZIoBr6nI8k56RCvu/dGzGupOgFBIWXZA8Wr4z2kgJGLJqJNMASm1otnPbevDLTdaWpPBQDl9sbgbWD1crgssbaM1frvfigbOVKBf707b1gZWf+tsKjeoQIGdGQr4paiYAIO/Sbv/vdUR7KtoWXWJ13HwkNLclY2Y1iXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JP/OAl40xyHWnoIXI4xIxrQnTX15kV3ymeCy8p/nIWk=;
 b=DdfLYMcdfPY/+F+bBJBwJKDd1TE07p3gXjfxMRUOqDroJSuv0Pz8P3qc0hToIwXdhmRJv7/5pqjfvix8t3uQs2r7NZhIy/XwIlVM8wt6pucXFi+raRw2cr1OBvhnLjMH2LukGLOIFKH3GV4sZY26O/a0dFgDkGmfckYV6Yc4pCwnkUM1KUFNSDmkUW+fjeVHK9SXLG8JSVzZBIMvKRDtxoUTiV5AjzzfmnmLfc2QkAmXLFJxcGpUgzJMo8C00NHVMiDYg2JHRQiC0USXLWepOUL3hc9NyjM1mSktBbIUq5Jb3muia6RXRGeNxV9DIWPE4Ml5MVgwCuM0hOv8ZVC0FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB7864.namprd11.prod.outlook.com (2603:10b6:208:3df::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Mon, 16 Dec
 2024 21:31:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 21:31:10 +0000
Date: Mon, 16 Dec 2024 13:31:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <vidya.srinivas@intel.com>,
 <andi.shyti@linux.intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <20241216213107.GA5725@mdroper-desk1.amr.corp.intel.com>
References: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
X-ClientProxiedBy: SJ0PR05CA0139.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::24) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB7864:EE_
X-MS-Office365-Filtering-Correlation-Id: b13552da-5793-4d2d-1bf0-08dd1e18f55c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?5j/kPoVvekKonKDVCheoY4Y/qeVUx0oLm2J+in0yk3fDIJb+Bpsa47TrF3?=
 =?iso-8859-1?Q?M3udU9j7lWHItAGIUkQQHhAY/Rn9l8QxmSBzp2tPLE05GxX1OHl10keQjs?=
 =?iso-8859-1?Q?iuD9rb2yr7xMyCImxaxJ6Mp2g7KIh1OyPP41g7wCeEhCa53KCdlTG/iC9l?=
 =?iso-8859-1?Q?h3EtuzKPErw/oV30y45+NU8dKnRpP+8NoC7V4fjViqNYH6061qz5/AV96e?=
 =?iso-8859-1?Q?a2hz7M1zsnHROU7O8TbovD5gBdyoTcLayT2RoRiTul+hK0Kt+/mi/6lbTV?=
 =?iso-8859-1?Q?dIFq7DfQiFy11bz3eW9rSOs++tuIK1Ljxux3/L5i6fjzlAvJTsXT9Qd86y?=
 =?iso-8859-1?Q?t3J9KtRoxIFCFNz5pX1vXcZorOF1PXLIRZ+O34tTYMFC0ZkrcYsfNzJCTb?=
 =?iso-8859-1?Q?DNSGXV8wbesbtGwx3C8+CIKfaUOK0uPOqw4qwV0aHu+TSK3Dh+0XAAmv6Y?=
 =?iso-8859-1?Q?uvkk4MKqbHDvN/fGa3sb0bm6SosvCNtB+v0LzpUtECkzRZfN0JMd2kQlUV?=
 =?iso-8859-1?Q?ixopgqc1847d4r+bvv6A/WGKy2HjWe7NsYpMKz/yDXc7VX1m0uXFseD/pE?=
 =?iso-8859-1?Q?na62D3vROTnDEMN9Kd9wQJOu80huM8JttNh6LeR730VBGTHLj4/CFzvoyf?=
 =?iso-8859-1?Q?zjZgZcIV/WQUaqzKIOCvFp5VcCTKcNi974MGaaLlToN5ld2ebxvBb7KFWK?=
 =?iso-8859-1?Q?YPgouU7HYOMbE5pjckGQhUa3hWB9RC9hMri+znRYZQm2vr/KSXI1PdxWo4?=
 =?iso-8859-1?Q?FLl64TvBLrrKaveuNHwoynvq9Ox3jba7LdVtRLIjdU0G+9QUc0/AnrVFmC?=
 =?iso-8859-1?Q?RIJGAF2fOK35jqeNhzfpJE9DP9FaOTcvOQejcQvwHpuqaqwH0Gun+L6ZoE?=
 =?iso-8859-1?Q?6mLokMGhbtI3x6FrNUkZ7Y1fiwx4YjxtcNUhEcA6MdqLmVIijtFr1s2QxO?=
 =?iso-8859-1?Q?hu31IQrYqosgY4Czq5w2rLVlT1lct9jMZ79UmF9rM4TB+LZ29SEUM1fKPh?=
 =?iso-8859-1?Q?4OfMmYYbb6fzkOGKgfOW1AXNfLE2ZG1ohoY0c47Ug+MBFXKxFK7qZj8Rje?=
 =?iso-8859-1?Q?cGk9xiAizN87R0wa3+QwGgSfCEJQ4J6/etBT4q9IfECdRBzY3LTPkmDMyV?=
 =?iso-8859-1?Q?LLfIDUysiHcU0nXy5H+OZ9EUyX2wWqOLjF1K71iNfYKURh4NxvW1tMz6wg?=
 =?iso-8859-1?Q?MUpshvyxeWZ/U+8cm0U1jY5TAFspNljkQszswo07POPP95xs8IgMv54ajP?=
 =?iso-8859-1?Q?vFJyoq7r46AZ4XbOoIX76CmZ8VsFi3FeCwAh1F1ZoeZlFPRRKH/1hHeqpL?=
 =?iso-8859-1?Q?wcLImqcDu9p4NSUNt4shWfB2x/XocxIbFTByzhtMBrfX3kbx/w9+NckXi+?=
 =?iso-8859-1?Q?7UmzEOqydD7RLTNK+XoTkIUtswKeWsCQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pJIHBOuKU82MdlxlEy9/5KEi3b+Zj4Vs80dyqdLshD/BlzU1KNxGbf2Y+H?=
 =?iso-8859-1?Q?QdZfQZgSFzFlNJzWlh1mA+scxeFQXhaIuODsoNgoSgvCJnGu9lh3f9eVSA?=
 =?iso-8859-1?Q?+b8TIxNmdd5eWJrbVdk/AcxukYb0rcYZyq/MIIyckMuqx5CfF52XRBNmIj?=
 =?iso-8859-1?Q?FqxC+8fPluO64MBmsYmCjhgSIB2EWIidKW/D+Usaykz4QW4HcQh3+WpLs8?=
 =?iso-8859-1?Q?8wNIn7NQJL6hzOmGTDsPp8KTXTPa+szitV+wqzmCZvzjKCSkn5eQ5lr9wy?=
 =?iso-8859-1?Q?2cqn/oEBoW3Xo5eLggJQVAtkeRK6VGlGIHefGFDIbmL85CiPAoTfukdpuh?=
 =?iso-8859-1?Q?+a0/+Fkkw/B1DvImqeSsZAN2+icnHf233wWmHH/MF2M8rQZAMYRZX0HXQz?=
 =?iso-8859-1?Q?n4xPZMGgeuUCR5UFCcsxcgoc5TH1uqNy7GEFaa/pX0r156S+dUFTj48Nmv?=
 =?iso-8859-1?Q?vu7ybJZ/rBp6Z7ITYV/4sA1Sdywle599L4aU1mypRtFMFpztW/dItaX69J?=
 =?iso-8859-1?Q?Vf1cSignTl0IWWu0xdzNjueci7QySUClokynEnkSyfCRNOtx8nc+rhitgP?=
 =?iso-8859-1?Q?WvENsNEf9k2uOMrhbknw3Dyy5xthgPQpJkXIdJEVlisYTpZ3xaYo2vwia/?=
 =?iso-8859-1?Q?/za1JPqveyGsge2Fo1iniR/JjgWgF5nThmwzkzF/5LWeimALxDjCamIcZ2?=
 =?iso-8859-1?Q?ROSXZ/X7Vy+VVJ279AJOq0SfKTZ922QUBT6z1Bf4YjIo5djBbP0/PeQMYa?=
 =?iso-8859-1?Q?lZ9H7KL8zC4FJ9Y1gepGry71SjsRhaQ6kNf7CfXhwfnzl4kgjWmbxYHaz7?=
 =?iso-8859-1?Q?XdAgAnDqNPI7Q/emJ3V0EbYk0EeLK1O293LtRN6PMcA2h9qtzneAVc4MTW?=
 =?iso-8859-1?Q?mfqKIYu3SAOjMvqBLefPluKSVNPccidUZ4rpzChSQ0QyumkjrTKDTySKv8?=
 =?iso-8859-1?Q?+jR0MigtDkOyBEBiv/SCx0056gBo1jok+0mJjqNuGKH5Aic/7bZ038PIWT?=
 =?iso-8859-1?Q?/5/k/KbrlYRSs5QN073L0nNLwrihRM4bIMDqi02EUQL3ZL6ids2k5SpSfW?=
 =?iso-8859-1?Q?Z316+SyKZSvDLUlEBLjbjkvZMagJLYh32tbnpSWbzyyCWEm02ET2LS45P7?=
 =?iso-8859-1?Q?gkwIbcoXJTAcZpuLw6ajfIAikVitCnO4HoA+1MLaPY0dZhLq/koWimWPym?=
 =?iso-8859-1?Q?UorpdLmv91JxXSXyQm74uHs1wIfooy502VPSgJ9OLnOp2UerxiLYI5HWM5?=
 =?iso-8859-1?Q?OGHutXYe5d3VZa9GGOCLuHoMKaI7eA+vAUN9oNBS+vY1/vlrXphldP13Me?=
 =?iso-8859-1?Q?UQlAeGewb/vfu/b+4JLEH6nxhQ8N/1YaW/UG42u8yUMiKZYZcq8bd8Tm3u?=
 =?iso-8859-1?Q?05998mzyIivoncgD+z2sNgc9or8jGUMRLeYmhi5/sdJ1O2BX37OTQ2Zu2m?=
 =?iso-8859-1?Q?ClP6+MdoauTvSo01yuMhuFxLdt9b0L/d9BQxHeDKxATnP6m6tf7cAM5Jex?=
 =?iso-8859-1?Q?P5M2thOkXP72pG/ojBj2Vg3xW3QrI3gFAmhW3t/NVvDDglMz/iPivDI77B?=
 =?iso-8859-1?Q?aC34LYhCoddaPPBPIaDKr65nS97wifdnnKPeqbCe9aKIVKRl/aJSyBFzsN?=
 =?iso-8859-1?Q?OhVdSlEH5WmmAta2hitjjutBGdu8KFZ6smqxe39M54FObofAsAPHyxLw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b13552da-5793-4d2d-1bf0-08dd1e18f55c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 21:31:10.2643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eKqCwItI0cXHauie/xjogqi8NNBioZJJo3cbXpQ6FHSBQhktvzY00wQVmHseTkdzRW6ifDL1B3GWZtSa7vIGG8sx24aRjdAap+0wMOYzNFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7864
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

On Mon, Dec 16, 2024 at 03:46:49PM +0000, Sebastian Brzezinka wrote:
> `wa_verify`sporadically detects lost workaround on application; this
> is unusual behavior since wa are applied at `intel_gt_init_hw` and
> verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
> doesn't fail on initialization as one might suspect would happen.
> 
> One approach that may be somewhat beneficial is to reapply workarounds
> in the event of failure, or even get rid of verify on application,
> since it's redundant to `intel_gt_verify_workarounds`.
> 
> v2: Remove duplicate code, move workarounds read/write
>     to separated functions.

I responded on v1 before I saw that a v2 had been sent here.

https://lore.kernel.org/all/20241216212751.GZ5725@mdroper-desk1.amr.corp.intel.com/


Matt

> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 60 ++++++++++++---------
>  1 file changed, 36 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..c0bf909afe8e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1722,6 +1722,30 @@ wa_verify(struct intel_gt *gt, const struct i915_wa *wa, u32 cur,
>  	return true;
>  }
>  
> +static u32 wa_read_fw(struct intel_gt *gt, struct i915_wa *wa)
> +{
> +	return wa->is_mcr ? intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> +			intel_uncore_read_fw(gt->uncore, wa->reg);
> +
> +}
> +
> +static void wa_write_fw(struct intel_gt *gt, struct i915_wa *wa)
> +{
> +	u32 val, old = 0;
> +
> +	/* open-coded rmw due to steering */
> +	if (wa->clr)
> +		old = wa_read_fw(gt, wa);
> +
> +	val = (old & ~wa->clr) | wa->set;
> +	if (val != old || !wa->clr) {
> +		if (wa->is_mcr)
> +			intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
> +		else
> +			intel_uncore_write_fw(gt->uncore, wa->reg, val);
> +	}
> +}
> +
>  static void wa_list_apply(const struct i915_wa_list *wal)
>  {
>  	struct intel_gt *gt = wal->gt;
> @@ -1741,28 +1765,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>  	intel_uncore_forcewake_get__locked(uncore, fw);
>  
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> -		u32 val, old = 0;
> -
> -		/* open-coded rmw due to steering */
> -		if (wa->clr)
> -			old = wa->is_mcr ?
> -				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> -				intel_uncore_read_fw(uncore, wa->reg);
> -		val = (old & ~wa->clr) | wa->set;
> -		if (val != old || !wa->clr) {
> -			if (wa->is_mcr)
> -				intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
> -			else
> -				intel_uncore_write_fw(uncore, wa->reg, val);
> -		}
> -
> -		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
> -			u32 val = wa->is_mcr ?
> -				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> -				intel_uncore_read_fw(uncore, wa->reg);
> +		/*
> +		 * Writing workarounds can sporadically fail,
> +		 * in which  case try to apply it again.
> +		 */
> +		uint repeat = 1;
>  
> -			wa_verify(gt, wa, val, wal->name, "application");
> -		}
> +		do {
> +			wa_write_fw(gt, wa);
> +		} while (!wa_verify(gt, wa, wa_read_fw(gt, wa), wal->name,
> +					"application")
> +			&& repeat--);
>  	}
>  
>  	intel_uncore_forcewake_put__locked(uncore, fw);
> @@ -1793,9 +1806,8 @@ static bool wa_list_verify(struct intel_gt *gt,
>  	intel_uncore_forcewake_get__locked(uncore, fw);
>  
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ok &= wa_verify(wal->gt, wa, wa->is_mcr ?
> -				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> -				intel_uncore_read_fw(uncore, wa->reg),
> +		ok &= wa_verify(wal->gt, wa,
> +				wa_read_fw(wal->gt, wa),
>  				wal->name, from);
>  
>  	intel_uncore_forcewake_put__locked(uncore, fw);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
