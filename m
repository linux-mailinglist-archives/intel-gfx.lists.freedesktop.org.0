Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D835967D2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 05:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5445010E4BB;
	Wed, 17 Aug 2022 03:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D9C10E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 03:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660708367; x=1692244367;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gHPsGFBe5KsPAdttoS9awMt5vE3zu38tXPcLUN42SK0=;
 b=H9s8eN6mSrPw0OngJ/wd8MnrM9whCr/ZM+PBoMVl11PUHdrMIhg9xH1f
 Ih1zlUT4108mRg5pcS7+dGC48OSl02XNHaQcA00q63kfJDm24zfI5800j
 I3vFFDvrXNTTwwPICLNAdxeRr8PStbgdttYMDs/FM5ulRRaTqUizjR83t
 B7XJBFTn+ripsawe4d7UIiH7pNaFeP+fQy9pszOapkaABsLsrJgwlrMzA
 vSMTDrVqWDQH3n5bdAxrzjTFbT4NS1QVcXYa2ddQEHxDgDGis6GIX9TFu
 ++NPWqBWxvWhwYvmUHNbD8qVSXzuXZnaCbUb7eHAgLjBfOGwJFemtKR9Z A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="292388807"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="292388807"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 20:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="749557853"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2022 20:52:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:52:46 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:52:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 20:52:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 20:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9NRw66FV0cj0mUsUGBiD3vioS++0S7EMZakWS9o5z7wf9BkHtj5Cc3qzZ7+IFvowRmH4fCRtdnwlXjjKAtV1cF+nCc9HRtHH+HnEtideWyk6mi2Ij+Mcc39oPkaf7pOvmRJA0ZjPA5WZPN108aecYIjEH7NIMIKpZK19/PJQn2/0nhvUviX0rrKsFXesvZ9lwGlLlTir5Vu174l8GiJNktaMr8Rv/IqJkim8Ryj0j+8Us9rwF5eNTvIRYH50eRNoBnT7eI7UZtd25b8++vVG6DOv6sqtNTSJ49wvymua80wCi3jq33QnPI1/ISwgy27R4CFeJX2aRu+p1uUgXbKAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5Uopk7ME5/VxQhFfh9UhmsFP7uG4TL69G6gWVhPJAk=;
 b=k+p0N9TCNiySxXlLR+NGJVsx9/fKbJ+zoy0F9SiBSonP2tQMzNDFI+B+0J3vgDKTT2+dfh/JVZN1v8LvTP0ZwKVWyOy+vUbr5z1SYk6z3aHA0S96NIBm2W4Z2AEJjYeP0MImwrwvCkyIINktaXaL3EOzn/crLuR1+0cXm8/ayx2eOhoRg2Wb6z56UHMVStQ5Kl9qobQnNDE5UVkUQI1/0gKi2angAbSBiMiAdmB5u+aEHkcohKC8+CtqWcmpzBM+Ez72ic6vB91xQGb+eW7YWGjhv+kG30hVpwEFYZyZwW7eLqM1swTRE9p0GBGyEmcdxRLh+3pxCwXnH2z6+sur4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 03:52:44 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 03:52:44 +0000
