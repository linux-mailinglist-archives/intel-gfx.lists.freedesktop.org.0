Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4E37A862F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 16:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C546310E4C4;
	Wed, 20 Sep 2023 14:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C3810E4C4;
 Wed, 20 Sep 2023 14:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695218861; x=1726754861;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HLUxPJs6qfH2eewIAhueKtnKg4KvloRJgGBQfgw5fKg=;
 b=FzR1jH3F08hzKqUe6exoEu3roJJK8YKWSTf13Vegahq2FOXe0QztX2Jx
 Q1DBrxdRGahhFDif8tlA4f6aZlMkxN48H3879KZ3LfL8WGrPXLapof8bq
 l8Lt1UtjW9wjUnC9YKslzg0sQATLbeKef41N2c5D7sIaXZqf7yxE5RTKb
 GPMCc90vrk0g/NL2c7VOEQlctybFGpNsDVJvbW33JRdnEt1bSEAhMGDtE
 8yf9tO/XKD75PCeRcsjgf/ZAPayKdLbJC44L0deitM0P8uOurCq9nsJSp
 BIe/BaPyvmi8opL2t9yfUFMOX7/MFA+P+jleGcoDiimKK6uxaTdrFOYuz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360488221"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="360488221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 07:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="781702798"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="781702798"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 07:07:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 07:07:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 07:07:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 07:07:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gwjISyyY72aUkW8GHfhM0yBhIvlGH/Z844JdXIzCIs5roSk5i8FRsoNvhJ8WTMoshsAZxm/XRAT0aAuM5GENK2KhPxC9YaLW1q9IQqG9Xbq/Zpiw0fBKnTq6+FlbY7Lu0SMK8iEPvW5R8Ozq/4Y029y6SpwgfCY4rjeAmAXcAwtzH3O0HHjl+RwYZv8wOcyS/4j7sW911Xvnx/Cub6ij2RmNKx1ldV+8s6o71Z1Qv/tLoMMBtspM8s5Avk7b/g52kX3KQwDN99A4kYoSoSIfEtN8q5ah2Fd3eYT0eFTe0WaAIwnnuS+bCnsA/7cSBLyR9y/YsxEsPhuLL6rvLaYMjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6JdWN9uJb6R6ywd5dmFFL0qTwlDAmnRjYsUio/f890=;
 b=BFCVkj4ZuPM8Yrnyt6ph4vIyzHGhXxBRW2HkS39Ui28fEBRAoX/C59jnK1LwR+NGRGmc+rQ3vj7xSM1chuEf2SXCAVW6kxPzAEWANZisXujr42EF9zXWkEAk6TcrzAg3KwFbWhQo28GVbOqJiAArAxd06/7z4NlNohpF9/0GGawwQx6Oxafqkj45quVSPiRLl6H3yyYViR3UOCYV28rgX9nFOS6As/rmPCuBcD67CEZ4ISjMVuANdUVq8ZVaAaJPPOOSfEjdZRkmF+/Rrr8PZat4r1TpdflzzJKWVlYsyxJLA0iigSxqOhoWvX91Htifyj3iGL1XocJXX8EGKGKJaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6067.namprd11.prod.outlook.com (2603:10b6:8:63::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Wed, 20 Sep
 2023 14:07:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%6]) with mapi id 15.20.6792.022; Wed, 20 Sep 2023
 14:07:23 +0000
