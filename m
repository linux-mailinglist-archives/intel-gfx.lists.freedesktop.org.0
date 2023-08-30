Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81E778E179
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 23:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8AD10E14D;
	Wed, 30 Aug 2023 21:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B5B10E163
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 21:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693431072; x=1724967072;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WEuoat63e2Yvhz/Y8Dir0o8OyidYDOHD3eaNGwtK1ks=;
 b=FJMef6oAQD48U+hDZyJ3DTfyOfyaK74Kn0h3TXRD6RmV4hhM0zx0p0PJ
 BykluxYcdgDBLCs+O5lJgDpqKWtZgGNfttFpZZvdok1+fKrmwQ8SB+w9C
 SnDTPKCJPcVCShEXvJIKInUmuwwf2L3qCx7dpIRJ/R+e0d8918uD/rCZf
 Rg5mp39QLZAt87m2F6Voqoqwdr5rhxIJ+34PmY0VwyZIIrUmgBVqHgMaJ
 Si5roooUUZ3H1f4O3e4pIbUrqwJ6wn8ZCGf/iN7eifm3rVTlr8VG8b5Ff
 +NcIei6wDgcDRWIfOvhJfLnRRvVLYkYfqD0cesE1hW4czZDLCvj923fWE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="374666045"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="374666045"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 14:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="739228072"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="739228072"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 30 Aug 2023 14:31:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 14:31:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 14:31:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 14:31:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 14:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gyR2PWGY+2V1joEcSwTq/R6jPa1ZVa07WfUY+InoX3dUR1emPiu8gyHkK+n1ENoCHBI1IO6DTF4hZk5rcKjpV+YipGAETXe6EzKBJqRIbhLZ/CB6x1a1lKgiSuqdTAAOdebu4zHKUcqhGXRL2RH+ycmSak5wYPZCEa5P6EnwGsFIZbbhXMBkXN9FlXF1+Gcw5W9rUnRJ2lhf85Ywj1ApqPfeHI9Dt5zcRDmdAfGzJKOuNVj1pwPlS6OkGD5uGnb6yeq//ntH0mYc46l3NGQPIVX8VCdoI6dkNUBtfnXSUfQntdmzQxgkV8/Lw/0VbMQE190E7FXuSa1qVNOwy95yOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KNbJV6J+OaahVgOSTyxNAeYm3BLvXyrXn3sYDt3ROe4=;
 b=e3aqVavcURFLyb8ur8RPtPlArxARbM7rwbjqH0fvy+90o4PcpK6BvbFXfH8MiMi9d941SlJ8sno4uR79w7A23p0+igC6CiEwBHQFChgKeVdwcRgMBWYx8ZQSb+MDKvG1tiikqS7+0p4nFo8EnXE491N3AEGtsbtp9iMEv1r8YbbSMa/TsKiQeOve0p7C7Nf1QOJSZyD3e9MRnbspDoHarEV7EraTBVSjZU4I3XpngAHobN+I3/8dRE5VFrQ+jL54GQa7n7KiKYhV+28dIHHL/dFvt8XMc/QLR+UoYozgtixi69aRUc3za9mnEJWHw7w2LxOdBG5A4LFuExU79MyT0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.20; Wed, 30 Aug 2023 21:31:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.020; Wed, 30 Aug 2023
 21:31:04 +0000
Date: Wed, 30 Aug 2023 17:31:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZO+1FL9UDbSbPuRz@intel.com>
References: <20230830140421.2031111-1-imre.deak@intel.com>
 <20230830140421.2031111-2-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230830140421.2031111-2-imre.deak@intel.com>
