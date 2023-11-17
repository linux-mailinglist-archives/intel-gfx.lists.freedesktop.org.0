Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59817EFC25
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Nov 2023 00:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B38810E004;
	Fri, 17 Nov 2023 23:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6110310E004
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 23:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700264169; x=1731800169;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HBOPMoT8hRZYNFplT06wTxhdy6gQ0ucjjp37LKVrN5o=;
 b=O+Ht1DHpRxRZMw3A1teEXcSwRVdj2q0iPoU/lZZxrkAC98Nb50MTZF9V
 sQu1edLyjLY8OEiRiriZwrbvsy1z5kOOlAF1k/gbbvovYRptn3qRvdVBW
 luEW8chHIeVRSEsXb7AJ+1S+dgnDzKqRBZvZYaSuT+5AbiaXSwLETOBGg
 xEwT0NMMohRAP9hMaOCUR7DHcp3cq+8QEuPePohHA5Y0q+Wh4rvKd72aJ
 C18u7i4JWBD2tvb/n3IvOJ+LaHiXJ5UVnIcUF85yb+MjLn1CV9QJMG/4a
 9uqM4ROSzsWAvCP/C1eg+xW88TMH0KeNkvjuQh0Kv/7cHr0htSv4rF7FU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="371564153"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="371564153"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 15:36:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="883260431"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="883260431"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 15:36:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 15:36:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 15:36:02 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 15:36:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VxjwSE96uFL3ugiJGjxyB0gJ5KOVnC8RFUTjK7yqbVM2hP5ZkQZDsVPlzH8CPTaVGi83g0NWxHhB3SHkHsCCHuIz8defZ4kTJ+H5IgSQwK7E/U6g955PE0zOXzH2tYsxBi/nzDV+OGLzs/a+MKz5Q3CtnswLEw2TV4jSIrBrZYvBJSxiWw+PyXiewaguHUimRpNxptf120Zdvk5GKk9JqJPbPWo81uPZ9kdimCv0urkaxgt95e2k0iJcq66hbnUDgIBNPlGofM2boj9pI+WB3S+TNLB1BwKvYZ62qFWkLKdD6nqt3ulvp5/beujo1adbWsuG9iQj7RkOeWlbf95/YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=glBSvm2RQ7kipjNQ/fVJ/MsGZqawX/42h2mg+r9RsQQ=;
 b=Jy7Yz8zLiIPwuhGkk+rp6U2IcnxkZxUZ1Mp6qrF4tXaeUNaZy86iTlC/BRuPTbwnotENvxipwtddSdUsmRd9DjGjGtO9uIf3/a9swO9Am/CHJWoephxjivyzPfdW+4lVT9u1ud78+j13HKUg/tNEv4SmXVf4lmn7qGnwTSqIfx6BbO42dArAAtu4b0AfpE8NWaONGRYCDPLpuIzf1uIf2FWeRpLe8GAnaMTJvoPqg3xVR9YQEeLoq/z/kr9fUDNbz0OSH0aN4n6MeeaMmTnV3BiuD13W2HzctAwOqdnN5NyOYgf7eNOt8psrWVMnIXA4mT5bx4mdX72veyoN/DBnEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB7021.namprd11.prod.outlook.com (2603:10b6:510:223::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 23:35:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b%4]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 23:35:58 +0000
