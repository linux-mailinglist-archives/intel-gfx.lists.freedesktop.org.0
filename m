Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504373C4CF
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jun 2023 01:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7946710E013;
	Fri, 23 Jun 2023 23:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B34E10E013
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 23:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687563162; x=1719099162;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8SJo4V0PD4456LDrQYHOQbcSdVPPYuqerLVcyvuxhLE=;
 b=Q+dk1/tErJbJyKkYbIKy+tZCLjGd5Dsrd0QRFbf1BVLVoYnVm6iYnowG
 Yx7obU+RKPYfCYro5AP6BwtFf0QMA50C65iFAWB5AGQdXk0EReJcnCHUX
 EOPcegTeXrvWPHMdd5PWwb0nWSOyjay3F9juMF4km8IYfixcIM7+443+P
 83166bjJ/ZxE7+R4/rluTlDO9qc3MO+iNgUW/m+kFrxd6c05DcEjrwk+f
 ICKepatA/QaaLC2rO1Qmanjr7PywHcfmorLEbTEm6Y2b3ihGC0tLTITxR
 YzJSAEUYLrRkA73g912nBkrqan2BHif3dQlpJ6POlU8LM+AOyUeAVLkUA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="350655012"
X-IronPort-AV: E=Sophos;i="6.01,153,1684825200"; d="scan'208";a="350655012"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 16:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="709613040"
X-IronPort-AV: E=Sophos;i="6.01,153,1684825200"; d="scan'208";a="709613040"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 23 Jun 2023 16:32:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 23 Jun 2023 16:32:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 23 Jun 2023 16:32:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 23 Jun 2023 16:32:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cg/y/Yvc+CMy4t4RoclUPKN5ivl3+1EhCTaURU5khPf+POBcsKCPa6zbRrlTeCc9hyYokVT95qjTrofRQkUAkHJdjPvSjlDyQCvz13sADGNb0OQSAQpW6zjyMWsSsj3NtGJyI/pz/nClA5zRHKnIPrYdltoNGWIJNmY0Pp3HD8265W8LtcgUmdINVfZ6napoD4QohSPukn7K2V+2soU0pvf+A4jFoKIUayqLp8XmH5LmgknC/En9NXHG7XGo9QTs6uVDV7Npm5ZQzxBcOQpYr6CNslkrgZn0OfTqYAKJQU6GMADkXbQUXu5Bl1nwgO/8Q/nWCistjJv3qHHA1IIPTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16DLOn7NTKeTDFR8KAjjfhIy3DcWYT7YK+J9ghV35cw=;
 b=DvMLvLLtumr8IP80J6Jy7d0lIbHDAHnLEKYBKSCMRqJIdrm9FFxU9YgLYPnQvda8mIVi8OfO7TXQcbXOibhiTggURZChSoNU4B+eCVFd2orWCVqMg7nJaG/hxBFd/+p8vgmsh0XOtibBw5UpbkcwHLkCqV7KwU+CE1NTwIVxkQcgkrJrqNYEFNBOGCTNjVfZY1zR/ChwtG8LDo17vVRCQHEd27QwLGn/iMxk/XoEBk6ICfLQQVJfgklmjxNkLfNV/AWViKGvgvo0fBtSnqWbG5aX8piWcOrn8DtQ7dDUie48A/L2Fwm0YMQ8VNHxuoiQVnaxEEixGXYSsZ91wNc9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 23 Jun
 2023 23:32:38 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6521.024; Fri, 23 Jun 2023
 23:32:38 +0000
Date: Fri, 23 Jun 2023 16:32:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
Message-ID: <20230623233235.GM6953@mdroper-desk1.amr.corp.intel.com>
References: <20230616225041.3922719-1-matthew.d.roper@intel.com>
 <238f3e22-6475-7c36-d63c-016194c192d9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <238f3e22-6475-7c36-d63c-016194c192d9@intel.com>