Date: Wed, 20 Sep 2023 10:07:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Message-ID: <ZQr8lowFNiMGnrbn@intel.com>
References: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: BYAPR08CA0034.namprd08.prod.outlook.com
 (2603:10b6:a03:100::47) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6067:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d76eff7-92a8-4b1d-a7e9-08dbb9e2e926
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A20Cq1Mffeqp7GHJpAetqZdTe+vvASr3KeCZpB7E+fwbj5HRCB2TbZWmldaT8Y2j3zNcElPOzLhzczUYPaZNKifzmQS6KcrJG/bRnVOAsHtpRju5/Ml25jX/5zJ3wCxUnm2xXJwh2+/WRAWj6BiPyTvIQuhM6o8yHswhLrSm6YsWkEIJMx8cL+qhMzTSWjXEaTRY6OTWbAgSiIA6HZ8Jp+PpuCc+mFj8js+1nlZBv7q+mbl90kgTmoieqDnh0k/LhVqYDYFIOKW3mAAQvb5dOEd8TimezHQDPvKyHLjMzn5oLvjiA+dOU+nKQCkPEQ5ztITZwn+WOXmaM9Hhz0MpNwXsQuiuk2AeWXMCFoUcpva6zIIFIJUsktwjr/FMZgqRCxZcVJXyhtN9z8N5cJanMVlww32+geHztlhmvCJalYGPXLXCzaPQ+h0GwP5KXGvDvDar+QlonfMdHJWkq2AJnWFtj7OeZC2ZTrrUUCf+eMutTRQAoWMZTM2OIRRlSK+y4vok+cvu46Q6aY+7AgLdXa43XFsA4i4RmTL5CB/6XiI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(136003)(39860400002)(396003)(186009)(1800799009)(451199024)(26005)(8936002)(82960400001)(450100002)(2616005)(4326008)(8676002)(2906002)(83380400001)(36756003)(6862004)(44832011)(5660300002)(86362001)(6506007)(6486002)(966005)(6666004)(6636002)(37006003)(478600001)(41300700001)(66556008)(38100700002)(66476007)(66946007)(6512007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?woFHpKaGQ+jL8qSyQh2WyiKLVwrKBvmaHo6dZDiLeLk2t2JNytBthU210d/w?=
 =?us-ascii?Q?k3r+vBL3wcTX3zdjDsYNIYL/Y/oK+Lif2bIE5LmHsWzxlcOe10NVZzLo60q6?=
 =?us-ascii?Q?ZKpqwMNMvVyRK912HXSGnKML39DPC/vJx3RZ+Ty767xYDDXhS0JIzLzqClk5?=
 =?us-ascii?Q?OyQnsqiV1C0Y7Ugg7+NMIdwJpzO5L7Ce9WRqhPDRDZoPWTzjPD+ngAtWJ8+6?=
 =?us-ascii?Q?mBjjVAgEGIHEv4pAyu6z9DATSf35BEBAcXHq8YYX7blF2rFaX09obNnZY3sZ?=
 =?us-ascii?Q?HFl9nO59F3cQ5x4fgBv2u34EdJpTYSJMUS2eRaqYJn7USIOzFCDT2gdrbWaB?=
 =?us-ascii?Q?0zIYvYv2ny9XI8UOXPtaApQSWgHlDFlc2IW9N9HuNS43q6EjblvkuhLlCfWB?=
 =?us-ascii?Q?bYTyiIax5aSdD57yPPOVB5hEmaKjQz6h8/FfuAFaCJARM/2a2gmIg+OR9Aei?=
 =?us-ascii?Q?ymfih3iP4J/if3mpbTxl1AkpqXf61HDwxkDINfxxdN2f50Fm+tyuy8lO8saI?=
 =?us-ascii?Q?cnuO/gMbT5Zv0vbzOsjQxDix3Tbub15G5CPFjoYJODg6Qv8N1NX8DHF2mFwl?=
 =?us-ascii?Q?C/2X6UY7uGDXXeACj+1CAsPemyxjXM527fyxX9FpBOmPBbQOSbamxVyYsLhA?=
 =?us-ascii?Q?3LbUA1pd30t9B4dS8eBBLeHA/XLkCNVKJND6JoK1e1aDEGPERL2L/r9bewWw?=
 =?us-ascii?Q?KpHMXPWe8VrwQI0vud2b3XDJNntGq2kQaJFb3EQbZd/c2BNT2pi1Q3S+6yOu?=
 =?us-ascii?Q?UjpRbnCY7iO6+veYUrz0ScETHJrsTD5t+84rPhHHt6vLVAfVQEdOJI4JPARl?=
 =?us-ascii?Q?fiYuGRjlCRzD8kllrgHTHMNEQNaoLvH8TvjDo7+SQOerqt/TzDxXV/wnI3I5?=
 =?us-ascii?Q?HTPfMTsMV5QhMmKhrG/sWxTDKQCJmcEnQqab/ZP2NwCQA6qmBKSnwdoAabw/?=
 =?us-ascii?Q?EpoZNlFhgAYHQ2MFGXmnK0mR4hl4MUptAQIc75O/MqOsRiZ//guncwdX0gyX?=
 =?us-ascii?Q?La/XEgCmygCbYQmOb0RFMv94AutOxn1ynMg+RjE/9lGmvqhDetllRw1RcXm/?=
 =?us-ascii?Q?Iy4+/8VZhleyI4sW9c+CErP3WEe7+2/bUdepzKkoLJXvAs0BDLtrFP/nu5cP?=
 =?us-ascii?Q?S4JSC7SGEoLrUHb4zPQyujdVZaB3t696O+4GIC0swynpH4SB665stIQnmO2e?=
 =?us-ascii?Q?CkJHJnG29rxr6AfE0n7Tg2vUar7cIJmVrcepDVBIT58wyFSIuLciMTTGlwZO?=
 =?us-ascii?Q?zVBOa0spolLXuxvYlODLMyKCzMQuPNQM/FQARnVllQYTY25LsLyZ+upmFiUe?=
 =?us-ascii?Q?L82u9ZMjOcsgK/24pvzIGHKoI08AQ/FzeOsds1hTCn3Agn2hFdl4EJ/A5lE7?=
 =?us-ascii?Q?oB38Flm+XW5cJr4k9zOz8YdEo6X8T27azMPm3ABqN0BIPZHEgd9Z+1sqgoFB?=
 =?us-ascii?Q?k4d7sNtwwSIJnbj7dOw8e3Z6+e0n8shUfE1rV5e+0345JQVkpSvQIZ/5zyeP?=
 =?us-ascii?Q?uE2tobD4QpgfToMk1RRT4UgyLrRCqIq1f9y2Avziq3Do7BoA08HQw9eYNaij?=
 =?us-ascii?Q?wDu0unO8S8aNnKylZEQqmMcIref2Gb2nFjLNLG5W?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d76eff7-92a8-4b1d-a7e9-08dbb9e2e926
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 14:07:23.3309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JmkgUjHJDHvDFnVGgdkJCxEAQs/Jn32+7Ku2pJM/ZhAABYfz1GaGGUO4bO/FecZAXicr+5IMmrhuUsANwIFlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Set min/max
 to expected values
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 18, 2023 at 12:02:59PM -0700, Vinay Belgaumkar wrote:
> A prior(rps) test leaves the system in a bad state causing failures
> in the basic test.

Why?

What was the freq immediately before the failure that made the
machine to be busted and not accept the new freq request?

Maybe we should use this information to limit the freq requests
that we accept instead of workaround the test case. Otherwise
we are at risk of users selecting the bad freq that let " the
system in a bad state"...

> Set min/max to expected values before running it.
> Test will restore values at the end.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8670
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/intel/i915_pm_freq_api.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/intel/i915_pm_freq_api.c b/tests/intel/i915_pm_freq_api.c
> index 03bd0d05b..6018692a2 100644
> --- a/tests/intel/i915_pm_freq_api.c
> +++ b/tests/intel/i915_pm_freq_api.c
> @@ -55,7 +55,11 @@ static void test_freq_basic_api(int dirfd, int gt)
>  	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>  	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>  	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> -	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
> +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d\n", gt, rpn, rpe, rp0);
> +
> +	/* Set min/max to RPn, RP0 for baseline behavior */
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
>  
>  	/*
>  	 * Negative bound tests
> @@ -170,7 +174,7 @@ igt_main
>  		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>  			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>  			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> -			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
> +			igt_debug("GT: %d, min: %d, max: %d\n", gt, stash_min[gt], stash_max[gt]);
>  			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
>  		}
>  		igt_install_exit_handler(restore_sysfs_freq);
> -- 
> 2.38.1
> 
