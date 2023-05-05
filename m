Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0A36F8CE8
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 01:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A5310E0D0;
	Fri,  5 May 2023 23:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D0F10E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 23:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683330936; x=1714866936;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ppUm7LvSp67VUY7721idy4prgQgiDxIT+V930VAHTBM=;
 b=R4L2GQdXh2nbUxIvDKHFNZAMqTD48ONAgKIHfs8gianSls5jOVoUjVrt
 kPcUjMfXb72+f28kLquNIemCNbBwI7CD3WfuIeKzfIdsuGO9hKVic/+76
 eAedph990hyZtzoCrY0evyrRXkInLLZalqp27e/BBKlaWboTWa1Z0yRNI
 PJ3pNCbDhvwHfdVlS+04afkmbU0H+dCLORnkY7JpqtZ3l1VvfEQA5ocah
 w0CSyaxhp28s7G4W8o5nZdPsyo2zoW4J/CDz9PmQvUSgeSUGI41lL9Nci
 hweEGFN643TsUiUPJFwdv7em7vJ4l5481lVHaMWpWfxMhgyeYC/xTLpqf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="351468112"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="351468112"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 16:55:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="809460104"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="809460104"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 05 May 2023 16:55:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 16:55:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 16:55:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 5 May 2023 16:55:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 5 May 2023 16:55:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cNMsUGCDTBJiNIfVx2On8GwaSoeKyiuJ2jUxk4ueYQcSD15KsbRJOElsvwgd2FMzgyoUJlLWXHQ691FZQXOPnyC1L+UtRtPKjlJGECmmFr60XfOYpUsiEqoELFbDl+d0Wa4gGxX+kpHhvZJUbI5QIBbAUX5W27v7Tpg3g8o5LRkZjwFKmI5r9gL4NPtg5/b9jldVWQohJiEzH4+QrBv/8smRunK4ywZpXJF6qQXNs7ZYOCI/aHn79WQDpfrsh+fPuZurrLTLSYn4SCP5y3rbO1DW9fEjew2axqbvFhXyE846DYMg+wMoaKtYMeHFmThBCzvDiODyFRwaPUPrXjvCWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YRHe85bPHrMOgXup+5j44qX1u7L+gVBLlwLL3fXEXoI=;
 b=I70hPZHNV0E5heFngKX93q2gkr3myjm1l3f81JDFX2guf1QcsJTQNS9QrAgnEUkTV7i+nSg4MQzgqYZYLVML5NcTXsmQvZIJYPwhjYSB8k6Ztp40n9qkLpjyeYGlP+EXjIz1ELqBO41MOX8IBKoAXEc799GmMMDCvKDWCthDo3q8WAESXDZ/es4lDbqvq7wqgYTdWCMf3LuZeps2EeecDnTA5IXRo3LWS2fZKh2bJH4KLPjDSmOLw3aZhkD/Pk6P4TJdGtD2n2+CvFfPAb3EQZRz0dosG4nvkbNYbeQqcvBkfWeXH8orwIdTZ5cHIL6yhZmIdeBlPvr4QDklB77ocQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.27; Fri, 5 May 2023 23:55:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6363.027; Fri, 5 May 2023
 23:55:32 +0000