X-ClientProxiedBy: SJ0PR05CA0179.namprd05.prod.outlook.com
 (2603:10b6:a03:339::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB5990:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d2e9c28-4db5-47a4-fc8a-08dba9a06a19
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VHTWqrfRp8f4sK9dCsrvITJRVPy4Yfjqs5WrlsU37KYYdgowO5LhYefaqer9OU5ysRp2sZK10KNBxN8ofXZdp9iCCw15rh63xNybZs5W4wNUSv3y1266MwavkKhctqaCDXxU4S9AUHPShzjGUaBwCsas+Ukfc1DVDa6BnQuG3OL1OO/XP7syQrfCf2cTjXMzla39BJYCcZeFNTgs8QytEbtAYh8FUezLU6yMzIKZpuchgOTucUSWq+7JD2QA0NL1h40oxWI/t3lBSDJRJRYDVbFFYP/qJesTFtt9zZR4xdqxi3t+EKiIqw8cID9NJHFsCnQPstOQrEbbg6hQcF6k0p9hgsJbpWPuR8P4Z0QM/CWOgBxfQZf1rp/rdfkVcK1xfaZR6gGida2zzzhMRjo1oJYyLWCH314oD3G+VsfDnMn2g5fMm/STsE2zPrcob3oUZUMb4NywCkFFDaKcJXOy5YYdHD24FCNsCUI/AK+pph2sq4pBvzDjbLcWdHyRDYbsMkuoEfbXtZ59vdvFKHo84hwFufqynh4TQ3DVuuOzXgSbGURCV4FdnfeNFSbZDRCsuGGCWi7oTlWWaQv9tie0knURH8FA3ja4o/IhmCtRWUI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(376002)(39860400002)(136003)(1800799009)(186009)(451199024)(2906002)(5660300002)(86362001)(36756003)(82960400001)(44832011)(38100700002)(6862004)(4326008)(8676002)(8936002)(41300700001)(83380400001)(26005)(66556008)(2616005)(6512007)(37006003)(316002)(6486002)(6506007)(478600001)(66476007)(6666004)(66946007)(6636002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XZVhaNIlD+cEWPs0nrh5bSPiOGlrFAhEYbKKNvX5NAf5vF7Ct680zSlCwV8I?=
 =?us-ascii?Q?oWQuA8Ey63sY+tbM9THHmq49Xq3VcqujbzIUaA9xsJzdPMmwK0AFAQ51jXb1?=
 =?us-ascii?Q?DLdnA6uZL2I/FgAPE9O0uecYiOlqA47WSsULnCw0KL8d+RZpWTrLqGsIvyP1?=
 =?us-ascii?Q?cVSt+MX/Dmrt7AK7iYkVqc02zSOzp5nlX/Z94EfcF43x1anKiqYFobnlJATz?=
 =?us-ascii?Q?bvQmmf8/gK+JmOGHQxJFY3kQ0PjbUy1i3AkirncuytzqpsyuhxbvGa6/GFao?=
 =?us-ascii?Q?+uwbgf7Yc2iKotHbSvy/1UKSGNXLs1CgFjZDn/xjuCwGfPUDzcwrOsqQm/ow?=
 =?us-ascii?Q?sTxS4BDVYrdDvsuROYvyGac8tdBzy/rhs+0KwXCk0Egc1FaEX92HZoof1DWW?=
 =?us-ascii?Q?a15DCYNOfPbJhcVeLK7KEGiCnHP2wpVLITyLB8DGOVH/hAGXTtp5q/ncA0JS?=
 =?us-ascii?Q?bJC8BTpR5obfZHyBzr/De9UVElfmfNVNFIqPhu7rruIDh5gAL/h7BGojxcwY?=
 =?us-ascii?Q?YCTOM5TiHA5rqfZganiMVxT1sQRZvUfmnNqOrKnrr4vvBmIy/niwoHinpFb3?=
 =?us-ascii?Q?YbBTQixR54mm5lXuVOjqHVHJHZwa62l1T9rj/U/j7V84H2zm7FsBgrYZj4Vx?=
 =?us-ascii?Q?19QKYUvlPbWbn4IhwNyLxwspMKP51x81h6U+RmpEsvyX7hJLahEAepBzuQkp?=
 =?us-ascii?Q?xphrPu9a36p6H1X1OQGWdVZm+sX8g8BCVpKDHN4k8v1h+YVDVaB7JdSD50Vl?=
 =?us-ascii?Q?Jz9bGx6GJfzbQPr0U2dLs1TbbD2DVD4jNEdaVVG6e805YkKazNPcjF3O55Gx?=
 =?us-ascii?Q?XcRdND3A39rK1fZXgFOkTzBIrXQ3Ykc8OkYOVNpWPWs2xxoK/ZgSqRRJQaGh?=
 =?us-ascii?Q?v7BDYSGE2JYoPavdew5WBCut97NRygZTuLhFRabdmZty6c1YlJUTL19D0fIT?=
 =?us-ascii?Q?SBJNLbU44hCSPoQdM2u/hCNSmWmGdNIEv07lzT8ECEw+xYnotRKkGf9kvCz5?=
 =?us-ascii?Q?UDvM/Mww7rwTCB1f24B0YoptgeQRXldZPm67j3yeozRd9PXvZJJXnzJTRPv/?=
 =?us-ascii?Q?a4yU198bXqxLH4fi+fLenCPcjv9cMON+NlRwAJsTKON9A8R7rknA9Ea8zJjq?=
 =?us-ascii?Q?ixLoCb54t4/39oPUD3FaWjX1vVwF7I5JolQmQyIg7OTaCyiRdBGoxTIv3AmN?=
 =?us-ascii?Q?3WIOcwUJSc4HDnci6ggZNyfPpDmu8IC/XM5qbpHRj4TCxcoNVrxTWJONp6BY?=
 =?us-ascii?Q?I9M/oAwRzQ4BZBLRQVf20vEaQgIubaWd+eYTjHRfE01nqIzai59m2Ycrt2nU?=
 =?us-ascii?Q?clUuwFKkz0TFf36oGMOwDet/m1RLPSOiTvxEbMOeGdmt5IqYe4Dl2dt0I1zh?=
 =?us-ascii?Q?6abmsBfEGxUkirJxkDk34loFoSmzAa1ScNfDVpObmVOh29djfL8AqKtu99dR?=
 =?us-ascii?Q?tiHo5TTEM73OhZ6n4VZbkZ6lRGXKJ+6popYbMWXrFTNGJaG3Eg43ghfw6+de?=
 =?us-ascii?Q?Kgx0/H3+/vJKJEVPsPD0T6EFyLfSEX8JBagZitZbolMR8V0MNBzorf693g4g?=
 =?us-ascii?Q?p85J5W9UDz/kO1u516X/Azo2ulOngu6ScK5bEZtyqwqEXPBPBxnfWHQzsOOi?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d2e9c28-4db5-47a4-fc8a-08dba9a06a19
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 21:31:04.5773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ppOCEyy3+kvOuV8NtipUp9NCs/yxjLwz+o5MM7nQWUqkpA1w0HFfpPuq8syEtK9f5I6OSYUjqi5h6io6EhbDhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5990
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add TC port lockdep
 assert to AUX power well enabling
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

On Wed, Aug 30, 2023 at 05:04:21PM +0300, Imre Deak wrote:
> Similarly to earlier platforms, assert in the MTL AUX power well
> enabling handler for TC AUX CH power wells that the TC port using the
> AUX CH is locked.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 916009894d89c..820b7d41a0a8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1794,6 +1794,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  					 struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> +
> +	if (intel_phy_is_tc(dev_priv, phy))
> +		icl_tc_port_assert_ref_held(dev_priv, power_well,
> +					    aux_ch_to_digital_port(dev_priv, aux_ch));
>  
>  	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> -- 
> 2.37.2
> 
