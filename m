Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B2579919B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EBEB10E20F;
	Fri,  8 Sep 2023 21:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5326810E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694209614; x=1725745614;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Uchitb4v8EbSe6kX7a7B21dpY40vuxPNxt1D7gD/ACg=;
 b=DLBqnptZYfHkv2meUt9wGaFAnFCgKwCEIl97pW7zdlu4INXgfPI8mxIZ
 SoEldlILmA/0d8bO+PhtikF6uxxN0+eq+gCdWlXAPsUyT+vIjuzITAUr+
 qbmC4bU6kTiN1/a36q/m+yobbYMLJMicH4qBhvXoBVwemcHgIsSKRkYyb
 a06V4F/veszJhaG/DoSPPkBKacpAJafuzYFXBuNNadlfjTHnl4ltCD310
 xABc9fIGfWNoglsX0QrUVVAvTA40y/LyOUIFDn1BuH48ABrK3X7gNBdYw
 AFkTW1rbOj0PDf5ZmsweQR1T0orU7tMIMqA/zqiPI0R9CH5IHId+wWVMK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357219193"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="357219193"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:46:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="771891095"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="771891095"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:46:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:46:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:46:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 14:46:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLDdbpgqckaT/oJkNka8mhf+bnqaWuHmAVAQgP9qkb4TxgvXQKTdNebP14+cv7qm4iPxzLBsmZ8zQVc1MsUncj7r3YCp9Q5Y3teEFmS2YgdpEgoBRqix3cq5QNU3/kLF7u1bJ6JmHa4GSmQMmRixh4xn3ikRUBLw05jRheKSX0UrZPNCq4qWFuA4RzvnVXj5twNB4rC1+C+RQIYUZfSaCdef52Y/lZLk51FNatnAJbsg7mrX9kGCMQ/gf/AIvWIJDjymL2j+b/aRc+bGKi68g9DKlYOvoO1xvVgSLMX524EWgvvcyZ8kcyRW1Kkn2DQH27FxiVcRO5liyKskk2vgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5/Pl0B1EykeVpKcrJfQQBuKPMcr+HO/rg3zOzboUb2A=;
 b=nnQg8VVDY7IQw23wLeexmM9nraMP+eigtG0rjzko008TvTIsQzxQdfP1H34FVSaHn6/BJvXjsLfjHiicTwp+FqShL3cTiw3AQOHcnnX9fm1OIvNbyyqXLDQRkJD2pnHkiTQtMWP0cfxmr1Nzsdk+plM10Gnji2uzx8Fp6k46jcJXoH9UExzFQTtHCAYdNyl2X3HmylkKGi01HrefM6K2VEKj4vhhbyOG3OBq7zVjh8VeYS53dZCXaimr93UQ2PuxZfH6QX6zhBSvNOk+DVW4+nn3qM1AeCpvDmB7OHgIz/T5oJCLW//MrQeU5DZPQoLZjkvIdp5h3oc+u3aclt7P9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 21:46:50 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 21:46:50 +0000
