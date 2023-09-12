Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6479D4FC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B7010E431;
	Tue, 12 Sep 2023 15:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229E510E431;
 Tue, 12 Sep 2023 15:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694532786; x=1726068786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=G39+NXbmpe6gOLE/x4yf2S3DXSn4SmgY6DdBf1tvBSM=;
 b=lXUQhAF2EM+CPX0oHFm7g064v6jR9PRppuIaJ+m44z10LUhhHhC/oZEV
 MTm75FFCBiBWk1qLPNCkAzsyy1YUO3Ccqch+ososo0gi83Kn/0rSN9DM0
 xYXkJ/+ijUF1KQDvqK9XViKIt3Gq+1EXjwDS4juzlTdJTw8GoYSAbf9Cs
 L8qVDq5zOghs83+Hvy7cG6XukY+VMOpNZr3ndYXS+b8aF/S2zEEMoynQW
 EobD6maki4O8m0ekXN2ty0u4I6XtyyOg29ZIQFvIKY6MaTf2cUdcTOp6j
 Ln816xRo6NqTtGI3X0V822copT/P3WaTgMAisZ3p6raT55WE6HxL9Pouq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="409363963"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409363963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="737161432"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="737161432"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:33:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:33:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:33:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:33:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJGOn+H2A1QGHDzbot5l3G9gOtDEJQHIEmbvqA0oqZdDKtqure/Q2J7UJMeRpXFIJ86svNd7xBoEEBsmHUXdI+5+EpAgp3Xwe7yBt/E9D7qERUcTrZJWluWlUlMHhQf/13IOLH6NJXsi3UkBXVKo2Zccz0xueHNJNKP4ma0yJ6PdgWQ8BFTpSFknhIDB3cwg8rUFXtgqlSSfW3+laEjzH+YF+I0gD5jU4MHOtKmshl1jwunTNqnOs3PyxSXovbN7JHbSvIXSqVSUJZCWoQrEDRIQ/LEsB1Yp30LZGb6mnxYWNXGB4aBpny0w9lFy0QnMV9+OtGuzmPT6iez6mvCvQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8zW9Zo4sVTG0A1I0HjGt4j2j0+8FHmv2LxoCHZ58r+A=;
 b=R+0jrYFh3lBcz6TPZnmmUV8X7O6FToXSomrWMJC6OA8VhAZFhfuqxHyPOrMPkfh32lByfwH69nm0FNV+Ll+g4ROfmmuXj1dHHg/LQj8bCWlh/O5+2OMXh0Vqwlr6i6CWUYd2+CBqFQdakPGfIAypG+GbjiBPM9qHvpLKnlo6P+PUfDq7sG2wINhkMRQPbrbxem3ON6EtE9Lvq6V56P8NEqoKQ7KDixFuIuZoiLhBhj8wmbCm3gyN50d3smMaHeCrlNMBfNNJPJIuUXaGwuxpp2Pe/yKF6dA3uLNkUziiWex8tdKqk5SwhFd8N0jZwfpZtfnJ0PVaMJTgjw01Fsxk4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8540.namprd11.prod.outlook.com (2603:10b6:a03:574::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Tue, 12 Sep
 2023 15:32:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:32:57 +0000
Date: Tue, 12 Sep 2023 08:32:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912153254.GI2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-14-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-14-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8540:EE_
X-MS-Office365-Filtering-Correlation-Id: c103e14f-d0b6-4e4b-c98d-08dbb3a58a13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1OfyH8ZZ83ymP4aEt/oej80uX5X7uJJFh55fTopiS4ajTwuQEWYX3qyCJek4hH87f91H+KiZxiq5+K1O0mxVMZbUpySq1NLPFX0BoIhZ6y7cIhDOAc1UYIYI12YEl96CZ7bF4FnwY2BtZH1LerYpdBqrk7cEfRdvfB7i3X6T3YfLTl5vW3lIV7r2cq3MtPmhIj5m4XouCqU4JSPwnGGe1areIFDhgQ2EKVNFo9M51SnpQZMcVZ/0UykdwXt+fiQvGaipCEBBbj71lGEss3MopYwJgY+zarnrRwEoz3oHoF9tHMyzF4a5S9ivWWVlGf+JeALflNScU3KfppyMgzxrTfMH5EISkPBbjveF79A8cIJ7DKBwfFknCl8lEmj3/UqsJeAI3admdlWhpK9ASxGOWRvtCwepNbNbZYNSFT9V95iAEUeoEpxa4w7vmhPxfJdNTADkfnC7aH9eTQiqAgXCxsVtcdAiJRlzzesfeCuTs9PblI0GpnzYWSNXS6vOUmbjCz6K/ue440EiySoHum88gIYiqnAYdKIUjioRsjfZnHi9xL6ZF68Hl6/zIA76wCMz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199024)(1800799009)(186009)(4326008)(6862004)(450100002)(8676002)(8936002)(1076003)(5660300002)(66946007)(6636002)(66556008)(66476007)(316002)(2906002)(41300700001)(6506007)(478600001)(6666004)(6486002)(6512007)(26005)(38100700002)(83380400001)(86362001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3kRD5VcgwG7Qgzi7dl/3YOR94R0zcZSMsYENupjIqpMwahSK3WfU2EcwcMRv?=
 =?us-ascii?Q?+xU40wpedVuoUJWO4XQikR2RDKrskNaP9uZW3aCdJEjX+mKrJWfDncrfqPl2?=
 =?us-ascii?Q?8BK3xhkvRBQX/X4dwCwVRLVpZ8ARbVTEOfi54X2Twhqj9Vl61iUz73Gffcix?=
 =?us-ascii?Q?MF0C3GkmLzLAbrFdLpz82vygmCBIM5spAGGnpMtM9e3zTEyWrmyOp+Sd2w4n?=
 =?us-ascii?Q?b8s0RbGmSJuTJZt7z7d+zjRedZOthfA9pQPJiABiDZsY7SYh7bqp2KdqjF/J?=
 =?us-ascii?Q?oX+8PqLZxeSW1NR/BbCSp0kP783Ub/qeh2Qy6nLzIhzkIANh2B01qFQItq+V?=
 =?us-ascii?Q?/00KpEwSEJqwqYOfKRwvS2/rdevQL8uYfITWREs/X8nqGkOAScP8fYYDWNSO?=
 =?us-ascii?Q?LjxUc/JQa/Jt4bSfn+kavsoaQBcNvicYxbAUQMRSNvMR2aUcIho8GReZm3Ir?=
 =?us-ascii?Q?bQbt8TO/DfsFgrY1+IfKpDgiVWfc4/quDWEV+3OLoJcb7NOvj2dtFh0asOj/?=
 =?us-ascii?Q?jdQhQKipacHw/x0fQ9gBosMxyukRCcYchwWdvJ2xMDBBzEJlfqqrQH7lG4PZ?=
 =?us-ascii?Q?lqqWXuPLXmiZMuChVBziPABo1hfr49lEV74LpJnQg2854KkCuU4Hn5/WW5vA?=
 =?us-ascii?Q?xcxALk0OolwfLNXsUhth76ZZUulmel/rGnzx186Ake9vfSbEPSBD9R14qHgo?=
 =?us-ascii?Q?ZRUR0HhzxBjMZyph9NgAyMCDJoYGXmZ2lIdWCalobIko90fGe2adYFk883qD?=
 =?us-ascii?Q?Kq09/hea0KLPtCMddcVQsAtmoDG+DDgIzrZNxU4vm6o6Dy+GAp5xJF8gQLAk?=
 =?us-ascii?Q?yEztnEnMQZOwyAzbZT4woXS3Jf3u33p107r2IquYFJgxvSZwL9LANlHx5r7n?=
 =?us-ascii?Q?xTGSJQt15pLv2HgN8S27tFRB7pkIiA7EXO28th+jG2YHkeuLQjyh1B4qffEk?=
 =?us-ascii?Q?tNul6xMEskbs6tYwyWcDMveoHMapdTcmxaREYCGYmNzlAIfpSOzTYq4jQflz?=
 =?us-ascii?Q?znAky2uK2+DF0/RjO7KXdQlLHqPomi0E1DUJ2U+tCCn4xU1luM4KsyDGgSz6?=
 =?us-ascii?Q?MkKRmysGJRlTyhmgjPKrA+oo2goXkJmuhWtmGSLvi/IR/7GegtPV1rNPblOY?=
 =?us-ascii?Q?WvOJmD6oeinDNWDRT+AeH5tdEtqNVhoZGHrGa70gfgw1Nr6zGDfjO4N9I43I?=
 =?us-ascii?Q?ZFujmyRpU37KrOo+bfGERhUnjlpa9NxIrPMI8pVO0hm4iqnHvKhLAoqyKVTa?=
 =?us-ascii?Q?0f3WvQTtarexcgkbQ/oXgDImrvOAtBk8IGJGUJVro4DPXxKuZlOVEIGT6RaO?=
 =?us-ascii?Q?EwEcJXOroe73lbzxxvlxXHS9wf8NQEjaYa4qz+ZaVFs09Y3EmEUFvoCivO7r?=
 =?us-ascii?Q?58i346TzI0Nog+PmIFhz69nyP2qe991pt3kLHZ71YKyysndQVD574LUY21xV?=
 =?us-ascii?Q?TZ4KR5o+Q+dIV7AUqlZmznbuHFYsWVLzzVI7nENjXLjW7vwPEzpBQchPtg4Y?=
 =?us-ascii?Q?K1MWneEDK3rwmAtydvdjcXZ82Chz7wplq33w/F/WufrJFNWBkpc6MlzJ331K?=
 =?us-ascii?Q?W+RqvSUnGJVvbN5lPSbUiG/NpioPOvQMaYQ9Txd4ybgJUxxtDTvYq4Wbb8Lu?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c103e14f-d0b6-4e4b-c98d-08dbb3a58a13
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:32:57.2392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: inCcLDdSFq7f3elaQ3SP26FWOI5UL/AdTKMFKLhHFJSWeTQVPuBjaWOlFKVc4vNrHBHnVlnv+TjlO+XpO801IxFpUwIquPYIIgJ6fWuNt9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8540
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 13/29] drm/i915/display: Fix style and
 conventions for DP AUX regs
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:21PM -0700, Lucas De Marchi wrote:
> Fix some whitespace issues for register definitions and keep the defines
> for DP_AUX_CH_CTL and DP_AUX_CH_DATA in the right place: together with
> the bit definition.
> 
> While at it add a TODO entry that those defines shouldn't be using an
> implicit dev_priv.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

