Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1798B0A943
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 19:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F6E10EA20;
	Fri, 18 Jul 2025 17:18:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JHAq9A+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E5D10EA1F;
 Fri, 18 Jul 2025 17:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752859090; x=1784395090;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Tw0mYXopK+Rarn+CREhb1aMZ9irdtzI0mVgpIclovLk=;
 b=JHAq9A+kqlx9mPtD5+EeLQ1PGMLnF260PoEWF6oufzBWw78s35CUahay
 GwQGooblT+G/Rg+YnP/Fi0H2ErArC3gPEfivaQf5kQJvJQRs80lAAAUpg
 B1pD5JGMFq2E7vCNIxDuiieMA7VPrpEnl3tqgDs0a22in7o08dZnBTwGs
 f6utg7LTOh6av+mjgbOGs3Yhcy1gDXwStjkOz8aAUEkCA1Z3rlzN8yxrp
 ZOO+BuWTcU4cK4EN0w5Uv1ou8UVinLHIn/KD2LMU49hA6RL8D/S+kDYJ6
 JFUxxK7GGdT+OMcTliPwMu3Fuq+v4AK3VEkyG5ikq213r/Qs/CRMhgwrt g==;
X-CSE-ConnectionGUID: H1Q7UV6ZR06flB42iPGotQ==
X-CSE-MsgGUID: 1YBVk771Rpm+Aj0z17ocvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66224176"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="66224176"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 10:18:10 -0700
X-CSE-ConnectionGUID: hOXaK+vAT2ekdtC3S+JOeA==
X-CSE-MsgGUID: kKkVjlcvTUm1VMevff8h4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="195239818"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 10:18:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 10:18:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 10:18:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 10:18:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rSCpfqXlZYxX0Q5HtBNOdJPi9U16cuI2Jetfz+/AQHKslJ8e5Hz2NV3sOWuzjhIwsKicMt3ge4eP6+Bf0Ya5Y9AdXJoWsfP+amMNvDk5ImZnwghLBHZp5gidHche2WQFCvvxqIarcC93atQFPQt6D1N0Kb9SdAmEH+dnXPhz2Zw38I33h+Ofp9AryF0zIYhfWb4KE0ypfSdouAL2w7fPHXLgEkFB+A3lXBsvBH303KyOdbk8SQ16qInQNy59DWulVTKvpeYDVGlj/fXTpoD8B9pKKSEWAWoF3BywoXU3FG8dUVJ6jHn4C1s7btbOP4Pd1sGWboyNnGGyX3fjAQDMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KTYYOKN7LLOKTK2DY2OvMNG4gM1si5XJJtBFoWVGZ5o=;
 b=jSKd0m9nNGE8NSiEWrcQ7r8ba7WQctjofohVzwdidDWZFPReq3iBTadk1faDNozBBqEAIAJjexpDad6zhB3yGPSGEGg/ivWy71AS0Sd6LnXaA8PIIcE0My4PtWX7xRWh0q9H99/DACHr5hp9Op1N+LwXukClvEhhVTmTDeHs5zSf2s6NMYlMwuzk8qIyFbdmx5em/HpdI5ABD4fYaQ84/1JxyRHOwavBNVJ2B7Sztr+W+QBPeylML3xdiE9pFwXmuiuLjgLNeWA6v5E07qpjQHQGS5juVFTwvP3CxcAOCjjHt3x53pUU4xeuA67uBuWUroOBTBpU6ORRh1oZiGaKYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 17:17:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 17:17:19 +0000
