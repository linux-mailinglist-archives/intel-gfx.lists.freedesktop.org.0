Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FD18B58DA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67D110FE75;
	Mon, 29 Apr 2024 12:44:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxoLyLt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13EB10FE75;
 Mon, 29 Apr 2024 12:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714394682; x=1745930682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g/UY96YjtSpw9i3Mb0QaTT7txuXWUPx6cIElVxoXv1w=;
 b=nxoLyLt8Az2ThwxUfZKl1YaVSrvBtZTJzfriH5Y2vcn2oavj6kkoUrak
 VnqikEW6tilILozWEP0ji/ebAOKsgdaZkppn7jZ7HduJqkSatkHb+VqFo
 TngcSHEfB3SFXgdlUkvBHsZdXCuX74hCcSDxzwM/Jxjgmg8yJjlnUPHN1
 wMfKyFFvcgmkfuHscSfgHsG1/sKDbrX2SJxjEx1fT6cX8TkrKrmmjyQLU
 bDJra+ttBRCNsjG0LKJtRWrKNrP4Dyv9ZbyiwJq9tYrtNJDZ/r7LXVu3Y
 ViTXD8oyzZwUR6CbSCIwmRsEtL/7TIrCp6ZrglVAMmgx553rkbgoghp7N w==;
X-CSE-ConnectionGUID: sfdFHjX1TGGuIo3Jrxi64w==
X-CSE-MsgGUID: UrPwW5jORYePcc5DMFOmQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="20739232"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="20739232"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:44:42 -0700
X-CSE-ConnectionGUID: HRhQBqrLQ3Gm4MD6TmlssQ==
X-CSE-MsgGUID: YnllCd1zTkex4LURlOZcFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="56974836"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 05:44:42 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 05:44:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 05:44:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 05:44:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1m3L2erdQvPE6wlz9QufDMgSPle0vkXlGtwkV2eQZEHYo+0gHHnxJaxIdTUSLay/JQdceI1Dx1UZCNrxQBCnQq4Wl6lepW6QK5QGjukRHLkVQWIz/AdSK8tksis+BOT1qUJBqE1c04hzm9GmBzZT1lL8zMqRdjLeWkmBvau1c52dFmZraHgT2G/dfZ8j6ktg2xoL4ACOVFI1IegBzYqYheGihUvJpLflRTBJTED0AtrWfwCOUl3BmdN1zjpTv0kgAWX/VxjBDMfOkiVXbLkCG0IxNo63MS9AZBn6PXmQsVfwBfMvYFV96mXiZYNTyXLdDkk9JLnzkHTsLP7Jay2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JIIJRHMWWTxhDCSgaLXX8cwsGzRzm9+K1dh6OM5Y5+I=;
 b=j592VIouwkZIKmwGtJMiB+vN/InklfElekRI5hT4Mk7Rx+tST+FPUZDAc+kdk8sSM8+XOe5whHXGldJ/ST1dMHLhIl5bKYEQTgY1FFR7j71tQ3R98jgD26s6BmcPaFiQ5ZAaJ58v2dO51CV4FzrojkBRpiow7uKJbKLIrxSASnJxqGCE3nTAb3kl+829lH8u7BJF9i4yBPUXGKVsUxBJgI2xMQi9QjjuLhm4gvTQvUfuKvHUzejcg0EuXBEmAm0xcqXDsS0l9wCLsVqEDjhkm0zX8/6fO5q9X7tqbO9Yp2xiq2epVumADHYC377UPGPCnzsV1KBnwHVETM+4BmfoRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6144.namprd11.prod.outlook.com (2603:10b6:8:af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 12:44:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 12:44:38 +0000
Date: Mon, 29 Apr 2024 08:44:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
Subject: Re: [PATCH i-g-t] tests/intel/xe_gt_freq: Check for RPe freq updates
Message-ID: <Zi-WMuOQobaJ6GxQ@intel.com>
References: <20240425195657.3638599-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240425195657.3638599-1-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: SJ0PR03CA0071.namprd03.prod.outlook.com
 (2603:10b6:a03:331::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6144:EE_
X-MS-Office365-Filtering-Correlation-Id: eebcdaee-16d5-4420-a702-08dc684a21c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LttcJlaeMiuXKVafaOK889mjOhTmROmy4HRFI2MlE4V7ojK9Tx6Wizm3+s4y?=
 =?us-ascii?Q?XOwcSFLBzmUBdQ2ojezgKihT+b5U9daC5HeA1Ob3b0jK2P4hU11S1vtkRd2J?=
 =?us-ascii?Q?i2ltGgXMdNl2Jlu7gVgbGrrWPnvmVI63pqdX8aCmkgDQRmf9uZuUvhY2R0Je?=
 =?us-ascii?Q?o1q39hOWpApyl6c+k+WqduzJsFprn9FMUUx+sXsCdEN0PDf0ssIX40aghl2H?=
 =?us-ascii?Q?/GENwyU9AR00YmCfxu7mHYsvpoHFMBy1DjgwVHlKmTJH+AmTBDj69XcgGKx/?=
 =?us-ascii?Q?bChrIBD7I0jsuDT3vG5OMEyVwGKrRIDwOkLs6u8kSrtnq2cdKCD0iULYVMMD?=
 =?us-ascii?Q?oaNj7JslzK1YmgsM0zYzbyfr4c6/I4h3xfJNiiTra+4xU+wBfXpFMGa7Rnq0?=
 =?us-ascii?Q?NXFw3H3YKaIl/9uukL6H2JLqzIH7A8/Y2GTR6EljQCX6FMaFsLVYeb9uiLwg?=
 =?us-ascii?Q?4ke2t3dbq8sOzfoKl7bBacAQmnfgID8sqt9uKSSFl3Z89y8TGa7PJxA90+jZ?=
 =?us-ascii?Q?fGgzbFKGrxracWwByUDl5vpHBpsqQTZMLMGcbAb7eGxGpIcnrFEeTlmnCVyH?=
 =?us-ascii?Q?mWPX9lye8Fn2ngZVx+3CfV5tDLO2rvhOIc54wMq6T/g8/j4eXNEeG4YWiigt?=
 =?us-ascii?Q?AjXi3e/Z5FvkbArGNf/SDjrbBQMOuyjrMXZZH8Aax+M1TMdJ1FuMPXs1LhpR?=
 =?us-ascii?Q?uz7D8Yd790GQLENXQW4ubyol43e84M/7ES93Miirz9V7Tjl02QaCiLRKGnhJ?=
 =?us-ascii?Q?yjNy42Z7eCoBE8dqiI+gPsByZzM6ShYEXbnuuZxRUmP6UytaQFtQyd3cB2Ld?=
 =?us-ascii?Q?I/1fNDqcDXRpct63fDlRxK6ToafVStKXDHaj2Sf9LazFLfgCra6v1IjF9VJf?=
 =?us-ascii?Q?F0vhncXyhvE+qWYFhFNESswERGB+S08mS7NiVN0+Fgqavh3PZ0+OQ0xv9gcE?=
 =?us-ascii?Q?ETWq6gTuhxAn5euXmMEaeYVQolzavjkFJISjG7FwKISpuAt2sTtp9KatRtX7?=
 =?us-ascii?Q?HSeTknUP5JZ1SyUGRuyXzi2xG+hbiXmiROtowU387znRgx8M5A5vzFkMHulH?=
 =?us-ascii?Q?uYMtnCQtp99P1X00zvgRLsYPxf3hnzgTTiATyKNcXDgKFnr/0ku7Xfgbn0r9?=
 =?us-ascii?Q?OyJEy62C1zoNMh95NB5YlRex1YtH6xa1HGmI1QoCqcMFd+b41EJYcW7EuUaa?=
 =?us-ascii?Q?zLzjXTkavLG2CrGq+PsnGeZ9u2l6E9tV4obRPiz90QWdH3U+mimX+UED3neB?=
 =?us-ascii?Q?c0buAukZ/ZkosCHHWBQyvT4mMe9AVWFbYGKNWqH8qw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sDx01tZdVzrbe4PbKemcTYsPoPY7KS+HGH293KyMg91VRPckD41HetRuq8JA?=
 =?us-ascii?Q?TtvNhRO5ONbCFtg96uQs0b9ut945j1DhaRyZ6RfZu3yOUHxFZp+DUB/z7rmn?=
 =?us-ascii?Q?tJvEnE1Ze3a4FipkRvR5yd1r+zg9DXX/VZNnLGJKsEF+PsYzJ5gsLrcIWeSr?=
 =?us-ascii?Q?Xduzw+W9m0hTqQywKHjHHeP4TaMD/qQmchmQnVyx1Z7nOVcbdcykm7NvYf3S?=
 =?us-ascii?Q?jEed2t4/wpYASPJGn0zA5SiLKVbGVth4NyERuzxsj+iML9bzHmB9DeYyTyQ0?=
 =?us-ascii?Q?Z5rVhzy/aHxVuBKKQB5lkYev+XkMLNjHm6d8WrF8Jcc4U+bixkogneM5mmFS?=
 =?us-ascii?Q?HQiIEG9pDsG3UFVENyNUk4YNtWBu4sWO68lKtDxWk9+aAtF9ioonAvepDi6a?=
 =?us-ascii?Q?jglpBN8o9WvJjwtO7ObybAKTb68txJVNM5paR8aErqYiZs/rUZAwigLkEDzh?=
 =?us-ascii?Q?Ltuz7NJ+RpEmiJ78WyMXaZWBII1eFjym8Kn4KHzB3rHGunWg+FVjUBz45sU6?=
 =?us-ascii?Q?OB0E0ygPm1jXV6ahCZBp5xj5xAPh4kAkW3aIkUGLnQHP+avLF3H5y3QBlzIg?=
 =?us-ascii?Q?RtGZ1hzTfCtFDy6OZ9IVk9+PPw/hLzGmWl0YQGLCcxyrMe3B1meLftazqkcr?=
 =?us-ascii?Q?Mjc35SXIvpKQcwChE0GdghcLEKr76cs0zGSC6J4etRKs2AhIYU+jGhupS+gS?=
 =?us-ascii?Q?vfIqykdEaW6Gmn3D7UT8qQFn0EGKQAhi0jpbKoX+bRY+l2/rlbDHwWxTGKRj?=
 =?us-ascii?Q?8u5cjrPzT1aDI1ShSyvAHpwlGdzdkYNoXBrbsGNEPuM0ZkOzNu2m/V4tdsvG?=
 =?us-ascii?Q?oTvsobrAFLbWoGa4szEIEtbVQ5vQ8TuUV8w132hCOOuO2PlgdkU9KlifGdMu?=
 =?us-ascii?Q?04+gwyKRCHtnbTaXHgU8NTuBSvOwZ1B7JR5KHS513EWrREpD5q4Ygi2YUcaR?=
 =?us-ascii?Q?jyfL5DT5kDKK+F1xaqMCv7g97UTjX7WljPdBuyNtjGf1LD2TqHOOjn4qveNQ?=
 =?us-ascii?Q?Zpm+NvgNGxbiny3kmCgXfFWs2dO/4wDbU+MmI3ghiCkrsqh1H0JoGM+xHxGV?=
 =?us-ascii?Q?lw1aMemOnuWtfHUGvFkw8D9Z9RRCTrrL+6kdAkJL7+zyptSIJbxwza0NELvn?=
 =?us-ascii?Q?by4VfVwlijc+YMqXTahwFap6gdW+IHXyGTbvA75L/HE7DHjO3Dfum9w65/8b?=
 =?us-ascii?Q?/EtQgUZHhKZA90g7dAa73TqMjaiE54kDLEimgUWRSWWe+LvfzqWlttQBmPnT?=
 =?us-ascii?Q?Q0D0nys1f9o8Io34UFW+tQfhgx+z9Q8dnC9F2CLoGXeOQrTwIxB7sVdBjXXG?=
 =?us-ascii?Q?+Xh6Ys4Ac5XT8IdsHHCEiljeY34slIF/w+Bq0WMb0qcaXbyKmHXYZ1lLj1bM?=
 =?us-ascii?Q?cko/DkcVEoZEzf3tZZvLK0O+EjEU+DgHesVbW0OXYLovCpS5n4DllEYcMTQN?=
 =?us-ascii?Q?RqGvLlqiSa6VDTjglWGsMNEcd7q85FzNP1ghgU1W+xdMNjFIe5b2vxidmrPg?=
 =?us-ascii?Q?5od0iUpuNIcADRNAgkP8r+z4/eMXByQANYHHwC0haN+V2w+8KtgLrvcdRi6Z?=
 =?us-ascii?Q?4k79DSukMzOKoH/5g9T4Y17GDjVtmiDMv2E+BMUT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eebcdaee-16d5-4420-a702-08dc684a21c5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 12:44:38.5557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uo0XqqiXZmdxB/QeAuAqjetHHNUzd8D9m4/z4IHJlVyEO9+ZL76ozMIjqU3eLoG9IXQqyAnNV7bBOcE/BYWISA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6144
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

On Thu, Apr 25, 2024 at 12:56:57PM -0700, Vinay Belgaumkar wrote:
> Pcode can dynamically update RPe frequency. Use the latest value
> in tests that check it.
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  tests/intel/xe_gt_freq.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index c12f6c52c..5c6373016 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -186,6 +186,9 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>  		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>  	}
>  
> +	/* Refresh value of rpe, pcode could have adjusted it */
> +	rpe = get_freq(fd, gt_id, "rpe");
> +
>  	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
>  	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
>  	usleep(ACT_FREQ_LATENCY_US);
> @@ -268,6 +271,10 @@ static void test_freq_low_max(int fd, int gt_id)
>  	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
>  	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>  	usleep(ACT_FREQ_LATENCY_US);
> +
> +	/* Refresh value of rpe, pcode could have adjusted it */
> +	rpe = get_freq(fd, gt_id, "rpe");
> +
>  	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
>  
>  	if (!xe_is_gt_in_c6(fd, gt_id))
> -- 
> 2.38.1
> 
