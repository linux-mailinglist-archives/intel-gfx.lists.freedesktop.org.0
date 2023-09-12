Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A7379D489
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3707E10E42E;
	Tue, 12 Sep 2023 15:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399C310E42E;
 Tue, 12 Sep 2023 15:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694531632; x=1726067632;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SLYZlRViYJCEViVKfy/dTfs1KXY5BGcOmygzMN2gKMk=;
 b=aGCseIZfXxuM+VIoK5strg/aZoWXeGjpg0KgcW60sFk+feU4aW3xXN8S
 mpgV9hGqAsOvAGsa0jtM6oX39xSXbXxpN9scJ5QMkCA/FFfhHG/FRaLvZ
 f+8Oyp1ClPb0T3UkywI4gof+l6sMxWloWuGC0jiwOyRekjOrXHSRWoWkn
 6a23HP6eHiiuEwSTgVaV6cKy4z30XqXYh5lpQBXlYZ+0Osx9rXX4Q1iWX
 vEo9uPPgTz9wcWBAJKV4gq07DsPwEZozUg1dz6i86wEE5sjhSpkPyka6/
 uAQ1qgwQMYPOhX2Mf+P8WDW+mx+8PSZd3ZRr7vD98ywphaG0M57yaH4Zo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="409358896"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409358896"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="990533316"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="990533316"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:13:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:13:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:13:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:13:48 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:13:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lvk1/RrpI97gJhKW5IfNCvf9Do+gUVo4DctIgzSVgV7jt99fJ0hWQWfbY/EABzt9iQ0kC9bJ1GPU+nWc39+wYe0CswsQCpWGhUqH9S/kdSyFrKRnSe7TvBZtHLknHzbVYu0JO4Xnp3vbFv/4I6Vz90GO9ci35is2Nqz+hR6xYiN0pli6k8Vi7LaMmpPefAxPa5QlFTc2ludgQ4ggGtPeI1/nLgTYeti0Jcmuykartyd8N3+gGNdXcVkgE30aLiLJkN/yPEWTwFJDj2+aVmIpkSFKP6wtMdaiK76R6EAnRm+0CQjEyT9AkzO3Rl+vYGJbPtFK7Pdj3tJjAu8/nGoQyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GlbIWobO1PRxXKweSrFZ/ueYCSHyjhf58I5EwxEk/4E=;
 b=TNJRiGICaxRtvn2ip33ShGEA7vnz4QZG71lJtKe/I4mTiKQKDGtCmNv5yh87WdAqnNp+A0kB3mETgICBTU0dQBz1aO+C0+C7ZIlDgmWsa7kIPvo5j4atxtPDXmqyPnaNWA6xYgTZvl0h88tLbhON+UVwE1Mkb2DBIWpqJB/HMKGH9l4H2D52hJdhHaYB3nYh18jEF7lbkKg8Cu6tbyWJN+WtmtJF1eGfZ7jih8VIruknmwVvDpN7q3Bldggn1CREJ0gHfPYOZxTk1W/NVMe89wEwjtGAvg6hwaED+yRyv+jEAnHd3ug3aJUHUy0ieSLQeyYA8Q1v3WNArGlHCYyD4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB4855.namprd11.prod.outlook.com (2603:10b6:510:41::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.37; Tue, 12 Sep 2023 15:13:41 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:13:41 +0000
Date: Tue, 12 Sep 2023 08:13:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912151338.GG2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-2-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0066.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB4855:EE_
X-MS-Office365-Filtering-Correlation-Id: 7171cb1c-5257-4f6a-00d2-08dbb3a2d90d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GByMcug0fTCX3iAK8Y3Vq+TkZdIFs0QthqSvBLrTyXEnp2/rPKfF54edc1D04jdaK8YaDKzaVQmQPIDFjNpRl0wR60sOc/klztDI3pVJB2SZAVd1JaFxA7qWtbnipxuCwQrQwVkqpYcnKK56phAHRP7Y6j2SOsjRJ4yeMgvg2Zn9ACDfXJBvLo3CE4RFwWvVcdUyTlcm8Nsgp4wfGr8PhY37xTXU4S9zT6uVHVj1/Iu3beesrhTPbP+P5/94Fl/V5bb0BR4EP2J9hJgMt9qpVxTlvT/kkrAf69Hx5g1ORd62BOvZfsjmY6514+X+nwvJUJ0jbdv6CiJI1knR8+sctCJ9CHjDMqp5+mI9iM7zbGIB2O/tq4o7w1MDgUdEJ0NahFI+G9fFqqgsPJ7LJVRuv4CQzDEpFj6D3rlUb0erw0/Kz4chcpjftx+QksgMQDjsZnzu3eT88GtzDihGNNTd6f7Kbw3L7iw4JMnoenWRvSXAWSRTcPDbHxKpXmn1tkf5LLIKZmVaP91dI/j4osNy2R0XPoZ1zVzr6ql95Xrf+cnKaDLz0bEXxyfXTUQjfAJp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(346002)(396003)(186009)(1800799009)(451199024)(41300700001)(66946007)(66556008)(66476007)(478600001)(6636002)(316002)(38100700002)(2906002)(33656002)(86362001)(450100002)(5660300002)(4326008)(6862004)(8676002)(8936002)(26005)(1076003)(83380400001)(6506007)(6486002)(6512007)(82960400001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AQ6ziC9r+zHM5UUsro2qPVqqlT5X/k1AJIM8IGQS3rVVPUtkQ8d7gHyOobxP?=
 =?us-ascii?Q?8hKkHNG82rljA4yUUpm9wx1rQNVr+Xzd4A7EXlLqhzrgael5eNQ/A3PTQI3b?=
 =?us-ascii?Q?dYo7Pn8aFPdoSJsI9LyfuGIcFEZ/8EUApKmsyqBwUBA+RKyUr6xq+jEH3X4j?=
 =?us-ascii?Q?BvUMbhkOCobds6vSqwoIy9XUBte32Gvl23Aip35nfQmtmm/fhHVQ8njNApQ6?=
 =?us-ascii?Q?3P2uSLsE+95YRZ/4MlvwsAqlnPnQeP7RCkNWiUSvR0vlZmpdPt8CnXEl+XMb?=
 =?us-ascii?Q?A75Mw91lesEJCczYe1jbsl/3GAag95cyMVMZJMwfEV9+xpV0WYfiOUL5xa8U?=
 =?us-ascii?Q?FSshoNWkUequQA6Bv40Dy9Cj3k5uE7+f7AQGK4KIDwkcfqvwaI2xCfFJMcoA?=
 =?us-ascii?Q?GhpBOfQy9e8Zm7v/Jv0gpIwGoD455OdXC79XOIOynUM+NUhmbhdNKZsfuE+C?=
 =?us-ascii?Q?xxnfl6KGDEMC9ymDGT9Qh3IKPwrvW0qEIOXAtsfdKWfjYMpTIzzC07ix3A1I?=
 =?us-ascii?Q?jadz/qy8Th84ZR4s7QilpZqtJmmHiuGOyJ0aYtgFpkVnb+z2S0YviOsStjHU?=
 =?us-ascii?Q?unGQpfcy1rNavbFJpGHl9cC8lTepZWSYX5jEO9SwVOPPex2iVERuzRJtJfDA?=
 =?us-ascii?Q?Tdorp+8PyX422qIJ+AxUzFpWWsqIvzYccEqL+MnXslGD/31yVj6l9B2Xiay1?=
 =?us-ascii?Q?64dr2UlJ7BT8XQ90v2Zy9CYVVR0jFoPSXmhuxuadnfllaf6oK2Bf7IeiidXD?=
 =?us-ascii?Q?sCe2rc6mfpfiUK3WGzAxJAldaC2TOi9juW/x5aJwb1b83kBIuDAPm2Bbw7y6?=
 =?us-ascii?Q?INZjMgfW9bAi7y87OajJhm3e+u5Kr+F+iDmhEmM/M6eqtEBTgaUgscv5IhvL?=
 =?us-ascii?Q?Xfo9wQTlElNWRyn3sAUd9j+Q6JOPJw1zC+cmgxzClArjMr4AjeJCgUo4pAfu?=
 =?us-ascii?Q?FNYC1itmw4TBQg1BSFKCp62G4yNBklfbgK+UWZLTrCKRZNzxTLwM1K2CoZvE?=
 =?us-ascii?Q?vH5/OD33TFxV5HImgdfkosctdn9PUs0qIS/ERiV3lCahkZUOMtqi6CrCPIwh?=
 =?us-ascii?Q?Nq4aosD4AZFJctZWsHWvPlbMcHgaVB/4ypG2tQukSjnCT85KH+Jbtk1Zisp+?=
 =?us-ascii?Q?kUbY/n0o1pit82zliY/5kjO2FrrtBp9IoXeSGr3ykpGNVut8owreoye/QNeg?=
 =?us-ascii?Q?aC+3JgpI/A48ygHxq/usgOCzAMmdhb/21dDA8GGlums/Tmv24Mp/AIGUDKPu?=
 =?us-ascii?Q?IQGWi9/iIEsRQJ8zXnpcvVPOlwSi8DLreL7HzEuhSvKeYAvN1kA65ons1SGZ?=
 =?us-ascii?Q?5L+ipBSmZkDPxpw6160u8daWaKYoRU/mvGpoJ6DPIfg06uilqmD6w2IprP8B?=
 =?us-ascii?Q?6I8UPnBADC4l0xFcgnpdsFx9hO4i8AO/ThK7t2lmd7JZWoMQ/MM8nd9a5i7Y?=
 =?us-ascii?Q?vCSxTk1DI7GcYQZJePCPsk2KTv3aoAdeiBuSSHND/Z0WCINABkGrHQlmvlHg?=
 =?us-ascii?Q?y+TP/pIWjC1+v7QTbpd3gSpHIoPMErG7R7LGjt1ft1FBdymIaLY58GM2W27+?=
 =?us-ascii?Q?dIe/b2JhppOA+jIXySq7SvyjXloPlqJzkAkcSfbf8e+d10zpSIeM/xM3skY6?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7171cb1c-5257-4f6a-00d2-08dbb3a2d90d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:13:41.4158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OwdEQ3Z0+T5zbsOvRkuhZZop3bTn24x22/MRNEWyF5u2KrpPi0+LToPOlYtrSiZeiQW+D3n0hH3hBfcfrTEJ56o1kCj7cqrYQU24xDqAxEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4855
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 01/29] drm/i915/xelpdp: Add
 XE_LPDP_FEATURES
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:09PM -0700, Lucas De Marchi wrote:
> Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
> for Xe2_LPD and will allow to see the delta more easily.
> 
> v2: Move everything from xe_lpdp_display to the new macro and remove
>     the version setting: it's not needed with GMD_ID.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 58 +++++++++++++++----
>  1 file changed, 47 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index c39f8a15d8aa..ddd938bfe7d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -710,18 +710,54 @@ static const struct intel_display_device_info xe_hpd_display = {
>  		BIT(PORT_TC1),
>  };
>  
> -static const struct intel_display_device_info xe_lpdp_display = {
> -	XE_LPD_FEATURES,
> -	.has_cdclk_crawl = 1,
> -	.has_cdclk_squash = 1,
> +#define XE_LPDP_FEATURES							\
> +	.abox_mask = GENMASK(1, 0),						\
> +	.color = {								\
> +		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
> +		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
> +		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
> +	},									\
> +	.dbuf.size = 4096,							\
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
> +		BIT(DBUF_S4),							\
> +	.has_cdclk_crawl = 1,							\
> +	.has_cdclk_squash = 1,							\
> +	.has_ddi = 1,								\
> +	.has_dp_mst = 1,							\
> +	.has_dsb = 1,								\
> +	.has_fpga_dbg = 1,							\
> +	.has_hotplug = 1,							\
> +	.has_ipc = 1,								\
> +	.has_psr = 1,								\
> +	.pipe_offsets = {							\
> +		[TRANSCODER_A] = PIPE_A_OFFSET,					\
> +		[TRANSCODER_B] = PIPE_B_OFFSET,					\
> +		[TRANSCODER_C] = PIPE_C_OFFSET,					\
> +		[TRANSCODER_D] = PIPE_D_OFFSET,					\
> +	},									\
> +	.trans_offsets = {							\
> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
> +		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
> +	},									\
> +	TGL_CURSOR_OFFSETS,							\
> +										\
> +	.__runtime_defaults.cpu_transcoder_mask =				\
> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |				\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),	\
> +	.__runtime_defaults.has_dmc = 1,					\
> +	.__runtime_defaults.has_dsc = 1,					\
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\

fbc_mask is set just a few lines above (and this second version is wrong
for Xe_LPD+).

With this line dropped,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +	.__runtime_defaults.has_hdcp = 1,					\
> +	.__runtime_defaults.pipe_mask =						\
> +		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),		\
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |		\
> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
>  
> -	.__runtime_defaults.ip.ver = 14,
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> -	.__runtime_defaults.cpu_transcoder_mask =
> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> -		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> +static const struct intel_display_device_info xe_lpdp_display = {
> +	XE_LPDP_FEATURES,
>  };
>  
>  /*
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
