Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 318456AF69F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8847210E54D;
	Tue,  7 Mar 2023 20:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B41910E54D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220627; x=1709756627;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/cVS8GqKOYuSE5wXHgcIxdmSRKYe14G8CU1xvRSLTbY=;
 b=M381JAgi9uxoDG+bbsJvvlBT2HKqAN0F7EhmLAqe905Ss4bvI3ADXC8Y
 CMmHlsVmskOhVk2RqwT0FNmmaoNnDWNVfpZkk3prVV0KhN9xETVtWK+Ro
 BkGTeL55MfrFo4x2ocGl6d5Uac1TqvgEM23S0ZVnjqZCZQGfUTun3il+l
 1vBp/juRs+2ePPN75y63VGpW6VoSDRjNHIzWNy23i8bngM7GExi+SZqV2
 R0L331yj3UgAp5RmChjMjqKVc4KyaQBjNY9hrozT0MmSnlC9HGcNfIGxD
 ZVV5V9kNt3vMjOmO0fA3+Tv29guF7yPn6tzcp+b61Y2ZrduTfdxK1mEHg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319794190"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="319794190"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:23:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626669840"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="626669840"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 07 Mar 2023 12:23:46 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:23:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:23:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 12:23:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 12:23:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwYUKM+Yzw3ab+f3EPcDcXLnUADJs4h0VhcqrOzQLivvjg999ezwZahvq2B4TarBdPLEQpetGLQ+c4f8R70ctXia8xBbeuslNwmZ40Ab50JEhmc9F3fFajjs1LezHWCMRPw+hzuohzExJRqGRqxWXhxZfMcfOWkEf6s5bFRe/XXIAjToThVzN0ATZv4aTvVSmR3W7YghU+LID08/WjZLC17I/ehLN/wxr7pXIv58qE3m0szp/0z9EeWexMJMtS9kT5UuUhn9X+U6wOF21NYI2Gjr01ZJ1LpQJMtuIPgN5b2yY+rPm3XZHUo7rYXMw4MsV6IjhUIyPRHios+06LdW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yicmRotXQm1jdwHuoU8Thxh+caHSKfIVHzV4qwi8uho=;
 b=d3TPJdnPzC4QMYKrSBdQDJrR9/FORSI1f1KDxVKCvA8/L6ZP54nHGYuIS18LXQWp6EOAEF9z0PNXqPv/7PjOnr2PBrhtfQ39EwKogjW5Voycz67Z45YRKn39zysJh13RJXKGXiNC/rA/71OdTjmx9Sc8c8yw7lDK8R+W+gu5JvFum+pdlVmPsCoqX9VGk1PjUi376pSxeMEbuIez4GuI3mB73jC9kb6/piDN7qc3pPQR7foUqqeu8CS7lyCxqy1C5VZYiKywWtTQq4bKMALimmgO9o8QI+kqSyTYdtb4DadqnJbBrde+B8+dhaJvXbcrsgpqtt6MuXgj3Oykpmp+zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB6691.namprd11.prod.outlook.com (2603:10b6:303:20f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 20:23:43 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 20:23:43 +0000
Date: Tue, 7 Mar 2023 17:23:37 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20230307202337.qydw5h4daegej4lj@gjsousa-mobl2>
References: <20230307032238.300674-1-gustavo.sousa@intel.com>
 <20230307201246.GO1543793@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230307201246.GO1543793@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0088.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::29) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB6691:EE_