Date: Fri, 17 Nov 2023 17:35:55 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <qttczeukv7fu4dnq3rh7xua5vimhhu6kfqwhqbf3aes2aze5ty@pejh24rjpnvk>
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
 <20230130100806.1373883-2-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230130100806.1373883-2-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: BYAPR08CA0043.namprd08.prod.outlook.com
 (2603:10b6:a03:117::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB7021:EE_
X-MS-Office365-Filtering-Correlation-Id: b20958d7-90f7-4144-e30a-08dbe7c5f373
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Zw7Sn3TL2Aa5y2ACE8ZUaJukvx4DNcgAfWv91dlMOOwB7z6bJROjOKqDo96pAEkoz0Ntk8kqghKPdqIb7lGFR+OM494n5zoSYglZl5jhPiKV2gQdHGjaEVBjvKrMQ62JKVStFKBhB+KtiE0ddnxR/544d3KGkEEwj9ow0ptecRig5wEppHugpv3aNXmXNPkcAvbrtenwaNfJ1eSOKPLJPWuC5ZLTA43OHiPId8+VI+80gkBMkTDUoqhBoL9sbADhFCYKel/FQOEqX8T+d5VXgStGx1DiMQb3/EaVswS7pPZoGSTCQ8HfB+nk2hnEY28ybSvLS+e0Z2HbQz5H5qPRok7I217dRUC6YD0P9Rl1o7WySxJa3cvVDBeg5OFgawFuzv0cp3AT/PKgnrzheVFHG4JCXEHlsOSjsrw4OqndbADRQAce7zB37vhAA1PU1E9mDrsB6SwkSHyvVmU6dB1n+gYATPOZkT4JUik8POnhOhmZ3Y8a3aoixR/b/7YV9Fo6o7wh6LDsJau82sHU09IbY5YoYOhC3/HiXiZM4GBTFzNxxI/qZ1yd8WAhfUhYTRG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(33716001)(38100700002)(41300700001)(6666004)(86362001)(6486002)(9686003)(66476007)(6512007)(478600001)(82960400001)(66556008)(66946007)(2906002)(6506007)(26005)(316002)(6636002)(6862004)(8676002)(5660300002)(8936002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qDKJ+jHO7S0s0zDsS/1mSCh9kdfykz+oZ1KgdvRDwZchbnImIZkUkAgnEsrI?=
 =?us-ascii?Q?KPHGki3Zru/J9xiz/gIJU3WkIt0XT5RFOhetCcv/A5DyCD4YhF7TRFljWDYu?=
 =?us-ascii?Q?dWJfFQvEWzZHEC9AzhFcNh6eigH3r7xAEB5RMMUPwz3wZUA3+lxYX7iL8DOF?=
 =?us-ascii?Q?IRLlx6eEJ5fYGTLJpA4SAPiK6bpLE9fgIQNUq2gz4zpiG2JEKwM29NL7h2zy?=
 =?us-ascii?Q?o6ucfNz+TIfwkKZYU6OY/s0fPq9q0TTEjdCDs7XdsY+wxkK2bMnPyOEN3+Io?=
 =?us-ascii?Q?SAwRf/bo9FevXOdyy2e2io6GL3UdxdUzD5Ool52YN60UgaHVBBsXAdqjSprw?=
 =?us-ascii?Q?ndqV3LbcjhhrDCtEKGsGMz8AKfRWdf9VAUzCv9/I58Kw3I0C3ELjiL41creC?=
 =?us-ascii?Q?/tM0W3NybmcXWtgBtb9oN8XBEbUv4gBE+ygIAg23i0Rx+ZkuvvFdCSIdNRFs?=
 =?us-ascii?Q?0qWNtotPHjUXvDL99gJxat3SJfecj0sKRVEDEVb3yYVeUVcwy+JMwKc1qVh5?=
 =?us-ascii?Q?/aA08nuL0KKz3Gza5td3E6pgJxT1iYUv9sNa1sWexn4GMAUUjkF6UxUnup86?=
 =?us-ascii?Q?ZIFOPDB7zHQEEUuXUqQeFZ9coejQmPFMaa3+L79r4Mt25CjjBMZTZq+1JlPf?=
 =?us-ascii?Q?S3dBY3NCAU4ibHTtd3DodsO4P+22azp1MF1rfNH+t4QKCYGKbTVkMk4sGCBP?=
 =?us-ascii?Q?fVw/XjYaIdXV7KupTcOksdmHyBC/wdK2uPdUEOsNQkYhVGGb9mScJdjQLsKl?=
 =?us-ascii?Q?nTLbf+oTPMbKI2DRVk1g+oP4ueOHxOlRuAIahgbFIXmJgCotM0qsNZocyYrr?=
 =?us-ascii?Q?U8uxBUWKMW/o88jGzvXhmSF6qtmlqPgCqbAm7qGi/oQWScm7rUXptMEc4qew?=
 =?us-ascii?Q?Rsy2rv74DYSo+hsx5tUyF718HaNvYLmYhh1pBMeJz93E7f8tEVVh0j3aPddz?=
 =?us-ascii?Q?gZypu+4uNE4ZwudPfd8/RygxQ+VRlcUJLTYuLdHWT87ADb8BrokwgwXImueR?=
 =?us-ascii?Q?8WfpoPpNTgYkjR6elNdfD8ZiI7k1erl8hJVY6J5uqi5zbuZX51Fgjwoet+kX?=
 =?us-ascii?Q?VXQV9YENH3EW46n9YPkKaAE86JdTVKVo5n+IbsKUzS3eVbOmhFvS7FuloZIg?=
 =?us-ascii?Q?xLpdpQRohSZcdgCh3rg5Hp5WPwVnBbfe3KqDeHd67MNkw4P6TbV60UtdbWf8?=
 =?us-ascii?Q?OJQFEN7eYMh/nvbbWXb6T/Xu8uFb1bQQ8nkVCE9tcficuixGVh5w6eQ+mNho?=
 =?us-ascii?Q?BI/RjEYh/E3aNQ5FjvGoEXkgqLdJDvIMkubFbaUHRU27V2Jql7UitI2WXZlL?=
 =?us-ascii?Q?mhppXBAFFkLSBCHo4hbwwpb6alck3t65l0vWeeERZCWeTP6+JWR02zuPuodK?=
 =?us-ascii?Q?hLw0a6449rFW+LAAQ8LBiP7qD1vT2Y/zIZCZKLZqzifVTg2OypJnqYH8afhP?=
 =?us-ascii?Q?n8nXEGcqgu3QfICo9VWo+OyBpeKIWvEc9Pd7sbKrvjkmPxfV7VYyr0kA4qEz?=
 =?us-ascii?Q?p0TsmGcf/dd/S2X6DC3YuROyqXLJ6LykCzIYgW8vPdM3D9mgmnj3eGtoUFQB?=
 =?us-ascii?Q?haNPYfldWngvVswNG70jPFpGESyLPLVefnfadtAtdHJ7IVGYUlzWFlCHqdxY?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b20958d7-90f7-4144-e30a-08dbe7c5f373
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 23:35:58.3960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NImWQ9KwlqUJqIevWKqYin+IZuliQCC34Q1hL7W8Yak2oBtQU0y3dmWUVEeXouxikbsUF4l5jnATJtvDh5MMIUZ4mhtA5gs3IPIb1sT+tn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC v4 1/2] drm/i915: Add RPL-U sub platform
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 30, 2023 at 03:38:05PM +0530, Chaitanya Kumar Borah wrote:
>Separate out RPLU device ids and add them to both RPL and
>newly created RPL-U subplatforms.
>
>v2: (Matt)
>    - Sort PCI-IDs numerically
>    - Name the sub-platform to accurately depict what it is for
>    - Make RPL-U part of RPL subplatform
>
>v3: revert to RPL-U subplatform (Jani)
>
>v4: (Jani)
>    - Add RPL-U ids to RPL-P platform

humn...

>diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
>index 4a4c190f7698..5824e1d7d162 100644
>--- a/include/drm/i915_pciids.h
>+++ b/include/drm/i915_pciids.h
>@@ -684,14 +684,18 @@
> 	INTEL_VGA_DEVICE(0xA78A, info), \
> 	INTEL_VGA_DEVICE(0xA78B, info)
>
>+/* RPL-U */
>+#define INTEL_RPLU_IDS(info) \
>+	INTEL_VGA_DEVICE(0xA721, info), \
>+	INTEL_VGA_DEVICE(0xA7A1, info), \
>+	INTEL_VGA_DEVICE(0xA7A9, info)
>+
> /* RPL-P */
> #define INTEL_RPLP_IDS(info) \
>+	INTEL_RPLU_IDS(info), \

drive by comment while reviewing other stuff. Why was U added to the
P macro? That looks odd. Adding it to the rpl subplatform, together with P would
be ok, but in this macro it looks wrong. Doing it the other way I think the
only affected place would be the early-quirks, which would need a separate entry,
but admitedly they should had been INTEL_RPL_IDS() with all the
variants.


Lucas De Marchi
