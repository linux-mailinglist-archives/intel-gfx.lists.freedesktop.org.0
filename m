Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFE87B065B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 16:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EEA710E192;
	Wed, 27 Sep 2023 14:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Wed, 27 Sep 2023 14:16:56 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59ECD10E192
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 14:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695824216; x=1727360216;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gcUOV32HMy0/M14rLnBc94npovVEd9id2cutPQT+CBI=;
 b=CWb8c7wk6jCqZhyxuUs4vNpycn4xmZ0vRg9XO946+bIeK2G+8NmcGI89
 1eAuIcqPKUbrrUXPmamuGqWyMyCMyrur9MUlhjI/n3d0oSAgDc6qqdpfW
 Jgz07JNGyPN2TAmI1LzH/3fVGc2Ra+WdbJd0/yx/mfUV3v3CRiSdmY4kF
 uuFusnIA6+hzk+qEFOOrUm49KwJqbjxP08A4DKiOoG7+JNbetKy+LO98v
 h6EuE6m+u20IiDcIudCEO1PHqF++63ow0/jf2GlmfYX3OfWa8lGAFu863
 O2s/fjUPC6jskSPe8WcR3+usUo2X1Hwtc4qZ/hYvGBKCaNLwcfjISrVAB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="3366868"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="3366868"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 07:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="778555379"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="778555379"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 07:09:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 07:09:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 07:09:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 07:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMUTzTkQJZAFsVz90HKvOq7PIsZ1O3ARbehJ788nqTk/dchTX3C7mpO4rkBHwOwg5p68mYWY36MIf5vbnkZ1wS2UI+uCOH+/5mexoBKa6WlyZGvBopUILcyJ6sNLVBv3H1Uc217qR1yQ8LFgWFVFThjUJ59n6HzcGgd0CHd76o4EY2lgRRTppURrTJR+11jJm0D4fTax0QP5uHY0NdHWgEDGGq4poLbFFVVjSPtDwgwXLEp3ZuV3x/MqxdoAzwvJkT/EECQVqYhqY6ivDUADBPzd0/d6slk34nVi3/MhEMHJ4cznhO/ALGVha9IZl3RvlU9KAHNIXbU9rz1ohEzrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1gVQHwYkxiT5KcJGsQQVxEB+ABhcUn0gmmTuYK4JY0=;
 b=PkgpGypTLjb4Pblyc85wIvhL0uj51aJOSxRIFCh/EbdvG6n2plAFkQcOmmFLVr/Voe0Qlohkncmv2zZVeZDjnUDONC5kKlAsDDnYlnp0nuUv01ZhgyYtBVDOlrxoJK05TtX1PmHdOkdqnPjdc75NrP35SeCTKOpbpkFWPaFslCiHbZTJGKaFOhAPQr6g1hWSGoOv8+kMNXJvEVQPGY56Ht4+JX4sQHrQ+HgswWS327SUvGTLjwkIZ4AO/WzsIfkNpiWfbDTQDacx8wUQlAoqU3YrjFe/Z5cQ3OlDtkt3mYjUevv0QAClj3VHBratWoDM7sKQwvMKAkKRSKfg4JCoiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5300.namprd11.prod.outlook.com (2603:10b6:610:bf::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 27 Sep
 2023 14:09:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Wed, 27 Sep 2023
 14:09:43 +0000
Date: Wed, 27 Sep 2023 10:09:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZRQ3ovAwdQA8j9ab@intel.com>
References: <20230927102707.3935596-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230927102707.3935596-1-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR08CA0065.namprd08.prod.outlook.com
 (2603:10b6:a03:117::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5300:EE_
X-MS-Office365-Filtering-Correlation-Id: 476bcf59-ac5b-43d7-04eb-08dbbf6364fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 19+U6PrsetQ8tykaO0U17Spj/r8KO2d8IbY5R+4fn00Mee/Y2LRhmHIO4nvH0QdFv5DCzQCV5W1v/N4qfTzFVLy1A8Hy4Xy4PTrxeV444qTxQAWMO6lLv6v7cXhPAC8rAoksRRHwGPhydp6rcU0Plwk/WZqYNk/OMm1+JFNfCCfnJTDhcPteeSyuWLEbxT0ss0d39B1i4BO34OxqusQ4IigtiE3GcnLc5MdjOMzOeDEF5/hLI5IVodYjjSNt+KJ+5JJJx62H9Q7yioTJThV0tBR4HvbUGofSSVofHDwmkP6mpZBoc+fQo1vAO37cXLOyoqM+ybI09WTVsGTi1fxk32T7hbVjdBKorQnkoxMmY5MdrhcF2avzCQ0SykFn9oAPpmdpPHvzrnuON6wei/f9i59cJ1tIuF3hrQdTPPUnSCazMVUZ2qYHKdpIZ+hUIdnfSWs/RtI0W2QNstYHzlUwkBSnJ42Xm+zryBk1GIgpLBooBRJHE7j1OxWLnAD4RUJK8O5SAp4lCQOlHPwR7ktisbgFO1gpSD36Zd/1Fzfr2cB7fTIqbne1sgKFZay5OKuG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(396003)(346002)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(2906002)(6512007)(26005)(66946007)(2616005)(82960400001)(38100700002)(37006003)(6666004)(6506007)(86362001)(6486002)(6636002)(66556008)(83380400001)(478600001)(66574015)(316002)(6862004)(5660300002)(66476007)(36756003)(8676002)(8936002)(41300700001)(44832011)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Y/f9AhERxQF7KvfOZpUPJm+vOm3UlBM2u7pW0BXyb2E0lrunYbU2tYQ4Gk?=
 =?iso-8859-1?Q?5aJg5lEuQ8JYBJ3/ihxvsq6Je9admUITLzf974k5hnFuGMP68dnLwqdAGv?=
 =?iso-8859-1?Q?OMOS9ug4TyAgp5KtJMzWnz8hFJyhSP1wzFybFQKPXmAbqK/9ADYHGHZr6i?=
 =?iso-8859-1?Q?NTBAHVFujO5BAAycPaPQdcBy04kye2Q86aV8Vg5iiqlR0+dAt6ULJo3KMP?=
 =?iso-8859-1?Q?OggnTwWjlycYRg8kp01a2CM6fd5dZ0k75q/JQ5FG6w4N6+lAamnzlx64Ff?=
 =?iso-8859-1?Q?pBemq4ocbX5xJrYlPY3tFsvYbbJPAl1iKIGWV3go/IilyH8Ho90QaguAcJ?=
 =?iso-8859-1?Q?+f/7OdoWmL4/ZkQwJZ2GYCyqd4NXCqRuUQ9LKMQgNpJa0FPXmMYwO9y3AC?=
 =?iso-8859-1?Q?+RGTFdJ+x2BaGL7Zi9ZXqMDxs/MCf9+7qFNBJtIkCziiOHgfijlOG9iki+?=
 =?iso-8859-1?Q?TGetGkUO+rr+rOKuMy1y3cWXHw7FxGki6YmR/BsAqb5JPcowW68bexIQ6Z?=
 =?iso-8859-1?Q?cAqxei04hbJO69BFdfbxQmbYzhawOHvqWs6EHJ3THp0z78bdSaF3ZYuwpv?=
 =?iso-8859-1?Q?nFhPBuJDi3AmkZM1LXtx0gmgPwhgh9LbVuPGOf+N4kq3QBF1uOKTTVS5LR?=
 =?iso-8859-1?Q?0ryofdcmel2af1f11H/TcYYQEplR5sF0xwTcLL2+dJXZyL39TyhxXe+cbO?=
 =?iso-8859-1?Q?sW0RUVk8TDnqABv31MJWTutjjveeGS4E5WzAYZxxmCwOQNYeM5YJqbA4kl?=
 =?iso-8859-1?Q?hO8WzJf3xVNPHR8cnQNxfK52ZT2QCbF1aOdPWXsUzydLwtp07matcy1+P/?=
 =?iso-8859-1?Q?X/3O5draAZPzvc33Dwd8YuxwNrCJFrlKIDvNGnfbA0j8SL+99sLnkH7gLZ?=
 =?iso-8859-1?Q?9jKXlFVc2IwORU+Lu/up8fkn8fRFUAwPve6KtdNIFH1WPaQLoeakF6EyLG?=
 =?iso-8859-1?Q?PnJ8tuuEF8NUirjxIQIMotVGmugHnY9Zn6vJ2b2T9AePO+sosWRMHnGqjL?=
 =?iso-8859-1?Q?k9GDMYjp/r2u/mtzlV062o8m5XxD7vEKznqDEhhrQXGyEOPui36D/JhpGc?=
 =?iso-8859-1?Q?MWrvwSjPTiFEAIR0qD41XRQd2OUOniWNx3xqNO2/yQWiOjAO0fcED58LjB?=
 =?iso-8859-1?Q?y9UybrEXg/k0dG17d/2ZUFf9212AweGDVYkIyJ+8sHoJWo6BAeOKK765Fe?=
 =?iso-8859-1?Q?cq73cmMMMaWIg1VB1nR7wYB9iDU1GHwfvvimHEq+FaexFuBukgS+ukCZ0Y?=
 =?iso-8859-1?Q?k/YW/yk2M3mLwBeEuL/aswoLe93mVL3j087YHuztSxTvZDQVZ0ecM8LpK8?=
 =?iso-8859-1?Q?rNZPlHcWBN/velrfRFZaiv82SBmx3LsynQyardesR9hBI+HuENkhf0cocP?=
 =?iso-8859-1?Q?L1Wz8aEid4gihGPuN58wgweWsxBwPMyAUfRd3PRCfIxC69Dam+pXYnwzHF?=
 =?iso-8859-1?Q?1xC/twZWfUlu4vSdABorlDdu1UKtb4Ppwi4aXa//4DA8bN+E0lDqr2Q4Lv?=
 =?iso-8859-1?Q?Pr3FFiizh5RFdk/V2IFsOOYqXUQhlVqhVD+ljEIJcKhb1m9r5ltDFGpU6A?=
 =?iso-8859-1?Q?rq05Y6MSv9fgnkqJuyeeSRB9xTGM7DNGo7NWolAOr66XlBTE//7QacWFK+?=
 =?iso-8859-1?Q?HFw54hPytwOFUoXzPCzw/0yVuoU8a3bZ7c?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 476bcf59-ac5b-43d7-04eb-08dbbf6364fc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2023 14:09:43.3850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: esgOKpisLvcLJ2tDxrFGwbYvD1Y/omtFEKuFqPYr4Z4norpTElwHq/6tkHI9GCL9Ih22K2owwH+xvEDI9+JREA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ignore set frontbuffer return
 value on release
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

On Wed, Sep 27, 2023 at 01:27:07PM +0300, Jouni Högander wrote:
> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.
> When we are releasing frontbuffer we are clearing the pointer from
> the object and the value can be ignored.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index d5540c739404..8ef0538813da 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -259,7 +259,7 @@ static void frontbuffer_release(struct kref *ref)
>  
>  	i915_ggtt_clear_scanout(obj);
>  
> -	i915_gem_object_set_frontbuffer(obj, NULL);
> +	(void)i915_gem_object_set_frontbuffer(obj, NULL);

should we create a dedicated function for cleaning up task only?
or maybe should we at least print some drm_err or drm_warn if return
is not what we expect?

>  	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>  
>  	i915_active_fini(&front->write);
> -- 
> 2.34.1
> 
