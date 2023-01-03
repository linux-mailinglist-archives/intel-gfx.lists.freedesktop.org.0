Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFEE65C3A4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 17:14:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8545110E261;
	Tue,  3 Jan 2023 16:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0640810E261
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 16:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672762464; x=1704298464;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+hG33kg1qEFvlBJ1zLMXxAK6uyYaXfRc/9QUIMXECxI=;
 b=PCeXA9T/4e4Pu4dg9eeh614X6G08vE1jk42Rfy6v+NUiHSKKLNL2iubz
 1yH9CAXdnyc0VrsMXhzFK2hI7lYUtM4EAJwcjvzHGzUOQlrxDUyNGBmgZ
 SpPgufHYJWpIHpEWXFN7JHEgc5Qn5JEJQ7S2GLYESUQQug4EOHddJnxEC
 FRpUeWCpzZRzDRnmCAp635qQ5IkDyHUdrfjEtyT2cOwxcA7/rdwA3wCE4
 LXg42OVU+Ohfdm8AGLpEnCOn4xFFpJDoc6i0Oxc9sEUhCUEhwiu8JwRgi
 8ONIza4Qm/0MCYJq/eIvnDdZeAguVxEDGEnCjNoRNgGLjb7hrqTBzDSaD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="386127309"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="386127309"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:14:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="685443538"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="685443538"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 03 Jan 2023 08:14:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:14:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:14:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:14:22 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:14:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxUTH5nYgg9DLxhOxiJIUp5i7vj5laJgE9S4k52acvl/Hla5PR09cQtjS0vID7ijMhl30M9xynyUdM46ZSk77yU17KIgMJZfmPdtCKYAOxPkn0O5XTI9lZTvsj4OoVyNiaWmknMokjrxdEn6wXd6yTDM7RpcxHIG0bwZkEyG3Ps5TSgz9Exn1hPEr6WcNlsoQpfqemRdicQ7T3JOq7Uy5GG7wWj4u50TzLoFVis+rz1hSqedttUJj1Ux5FAXQBlDO8w1/774YE38JbNyZBT3lhy4asLxWEkOsjeVShftSAGd7WssSCgzH35+hLY0Lt+02AtVrP7tl3ZmxWxBDrjR/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rmrqHHoKDEcZRE5xIaxejaN1c+CtrB0aJyV15EeHyt8=;
 b=YuVD8E26JSR30ivNBpzcOuxzgnCIglM2zvUoNrrceO6YqYV+zUvBG+weA5LNmFyL/uawYYIhief8wKyf9sF/mCDI3HEjPGwLaZICHAc/wKb2kErBPA2z2N3p7ygLH+RvWtPqqXaANdpQjVEZvn+MWyyYhPDfQkyTHXcLHTh2gnAgslbz+X43qHUUBwCsZl6AmaW0mtd/qh758H8ifZjhLxzSifewJuLRuQ//xW5ZhiK+RW/6PFsic7k6uQDefHH1rFevYPtrj35NcOtH8TxUSGAhylZIL4gYsmTDxyaPWSVMLyt+uN4ZmNC2fzY2DDjbCgNDJvI1qrb5qjoZ6WG4Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:14:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:14:20 +0000
