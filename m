Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0968C1C39
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54FE10E375;
	Fri, 10 May 2024 01:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iby0oLqP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CEE410E375
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305908; x=1746841908;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zWlRtO17eKGcySxaO8yhHpvWYseHOqvTC37fiIfhPx4=;
 b=Iby0oLqP5w5I51ReLlroQe8mqcNFTUIhtkLd8oD++JISd+1CxTkuuD9e
 e7w/PBFFAdtYR2eRN5aLVmElZ4yv+xzD32wy0BFYuaco8ESuhBLtu+STJ
 lzeaSVDnHi6flKItamZPbCI4VioXQT3ZP4Qn3tR8KQnqwv5c99VdvZbCt
 wktsRQ+foYlhYyieY+M7LOXvdBYnORdEBYmlCpVUPLWH2JwNOna1aWQ/w
 QqnIswtzwCjmTehvX1pm9xKER9ymHLTgv5dAjskCtU7Xq0r7mRGBZaKqD
 o4SPXsVt4MHjcA8BBB937+qDBOaUKhkzVhEp4ekBcavTkqEUU+YuR0Vc5 Q==;
X-CSE-ConnectionGUID: jOIgI3vGSzqc9A9hqD/NqQ==
X-CSE-MsgGUID: IK80Jjq6Qq+MNgzpSTxQgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11202685"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11202685"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:51:48 -0700
X-CSE-ConnectionGUID: sUREh6lcRDGAFSC9kGGc2g==
X-CSE-MsgGUID: QhXHk+FlTPGqyV/W0dhKTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="34305090"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:51:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:51:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:51:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:51:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W2nQFozQ10CjCeHoXM4vBRy/08YrIWsXiNbCLR7lRnFXjLMyVvhsgb1tvhY646d4bjQjrmixA/lHhA/J3wnoX3g3d0bWYh3yz7zLODtSMmvAHcgAPU/dGDCpTNyBZ775Ww0rJLhpksbfyMZzD3n7X+z6hBgkvI4gKytJngDE3YWywqTkXxV1S4b+T7oMYqiDFrD0gb4+XhQSEPBImpiloRfUHvsJFVUPNNCfTCFLvG13E+PDCI2m1vpicf6KPekrluMBLqx0FnsMkCOusR+Ec65Uaf1/70LzQogzwtz2pblyuFjJgFGqROsYz3R6T+1lGlBYGUpldaOWK0+FrPTE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeYGjQMsoJWKLDMrct4c2bO7F3A9K8iLCZFpX+troDY=;
 b=CsCtICiOqjxcN7ondvnOdzR5RFkrhawbleB2aXWO4f3FtIpeet+c3Q4S5Y0bQHK3iVuq9UzSyS2yABhjtBms/qjAu2MgCAzbGYcZKoJ1J8MIa9dLc4GFkDTvPm3Mmw5Cpb0uM6XoyKz3eSSTN4KquCszGoh4DfHMWt6tRUDemL1+cklSvkmxweN1KZMcndBDrQ3AY4hN5aYXCrcEwl32HvJGqULaolShuFOvGGWk+2fjE1G9jrOSfjPtEstCRQ/40iol+IacTT+RZggsWaBBBDLN2RXrnOURRGnCs7kwHSx2dwlrwOT8RxGuZBkcc4KGwdVWfP1395ZM+zG3gPOIkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:51:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:51:44 +0000
