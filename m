Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D745CB138A9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 12:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F0510E11B;
	Mon, 28 Jul 2025 10:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iiCfmvgK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3224310E11B;
 Mon, 28 Jul 2025 10:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753697709; x=1785233709;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=3SBmRN7RdS1UhseYJXC0Q3HRIgUyy3D6Wf7DvVVfJaY=;
 b=iiCfmvgKdG7EjBrXrYM6VXA0bZG1IJ4CBPcPST3EVBsDeKCzuz2QvuiS
 IC5IsOK2KUWYu5E+sjdnTbUG2iOMGCR9EsMzlP6plfKaZx2zJJQyQRzup
 PcacF42D5IhGWl8A61kt9lP1lGiIbW0p4sXqPALBz/1JnJ05JZAjZXc9w
 qhcQQG0JxZ/EdmNnZpohu5YS9mi8KuSR98yaBh3OihZDC9TWr+XIcUM69
 phQdVT9rl0bK6G6ANOZMAjZrTuWcE9rMhYYw5VRSLIBm6pocnanQjsMtH
 K0nxQBrevVRA9xaH0hubjyvIMHu9GcnLMLK0lSz+BcaGlmXpIE+MM71CC w==;
X-CSE-ConnectionGUID: gzCDOHQNStiU0RDOzhnw0g==
X-CSE-MsgGUID: O7JURCbES4KsGy26ftgEgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55909217"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55909217"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:15:09 -0700
X-CSE-ConnectionGUID: P0elqFBoTC6dDjNIWw730g==
X-CSE-MsgGUID: EU+BycbCQSWvdv3fjxIM3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="166853831"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:15:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 03:15:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 03:15:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.46)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 03:15:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nXkazyXztQ2+R/dc+OvZ5G+XJ7S1LcflTJuyxbGhsC6F3gyMaxtCWpSEf4PRdxFkrdR6bX3IPWasXW2hbmVbqFguGlZGMiGUTG5K1vODR5DNq2CuhHUc6o/MV8PT3r6IkSxUBPAtusLezFiCZt5dGf8M59xH8RxitlMNZX/vrbw9aBVnZlvwFN/kEeBqERokMPGfzTlVxbqwUNUYehxNi54WWXc2BkeCZFFbz/nSjCPm8HbIyU+T5d5A1bl//C3Zb6GM6wKajif/bavynjpFQePnT+INd13q5zVbv4Og2tCaEHDfKF04C+8xHmFl0PJ+v1Zvn8vC5rP7AY0K5uvjWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qjih8YY56u3T/Jz6Ro1LL5BCNTwG+WBBX0Y9aWPfE4=;
 b=Wd6JGHbY/C79bCYa/08Crb1L4HrLhcGP2iEJKAi8ZJmGLP7UNpFBIF2v/0YMIsTAAjbXNPTsiOuYCHbFD+ZhOulygN4GOHDMwysK3p6O8xjyApPwWfJimk5ZQrp7t8WI1xl3le2l13u8WNLBfGuCaw7Kb6HfymeQrwJZGMiny8qfH0rk5sJ6sQiWKqHx2ccI3M19cPU28Pk9D0qaJwExxrbupzik96RXIO/A3UJUoJTFO6dpvEh95WN1+CpWXVUsVzzLJZEoDPd5ILhWEWkXmd3TSaEPk7DdMjNi8eE8+7Gm+G+GyWQ2GV/KO8emaTNRAZ9cyfu9YOW+51IUZh135w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6381.namprd11.prod.outlook.com (2603:10b6:8:bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 10:14:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.023; Mon, 28 Jul 2025
 10:14:23 +0000
Date: Mon, 28 Jul 2025 13:14:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v6] drm/i915/display: Use the recomended min_hblank values
Message-ID: <aIdNeuRQoii5acqD@ideak-desk>
References: <20250728-min_hblank-v6-1-8c8bae7db250@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250728-min_hblank-v6-1-8c8bae7db250@intel.com>
X-ClientProxiedBy: DU7P195CA0001.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6381:EE_
X-MS-Office365-Filtering-Correlation-Id: b6bc0271-c30a-44b0-1379-08ddcdbf8698
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7ZNe/Mf0YhJRi9H7oFhFJLK0UvWRyhboXAD+yG4N/VgbLyHAmTer6C7apCQL?=
 =?us-ascii?Q?1xVO90MYkRUrSgS/QbE+6pniJJWjac09TUQlS5O8p71BRdarmHsgf/gs2uLu?=
 =?us-ascii?Q?uwA0snseDg0BWrBekgNjcYBOjMo4UDSICg9DbfK98W2r/t9wzgeo/Boha5O9?=
 =?us-ascii?Q?L2ecnefp+/Fxrxer9uOl6J+Mm81fpwabDkesrCMmB7aA3HhrD8MKt4wRndjL?=
 =?us-ascii?Q?y14Eh2O/QXRQ7aXxd/oTu8SwPwaLCdeW285AAHJ1rEuTLqlxr1JWJFzvBEIy?=
 =?us-ascii?Q?BFnk7ZN5EoWSVo/OPxUAlpfyZZ5ZG/U3KfeHjPQWRByNRWxbGMotLfE3cjpA?=
 =?us-ascii?Q?WOyfY/Pbpa00lsxmGqJSZv7uX0qtQipbTeVztqV0HPy8VkWaMNplq8VCWSgB?=
 =?us-ascii?Q?YseU/RQQlbE9CxeAwmWfNHkhEeRIgw0B/YXXpfJdbnLbyAfq3iEBhYjFMN1A?=
 =?us-ascii?Q?P+gFzDUHCdJ/j8jrQuM9jURrxxp+VlEda0IqzKZM/wOlAxQ56yX5Ywc9CAcr?=
 =?us-ascii?Q?PyWdhmtXMqCQn8JuFtSvJnamPsGR/jv6dPvnjUlwplwZCGi/fD+x307ZzMpl?=
 =?us-ascii?Q?MOmH4cepP0Q9GtiZfVEC6sFSf0FWoipyXqhfvH6GVGnq+WIKUDJDZ9zoZgPy?=
 =?us-ascii?Q?c2a411mQt118930dsO6LUYyEIcmTiIlFaOIkWutKuVUiQSMFI4b7BZjXBkLT?=
 =?us-ascii?Q?lW3MhfJuZ8ABOLo0F1lx5ZJ8E4cSdwUF4LAogRZzBccOPYcoW8gB7vr8+oda?=
 =?us-ascii?Q?WIN8oBq/c5Q5wCHu2MKaRzM4xNMvfA0hgiFOFJ6vi3Hb0Q373CX6nAZ0iBWB?=
 =?us-ascii?Q?G8qrsjdcOv0BIQLeYIljsq/mHGzndJuoRu8DkiXW8cipufHC/sgXCxz0N0+w?=
 =?us-ascii?Q?Pe3nOwF8jvNReATje2iZLG3FDZRZ3bBOqK+zLUfHgoto8sP0CxRY1tiTjM6n?=
 =?us-ascii?Q?waI0UXsqCtaH+KtrZzg0ARLzgdJy9VtadLwdRQFFI2BtaaDih1YQ/GDyF6J6?=
 =?us-ascii?Q?tdZps+CCgSv5qXFGjxq3D8TCENHkWhc8yWH2LP9LzixtplR3UMQybWVUnSGh?=
 =?us-ascii?Q?NgfKGpIVWighsFgJjrrGZqKafaB9fO8wZzlwKUYqrl4yvF31JZRC7GDDRJHb?=
 =?us-ascii?Q?V2ioYUmwqEo1ZDJy8M/4qW9fq09D7BZzhd4KvdqEEqLFDZVrMdYdo4V7mwhv?=
 =?us-ascii?Q?KhtiL6bXTV9ldnJhoAe7bBwJ//Abhlx1kOlMr1dsfELHkSEuruzbsH069V5Q?=
 =?us-ascii?Q?vvAVPHUCU7Yzt1p/SMXXsOuC7uFIRf/cU8MNgLrHNoZehbuLXj6+AGjiLlG8?=
 =?us-ascii?Q?GwtnWmhf/HxOXHSTiRpus+YSYj7FOEC2d+898k60KRWt9OjLkU4eJcnUsg8d?=
 =?us-ascii?Q?wtJ+5eN+Tc8CbKaAmYASZMyaq0otB+gvYYud5IgeeiP1OVDp0SJXp9i4Lt+3?=
 =?us-ascii?Q?ImOwaZ6fhCM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lagc2rb4C0pC/JuptBb0xcwrSp50SVTRqXKTz4gQKozaAbY9S72Po9HzJXeZ?=
 =?us-ascii?Q?MhgZhox51qxU0+rvFR45ieZFNtbXx8yS50xue8doMyXiVUJqHjX3vLT3PMGj?=
 =?us-ascii?Q?GjIOTI+Vw/0biFcqMBvzC8KJaijLvWFZri3nhnDHUSU0No2g2ziBFy0LYu38?=
 =?us-ascii?Q?A4LZWhziBdrUabuajDkIJzFAXB8VNKzJwZ8MrVzfiHbySMjU2tpXOEubwGU7?=
 =?us-ascii?Q?3t0WZAe3bOXPKQrt0qRM7C4GGrJrMKM2hSWU8pQu6+Gm+csYctFkgkHMmSOG?=
 =?us-ascii?Q?xq59Eew6pEMzuy28vntWkKupTg/GIYnGzoWI9sBnV26ueQocC+0dSLBaMZXT?=
 =?us-ascii?Q?G17IxF6h0Hw9MsWrTMQ/WSiKoXdcdWegtx5e+MImQQrcKdZ9MRqK4en/RbYC?=
 =?us-ascii?Q?BEoCEaDTPjjAmlrNQ7H8V9JdBEGtnwE6TDwNcuR+IvTZ1oQTc4UBtJtkuwLj?=
 =?us-ascii?Q?Zc20vmWdbXUHkaAxBf/sEU+w5m5yg3H6mv5CpIEldAau70y9vxePW3cGC2GC?=
 =?us-ascii?Q?G7CjaJnC+8wNYb3gpICUWrCIJ45K3i0ka1ACNwNW61D9439oKap76MFxViFq?=
 =?us-ascii?Q?h89fdbZcW/j1tgwyF2Or/sk09QRpVHwbtkHbX1J1bHzz+e7i+eZ+ghzIv/TI?=
 =?us-ascii?Q?0Wx8E1mkO72vEfE5M2dqxlw3UxMbHe0kigqKLMcP9SrOt9VNoEtiBfnmssmA?=
 =?us-ascii?Q?HH4fZ6XOaaDtJ/WIDXq/izYdQCXcWc6klXa0mdiSnooWpkp/wwcZqXD6hGit?=
 =?us-ascii?Q?n/QI9/GnNsTCg1nG+0FzIov7K3D8Q9FaD6LvewV8ei5o7MEUqeVLdUGjerzt?=
 =?us-ascii?Q?/9cVsgw3HciUHwUN6X+QhB1QtblZ6bpCTjpnfjicSBYYRza4GC/eQaYBo6rO?=
 =?us-ascii?Q?QF9r/duwMgDbke1tavrrZJVd5AHXSjrUaVo2C8AvWr6UQ6k4ywGc9VhumRz0?=
 =?us-ascii?Q?Id/h+qHnJehdgJc7JiAUeAO45ez8zHJaQupNS/HTeGkK65IQGrjt7MeYB1o1?=
 =?us-ascii?Q?LqY3zd3RVLPW/oD55/Qsyun6p1Gn7PB6gBg5+bcLq/Dk5+PgChYlX44syPK3?=
 =?us-ascii?Q?QNjgKphDoJFPh4Urt6s09fDCT2XHGtqzNnERefN+aNSiHAWc4tbJJP4yHGAM?=
 =?us-ascii?Q?F9bllw7XYSZQ51GD8tan43inHn0yvffXjG/RrrS/8HsviFML7jxhZx+WScYH?=
 =?us-ascii?Q?xxyhdghirHvMACvktH1hg5wS8+gVgt6UmpojWjF5dynHuqBH0L0QVp5uiHZ+?=
 =?us-ascii?Q?RDmqpNCCo8T5w4HgAyLhaps/0ORPfxSoRWGooffOzBpAdpgfpWN8I22h7k3C?=
 =?us-ascii?Q?SwIlYBXqEOwr8vpAVwAzcycX+u9LRlrPVGO4coG4lT8dJDBtm32qkS0kAbIl?=
 =?us-ascii?Q?+2uywI1lVo9DDZBQKggB+LBA0LsznAgLyscZAj4Nc29svsNe0cD03yqlrKVj?=
 =?us-ascii?Q?OUqEpAtbZ9O+394eCgIHKfGlXCQ/deKMmBiZqd0xzHG9teDe39XfE8vAk2vM?=
 =?us-ascii?Q?Ot8JAc5+Ox2DGMuGyZ21MWqZDDu6VnyJUotVfQyCjDfzkQU9m6cAKVoy9iGu?=
 =?us-ascii?Q?Tu6b9doCR6dnUckJdo2I0HxxV01DYAXee7ZdNHOV4RKcG9ISoSBwNS+GqAL+?=
 =?us-ascii?Q?l7rHpZlRZpHkQNsR1TTRbiYvYYacx+ySf49qk7ThYnr5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bc0271-c30a-44b0-1379-08ddcdbf8698
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 10:14:23.8400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Ubapvwu8vE7UV/HJQqppL3quOqP+qaJRbCfbQCzK3793augioeyGuvh3HIYzlmMfBF9ovQhfesQdkit8++rKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6381
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