In most of our other register headers we try to indent the values to
column 49.  It looks like a bunch of the definitions here are only
indented to column 41.  Not sure if you want to change that for
consistency or not.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 72 +++++++++----------
>  1 file changed, 35 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 5185345277c7..4503d94115d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -13,48 +13,28 @@
>   * packet size supported is 20 bytes in each direction, hence the 5 fixed data
>   * registers
>   */
> -#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
> -#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
> -
> -#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
> -#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
> -
> -#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
> -#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> -
> -#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
> -#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
> -#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
> -#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
> -
> -#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> -						       _DPA_AUX_CH_CTL, \
> -						       _DPB_AUX_CH_CTL, \
> -						       0, /* port/aux_ch C is non-existent */ \
> -						       _XELPDP_USBC1_AUX_CH_CTL, \
> -						       _XELPDP_USBC2_AUX_CH_CTL, \
> -						       _XELPDP_USBC3_AUX_CH_CTL, \
> -						       _XELPDP_USBC4_AUX_CH_CTL))
> -
> -#define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
> -#define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
> -#define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
> -#define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
> -
> -#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> -						       _DPA_AUX_CH_DATA1, \
> -						       _DPB_AUX_CH_DATA1, \
> -						       0, /* port/aux_ch C is non-existent */ \
> -						       _XELPDP_USBC1_AUX_CH_DATA1, \
> -						       _XELPDP_USBC2_AUX_CH_DATA1, \
> -						       _XELPDP_USBC3_AUX_CH_DATA1, \
> -						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
>  
> +/* TODO: Remove implicit dev_priv */
> +#define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
> +#define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
> +#define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
> +#define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
> +#define _XELPDP_USBC3_AUX_CH_CTL	0x16f610
> +#define _XELPDP_USBC4_AUX_CH_CTL	0x16f810
> +#define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
> +						   _DPB_AUX_CH_CTL)
> +#define XELPDP_DP_AUX_CH_CTL(aux_ch)	_MMIO(_PICK(aux_ch, \
> +						    _DPA_AUX_CH_CTL, \
> +						    _DPB_AUX_CH_CTL, \
> +						    0, /* port/aux_ch C is non-existent */ \
> +						    _XELPDP_USBC1_AUX_CH_CTL, \
> +						    _XELPDP_USBC2_AUX_CH_CTL, \
> +						    _XELPDP_USBC3_AUX_CH_CTL, \
> +						    _XELPDP_USBC4_AUX_CH_CTL))
>  #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
>  #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
>  #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
>  #define   DP_AUX_CH_CTL_TIME_OUT_ERROR		REG_BIT(28)
> -
>  #define   DP_AUX_CH_CTL_TIME_OUT_MASK		REG_GENMASK(27, 26)
>  #define   DP_AUX_CH_CTL_TIME_OUT_400us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 0)
>  #define   DP_AUX_CH_CTL_TIME_OUT_600us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 1)
> @@ -83,4 +63,22 @@
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>  
> +/* TODO: Remove implicit dev_priv */
> +#define _DPA_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
> +#define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
> +#define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
> +#define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
> +#define _XELPDP_USBC3_AUX_CH_DATA1	0x16f614
> +#define _XELPDP_USBC4_AUX_CH_DATA1	0x16f814
> +#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
> +						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> +#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> +							    _DPA_AUX_CH_DATA1, \
> +							    _DPB_AUX_CH_DATA1, \
> +							    0, /* port/aux_ch C is non-existent */ \
> +							    _XELPDP_USBC1_AUX_CH_DATA1, \
> +							    _XELPDP_USBC2_AUX_CH_DATA1, \
> +							    _XELPDP_USBC3_AUX_CH_DATA1, \
> +							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> +
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
