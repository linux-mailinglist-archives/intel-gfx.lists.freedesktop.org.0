Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6447AA04D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 22:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FCF10E608;
	Thu, 21 Sep 2023 20:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5076510E608
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 20:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695328564; x=1726864564;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bj2Ig/2TSiMA9KT6mNFagjhxOrCscmj+hxpjHDOv16Y=;
 b=dNaukZxtr2KJOnfV8gWur39vAx7PhzxHHotFB9UCfXkMKLyLUC89tckq
 Ky+8epJJ+H/D5N2ao7BpwOCKAAA+j3/BUzKiwdKOp5requrhjKdB0ZLgJ
 /gjGA0aCKBTw/RJGGZEhwddtcIW8c/r7o778YSyn+BKcV7R22qXlN80gn
 7DDYfujjx3+swQLiQnLyIuOqejOfpnlC3Rdkz0cuqBU/uwPbL0731DloS
 omCak1Nvp7mAsybent8NMgBXz95OwpG32YuGCji0hrY/qvL24806+D5Rw
 5sYLKYESLH3Kl9ZVF16kb5CtAKtrxmT0b8iBHSigN5uRUuJDYB0BSi05p w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="466959876"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="466959876"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 13:36:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="723900916"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="723900916"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 13:36:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 13:36:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 13:36:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 13:36:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvHIs4CrJ7DKnQdylgxio7Uoh5O9SedJ73BXw3sz7F+xznjgo642xnJFxbYGNwWJ48AS27sXj3cW6p4bAbNL/2IQdrS6XpajJ1JXzWa8q6DqCGD0mf8nxVpAVbfLM+2FhU1mH8oaQW3qhBE4G5sfSIbN9IVt/aHgBt0SQQs0YciENv1p4bVlD13LmU3Au3EuzICeujFQnkufYizg9i6tf6llVIKjhL1LoiRh6OaMmu4WHImPM8O3aMQJ+y9PU6M4XNfEuYhqKFDNJDshRw52mcd2/wwx4WzkRXfPSM1LYqXZNobIH2RC671/eC+E1mlAXrlVOhgW9LEBHTIbDpC26Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+9XygmHsfvFrIQOAl7s9SVICWbSKodoj3sIu/ord0bo=;
 b=dwNpUMDFFXFUTpY/eLS5tZJT3ThOJ2RG82lRRGSAa44M2N7YVmA21hQIuWU4wahAo1GioQft+5Or/nrIjxloRXmB7zOpvjGbcVB/JXdOfidsHnM4DCf7WTy5WeZjWePuEyV47nRO8ePNiqraZFtvwadzgSoI4+u3hH1WTBIrSf8Xk6rPOX94E5Jj9X2Rhl6TjCD579ETXhK6efxRpL6IqXdIa6eVIdsdOrH4O7nrdUFTMv7v5gKf7q2WrJh1YcfjBtAl0TSHtiw6VOfYHvW4Wv7cYTDwP0bOc+MnsWt45iOyVoNqbAPitcNnf/UcyIoNztvsmdKacRikto7pLb1ZJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Thu, 21 Sep
 2023 20:36:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%6]) with mapi id 15.20.6792.022; Thu, 21 Sep 2023
 20:36:01 +0000
