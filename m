Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01FA6748D9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 02:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45FC10E0AC;
	Fri, 20 Jan 2023 01:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C48810E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674178328; x=1705714328;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KwQl1O0QGc++c7LKhJx8Wump4PjjFdMAYEzqUGBhwyw=;
 b=cXo5Kr2qhZWPSJ9ZR66rJRmp5s3KNYff1TFxKJPYKhOSzexv7pFs4A/b
 K4IGMumEKsf8DbwMzW4PGoXQs6qly9N7hW3rLXU3JuV1KhZ5kbyrVymm/
 S0hLYMy1ywLCjSWgzzdDGipWLU2XHQ3BHd+FEG9Za/oVW5sHT4n9/qoSu
 jo8DJN8k3/Rgmcclj/2F22M94ngDCn9IMzptQRBBwNSbdUVs9oPDIMNN6
 MIi3p62kKZEz0imUNjEanjn5oh0d/OenT9lBgCNhSLJxUZdkl1TtXHCFc
 gkvKx8xb2pIhXtW52O2Ge1HRDGOcQG2o/1CGm6/T+b4QAw+1m63tr3ECM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="325522325"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="325522325"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:32:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="692697121"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="692697121"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 19 Jan 2023 17:32:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 17:32:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 17:32:07 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 17:32:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4VeVfj1ruKLnLvUBvG+KgH3zeYFvs9fl80qgVoHlhYG+5stFRjLH4DGUwVvlrMhuQjFoGFBQLH7DPBU+0AeAXzy34x/BA97U7egC7gtRx+fT2TfCDEr7StrwlQQ0WApiXGm5Q5ty8auoX+sYu7XHfQ5FkP8h87MsGTFzP3s9waOMT5BFhhSs0klYA/5rMu1GhcuyeFNPUrzmcEFOukMU/Ehx2mLSvU8xFpKuSPSpPfuif94DnKStFBK2Ec++3XbRuIYeaccgJk5nd44Oyt+CvncByEqov4vQvvykOmPEWJtOeKq6Yoa2wn5+O9+ogQvFB2R2URQPh234bu/AM0hGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tchu5NOJ83EDH6YVIqfByWJOaBOEIbo3jAEesZr1cAw=;
 b=Q+58Nk2UPodGWi4EhkJtW8wxRjg8Ye3MxKzbv3sVjFE+/9/qTn380bOZ2PYqhV1MUvcdWAqb6qEZigDShWQD3/8pAp5ZbmuV5tNF/2o3195toiEypGLIaSoTmbGJn/ZP2H1HnngIVpKbAtUN9HRl/ZNb7ivgV9W9tZ+HXtkedd9CCnw1mDUTsJhkvVFOX03XQbuxzaVR+qgf3awkduBoUvmitmzmBaBgDtYbzQd2UDrkunjvI0JRQz+4h1Kd7B3rskHsNbMKsHE2ryo0H3f0qIHYHx2XezVqHOr2DURfpPsCl0F3Pg2QN7JKyzDeFKBgeQnfdSOWnbYSGQ+klW3jDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Fri, 20 Jan
 2023 01:32:05 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Fri, 20 Jan 2023
 01:32:05 +0000
