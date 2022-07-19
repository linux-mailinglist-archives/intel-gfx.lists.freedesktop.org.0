Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 245BE579799
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 12:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BEF614B694;
	Tue, 19 Jul 2022 10:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E294714B694
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 10:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658226329; x=1689762329;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LNS7eYgO7IZxdLfyIpp2AbF85WmGOIcEoqJBVpkR6Qk=;
 b=ITCO3P4nGuohFTHva/oSQwiTR8lDFNh1n4zZB30HruLugdzmhxaQrj4i
 XXI7uUkGexiOwIKn80plhukXhgeXGsk+aJKMng5aG3sjLWJbsvP7XuoYK
 epOxB/6djso4QoV6pZXSj8exwu1UaR2Q2rVjyv5w3dJcxS2ReI7FYRCCg
 KqP5x9sPESLh5x3MK785rBfEZJyEmdQK4ZwsnMpYl65J9Bd49mSWHMAu+
 gh1R2jL4WREQJXIrsM3a3yd4XNT7VI15yc8F4JUfwY3ua7oaEEivBT9cW
 PwP9hKgaXX+8jLGtwBqnMl+BeTPWaSZfJPKzlGZq4/C4Ub/RmiDAwOeMM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="348147176"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="348147176"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 03:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="597611279"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2022 03:25:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 03:25:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 03:25:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 03:25:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 03:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZWc9mVFLAkO3k09m3qiovSpVy1T3Iy+dIzoYy1fSabL5A5szx7GleTxAA4hS5qEyfGdZgA+lGQfqCbknNfInRiJ52WofYicInvbyFXXVZex7vcAKIXnJBcTzTBO8fp0+g8Bk3BKak5hPsghh/19uvVVTPsgskNF5wTmKFU1vysL2hKD1DsO9ow524A5+dG7zuHRcaSw5tzhonVBVS3/QCZ5R0bYn+9AvcnUO28TPx9idWL116WtPvmbz2b12bCMnbFK11+Soy4wSXIGfBxXXpqAisiLW6vNFrY0esmvNRGwnYp1Wj5jULLVPy9WBr9sl9ZKa8Wz+wKmgrdjej5aA1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OK0JdIS0aG0CfxoDyR17hpxpOV0xycr2OvZZY2mwlTM=;
 b=m63Imx2KXNHgwISJLMNJVJ5rFOmApg0TWOwWI1MHra87gAjuFcQDMIg+vv7kj+/fSkMcQ/L8iL+Z0CMBHvUHFi31jxcloSSVvEZ7IPf4KMY+oAkYfC88tFuYr9aXEImXACVOE4egfDHl4blK6UpBd/5rNn4yKfHrLM9L4nuxY3+SD2CS3CAyzwpz63uhPnuFK4REwcqL9DiMRnlXqiFfWnZyEuxd7HZAdnpyFd/QRieVCTpTRhesLnyrj4s0yblkNE/JbBFvmknQgUUALuMarOssbTTWee4k3hsU3R/YbIIwhViXQUDAgG/IfKfwonmYv8TW5RV+bFnj9O68XOpGAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 10:25:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 10:25:26 +0000
