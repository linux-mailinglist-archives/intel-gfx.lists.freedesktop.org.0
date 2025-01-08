Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3564DA0671B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D53910E949;
	Wed,  8 Jan 2025 21:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IuPFlD2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4BE10E1DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736371207; x=1767907207;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kfN/8JPop4tZlPU2v4SBb0c0DT9srL+Nk+0zvMyZSto=;
 b=IuPFlD2KWmzdIvVZBRvYe995u5zm82FLXhxnJ9dNzf455lZwSa/sd8Tv
 YZwTm6hQ/0YU7597k0NOIbtfCVSU//OnmbtC1b7/p/6xj9KDKdn6yG5WU
 G1Yye/+gvjEcvBLn6B5AQtYCAZGBqF5yAJZQDmPaSQeoV9cLsCG7G5QPu
 cUEskiuaRkU7wi8xNu/iCvHDNTeVbWCxar6gwO4k36gDYqIwpV4MHZR/L
 Kort9RWFFESF+tJmO5FDqK1D1PXkQvAanYTGemZa4e1wKjlgXMLeSC3zS
 hSETXB6TprF2rmCZmr5E17xPONIbSWyYGq28kbOYMFVxWyqWLEgZP8wnq A==;
X-CSE-ConnectionGUID: zAxek5v3RZWYg7j89fLLwA==
X-CSE-MsgGUID: X9wWunOzROqnFmVDkT89VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40560097"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="40560097"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:20:04 -0800
X-CSE-ConnectionGUID: Nkga3EnwSz6iC6yEScM5yg==
X-CSE-MsgGUID: egEJb0vIQ5eAPyXD3+X2yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="103418480"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:20:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:20:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:20:04 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:20:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mB8VDjeCWfIYMPpCLJIky3/hZY3zSRoJNvxl9FDxm2YdKXuRDtig+idzV/u4UuX2gqT8Q4Gw9OvBfknYHpsjSMzYMRzIziEwDqS2Xc4fHa/siMBE2h6Vs+mYZcHD2uCOe+g4DfAcj85aXZjR/tACbihSB4UEggqI7spDvQQrGtI3zUMGtYemTW+qOqRF4uqD3uPxnEguuHSmqMZQZUIrgEn0ycJkr3PQgOFfufs+jFsqKC6BG+Cew/CQQnbruqAhapkTiJj0+wnaxYiz1ogyggkdDrYwaTV2MsfF/YPCBHoAlKKy/xE3ZbJPKhiwa2yU33nDpLnddYosGPq5BcyPMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/MrYjVGbvREszK9oaIx/oYOuIVuxUpG0WpRidt//nc=;
 b=N/j5wJBxx0P+meP1cTSF4iBClNmVS4Xjs7J+HhEGvuadc+5kDP1OFOn6meLTbQymQYBrCWIb6lZIBo05M50iVAzjJeaWJhwhzwVM8poUof0rfRS1QJs/P6GJXg1jTh62PBe0rFYbMyP4I3cmWf1tHKXcIxn1n9Qsvu6vPUPXzTmTXXSdCtYjWWgLmT0Ln8KeqpD2Win5BhJO4EOCtg/86+h2H3zi/F4Tt8+L+ZwHg8RfcOogDCGamrz+hPQVy8ErR6qET+6lSpuLcSyeZNWkhDiB5Zfbk9rOsjIF8XIpoNaJO3E7cma/2zBqe0wf/MECAXrzg7YnHH/VLqNxeQH2NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH7PR11MB6932.namprd11.prod.outlook.com (2603:10b6:510:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 21:19:21 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 21:19:20 +0000
Date: Wed, 8 Jan 2025 16:19:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/guc/slpc: Enable GuC SLPC default strategies
Message-ID: <Z37r1CVAKJlHCRdA@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
 <20250108141318.63823-3-rodrigo.vivi@intel.com>
 <9620547a-6512-4d54-bc11-08826da1adaf@intel.com>
 <855xmpayrw.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <855xmpayrw.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR04CA0058.namprd04.prod.outlook.com
 (2603:10b6:303:6a::33) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH7PR11MB6932:EE_
X-MS-Office365-Filtering-Correlation-Id: a1249f4f-d156-4df3-8c42-08dd302a1d17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KLBft0iIsg2EExft+FIqQPfmcao59QhzyLzHPNjGYGmZH2d85T8dkB4rnHFR?=
 =?us-ascii?Q?Uvqmnmt3n7Rq9N4ye+t8sKdId16kNNDzgQb8UjB6koGZhfOJsvvXhi4cnz14?=
 =?us-ascii?Q?Mv97qqJiroiqUx3ivbOXjrPaXX17ajh2pemreZywqwLNds5P26MdF23qXnPO?=
 =?us-ascii?Q?cKEF8JBi0zorzp0mLtT09KPCG2g1aUIbbIYKr8e5NY67VdvVGfP5+MyGlENZ?=
 =?us-ascii?Q?1ZvJvUFu+K+hsSrvAAT3MUG6tu2QwhfXCHyxgbsCRz3ol2jWv9vqsB4ppEPn?=
 =?us-ascii?Q?IGOyQGIwNZ5HslW+OYthLAJUkJPRNtzB385ISvc+OUdYVaDM3b17GAR9bgqE?=
 =?us-ascii?Q?DGX3vq+rWRxpEATrF9WwuWBBdkkp4JsACtPCuZg2RX1Pocpk9gZca18A68X+?=
 =?us-ascii?Q?EXRo8ZMxkXGDLDYspFLv6Ak4UV00WKQuiYV5Yv7LBfxD1gWe2RC/ioUccAK7?=
 =?us-ascii?Q?ReiOhSQ9d+jnlhS2uKgdqEynmLRa+ZZ11BHMY11pSzOAKEDYmyhxktRsrR5l?=
 =?us-ascii?Q?uRsB4qVFTS0KPiYBXmmePIBMIZmOtnwZAPSFiaaJRi3aXo139BWxZf/Xylz3?=
 =?us-ascii?Q?t6Z0VldgkrdLpw0S28OmwGja4ybV+eGRwQ1akm6IrEDZJ3/qsEwb+KcnPrYg?=
 =?us-ascii?Q?G28TiLQud9qTZTgm0XoK3x2P6zYBKuvki8ZoY9aC6RdClKX4OjpqatU/RhJ6?=
 =?us-ascii?Q?/YKBCLQehVgHOPE2yUqJwBf6ooFuebjuQBZpzJvQxjnwP8OvKu4KxDCiqRAU?=
 =?us-ascii?Q?32iDT/w3gG/FCT4Kh9z0MEcESqGQSQqinShJG5Ufv1mdWOlIgHEFi3dfM/t2?=
 =?us-ascii?Q?nTrP0fYNqkrCzcT0B6JoeroUpInrsEGJu3B5e9ucOprP81SgF2/qea9nJF4w?=
 =?us-ascii?Q?kHqKePM0E2RNXY6HbCAOZpIhtRxZ24C5awICUnuS+qxZfOt8GbP3XnsDw5gY?=
 =?us-ascii?Q?Tbk095g3b9DbgwL67mcK3mCnfOYhN/BaUHzjcWpHkX+RpHiTJPitCG7BhnKB?=
 =?us-ascii?Q?YqvDa0zPreCAydhVOlu8acYknzKgQCeb6h3EFgAf2CrJ6/+b3Qks9v4d7OdU?=
 =?us-ascii?Q?9xA5j5KeN6gRivH8OcSDNR8446IDO4ZjQaQ04ivTohM7Fciy5hYY7605YTAP?=
 =?us-ascii?Q?nxHnbGt2FUx8sP096qkRvkqPSqE4hVZjXJOcX16YfLkxoEYh75TkvzNqYv1R?=
 =?us-ascii?Q?Hu9itxOHnkHKGEsQonbyQXElkrjIoMU9fsakRht2uZdM5HkWEzNBmMq0zjah?=
 =?us-ascii?Q?KIypg+JCPRRVRdfoTi3oSZplLLjEq81QgGNHDdgsTJzUaMTkKulSEUFjiIq2?=
 =?us-ascii?Q?v5pJdkY/YZOAqjxU1JJ3WH+kjZV3K27p7pvIVxBxt7WipHpMalNdphxkcgI6?=
 =?us-ascii?Q?0xfeD98k6XC90Q1lP8es6G38ZrHC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xg3hQ4EB0P3yJy4eFUkPpQqPAk5JUVsX7Zqv79lbixXoaURNO3r5chPkXj4V?=
 =?us-ascii?Q?PMYnBOnO4E1sGdZNSKmGF9sgJwL+NifwZKig8fZjuyiK6GVJNT+fV5P8eg9P?=
 =?us-ascii?Q?bmfB659kInJgaCgDWX3WTYN+NbcQLBkJh/8S3ar4qW4Jp/aRifURFh9vQFku?=
 =?us-ascii?Q?1RwfHkHhuHEC21Eh0Hx00GOUNrGhkfrPwDivWbE92Jq5OxizkmsfdgByvpH9?=
 =?us-ascii?Q?F8z/KQ7+ELdbcGiC6bhGhSpdoGef5EQhMq26f8ZglXBVBNQ44d1w41A7Jn97?=
 =?us-ascii?Q?En1WBq+6s0M1rAQh0DY5EyZuwOtgHw4tA4o1IrcIQ9F9vNepiwdH58hiLb5w?=
 =?us-ascii?Q?2p3oNDW8DPtg0CFC/PlzGcTDVUui4glaRbRQspaheCmF0vftzktF5Lz+Ecg6?=
 =?us-ascii?Q?aix9Waqbp0vdO7Vb92HXOZYXDCeZYOoTcjgajrrGAb/siwo1a9Sh2J8hz6SR?=
 =?us-ascii?Q?h2wQzLX0VrIXlqB8zSwpkYzw+soYds+d9RNLT6UebelTZSL70hwYkEGYDyue?=
 =?us-ascii?Q?foInDfYZws3XTlrtRPhmPyt3CuTj5htiT38MjSLeJIQEh4o/irkR61EJBaM2?=
 =?us-ascii?Q?+pTQQtK+MxKJ2pIHk8n/s2vMJzBHwSwpEquIwD9h9LsD7kL/7fGGCo2bA+Si?=
 =?us-ascii?Q?mLMzjWIE5AcTTkOSkBhEGt87Frj1U2oUq7hmBqFypO6cRbM+PBIW+wvXIB6A?=
 =?us-ascii?Q?LB/mpwsaB/a+qut9f2KSL0CzohcEGl4iorz8aHM5gv77kLmT6PNG/yUXXAE0?=
 =?us-ascii?Q?LtAcAH2QKQxA61ZKReTk9MZvtSszp5JAjwKzNAn0BilqwAwoqBnD5zTyfo/W?=
 =?us-ascii?Q?kVdH81SJ6AOnuqqvYuCqaIgUIlIDp27FMhYyF9GRojXlqrfUkVya9brlrDwp?=
 =?us-ascii?Q?8aer0Oq8iDhVAbG97jAyKvEOl3+qr9WFGaUE6SqKFFBCU6XpmGqRWJre8OMZ?=
 =?us-ascii?Q?IEL50Ycxv/yZxNfbo3gxQZUomWn579rV7zNHj6l+0K6Vp84ePNK+DaoLSLOe?=
 =?us-ascii?Q?2NCZ40BR4kUNPRE8ReZyJ/nmtciV44a/j+Z7mxoALVmWwX7aRGK/Y1W76/bT?=
 =?us-ascii?Q?z483R0+8/C0vwtAVVxxcC98ZHGJ0uDkY0B6HLzyy5QGmEXPjeAKa4fMnZd/K?=
 =?us-ascii?Q?Io8Ll+INK17JDjOaQT/1GVLFl9t1NCJv6wSCiR8A4gZkIXoFVwmGq+Ok8gbf?=
 =?us-ascii?Q?Y6XS71x4Zb5305PtEikNTSBuTWJjDhVzj9dCo2Ig7q/aUp2bDyQcKSZuEFeM?=
 =?us-ascii?Q?EB3izeZ7AAJD0jsqsX23YnjF/dpWdKuSWmRxkM5XVBKRup39TYMbyaAuAuu0?=
 =?us-ascii?Q?i2h0r+rtexCaOKMB/sw2xWdGOo8XoRsuASFTlRTTtb9aLYl7vjQO8lONfYaC?=
 =?us-ascii?Q?s7OlolovhCsMiNsN9Hbxo56Zd+qP+QUwGpE97jq0HRisoA/gAKOpasnZnJGo?=
 =?us-ascii?Q?p8OtV6plSY6hNeSQpJ3t0zIuId9w0gwR+w7ypHltgtIWSuQSZ0Pt0DF/h2KB?=
 =?us-ascii?Q?66gaT8fdMe+2WaRKkBhO9+ReaY/pEHqHIzTVwpITVjXyHp+ZI0k6nmESzexX?=
 =?us-ascii?Q?OnUgCOc8EBCEdacWlSVEgszYiyKKyNvQrQ32LAbTjaescfxOWr8hSt5ZqQKf?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1249f4f-d156-4df3-8c42-08dd302a1d17
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:19:19.3269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tEnVN7wwM4GRzFUr/GbBYSFxfVxUTuAIrzflpoRtaVyH/iBRoPHhdEpmSF43Eapnh0DdPnHoGukgMNZmCPbXVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6932
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

On Wed, Jan 08, 2025 at 11:30:59AM -0800, Dixit, Ashutosh wrote:
> On Wed, 08 Jan 2025 11:11:53 -0800, Belgaumkar, Vinay wrote:
> >
> >
> > On 1/8/2025 6:13 AM, Rodrigo Vivi wrote:
> > > The Balancer and DCC strategies were left off on a fear that
> > > these strategies would conflict with the i915's waitboost.
> > > However, these strategies are only active in certain conditions where
> > > the system is TDP limited. So, they don't conflict, but help the
> > > waitboost by guaranteeing a bit more of GT frequency.
> > >
> > > Without these strategies we were likely leaving some performance
> > > behind on some scenarious.
> >
> > s/scenarious/scenarios

I do need to re-enable my spell checker during git commit :)

> >
> > We should also mention that the platform defaults for enabling/disabling
> > DCC/Balancer will now be chosen by GuC.
> >
> > Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> >
> > >
> > > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Does this need a Fixes: and Cc:stable?

nope... this is more like enabling a new feature... 
