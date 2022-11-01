Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0226061541D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A320E10E41D;
	Tue,  1 Nov 2022 21:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A252910E41D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667337652; x=1698873652;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JYlYy1pSGqZjG2qHjIah50iuStYqNPpVvYLTa0Qm+dE=;
 b=dZNs7pWINNSO8Id5B+Oyz3X+C8wy99J2WCsrEkSOeqgXLL0plqoMEVZK
 FeaFeSyx1uVtIxrfw6yyjIa3MgZItHfF/m67c0HCF0TboN6HhKjWKa0uX
 1wgo+vbXz57GJOAJO5X6PAC8QhU2S938ml3xwC7sIIWjtPP+t2SvfPUls
 lBFTilYfFGQu7kSXfk1dpFRQE7t5O8tqYDQ7VHgS0N7jPD7DWVAAwpE8X
 L9oAmgIlgiD0eTJj82sS66trtpn0iF1UbX0g2l7HMKBg5ii1ZYvsAvFJ6
 UlRmDnH4Xk8cfDfZaHLp35b1TpFSlBFSE3i56uJ+U907sGA65rG30dplh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="289632526"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="289632526"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 14:20:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="665293938"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="665293938"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2022 14:20:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 14:20:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 14:20:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 14:20:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a85f2M159kPsT6HKCwbZDa5InY4oSnddXuOWLIcFeSL1yuJfCh+TYwy1vAE7OI+u87IyFw0xQwxRdBm3RBLca/k1XCAXXBg1vxnmLD627Joa+35SqA8ERy5As443EoTmayOjx+Hs47dfdubBotZzIDhvZKVq7Oq4DlEcj5dFfa6XVUQWVL7x+R4SjozB3IxqoO3MRQKEv58F4OTxNkYubMNIbL4Qp3P8ouljDSzS5a8TnIQ2HwXTAmi34Cm+rZXNr04PDb0d5r4W96n6MGCBjCmFKXrxmehcmTjxqWLnbohHXwXcSdVqPL89U/GMxQ3fDLlmoA+zKB3+rcPTai6HaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jh/X4L2iKHAJ2oywtmPMf2DFn1/+mXp47TDGChGCF2A=;
 b=O+qOzuALhybgMYfT52mJHsoMxWp1Li81AOYjpprwe3Um6BJTvTR1atmfy4jTFGMy/cguH4UDgxsSXTZjHJsSymLMwSS3rf8cWvE1bjrnLBQ098qG1PM66T60BIyg//4JimckwAA4Zrz8NBhxs23g70qC+PCZzgvDy37l0tI4QOY1/RQbtRgQAnESB/Fp9ESh7NNYTlksSi6ec3ivx+4T9fCU9qPNQRVKD4C2gocWs4XSZH49cnJgPJAVet5Eo8/zSVcGzDTwUpHp+7dDULg6Ahwkg0S5q5ROT1jmvE+7fb64MmiAi2ONPO/w7tmKm0PH2gqddFeb/RJ/6YzYo75G+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by IA1PR11MB7197.namprd11.prod.outlook.com (2603:10b6:208:41a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Tue, 1 Nov
 2022 21:20:48 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::3933:ff49:d505:3fa5]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::3933:ff49:d505:3fa5%5]) with mapi id 15.20.5769.019; Tue, 1 Nov 2022
 21:20:48 +0000
