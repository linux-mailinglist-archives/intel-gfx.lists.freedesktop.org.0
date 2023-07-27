Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943DE765B70
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 20:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFC610E5DE;
	Thu, 27 Jul 2023 18:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54A010E5DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 18:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690483135; x=1722019135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I8Oyt0kvFnDSvxdaqTmyHf48TOTrvy1U8U54+0MftkQ=;
 b=izR31bjF5V03Fw8hza7L/uCetuSaHeT6wBn4hhqrKAy3Bg3+hdEwKKzO
 AtL+7JDKeU/jzQabhRKiE+F6+3YIXdonONf3xVwQZF0JMsMBlvaYdpDYy
 WXxgqiyfqzSG8tH3c8jWLTkJS8XrH5XuxPAf75USKKHUdTaDfDJ8H176c
 09XDcAHjV8nMokSaYiMO6m5Wyf9j3ExLR9QJdid0bL1D3kBQY0iBVI0Pd
 9n9BY1VcN5OZk2MtvpsqpIdknvMFqMtjcj5i04rDWeARHBxmLJTjVgOhF
 vuHJB1c6XpWjdxG2od7Kp8zelDIT9ovcQ/Qhw2mK/gZlhmPUDp0ljARgE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="368420728"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="368420728"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 11:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="756799306"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="756799306"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 27 Jul 2023 11:38:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 11:38:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 11:38:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 11:38:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 11:38:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VuiTN+b9+f8kLfEpAUv8VwAi+yIlrJpPRtySFANhDJ1t9U8dA8IGMVFLsLWHwILHOYvssokPhuKnTK0OnVyMcKmRHL0Vfoi+HtPttJhSyRK48iW+PnJYJOR+sOoTaxiZZ7CYofh7BAUKLtgiI3R312NDkFxfGOlyssWJ7HzNYoM9LeACyyJ93L9meVDTw6MJg5iA+082tMScVsOBYus1eW8Op6PWOrOS6ZFKal1FrAcYHqBDTsd72u/LIbr9T0BON+MsW7+/Mtnbi8S/rZbCe9RX0TWJ6FDPouuzZ5eJllIa2mmxsvT42Tl3wqlA/M6UuCYRFQbWa8iSpKsoquPFIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n71HhDZOzM/5M2ILLPUwCXHefJfFpTjKiqBeA+nqaGE=;
 b=KuHkn0gOscUqGGWbS2BmIf9dovo5uLLS0I5zdtvmoGiCOAX8TgUVGutvVhFEESM7JfCxDhki89yK36QXy3CnYSEls+7X2u+b7o57ktES5BVLpv0oUtPqwXhTk3icqNLB6ZlZqjmUOgb2W/6URXB9YjHp8XLjVj9iWtAtVR1A1rSrdSE5vuYJ6eafmtWrb520bJSw5XMll1AvC2fsER2C/gZUTX9ZLJGuDLyPGFhQ6goay0qpPUzAdovsVfWmOz2sfRbZHQV/8grplAE+UTEscHU/vHu5gl9bIX8CoBHasiiaHT0pXFlQzvom8zohbvTmXgdXMfnFmXzsWdYjEdXwzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN0PR11MB6255.namprd11.prod.outlook.com (2603:10b6:208:3c4::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 18:38:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::3294:2cf2:e022:7164]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::3294:2cf2:e022:7164%7]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 18:38:51 +0000
