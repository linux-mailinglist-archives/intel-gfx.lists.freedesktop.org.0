Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87853C4EE9F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 17:02:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB4910E008;
	Tue, 11 Nov 2025 16:02:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkpJIakp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A161B10E008;
 Tue, 11 Nov 2025 16:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762876964; x=1794412964;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=DQ+2eibyhqjHNYIAY9UZwRDpBNHwOado/DJ8Zq/9zjk=;
 b=YkpJIakpmKBDYk1vcgBAKaMMdfW9nl7ZQ5sOIzp5jti6uVlh7TO220rQ
 KOJeeA8mIUJcz2mGiGkLVhD/um/p0sWw87yeWEfSwUD3IDQTE7KMe9RRx
 bhb4ID2Rwt9ZKxEVmlVP+setmsJsq0V0xCtoxBdcJWusiYdlvUyTCJlbT
 txdYSX4v7dKt3npzoGWHuZSegO6lmlR5XjjMdN3JgCV/IUqqMgaD/5Mah
 DTn7FWujcZ1Xm1NzcXig0688wqqZNWj2kY6pt/m+rZ73ycUmEdgTtN68Q
 Fq5X0xYKbZfdxReO7c9KZCGSTL1K2pXi40lh7wgnIy2saXTUMmXaAFiZX w==;
