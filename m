Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 482FA77E853
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 20:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F8710E3A1;
	Wed, 16 Aug 2023 18:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D4910E3A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 18:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692209318; x=1723745318;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8FfhwuCOZ7ShoEwr2Torvdy0izu79nutk+ctB2Ytui4=;
 b=WcfIhGifi7LC9ZHNdkiECX/oTABPUpug6mkfWOu+ou+kF42CJwF8xgzY
 XtmmATcQo8QjCvOhKNyVMZQHEKbjptN0LE27f4LCtPCVuTPYNGaQL0ETb
 7o5XxG5f2pQ4CKuUp1ORE68u8m9ApyF25ZoF0vMJlBQXW9RzBlZIJ+sYi
 y6g3wyr+mtDQhdEgWnE7KdnmvpVMK2Haly9WuMRq60uH6l8pqKlVe351A
 p7E5f4p/4gAR4PyYTS93xRVxtlfeBO0acvZJmLmWwgtkzTpeR5RTdV+YV
 P6X7idZt49pVVN5h+u9jhRZkeNEKvMdeM5GS9zC41WGJmfydnADy2JU+g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352926564"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="352926564"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 11:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763722364"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="763722364"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 11:08:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 11:08:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 11:08:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 11:08:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 11:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQwn0jvuHiVhODcdYv53k3fbHdSPPHAl+CYt9Nw3eT2LX07khgdfWz1ntTaIpF1xeqH36nktWk4KxEAOAxS8O0Jnvjrz28DZ/+MvZk4qxsfHgtx/aAgtuVpNSPedPg+gX/lMRzcxpQ2XTpjookILjphGIsdQ8ACIPAKa0Ec/eKuyz7uVvehDkcbDzOL8HElkmDh1aG0oPUppNIvASoYegJ8ER9hNVD/jzUp3fZN9wVYPXHL351pt8fDJmb9OQCI6n6hhM39VXmoZyXh9B+F8gMX8mnINtOnxLikVGKsvmPCDGUH8eJEddWhamuYpsGYdQaFDNQ378OVj9Df6FHzPDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ef85ShwayN4OTeHEpJcooBZm/U/XTYs6jFBBDY6JsEY=;
 b=hO8SeCeg+BWMBufpIZHjVkKgk1eag+QwVcbVhj7o2tdR3ZWB6Ci365JiOnd7G2Y4Zs7fNa5eaAXoNYi5tSeTHlRSMw26bP+TZLCbtm7/W9WQyoC5EmUQRCKjKgC0Hz9UziZ6WiZK7h+TF9XqQ8K5dc4hqhLnZSvwI40wjEx+KTwLhedIbafN3H9/ls0dxoAoSyn14wRfIJcRhnDRMSZNobpl+kunXE9MNvM7PaJiygn//73pBAx6ifAeuoyfLqZba+64QDjRQ4fHrZT6ffvrrKuJs6kOlZ28I+gVCNKDoKIc9cGs2BzYVfs+GDu/l4PGsJCubhknk8LAS7aL9/tJhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by CYYPR11MB8360.namprd11.prod.outlook.com (2603:10b6:930:c3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 18:08:35 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc%4]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 18:08:35 +0000
Date: Wed, 16 Aug 2023 11:08:29 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZN0QnWbo64M+5wQM@msatwood-mobl>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
 <20230815173611.142687-7-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230815173611.142687-7-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::19) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|CYYPR11MB8360:EE_
