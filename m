Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF387AEE7D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 16:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D1910E137;
	Tue, 26 Sep 2023 14:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23AB410E137
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 14:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695739227; x=1727275227;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W0jw+Z2k0PCSjHERgVpI+mDllRQQ07nh/wS94RjsAfc=;
 b=en4xP9x8CxPhZTtQhByRtHYPanCYLmwl60yg8RUk26DSzFYj7MOSP0i8
 GSLSCptWThihco+vmtSU/QkaB5A8Ci+XMAl61mrJn3deSW2sz4aQvAly8
 ME0W98TCr2ns0LUNGa15YXcbZW3X6+velGAAdC5zXWt9b3watgw0PkX+w
 RsMAzll4EQfIgFJB1l1K42p+3YYKFbudI7NuTBumkbSj5XsmiO6ArRyyU
 m546g63ASlr4bl0a9JISz0IeEAa5eMabf1WJZzrBuzUGi+taQ4z5+2Y3m
 Vd/RwW8Pde5/joTwDl0SYsZxjoEuRlwfJ9mMIcxytHdCbO49xnfvW6bK8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="467871005"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="467871005"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 07:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="783967935"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="783967935"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 07:40:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 07:40:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 07:40:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 07:40:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 07:40:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULE/Bh38c7wKifHkzVTPSu3REcrRK3xN5yFVzWRl/kWBjhoDRLhSCuzbT/zCJFH9l6jjAE8rxEraUYZN51oJDIX8cptCaa3h2tJUyTWGCuGib9qkg6f+nEsaHTwxC8YkJ4Z0fIDhKZIEfX5qSTfMZnSYT5/v3b1S+MWM9PyVjtghNsFW2Jy8tiTswrGgopDRCGbp1RSjB5bssjM3tpW33GwKZyKHFPbVHXHa9c94xAXbYbsRvq7OyhDdPHMgB3Pj8UGYf5wcmWpwzRZeLkbJOxvOjqy7XdMx7lY8D6j862oNLvvLV8sA1Wg1II+naYrR6vuo1p/IjoeYeoSjtiy0DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKxJsuWTvdn/yCR62ts/B7/02ZxwEKc2favHW9pRsjI=;
 b=fRIFs6SSznZFzwlxOutm6u1Fm9tTZp36dtc+5O9luvLo3egteIYskgXHGY3RTu5fZLdvRe+ybmjzXNOHzq1vHp9qPRDvuWPYkFt4xzCGEqMr/SQgKqsXa6n12NAE0iTs1Mg1A2NqwP+y5yZ/hAZ4ETFrOSKdkH3QQ4jOZzjZZICjaa68a2bbha44bxcWSvdouYa48aXHfU/XjqlLfWA7IopX8BpMpkr5dMQvGZyp0xGlmgKq8H2nwJhOvdL3uKZEt0xNo4HP0rCu9FCzYYoKOBnhAe1FQA4IN/kumqPaWhvdkN/KWc38GwsUQbbA2tE56VarkVNxcvt+DAkT6TwapA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ1PR11MB6130.namprd11.prod.outlook.com (2603:10b6:a03:45f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.20; Tue, 26 Sep 2023 14:40:05 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 26 Sep 2023
 14:40:05 +0000
Date: Tue, 26 Sep 2023 07:40:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230926144000.GH2706891@mdroper-desk1.amr.corp.intel.com>
References: <e038e664-2ab0-75bf-8df5-1158cae9c685@linux.intel.com>
 <20230926020053.245046-1-rodrigo.vivi@intel.com>
 <3dd3f8be-f071-0edb-5613-6732f4f76f02@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3dd3f8be-f071-0edb-5613-6732f4f76f02@linux.intel.com>
X-ClientProxiedBy: BY5PR20CA0026.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::39) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ1PR11MB6130:EE_
X-MS-Office365-Filtering-Correlation-Id: 97cf9d15-da4e-4db1-a5dc-08dbbe9e78e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gpEqcIFLZEDuckYBXuVmHpfw1z22hRXNCNBqwXZYf5QfTtbsiPZMnpoMWO4acLmtXbFQ866XDNQ+4gO3bbYXLWY3Kn0jy4i4zixN5VJv48fsRp7sax7iMC6GagVq2lRgwopMacNm+AviO3gnGFJyzs/pgBVy3kCoreSnudEwnkl0Y/NnPVD085nitcYvwhKj4inhlcRRCtUQheoFPexQv/+++/mNtxoD+NK8k6iV+OZoVQePrtUOkvkek5PUjI0DHxProuDi8D/UWeuzvzbvzjZxqhJBaWUAIojzfKi7BUAredwbcx1eBkzgOOpbNJ60ZIVLl3MNBkOJmpJK7WvF+K0xixJW1mSkQR4CNgqsKuqU1GkB0TNVc2fmpaiWf1XC0teVtJKX+/fOr/hitRsK/m206J3ccy2s1+pSDTJd6ubU596Wd59/uGOnQZC2mKQAHWsHKtibP8Nh8Axsov71hMZERZY8HMrgXaGD5uLvNF9dzsoMRrSF364N6MKCzdT0Yi1stpzDpwBMb7Bz0HnnG2aM3FQqSSpOb1OUxnGaGnBlgPgtam2jpyl9vL20ASH2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(396003)(376002)(346002)(230922051799003)(451199024)(186009)(1800799009)(6486002)(6506007)(6666004)(53546011)(4326008)(6512007)(478600001)(83380400001)(5660300002)(6916009)(316002)(1076003)(66556008)(2906002)(26005)(66946007)(66476007)(8676002)(8936002)(54906003)(41300700001)(33656002)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sSnldnqQXQt95dJnKRH/VYQ+l/CAXXOpYLKAjjQyPbiLJEQQvbFTzwQJqtYd?=
 =?us-ascii?Q?WGNOLaCq5RO3wkkI5MLqWP8kvs//uuGd7EGBogXfmgE2DXavovHOZv5Ce7Nm?=
 =?us-ascii?Q?xQfETx6qsbFy1htZ9kjaztB/ogueSEuH4VpenQRaXDrxK//E5pxGu1Ec1Ta2?=
 =?us-ascii?Q?n4LUW54OP+o8XvdvIf9sRksz/i5oD0QtWS39CTe5EWykUr1CkJpLCjhIdtkS?=
 =?us-ascii?Q?eHK8ppHKxDh4yPKMkv/E5BxUG44UzXAQJdx7fjk9Ab8oQDl3FRKKcqiyXsFQ?=
 =?us-ascii?Q?H79jF32utInbZljBb2RI/tO8c25IOe4jmEs1Fo8noT/omVH5FZVKuEB+yDaj?=
 =?us-ascii?Q?cKZ82QlL2dgTzvl6JDk0DW9NYeKhDz91Z6yhkn22WIzbSCffMwLkI6xCirbm?=
 =?us-ascii?Q?2swAw17/sv/tewEVNhFYwhz0CNOH7Ss/si5lhYs0U/Esi03oBfuWSQpGhs3h?=
 =?us-ascii?Q?36tdN015F2aDfETB6sQ0fMNDuVEQH+tNI/iYUAFdFnvxDEQ+McXeMcfBRlAc?=
 =?us-ascii?Q?4GeVOxZA7Th4P0LBk/HnFGGqAcfMhp9XWAgViKUCcEoYkMUG5k8ptvt5F1w/?=
 =?us-ascii?Q?KGrID4BpTcu7bxyZrJTnUe5Kr6HNusuxW7rPMxD6iI6Qqbw/mMjMj7VhlLh7?=
 =?us-ascii?Q?ObRdAr3qJD01PSK5QfwH7/Plccq5z19YkOdl5IzNlxWrw671NS+Yngm4yJHq?=
 =?us-ascii?Q?ELiwxMMGq/BJ+lOkUsxKQy0BbtsDrXGMAgDVAMV2RTRznprY/mEQLXTXJRDL?=
 =?us-ascii?Q?r+es6j9GrJgOwzOK2yc86RvT/qCKBFGPHNEtMgIByy49olHgpXvCwHHwWoqQ?=
 =?us-ascii?Q?FXkMysodMsPSdE6f3JYKrrgphiy5eNPqNUDN4UxfmNvhAgqETxQ0k84aMere?=
 =?us-ascii?Q?lmOBEot2FaZvw6UjZ/LrX9FlvfETx6Mpf9tmkjez+O0K/i1psDjFnF7nTpPF?=
 =?us-ascii?Q?5qaEXByLJQSPoj+bzQd7ioEVRKGuofyZOvhtrM95gHGIWqTY6pXgbNiuiCSU?=
 =?us-ascii?Q?XA4+qIUtWZ8qhqHo97wCjpKxg/vVp28iu5jKgFnq6algXmgoIEpZpry/O3Oh?=
 =?us-ascii?Q?yG9oK3WNmhiAZIl6gqzvf4cvQG6gNw80x/U63BDBIaFN1vce2twmMCdrZWpO?=
 =?us-ascii?Q?7fLzEFCTjVwkTJU+grmcWOXvpHvd0dOhPiBTVAn0kBAgwMGS966dffyEveJM?=
 =?us-ascii?Q?8hNbBN3tcT4uVeJum9DKF3v366Vwo3Kg4JDpiSBDtp0G0MOEOJy9vkfF8Hbn?=
 =?us-ascii?Q?j56JsqB01oc39jU/IqTLoRITvEz4XuHSaynQzJ9oonY69vIsfidQ5jrvj5Qy?=
 =?us-ascii?Q?X1t6ZzrATavMt6bwywCtT4EORXOMYbHw7g5iOomhPfSAFOeUmvmJ95XHUuTf?=
 =?us-ascii?Q?9d0uCrFXkhkYGAJInDkBOSW8xBXgTalsQidqqsLMufgxUVOX+N+Js70kqIZi?=
 =?us-ascii?Q?iB2rv1SMQbJXfB67r7/EuNNuhoVs0fPGlb9V5zNAgT3hwpxTugCIqRXamiDi?=
 =?us-ascii?Q?1JpKRj6v3dmerJO4gaRZP/WcJK9rugRna6vGS/W9+2JhS4oFakd+T2uEWJRZ?=
 =?us-ascii?Q?AAp49gl4Ye4bN3NmqmHe8Cbi7VipZy0Ddl3N6fxrlJoRzHlYjQEaNtxlI59C?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97cf9d15-da4e-4db1-a5dc-08dbbe9e78e5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 14:40:04.7970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /f7GAVJ1+dNm2h03TpsB26rSaX2FwzsoTtUZjom2E+JClkSKzU3IjCm3r8lit/sBcWIBeQsJwxguoZWZFAwA9X3tsIHt2nmAQiOQoB8t2lM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6130
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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
Cc: intel-gfx@lists.freedesktop.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 26, 2023 at 09:36:53AM +0100, Tvrtko Ursulin wrote:
> 
> On 26/09/2023 03:00, Rodrigo Vivi wrote:
> > Let's introduce the basic documentation about CCS.
> > While doing that, also removed the legacy execution flag name. That flag
> > simply doesn't exist for CCS and it is not needed on current context
> > submission. Those flag names are only needed on legacy context,
> > while on new ones we only need to pass the engine ID.
> > 
> > It is worth mention that this documentation should probably live with
> > the engine definitions rather than in the i915.rst file directly and
> > that more updates are likely need in this section. But this should
> > come later.
> > 
> > v2: Overall improvements from Matt and Tvrtko.
> > 
> > Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >   Documentation/gpu/i915.rst | 25 ++++++++++++-------------
> >   1 file changed, 12 insertions(+), 13 deletions(-)
> > 
> > diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> > index 378e825754d5..13de8bcaaa29 100644
> > --- a/Documentation/gpu/i915.rst
> > +++ b/Documentation/gpu/i915.rst
> > @@ -267,19 +267,18 @@ i915 driver.
> >   Intel GPU Basics
> >   ----------------
> > -An Intel GPU has multiple engines. There are several engine types.
> > -
> > -- RCS engine is for rendering 3D and performing compute, this is named
> > -  `I915_EXEC_RENDER` in user space.
> > -- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
> > -  space.
> > -- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
> > -  in user space
> > -- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
> > -  space.
> > -- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
> > -  instead it is to be used by user space to specify a default rendering
> > -  engine (for 3D) that may or may not be the same as RCS.
> > +An Intel GPU has multiple engines. There are several engine types:
> > +
> > +- Render Command Streamer (RCS). An engine for rendering 3D and
> > +  performing compute.
> > +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> > +  copying operations.
> > +- Video Command Streamer. An engine used for video encoding and decoding. Also
> > +  sometimes called 'BSD' in hardware documentation.
> > +- Video Enhancement Command Streamer (VECS). An engine for video enhancement.
> > +  Also sometimes called 'VEBOX' in hardware documentation.
> > +- Compute Command Streamer (CCS). An engine that has access to the media and
> > +  GPGPU pipelines, but not the 3D pipeline.
> >   The Intel GPU family is a family of integrated GPU's using Unified
> >   Memory Access. For having the GPU "do work", user space will feed the

If this is in the "GPU Basics" section and is focused on explaining the
hardware rather than the driver/uapi, then shouldn't we add the GSCCS as
well?


Matt

> 
> LGTM.
> 
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Regards,
> 
> Tvrtko

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