X-MS-Office365-Filtering-Correlation-Id: d020447a-5d8e-4f23-44f3-08db1f49d8d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0gITx+itegyc4rUh6Gb91QYAMNZ53rFuqFkTAsOICY2x+bVsOBGT8LACwslX50JZLLCLHgFcIcaoB8ZGhjT7mzzfM35iSZR2+wQ0P+b15Vs1zZn1Msy+qpUxHl1zXxJS3kqux4zNV8HQ027qdKSIgpvqV2ljA+simap9jsAYDXTlk200agmjagx8doSoc8F6EwXn5pOiaAOyoi/kFSIinrlP7bFbXa38ymxuK4zapX+Cj3cB+3tuM+X4Mb8RlWbUqfjodsSMRi8AW2/CLEQuFx7pXt1/8q+v9vN89tMgviTnE0mWqK6ViJGrCAJefhSw8TTEoIS8X7dt0jDnfTjARUns+KiF8SeoXIW3yNQKqGyFD+tmhmOngys2C8gZ466/3IxQeKJWon2JJvI72J9/MIyYgKcZ/aDRelvbC9fIFtERYnDMkjMkzT3Gmk0rBp5ylxY6ZJTwFufWNJ/q+agEkdapI12GGk8/lj7LAlqJNNDOE2nGvYpfG8cc7Dj1GXWi3wdYIUspYJ7c780YvpvZ56D9d5lxO3gLsPfszqqEz3bDH3z47MmspD3qCXCVKwNJRRP1dKOlXz5n8XyHYYN1w/lozK3/KKh6VO95/Ifxx956aziwY2D67PlkGjIY6tw1QJoS3BHmgTtXty/NJhR2SQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(346002)(396003)(376002)(39860400002)(136003)(366004)(451199018)(6636002)(316002)(83380400001)(33716001)(86362001)(6486002)(9686003)(186003)(44832011)(26005)(82960400001)(5660300002)(478600001)(66556008)(66476007)(8676002)(2906002)(41300700001)(4326008)(66946007)(6862004)(1076003)(6506007)(6512007)(6666004)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KcW4d3lecR+3saVB6VpQ+MqGZrhTjR/NK9ZBrpPjOpQVRotiYBu554x/AWBt?=
 =?us-ascii?Q?+ixg6hQc1dF+c19Xuj3r4+PI8EXQUCRsTBHg3TFy9RQv07I7lpPVRbS+3r48?=
 =?us-ascii?Q?ue/01NhLbuxnSyCFYpMPWIbRt+c7YB0VjHNNoyP7mMRH1HwKXcrHLPl/InHw?=
 =?us-ascii?Q?+1wpcqOujjAdMkdcnVR/8gAbw6iJnFS6+sFinsBrFj5Jv6Jyh+cOEzf5rvKk?=
 =?us-ascii?Q?Z3TXZ4B6noPIcrZyEv/uQIK6A0GpgcKQRxb/1D12LT0VJmJP6XtZ2uvNZVn1?=
 =?us-ascii?Q?93mppwtxlOTHk6rCkfsxwOo54pgPJvEIVpZY2v4TA9GxYHhUIJxJzoGhL5Uw?=
 =?us-ascii?Q?AlZxupvAGJZ9zMgNMoLIhEd3Hba2JQb37npwS24JgH9CW22IXBVyoYhPEQPX?=
 =?us-ascii?Q?JPKTvYRg3A28FunaTMQYtrOao/2QWXHkn3oeG9zxZb2KZsR39ZpfwT66j9zz?=
 =?us-ascii?Q?KjKw54c7AnxhH6JBqc2FDJqV5ES3vUYKTHdcJxjORaJWpgZDmlbJXC3HSnIG?=
 =?us-ascii?Q?EDde/7LoAOWS81R50o+mhi8iel9sIGPAFTGmiJKQELTRt8vLIaiiHMiEjUEv?=
 =?us-ascii?Q?mmkwX1nTesNGwsg69fix6BI4dV04KamlxHUGQSDeSgxv8IOaBv3L/TBD2B6R?=
 =?us-ascii?Q?EPv5pmmawFF5ivaujb72lZxVA7Vwzyg55nqwAka5NJlUYqFsnjoEAuG9BrW7?=
 =?us-ascii?Q?8N7dv4uNeENBd/+/HJASgLl6L5IMNBxF2xSpEhoAHu/cDh/3YGZt7Xx5TOdf?=
 =?us-ascii?Q?3Rnz/shZ/n55+YGmgZi1VFBSDUpiyioStrDOMqD5HLawpeT4mjbWa0Gbv2D8?=
 =?us-ascii?Q?9Kq8zMjcxeY1paKMb0TT5NsA3g2aCcq4jcyOZXNeLLaNt/VkZK0Q3MsnaZvs?=
 =?us-ascii?Q?cKdUET0ndEegVGSBVTm8WQrMKqt83NUkkmLSr7hrYo5Ggyi8AOPiWRxVzCs9?=
 =?us-ascii?Q?GuXEJMks/0J35IvZP6MGdAjb2sYBs2FmQdXXKHjr5b3fws0KythqoenaboBi?=
 =?us-ascii?Q?j9AeHKSzj2TOjgdN9ixwcXdV0IAQsecddthegkyGRAwIL7LSFHZrIKdwruRN?=
 =?us-ascii?Q?Dn6quLq+Zgr3ec/N5TYYLs2hpeKq6bWRkwCXsxwu3ijKDXBh2Nf3Incp/fSh?=
 =?us-ascii?Q?weJJ5lBavgi7OcA08Ur5uKspBSPQXjITNClJp9gzJmihjIu3AvcfA8voRr9Z?=
 =?us-ascii?Q?XuDAgegrmfxmase3mO71+QdiYxofvnxozh4xwMZch1+znIXDFpfN5AcmxO86?=
 =?us-ascii?Q?VosZcLtGwC4tTUSFXLQvPyZhaJgsnfTR+btdkPmzGuPxIfge1au74fS9kEW9?=
 =?us-ascii?Q?kLZeLdAr+yF7xkhunK2+WtKr/MKP5j5gmFLOBPbYidEHlPBwNsimnI+BjSLN?=
 =?us-ascii?Q?ef2uhiVryQPxyL6VwydomCl4VLCi1HC1moRExczHP2FBMRCLoMPf9IUNrQBJ?=
 =?us-ascii?Q?/IlUoYCc2UdWF3bLyvLMMRrw9ErDqizm1O992tD163BnrpkO62rcOfYqk6bY?=
 =?us-ascii?Q?gIavE2AP5LMbWShJKODgCzK9ATXIdRnibuL7SgL2AV1NWJA3cBXVTHvwuGP6?=
 =?us-ascii?Q?/jdI42URnBbMNh3u6KZYPR/ixHTnS57pWhy3aBOaU3/V2BVtDyfGYpfjXw+e?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d020447a-5d8e-4f23-44f3-08db1f49d8d0
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 20:23:43.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8g4uHJ4i7YIZsp9jJJj4dgSYHNcrxDgUaeXnFs/L45nLchF5ZNhjMHpZmQtmXmA7yTEGE/VkWi7dwKHjL2ySA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Implement Wa_1606376872
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