X-CSE-ConnectionGUID: N7/g2WVATMKfOlKGlwvJzw==
X-CSE-MsgGUID: w8y4uJsNSRyiekgHTC6egw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76396653"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="76396653"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:02:44 -0800
X-CSE-ConnectionGUID: VK1JaC8UQa28f99Vk7B9fg==
X-CSE-MsgGUID: YJS0hGU3T+W0d9XYYlgkGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193985049"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:02:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 08:02:43 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 08:02:43 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.4) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 08:02:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UAre7PE17S3H9Ix9nFm0rKtDzSiymgwbHKDdI4hiPXuwzNyng6o2d7xiR+GpeMUmS3S6uO60N4s9FVq//iazRhxL6fdaA68jHzYJaIpVTRKrI/3WzU/Mi+PSUwiPRNB3z+OgibLa12/elhhZOO2oyd5eI4rLQCaStpi79RW/VyVuCY4sW8NIbG6RBoRPi7WMI8zoncOH4SaAdOFeDLovhzwn3NihId0Ng8L5d8H518KlvEBWbzXQVSzCENjhVqPawBd3z0g7q6ZBo5oQ82HeDy+ytcxouma4U5ne8hIluXyhZutKhPpFmovbtWE8vL5F0gf21pPflK7hRSYv1iUavg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+LACtpPMfrP0YCq/4wwXHREWSowzxEFzw59CtNNWmtM=;
 b=eDTzT8RTkMdLZ6VkIp2VkChvddlla+Ju0H7bm30C1WNuZDmCTEM+pQywgE2PKjV5KIVp3+9OsKlSpNp58GIk/mvYpwoz2yPz+/GLTzNzwPive4BFqWs9iJJs1rleqS6uNYDsQpWP8TBUewhyc5+LjfxN6hc5UZ3LTtYNa0xPZldtFTrujAhVraApFCuGqylZf12woeXVJA8F1Z5IvX/PzKi9D4cUlBu2iuEljSjtTRKTedrOlgM0N7uldqfy85mY9MlB5ioO8eg+jHsHPET8xvJxYdvg1I41YiY61kQjMcIUOhSsQvDG1c5ZhN9ovsrO6E3u+BmViIEFw8SvBMkemw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5096.namprd11.prod.outlook.com (2603:10b6:510:3c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 16:02:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 16:02:38 +0000
Date: Tue, 11 Nov 2025 18:02:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
Message-ID: <aRNeF6O4SBuBGZvy@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
X-ClientProxiedBy: LO2P265CA0411.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5096:EE_
X-MS-Office365-Filtering-Correlation-Id: 26f84b23-48c4-4231-33d6-08de213bbc9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Mq604zb2bLiNYLrHjymctFdxeMVUNQw6wZ5/2wvcqtFG/rMMiBqTZNkPet7s?=
 =?us-ascii?Q?krxPnG+5Jw/JNgFyLrnYkPQeDx1dtxTMn4yk8Zmk05Qh3Q6Jp1/ztsoYjwQL?=
 =?us-ascii?Q?/WCvs2q5nog6jqQU/hkztbxHNlhnI1NUKOSshhPHe1gf2P3eIHPeQHwBywvD?=
 =?us-ascii?Q?3ECT4hf2KeUWLzviDHbouhsA2MdLfrTkGKrshXcjt0LfKpFoy4uPxDESvDZ8?=
 =?us-ascii?Q?zCt5exm2b/dsGcmXKB7dMUhAR9ZgNF1dyuhTuCrn82CVfR9laZZS2xNzG/sV?=
 =?us-ascii?Q?T/iH4Ob+qhUF+fFJbzr9xr9gY/a7rP7AzbQ5HCjvWXT/jjEVDz1beDg6KJX8?=
 =?us-ascii?Q?PLqDHmqEBMAaPOiqq55Shuhv8YQFRMebW7f99WNWtkyEz80AZZJTqByU6bL0?=
 =?us-ascii?Q?zHmAKQmsDbnv3OouycTYMmnkxlRmIyRsI14LVqfooBRSFK+0cBaySXOlX90B?=
 =?us-ascii?Q?LVGYowvO+uWIPbdFhRtw9hBNifJBE2KCKR5LKJQAxKG3j8nnS4ec13cpAjsM?=
 =?us-ascii?Q?XIfr89xnWSXiU09rsC7xFjsbvNfXUI0eCDBprPso7p3kSP1d04GTlPbqVLvX?=
 =?us-ascii?Q?rlCClwcb8n0f8ElrZVDYl14Omb4VSfYCF+IBHO/7i5q4S2ND2u0CC557c3oV?=
 =?us-ascii?Q?SuZMx92OkHEAa3Pqoi+53CEYNwdWsDhdwP36IuThvR9CMp8Ob9U9l4KXvjzL?=
 =?us-ascii?Q?otaMdcv8J7q50tbLlTUg3//KI3HT6yigYCtPx/2JDKKcDAwj8/cjBmjunfzS?=
 =?us-ascii?Q?qYEoCRjL16WfenHZX6iLoRdbjgYAxZqkcuOI6xcS32R67gjV7SrI3jm661Nv?=
 =?us-ascii?Q?e4dB9K6j3pisQPzfiENnzopJ4xiunXBNm1mP/6h9V/uD8V6XWzR9+Bgw9Qi3?=
 =?us-ascii?Q?dizO55NzS2NhzOgrFAZfpzAwDfHAFnmDkx+S4/KCWLQ//fyxsB+7stIQWYQm?=
 =?us-ascii?Q?J4zARJBf/FVNhxI/azDZReVEdINW/Q9WADSkBTM6dIxhC+rhalHyGd/K/cK1?=
 =?us-ascii?Q?QbjLtTRlrJsKQGExeO60TciqaN9bSHXIm5SAlJil3Kn8Q92heqIztamnYh/l?=
 =?us-ascii?Q?mbDoGngHmh3Ke8mkUx4TbZ0yrq1cdIiSVroJxTfwqGlIXafs04ScgKCLpZFp?=
 =?us-ascii?Q?GQuhMlUOhJCjLh8V4t4RyF5r3xg8jsMa85PxufZobZgxokot5i/FNQMFq17P?=
 =?us-ascii?Q?/xOWu/UwU5oWf4kneDFqrj3VcWUH4MnJ+GZdziwUKdx5SDlqu2UTjb8Tt+6r?=
 =?us-ascii?Q?auJ7H6H3UcuEWN1KMBmaROf5OpvoXftfV0A1i8LhUKZ+JFA5SAoVAYJ6QeC8?=
 =?us-ascii?Q?QVQRgQajh+IUjfINKna+YQAeqtUGcZXTq1aW+g6yi4hjiMOO45enkrOjfy32?=
 =?us-ascii?Q?tQumXQXNu9S4P7eqphE/nKh1dYJrpGIrU6+sPoZkG720nCi9gv8i1tOGVWsU?=
 =?us-ascii?Q?NIxQZXwtm+yzoMtCcm6zdF+7DHCMlQgi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oOUfs5zQq/xwJUJjd2lm5osL0KUJArlVzqeTsp7dh6BGZa3NpRLRSJu8+K+b?=
 =?us-ascii?Q?U9wi8B+tVJkLxRS3fE70IpC3HzXEousGf0k7IY9ylox3vidtkJmAsl0LVKXW?=
 =?us-ascii?Q?8mzJVy+z6AdOl3fZOidU4vyoWDFyFD2g+r3PLRMWRuMe6bl833DSI9XLanDa?=
 =?us-ascii?Q?EEkLO1HvLB/1vRHKZAz5kflDpLO9ew3UG3L5WKl3/mbLIqaG0t+zTARYElKk?=
 =?us-ascii?Q?tXZjuFINiSeTaL4IQdQYLJM/Jfn7DObKBkWgzpqfcuR2fGDKsskBwlIheJih?=
 =?us-ascii?Q?MTg9HwXeAs8CcjvBK6Zx7Hgl/6oazMHEMSx7EYgbFATc/OtIhl3KNHvW+lRW?=
 =?us-ascii?Q?t8c0Ofhuyp/Ek3xGmSFwrYskjqJbzL7z3EirGkGg8lzcsi9CsfFL6PNyzcH5?=
 =?us-ascii?Q?jBc9hZx1cK5QqzWe+QHO1ISce5K8l/VqBrLbGTYo8qYHlJd8rWw2/qTXs/BW?=
 =?us-ascii?Q?czCPO1nieziRWZIgu+YANNoBH4IHe3xI2BYlAdQfUXctmkflvdmqAxfPVNWg?=
 =?us-ascii?Q?WHi/P8R6r77RYMwwatXoYsnr5VacTgxXN34Ytb5+L6lJ2Mw5cSdDiSEFnlor?=
 =?us-ascii?Q?UhhcICcKX4qDfcxRZN+iPN/b0GVthp5CbB83mrE+AJOd5cbzfZcQ3PwSynX3?=
 =?us-ascii?Q?ZDwvquPJAGQuO4nzAr+XPvFxFg3FWWI4O7NxRs6AiDMuFTJZWg8JKb13WY0m?=
 =?us-ascii?Q?eB2rjFAiA9pawqKmaGcC4SmDz3rT3CBCJO2i8QaWQUU8qLMBI7QDyMbKGW8q?=
 =?us-ascii?Q?0vZL13Zw7TQm/kSDahbUAgj6DkHGFprZZ8HSejZng7MHalowNDgSdPSNr/fO?=
 =?us-ascii?Q?orzWRD9hZ3l+XgyzjDNSOZchuXA+49iMZaaRqAYGAcpLu5IIsg46aTa/A/QJ?=
 =?us-ascii?Q?EUb9TtdrDgzV1GfMx5x0njqeJzXMboOSMTZOTpp1MlxdFN8IX1Tkwt8s5K9T?=
 =?us-ascii?Q?sahiDRsu/EDky7ZjZ6bRneImREIvOLUse1vdhqsMgN/kSvnCRBS2KVB+zx4Y?=
 =?us-ascii?Q?cUjNDphjb6HO/Jpl4bvq2Y4Kd/fqeZQPCZsfrLgGu5QlLKHQp2L6ij2kXH7I?=
 =?us-ascii?Q?YvBe0hoIBXquqY3t+x8FWvV1rAJmoKz5dH2vQZDG8k+HqDxo+L46oPrWIkBK?=
 =?us-ascii?Q?1CSNWS1ukZc7FDFVjjzHl4PpVhfoXuEFLjTPnz+aX2YUF8ep2lidTmsKOSy1?=
 =?us-ascii?Q?vrjjPtgffrk621BeNo4/7HCgwAtDRdGa7CIInqnfqOWViCpPzbzdG3XZjeOr?=
 =?us-ascii?Q?lwuQhbd7WHpsgCTjOWThyVUP5+WddOFUSAmh2P0tJmfkC6b8qqdJsdx/aOxQ?=
 =?us-ascii?Q?XVRXpOpylHzGBWfYJw/tmy7wMMN0rDKcm/Vpl9ngKhmTwLZpZsimYsR/xh/F?=
 =?us-ascii?Q?JxZAfPXHnJs6F2tam8A+CTXL0PY65EuSAY3VI1uapQeh4XOIlZfEnAnzKZSg?=
 =?us-ascii?Q?zRnjXt4jvxR2CqZRS5QGm8oP8QgP7H2rtWLKIssL8W0zj/KkB+hBFAH9ta+p?=
 =?us-ascii?Q?mKYG9cwuUyUv6NjNkK5OmbGfaQAmYC+lTF5Z1wPYUfJ9evkWc/Pkd1Jdmhh2?=
 =?us-ascii?Q?afmdqnFesYkwFnNqTSN5jcbpiinU32P51qPbONI9zuj37ujaFcEYnmwQ33hh?=
 =?us-ascii?Q?Lc6jU1hWjHh0bJHWr2jGrYh5Stct3pWddSz4UGCDh1XV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26f84b23-48c4-4231-33d6-08de213bbc9d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 16:02:38.6560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7xm020zxSCSpParVLhSXdhNcI2+7lPqgmeJLm7i6KbcGy+5YVL5Iv01NOWzGQygqLl7PC7Iaw588StuuGfmFCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5096
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

On Fri, Nov 07, 2025 at 09:05:35PM -0300, Gustavo Sousa wrote:
> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
> configuring SoC for TC ports and PHYs.  Update the code to match the
> updates in VBT.
> 
> The new field dedicated_external is used to represent TC ports that are
> connected to PHYs outside of the Type-C subsystem, meaning that they
> behave like dedicated ports and don't require the extra Type-C
> programming.  In an upcoming change, we will update the driver to take
> this field into consideration when detecting the type of port.
> 
> The new field dyn_port_over_tc is used to inform that the TC port can be
> dynamically allocated for a legacy connector in the Type-C subsystem,
> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
> that field in order to handle the IOM resource management programming
> required for that.
> 
> Note that, when dedicated_external is set, the fields dp_usb_type_c and
> tbt are tagged as "don't care" in the spec, so they should be ignored in
> that case, so also add a sanitization function to take care of forcing
> them to zero when dedicated_external is true.
> 
> v2:
>   - Use sanitization function to force dp_usb_type_c and tbt fields to
>     be zero instead of adding a
>     intel_bios_encoder_is_dedicated_external() check in each of their
>     respective accessor functions. (Jani)
>   - Print info about dedicated external ports in print_ddi_port().
>     (Jani)
> 
> Bspec: 20124, 68954, 74304
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 54 ++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
>  3 files changed, 56 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 852e4d6db8a3..1487d5e5a69d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
>  	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
>  }
>  
> +static void sanitize_dedicated_external(struct intel_bios_encoder_data *devdata,
> +					enum port port)
> +{
> +	struct intel_display *display = devdata->display;
> +
> +	if (!intel_bios_encoder_is_dedicated_external(devdata))
> +		return;
> +
> +	/*
> +	 * Fields dp_usb_type_c and tbt must be ignored when
> +	 * dedicated_external is set.  Since dedicated_external is for
> +	 * ports connected to PHYs outside of the Type-C subsystem, it
> +	 * is safe to force those fields to zero.
> +	 */
> +
> +	if (devdata->child.dp_usb_type_c) {
> +		drm_dbg_kms(display->drm,
> +			    "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
> +			    port_name(port));
> +		devdata->child.dp_usb_type_c = 0;
> +	}
> +
> +	if (devdata->child.tbt) {
> +		drm_dbg_kms(display->drm,
> +			    "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
> +			    port_name(port));
> +		devdata->child.tbt = 0;
> +	}
> +}
> +
>  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>  				 enum port port)
>  {
> @@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
>  {
>  	struct intel_display *display = devdata->display;
>  	const struct child_device_config *child = &devdata->child;
> -	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
> +	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb,
> +		supports_tbt, dedicated_external;
>  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
>  	enum port port;
>  
> @@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
>  		    supports_typec_usb, supports_tbt,
>  		    devdata->dsc != NULL);
>  
> +	dedicated_external = intel_bios_encoder_is_dedicated_external(devdata);
> +	if (dedicated_external)

Nit: the variable could be dropped imo, and would be good to print the
dyn_port_over_tc info as well. Either way:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +		drm_dbg_kms(display->drm,
> +			    "Port %c is dedicated external\n",
> +			    port_name(port));
> +
>  	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
>  	if (hdmi_level_shift >= 0) {
>  		drm_dbg_kms(display->drm,
> @@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  		return;
>  	}
>  
> +	sanitize_dedicated_external(devdata, port);
>  	sanitize_device_type(devdata, port);
>  	sanitize_hdmi_level_shift(devdata, port);
>  }
> @@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 version)
>  {
>  	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>  
> -	if (version > 263)
> +	if (version > 264)
>  		return -ENOENT;
>  	else if (version >= 263)
>  		return 44;
> @@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
>  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
>  }
>  
> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
> +{
> +	return devdata->display->vbt.version >= 264 &&
> +		devdata->child.dedicated_external;
> +}
> +
> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata)
> +{
> +	return devdata->display->vbt.version >= 264 &&
> +		devdata->child.dyn_port_over_tc;
> +}
> +
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
>  {
>  	return devdata && devdata->child.lane_reversal;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index f9e438b2787b..75dff27b4228 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
>  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 70e31520c560..57fda5824c9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -554,7 +554,8 @@ struct child_device_config {
>  	u8 dvo_function;
>  	u8 dp_usb_type_c:1;					/* 195+ */
>  	u8 tbt:1;						/* 209+ */
> -	u8 flags2_reserved:2;					/* 195+ */
> +	u8 dedicated_external:1;				/* 264+ */
> +	u8 dyn_port_over_tc:1;					/* 264+ */
>  	u8 dp_port_trace_length:4;				/* 209+ */
>  	u8 dp_gpio_index;					/* 195+ */
>  	u16 dp_gpio_pin_num;					/* 195+ */
> 
> -- 
> 2.51.0
> 