Date: Fri, 8 Sep 2023 16:46:47 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <g3sxhwcz2cdpjehgltzp4dgevks3mkazxvq7hgjepvsxo7awbf@bybbcaul3v2h>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-8-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230906234732.3728630-8-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b39a85a-015c-458d-daf7-08dbb0b51b86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yxE58T7mOisk/GzixIkw/qjLMGkmGZAqmHs+qXi6ZY9K38XFjkaRHxdcWizjdLLWVg752axhDs0v6j5s/MQVdoPJAi4U0rHIaX+B/Lfn+QhgWKsFFF9dj533BScXGCECdxuHjP19qIej5Q7CqCIA+FUIUwT1jAt+iB5GTHcD7Z2V0XPUFg7DSaxfmUuxMbDmqgYJRIGFMV7CtqXC2Xl7bkuNT2IwL+z2vKYvZLp2nhW+9GZk6YnZDyFLg1RbwMSG50S2cOUMbjbUJ75mUWkwI2rtoeEjPV59uvpsM1v7EmMlPyy+rI2R9ilNrDKffmF8SeinMh/OVajS9Pnscqmxl/zucHFmjGigBjVaDdpfb5tHnxoTtHamnY1rctVJQktvITOBSJrpAKb/c9E4NRDzT5ldb8pMAoLwiQ4lUXSUr6SAgYDdYCTZWQREBxk1AuiClcKOzON1SX3pSchJYSlTYEaL3WSWWhoG7Ap73M1guJy14xYUvwQuVz67ratZg3my+41D+GIe8sstgh3p0drtMo5b1fKTWwXyxEb+owTwYQe1vtbSdViNRp7QevvwiZMg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(1800799009)(186009)(451199024)(5660300002)(26005)(6862004)(8676002)(4326008)(8936002)(2906002)(33716001)(83380400001)(86362001)(38100700002)(82960400001)(66946007)(66476007)(6636002)(6506007)(316002)(66556008)(6486002)(6666004)(41300700001)(478600001)(6512007)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T5u+ORqmFPfHwLD1YqPpg2wHACEzC6g/La2RbUZdyfNoXI3afqQVhLYPgHwg?=
 =?us-ascii?Q?b0dvAwLy3Alv0BHEBEaB51EiQiqb6ZrUtFcnmfazfOe8ZLwiaYYoG5UYzYCJ?=
 =?us-ascii?Q?eJqbAUhAbaSwflyAPbiyUo3FrDJxbZsTA9k5m0jZkZrcghFAotVSyk834yH3?=
 =?us-ascii?Q?LZey2E3KUwtQ0Wi7qlas6V7ZCbmuf0cg53842aeugLN8wS6bwz7f+/OQWy2t?=
 =?us-ascii?Q?ujh7H9F5vnFaq0mmweluiicKWIYIzhn3wSNGm+DlSkMJTJvL7JFOAfhLKu1C?=
 =?us-ascii?Q?nAg3MZjg2iZzr3yjP2OBZrEXUWO4Zg/y63aPYZwY3l2ol+Apzl6ZAtYQJmVA?=
 =?us-ascii?Q?1+hGBKVDIm+p+5jyISjbJ6xT+9lbyN8CScxfdFk1VDE39SIgq2d4CbPtdNiP?=
 =?us-ascii?Q?veuCzG31fi0l6ymaBTfkbTb+JASzJ9fTM5P2Ma6TA1ZKRwYegTeFG9F5dT5p?=
 =?us-ascii?Q?hVZyM5JBtG4GAKzBl1tU5mxSIkqsoOlFlYDZ+ap7OJi4foxsxo0bijsKiXJT?=
 =?us-ascii?Q?HsziIWrP7FuOM2IUYua407AyUszdcUXujbuZ5esc/B7L+UrDoNSsNTPOqjcr?=
 =?us-ascii?Q?tTiqK7Sq53B89Z0kRUmS0KXJ+HRJ0QlBhHRTrLNXPv1OV0EEZzaDrKFRWSY7?=
 =?us-ascii?Q?6Jmacnioicvc5Z1zCDo7MtUKxRjodTSGwucJ5KtIcg7hpm56ZJCizY8h+AWv?=
 =?us-ascii?Q?GUMNYjIvw2HmU8Tx6NgPAy8qPgKSRK+UlLyECuW1Rh1iVmw44sW9nF85uR7M?=
 =?us-ascii?Q?cMIlpZ5NhdKOgAny6b9WZpMIn2E1L0besyp6py/6Pxa7frKKVLcdDluXlwqQ?=
 =?us-ascii?Q?GtWIQe0DMKYl5jtedPnH7yLMO0OG/NUsKIrPvGToG/e2y3qUsUR/Amm837ro?=
 =?us-ascii?Q?98rKMAYsdRmoVL76PclvJencdGLE7TXzuQZIZGyxk50QEBdOUmLHvQ3+1Il3?=
 =?us-ascii?Q?c6/vIu4zXekzamzAnRL4NE3Hcgz1G6gHcpmQ4wduNpzqpRxhFvf6Sp8InIqL?=
 =?us-ascii?Q?u+/ZyTDVnp4pgGi02iNED9o+UsW/0a96+LD6giQc05rYFbal3gP3Oli3jEnQ?=
 =?us-ascii?Q?V9DLE3hChpyS6vjrnfNlKbVn+oaq8NgU2cFfZDu2H3xmpcvCPSKFQp7wPAw6?=
 =?us-ascii?Q?X09gWoJORi7H7aRrRsRfS/SKZfplo73rs6ZpmAt6pExYI9kixW7C0dL5U1t0?=
 =?us-ascii?Q?ReZxXs3stVKSUadxiBjz3k7wv6Kx4KP4H7XZ55gjn50LEwkSp1QwLAOT2jM/?=
 =?us-ascii?Q?0Z9FqN0anqYrXUUVvzWmbhfHKcB5WA1TdXuXLB64TnjH1H3GvRAHKfgKykNJ?=
 =?us-ascii?Q?7QqmEbngFesSgfa5+ii1MVupD0TfhiNf7mUv7w+QrX50YTtqBPpFtS/NO4yY?=
 =?us-ascii?Q?tecuJeR3LFjZ/TcM8F9qBXEoW44hO2Rpf2nK+Q6XKy/MKNXPrOdUun38pYAW?=
 =?us-ascii?Q?m5QY6rFar4w74zFFmb8I82LMKO1Fvv66jo3bmzt+AeRsDHYQInmmM2z5j6/8?=
 =?us-ascii?Q?5wG3TGySH0CuYRqXZJAE4zFGe0tkJWAP04xteaOpugCh3RdAZ9tSRYMVIA2T?=
 =?us-ascii?Q?J6oYJGRhCBxjnd4pTihvXvLvpOCQYYWVZj2CDPsumNmiXjdeOQHqJXtW9ZYq?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b39a85a-015c-458d-daf7-08dbb0b51b86
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:46:50.2691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2x0Q8K1986ZwcMSteRR/krWXN7b/J/BTzJIDisqabUm0I3NnkB0yA1sPNc3Gpywp6S/U+BkiDzJ26txcXdI6ASWpuVw+wK592HKa5BNRZgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/adlp: Stop calling
 gen12lp_init_clock_gating()
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

On Wed, Sep 06, 2023 at 04:47:35PM -0700, Matt Roper wrote:
>The only programming that happens in gen12lp_init_clock_gating is for
>display workarounds that are specific to display version 12 and are not
>relevant to ADL-P's display version 13.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/intel_clock_gating.c | 2 --
> 1 file changed, 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
>index 1f2e2d7087cb..2a4714c662b8 100644
>--- a/drivers/gpu/drm/i915/intel_clock_gating.c
>+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>@@ -375,8 +375,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *i915)
>
> static void adlp_init_clock_gating(struct drm_i915_private *i915)
> {
>-	gen12lp_init_clock_gating(i915);
>-
> 	/* Wa_22011091694:adlp */
> 	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
>
>-- 
>2.41.0
>