Date: Tue, 3 Jan 2023 11:14:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y7RUWCLR8oxywAzI@intel.com>
References: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: SJ0PR05CA0194.namprd05.prod.outlook.com
 (2603:10b6:a03:330::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: dd3e12ad-57b1-415e-bdd4-08daeda591ec
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eBk19AhgdMeAe0MI8VA/W7gt8gQ3GiGeQBd3yeii3x7/yuGKFtWkGrNngLy3Bz6vBYkCxIXliYyVAjsL4B4NrrkK6DPqDqUW+x/tk59LEOmrWw4s9JEo2Hbi5rhSVv04ctoobQK+YVQ4PR3TDfboEpsgslfTIKpDcpi4NbQi35jn/BjJNwVUxr21kCRy1Xd9hXlGYovBKyNoJ3XaORMJpnOmJ2LqfXmWOHVEfoSjwijr9oHjkC3ZC+4/YDW2vK1bnakEBefMIvqfEDUHGXGIL7OewoRa2QxnGrj7eRWdoT8NsV2tcvEdT1UOOXGe9a+kfylY75baLpRieZMm5/aR+PIs+BwJW1Ud9LaD2cSsncRIWpJKDzurV96XTf381NYXN7JmDsXVpLsxIh4hjsJnA4yBSbhJYiMdbHUaoa2OJ/sX9ky+axjKJK629NRPqhHMQrrIVP4hNk62h3CLWVlcz6oLEWlpA+U+ZdllcoPppWLA+wtC/abVZdSw+ADDm7/uUzI7YxWDZOgcf39gJ/SVHnJR6zro0lCaLRfBHhKonjxt4dzXl5bICWlwM08aHQc9DUdhpXqxwvNnZKfsVhS1AquVJAkPV2F8uqoQjC/HgkusqWfFU5DSZS65zchk3Ytn7TvPpeSEbRG52oJguqAT83qGL29anXapzRqJmTezhmYBpABP4wsJE4saQW4yGEu1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(366004)(39860400002)(346002)(451199015)(41300700001)(8936002)(4326008)(66946007)(6862004)(5660300002)(8676002)(316002)(37006003)(2906002)(66556008)(6636002)(6486002)(6506007)(107886003)(6666004)(478600001)(66476007)(2616005)(86362001)(26005)(186003)(83380400001)(6512007)(38100700002)(36756003)(82960400001)(44832011)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dDpmqj2owfxEXemzPy3WO9goUtKhz504IMrwv91Og4XqTpDRyJxlvyQHlgCe?=
 =?us-ascii?Q?vg30VIX39F86LeDflHFbXIbOOpBn3ljMNM6zgzUFVTw4OTIydDKGPY+z/pBI?=
 =?us-ascii?Q?CrtcG3XzJCH3dZ8mPXC3F0xL2xCgcecoRBBFlbdkesX3VI0/LqLvcKYD28EP?=
 =?us-ascii?Q?8NxgXElDlnxiKFk8lfxgqOVh9hdA+DZFqiNAsyE/vl/IMmd9jY1lNRd3Jl+2?=
 =?us-ascii?Q?nkdSVVM6DcU4YxH7zRweQrbiv9c7D28KaIymYNsHOqhgiQOiDA8e0zpi8cvx?=
 =?us-ascii?Q?Exou7NJHCUDkgFbJ+9xRrQSPgOklC6ZVmZdxuBTNcWJAqgz9r6EUDf29k7ia?=
 =?us-ascii?Q?d+omyr5OruE1L2/moHRx7+Ntkj5iepq5HZUsqMIakNgK7AxnjalV8EO6Xuhf?=
 =?us-ascii?Q?exL4xS44SSlKjCygXcWQZWERIY4RGG1PueJDMD+gjINHqroh0JpDWH/GW5pO?=
 =?us-ascii?Q?U8jO33ssBkjiW3kgWGcSw9+c27L4zw/+calGlwXd2FVEyyKzNSH7nTS7KRW5?=
 =?us-ascii?Q?3OBFy97T0mPe1+UAXyeeEuO/ftrV4Ro+h6+nTm6XJftPou4BGn//dz2SS01z?=
 =?us-ascii?Q?Syz3OJDDFQH+Napz32Y162Vap3fMf3Qou7a4jQDAdmVOVMSF9aQxq24V/kuV?=
 =?us-ascii?Q?iMY5QVjQMqFQUq6KUbEpuPzTAYTL36vZ1Y5Yx1d++T9JD/k3A1MXrv0Oo6of?=
 =?us-ascii?Q?kdCu5fs7XmKLpEqE4VandCk52CxinqpJ94pLHDNHOrS115Yvhx9hHdhcQC4X?=
 =?us-ascii?Q?yc3ZG2RxYiWXO7QtHPZUNWkv7gyuMEUtoDrfZPLCcb2QbQsnMr4P0y8tIB7P?=
 =?us-ascii?Q?62nqkiTWA5s2Ygx8FqlOp6K6kF8/DcXDt8DK+L+LiboXZp3ryuyWjCWboTdD?=
 =?us-ascii?Q?OBIQOrtGEKqfOfafbv9QXS66votDAwmOg9GO9Ci6yGnwM4W9EReDTaRlWK6v?=
 =?us-ascii?Q?ktrk8BaHmxTWbjK2aTe4OqonMmPHhyQs6py31pWJkOX7x92V4v0L4RzD967z?=
 =?us-ascii?Q?VCq13wcmZDKLfzaljwaEfRf2YMt+Fp4DQTKoSziTGhl/CEL2jDxY+ekEwQHK?=
 =?us-ascii?Q?Gzc/9N//O/mbl5O8voGCOpez1VUKA7a+7fZzUFL7kWHvPxQz92QCLK+R4KKm?=
 =?us-ascii?Q?qSiuMTjAqDVV5IssyaWyMnUzGYPQ0YIepzg4VoCZx1pN7LqQkTfzREHKjPNn?=
 =?us-ascii?Q?QE76Mon0N6HnyhChnNNPaV58TEGiJPClIdItHZZiioEimL2+CoadCO+Jg7Bw?=
 =?us-ascii?Q?bIhYF0jmjOD9t6v8U/vObtMoOM4UJ6EACQGzBta+TnNkNNnGUnXmY9MF18ak?=
 =?us-ascii?Q?ypeiaWJDZ3iivSbTFWyWK36s8tAvXfyknowN3YA4PnteQ72/zoF1/9FoJOxd?=
 =?us-ascii?Q?B1IqBzfC7MFiw0xwkyYq1GZhb68aeEzIakgMKG0rXIm98bhZmKhvjx7CIg5w?=
 =?us-ascii?Q?E4ICbxHYcL2tW9uwHInb1u13isCKdPFo/zE6Mm1nHw7lA/csiOHOxtCPV5N9?=
 =?us-ascii?Q?cwqGawPX2xWRx3YofBuLye7k6iElhd7SEFionCJkUk5YGw5J6TNaY/3Ms1bq?=
 =?us-ascii?Q?h1l3L+ppHoSgLixY+lN5MlSZlLHSkf1Qq1EuqxX/rDYlubXEiXxwBTjZXq2U?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3e12ad-57b1-415e-bdd4-08daeda591ec
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:14:20.2756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K3oaOG2Gw4OspD8i07MEEPzoPkDRznRqietjQMAL9PG44ollmh8dEcQ9WqfNJm4+eF04mU154lVBN0HvV/jDTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix timeslots argument for DP DSC
 SST case
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 02, 2023 at 03:23:06PM +0200, Stanislav Lisovskiy wrote:
> We now accept timeslots param exactly how the variable
> sounds: amount of timeslots, but not ratio timeslots/64.
> So for SST case(when we have all timeslots for use), it
> should be 64, but not 1.

I noticed that at intel_dp_dsc_get_output_bpp() we have this comment:

         * for SST -> TimeSlotsPerMTP is 1,

and there's a bunch of math used with this timeslots, but none of them
is a direct division by 64.

So I wonder if a refactor to reflect the "perMTP" is not needed there.
Or the reverse math instead of passing the 64 directly.

> This caused some issues in the tests.

could you also expand on what tests?
any "References:" link to cibuglog or so?

Oh, any "Fixes:" tag as well?

Thanks for the patch,
Rodrigo.

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 13baf3cb5f934..362fb394d613c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1696,7 +1696,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> -						  conn_state, &limits, 1, true);
> +						  conn_state, &limits, 64, true);
>  		if (ret < 0)
>  			return ret;
>  	}
> -- 
> 2.37.3
> 