On Tue, Mar 07, 2023 at 12:12:46PM -0800, Matt Roper wrote:
> On Tue, Mar 07, 2023 at 12:22:38AM -0300, Gustavo Sousa wrote:
> > Wa_1606376872 applies to all Xe_LP IPs.
> 
> "...except DG1"

Oh, okay. I thought there was distinction between Xe_LP and Xe_LP+.

> 
> Aside from that,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the review, Matt! Should I send a v2 or can the amend suggested above
be done while applying?

--
Gustavo Sousa

> 
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 08d76aa06974..4aecb5a7b631 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -478,6 +478,9 @@
> >  #define   HDC_FORCE_NON_COHERENT		(1 << 4)
> >  #define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
> >  
> > +#define COMMON_SLICE_CHICKEN4			_MMIO(0x7300)
> > +#define   DISABLE_TDC_LOAD_BALANCING_CALC	REG_BIT(6)
> > +
> >  #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
> >  
> >  #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 32aa1647721a..8092f289c492 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -743,9 +743,13 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	       FF_MODE2_GS_TIMER_224,
> >  	       0, false);
> >  
> > -	if (!IS_DG1(i915))
> > +	if (!IS_DG1(i915)) {
> >  		/* Wa_1806527549 */
> >  		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
> > +
> > +		/* Wa_1606376872 */
> > +		wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD_BALANCING_CALC);
> > +	}
> >  }
> >  
> >  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> > -- 
> > 2.39.2
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