Date: Tue, 19 Jul 2022 06:25:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YtaGkGOx4BZF3Cdm@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220715202044.11153-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY5PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e8644b9-0dd8-4991-1a97-08da6970ff10
X-MS-TrafficTypeDiagnostic: MN0PR11MB6157:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TnZ7s7VBEltimPQeEMTtGXQlOZDEAmKIWqVB35QRMjEN6DG6iHP1EF3J612ud7VWrjmCX/4N5ZGUXfZTLUZ3cM0hQp5MtBf7hXTKsvIXAxUYYZOG23Evx5jchmmSBF+nGhSMRqEbSceUteRr4jjz63u5ZXAbcORNuzgQE7y0T66Lo0q5bEg3wjh2l/gcGDkCLqCnbo9o4p6cPdInPTxL7aUgeqLlhtwi15J0WRze2ADavcgd4F7qGdNvoCTjK2anVBfsDdY/UASrvALCfMtX87QN7NwsuTUm0LQRRaAsMLhiNnaUBFbN5DU4NtnAm517coyZyJGfHy35D7IjgqVe3Ewli5o9LIgWsTmZ4DhQXLxxUn4wPinUwe5lw71o8Nv2+RhpW5RPE6ORq9w5tYkPOxwUs4meUAFtZv4KNrdPy96YzJ+YoE/4jwHugCU01oUCF/SIK1c5RJCX+6XTUAINp/aTzWWIhXK4N5nVMSHOeN3lUn+y2MzjQO4AQgdJSvtYhVdmQycZ1SpMgiLhCU/0qo6efu77eN3VTr9UbvBGO+tS8E/dyFik36qDgbYLKx3YGxNxZ8kHB/3ZGPL6TDYmMTo1wYG9kvqwJMMlqpw/7y36HVBS8RE72w/FxGNtrKWhGCPtaiJWTbBWpPZmuOwtxQIGi3cMElJJI+dcDmHbF46kStKWVYGH3Xns2C+Q5i5RB14pmnIe3c3bsWuyL/BCNH7T/9BbCLm0Kuxwrqmw4xL7EgFBKQ89gltU/pdqhzma
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(366004)(396003)(346002)(6916009)(478600001)(6666004)(41300700001)(6506007)(6512007)(44832011)(38100700002)(26005)(6486002)(2906002)(8936002)(8676002)(66946007)(66556008)(2616005)(66476007)(316002)(30864003)(5660300002)(4326008)(82960400001)(36756003)(66574015)(83380400001)(86362001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?16uIs7t4YBdWedU8jr7UZPvJOkF0RKxBBm1FQFVIRBnOHFRFxO8n8nyh29?=
 =?iso-8859-1?Q?GCz6Cy9oLSo93M+DPI30kxlNRc2ebezUo4OGGeZ2WDBb0VlmY5zapq+eKo?=
 =?iso-8859-1?Q?OBpD5aRlTiJl6UBi3gyY6VHWt9rdgx4GGuDYClGsX5AqBTez0Mz4Wb3Wdc?=
 =?iso-8859-1?Q?dETAt+DH5kgiUhpAgP9anccH4Ej+wOf5AUhaHPZRBqk26HxkxCtHgVxrAI?=
 =?iso-8859-1?Q?EppukZJaK0clx/DDlf7LRt7RGWNPuIv0mbOaFtm0zMnxOGvcKv80aP+OWw?=
 =?iso-8859-1?Q?lbCIdLY+PLiOk+ZpMpWlY9aQrDpeUqbOGcIaqyDg+kgd07QLyV0Sx6txXB?=
 =?iso-8859-1?Q?OkwGx/0D6+pVbiZDWVumLAMouvGNEI4ARhcVK8ej+vTtRjHWmsaKT4+jg3?=
 =?iso-8859-1?Q?Q4dHfZJt7KzR+/jTBetqs6X38lmAB8qwa1Y21gFdvRkWU1Az8RKRj3Fq2d?=
 =?iso-8859-1?Q?y1cH3wtDXMsaw3xnYSiKJVMhgqp8q5WGNLuQdwJtXehGnM2HwMSGwLzPqk?=
 =?iso-8859-1?Q?Y0qIMbAifGGroiXidWWaN4FXghAcy3YXVDwrui2QizrNOllpa8hWGeBN+H?=
 =?iso-8859-1?Q?PVnjorVX8e0PFl8jOtFzHNXu2j83QswP08//XlwK8z8N9SkYBwv/83Sbiu?=
 =?iso-8859-1?Q?F6K+vIb8IRKrn/3smoXcg3yq+OBBbhB7XiCWVA6lFo+GwXGrimXyDcrD6F?=
 =?iso-8859-1?Q?QQMsv8VPgxOUP8/Qc/Q0/YrtQsox3mBJlZpTefzeGus/ypyBRwLqN5tjhA?=
 =?iso-8859-1?Q?jJvVRwDHZ3bpIjRgDXKoB/w/mzsb8NcGNRFE3fTotzlrKKJsEeQFPPKVEa?=
 =?iso-8859-1?Q?1+6BYQH1y38B/fa8DZetMaHG4jolPxn3FU28mStCTGZbDg+k+1qaYirIdd?=
 =?iso-8859-1?Q?lrj3FOqo1iJRZhpCdBiR3i83t47k0w7ryz/+9SeriiWeEn2mScluIf4RfQ?=
 =?iso-8859-1?Q?ZxmxMyHrCrQKfE6V+yfn8tFBMHIO5dRHSDj866yuvi4DyK60sUpk6uPg8K?=
 =?iso-8859-1?Q?770kQSxoEQGF3MR4xilLvUDbZfEkbn63RbE2RWQoudBW2WRLtpl3RNdlqh?=
 =?iso-8859-1?Q?Xjpy+gXULnhmR7YNdicFu8+8CcC8gmUwzufmHB6vVk8TjFmYfFwvnUITR5?=
 =?iso-8859-1?Q?PcD2h5CZW+E7A0RnjhaG51kylBOhD4tOCwe6nJp/D4+5bh+ti4CBsXW6tM?=
 =?iso-8859-1?Q?yMnXA9Zk7AHW5oZIubRZKW8QJDkFRjiLjR/vsJiInzq2ptuuCaxOv2CRrg?=
 =?iso-8859-1?Q?K7wS7trXWpMj9QO2XKA9Kx2RjlYlkvVxm5rrrmEDJsKTT0UB3K6Hpn1S09?=
 =?iso-8859-1?Q?wO4s7RloxzGYVMDiuNEqwSNFxCbHMzZB80nVy412x7kTDgGvnhUOMQi7IF?=
 =?iso-8859-1?Q?KTjmq7ceSkIAxp0IwOUdtgXAvtX86qfHIU9PDTsy3dJ+JZ6jRmzBklVZCm?=
 =?iso-8859-1?Q?mSCxW21zAkRY2bGEy6+0RCD8PcNRa6WLlaLDPIyEtKDnxz5064FZ/PtrBI?=
 =?iso-8859-1?Q?XfCCNNYCGXdDF/C7jy09ye+XqDrJ4Lr7DgS9TUUUArs9A7qk16zHTIcHoC?=
 =?iso-8859-1?Q?DqfYNf4WheeuykVpku/qc9jdjA3u1uFynhQ3KH0rGN6hC5EAKqCMWP28yp?=
 =?iso-8859-1?Q?09vn6SfcxdTBzY78wduA3Ck8fF5fjfo1uqtWtnFJ5SOMNDAs+ACZs5xw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8644b9-0dd8-4991-1a97-08da6970ff10
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 10:25:26.6582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NORtLcnyEvw54IarwPnqAF9IUNK/ZjbZ1R4v452dLBrCAdw1x488HLambLqJkbNj/kzV7DixegnJY+8EXgwoxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Unify VBT version number
 comments
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

On Fri, Jul 15, 2022 at 11:20:33PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use a more standard form for the VT version number comments.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 206 ++++++++++--------
>  1 file changed, 110 insertions(+), 96 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 509b0a419c20..ba328d130991 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -75,6 +75,20 @@ struct bdb_header {
>  	u16 bdb_size;
>  } __packed;
>  
> +/*
> + * BDB version number dependencies are documented as:
> + *
> + * <start>+
> + *    indicates the field was introduced in version <start>
> + *    and is still valid
> + *
> + * <start>-<end>
> + *    indicates the field was introduced in version <start>
> + *    and obsoleted in version <end>+1.
> + *
> + * ??? indicates the specific version number is unknown
> + */
> +
>  /*
>   * There are several types of BIOS data blocks (BDBs), each block has
>   * an ID and size in the first 3 bytes (ID in first, size in next 2).
> @@ -144,12 +158,12 @@ struct bdb_general_features {
>          /* bits 3 */
>  	u8 disable_smooth_vision:1;
>  	u8 single_dvi:1;
> -	u8 rotate_180:1;					/* 181 */
> +	u8 rotate_180:1;					/* 181+ */
>  	u8 fdi_rx_polarity_inverted:1;
> -	u8 vbios_extended_mode:1;				/* 160 */
> -	u8 copy_ilfp_dtd_to_sdvo_lvds_dtd:1;			/* 160 */
> -	u8 panel_best_fit_timing:1;				/* 160 */
> -	u8 ignore_strap_state:1;				/* 160 */
> +	u8 vbios_extended_mode:1;				/* 160+ */
> +	u8 copy_ilfp_dtd_to_sdvo_lvds_dtd:1;			/* 160+ */
> +	u8 panel_best_fit_timing:1;				/* 160+ */
> +	u8 ignore_strap_state:1;				/* 160+ */
>  
>          /* bits 4 */
>  	u8 legacy_monitor_detect;
> @@ -164,11 +178,11 @@ struct bdb_general_features {
>  	u8 rsvd11:2; /* finish byte */
>  
>  	/* bits 6 */
> -	u8 tc_hpd_retry_timeout:7; /* 242 */
> +	u8 tc_hpd_retry_timeout:7;				/* 242+ */
>  	u8 rsvd12:1;
>  
>  	/* bits 7 */
> -	u8 afc_startup_config:2;/* 249 */
> +	u8 afc_startup_config:2;				/* 249+ */
>  	u8 rsvd13:6;
>  } __packed;
>  
> @@ -275,27 +289,27 @@ struct bdb_general_features {
>  #define DVO_PORT_DPC		8
>  #define DVO_PORT_DPD		9
>  #define DVO_PORT_DPA		10
> -#define DVO_PORT_DPE		11				/* 193 */
> -#define DVO_PORT_HDMIE		12				/* 193 */
> +#define DVO_PORT_DPE		11				/* 193+ */
> +#define DVO_PORT_HDMIE		12				/* 193+ */
>  #define DVO_PORT_DPF		13				/* N/A */
>  #define DVO_PORT_HDMIF		14				/* N/A */
> -#define DVO_PORT_DPG		15				/* 217 */
> -#define DVO_PORT_HDMIG		16				/* 217 */
> -#define DVO_PORT_DPH		17				/* 217 */
> -#define DVO_PORT_HDMIH		18				/* 217 */
> -#define DVO_PORT_DPI		19				/* 217 */
> -#define DVO_PORT_HDMII		20				/* 217 */
> -#define DVO_PORT_MIPIA		21				/* 171 */
> -#define DVO_PORT_MIPIB		22				/* 171 */
> -#define DVO_PORT_MIPIC		23				/* 171 */
> -#define DVO_PORT_MIPID		24				/* 171 */
> +#define DVO_PORT_DPG		15				/* 217+ */
> +#define DVO_PORT_HDMIG		16				/* 217+ */
> +#define DVO_PORT_DPH		17				/* 217+ */
> +#define DVO_PORT_HDMIH		18				/* 217+ */
> +#define DVO_PORT_DPI		19				/* 217+ */
> +#define DVO_PORT_HDMII		20				/* 217+ */
> +#define DVO_PORT_MIPIA		21				/* 171+ */
> +#define DVO_PORT_MIPIB		22				/* 171+ */
> +#define DVO_PORT_MIPIC		23				/* 171+ */
> +#define DVO_PORT_MIPID		24				/* 171+ */
>  
> -#define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204 */
> -#define HDMI_MAX_DATA_RATE_297		1			/* 204 */
> -#define HDMI_MAX_DATA_RATE_165		2			/* 204 */
> -#define HDMI_MAX_DATA_RATE_594		3			/* 249 */
> -#define HDMI_MAX_DATA_RATE_340		4			/* 249 */
> -#define HDMI_MAX_DATA_RATE_300		5			/* 249 */
> +#define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204+ */
> +#define HDMI_MAX_DATA_RATE_297		1			/* 204+ */
> +#define HDMI_MAX_DATA_RATE_165		2			/* 204+ */
> +#define HDMI_MAX_DATA_RATE_594		3			/* 249+ */
> +#define HDMI_MAX_DATA_RATE_340		4			/* 249+ */
> +#define HDMI_MAX_DATA_RATE_300		5			/* 249+ */
>  
>  #define LEGACY_CHILD_DEVICE_CONFIG_SIZE		33
>  
> @@ -379,19 +393,19 @@ struct child_device_config {
>  		u8  device_id[10]; /* ascii string */
>  		struct {
>  			u8 i2c_speed;
> -			u8 dp_onboard_redriver;			/* 158 */
> -			u8 dp_ondock_redriver;			/* 158 */
> -			u8 hdmi_level_shifter_value:5;		/* 169 */
> -			u8 hdmi_max_data_rate:3;		/* 204 */
> -			u16 dtd_buf_ptr;			/* 161 */
> -			u8 edidless_efp:1;			/* 161 */
> -			u8 compression_enable:1;		/* 198 */
> -			u8 compression_method_cps:1;		/* 198 */
> -			u8 ganged_edp:1;			/* 202 */
> +			u8 dp_onboard_redriver;			/* 158+ */
> +			u8 dp_ondock_redriver;			/* 158+ */
> +			u8 hdmi_level_shifter_value:5;		/* 158+ */
> +			u8 hdmi_max_data_rate:3;		/* 204+ */
> +			u16 dtd_buf_ptr;			/* 161+ */
> +			u8 edidless_efp:1;			/* 161+ */
> +			u8 compression_enable:1;		/* 198+ */
> +			u8 compression_method_cps:1;		/* 198+ */
> +			u8 ganged_edp:1;			/* 202+ */
>  			u8 reserved0:4;
> -			u8 compression_structure_index:4;	/* 198 */
> +			u8 compression_structure_index:4;	/* 198+ */
>  			u8 reserved1:4;
> -			u8 slave_port;				/* 202 */
> +			u8 slave_port;				/* 202+ */
>  			u8 reserved2;
>  		} __packed;
>  	} __packed;
> @@ -412,16 +426,16 @@ struct child_device_config {
>  			u8 ddc2_pin;
>  		} __packed;
>  		struct {
> -			u8 efp_routed:1;			/* 158 */
> -			u8 lane_reversal:1;			/* 184 */
> -			u8 lspcon:1;				/* 192 */
> -			u8 iboost:1;				/* 196 */
> -			u8 hpd_invert:1;			/* 196 */
> -			u8 use_vbt_vswing:1;			/* 218 */
> +			u8 efp_routed:1;			/* 158+ */
> +			u8 lane_reversal:1;			/* 184+ */
> +			u8 lspcon:1;				/* 192+ */
> +			u8 iboost:1;				/* 196+ */
> +			u8 hpd_invert:1;			/* 196+ */
> +			u8 use_vbt_vswing:1;			/* 218+ */
>  			u8 flag_reserved:2;
> -			u8 hdmi_support:1;			/* 158 */
> -			u8 dp_support:1;			/* 158 */
> -			u8 tmds_support:1;			/* 158 */
> +			u8 hdmi_support:1;			/* 158+ */
> +			u8 dp_support:1;			/* 158+ */
> +			u8 tmds_support:1;			/* 158+ */
>  			u8 support_reserved:5;
>  			u8 aux_channel;
>  			u8 dongle_detect;
> @@ -429,7 +443,7 @@ struct child_device_config {
>  	} __packed;
>  
>  	u8 pipe_cap:2;
> -	u8 sdvo_stall:1;					/* 158 */
> +	u8 sdvo_stall:1;					/* 158+ */
>  	u8 hpd_status:2;
>  	u8 integrated_encoder:1;
>  	u8 capabilities_reserved:2;
> @@ -437,21 +451,21 @@ struct child_device_config {
>  
>  	union {
>  		u8 dvo2_wiring;
> -		u8 mipi_bridge_type;				/* 171 */
> +		u8 mipi_bridge_type;				/* 171+ */
>  	} __packed;
>  
>  	u16 extended_type;
>  	u8 dvo_function;
> -	u8 dp_usb_type_c:1;					/* 195 */
> -	u8 tbt:1;						/* 209 */
> -	u8 flags2_reserved:2;					/* 195 */
> -	u8 dp_port_trace_length:4;				/* 209 */
> -	u8 dp_gpio_index;					/* 195 */
> -	u16 dp_gpio_pin_num;					/* 195 */
> -	u8 dp_iboost_level:4;					/* 196 */
> -	u8 hdmi_iboost_level:4;					/* 196 */
> -	u8 dp_max_link_rate:3;					/* 216/230 GLK+ */
> -	u8 dp_max_link_rate_reserved:5;				/* 216/230 */

any idea about this 230 and the GLK mention?
but anyway the 216+ includes the 230, so it looks okay.

for everything else I just relied on what was already in the code
and didn't check the VBT itself, but feel free to use:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



> +	u8 dp_usb_type_c:1;					/* 195+ */
> +	u8 tbt:1;						/* 209+ */
> +	u8 flags2_reserved:2;					/* 195+ */
> +	u8 dp_port_trace_length:4;				/* 209+ */
> +	u8 dp_gpio_index;					/* 195+ */
> +	u16 dp_gpio_pin_num;					/* 195+ */
> +	u8 dp_iboost_level:4;					/* 196+ */
> +	u8 hdmi_iboost_level:4;					/* 196+ */
> +	u8 dp_max_link_rate:3;					/* 216+ */
> +	u8 dp_max_link_rate_reserved:5;				/* 216+ */
>  } __packed;
>  
>  struct bdb_general_definitions {
> @@ -690,18 +704,18 @@ struct bdb_edp {
>  	u32 sdrrs_msa_timing_delay;
>  
>  	/* ith bit indicates enabled/disabled for (i+1)th panel */
> -	u16 edp_s3d_feature;					/* 162 */
> -	u16 edp_t3_optimization;				/* 165 */
> -	u64 edp_vswing_preemph;					/* 173 */
> -	u16 fast_link_training;					/* 182 */
> -	u16 dpcd_600h_write_required;				/* 185 */
> -	struct edp_pwm_delays pwm_delays[16];			/* 186 */
> -	u16 full_link_params_provided;				/* 199 */
> -	struct edp_full_link_params full_link_params[16];	/* 199 */
> -	u16 apical_enable;					/* 203 */
> -	struct edp_apical_params apical_params[16];		/* 203 */
> -	u16 edp_fast_link_training_rate[16];			/* 224 */
> -	u16 edp_max_port_link_rate[16];				/* 244 */
> +	u16 edp_s3d_feature;					/* 162+ */
> +	u16 edp_t3_optimization;				/* 165+ */
> +	u64 edp_vswing_preemph;					/* 173+ */
> +	u16 fast_link_training;					/* 182+ */
> +	u16 dpcd_600h_write_required;				/* 185+ */
> +	struct edp_pwm_delays pwm_delays[16];			/* 186+ */
> +	u16 full_link_params_provided;				/* 199+ */
> +	struct edp_full_link_params full_link_params[16];	/* 199+ */
> +	u16 apical_enable;					/* 203+ */
> +	struct edp_apical_params apical_params[16];		/* 203+ */
> +	u16 edp_fast_link_training_rate[16];			/* 224+ */
> +	u16 edp_max_port_link_rate[16];				/* 244+ */
>  } __packed;
>  
>  /*
> @@ -710,7 +724,7 @@ struct bdb_edp {
>  
>  struct bdb_lvds_options {
>  	u8 panel_type;
> -	u8 panel_type2;						/* 212 */
> +	u8 panel_type2;						/* 212+ */
>  	/* LVDS capabilities, stored in a dword */
>  	u8 pfit_mode:2;
>  	u8 pfit_text_mode_enhanced:1;
> @@ -733,9 +747,9 @@ struct bdb_lvds_options {
>  	/* LVDS backlight control type bits stored here */
>  	u32 blt_control_type_bits;
>  
> -	u16 lcdvcc_s0_enable;					/* 200 */
> -	u32 rotation;						/* 228 */
> -	u32 position;						/* 240 */
> +	u16 lcdvcc_s0_enable;					/* 200+ */
> +	u32 rotation;						/* 228+ */
> +	u32 position;						/* 240+ */
>  } __packed;
>  
>  /*
> @@ -756,7 +770,7 @@ struct lvds_lfp_data_ptr {
>  struct bdb_lvds_lfp_data_ptrs {
>  	u8 lvds_entries;
>  	struct lvds_lfp_data_ptr ptr[16];
> -	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
> +	struct lvds_lfp_data_ptr_table panel_name;		/* (156-163?)+ */
>  } __packed;
>  
>  /*
> @@ -808,20 +822,20 @@ struct lvds_lfp_panel_name {
>  } __packed;
>  
>  struct lvds_lfp_black_border {
> -	u8 top; /* 227 */
> -	u8 bottom; /* 227 */
> -	u8 left; /* 238 */
> -	u8 right; /* 238 */
> +	u8 top;		/* 227+ */
> +	u8 bottom;	/* 227+ */
> +	u8 left;	/* 238+ */
> +	u8 right;	/* 238+ */
>  } __packed;
>  
>  struct bdb_lvds_lfp_data_tail {
> -	struct lvds_lfp_panel_name panel_name[16]; /* 156-163? */
> -	u16 scaling_enable; /* 187 */
> -	u8 seamless_drrs_min_refresh_rate[16]; /* 188 */
> -	u8 pixel_overlap_count[16]; /* 208 */
> -	struct lvds_lfp_black_border black_border[16]; /* 227 */
> -	u16 dual_lfp_port_sync_enable; /* 231 */
> -	u16 gpu_dithering_for_banding_artifacts; /* 245 */
> +	struct lvds_lfp_panel_name panel_name[16];		/* (156-163?)+ */
> +	u16 scaling_enable;					/* 187+ */
> +	u8 seamless_drrs_min_refresh_rate[16];			/* 188+ */
> +	u8 pixel_overlap_count[16];				/* 208+ */
> +	struct lvds_lfp_black_border black_border[16];		/* 227+ */
> +	u16 dual_lfp_port_sync_enable;				/* 231+ */
> +	u16 gpu_dithering_for_banding_artifacts;		/* 245+ */
>  } __packed;
>  
>  /*
> @@ -836,7 +850,7 @@ struct lfp_backlight_data_entry {
>  	u8 active_low_pwm:1;
>  	u8 obsolete1:5;
>  	u16 pwm_freq_hz;
> -	u8 min_brightness; /* Obsolete from 234+ */
> +	u8 min_brightness;					/* ???-233 */
>  	u8 obsolete2;
>  	u8 obsolete3;
>  } __packed;
> @@ -859,7 +873,7 @@ struct lfp_brightness_level {
>  struct bdb_lfp_backlight_data {
>  	u8 entry_size;
>  	struct lfp_backlight_data_entry data[16];
> -	u8 level[16]; /* Obsolete from 234+ */
> +	u8 level[16];							/* ???-233 */
>  	struct lfp_backlight_control_method backlight_control[16];
>  	struct lfp_brightness_level brightness_level[16];		/* 234+ */
>  	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
> @@ -908,11 +922,11 @@ struct bdb_lfp_power {
>  	u16 adb;
>  	u16 lace_enabled_status;
>  	struct aggressiveness_profile_entry aggressiveness[16];
> -	u16 hobl; /* 232+ */
> -	u16 vrr_feature_enabled; /* 233+ */
> -	u16 elp; /* 247+ */
> -	u16 opst; /* 247+ */
> -	struct aggressiveness_profile2_entry aggressiveness2[16]; /* 247+ */
> +	u16 hobl;							/* 232+ */
> +	u16 vrr_feature_enabled;					/* 233+ */
> +	u16 elp;							/* 247+ */
> +	u16 opst;							/* 247+ */
> +	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
>  } __packed;
>  
>  /*
> @@ -922,10 +936,10 @@ struct bdb_lfp_power {
>  #define MAX_MIPI_CONFIGURATIONS	6
>  
>  struct bdb_mipi_config {
> -	struct mipi_config config[MAX_MIPI_CONFIGURATIONS]; /* 175 */
> -	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS]; /* 177 */
> -	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS]; /* 186 */
> -	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS]; /* 190 */
> +	struct mipi_config config[MAX_MIPI_CONFIGURATIONS];		/* 175+ */
> +	struct mipi_pps_data pps[MAX_MIPI_CONFIGURATIONS];		/* 177+ */
> +	struct edp_pwm_delays pwm_delays[MAX_MIPI_CONFIGURATIONS];	/* 186+ */
> +	u8 pmic_i2c_bus_number[MAX_MIPI_CONFIGURATIONS];		/* 190+ */
>  } __packed;
>  
>  /*
> -- 
> 2.35.1
> 