Date: Fri, 18 Jul 2025 20:17:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
Message-ID: <aHqBlQ-yY2Lc8TuV@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175285640686.1809.2888738151042642518@intel.com>
X-ClientProxiedBy: DU2PR04CA0342.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4737:EE_
X-MS-Office365-Filtering-Correlation-Id: 212d57d2-3c11-4b92-1e3e-08ddc61ef385
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?McFhik72d5joldZjpHM/k3tBgN/09RYvWmhIjQrje1lxidw6EIpPvoyGLrbZ?=
 =?us-ascii?Q?UqvBXOz5PLOiBcVr5iHDgzIjCXAnr3xzX2G7zqlTlzMl7g892AduL6eJje/i?=
 =?us-ascii?Q?u1rIjt10w0kibWf5XzJJMuqX2UFDWQ4Lbibs6uGYjbdoLjfSYwWdok49cKBX?=
 =?us-ascii?Q?wNfwyKnrcWu+cPKKGtYC6h/iu33x5wbJrL8N+G5vTVjShOHebUHlmHzg4IkC?=
 =?us-ascii?Q?MrzeVw+gAJibwYE6B8qmiyINbrrYyFrAs7S5hI29e61lJdtVQ0FHk1A/kVBu?=
 =?us-ascii?Q?hWc3scQvqlyzVcuSZGyrzca2A3geF+0HOiXrn99YQwZVjit1KDUGlvO9A1E9?=
 =?us-ascii?Q?YeHgzxi4xlV4AvddoI6KejNyaL1LxTC+P1hMA5mIlXt3guW/htT4y1cBPivJ?=
 =?us-ascii?Q?7xv1/3jkQdfGkFBnbJKIiU8Xl7AgUmfvC9Fok1Jc/q6GjZ9c1SXOKysmp6cV?=
 =?us-ascii?Q?UeVkRhM9ra/oA9dSRLY61k+bacf23d6HXVQyFnTzILtt4o+w3hialtkoaNBg?=
 =?us-ascii?Q?PKJkW2rgMrDczrQ1rGXBFWc+p2yVI7JdsHesoR4b1jFH0Q3qhuejQW8r1HwA?=
 =?us-ascii?Q?1QP4U8DMY86jCDFzBodmYEnpk0vLj5LZmycIau+xTta0RowRr67GH68CBNWv?=
 =?us-ascii?Q?S0u/J8unU3eNHq9ZJP7F1776i9P5qsuSbDM+e4AEU+rD9eoENc9ssdQlNW1b?=
 =?us-ascii?Q?Qqrh4XGCL8li+DGHPA+lSelqDMbrzHWGO2XLFxuN0sAIzHo2KuITLVkKn/Gx?=
 =?us-ascii?Q?LXJ2sVfgN1HLHI6xwAQciz2MmPe0wnoeYFVlUWOYhwChZxcjFdQmZq4BUAnj?=
 =?us-ascii?Q?AjGFYiFe+vIl3qiQZD0neSLE1bmv8226zxb/TGTcJD7bZuoPygivg8/bkV8H?=
 =?us-ascii?Q?xQhPARgp6NgSL92zB0dRomjfkzDxpxSCnHWqQBtPGgFuGgzqoAQbOE68Zoge?=
 =?us-ascii?Q?MCmri1H9gKoCrs+sxnhKNgHdfAZUapxnzXqDjPvpSjqaSDo1MQlczwULWNsE?=
 =?us-ascii?Q?OXwY539gtC14Fc9Nqse2JG5UfCGvO7m+CP3LrTW3gTv+KgdAGqdaylI3Q6IF?=
 =?us-ascii?Q?B0ugDVQBiKj+Z4DrScdduCCLp0y8xYUAuTkiobfMUw3SDcYZtZf9Kt36Gknv?=
 =?us-ascii?Q?6jqZSE/3OJFzZYlg3L6c/RSZpgCG946zg1YBgp1xT4ku9X7qMn3mkN9GJAV9?=
 =?us-ascii?Q?+1YYr6nLJkS0zlbOZOpAVeHQzDjDVTkDvppWbou3+keyg1xcFryKPOI3urTB?=
 =?us-ascii?Q?f91L9nOFHMAtkSK2tC6cnwdoMD9vYUbzbqHa7RmKihW8C9e2/0ObD9/AE0jh?=
 =?us-ascii?Q?qKp1sbEaXgajesxMV5fvJPrrbwAk8JcTQ3zfzSQGVlhy3phzSrKEA9YL8F44?=
 =?us-ascii?Q?/pHm1LXAnHqxbaDw3/XgYvpOKJXLolU9hGFk7SRVWa6VNC4VUw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xChzFQpQjWPw06C3a+c+JbV5/Y333PGETL1zo3kC4JVZSJTzS107FlABtWDK?=
 =?us-ascii?Q?WOXAJsNbNsD1AVlRCqSJiSYLbW5RiWX8C4jE4427zwwo9f3hnCaXuZ3dLZVO?=
 =?us-ascii?Q?x0mIPZU02/jk6vc6ZMcaje0o3i7DQu0Y9f9TJxER524Z3uvmwGyTGCEwn772?=
 =?us-ascii?Q?KR4N0K21MJ1fF3AsVBcw4dGBrwHLvhno4+otQjnK2YXbxhucttkETT032ZsH?=
 =?us-ascii?Q?E5OmjCBFo4ijupjiKkjBwHUsXfwNPLT+DlmPe70oyGo4e9Yz/J/AKG8lLBqH?=
 =?us-ascii?Q?AKqv/du9FhHsJubJzTM1IPrk4P6xrMkNnITXfrQEq5Bfdhq5mJalaXWyvCe8?=
 =?us-ascii?Q?GLG1rDzOV7IwZFW/JyKS7b/HjRZtq9yT1/rg7k43ydM2vmDz4W1tGHEXwDf0?=
 =?us-ascii?Q?c88GNdzxOYLZ31FnRKZCTW+ymyw9zKPjP6t/JrkOVgU6p1AMnP2pyBk55xDP?=
 =?us-ascii?Q?KCF6FftOEqlqxHeMf9loYS5nBh5WNSNIhPy0pr8tYc77qxMv2LFICb4yYxMY?=
 =?us-ascii?Q?Oe0BSBq0mfYRJtISmgYpr6dX1MrS+H72TYrArQR1Q9/rk588HgUQOQY87j0D?=
 =?us-ascii?Q?WOv2IQBmuiJp9myEaaENilar1o0deqv1v3/fB/VYX+pPpUPhE1A09TS7R6iv?=
 =?us-ascii?Q?Yxxmjo7+Ec6ZK8GgM6LFQeIm/RwuPF/odAoIbLODqGDSbeC5hgrsxl0CLGER?=
 =?us-ascii?Q?PANAO7ltbzUau/zyRHYlbEpSJ7gI1GFFPcc7B5Z3O20/ZH/jU8Seakv6klBw?=
 =?us-ascii?Q?9Ev9VSCuHBOTSFxwk+NAlV0onsVTFHYxi3r1/gLpyuTtVxrfvSFtBnKUegyA?=
 =?us-ascii?Q?yeomrWrTnmoEaX6ss4+8Jqa7wc+x2cskYzoLssEdqQEaUrx7+2otkK4PSwwL?=
 =?us-ascii?Q?XKyCU9imhk7n53azjFkzpfCRKEJ2zx4/n2P8c6wcILDu4PbEJFoHhRX52Fhu?=
 =?us-ascii?Q?WUZS0eRkX6ZGhr6lzuvaTyODcpYFDYu11vAUUpBgMs1z9BWN4V14IS8eEBDr?=
 =?us-ascii?Q?Vnv2VpgaO5/M4YvkgvLCFhjBAPplxRCvlS1yxwg5qQlHSx/5Riuuec9OlrWS?=
 =?us-ascii?Q?43PnrfLcTe5Sm/TPeyFxcT8aHkrE2ZgEohlsALW2Xfre3kD3whfNGwSpqdmE?=
 =?us-ascii?Q?CXcJycK8Ig7yADucz+sI590190AOSr1t8I18vN8/4Ydg7uWyWOEkoNubyuPx?=
 =?us-ascii?Q?4SOALcyF9KJ6b6TKziUW1aKlKGWhj/8RJiWx9xB2xzfptblZRHjkXV7DwdnO?=
 =?us-ascii?Q?HAQv9aUWbLGKxD0yO199riAwDpcH2iobEp3LYzA/Ka2GWS73Bj+9tg0md3U8?=
 =?us-ascii?Q?KBeSgdhB0K6rDiMPZB9J4Rc0pIuxkJFpbfjIvK8uSuUJ77aNn9v6JMt3xvy8?=
 =?us-ascii?Q?/KyH+UzBOF0RrNk1vpXxk5qOlX9xdRbkYHrmtNJvpkJzK0ELmcH2W+1/vnMl?=
 =?us-ascii?Q?uyvjCZAIvN1eTGWcB+EWs/fXU8Dgi82COXcO5bFqRQHQIIV3pn7SWple4ZfH?=
 =?us-ascii?Q?9+urtw4K5ZCH5nbc9VW8Clc93o0YUaokg4Wvl1of2ypZXl2ygX5R75DUwP5I?=
 =?us-ascii?Q?p6Ep/owUnABUYrdOpmA232IuuqzPEANAdeQWvekYgXEfVJlviyWE0LGn0VW9?=
 =?us-ascii?Q?eAeatTVUd+uOocTHRu44n94KQzBA7D5o/PcA9h8NNQrX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 212d57d2-3c11-4b92-1e3e-08ddc61ef385
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 17:17:19.6031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bsqcWZwZEu33xvEE0yZTuWH2/6SwEleT9UMLYxWTzEYcafv8dku9IDfdmLc8+nSTYtEXAZoTbYlL9l2pmJosAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
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

