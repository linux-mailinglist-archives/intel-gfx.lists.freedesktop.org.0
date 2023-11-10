Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB70E7E7D71
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 16:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A69E10E103;
	Fri, 10 Nov 2023 15:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A97610E103
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699630342; x=1731166342;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dNXds2R2OwD0l80PrtPE6CgrKMgA5cWyZWSYWTb4dho=;
 b=RtMNWKQXor7MsO56433KFnMvDX2AjvFt9mp8VbgwyK9Q+9hvNTsldPPN
 rR/JgHnSpRzDmjrFFVs6V8PCSjz852XMrEU7oHz2J7eVWox78bj8DQt4c
 Kdq5IL4aXYzQpbqG6X/hFR+DpRsdHX+GZUmagKmgKjKO+49/l7nVk+qK1
 vLpvp97eThYxl+mvloFm327TgioXL/wYKBcxEoDtC/xncJ0dGASwsdkWb
 ig7ma04LcZfJkm/Qoem7CL2nD+gdyzKLMNr4WFPEZ6sijdww6njYSimQa
 cqO1WpEDEsGRaSUnu1d+us2qIyNxgvtB30KQKf8nrbsN67SypKCC6N1CD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="393071422"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="393071422"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 07:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="5079080"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2023 07:32:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 10 Nov 2023 07:32:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtLBR2StioYsPqk2tpwlXGFLfcCxryD763ex0Am8MWx/XlyE2HXu0RY3FKvCkIFBtmzmujBlO3EoMPRmJp5y/3r+hV3pAYzswNp8DQ/49Igr9ZEJDNmPhJ6ulx2egf5PRzxY5TEooDUjOUT86eKqEDTdvg5SQw7B3uEn9ebdcVQ9SRHmhfM+4NQBGyq0IfcCXgVdHkYxIglb3yjPTMTa7/Ks+0485jd2Y9V8xQcYcozz2fuOwOmO5IKg9ZZIo73AGahkl2uAsccZ9vhibKFitS1Iuvj3tpzyEvWYnhsqKavtYIHDdz1Drlvl6vyrE0BXp6BfbAvlkwERRsfmAz5C3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=359y4hDqGcFRbiXV3ZXmHmglAjb+539TIbe6hfMHLLg=;
 b=dPoWAsDRUqN3I7vgJcIC5DcHVw9XKHJLhxCbWKuzlWK1wK42a2ZJ81QpqnIiGXGOQQKxqccfKEXlrXHrR02S5+L0qnVZMd62j+FJw5oKKNzPOIv9dI+TB71UxqnpINBefA8EHaQxE8UcMihyK6aIfzJURdDL+tHVGp3BID76S4MguLBgoTDBi9dDyYPwF6I9khCpAsvNI3zFkS4MlSOZMReoKYR7v8RLvqn+4jv9l4OkBelXteDfA2Sy/IEED55SiB7jFMKRj0ztlFRvgkRihSb3pTW8vOXcrEGb8Q6tnvyImhEkwgYVxt+ZfZbFsyjEZrKxjO3DrDh585/i0u9wdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5457.namprd11.prod.outlook.com (2603:10b6:610:d0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.19; Fri, 10 Nov
 2023 15:32:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.6977.018; Fri, 10 Nov 2023
 15:32:18 +0000
Date: Fri, 10 Nov 2023 10:32:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZU5M/R1i/VLTAiSV@intel.com>
References: <20231110114807.3455739-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231110114807.3455739-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0189.namprd05.prod.outlook.com
 (2603:10b6:a03:330::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5457:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cf7e8c4-f45a-4064-2d0a-08dbe2023911
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tQuOF6yen+ynIyawQLKrkQnu28OO5cY2CNNAcYXlJsP7Ra5fJT01xfXu3Mr+9lT/Ic6khVg/KrPLiCmDBraDOTuHu4g25eySAeDRgaPu6j524xRKxXcI6l008CEh5s/VTaeTSIK9SbhutiWAWDEM2bWlxd00WbiKbzQkGdV+FMcwSDlxG40jKATX4H4ThUB36hAbE/ynmdV/htbXDIFlZToKA2v1HkHSgxFCaBnTVJHX4ZkxptcXXnCD0PvqbLuJAzKmsytfuIZczSStjPAW/wU4wfjdDDIclRlYW7CMJtUh+BLHCZfUt55c2QPO9hOXBYjfr/2/V3vl8TQZRbrCSKOIXnSEHB+sTRyPIY5+ijQbH0uM0ue8/7eYEJU9TMDRjF5fy+SFi7VkZrmgVHC8uYFzx+jRG8dis26afgpXLEoDLuhIbPauRm7pmYE36rN9RZsyCUNUnnoG1Xpl9VpjfTVzU1BxPvICoZSDgOHmqhUSOiydOsjY3+76tuJEnmJ9rdQdaNm1g55QLZ/J9fdg8MeFp9xJvTrJ04+fZYYPZ/mpT4Ji34z3cI0jVtgO8liAKYa7tdwOBUCr5z0m885Vrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6486002)(6506007)(6512007)(6666004)(2616005)(26005)(966005)(38100700002)(83380400001)(37006003)(54906003)(66476007)(66946007)(316002)(6636002)(66556008)(478600001)(4326008)(6862004)(44832011)(2906002)(8676002)(8936002)(36756003)(41300700001)(86362001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1JZmZXIfTUPCWXh95P2hn2L8UN4Yu2QJ9KeeOXJTDlvfW2gS35nAXKky2GMN?=
 =?us-ascii?Q?5aGb4FChrr4weVhWGwnr40lXV4VuPrE+UWQvA/6xyCne3ytBNwX4nnNiMiGd?=
 =?us-ascii?Q?G2734qbEg1LgAmW2ua8pqvJhJ8JnBKH6z03Oz+S7TOZtLr2oyxMvVO8M3TfN?=
 =?us-ascii?Q?no91yNZx4AJoSR0M3CVf92V7LLgx+yTcA8cxTbSSSFglwAQEBt8HDCODiujZ?=
 =?us-ascii?Q?0/ej3r/dEX1zAWolmhLdMO3KruuENxywtLAs/HTJIYoC4NNmRmGG4YRxm51E?=
 =?us-ascii?Q?cZVl+nPUikXmVbYFD5BbLw1oMdD+thYFqaulDhCuzgoiJGjmXja7c19JNEhg?=
 =?us-ascii?Q?xI237keXOB7yM5xxkGaSbXfL9VYle5pNCmJ5dZXltskuQKfceuXyBvAdnf/T?=
 =?us-ascii?Q?i5KXIyTDCOVG16pRRndSGpUDBpHwTq9fI+VFQMxtKq8Cs6Fzl2vpx8sTNnGo?=
 =?us-ascii?Q?Q8Oy3pLcdTfKySgqDrobW0+T/awsRj5O5tjzqjYRHxrteJCthSiXX/7uLaMY?=
 =?us-ascii?Q?TFa3tG7jU9uXffVOuaVuVDV7wupI14dA8Q8tbbz9Io9HsQIHe6/O4Hq7sfR5?=
 =?us-ascii?Q?1rDPgUKQvk88j3uTGuKC8rfvDVfwlhX6RYRKg1HMgFp8xvDNZGK+xPVxRRxP?=
 =?us-ascii?Q?dhIKQco4HkhLvgZM+w4ux0B/KL4qCJ7rEVReIp6H8TPmg53sH69TWZl12Vsz?=
 =?us-ascii?Q?/Rvb95NcfdHMPCiMsBf+C5wJhIXWUkVb6shmWDvaFTRzpn4hv5SNg1iYAY1v?=
 =?us-ascii?Q?XYsCLstWZa2YWdypamdSJNi08FRxbJUn/yZh+DGkjxw56C99v+3aADCnxDFs?=
 =?us-ascii?Q?epgVwAa0yOWEt1chtEbc4SJpP7veNuDwqkktNjHMU/96vMHM2NiTjTRSyeHX?=
 =?us-ascii?Q?CL1Zbxa1Wr6UC7b9i6iTODLf7ZCpP0Fyrisx2uQ5DjLQJFfV2jFCgqvqvG5Q?=
 =?us-ascii?Q?sy5EPW5H7tPjA/RRYPFFcfSloolTN/txRmFwGe/yRUDQyAJZo/w8oxqbn878?=
 =?us-ascii?Q?5DQy/J68Zgq1QSthIdVl2B8p3BKbryB40wu/xlVW/FXxY+t2twDw+k6m2TGo?=
 =?us-ascii?Q?i8rzyFgRniklTbkymTOT84EAXrqO0DoQgpXuA4QiD3QA8pJCQrkFPtXmN5hF?=
 =?us-ascii?Q?Dx6XqNv2r4tDZtJftAMnoJYuYi5xI1Y33hqZ9EoWlt7iIC3X2ojuGFOFqhHX?=
 =?us-ascii?Q?apLbYgSsO2tPHIkT/KCrapE95AKKovpm7UAAQTiKIQtvc0RPtmx0PUdvoF0M?=
 =?us-ascii?Q?lyKczws39y64JEul/6TVd7Wi18LGpImDB9DHSv9bG2Ex8S11JeBJn/qCEsw5?=
 =?us-ascii?Q?FF7iifZ/woLkJ2b3Evm1YOTwxlk9Rgptx7kmLmeXLOPpByWfvtAEvL4v6h/H?=
 =?us-ascii?Q?0QJc3REpGdp+fr32y7Ad4BBYZvHZGF7TKtXbczXLkfQj4nvHT5hYD5uJPcEn?=
 =?us-ascii?Q?ZxRjJ7tIjaqNHsHeh8paYmUbj6hAMsQq2FeFkvooPIyyEaVbxPNCJek77sUD?=
 =?us-ascii?Q?oZsw+WXfI0i7LsAGoyFTjEsNZ653PFGMu993QGundSAaeR+1u7tSOptpJDjZ?=
 =?us-ascii?Q?5iH5jqwUiS/dvCz/E97dy6sFqRMIi1kKNSmp45CwXS+ADFWuVDsiF16+qcEn?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf7e8c4-f45a-4064-2d0a-08dbe2023911
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2023 15:32:18.0386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ztYsiLoq8UidJP18krpYQ0AMmsEXT7nWuo1LPyHjBjNfZqIoTRfZer+UQSfduG8qsCP4n/XOd4xuC8jhU6njRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] MAINTAINERS: update drm/i915 W: and B:
 entries
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 10, 2023 at 01:48:06PM +0200, Jani Nikula wrote:
> The 01.org page has ceased to exist, and the relevant documentation is
> now hosted at https://drm.pages.freedesktop.org/intel-docs/
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  MAINTAINERS | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index db78e674282f..fda92c15f687 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10516,9 +10516,9 @@ M:	Rodrigo Vivi <rodrigo.vivi@intel.com>
>  M:	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>  L:	intel-gfx@lists.freedesktop.org
>  S:	Supported
> -W:	https://01.org/linuxgraphics/
> +W:	https://drm.pages.freedesktop.org/intel-docs/
>  Q:	http://patchwork.freedesktop.org/project/intel-gfx/
> -B:	https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> +B:	https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>  C:	irc://irc.oftc.net/intel-gfx
>  T:	git git://anongit.freedesktop.org/drm-intel
>  F:	Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> -- 
> 2.39.2
> 
