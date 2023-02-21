Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196CD69E8F1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 21:15:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA0510E253;
	Tue, 21 Feb 2023 20:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B3F10E901
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 20:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677010535; x=1708546535;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=54qSSE5hBTJSRdWMzpH+XVeLGJQr4vVFgcpG+VSF+3Q=;
 b=ZZcFLD3DsjCAQ/jKLITnBoAoArlVmxoyetxApBXLgVIvXZPZfmuo+nt/
 Ywbu0ZpW8Rojq3ytKX23p1IhSZjBYPFo2i7j+TZfZzNNuT1ChYCUxkKA5
 C6GZMdnXi6fLcm2LC0inTgpMNG7Tk/l0PiJrpvwxlmkRVro2J8vfHrvk2
 WfP3KpX5JDyz+aTfLUDtt9foSXxaolEUwjxzTpPIEUeBoD65lBNC7ZCQR
 OolfT4dY7colbAHy5LG4LkFOfWBUGYAfOTNEPLVHNb1t5lgLTe2fgX3q2
 3LYga0ZWH+rY/WCAEIpBuNDC32bd2UnsZywhXnXzFKLx/Y7s4HVYIxvBk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="395226907"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395226907"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 12:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795643220"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="795643220"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 21 Feb 2023 12:15:34 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 12:15:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 12:15:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 12:15:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXXDuGhFLa0dUw+zKidDuYK62vPk3DpjNCCx1saJnRLEvFGdG1hZQjesHGMkNXu0x9pfkMV27H2GAt8LWm2SrQAb9PZxVMmsnR7nBxBSJFS2YT9KHWWPgxTpnSjEWSNYoHJtHkaZUdwYyv30zu4LuhCz+lsaUWqzzj8rrgkWG+TQUCTZDIdlOwZ0KaEGdfJzmQLzcJulW3xuo+s4iDB0W3TGIfEXUpJoisu9de4WrLnTbJFX5vXbA2Zhfr1y92y4yPAjp0R9cDOZ0scieJahDURleEwbtV2YpFzcxcQUm9LWTKXw/UqzFhUX56QHEzXvQu96yH6IxbjpSV4n3vTDrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lVGdMYbHCes/MXjHxw4vriy1St6d0X9tXCzG8aIoTM0=;
 b=EwalTSCQN45WwVzAZJEbU6OFtKJelmfCSNGQSF64WFjrhOuDxoB04WACn50iAAHgXeHuTFXYWpEy+PJJPwOJgVvQ6mSQ7LpiTQUbpvTY4F7Ug3LV7YrpVPzRv6s2nhhQrUAfjAp/YgLgOBnq034uIT3RzkXtzfMbcPA3nMwKRqHWw6DoN9DEGxCJjPClcuRhqUzaYg9T5xgMe4QrpAh7XNCS7lPPbH9YXlBfskoiiHjDGJmZZNVWWSogQ0EeiRreCElegMXTiGIy7ok+tC+U4clLJpoeZmOzLDM/Jpk1U4LhGGZgfsZIfO5kQ1nMcHxybmnw0OW97UYbIGlbrm8dCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY5PR11MB6510.namprd11.prod.outlook.com (2603:10b6:930:42::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.21; Tue, 21 Feb 2023 20:15:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 20:15:26 +0000
Date: Tue, 21 Feb 2023 12:15:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/UmW/rkFc563zLX@mdroper-desk1.amr.corp.intel.com>
References: <20230221193038.2876693-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230221193038.2876693-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR03CA0087.namprd03.prod.outlook.com
 (2603:10b6:a03:331::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY5PR11MB6510:EE_
X-MS-Office365-Filtering-Correlation-Id: 6445a272-e654-41bc-3ac4-08db14485e82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CuSpaGh0yBieyQ3jZrV40OoPqZbUaZTrfxNH4+JS/LsUvnhwTBV0Tln0IYngQXQSx3pUeOfrViG0JM1x70JvCCsyqZ80H299sXrvGx0/4TVHmZd0Ns0/akyc0T/PV6eJaR3V9MlfSgBPhS+SJZuk0EpNQPeH9BaQW7u1Ab4R9jGtkSRq1MZSe7CMkZzeMWhXIXJJHWq19QM5dps93Vaw8IuwxsSITrYKKendynoKkyCU5KBS6Phl7ZV3eDdrgR3x7/dPI07uCYgXwZzjeMBMK+djL0KNzIGmsrtpsz5ln+5YcGxDuHNik/N8KuOIHX94sWj4g3lCylYc76dpNHgPD1fNdQ2DWA5ugm+NmUyzub58Y/kO+oriye0J6gcPZoO7puCWnYsje9Pz4afWfyZA/WXKvn4Hrc3XRv1EJHIeQSiWnDWeY8Omfi/hqa3YLCFFoddKOYBLuH9Q0Ht/O3O57/eLHFlyHvRwf83CqMaVH6yTBXrAVHdh92WX3ON8upYnRr/mkXpGpEadsgAKC00NdcGpCVejc2ZnXQYvxwB/TKWotN2p2J+Ujrtz+suA4cEVuYqNTc/8tT4FrItYgQdVUpwfOBDGHY570zxMwsIFt7H7XVo7G8Zy4+ul4Cgsi795etiHAT2SojGJ027B+/p+hg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199018)(38100700002)(86362001)(26005)(83380400001)(6512007)(186003)(6506007)(82960400001)(8936002)(5660300002)(6486002)(6666004)(478600001)(41300700001)(316002)(6916009)(8676002)(2906002)(66556008)(66946007)(66476007)(15650500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A1PbZBwwJ3yxLTs81A9hswHkhkHlQJ5HEdNBWJ/uuICfai2QNcocckGN1BmS?=
 =?us-ascii?Q?i5ZwR/yKwugoYJS8iqv0efRZH+LGUcA0M9ZGmkNB1KmJtYyDWYFwanovZFng?=
 =?us-ascii?Q?xYjZ1vR58VgQJ8q/AFA+1I7VJKZPnTAoHGzNZMsLg/kFEtMt8pG77l73MBfk?=
 =?us-ascii?Q?MSxWrXyjbK5fYi3/XwYNHA5h6YUFoAH8bas/O43jZZFI1wFD8KmTtKRVeYxi?=
 =?us-ascii?Q?ubNIdop5jnXhDQMDawxInkxKhdtVE5dBKb1ASbXtJgzNJX251Hhzttd/McWH?=
 =?us-ascii?Q?4sHTTglOWZvdmovexbxxXy1b+7Zl5rXnNtScWmI2xrNxlkcB6UwQEC+4uhFF?=
 =?us-ascii?Q?KB+Ga7WuIUAGlbFPQ2N8NHWAbDKsqT7V3Rf+F2gXUDb8H9VtyQf9DDYDXN/w?=
 =?us-ascii?Q?UKYu8+dFBBOoWTgfW7BghJTjubW8qHZQ/6V2VQr/wP5HbMefuY/ItO3+ToQc?=
 =?us-ascii?Q?uhF5S0EOXBr9LOGP7OQxXpfU2oZalAOU6B3mENa5xbQRbW1VhgXjdKqrMEYT?=
 =?us-ascii?Q?W9l534m/jgEedDOhQPo0Rp5jh2EuD9VeD+qVIJUMSwAmhe/pPx/ZzDlUI173?=
 =?us-ascii?Q?gyjmqQ0PC3TUK8+Jel++OGk1WqOQ7myDiuvlYX93RYI5ZaKN/KvE1fxiko1L?=
 =?us-ascii?Q?jzlxRLucmeYQibkc6Jau3ZCl1NLPTcdnZa+s3U6h1H+RAHz9DmoaWkhW7vl/?=
 =?us-ascii?Q?oqtqMqMO70Sr+E7uPI4GV1nK4q4Aof7e5yplvo5xw9ODgcSdD9NhZa46h88J?=
 =?us-ascii?Q?eJHasnBUSAn37b1MTGand6YnZE04cjVSEcO/dhKMszm8JI1x5Fd3TBxfwqwh?=
 =?us-ascii?Q?ye+OZvGnxsQHIAqbq+vhuDZNn7cohy154dcZi2k0NOXhUBBBMgCXCWTOXBWN?=
 =?us-ascii?Q?91K0KDR3yONwC5v+wKVoM5O7Zniwj03xv9ehl03q7liBCFRkF8sfpEBEmqCv?=
 =?us-ascii?Q?r5EfcTrijjceVl//ynBVR16KRZnN6lePMmV5pxqOIEUd3TB6kzzr745SQREo?=
 =?us-ascii?Q?5nebx4JWQDsEo5uB9QlO2r5uN1vGnJlrmqrJezgvE5xDuk8pStyO7jpRRlvC?=
 =?us-ascii?Q?IXzEKJWnE+TTrJlyRebodmEqD/APP6gPzMPBVf24gLG86Uz+/vnrOvjb8uWd?=
 =?us-ascii?Q?C6GAnL7dfqNtQaojieru8dtT/5VAbEaGcG/dXYrWXWQKmaOXAXYdq/IZbCJC?=
 =?us-ascii?Q?XgCh5lxiDK6ljVLtH4ig9ZZacQ958fpl1D6DjcLGv9E6m8Nv2zSTMXtxJGln?=
 =?us-ascii?Q?+OtMF/cWNqJHGr6kX3OVdVujihmf4kCEfs9dMoQha8hk2p/6rAFHUO/YlAjk?=
 =?us-ascii?Q?mOUZVSN6gEMfz4YkTed8j0+sVkpzs4ZPazI9Cgn/38LEyjN11xCMuv+XBIrZ?=
 =?us-ascii?Q?rIhxVDGwaDs8DUTRc0R/pcs/m3VqPbcoVvdHnsRtdxsshR9d+opYkWx9iDw6?=
 =?us-ascii?Q?qfzRRiWCNyL0z80DV5DfQBT7Kt5sti85aOXS/iVB8qqrJ+YTh0rFoqlBJnd1?=
 =?us-ascii?Q?EZi99WaWFb/ifx6PYn2WP5HzZp4MHtZIKo7JYlKTbtsKKNRVt8BPqKHmxVIy?=
 =?us-ascii?Q?4ZUWLuXOCnoKL5xfrtNrq+b+NNdofiHoC5bkzTZwk0wcUVBgbe2OUF6r3txl?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6445a272-e654-41bc-3ac4-08db14485e82
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 20:15:26.1194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oy5SFgGtTuLivli3fPGX8MWKEzl2dbszZu7zkdvaJXUw5oo0HlaWaDsHdGR6xPfJODkVLV4Iv6q/lFbU8F4ujRbERS6X/OE37cDfPOI3qzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6510
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen12: Update combo PHY init
 sequence
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 11:30:38AM -0800, Matt Roper wrote:
> The bspec was updated with a minor change to the 'DCC mode select'
> setting to be programmed during combo PHY initialization.
> 
> Bspec: 49291
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c      | 9 +++------
>  drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 4 ++--
>  2 files changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 27e98eabb006..0608ae95b6f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -233,8 +233,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>  				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
>  
>  		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
> -				     DCC_MODE_SELECT_MASK,
> -				     DCC_MODE_SELECT_CONTINUOSLY);
> +				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);
>  	}
>  
>  	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
> @@ -352,10 +351,8 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  			val |= ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2;
>  			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
>  
> -			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
> -			val &= ~DCC_MODE_SELECT_MASK;
> -			val |= DCC_MODE_SELECT_CONTINUOSLY;
> -			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
> +			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy),
> +				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);

Actually, converting to intel_de_rmw won't work here since we need to
make sure the write goes to the _GRP register instead of the _LN0
register...I'll send an updated version.


Matt

>  		}
>  
>  		icl_set_procmon_ref_values(dev_priv, phy);
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> index 2ed65193ca19..b0983edccf3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -90,8 +90,8 @@
>  #define ICL_PORT_PCS_DW1_AUX(phy)		_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
>  #define ICL_PORT_PCS_DW1_GRP(phy)		_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
>  #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
> -#define   DCC_MODE_SELECT_MASK			(0x3 << 20)
> -#define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
> +#define   DCC_MODE_SELECT_MASK			REG_GENMASK(21, 20)
> +#define   RUN_DCC_ONCE				REG_FIELD_PREP(DCC_MODE_SELECT_MASK, 0)
>  #define   COMMON_KEEPER_EN			(1 << 26)
>  #define   LATENCY_OPTIM_MASK			(0x3 << 2)
>  #define   LATENCY_OPTIM_VAL(x)			((x) << 2)
> -- 
> 2.39.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