On Fri, Jul 18, 2025 at 01:33:26PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-07-18 12:54:11-03:00)
> >On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
> >> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
> >> >Some power wells are only relevant for certain display pipes. Add a check
> >> >to ensure we only allocate and initialize power wells whose associated
> >> >pipes are available on the platform.
> >> >
> >> >This avoids unnecessary mapping of power wells, particularly when platforms
> >> >support a subset of pipes described in the power well descriptors.
> >> >
> >> >Suggested-by: Imre Deak <imre.deak@intel.com>
> >> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> >> >---
> >> > .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
> >> > 1 file changed, 17 insertions(+), 2 deletions(-)
> >> >
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >index 77268802b55e..ca73e4084354 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >> >                 for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
> >> >                                                           (_desc), (_inst))
> >> > 
> >> >+static bool
> >> >+is_power_well_available(struct intel_display *display, const struct i915_power_well_desc *desc)
> >> >+{
> >> >+        if (desc->irq_pipe_mask &&
> >> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_mask))
> >> 
> >> According to irq_pipe_mask's documentation, that member contains a "mask
> >> of pipes whose IRQ logic is backed by the pw". I think we are
> >> overloading the meaning of that field with this logic.
> >> 
> >> * Do we have guarantees that irq_pipe_mask will always be associated
> >>   with the power well that powers the pipe?
> >
> >It is the case on all the platforms and so it also provides the required
> >way to identify the power well for a particular pipe. irq_pipe_mask
> >could be renamed to pipe_mask accordingly.
> 
> I mean, that *exclusively* powers the pipe(s).
> 
> As an example, bdw_pwdoms_display appears to be responsible not only for
> pipe B and C, but also ddi lanes and audio, for example.