Date: Thu, 9 May 2024 21:51:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 08/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_STATUS2
Message-ID: <Zj19q6qs7M95XKa3@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <a8e095f1ac3b3d41343f7e6d8dd191e9e2a6d76a.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a8e095f1ac3b3d41343f7e6d8dd191e9e2a6d76a.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0012.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: e430c530-e49d-427f-8cc4-08dc7093be8f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sa1+ZQmPcFgoxOb/Tmb1f14QFTfw8Zgj/EUyqeOTqzLJ1KGBg9MIHqT+Dsj4?=
 =?us-ascii?Q?Der2oZidy2UN8lrn9ciZACra+Yo+GSr/XNbSmjlsrOx4D4lZa1WeCZlziCHd?=
 =?us-ascii?Q?x44UfMjG8A8ywDauIAREhXtwZ3oYwgmU3gO36nKYid7/9BYOl1vyvO7+2YUZ?=
 =?us-ascii?Q?NijdHAsK9xHg30LH/mg+U5WkVKum1oFDfVjgIvemmWpC8ULVrdlvvCT1rxbV?=
 =?us-ascii?Q?hJv8/k3sM4vlzHXU1qnQhga9JT3xKlNPP4iMl1km7RfXlvEzX9zeUUT++yR0?=
 =?us-ascii?Q?Nw7rXV/2NdyL1FP6QgqTVjjje3MObHeazUop//Mu6JJNORtCOHHnYHCAriva?=
 =?us-ascii?Q?17w8UKLsKOqh7yP1VJkQGzt4AAwp1AKHxX4Gwv2w7nHZQRJKEhNccYhyaSJZ?=
 =?us-ascii?Q?xvwWzLJKKLG+p5ULdEFxnejjAsuwnjfuvZuseKFd970L9+juRA/YkmD+oh8C?=
 =?us-ascii?Q?R7eMlnnTrz6zo4cC8rLkfNglnZfEqcOtlNhE6NAN3Uo7PLngb+KCfv7gZTtz?=
 =?us-ascii?Q?cwU1UqUA6nxlo7Ht1FtTJtlpcXZps48GMWigi1EdH3q9PnE9slq9KPNI5I9s?=
 =?us-ascii?Q?9YGmYao5eI82aroR5E6MB1wW0WUJrIZ6jQ6EbPrtADBxVgEXuOtXjfGrVF6j?=
 =?us-ascii?Q?Nx66GI5W+PPdSusRNAqYCi4kXdmfaavYN5hivLER8wguOXOzF/d6nci+guPR?=
 =?us-ascii?Q?3jF04eoc7mBczwpRPqdMPr3GdgGJHYCX1vbq2nRy6iXCvjp1At55c+UJsMu5?=
 =?us-ascii?Q?EiV+EGi+Twyx5Kdgejnd/rcnrkq6k4/Kjxy95Yzf1gmuu0xDzrJb3+/lNHSH?=
 =?us-ascii?Q?ThgMhbT4C4ElkZ9UdFWpOJhJqJJTrRNr93Gg0wjyKdf1uJHebQeKRWKKRd5I?=
 =?us-ascii?Q?Bvx88ltFbj7Ah/GBdAbldzE9XnFrJb4Vx50R5hVqM8C4/i2GBw424bZ+74UK?=
 =?us-ascii?Q?T2N4MABq0kJIxcn0MFDlxALe7DGvr/+seZpEA+PKu7hZdj9KissBp4ZMceyC?=
 =?us-ascii?Q?m4L0SWA/jv7idXXpvQoHcQYgbyfnikZ12IfN80AU0u2iTMDCq3sjyj+z7c7N?=
 =?us-ascii?Q?ZlzL328kboCknTNXz4zzmkGmruau2lNTJDTxZop+ei4HS1FqUS4ZI3TKdA6m?=
 =?us-ascii?Q?GNcS0c54d56TyxXWVZ5Bv0JvpQkzHiijYsMmoWl+xSzqq2vtPhQKA9silOfr?=
 =?us-ascii?Q?CE6gek6BaKVKXdINB0EUJT2IFqR8AW5ZdRkJdTOvM11uvxNsWlUpottBa+Zb?=
 =?us-ascii?Q?TijMRiWqIIKeAU5V4PP9KXjY/nERB0MmnNLktvBNCA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7gR9wy2+e5kS+qnO2vpw9t7J0neHuZrt/2bTe9NN4LLk/EMpb4Fa7Gp7PsE3?=
 =?us-ascii?Q?1BUAknYlA0NAf0j6hWNFwnxQPIpOgDj3zL4VjuNUlGvNkJ1G3Lw3gXNsOOPa?=
 =?us-ascii?Q?cTv8c1eNZhoBsrBK1PfDPedjWkcCLcM46du6i1FUGeqEhPJxdX8XU3DPYrmX?=
 =?us-ascii?Q?xfauWZtcrMCz2sRsvf7r64J0vMwhc0SM2Mt1H7VB9PDojCvweLzXDpJpiIMs?=
 =?us-ascii?Q?c4ExevjSunKxtV5l+IRqYKAjbMfatMob1oScLwC2Ov/51aUsOkFSSTZEID4f?=
 =?us-ascii?Q?bKlyNnwFy79VNil6hy6OrM9VC98rTaCceXKBcRTFNxybdCKfimyF87uRUkBj?=
 =?us-ascii?Q?Jk9I/SJOwnjAy8pMpTx+JSOY2SYqrPyps43q0fvEKthK9xhgipUTRcBbWmSg?=
 =?us-ascii?Q?XzQL4mEO/UO3uIi21FNs8FnQgmfbURpXmuMY5jLFB7gm5Zdii2/1fVvmn0H0?=
 =?us-ascii?Q?WnJ0idJ22mjkzLtGq6WNE01dmiVOnLrcYRQeHNA1lqJ4As9lJfDl/mjgTmQU?=
 =?us-ascii?Q?8/DaPno9/rRqrkj1xAn4DrrjhksIBhYLJVN+hlysqj33gAY/tqStETuskYur?=
 =?us-ascii?Q?PQ1gqskJBeK4XWB+DQHnWTCP81fhkv4xkWlT1nEBgrHL3JDD1699Cs3ka4SW?=
 =?us-ascii?Q?i2ukcViNG6I5Hl9OzYzC74QxBgBklPXqOkIJcVQ4HE33uSHkO8dDAeQHqXYC?=
 =?us-ascii?Q?RDx81eXrvM9BUffYqPeu9YJ+bKcTnueMiiR9nfchJs73bRxCfdOhCNg/lNEr?=
 =?us-ascii?Q?w4AaFs334wnV5Pgf7hUs+OASPTFCKFodEkx+q2LMLy1AMFZ9K5OX4/wI1f2H?=
 =?us-ascii?Q?vU5/2Q1Jj8UmlU8tL1Gs32PPdorzjEG9K3OvRTzUnxi6Xdec0f/S9JaWlD1B?=
 =?us-ascii?Q?NBg5QZrU0t8/wjVUveRs36ufwUvcYqfZpdjyebcY/X1q1uIuftA/L8CWzQ0a?=
 =?us-ascii?Q?FjGDDMywj0/qqQXuiXUlyZCS4+gHnP+kc32corCOgpaQOFXIWGKbHWVQUI65?=
 =?us-ascii?Q?Y8IpTJ3aLQC+uSjzoCzvGlEXc+yoM16I1v761jAMNfoq+1YDGiSKjp1fOPbN?=
 =?us-ascii?Q?3TZk47MJnxFKhvtv9Mxui5oquV91sHDz1kRYXdNW4cHS0Iux+AoDKtEx0VUT?=
 =?us-ascii?Q?DJ9ClRdCug79aFNLfQutxpA8EKKCb5ujs1kz5KPANaUxWH6sWdfSL6J7YruX?=
 =?us-ascii?Q?2m6IVFNdCPt/NwpD2WLZsuo81AeP6D/YwHKOdCp4aJ8nnpIBRzONR5W1ssPa?=
 =?us-ascii?Q?lRHERFLsGLqIfIaWxYaG3kQUOTQJSlfmz43ZoUjKKYPzEZn5XJ28HRcVHdiJ?=
 =?us-ascii?Q?K6D6OOVRQyfzqzopdIhd3nlMCiA5jE2j+TMeNMZVd/Ga2d5sChb9CxjkFHlx?=
 =?us-ascii?Q?YFl+1u0499Hv/N0d62ROif6ZgqN1E+Oi3UmnhVjc+2YJMLsJq3J8L+8f98cr?=
 =?us-ascii?Q?j8fWgTBomOdeCDkAd9S2ZLWK6atswsA4GiqYndY0DZblKkrw7lsV5jX3usch?=
 =?us-ascii?Q?buTCDY/igwBe00QLIqKNwxtkEiEii8doCT5lhR4MhXXyTv8o0yDv+f2lcyO/?=
 =?us-ascii?Q?BVbojggRQs2Ai3+tAx/s1DuAsGG+OnSvhcP4s/5hdKNEEiGrOs1RPg2g1yxH?=
 =?us-ascii?Q?HQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e430c530-e49d-427f-8cc4-08dc7093be8f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:51:44.0239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TOs9Xbi9dT7akPQzabbSNAnjHODhnsEwYeSguNZ1k5XmfVeSnI8lsCAVKML+GNkWkv2nnA+KtGg/klI9kPkWBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:54PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_STATUS2 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9f63d68eb9a0..18c8ef911579 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1310,7 +1310,7 @@
>  #define _TRANS_VRR_STATUS2_B		0x6143C
>  #define _TRANS_VRR_STATUS2_C		0x6243C
>  #define _TRANS_VRR_STATUS2_D		0x6343C
> -#define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
> +#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)

ditto,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
>  
>  #define _TRANS_PUSH_A			0x60A70
> -- 
> 2.39.2
> 
