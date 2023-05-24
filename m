Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D016870FA3F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 17:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8E810E69C;
	Wed, 24 May 2023 15:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECEF10E677
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 15:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684942492; x=1716478492;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vMBEv1it7rJxjwqDpQyuYZmIimwkJTjI5Z+dFXTsucc=;
 b=c4ReaorjiqW90qrZIkqre6JEkgVwLwcO2NFRXxb6EgmqopmRM9MYzzBw
 LBsIm6LHweasH4msYeBDzl1YeVNltB/3evfsLJ7xspJRrfR3yl5zQ1X1x
 6fClg6jSfJjzzDvia1NdRdICVPAqRgDDYURkzEDgccTz+Wu+6LLtySTQX
 kgcSIO6a9ILDq40Y/u5KfdTHWLJ33xhtg975q/6k06cVx7F7CP9f32voL
 gRGbwKlq79/Os5fs72qyU+thfv/lVoNH3q1grllf7n49QX9AMSI7wgFn4
 FH717o2S20qLny8Q95+V7Pn6jA7q2yd/hSKmmRcRv3bbifuqVb3IhbNSW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="343066245"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="343066245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 08:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="654840117"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="654840117"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 May 2023 08:33:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 08:33:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 08:33:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 08:33:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUhX6oesCqlL/1DcBcv3qLVe3wgXnipg+5rbEeDfSbNkiRnxBlDaHqCVDIu5d3RkeMW8eQaMx8sjtMZ6wpEGZcen8GmxUFLwDey38Rr/Sw5alP/+CZlClI1a083RoGZ2BAJqSO8Ey1Z/+HiJOTL9P3tBKtf69PwAf9TLmpTLB2uTjWaxm3WSaD+OsBs8CPCQqxzGr7CpmXry0LMOtxTT8YGfRrY9Vb8loLsss0hLPeycdev6k5P5hl8jOnMthVT3FJATO6qF9Of+q9X9ubri1xWuEgT6gtp5xS1ng/ba6I9ZLl7oR+wY0EpJnz8Wt/WO+zugvG3kOsUIsBGW4849Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7G8se+0mkU8zuwkM+WxTnugKt7bGvzmBoubKbD81FJ8=;
 b=G/Lifie8ZfUqlYfQJg8RZj1CtXvu4YfTyNOAOnlzdhFbNJOkWhfDzfOdnRr3+DiSf8v19hKDjuwzU/IXu3M8CpKhZfvbQL7e35XSdBwEAjqX1NOyw5jlQwBvt9Q11mRvnouXkmu4vttgm27ubspTkagnt3JKLiRNvP10JASXKpoCX2KMvaP6TWZGPdkn84FhnFov/+eI9DYQoM0HP0vOPGaAhnUcEy+SieCcn2z/vXiMpBH77Mcqtrk+qTgZy5EzlScfKzVFMmtSPxmmfpCuquqbKKXPdQ+kWul1Oq2zFhWgEWLltL66kfS8+Ee7GgzIwC/mPZB+p91rOZi0YvL0og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Wed, 24 May
 2023 15:33:35 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e15f:6c7a:7fd1:d63a]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::e15f:6c7a:7fd1:d63a%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 15:33:35 +0000