Date: Fri, 5 May 2023 16:55:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230505235528.GS10045@mdroper-desk1.amr.corp.intel.com>
References: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:a03:333::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5247:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e1841c5-4a47-4388-7215-08db4dc435bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1+2aC9vHa1xvy6n6oblwtkIioXFxJBIgCV/BXpPNwPZUDGC2rHw5YGg1xvGxY+GpBRvmVu+TmDioJEbT7wznrNC31fafew0urO7A9NQgiNXocAHHv/WEsHuH8uA3KIGMCop/pBhXutN9JhQ23PGxN3UAAMIB/3BQgglnQevz4sGGzAghMu6q16eZUe/77odkt+tMjj/2YZIN7on/uH7UmUYJALkRjtkaTE5WeQJ/9nlCOyoF9Hq+pgWS/uVcXKymKqYcU6w8mY6STGg8IhETPdl0MfdXRCOoWpHCcSdIW4+I+w1paPOh5dPrW1oUxmE1pAt/EHTn/QqDN//MJ3ET5lV/AXiEGpU9fOSbIX2X3Wa8wqCxT+qMksqNTCm577u5jYP/sRiQKdk2SKSur3eNt7XUxizv0Hoas/eH4XLt77oe/Su1FGtL3y2Gzq/FW5uQTM7TUYIJrVg2ifHWKW+iV7026YtVUAyuNfcK0tPbtwXMDdfdxn8sPoQpKLSDPj1yjVj9F44rBmF9ew6gEJCyDy/+2I8l1hTCt4CHQl31gHPSfkL+i5+JU965BAArH6VM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39850400004)(346002)(136003)(366004)(396003)(376002)(451199021)(33656002)(86362001)(316002)(66946007)(66476007)(4326008)(6636002)(66556008)(6486002)(6666004)(478600001)(41300700001)(82960400001)(8676002)(8936002)(6862004)(5660300002)(2906002)(186003)(38100700002)(6506007)(26005)(6512007)(1076003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Pjm3DYYxs3dtKrfhOP+6+drXMJ7fwcERgOcj+ijC5PoAKDc+M5ZBlXXWeN1R?=
 =?us-ascii?Q?D+HZ8Atk5KDwXtoPxjO1cwxW5I0INnlT+tXGogsfCbYqSFmwUzajQfmBawU8?=
 =?us-ascii?Q?++FsCLUTcmurMw77Rll1tGxtliStiT4KVc5dsVtQSGbcUK8164pAtF7yPHmx?=
 =?us-ascii?Q?d51hQyMGlSBUMJU53wMFrLIbeGs6JisFi7o9qHepwoW9kEDc3QYNiAJ/ZlAP?=
 =?us-ascii?Q?XoqNCunCXt+lgQdrEH93YyPqAP30xfavKfDSqaj7KzWxRiq5ISbO3YMe3Yvr?=
 =?us-ascii?Q?1VKGl9+/u6eiZbjEM6dqvcZbcqXld4cU8BddXZtwyODwLBouxgVsazDePGYR?=
 =?us-ascii?Q?JSGadE6FgFW9HCNGg3y2qZM6F0FtUA5u8hLlPhKLfQCAJm6ffGvBcyPy8EVN?=
 =?us-ascii?Q?AXMKOCoLopHl/HYKqoNEUV6QfC8n1M4owynYmcQfgADP2fDShmMKNmoMC9Xv?=
 =?us-ascii?Q?Wzf09bhq41pEj00Pu5bw5vegxT3OMfx/MDeuyL2hElqNeLu7s0/VxSsILk95?=
 =?us-ascii?Q?AfPpMaYojKUnjSjQpr7LM+MmSsKLZiHFHF2QxLujIjzluINJh/PSG20nv7uN?=
 =?us-ascii?Q?6efBdVlo/ITwIIQVmzzGdv99HQzLBSj7dAs9mpUliXLEu5la7XkmT8clnJx1?=
 =?us-ascii?Q?p+vXyCmxV2EGVteKTftBj53M+tl/nyXoLGAAW97YKqprLG/L25WbAGThIHUR?=
 =?us-ascii?Q?cp4EVXdSCLTLcvY5O7eGRrJFt+ZNTWLh0mdcv7xFgqZx+97u4ZMEHqzEzJ0c?=
 =?us-ascii?Q?IscH+mJbt8y+m6/SyjdjMhU+WCPqTHQ1gCT4mRo9glyuNoCpnV/TMbVJjpQi?=
 =?us-ascii?Q?9GOSGKBuKa30Rdi5xwdv99qNCsEqkve/0ZO1/I0T3T8vNXn567LV3XjbX2dt?=
 =?us-ascii?Q?xBsSzZLXvP4gg4kzEXpCUSclyXOIsSDV2VbRqdByhQY/5VKxF/5xb81fuGQj?=
 =?us-ascii?Q?y1xZN0MkcIKc6Qj+gjdtQNxMo7DpFm244FFIKBXBFxKrD1TV2wNo2P0VF8p6?=
 =?us-ascii?Q?reo7GGf3D302koL28Ti7OAAJ7MPD996NcTXkP0mc6NfnujqpYFi2x9t/YWzY?=
 =?us-ascii?Q?HVCAI+ktTaaLCdCOAqlWhgXTOD5la0sVVxD8YP8pw7nAHbdlopi+cd2/bMsX?=
 =?us-ascii?Q?FwtXggEv/MjHDP5B2Ktgs23Cdh5jiqjmSwGq3QTdqQSmpqOAifJXgL7jFqY6?=
 =?us-ascii?Q?820prgH4Fkj+WQ3USW973ZLtIX4K/RUXLNRIhlLGoi/FPm8ka5akye/jV5aW?=
 =?us-ascii?Q?FPbt61A9t+6lLdY0Ak0qKb9C2gKi7cyyyTxjVlXIKvrziyIx6cn8aFIVpbZ4?=
 =?us-ascii?Q?YMZ7uTwmhgMC/T9h94FyjZsquliiyJZTNsGNw7M/BH5HXNjp3tQHPyVFc0IZ?=
 =?us-ascii?Q?Z1R66w5uHJk5PRi9sysG7H802HPxWLu7IZPzsm7mCEfX0pONQBi75nwB1fwu?=
 =?us-ascii?Q?nvFXPzZfsXlHFA0oSD/bBuuG4Sp6PpIIFC4O0dc0kIYT6sY/o5Lh+56bsyiR?=
 =?us-ascii?Q?huzHGpXDg+baTkl5+TpqBGqye76WnXN9A2x+qB4do5h4YIMROGIAkTC7syla?=
 =?us-ascii?Q?uOBX+73B5mtWFMyn6hY9uQpTEnjFS2UfkNGkAd/UsilHYMl8jT3/6evOqni8?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1841c5-4a47-4388-7215-08db4dc435bd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2023 23:55:31.5628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WhRFwgVbHFyrOAL9B13ZgN0nB19bOKfu6Ny+1Qstb5NZbSt89t/h8pE1+goct917RsKJ7nBadmtvyxJbGmxV4ulj+GClXacwOYmU9iTlgzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
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

On Fri, May 05, 2023 at 04:45:44PM -0700, Radhakrishna Sripada wrote:
> Fixes the right lineage number for the workaround.
> 
> Fixes: a7fa1537b791 ("drm/i915/mtl: Implement Wa_14019141245")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ad9e7f49a6fa..786349e95487 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1699,7 +1699,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
> -	/* Wa_14019141245 */
> +	/* Wa_22016670082 */
>  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>  
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