X-ClientProxiedBy: BY3PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::10) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8441:EE_
X-MS-Office365-Filtering-Correlation-Id: 09ba595b-742c-4838-a90a-08db74422153
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5PhPQI1QOtgLXW/MpVh6cnPoB7bJguCtrmrf7z6+ROWLXZH+ppjwIRkvfoUEVjMQsy8iTcntVNqh/A+o/W+gZ8k0OytQXtIhX7Y4oOKnH+VB824eR87yot1nxkj9Pf+PssZ2TPc0AP+YKQWT6H6TdVasANTS09gjzWoIROJFnZFFQ3f+BHv93nPX8wRFmRNh7OJANu7gt7wT1BlqVikmmQv9mtNVthukn+EIIn4QQ9negfymnJ5qEdM0fm2Ol2nTH4UQaodzto9i4CBBBA47QQpr9q0K0KlABxnq4YK5lDi9+U/lT+orFUiSpF8Zs/VWoTPPEkNzJGBI7n5vHUouigbreukRI33k4yymx13itWcIXhkl0seuYO+ySauFVLeqIWjr8/iwp9gu5jHiEFNYXsBv8WE6jmcLeSJSiv1mdD4mGNkTwg4AJmLPAD9WDZz9PdeFSE5JECtxXN5aHqKFsE3wNfi1JaqaU11A16AVnbYOS/Cc298fgzMZ/HOQ/i71T8kcM2JGSOvXCaqQzpAa5xa5KYoLQ23Vmo21xnkPheiuNwEs5pc2Ix5LEp6Cx9yN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199021)(2906002)(6486002)(38100700002)(6666004)(83380400001)(82960400001)(6512007)(6506007)(1076003)(53546011)(186003)(86362001)(41300700001)(26005)(478600001)(316002)(6862004)(6636002)(66476007)(66946007)(33656002)(8936002)(8676002)(5660300002)(66556008)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pvlhiBqVtl+oR/7UbqHW/18t+F40FSrGuKK20tk+bV8yV6DFbrMYunRVfCRA?=
 =?us-ascii?Q?ccvb8ok1ekVTxk5mj5AMoFIomQSB0HcLvMib1rY5XIn9+1YHqB76GkUcm0UE?=
 =?us-ascii?Q?w6j150ZtrPe/N7yQrwJnvSVue4HShLvKsijJk/A68Gsex+0ynOP9u7oqWa4L?=
 =?us-ascii?Q?l3uNQS93STnkqJt3sw787Ho64P6P0LKpLlUpVJtcVMwGfVEj9EmNkdBZKnkr?=
 =?us-ascii?Q?sp1JEBNn+yV02QAxtEi5DgvU/xxHfhb5694SlNDfoyfIIN42GSn1WXu44gjU?=
 =?us-ascii?Q?xYEbFYh/WoFQugnXp6usIbsdGNsTKF65D5RCB+juQXORyzHOe+rCdvgEl7D7?=
 =?us-ascii?Q?DBFYX6EWAdYfgBKDiubk0Wr1m+6CI+dwuQqQl8Q4ao/w8sWzG07z5l/YAZlL?=
 =?us-ascii?Q?ma2I+/aFz/bX6L7rCAerSElazT+ndhy33yEur9bVv+1KMUFt76N5DpQ9M+kO?=
 =?us-ascii?Q?mEYHJ9Bt2vBgtMDKz9T09sH6z7J3b9j9ujb11jwWfHyRL0MIbEgj/WZTdzPq?=
 =?us-ascii?Q?48UEw0YMZ8OrRzj/FRmBcQwTnkxs19HZ31TzIZ2LZgYdfTNQW6Lm3QtHhQUd?=
 =?us-ascii?Q?1Zz/OF/SRgpE8rsECFi93AUuFz1obfMJ0JCn8/XZosUmYwhbv0fY4MNoYmZV?=
 =?us-ascii?Q?K42HoczJQWcjOWrJ26wXnOVgFk7z//s3KUo3KOXKOd3v2kb+Ut1vg5/OSDUn?=
 =?us-ascii?Q?BcPpaM2/9OFH8gxaZJJQHEqBtOSVOJvr+lwuyxjhhpeXqh5nkarS0iBCq19u?=
 =?us-ascii?Q?xnYZqGQud7hMP+ElgNNgS8xYU+UpkY626WQxoQkTV7gSiFDpSya999erPxo3?=
 =?us-ascii?Q?Gwbe2n0CLY3URDYW41x6s9uRFzS4GlyM+lKjOslq+w8+RSMbmZUXjZEzT6dA?=
 =?us-ascii?Q?V1lc+JOmGpLrUQk1GZr4kD/atc+Qat2zq9MCp3g5agmS6Pfofm+TWc5tkJjp?=
 =?us-ascii?Q?8f7ulDq18+Xg8J1PyLajTMun2vJ4xXLWzQ6h9d1ys0rBWmzzTZOJXip+dLMd?=
 =?us-ascii?Q?hgWAM1HZE8aT9WP7Kg/a0YL9VUG0dVgDG/w9wI3lipY89JfPsxFJcxSPx0hS?=
 =?us-ascii?Q?GxHE4QQskYm47m3t2m6Axd5ioBBZcpyZnDdiQRKpfGkNz5z/CbhKo4fn6hsP?=
 =?us-ascii?Q?X8uLmNBTiUcFhyBFShYN5pzPri9XmRmHcjnbcsrtXI/qNKm0C+/yiadSJyxz?=
 =?us-ascii?Q?Hc7XXMGYzf29cEyKlcPICOZAWUojCsQH190Hrs0TLc2qSNS/VXEZTKbocMJu?=
 =?us-ascii?Q?j1/2ySqXih04db3Q8V/D43WpgP074gHivECiYf3nzX1IHPH+ZMAESTxhg4+O?=
 =?us-ascii?Q?dOGdlM0mMkkzNMK9nTwRhA3CP7ExWZLN9CwQaS4cCf0utDuGX7m3Z7s8oHUU?=
 =?us-ascii?Q?VzzM7L67En/JU8OjgCB9pkcnz7eqVixpS7SadEx0Lfdn+wTWg7WgPHZ9nxAR?=
 =?us-ascii?Q?E678TLdcf0GpaGOgxaLAE4+SNot3QANQFyUQbAbMymw1upzcb4khCOjqKmgF?=
 =?us-ascii?Q?ESBEFQX6rzilvY+7qs1KmgQdD+1Vk0S3V+w/voqiqeNz0LOEX+eUfTRm5k6/?=
 =?us-ascii?Q?5fpCIsfTuWILIWBaMjrGIxsal5g91+4CojbgboxINUAfY2/5SZU4qgGhKWGR?=
 =?us-ascii?Q?7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ba595b-742c-4838-a90a-08db74422153
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 23:32:38.1427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vjKqam9woZY+neiKFjI55UegLBePH7wnAIQLYitA6pEyrr98nZMnwd5OKnOBtyEjlNvreDC0rRnpwXTjDTyDtJqDAHqZ9L82YrD4SNUGP1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8441
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Extend Wa_14015795083 platforms
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