On Mon, Jul 28, 2025 at 02:14:48PM +0530, Arun R Murthy wrote:
> Use recommended values as per wa_14021694213 to compare with the
> calculated value and choose minimum of them.
> 
> v2: corrected checkpatch warning and retain the restriction for
> min_hblank (Jani)
> v3: use calculated value to compare with recomended value and choose
> minimum of them (Imre)
> v4: As driver supported min bpc is 8, omit the condition check for
> bpc6 with ycbcr420. Added a note for the same (Imre)
> v5: Add a warn for the unexpected case of 6bpc + uhbr + ycbcr420
> v6: Reworded the comments and check fo anything < compressed bpp 8(Imre)
> 
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> Changes in v6:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v5: https://lore.kernel.org/r/20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com
> 
> Changes in v5:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v4: https://lore.kernel.org/r/20250728-min_hblank-v4-1-b9d83bf03025@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..148848a919e09e185fce38a0636e2c2a25d33bc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3182,7 +3182,25 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  	 */
>  	min_hblank = min_hblank - 2;
>  
> -	min_hblank = min(10, min_hblank);
> +	/*
> +	 * min_hblank formula is undergoing a change, to avoid underrun use the
> +	 * recomended value in spec to compare with the calculated one and use the
> +	 * minimum value
> +	 */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		/*
> +		 * Note: Bspec requires a min_hblank of 2 for YCBCR420
> +		 * with compressed bpp 6, but the minimum compressed bpp
> +		 * supported by the driver is 8.
> +		 */
> +		drm_WARN_ON(display->drm, (crtc_state->dsc.compression_enable &&
> +			 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +			 crtc_state->dsc.compressed_bpp_x16 < fxp_q4_from_int(8)));

The above two lines have an indent error, they should be aligned after
the opening ( of the function above.

Otherwise the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +		min_hblank = min(3, min_hblank);
> +	} else {
> +		min_hblank = min(10, min_hblank);
> +	}
> +
>  	crtc_state->min_hblank = min_hblank;
>  
>  	return 0;
> 
> ---
> base-commit: eb0c2b25072b5c56e8c41d7099050bf53bebaa14
> change-id: 20250728-min_hblank-263ceb40508c
> 
> Best regards,
> -- 
> Arun R Murthy <arun.r.murthy@intel.com>
> 