Yes, these power wells do support other functionalities as well and so
they must be registered unconditionally. pipe_mask would still be
correctly indicating that this is the power well for the pipes in the
mask; these power wells wouldn't be skipped either during registration,
since that logic must use a platform pipe power well mask vs. a
non-fused-off pipe mask.

> >> * If the power well that has irq_pipe_mask is also used to power
> >>   something else than the pipes, we could have issues if pipes in that
> >>   mask are fused off.
> >>
> >> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
> >> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
> >> have some idea of how to do that without rewriting code to use a
> >> hierarchical structure (which IMO would be ideal, but takes more
> >> effort).
> >> 
> >> The idea is to, during runtime and initialization of the mapping, set
> >> the bit respective to POWER_DOMAIN_INIT in each power well that has the
> >> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
> >> also require removing the POWER_DOMAIN_INIT from the static mapping for
> >> power wells directly responsible for POWER_DOMAIN_PIPE_*.
> >
> >Power wells that don't exist on a platform shouldn't be registered in
> >the first place, so it's not enough to only remove them from the power
> >well->domain mapping, while still registering the power well. Otherwise
> >these non-existant power wells would still be accessed while disabling
> >any unused power well during driver loading/resume. Also these power
> >wells non-existant on a platform would be incorrectly listed in debugfs
> >and other state dumps.
> >
> >However, I realized that pipe power wells that do exist on a platform,
> >but for which the corresponing pipe is fused off (for instance pipe
> >A/B/C on WCL) we still need to register the power well. On some
> >platforms at least such power wells may be enabled after HW reset/by
> >BIOS and so these still need to be checked and disabled if needed during
> >driver loading/resume. I.e. instead of the above
> 
> Ah, I see. Yeah, that makes sense. Thanks for the details!
> 
> Well, although Bspec overview page tells that WCL's display has only
> pipes A, B and C, the page specific for power wells still lists power
> well D. So I'm wondering if WCL display just has pipe D fused off and
> the power well still exists or if power well D being listed in Bspec is
> just a documentation mistake. I'll check with the hardware team.
> 
> >
> >DISPLAY_RUNTIME_INFO(display)->pipe_mask
> >
> >something like the following should be used:
> >
> >u8 pipe_pw_mask(display)
> >{
> >        if (DISPLAY_VERx100(display) == 3002)
> >                return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
> >
> >        return BIT(I915_MAX_PIPES + 1) - 1;
> >}
> 
> Well, if power well D does not exist indeed (i.e. not a case of pipe D
> fused-off), we need either this above or maybe go back to Chaitanya's
> original patch.
> 
> I think I prefer the original patch, making the power well mapping
> explicit.
> 
> --
> Gustavo Sousa
> 
> >
> >> --
> >> Gustavo Sousa
> >> 
> >> >+                return false;
> >> >+
> >> >+        return true;
> >> >+}
> >> >+
> >> > static int
> >> > __set_power_wells(struct i915_power_domains *power_domains,
> >> >                   const struct i915_power_well_desc_list *power_well_descs,
> >> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >> >         int power_well_count = 0;
> >> >         int plt_idx = 0;
> >> > 
> >> >-        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
> >> >-                power_well_count++;
> >> >+        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
> >> >+                if (is_power_well_available(display, desc))
> >> >+                        power_well_count++;
> >> >+        }
> >> > 
> >> >         power_domains->power_well_count = power_well_count;
> >> >         power_domains->power_wells =
> >> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >> >                 struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
> >> >                 enum i915_power_well_id id = inst->id;
> >> > 
> >> >+                if (!is_power_well_available(display, desc))
> >> >+                        continue;
> >> >+
> >> >                 pw->desc = desc;
> >> >                 drm_WARN_ON(display->drm,
> >> >                             overflows_type(inst - desc->instances->list, pw->instance_idx));
> >> >-- 
> >> >2.25.1
> >> >