On Thu, Jun 22, 2023 at 04:24:49PM +0530, Kalvala, Haridhar wrote:
> 
> On 6/17/2023 4:20 AM, Matt Roper wrote:
> > This workaround was already implemented for DG2, PVC, and some steppings
> > of MTL, but the workaround database has now been updated to extend this
> > workaround to TGL, RKL, DG1, and ADL.
> > 
> > v2:
> >   - Skip readback verification for these extra gen12lp platforms.  On
> >     some of the platforms, the firmware locks this register, preventing
> >     the driver from making any modifications.  We should still try to
> >     apply the workaround, but if the register is locked and the value
> >     doesn't stick, that's semi-expected and not something we want to flag
> >     as a driver error on debug builds.
> 
> Hi Matt,
> 
> Looks good to me.
> 
> Reviewed-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Applied to drm-intel-gt-next.  Thanks for the review.


Matt

> 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++++++++
> >   1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 4d2dece96011..4bb83c435a70 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1485,6 +1485,18 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >   	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
> >   	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> > +
> > +	/*
> > +	 * Wa_14015795083
> > +	 *
> > +	 * Firmware on some gen12 platforms locks the MISCCPCTL register,
> > +	 * preventing i915 from modifying it for this workaround.  Skip the
> > +	 * readback verification for this workaround on debug builds; if the
> > +	 * workaround doesn't stick due to firmware behavior, it's not an error
> > +	 * that we want CI to flag.
> > +	 */
> > +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> > +	       0, 0, false);
> >   }
> >   static void
> 
> -- 
> Regards,
> Haridhar Kalvala
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