Date: Wed, 24 May 2023 08:33:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <5tbzeh6vrythp75mr7mh2fnycffwcb4tzzki7tw7qniwuogw73@nnquaixfpqga>
X-Patchwork-Hint: comment
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
 <20230511165534.10266-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230511165534.10266-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0046.namprd07.prod.outlook.com
 (2603:10b6:a03:60::23) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: d665a6b9-97b9-4f70-328a-08db5c6c3cbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ruWFdoLJCIks5MQLaYFq/xbOzm8dKJZujByFE11zWuj/ck31Q6foi7cfFwx+lmp5EKcFLmp3xAZ9JmjfdgZDgbGofSsQPRjeVMroLdkNrTHDHFepEvukwKoy+InaCU04J1jBn6UrgsJ7taLDgBGa1xlhIvkZtChU71Ex/refqt/l36z8e9itHkzhrDBheL7bAVxa5qhCnvYO/4m8x1D5HJBEevRYTnThTKn/VpWAoIYsuDoISLAHSGwtiZ5IAnuo+BVqy9ddIVoF/z8dLe4sCJQwrGAk7wZZtyz4Ls1xUfCAxiENZ7WV67BN5emu19NL9GvHgo93kKq/Wzb5IDUQZCXvbXuc2CU+Ov2lIl21MjM99DUl4/+mQX5iDA8HD9domGY7yJW3+/tK6gyI6hadml2YX1yzk8iIomL8SQn/5PF9E1bLaxjnwgOooJy0SeYKfQYxA6znv0Kayucx1lKN4ZuEOL+3nWHBX4a4ek+4NbBY6wWQRAXGGaqN5m+dsgokK5p0g8vEz76iopww7LLY7QD6RYK821YP5lK0BiVji6O0e7QKgLYhizZ0FREMDV4vWLNHvVwbshjHn887gNaaq/JSB00bVXI6gA6XVlPKJaYnfrfZzqO+6sEJUkrVTrxB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199021)(4326008)(66946007)(66556008)(66476007)(6916009)(8936002)(5660300002)(8676002)(316002)(478600001)(41300700001)(6486002)(6666004)(38100700002)(82960400001)(9686003)(6512007)(2906002)(186003)(83380400001)(33716001)(6506007)(86362001)(26005)(27246005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?6kCpO3p+B3dYr2OK6MFpDgFi4G4okpFkxi3IJUV0h3nIYI67vouBwr/32T?=
 =?iso-8859-1?Q?UQE9VxD7UA3kk1VANhwBj3j3zY5X/z0fDs/r2yFeF5562pXWdtgaLJwgZM?=
 =?iso-8859-1?Q?kjX6N4saNSWhRg1U4lmKyRupDTq+uv9opwiHNv8rtBM75oCzVqu5qoZDVd?=
 =?iso-8859-1?Q?cK1XV1pyqsMZk9O8qatEmZZvlhxx03jyvQEJJYa3WU5LREAEvfAHNK9RkZ?=
 =?iso-8859-1?Q?ZcrEkBehsB5Nt7JCkzUJK4Ug81wWrldCPz5vywieZJm+buvJE/1A5ydvPb?=
 =?iso-8859-1?Q?yF+fRaY0LRyGC1c/Uci2BHBjlnQTBkIIvSIqL+KZoKSiwtE/xd5tlJEgBL?=
 =?iso-8859-1?Q?ZaLyWuGtTH5sukcvwvjxQZP+BDNbCXdGz18xrq+VYLCi5kK9POKGHxpxPr?=
 =?iso-8859-1?Q?8jNqlaKx71vNAERqSTFYYGF+BVxdq5iNn8I3mGwBWV3IKFsrviqTxqqMiO?=
 =?iso-8859-1?Q?WZR362aHKLkKXArARmDYAWOZr7tfcXhOUC1zMuOCOEvhpRzvll6kdJyAXB?=
 =?iso-8859-1?Q?cNoDieLM9Ubl2bOUGR0yLSwIEDUrFeE3wkEjbQC7pe57aPvYIR8eSmnHOJ?=
 =?iso-8859-1?Q?rCA74LtC2HRioid/qb2KE6ErTKNrPL+h0Wz3PvFcSlFbc+x9NfLVIJNEKi?=
 =?iso-8859-1?Q?EQMojBbDn5GdgU03dUmtSeL49PDPjnfHU6X8tcitARkm0EtbnRCjRhWbGX?=
 =?iso-8859-1?Q?BvieLvwpRKs9KQmZnvpX0mM5m54U9WJziJYZA2AJCkooLyqW8TjqDjfUpL?=
 =?iso-8859-1?Q?5CYlphbVVsVBKGQWKJpydLW9xqHnUtitCuJdjQjy/wmDKDEaMTY+L1ySY+?=
 =?iso-8859-1?Q?yvwW1VmxZQ7WKSqISirB3srwBqlY+Zgd6nl2j37wt0lsSmjGA6fsp7fAoq?=
 =?iso-8859-1?Q?zAijA4Ig42+vkH4fD44OUSikj8q7h066Kfv3HRzvJUA1lDS7Ve8k2uiP1S?=
 =?iso-8859-1?Q?a3Yuqnr36MmxU4TtgyymzjedmIkjqoQEsf9QTvcfdeuQYaJ+Qd7MTTcCQd?=
 =?iso-8859-1?Q?u/VD868W6yWp/jwosv9Z8vfTTu9y9bLFTIUXlsS4ukwqIIvTjJO506EEul?=
 =?iso-8859-1?Q?dDtFnv71Goy77qIMhYvCwszCsbHf6u8KyJu77dsG4lBMugrS2VsXXVD61m?=
 =?iso-8859-1?Q?dWEXbRxkfXMettKryxaV4Vts2Ajvv2e/dFMOXQBRR9yHoLeKLTFLyi+Sc6?=
 =?iso-8859-1?Q?MEYqRBL2ehEpBmXfIuCKCSZ/6XiPGAOyPrjpAKAu8mVaGnx6SDNmsBc+tx?=
 =?iso-8859-1?Q?yaxR+qQ5QsJys81ouDOaFxFWgjvnnnYyoJcfqjMfX1B6CcduLu2zZOze/F?=
 =?iso-8859-1?Q?FG7aLlp+yAkgLQ1F3AqXD5L0lZ/aCjX3S4yVxLogQK1ZkrA4mFTWP2H4fJ?=
 =?iso-8859-1?Q?wB7F36H+VydKLb7HGfXLuxq1DWt80GpwDhPn6+yzdHk2vfhVIgWHz96Kq8?=
 =?iso-8859-1?Q?jB46iueJG6dU7HoJQkeudAirAWqKf12ovqHLMi4G6dtJpBdY6W/EsMCzA6?=
 =?iso-8859-1?Q?t572siDKTE4s/sctrRlq4jkDKC5i05E+2Dxh6DAGIC4nRQWcRp1150dEVm?=
 =?iso-8859-1?Q?bvc2LMyvYnPeSvuxeQzsohCyb4JAqa26hGUmGcZoJoN5aJO3dWKxsV4+GC?=
 =?iso-8859-1?Q?Rk/KIJploo0j+9/0QuJwwhv8a7Xzb5PHJbPrvPp32EBnrK1Kx6iuDoQQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d665a6b9-97b9-4f70-328a-08db5c6c3cbc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 15:33:35.3823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /uP9Ca2uVban97ZG/bIsuzonjz7626d0ruya/iM4GzkZgKuHy4AsaeaSpjBWlXMTvURW1WaHh3SKSlAMs4mJZTTmjIhJnKX5Tqbn8ZFiuxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Remove bogus DDI-F from
 hsw/bdw output init
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

On Thu, May 11, 2023 at 07:55:28PM +0300, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>HSW/BDW don't have DDI-F so don't go looking for one.
>
>Seems to have been accidentally left behind when the
>skl+ stuff got split out in commit 097d9e902068
>("drm/i915/display: remove strap checks from gen 9").
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display.c | 2 --
> 1 file changed, 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 1d5d42a40803..c1e0d439db79 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7429,8 +7429,6 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
> 			intel_ddi_init(dev_priv, PORT_C);
> 		if (found & SFUSE_STRAP_DDID_DETECTED)
> 			intel_ddi_init(dev_priv, PORT_D);
>-		if (found & SFUSE_STRAP_DDIF_DETECTED)
>-			intel_ddi_init(dev_priv, PORT_F);
> 	} else if (HAS_PCH_SPLIT(dev_priv)) {
> 		int found;
>
>-- 
>2.39.3
>