Date: Tue, 1 Nov 2022 14:20:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <Y2GNrfJJ/ryBY0+9@mdroper-desk1.amr.corp.intel.com>
References: <20221101075927.15146-1-swati2.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221101075927.15146-1-swati2.sharma@intel.com>
X-ClientProxiedBy: SJ0PR13CA0182.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::7) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|IA1PR11MB7197:EE_
X-MS-Office365-Filtering-Correlation-Id: e341aa02-fc95-407a-73fc-08dabc4ef1fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WZChsmbhFrvQJDxt8rDIY66oD1T6HW5/XWGFbBeiFg8M1zqAqqF3h1GoTVUXLaOFnVjKdpR5knU7hTGnqTS7U8EE7wLY1YI6OZhp1mk1oMNEnhL50H3yIjuT44TLeDWHXxkGAUSRGiPQx2ihUt+QyW+riaTDPcyDi9Nm4n4t+JhqwTAcKbOCG0l1Fza9WgSpmSebbF1pdIp7mfYTGkXt1Tqp9JaBUnBFFUVDvmgcnorArycwNdKpWQGvJMRIGogH4mxEmmff2diI/BZqAIHdw5HPiF7PzS/qWg3j3nGNvjWOmaq/dg5rDTIYbF3oV71czcDLKVWLv7ur/YiW2DKmIvspCQ85/8785m3CaHZtZUC3eiIeyfUH6JnOraquUAx1jLZp/Grgbup4PhwGC70qzhqYUXUQtcnQQQ8l912XhxyLmanwvSVVJnlYX26zAMxf1HDtciuhVhjJULkLdqF7qEmMbT2pM4wyHH1RhUNOz7nxBjRjC7Eead9eJSGOFhVgf2jQJ7687/GQ3ZAoj86ic1n+gk9Y37WCrHlpToo+r6hxa5T1i95vpqEFj/i7Eq0UR+xuMeaCG64+j7wW8qG6wraS/XnuJW6TaDkETbhlP03qEecJfnd07g2tcbpX7r/0OfLl/X5CbtHsEAxj37i/eDoZgVkTQD4Dmdpq9WUVHTE4It9FMIvkehkrNfxwl9gsmdNBH0QODJHtGj27ij2Mcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(39860400002)(136003)(396003)(451199015)(83380400001)(6666004)(2906002)(6486002)(478600001)(82960400001)(38100700002)(26005)(186003)(86362001)(6512007)(8676002)(4326008)(316002)(6506007)(6862004)(66476007)(41300700001)(66556008)(66946007)(5660300002)(8936002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G2OV0nW9cD2sBrI709SzcJK3t1BN91yd/nmPOp+MeYLnXldxpaVebx+Y4Wxq?=
 =?us-ascii?Q?a3CIFozey1BeOSAJ1RJu12jBrW9v0ZfNHGXwp9rxBv3i4CF+33sYV/TQBJ3B?=
 =?us-ascii?Q?DVY2XPgkNpTiGJD5ysbI6cznT5ZAyCpaTJY5o+GegeuYLeH9ETWhrXRcYPC+?=
 =?us-ascii?Q?bPfP/Pd7tQ0m6mJzKFB3cdYAxBhv6AZekZxIFGk8NVrPjOPWl0zKO9u4W9AY?=
 =?us-ascii?Q?J55bqgrYrUM8F9+JJ/9XEq5/ur5ucTuuQ/zVUdZIqlRMYaH769jFF71lyj5c?=
 =?us-ascii?Q?sD2fSmNH5tu2KlWrhnqat3xS6vcwmjBs54ROiFCfON4Wq9Q7vqUm0rMoHULY?=
 =?us-ascii?Q?F1AHcbLXZzgzPWLksMv0NnQjrP7H0TnPE5ndGmihTVkLSFtPB3RHcayeRYe5?=
 =?us-ascii?Q?zohgFS3YQYiImjslUzMWrKXXBIRXOSPyndrARokQl8sNBAkzu5QMnX0S/8Vi?=
 =?us-ascii?Q?Ce5cWlQh4CWg7h1wWDG1X82n/bYAf/AKqOtiDvJ9ARzRQoWUIXcg/2GwbKc1?=
 =?us-ascii?Q?BVnwR6nQsZYGPHuw7Thd6L4vM+aeI876qzMPi6CYg8hHJCnBuawysygSroI1?=
 =?us-ascii?Q?l/22q393mQNbsskeHFs8+3ZgXnoldbE9ZFYVzU5lqIFMfrbEX4hY2bnUe2JJ?=
 =?us-ascii?Q?p5lDe9nX7y3NU6kc4LMuM44H6ToSxiAMoNYBs4QFptBsypQTpLeNjwj3iHgu?=
 =?us-ascii?Q?K9a4b3rF13W5WEhOREHe4XShkk0lgcvaTj8f7wDf98/NHvj/NoLi7Y+tIemO?=
 =?us-ascii?Q?wmUo223hHwVstmI3pyskNufeCWjzZ9bDoJAEDbY4X5tIiBoKScL12SGXEbIQ?=
 =?us-ascii?Q?mw+1hMH7l5NsEBRtCMe30SFsjtJA2WM+tdkJ0x+RAvtE1A5WVT5ct8uu6eRa?=
 =?us-ascii?Q?KftEAF49rb/XcOxo8ovaUuHizN8dvA7jr5LWzxc8OMbCGuw3kuzj3zRoNhh8?=
 =?us-ascii?Q?voEY8K4pakqOHHTk31h37/gZyd3IHzaT1NeRyjh/6v8+L/tfHz3g3c4wH+qk?=
 =?us-ascii?Q?1OwKwnECCcyj5MjkJpoHgfb4gWQgSV37BwIQAYSd4KOvlUnjndOx1fBmymiw?=
 =?us-ascii?Q?HW5iVSbFJI/ZB/KToQDeofoNxPviZ6aL77Ic5/DNw87m9oMso//uK0kRvPX2?=
 =?us-ascii?Q?mD6Y+m4y0GLfbrwy49S5vjNd+bYVo/5PNOmPTDZkO0nvQLfQvUajs/uAsGDu?=
 =?us-ascii?Q?p1R5YC9bqZnM0LXYl9d9AZniCck1LkNdR2uXivZzZkm7oKo1/UkGbSEUSkdy?=
 =?us-ascii?Q?FSCf5mXD3rVbGpXbhEdoIuXFZiSlzHwfTRvWNpn3BXlNc3AGi5Bx/gCdBXRs?=
 =?us-ascii?Q?F2w2zSdcsYatadmsrleCVulg1GfNnluzwnUO1Sdx+qv0erabNj004DiYaFPT?=
 =?us-ascii?Q?SM4LERrUuUZwIA6eqtgzNCEDTMgeuLrG42ZMjvM15ro8aiO40UN5CR5tTMo2?=
 =?us-ascii?Q?8yy+pt3lKKNe/nF8VZhU5Qx1s8WIwYhgj6Qd4K+BOHKL4EfYzQxewB8DpEYY?=
 =?us-ascii?Q?5X30+ia4395Cr4ANGZ3NxL9X5glzWlr9CvMmdQqGcaZwd/NpS3RNwUEnHvGx?=
 =?us-ascii?Q?Dsw+ykxb4qW5YHPEpsnqMoPi27NHnxIZEsc2OHT2AEmM5xL8JGT9/v4X97oS?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e341aa02-fc95-407a-73fc-08dabc4ef1fe
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 21:20:48.2614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1d43Y+dG+AXQXZ7hxQEqRaA9eBe0E+8FPfhZsLlr2DxoVgtkHn5Abc2JbL09icMmYodjZ9JkVmv4OGo9aTLYaTvaa0SLflQYrY6ihoUFPfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Source supports DSC from
 DISPLAY_VER >= 11
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

On Tue, Nov 01, 2022 at 01:29:27PM +0530, Swati Sharma wrote:
> i915 driver supports DSC from DISPLAY_VER >= 11. Fix it.

Bspec 19713 indicates that GLK (i.e., our only display version 10
platform) does support DSC.  Are you saying that there's other GLK
enablement missing in the driver right now that prevents DSC from
working?


Matt

> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..02e64f0284d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>  	 * integer value since we support only integer values of bpp.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 10 &&
> +	if (DISPLAY_VER(dev_priv) >= 11 &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		/*
>  		 * TBD pass the connector BPC,
> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	intel_dp_set_max_sink_lane_count(intel_dp);
>  
>  	/* Read the eDP DSC DPCD registers */
> -	if (DISPLAY_VER(dev_priv) >= 10)
> +	if (DISPLAY_VER(dev_priv) >= 11)
>  		intel_dp_get_dsc_sink_cap(intel_dp);
>  
>  	/*
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