Date: Thu, 21 Sep 2023 16:35:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQypLvTIlF7dsWX0@intel.com>
References: <20230921155325.3851197-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230921155325.3851197-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0203.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7666:EE_
X-MS-Office365-Filtering-Correlation-Id: fddc545d-5b52-47d8-2b70-08dbbae25e43
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ihLokbMmhK24lZ8GqoZONodeH9/SYw9bLfqJJEMkU4QC/CjQ0/Ugou9JTZdGCVV4D8FIYipOdFw4GILUzyZXh4HpCnYfRHm5zUy3aRh7vTNDzFzPySuby3FYS7yvo1Q/Zz31OACZrCHMWjWSkazfs5bYyeXBPHpMm3YnaQUEJHueF/UFjtiAWTVpMzSZRUcSXA/bONtSz6R/9ijrhAldozgGD2yaT+eMljBtFemZH5RmtA+TM4nj/bcmPgf9n56xihtlVQCQ9453MMCiMa7zgDPYNbrDjI0feSaaMLpcsbn1p93/ewYIyd0RaSGdg+omCcWG3qj+kGxiGiOEEYdcH18aDDhb3gf0xRj82iDnGON5JkWHjwlFbm8X620yjyacSeSHwowe86Zs+f5o6yKdN5Ej1Gjd+fUNFIOevtHsJDhcMYIZKATzcfb8aqdv2GKUWH3NL/h4/OfudbaQXFyj6INdhoHhDNiwhxh4HuFqVQ+DaulITpA14AgtO1xooBoeGcgvRXJwqcfE8KrPIsPf3rcwZo+vGrnu8U7GPINb7dK9f3xDz4CC2odr25ws385Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(136003)(346002)(186009)(1800799009)(451199024)(8676002)(6486002)(44832011)(37006003)(66476007)(478600001)(66556008)(316002)(6636002)(38100700002)(6506007)(2906002)(66946007)(6862004)(41300700001)(5660300002)(83380400001)(2616005)(8936002)(6512007)(6666004)(26005)(86362001)(4326008)(82960400001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OPwoTix4JyuSJlXGIZn7A6u1FuaRaLurvueLxJ3wNDuhkgQg9HyXoIOfQLus?=
 =?us-ascii?Q?qMKWulOMBg6vsQ+s7FerrV5DC48oExrkzLP5PYRQeBscRasu1uAhDstr8tbi?=
 =?us-ascii?Q?0eMr5YJwpEaZaRY8L7L4yi+TcwbmkWwSRbVNh+zfPDmJzrzXsFNJyYwwYrlq?=
 =?us-ascii?Q?gExD3gFtG6A+mVD54Q5N+fp/+zQlqT47Z8MLsM4c6g8TFSUcxEMjKWJlFG2s?=
 =?us-ascii?Q?2fBildues/s9WAjrEBo2WjioWrCaQ+K10IoCsMFAqYfQbK2ZLuoI81dA0mvL?=
 =?us-ascii?Q?pUh0rY5mTFrJV0sCrpzHBwCppPGue7a17PwzG6FoXdhL5rk9Kfl6mk4eeFl+?=
 =?us-ascii?Q?k5qoIXJ1ARkJrxjuiwkiteqggrvUkPGtBIO/QECjfHu+IfNPs9xnG6spo5cD?=
 =?us-ascii?Q?oD4kCfeqhzGKJn9qfs8DGDobuGv/yIsviuovQF7MmF7o2Gwuj6YuIBDlNQSr?=
 =?us-ascii?Q?5LzUH1iZB7LvToSMYQjgy9vf3DhvwcHUY/gAuxXqVrKK8zirGO/PeV4sUL42?=
 =?us-ascii?Q?vBdSp4wkNhA8dRPZh9vzXHW8dcNEBqobe7/l/KeA2CVrKw0md9xP/a0qsPMX?=
 =?us-ascii?Q?Na5HDFSK1c+R48+6vL39v9BNOUSdtZ+1PGG/GaVwNmuJ9tCuYaHhek7m3NnG?=
 =?us-ascii?Q?GuXjpG1WJQqkDo58AVrQfFxOXgenOLCSMd71wSjG86z9Zhq0lEKwzBsmJyYR?=
 =?us-ascii?Q?5EwHNqOwltL5uTyc8ygtRmwrAwELrJNC1CJkIoz+SkDVgQNb0jGeFN0Em05u?=
 =?us-ascii?Q?DpvGiim7zepkfAw9CV8pFfszqno2kG3diOE+S9iW8PxnQ7QSlTz8m7QXVbBS?=
 =?us-ascii?Q?g+izw/3fd4g+ptE4d3VLQ+paNuVeyJfzbldMRwCrM8kiizX6qfQ2PJxRP00A?=
 =?us-ascii?Q?LHrABAbAem5Kd0IZpsAi+NpZIsVSfydQUIR+VleQv/kG6dz0QEVmEd8KDHmE?=
 =?us-ascii?Q?0DflMmXXIdjESXRkdsWooJkFMnU4kaPh+K9VbQOhrCrswBnOnKHNSXJ9f122?=
 =?us-ascii?Q?mEEov1VROJACY8jZIggkDKfMNQsMviLVL963wD+18v/xg+wXewcCL43DzZhE?=
 =?us-ascii?Q?NxmDWqa9LqND/MsWgvm38zgf5TleNGAyFYfTy7Tvick13E9AOVE0KG2hIszn?=
 =?us-ascii?Q?TayKGUSutwM99rdHDsTjwy1Qm5YuLqR0k7gdV3+CPQ3qNL/F8fndjfaZESDl?=
 =?us-ascii?Q?f3c1CBRNG9ZEcAofZyYbTpRRWdATlGn/GzvEZPZO8wOJU45ccz3KnT4mjkMF?=
 =?us-ascii?Q?Ur32EV2b7V8zs52n1Y3TcndrgEgyHn86/JtGEQLyiDR+eRNlXPdw3kR+0JUp?=
 =?us-ascii?Q?LClgXGjzdQsP0j8W/DBxsGKOaMQbJUjI0ZuDKDfJDt4syPdk559MzVfI6zGB?=
 =?us-ascii?Q?0ojM+jlyWpyrl5Jf2IRyp7/XAiPW4HzP/3cDhQXzmOjCKBqeBB5m5AwWUieq?=
 =?us-ascii?Q?Czp8n9Q8+cfStYowvJvz8PJpYn5XcVFMmd8IA27MIJy2F03xNGS2La49NaqO?=
 =?us-ascii?Q?1jLpMLgYHEXoFcKOXaYxl2O9i3AmPyMjE58TyvZ89i6O2DakdBPau54Q697M?=
 =?us-ascii?Q?6BFScuNjeihRKouYlze3sEU6NT9SMBovTiyOUZ5c5fNuMoctUwo1+rcwt5q6?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fddc545d-5b52-47d8-2b70-08dbbae25e43
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 20:36:01.2712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7+0RphoqMsOubcsUVAg3JNJg36siEDBEND7jiGDIKRolmmsZk6zY7/zixk5DXi1Q6UBxeiJFi7XbHRKPXAwlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: prefer forward declarations
 over includes
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

On Thu, Sep 21, 2023 at 06:53:25PM +0300, Jani Nikula wrote:
> Avoid including the world from headers when forward declarations
> suffice.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Trusting more your compiler then my eyes, but

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 4c4db5cdcbd0..912e0eeb0be3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -10,14 +10,15 @@
>  #include <linux/bitfield.h>
>  #include <linux/bits.h>
>  
> -#include "i915_drv.h"
> -#include "intel_display_types.h"
> -
> -struct drm_i915_private;
> -struct intel_encoder;
> -struct intel_crtc_state;
>  enum icl_port_dpll_id;
>  enum phy;
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_c10pll_state;
> +struct intel_c20pll_state;
> +struct intel_crtc_state;
> +struct intel_encoder;
> +struct intel_hdmi;
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
> @@ -44,4 +45,5 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +
>  #endif /* __INTEL_CX0_PHY_H__ */
> -- 
> 2.39.2
> 