Date: Thu, 19 Jan 2023 17:32:02 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8nvEvHakFe7e2b6@mdroper-desk1.amr.corp.intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-9-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-9-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::13) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB7402:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e1a6b63-d282-494f-93ed-08dafa862338
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kN4r9PJXOjrsdlnzB1dwCfwfMEN3oPcXvHi6AIG496fSz2seLoHgiI8mc3cnKySW5uSbMFXuNQ6M7awt+CWjHvIdqjCNYTCQr9A16kNYsGv3U5QEIdwvxXwGvjJaBIQrqDwP+7EtTe5pw1SkJN7ZRqYcIGH7QOYLpLVrelIOJvJss6lRh5EWqNTVZRo1viufAtkA1h1t9hrzfmvOc+JQ7WAJ0N8VOugSQn1hEigB7G6SH/hRO+d6be9FuEXBMtrfJyQpCNG75Uw8YeREbKeJQtK7/f2HcZ5nmX6bHr5u/HQ4/1hehm7R1R6/98Ne/PXtin9O8Gem4gzGaek1WIjleQt1ly1ATxrIgCqZ2XLhLXbCIKLrbYyHsBhx43LdDPhsfamNVSz1KWMyxkJW3gn4u7JLp+nvL6yxFA4s4Xm9SRTCjTMNoGF4MbTVznMecNpsM6W8ZuUgwob2VIy2r9sB15p06rIofKAejsHwgKppZA0awXgCGahkbkFbJaZ1+/M9+Ahfm4d7DT+vbvo4NJ3BtV9JMCeYNM/T6tuLPLfwtticXbcqGvwX5hA1QKG1kJpgNP3XqdbcYkgB7f+2ivgcVHWY5QJBuZ0+I/UAcF4MUeMsVt4pP/6hMD8zhocwBDYfpYJilH3yPwGaM8JXn/FXng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(396003)(366004)(136003)(451199015)(83380400001)(82960400001)(38100700002)(5660300002)(2906002)(86362001)(8676002)(4326008)(66946007)(6862004)(66556008)(8936002)(66476007)(478600001)(6506007)(186003)(26005)(6512007)(6636002)(316002)(6486002)(41300700001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m3WrjsHaMGDmqThXHlAT/x/HW7lqUogyclbqOuT0hSwX2F9Fi7Mo6uIm+O30?=
 =?us-ascii?Q?4prNa6xPLTCLkzQH28jz9Azaa95gZu59wd3zhRb+qeYI+Xq/7HsNiaeEeby8?=
 =?us-ascii?Q?x5VO77BCqr8sLqiBvGIkfJIxjy4lcrtg8/xa5pXc2tXmyGJu/n530eLAOamy?=
 =?us-ascii?Q?vWCcTgfCebBAxuOEbZfmSgk3D0EPj24SMMyMRTmUTcit2TGjcMkbphCm//qU?=
 =?us-ascii?Q?ENXi6gy2kYbiMpOIw30pYJs9MwgDXwAtHrbjO5IWGGvBqauAwsFRodlCn1Hy?=
 =?us-ascii?Q?CQYknY4YeXLssZAGDovIN9eI5IsVVanalELs6cFDqC0Z7ODVAFECPCIBdyK9?=
 =?us-ascii?Q?pgcHWD8/wOPUiEiMPbpIAIeubHsGusvnyc9uWnYPGEdeLIS6YduGT88HuEQx?=
 =?us-ascii?Q?c40cNvfrSVlOxcPAaVdJbKoKA9tnmfoIVDJdD+WxEXk3xKBxAWLSGuLNp/GS?=
 =?us-ascii?Q?QJii4XPUJvDoW4uHQPapSDU7sH6fF56bLjpVCHctflRmFmnaxZRpx5rfrGJz?=
 =?us-ascii?Q?QJ6Gf/x/47nclQSXyPQXrk6cddhmT+J9KBXGq+L6lYl2OyLQaNb+iywzl6Hz?=
 =?us-ascii?Q?I+TbNkQq8mhxUXwACmbMyQgwYZrw2epJfKoz/b0ovUfLPyCrfPjREimOQkno?=
 =?us-ascii?Q?xUzrjS05Dj5J1Qs1OJQcZp9IjTfxN1L741mMvHUye3aw0EJCbl82SJjznMxd?=
 =?us-ascii?Q?OUPRLUDQiuiecSpzCxBi3OUzjdSusqIUWdV2ezPaUcKs5TLre+D+wxzb5wir?=
 =?us-ascii?Q?occqgjjuo5mNqLlezqc2VxthBFye9XFb7VoRS7b4eqB4AxmS9ERwzfktYBPz?=
 =?us-ascii?Q?MyDGC2pfk1GBpPgadud2OI3spbKx02v8uSps3WIrluuPGvhVDiHLfFohW5cL?=
 =?us-ascii?Q?uzUgO5hhv3qpzi0w0BN7YxjmBMoBy14narWVsRxg6oBMZXsib+FUbrTJkAdX?=
 =?us-ascii?Q?bLlFFMT9oG3XgepRI1vKey6IseeqNYH9WgXUJwol+fpA97EHcr5QGfjc6KUg?=
 =?us-ascii?Q?1tIUDOud/5+bXjs5Tj1pR2Hgl05vhQQ2NxrmSIS/CJ763QI4Acr8tBkOE8qP?=
 =?us-ascii?Q?e7EOwSuiy3b7/q26QF6rbK4GZfPKDejU9PPAelsyG69nUnlHCgO3hsyl62Bs?=
 =?us-ascii?Q?HQxUr/0PaCFPZEyTbRd/35+0HAkE4fUui/k9Rn5j981k/wDx05EBCdRJ4maj?=
 =?us-ascii?Q?9hGRcDuJqqhmijXVK0ESEwnbfPoTsEXZBeSMN1NbcxhoLMuemfufTeL/5E5i?=
 =?us-ascii?Q?EFPKk8ehcVklZS4KsnAFEAkcQkO9vLFQT0WOt65cB2gggSSTg6zEEapXwkcZ?=
 =?us-ascii?Q?kJBvSN1xvEy+X+XXBMEV2mtzsgb3xcOxAswT1mDncGCOrxsPNBldTdOCgTI4?=
 =?us-ascii?Q?uoyzBpdPEdx6l9/Bqs95cgefPI4QYMGfBtArYYALQutfKFtiRZmsofrXTUrw?=
 =?us-ascii?Q?LZmo22fGvsxnx+wGKaboA5XX4yD5ULAChpNMkWri72fP++UwVlYPelBjBi32?=
 =?us-ascii?Q?Xm4VVzRpxT8dLdoIAn73aumzJ2ueyemrC6MZwCz3M26/MgLQA59Qv+13864n?=
 =?us-ascii?Q?OEFhYSvl6BpwHeN/OJKusHqbDVyAw+wbAHJwu7ySErJY7spgjW/RmKqaahvL?=
 =?us-ascii?Q?nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1a6b63-d282-494f-93ed-08dafa862338
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 01:32:05.1381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YysP2khvQdkiYRA0fRfuZtA2FlboCtlK41Af8MugDylGia1i2xX9WMiKruhxQMrrMrms3kPAk1PoLP37ZV/BUvgw8AgMoOOqk98XgiEIdcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 8/9] drm/i915/mtl: Skip pcode qgv
 restrictions for MTL
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

On Wed, Jan 11, 2023 at 03:55:30PM -0800, Radhakrishna Sripada wrote:
> Communicating QGV points restriction to PUnit happens via PM Demand
> instead of the Pcode mailbox in the previous platforms. GV point
> restriction is handled by the PM demand code.

This sounds correct, but it would probably be better to include this in
a patch series where PM Demand support is added; this patch doesn't
really make much sense without that additional context.


Matt

> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 1c236f02b380..6791b25eb72d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -124,6 +124,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  {
>  	int ret;
>  
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return 0;
> +
>  	/* bspec says to keep retrying for at least 1 ms */
>  	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
>  				points_mask,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