X-MS-Office365-Filtering-Correlation-Id: d8c89e1c-c4cf-48a4-001a-08db9e83ce8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wG5ikgE5zbrJkiFFzBSDwgb+RaxaRV8Q1yfIutAlvYrGy3l3c+d5x7roSuSJ2fCNSwNjbnP9hFPecdVKHzBzN1Jz3ux0IJ5jhf/Pl56PqtsYSBV1EcPwu5cwsaUN+eN3j9QejktOx8KK5e0kgLLxDyGHbTjLui1R2DDsk0Ix/0ICbZlmfW/rmgdJu5/ovg4gKFqfy9Sl1L+gFmLstn6fC2BatNngSlUk/esgu4EAMEekbTuMkJZItmMVpH9Ch+hPEA1uFGRCoSfbITnq3PRMP/Q4P3mebQESC3GwPjEa7weBDi1kKRgTRnI9VSkAhRbq9UVhPXEnu2xY1Q/hYmq9uOp4x5p2MbJIMWvVyp3qMj5LWninrMu6ppQmyNnpYDF0EQTmuVeUtDFrtXr8B0YcMbRvInUq9YPBVs/8DI+ljre8dDHzwPJK0E6hCrgc6Go8TJNlyRjVI77dkhz5GMjxG1n4qAIlYZVCDhsaKScXBvILryeka27lqm5H/N+yfzwR/myoJTXvfKeg4/2mCirf2J/ESqnsZMq4H3U6RcNQZo0nb5vjmlM4b5okZQWv6985uf7GlZFTUBAuDizQR9lEelMnusJQqR/Mjw3i9n8vW6A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199024)(1800799009)(186009)(316002)(66946007)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(8676002)(4326008)(8936002)(33716001)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(6512007)(9686003)(6506007)(6666004)(6486002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emE3SEZucFYxSTdGT3MyYW9mcjBKWDdpQllWWjZINWxSRUxaTmpUcTVoRjNw?=
 =?utf-8?B?MlhZbitSNHVvQlJlQnp4SEdla05ueGxqSHBHVEJXSy9kN2lLaFJYQ0xacFY2?=
 =?utf-8?B?cWZhVnZ3T1JxZFQyV1IvMk5VWnBybzVwU0hWOEZhSUVPL2F2MDR6UGx6RG1v?=
 =?utf-8?B?TFlmVHArQlloMVRnVWlMQU5Kc2pHaGl4T3lkenBTc3lUTUJCOUJ0d0NtYUx6?=
 =?utf-8?B?eDA2RiszNVdQTXA3b1FrdGUwU1doeTc3Y2lmcDRIRjlWc2R0U1dERmtKTjhU?=
 =?utf-8?B?UUIrS3dqN3NwcGJlVk5KTkpyMjVEUDF4Ry85K0p6NklrV281TzhKWjFZaGRa?=
 =?utf-8?B?azVrVU1JYjhFSEZpcGNZV2tjY1NpWFgyR3A4VDJBSE1lZlg3NGRxYU51ZjBm?=
 =?utf-8?B?MzB2K2pqWjMyTm14b3RMclFIOGQxNnFhb0t3Yi9tYnQ1YVdncmQyb1pOdWxn?=
 =?utf-8?B?emltcllWRkM2QlY5RVg0UFR0MVpwV3FNUE9nSmhoY3BhOG5tdmNsKzRXN09a?=
 =?utf-8?B?d01hYlNLb2QvNFF6cmtNbGppYkQ4dGUrR1Y0RnVmMkxuNFZXNWtNYkt6RU91?=
 =?utf-8?B?K0w0YTZxS0RUem53QkxUT3hycCtsV3NML09aVy9Lcml3UDk3eHozbzN3VWhY?=
 =?utf-8?B?S2ZkMGhBMGIzaU85ZmtRV1g2dUhtVG9TMzFVMWI5V3k5WmpMZTYzNXA0eXNa?=
 =?utf-8?B?R3JlM0FYcVlxNWd2ajB0MUpOK2pJWHY3dS9zd2p4U3V3Yk9wNXhNWXpJS1hh?=
 =?utf-8?B?cUdpd1dpUTU1dmRoWmVDYnN5RHdLOURoUHBmNGVnTHlxYmlXMDQzZUI2YnZk?=
 =?utf-8?B?eG9SY3NiaGVkQWVsNHRUVFpqdExmTWVmWkp5U0ZqTzZGTGYvY1k1WVVuaVBo?=
 =?utf-8?B?M1BBcCtvYVJ3Tlo3dDRTV3pYaExxek9wN2kwZHp5Z2duRXJ0aVcxZ3VCUDg5?=
 =?utf-8?B?Tm1zclQ4QUd5Tnoxak1DU3YxUktnVzY2NGtlK2FjbXhNL2Yxbm5BNWFOeGZ0?=
 =?utf-8?B?aklqR0VIY3BVeHNlUWxlY2VlMXlQdk5wOEQ2clNsMUV6VFkwcWNnNnRFaUpF?=
 =?utf-8?B?aG5ZRm84bWlkZ2VCZXdTbmRQdHdrdmROS1ROQmtGS1lBNEczUWpiZmovakFB?=
 =?utf-8?B?YlM4WlliRUxranZvb2JsOUNxb2sxa0RuUm8wS3Q3KzV1MFgrSUZoL2lEc1pV?=
 =?utf-8?B?M0tCUTdxbkE2U21ML20xZS9RemNiS3VsN2JLOVZ0WUtZZnlTaHc1TVdDSHZJ?=
 =?utf-8?B?d3VUU1lhcGJjakw5NGt2M2VIOHJNNHk4R2xuTmlFNEhsVUhMVTVMVmhkVkFl?=
 =?utf-8?B?bVJ6ZUV1bG5Mc0RSV241cytyY3NLOXl5Z1J6L0NZQVZ4SWw3TDJsc1BNcXRH?=
 =?utf-8?B?S3Yyd3BaWkRJbjlaQkFOVEhWV2EvbXJqeXhwZEI5SmJua1lyKzJTSlFqUWpq?=
 =?utf-8?B?diszVVl1bEFHaTYxMUpTVS9ZZW5GUDczUXZ4cFBWN1Q5V2ZkVWl6Y09ObWNT?=
 =?utf-8?B?QVlqaWlqT05pS25jQmdVd25mcGptbWJEUkdLVEorK09vbFYycGxXU0ttbWw1?=
 =?utf-8?B?U1RXdmowOGZtcUFJVG5keDJJaFJTdTg4UVpxaW96cDZDbG1QTnYySW5lY05D?=
 =?utf-8?B?aWNXb2ZxbmsvMWlldTYyZmNubml1OEQzQ2hHYlRSbmZVUkNOdU9sUy9rMVJo?=
 =?utf-8?B?Z3oxeEFlOXpZOFBIZ2dFSmFGUFRMcDFZb3d5MXVrNHdKdHRhZE1tOHYxNFA4?=
 =?utf-8?B?NjdxaHNtWVJ6YTFMYS9nSzF4WnhBK1YxZnMxSmpRSW11WXVMSEZnazBOVURa?=
 =?utf-8?B?S1poc0ROZGphcGJMMk50WWtYY1AxR1g4dHk5WllrWTN5cnVrZ2ljN05vMWpB?=
 =?utf-8?B?NjBvMXg2TEl5Sm1JYmZ6dkdXMlB4eWxacmVEM0t6aEgyNnI4N2dJbDlsZ25w?=
 =?utf-8?B?N3JmQmNEU2hKNDdhRGFIcndwY0FHK2d3Z2dIbnM0VU9pM1MveEFtNXNxQTR3?=
 =?utf-8?B?QXQyY2NjMnVtNFpWdU04SnZaMElTNzNhcEdLUEhEYit6UUhKNWhkRXoyejdP?=
 =?utf-8?B?WVlVUDB1N3FMbDVTaVVSbGpBQUZQL1A5R0N6MFlQRG9TUTg1MXZsTVBBMFIx?=
 =?utf-8?B?c1NsOTVwNXVWUlZiZVhML0tSZjdIeDcxNExPQU9PVnlSbFc1cHR2d29RYVVM?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8c89e1c-c4cf-48a4-001a-08db9e83ce8f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 18:08:35.0519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YrRsBpcLFSTzjNRaVlYXcOnX+T6cYGYvo4vG5p8NbJdCXwCxns5JNEtCk8sSMyOA1tdmISPJI7rxGQeuvGQ9pwV8bm9nn0YzQ+vXwxan/yw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dg2: Recognize pre-production
 hardware
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

On Tue, Aug 15, 2023 at 10:36:13AM -0700, Matt Roper wrote:
> The first production SoC steppings for DG2 were C0 (for G10), B1 (for
> G11), and A1 (for G12).  This corresponds to PCI revision IDs 0x8, 0x5,
> and 0x1 respectively.  Add this information to the driver's
> pre-production detection.
> 
Bspec: 44477

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b870c0df081a..0201115746a7 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -183,6 +183,9 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
>  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
>  	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
>  	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> +	pre |= IS_DG2_G10(dev_priv) && INTEL_REVID(dev_priv) < 0x8;
> +	pre |= IS_DG2_G11(dev_priv) && INTEL_REVID(dev_priv) < 0x5;
> +	pre |= IS_DG2_G12(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
>  
>  	if (pre) {
>  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> -- 
> 2.41.0
> 