Date: Tue, 16 Aug 2022 20:52:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817035242.zcwt2rqgnkgekpmk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5bf65a20aa1fc7be74eedd57cd830136b867a54b.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <5bf65a20aa1fc7be74eedd57cd830136b867a54b.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0017.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c328708-5bda-46f9-a7ed-08da8003f103
X-MS-TrafficTypeDiagnostic: DM5PR11MB1771:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pLg6AkANuD4Mc4yyWg3mbSUYhhSGgtKoAGNg+EOmBc8yUZ1JIYB95USRuW1jqeiCL+efDA/mwJRiR5EgdHjkdBhD3CIG7caOf6lAELnm0l820rLTJs04Qiv2TeSmY+ubdMHMyFBlKVLpK7WcKCKMMQEdiJJ8gk3HakhTmnIP9xYnfpBZensgLrF0wWNjSjhsd+bjoJvcAl/0Aq57ABwNSyNNGCygp77HcXqae7sxwz9If7rMGRc902suFAOBYqcZSBVNKQD8EwhU9Ll9S145H7RunCSgBoXMlheCT6mv1EsYmWRuwNGBasmUOAGkxg7svjscnljGqOVFnVMjO57UkZuuAP+j3KnUwPGyUNSvLVOHjKryVTCNSHlmPQmk5EtMP19fwZUhLBiTfgrV9qaNyGVpkUYJIpyWi1cEGBUg6krr1GBD2Dv1m+eOBzE0i2W4YIRU2X14SUmYe2EROaEtP0LZ4oFWRJvksbtlww3+KVjCziyLWMqk1AueArQ1IjD50PCQuavenxh6xNNaJcrPY9zqcgMfBt9xOiIomti5nuKxWs8o7qro+Zwgp3FcbQxVTho+SpcWwbPkuD7C5Thr6HXx66/uleuU5+BqzxStJeTd2B7eZNGhlwVdzFgjvkTkM6w6kejVgHEexQPc+nCDbPfikZAiHdfkvdT/asiXHdnzHxVhYZ4K9vJPopKQEulPqXPgqDDH01DjyR5bVmxangIYUt2jQCIL7mO/8MnWaIFZWCJbcZtD0inzVB1El3gz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(26005)(478600001)(6512007)(9686003)(36756003)(6862004)(5660300002)(8936002)(41300700001)(2906002)(1076003)(6506007)(86362001)(186003)(82960400001)(83380400001)(6636002)(6486002)(66556008)(8676002)(4326008)(316002)(66476007)(38100700002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DcG2odqAKg/sYc9h28zHocNhubDWhh6xO7qz8SVaL08YEqEoHLX9EW1mI8kA?=
 =?us-ascii?Q?M54ZOQyUN6dQ+CYsexIsCzc0PRv+qOpG4/WwLzQHpiYljjBuTGmMb/HWq0sB?=
 =?us-ascii?Q?tt5GW2oFrFIAJz7yqPCfMEX1kQlsZP/IorsJseZ7S6KGbXSH1Sjd3CvefUKK?=
 =?us-ascii?Q?uTG+SVebpw2+ybjQMEyy7nM7n2qz9tIXTjhH/+PyjfhWiQdKviZQcatu0kYb?=
 =?us-ascii?Q?NUngb3e6ikLR0tvJv3WMJUD9APmH8mmlB9hsQefKagprjo1++AEAgOB/M8Wp?=
 =?us-ascii?Q?++fxk+ZcbX7RKJ4PbdZEfk03iaLzV3JaD38Xo3ZNtYQ79hV1Zq1d/aHH5Mzd?=
 =?us-ascii?Q?aObemIz9hFsznn8JL9AA+czKuMQFEnkP4DPmpxxJ43MB6k0RSS2+5Yy3jOGo?=
 =?us-ascii?Q?A1beQVM1OLPltA9LItOVfSVTUVuvENPMlIPR3c14u16u6xgKxI5THGVPFRmr?=
 =?us-ascii?Q?b3S17tAsRSPolZYko+j/lIpB1PZPWWp9+pZdLbABVuO4f9u3npE6D1BCt1Yk?=
 =?us-ascii?Q?EiwPOWPK26+VoDlGPKsdmLm9ha9Njh3WnFF1fSznClk3oxlwlVOk9n2I/5ML?=
 =?us-ascii?Q?+vV17ctPwgXOVXLnBnWJ2i7xWwQax62zaXEU6a5H8KYCDBwX6HyyqZgz6vWa?=
 =?us-ascii?Q?8jDpJ6J0fpahrdUSRU8/n0flug6FPmkkvgbju6ZvhV/x+ZQjCEdpmBhMEpBx?=
 =?us-ascii?Q?7zOuoIr15TPuOvKYmVutrq8C9YP1UuUbroL6p5PBtyzUDEnKiKy4gKhrpnGO?=
 =?us-ascii?Q?V8Zdykjb4xQ0s5SlaF1HqcpzHmHHkFlamwJO3GjdxHO5EI6QBm6HTHr3XhuT?=
 =?us-ascii?Q?KeRPv0T+9SHT1wSBxtz6G3k3wAhmUP0YugS5/HgXL0b9phzyyz3h42emlEBZ?=
 =?us-ascii?Q?Awh6QY/keI0DSxlld0UjFgF9b8X1pqlZetJsW7qiLHRklcDMuSyfmi1bMzXI?=
 =?us-ascii?Q?nZbfdLTaefae22n+PaIfwY5FqDyVVIhjJKi4QkvfYR3bamSu8xINtRwNgeKO?=
 =?us-ascii?Q?Pu8SqFIUaFigLrzj4SMSXFJ47iZQMHimToztvZhuggEX49OHoy/45Wi/iXLk?=
 =?us-ascii?Q?cAv0dnXo9lOeKZWuUtiBIc+tWbvU4i43vkz+7qc0p5PmT8TfrD63M4UFkNdL?=
 =?us-ascii?Q?FxeC8VfuuYPZfQ7ResiIhCaAfdC2qXU93x08VnHvbopRBdmytY+zr52M/zVE?=
 =?us-ascii?Q?k2fEWYegym2Q6DSAtgrR72RivYrmxPD5MYICvJL4BS+IPRsLzOHywrKzKJ09?=
 =?us-ascii?Q?R9xIUIMfYtHaik7UQqG5BMLQQDXD+DNBmUCIDlrPgjo/zM05bYQsVB99ZBaA?=
 =?us-ascii?Q?Wi/rB2LfzZI1v/WKI0nGUKiX9PtHu/YlmGIIE4mrGIQlVtDmFT/8ZDT+V9sd?=
 =?us-ascii?Q?xQV/p33SgxBPFE2I9qZPpYfSvTKxSk4RhgTrIUQSVe/UKoQjzMf9Eax8yXtF?=
 =?us-ascii?Q?XJ5BzNDbJ1CjmwODXtEJkjRadxMHcWPhqj3idZkauRBqtfHlqqHENXtz2JUu?=
 =?us-ascii?Q?3jMag6xeus6OcilljWFFdVYCeMRlX0vba5l14BIKm4+X1i7IjyvKiFCcHpag?=
 =?us-ascii?Q?ppv/WcEv+2dqzWAk13C2K14irWiMVG/+OSk++nZuDucmLbLio/W4hFu7Hi8Y?=
 =?us-ascii?Q?RA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c328708-5bda-46f9-a7ed-08da8003f103
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 03:52:44.4714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WHuyctNzC2P5oJ9HY7H9UNVTtybpehJQ2D60VvHi8fKVDfr5EDYz6mmwr5VNFhAnmYGCqT9o6xHRSjWf+AEp0fWZmfke1ZCp98tAWC8viUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/39] drm/i915: move color_funcs to
 display.funcs
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

On Thu, Aug 11, 2022 at 06:07:19PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_color.c    | 34 +++++++++----------
> .../gpu/drm/i915/display/intel_display_core.h |  4 +++
> drivers/gpu/drm/i915/i915_drv.h               |  4 ---
> 3 files changed, 21 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>index 9583d17e858d..ed98c732b24e 100644
>--- a/drivers/gpu/drm/i915/display/intel_color.c
>+++ b/drivers/gpu/drm/i915/display/intel_color.c
>@@ -1167,22 +1167,22 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>
>-	dev_priv->color_funcs->load_luts(crtc_state);
>+	dev_priv->display.funcs.color->load_luts(crtc_state);
> }
>
> void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>
>-	if (dev_priv->color_funcs->color_commit_noarm)
>-		dev_priv->color_funcs->color_commit_noarm(crtc_state);
>+	if (dev_priv->display.funcs.color->color_commit_noarm)
>+		dev_priv->display.funcs.color->color_commit_noarm(crtc_state);

similar comment as for crtc. Maybe later we can remove the color_
prefix?


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi
