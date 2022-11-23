Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A168363662D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 17:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D2210E5B8;
	Wed, 23 Nov 2022 16:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827F310E5B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 16:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669222268; x=1700758268;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dH67D5mBiuGUgzV9/XqA3Pd7+GcqlIOtmqqwepjzEJo=;
 b=fpbxgJ1SjxWkGRtekdy2+36tHgagC1FpoZZsxDIKfWHeI9DtqHYRh40d
 L2+6SbNUkty6SZeaty/Za24ymhBs8/MA790wdVJj6F5GM8I+a1q2g/gLQ
 Yfk246GaAHe1iauWERutZNK3oE3140O+i1Re+lS8UTs+V+mTmIgya4ru5
 eLR8ylGlzO4aafgcyfEMXcpkfLEHksTFDC+94U4mQXbvsMhENYfxJCihm
 BJUEUUAufDCYPVF8H/oT2Djdj/XO5B+mh+reBxpY0PJaUoFXhswtCF/2o
 k4OhToKOqonN0dqqHJz6EsEFXWjefkVe/dh1OXHQZnYm4WZJJVc3EChwa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400403863"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400403863"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:51:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="674784829"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="674784829"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 23 Nov 2022 08:51:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 08:51:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 08:51:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 08:51:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZajdwVJ3H23zIwNun9UHDataiUlT9XAxppDMp/+XaeDx3ojFoRWOhimze9LTwJuN1/qV/lAliEmHACHHEbM9Cp7jT3jIVjokUPzyxqHSdsua5cbIllE13F7QEQbqqOpu4+jHUmBzlWA2BNgUNXyO3BwRuFFxyEn9xxel8qCtGw3J4YFmm3hJAzPli5ywMyetQQH6LvN6SVjAmomyLpVva8PhXPh/DMGeZSZkQY/q3nje1k+BcoeiW+DEBfkXjODwKA+H6u2q9a04tWQnP8fFk0xZssVqpppFt8VvrVDFUecXOMAisfr6DZPGzyMUpImRDnE2oJ7bxJmWvAN4LJHKbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l9QA0fsEFnoDpxzBMFjhz5VtxDHemAPAEpbxKvEVzLU=;
 b=KLIb9ZyCFflJawltYzMdiDGXeNml+r028+p7/uy9mEbyStN3RUaT09HRzBN10GD7YeshDQQMqXl2w/sRzmcYeFZmgpDz8s27ZCclwWe8c/cfKVkFMTn8h4ln+bygwi0ypTALz5+duA0/hY59YLtvXjJX27GOK1OG2X2kfbikHQgi4BDs8EKPcEQILJNNjxHEwn3rTNkqY67BgmDAIyTF5kwpdft4I7sYpynjfnDr/QyPZ2b7wSji0HSd6L08W79VeYWVvZRbQ7p7lcv2BAFiB9kHGNaO7IV6lZl0zi2DMK/xAsqgabg5+TPk2fuWkoBg5YROy3f+KW1/jMXMALlspg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6353.namprd11.prod.outlook.com (2603:10b6:510:1ff::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Wed, 23 Nov
 2022 16:51:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5834.009; Wed, 23 Nov 2022
 16:51:05 +0000
Date: Wed, 23 Nov 2022 11:51:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y35PdGig2b30bKSq@intel.com>
References: <20221021054719.2090900-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221021054719.2090900-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: BYAPR01CA0067.prod.exchangelabs.com (2603:10b6:a03:94::44)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6353:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fd70772-1524-4e75-c206-08dacd72e909
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3+nQOXl3amrXg9rCAAwJHfeW/G2QLckbKeiCeFSYdM9NBquQMyiy4CcHCl/vLwt+sAi6OZcXhIZedDUmaCzVWLrK1kB8k0ZBVf+MC3ZyXSX4t8UVz6LDGcs0CZ/mBrvc6qyv7s7XQVEO8rDuaOpeAIessj3rpsr5AXRACJ5AnR+5uAEQqyZ2ES92zWknhIozGmztDjFvWGqOgmYUlcJAwpd3AvKuQhIAjLIKiydABaMAfSextMcwNid84sasjfo6+4zWSBLGQLKM8nGptT1QpMIuBV5IQbrzFgfQ/zayef8Ma0f+XEJkD55a/gg+L2ZR2xcOLE4AUTE24uR6qk23FQN/PWxz3Qatn7IdWAbCnlSWcLphC0FP6ahFHm+Il86uQKWjz3olLRvFR2nfYy8C5r3Swrkhhe4OiOgnKp6rTWeFF8Jm3Aq8pBzq8AFwDG/05Owya0a8scH2Mob4IKUmNK3uf868LP4XPJ0IEz66O4/y9wYH5DxoO/2ei6CkQ7PhEDbK7YMfAOXnWMrAconO4EC7AJ5y9iAaajHO4eqtssQ9Iv9KhaxeLe9ApydoozSps7iNwqgbC7d9qdiLAaI4Avi5Mp/qt0j732Sty0ALqP06NZibiLpLvEz5R/8/CHmg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199015)(478600001)(6506007)(6666004)(107886003)(6486002)(316002)(26005)(4326008)(37006003)(8676002)(6636002)(6512007)(66946007)(66476007)(66556008)(41300700001)(2616005)(8936002)(5660300002)(36756003)(186003)(6862004)(44832011)(83380400001)(2906002)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0KeOrgkHgUGMLFFCqYicZ5uCgU4nYZywE8MDoxq/VCubMpHLVTARcJ/Bz6vE?=
 =?us-ascii?Q?KVVchllrNr8SvyanXricCWQtE0lizK4p2/mC7TrrT/AtsdhGmoP9KjPVcDXt?=
 =?us-ascii?Q?EPF+C8SL9oqnMOQGkZtMU4p8vKqorvIr+sWCu9Q5UxERSAgF/660TuqATle4?=
 =?us-ascii?Q?/TOFkgoeP4hC79i9HS6waKlOybMtn9Sz9N1bB4dEhb2cITRy6iqVSu1rSM9z?=
 =?us-ascii?Q?BiUmGXiSxj8MPyh1Lobbw67ZCOZI1k31Tf3vmBVBWm5KdWp2L9PF5iwEPDSl?=
 =?us-ascii?Q?7M7oLa42yo8JChQLpjolqr8DIlEfO/oDkrGFDiOdaTkfhB04gghEVymvYq8L?=
 =?us-ascii?Q?eHkK0ew+kBn0wPi3Ws2LOm2/qVG6oxDRYIm1wMe8UQZghkNZsd2UyDQFR7ko?=
 =?us-ascii?Q?+CSKuowYozF+I28ymA6+sQhu4gOSVoX43069aMzcmdvxcb25eq499PnwT09I?=
 =?us-ascii?Q?k00izGSP4xBG2yXBmzizWxMGgFtv/sCX9yaiT5ukaO5Z6XDuXzMYaLwlT3sp?=
 =?us-ascii?Q?ICs91urP/3CJRaQLu+m/2RLTHZa2oTLnW13Vj37xFtnVxzMo3ZQj7feoIiUo?=
 =?us-ascii?Q?jIi9Z3ru2Q0nSZ8gRLxjTQRsuL3CZvrYaj+Gzfu/E3jj1Zjbt2GtK/2fEJyu?=
 =?us-ascii?Q?vuPR61zTjUJ+TPmqvuWcm2wJl8NG8qlc/HofMQWQtk05YMO2zierSFjtbCVx?=
 =?us-ascii?Q?W/QBhhy5x+YG6tLbnUopxdAunV8OWzwpwNk9R1kq72LpdOXtjz4YBHv5zUQj?=
 =?us-ascii?Q?DmNvdSI2y1HbEHG14HJiMOJ++CBACqSp3hQxyn3JpZ/Ltr6HJnD/pstoTIC7?=
 =?us-ascii?Q?9dzH9lh/cq+n/dJhqfefUxORohJN79D7dhFu2ZBRo4vqrpeQw9LGlT5YDd9U?=
 =?us-ascii?Q?lFdWKlEW9gN66u5e+R6qI8b+/Ccmr/1cKCVOhevsNLOKJwfj1kbCN2TCWbJ5?=
 =?us-ascii?Q?DQNHGJsHs+9TJKxUJxcfd8coSi77YOPxXROLNf21pAAX5SOBaVQj7he8gWRL?=
 =?us-ascii?Q?nro3H/Fr1kn9QSa/xmsLKT5j6b+bG+7+R81900sg/orokZnCzmpGj4m61Lxo?=
 =?us-ascii?Q?33zWIhE+WXyREvwgnFGmF4TOqFPiP184mVmTM6QwpQPCNV49IfMYVeVAt/c4?=
 =?us-ascii?Q?MjbUoMgNdX5Hj7a+dAEtm61OKvdYXZxz/wK9oUGWUdqGELgeRutm5m9+6YRp?=
 =?us-ascii?Q?ij9vq5VjwPmvNDuzqRS+ODgGotnJPAqzI9GyvTA/0+STb0SPMQzH7Sz3YXI3?=
 =?us-ascii?Q?abBYJeB3a3kx5nIq98VL1lwWAxoPRf5oUmvopILExaNzjcnQg8VQsbUFx5XN?=
 =?us-ascii?Q?qtYLkZE/pav5rZ4EvhrADQPJme9p4Bu+L5Q5SqFGiGDatInJNLTtF4B9qSmq?=
 =?us-ascii?Q?Qor+Nhwos41LmJSOuebMQgloreQtMmvXkksABf+VLz0769mQ8+gDrp/qKzoQ?=
 =?us-ascii?Q?xQ83VXnmNC19NEVZsMpFfM1NB7K57UqEO70lRZl53vsB65Sc/tbm/1gp29eX?=
 =?us-ascii?Q?AlovIsSzh/7YAPynLrJqKGcQRaqXFLYmZh0SmbrCqhZ6QhVtJVBSaEyCbbj/?=
 =?us-ascii?Q?KB6lDrRPql+txkNNIb+CFi52lB9rFjWdeQmaqQXi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd70772-1524-4e75-c206-08dacd72e909
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 16:51:05.0886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +A58QsdCCqTzyqPumRm8GOOIrKTZ1IY4SvZsmEnh3ivk9Z3gFciETSkIwRO6PrfhamD84hr8+/r+bJt9y5/i+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Remove require_force_probe
 protection
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
Cc: intel-gfx@lists.freedesktop.org, suresh.kumar.kurmi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 21, 2022 at 11:17:19AM +0530, Chaitanya Kumar Borah wrote:
> Remove force probe protection from DG1 platform as testing suggests
> that the platform is stable enough.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

We do have a clean CI now that Umesh merged these patches:

e746f84b8e81 ("i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32")
529d95a6067b ("drm/i915/selftest: Bump up sample period for busy stats selftest")

The suspend issue that we now see on our CI is a new non-gfx issue:

<6> [781.604766] r8169 0000:06:00.0 enp6s0: Link is Down
<3> [782.752413] e1000e 0000:00:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x7a0 [e1000e] returns -2
<3> [782.752427] e1000e 0000:00:1f.6: PM: dpm_run_callback(): pci_pm_suspend+0x0/0x150 returns -2
<3> [782.752436] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2
<3> [782.752492] PM: Some devices failed to suspend, or early wake event detected

so, on this force_probe protection removal now:

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 19bf5ef6a20d..bbd3e8befb55 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -926,7 +926,6 @@ static const struct intel_device_info dg1_info = {
>  	.__runtime.graphics.ip.rel = 10,
>  	PLATFORM(INTEL_DG1),
>  	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -	.require_force_probe = 1,
>  	.__runtime.platform_engine_mask =
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
>  		BIT(VCS0) | BIT(VCS2),
> -- 
> 2.25.1
> 