Date: Thu, 27 Jul 2023 15:38:46 -0300
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <srogjsfop3i62swm6uj76pnzred4e26xiixxb5cw3if6jlk3t6@3hiruhl7l7fi>
X-Patchwork-Hint: comment
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-19-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-19-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR03CA0161.namprd03.prod.outlook.com
 (2603:10b6:a03:338::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN0PR11MB6255:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fdb5cfb-4db0-4d65-54ef-08db8ed0b8ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fikm7O4owxRZ9uNt7bWDeMtvFKaiziYjMENhzerlpNgopqQascyjAo+zlrTzAqPExwKN/DhE/NkxACafWE6YZ9Pu9n6sjrK229O09/FStX6pIlyS4tlRKJBmelf/jHOJ9+7v9os3b20retPCZqx+g8Aj8jXKLqYS+lEIsFqcTQOi/4ho06oVTPfltJvoI4gEKzJ4cQ617ysxTAAqe2arLEKqpY4pTajTSYfNEtB0RUUsr+dk4mFqz84U5NPEHs8FSNs/+rz6li/S0CHgcrqy4iokZdY/r07RqjMc0fwnHIlJMFH5WQECWEH+cvchk5EP37qcoNawLLFviWxl428NUf4reB8TtQ+KqPUKv5kxVHfwUvk/Rml1dzTOtDV7sjos90WlKlS57VF4S5WAg/LOys7qPqFW5tk6EwC+4Q3LQm6KZegR5rtrXSWjATw/90A2h2uEusA5XNyx4jGZ2g4KdzgPfhVeHWYsRGCevazDmo5b/Na48GPWd3rfjCNFGWhPYEirT8zNgcdQdxVox8at7an+8VTYoiUYw9pZn9dDEymdWNv9jl09UNOupySfNhDk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199021)(26005)(6506007)(82960400001)(478600001)(186003)(6512007)(6486002)(6666004)(66556008)(4326008)(6636002)(66476007)(83380400001)(9686003)(38100700002)(66946007)(5660300002)(41300700001)(33716001)(316002)(2906002)(6862004)(8676002)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MriY/bvBa2O2ndP8vHhXrP8UskZH06/VyP4MX7Rtl3S4v7o9xN3LfK01CDlN?=
 =?us-ascii?Q?6EU/keHPJ845NBG09wSebJ+fuysAgOEpg/Tnf2zwt3JC039Cx4m4LQ5nscpi?=
 =?us-ascii?Q?pWRknMiFOh19f6KI5jJjbAURWn8yu+CzO++XQ0Ux9YuESMGlo7ma17+IG2PK?=
 =?us-ascii?Q?nEZoKfLCN73VoLM1mWjcaYf9KUsEZU73MM/pmwF3bgEgioGMsugX4M6nhd5B?=
 =?us-ascii?Q?aJnPHso6Nc9zAoH9obfk9hk/UWKsu79B+tkxFv//Dy3BP1DwKYxbL6R9sjv2?=
 =?us-ascii?Q?5MvhH1EHksrnTKpwLD1SHwoNpECY6DZvq3OHEr6iaRIFO6NBCq8vo3z/o4x1?=
 =?us-ascii?Q?tJZQRqX/4RMQ+lo9UPvzrNX6eN6r/iu4fK1KpLz9NdmJE1+d1nsx52ZKbD2+?=
 =?us-ascii?Q?r6CclNO1HHJH16TGXe0rnVeh1dNpFXXYkuihaV3IkVIaYSfHBym4TW79uuSq?=
 =?us-ascii?Q?W4zuVCzVoEn6KK2BSCFzjwEqX5+qZ4Eo6dPIuiiYJkVVqyXsnzsJjf+O8MDx?=
 =?us-ascii?Q?Q6opCO/w2N+dlRyjVZJUscZVmNl78bPrYsOOaDUXQEcDuwrFmqxHQ/QTiycR?=
 =?us-ascii?Q?PFi0GYBntiUrqLbOC+A6IzE5vM+lXWKsa3DiVPoUYlp/jEV7vIYzivTW0HX3?=
 =?us-ascii?Q?JeTNNl/uZjNI5G12D1cMUZDfdrrDUz8Zywn0SQ7N2YQTCRPy24pz7U+9URId?=
 =?us-ascii?Q?cYFzaedO1F1Ic22ZoOKLUfcRqpN0mABmLsA04kSSp6D3sjgIv5bkSkDFrO1h?=
 =?us-ascii?Q?zkqbNBg5pDJFIbcFVpMLNu1jkpptjv7xxAQEk/CfDEBYBrwW8ng7yOngd4/j?=
 =?us-ascii?Q?Y6//hRgjtNdpiNdS4SYWm8sUi6AwbD29p6jjhq3Kyuj3mLmEFpvxDKymrESU?=
 =?us-ascii?Q?v2Uf+DSXJohWtg3lMw3rgdn6fbO7xqAoAuyWcZscxXnVOkt7UlNBIf6+NwbG?=
 =?us-ascii?Q?8Gp4phvaydHdbyiWlxoebzYEWslWiIJbU6JeQiSNZwsDzpv3qIvz7CM7j1/a?=
 =?us-ascii?Q?OYomjppiYpUqRm1JTP8C1gTrgjDMtTdKTLtNd5Ud2AX5I1FyyDVfA4BkmZ7d?=
 =?us-ascii?Q?BSDa4K0p4PcbgAfTSZcPICUqmK1WcXMO6EkTHmoIZocE5E01Wu72Wy/T4rQM?=
 =?us-ascii?Q?EG+nEriN6w56xCr0sw+eYnT8yQef2bVgcGM4MkTSGoA5gROEt5wsfIEQQ7Rq?=
 =?us-ascii?Q?sKjGbXyo7UN5+Fo64GzpK4NY7Saycd9AgzuQPTBWd82BnHVZquXU9R1nqGl6?=
 =?us-ascii?Q?WV1lcJyD9GJH2nlddBJepCBpacBLx7M6HpoZRUZ2cf6BHxj7ufzyXnJqsman?=
 =?us-ascii?Q?zyMOCOvIXOmb60YJD1+BXI4eeS4/oUlH5Gpr+AXEnVp2BRBHBqb5URujHg/R?=
 =?us-ascii?Q?vNFqG515j+bvKXsycSrrnyaBLVcJyzDAswOC3ODE2AGRnVNqnkI18u/bokLj?=
 =?us-ascii?Q?Vi4Sz8bdxSjiAXRhgqqoTPHYf4J2dRgex9X4qQ4p/Mj2L5MGuT1T/aTC1/tm?=
 =?us-ascii?Q?GxPAM8iWZYWvSoI/UentgejAP5k/o8HB3RpiB477M4kY/CxN90NawcMDRHBD?=
 =?us-ascii?Q?HRrtbhj+lxWGMl9F1rnOB1BfYr+tZ8aYrWr/aD+AZKMU27OUokVXWPBXOTF9?=
 =?us-ascii?Q?xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fdb5cfb-4db0-4d65-54ef-08db8ed0b8ff
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 18:38:51.5668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D4NoyJjVTpf571fIJ22/zihfR5H4+r1eqtO7ucTtn5bvuxvqQk76pqyORU6IkKc9O74zl9M+FXXMk5iz2K6vDLl0GTrC1Ll2duP+E5+FVf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/display: Eliminate
 IS_METEORLAKE checks
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

On Mon, Jul 24, 2023 at 05:13:21PM -0700, Matt Roper wrote:
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c

for the phy checks what I have locally is:

>index 1b00ef2c6185..a42b3c4c0ed7 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -31,7 +31,7 @@
>
> bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
> {
>-	if (IS_METEORLAKE(i915) && (phy < PHY_C))
>+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)

	if (DISPLAY_VER(i915) >= 14 && !IS_DGFX(i915) && (phy < PHY_C))

> 		return true;
>
> 	return false;
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 43cba98f7753..85efd77f491b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1767,7 +1767,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> 	if (IS_DG2(dev_priv))
> 		/* DG2's "TC1" output uses a SNPS PHY */
> 		return false;
>-	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
>+	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))

	else if (DISPLAY_VER(dev_priv) >= 13 && !IS_DGFX(dev_priv))

> 		return phy >= PHY_F && phy <= PHY_I;
> 	else if (IS_TIGERLAKE(dev_priv))
> 		return phy >= PHY_D && phy <= PHY_I;


would that be better or do you have something else in mind?

Lucas De Marchi

