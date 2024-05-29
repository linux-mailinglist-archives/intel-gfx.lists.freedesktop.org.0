Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A9B8D4022
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB7F10E727;
	Wed, 29 May 2024 21:12:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G64vHh9m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A3510E727;
 Wed, 29 May 2024 21:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717017140; x=1748553140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=O5TurAya/2I5Py4iqk+7H9msGlB6eAvUSJvf/UO/Z1Y=;
 b=G64vHh9mTSKZReF+Yun+EpXp1ZZ7ZEVjlIeLCIwXzi4vuL1zH6c0PADy
 zZnbU0ZJrknk5s7IhJLsXGam2bE73CBMMNYl37K6U4oTZbI5NSDjUKNCk
 JBmCl4PbQZkh42lw8jds3E46MSNuvIgUHkUBVCJB6+3xsR0F8XbvF8Gzz
 uk1hFPls0w1UDjvfECfU0UIXXf6o1YLHkRWhqdUCUPPl58bYBpBdIJ8nz
 O8Vp+SbJb/+v0JBJO7h1r4nZBuncuzoqRTUAAJyVDT759JnH63MpIA4Rf
 dEUp5flBUqOM4Z+ttIuT+YlS9sQdj5wX7XahIUGt/Pv6vYTW/BBVWjMDz Q==;
X-CSE-ConnectionGUID: zNBchrqcReGQlo+gaGobYA==
X-CSE-MsgGUID: ckOeJpLqSQSufh5zhq1Tng==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13685034"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13685034"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:12:20 -0700
X-CSE-ConnectionGUID: 8NBJQf67ReG4moafhldL9Q==
X-CSE-MsgGUID: +8LVx/1ERFCQnpO7opdBRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="73033244"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:12:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:12:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:12:19 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIks3dVwOzJAhrahk8nVRlGUdV0a2yTem10zdHtAoOeD2pNqUYBR3+IDmmz2U410nbLrr8JisKIWv1au9/SXh8b2cFED8NLcYiwLZ09z6wPcKBMbtiTbWNiUX1Wc8w6osPqA1nanv6LLtoW7mBoG9jHNMt9cf0ZW+ep42TulD8TnB+sk8tEgSx3O5V68eC/owEeBzlPNMNgGzycM5Pv/FU/S230n5SMSNOgk50rYjof5v4EHH+jC3bFFjvZ9WzIj0TNwAifUfCQjvshnluMMtW9jffZziuTDxbxkBUaUcVGqdMBmnFSn32tqThg+pxENYoc+Lncl9bJwVD8aX3L9Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdWWxugqyUWT7kyANYBvHPyHmjRi+AqjxNeASBoBGPM=;
 b=mNm5meR7gK+MZIiDnXONdVbUqqsew7HCIVhGhe+yplItXBG7kZSSfKyoTSo7HHhUEDxCIR2loOSYXR55iS8uBUwSCjFdpGQpHn6ZATJEnQCc89uQRg74nCOUg1ZoUnVS7lL4d94Ytsl6A0qZ6AcbOsny52CtCHZYEIn+IU5YgaNmgbwKGqjm1VZOQbWUcsBKH6hfWcjCxgdPbPlMpGiCqL/gVND/tUNn5+MDRlsyWKaM/PfrB4XgX0IvoXZVZSymu2aq4pcFwgIIhPlkfDOtvtWJv8MUnC6IXbTyMZN52b0cchf+ISBkId+JfUeXZO8vgxntd/mUzL6YRL9IpPfLIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB6104.namprd11.prod.outlook.com (2603:10b6:8:9f::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.17; Wed, 29 May 2024 21:12:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:12:14 +0000
Date: Wed, 29 May 2024 14:12:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 04/12] drm/i915/dram: split out pnv DDR3 detection
Message-ID: <20240529211211.GS4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <d3b83e5059d26f21844248b37b3c5b90b7379b05.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d3b83e5059d26f21844248b37b3c5b90b7379b05.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0096.namprd03.prod.outlook.com
 (2603:10b6:a03:333::11) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB6104:EE_
X-MS-Office365-Filtering-Correlation-Id: abb9b542-a385-49b9-e406-08dc80240357
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3fOtVH9i054jG5F/aKBRW5/q0z4l7YGEueSschcNIr/vvxngc1M1Qf1eYCeR?=
 =?us-ascii?Q?71QR4k23lSqQtpN1JXUInCdlOqXRg0AQBnMe6Q7kW0udwpKtROZdrJ3LBuGT?=
 =?us-ascii?Q?wA001K7na8I+kz1JeGo1XEkCis4T6N71MQYyAUizWV39bXbG1zeiLsXucKRh?=
 =?us-ascii?Q?/QloKGxwFOq585k1zSrD0xRWF2g2Fnh+grHj9IHeCdY13jAN7RiDMCrB3KdJ?=
 =?us-ascii?Q?Qfa1TkIpmPzkejmXEyvr+LepnaO0e+zirlssPRrxrk6NGz9qNznFqdoUe1FC?=
 =?us-ascii?Q?yV0eM2ahK/LSv/7BM/MM9RwH4jSJh/0qqrzKrdTBnQCcftwayE5rPrkaq97Z?=
 =?us-ascii?Q?UGcIZem6Q1N8GiJOZqQhhLd/Ua+Gqw7HR1fVud7RYRtWDFTDt7Mj9f7oJYw8?=
 =?us-ascii?Q?+V/vHgvlDq4IMLogimnO7ukWVCMwtLEjlGihylSABoH25Nz6d2CbMEj8vaIG?=
 =?us-ascii?Q?Dr6a6G+IYtgC//0YeB5TdukCQBduY4K+E3bf0jypSyhjMWLEigyd3F6aE4Up?=
 =?us-ascii?Q?6Whcwno8lvA3XR4UnjMdxQ9fokh+mvn8dMu5LuDeCP6K2BF6VDWdTpn0Wjfv?=
 =?us-ascii?Q?jEwaibtoh7k2t7YmzHluZikVS9HfZgMvwbwoRz0q2aEkU3/vEiIYL5G3Ac59?=
 =?us-ascii?Q?AeyMrvVSMqwMim4yePE9DGnS97kfi2e5kMuMkaYFVvyuVVx3U7FipE3fU9DF?=
 =?us-ascii?Q?S5klV3ut45QmqG4jWqLavCvbkNLDJ88zTyF6hG2DaqXJeHtiLqS6rSdIcLwn?=
 =?us-ascii?Q?eNz4/XQKHdPQ83gT+N7NX61+RPtvbaWiIzHAqlKG80TNSKGIlRNTRb3uQyBQ?=
 =?us-ascii?Q?S+98tzJkvAKGr78DhEFeoDpt91Uy+7pfPr02awO4xDGeEYDWtzQ1cQe8ahg9?=
 =?us-ascii?Q?wYLr//iHVneo1WIhBlteF2zt4/gpGmF8UsR+ZYkUWuZ7+PWfOk388crXx/ac?=
 =?us-ascii?Q?kOtfH5vy8fEVo2r80L0mKQAPpK+hnzKo93CCumTJi1jH18XR8DcXz/BvlUo9?=
 =?us-ascii?Q?/Y5A/90SGPoaACCKhSQqZ8ii0PQ36S7HhNQxXAh3E4mAMmJ0UQSiEjZwn1T6?=
 =?us-ascii?Q?I6Uf9WjyfJMUUhlQkwq56e08ECTBiQWBmiaKeaIIwHhXROZuvsg4/voSd+1Y?=
 =?us-ascii?Q?sjyiFV58w26Eep2735UCSrF1xpki/qfjEc2/am1aK0hIf4nqhyoiuX1Dsx2D?=
 =?us-ascii?Q?ndIoei8NcetMYzI4KL1tmXI62uwLL0LrVssVvrtuXySxRWkF3r+meOhOnaTw?=
 =?us-ascii?Q?uxfjppaXl6nQHOUCFx0a08BCUmm2ifwqhpBVrjc/3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GQXfOIdfbeWgxf2k6/6TbvpDt2kiNRGAseuwnC/DDE8LLXBxYKWRPkILjN7R?=
 =?us-ascii?Q?L/AGA4l9N/rBzabWLg3prDOAVOUuM/+HTw0WZnYLiZ66Eb7ohSE/je+HeamA?=
 =?us-ascii?Q?Y4JUESpVCRQQRjNOhRdVbGGxKH+3Ox8SnWQLMBo6hcwrtx7G1m/gmqpVYuhu?=
 =?us-ascii?Q?qiS9pvCh0xCTw6Kvklf8SqPAyXmi4T33Evy8c+djd3XUieRuLw3STfu4vomD?=
 =?us-ascii?Q?YT5h2LmJyQMAW7rxaRv70lQA3MrTlAUU+oxUhs/p/NZuaKuTx2yi9J9xemty?=
 =?us-ascii?Q?nEcIzoJEK7Ka9m8w2oXKkEG8nRyH27HCDf9p9tNkO7b+BgUN/5JBYH/wTPp3?=
 =?us-ascii?Q?+rEt8L9dFQQN9KGO8OlLXFhJD5TAXZh9nutzjiAS2WB6Y5SUpzZ6xLKJfz/O?=
 =?us-ascii?Q?7sR2wTAl66Y5wiIFRo9R6yVQvrk/g02GSY9BmAsBq4Fwutbjax/0dVGcLMVZ?=
 =?us-ascii?Q?/O3ryucTAyGlfABWKcRdfvfVxxvEVlafwkgL68U1t7jOOQGA+RNi/j6S/F5G?=
 =?us-ascii?Q?O4BJPoa1T4ZbY1pCexhYYXg2ZuqiGEmIQRpXtvdLYI7Fd+sbeJ66PA6pl5/W?=
 =?us-ascii?Q?5pz7rBnazYpmjIpRciS7r+5eaSB0ukfgaOpvBE8XorDFL5NX0GcwR5Amk6Z+?=
 =?us-ascii?Q?JbR1ErdjMIu+0FZIkqMBa3pQUsLlUmAzumUku9B4Ptq9+PXxXaCTH/pL5E/w?=
 =?us-ascii?Q?BHS8ZW2DUyiC1KN9y4fU73OPuB5Qnw+DeL+lFQmo/vJPAz/r5PYNEZ2uTZkb?=
 =?us-ascii?Q?LVC/lu31H4xTGU0qt/4v90nS08ZbPQkbXkL12xBA8XLN3pkvCOqfbAwGUg3o?=
 =?us-ascii?Q?HTdSbdJkFto36FPBa91My2DFGE1EoyQuB+uprB7Ep5PocGyRKZMfJ0jFV1r7?=
 =?us-ascii?Q?CICeSIQDvtm1+ZWZyHP7dNqj7Q76lYZLOtIag/1F4bmHCaxKMQ7/WhWdg+D9?=
 =?us-ascii?Q?9JfEOjcaeuGyA5accFWraTJKhB4wEjCw7GyLsmpCtHW0ksiDcadMx1mEmXsk?=
 =?us-ascii?Q?2k18inq4tKmdKtFg7tbZwaaCIvyEMbjtBQcpi6YpoAxQ9BuWLatQbOEpAPkv?=
 =?us-ascii?Q?NZIeJosLfwtO9ShiZPA3WnOvowZmLlFII1bIBEjLyMFaO/QhFhFotUdXclU0?=
 =?us-ascii?Q?A/KAq3ePMzPi3i05tL2bbAEo978JN5xFV3iiociQlkaTECXEgqBVM7BrGZ9O?=
 =?us-ascii?Q?v0pl0WzN/C74eVGvaBhwM0VuXtUaNU5OMg2+T1O/S89lVeZi52RMzUuRi1vE?=
 =?us-ascii?Q?u4m7HhEpB7ioxgrg3jmeEogt/BDLARr255pW2XuwOPI9U6CjPRaxgrUxzSxN?=
 =?us-ascii?Q?7P7wvBic5jRzq/1+ByAiYl6D0Y+MKZpyz3lvZ9PcmKCm54UuWQo2dc7O+fgW?=
 =?us-ascii?Q?YIengbkYarnPPANhHtwUNw5ShdmJYxurotbbIu9LJr6Va7DWlRLiAwk0trZc?=
 =?us-ascii?Q?vAteCkK//AgpkWLxtoeXQxS3akNI77527KaRUAdOpCmyesGqLtej3x+FhK9a?=
 =?us-ascii?Q?R2LLp3ycfTjMmki//g/V+pIBP0xpBMM6rzWnQ0kAF+pvuqjiQ6bh9vEnLuiN?=
 =?us-ascii?Q?c9iH4Xb0waOL466AefW07WUuotrXH22jikhBzBT6Fh8Zr2h0YA0msq6uh4HK?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abb9b542-a385-49b9-e406-08dc80240357
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:12:14.4159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8dH/lGq94+yuKEmOYXyXJwkPMYLg4S55UJYMcw4rd7bjefk6Mbio6fVu4OUjWETox0g5w+xKLhYOHTc1HvrWITHvPEd8JRmPa+lIPN0cZ2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6104
X-OriginatorOrg: intel.com
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

On Tue, May 28, 2024 at 05:24:53PM +0300, Jani Nikula wrote:
> Split out the PNV DDR3 detection to a distinct step instead of
> conflating it with mem freq detection.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 3dce9b9a2c5e..1a4db52ac258 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -43,6 +43,11 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
>  
>  #undef DRAM_TYPE_STR
>  
> +static bool pnv_is_ddr3(struct drm_i915_private *i915)
> +{
> +	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
> +}
> +
>  static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u32 tmp;
> @@ -60,10 +65,6 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>  		dev_priv->mem_freq = 800;
>  		break;
>  	}
> -
> -	/* detect pineview DDR3 setting */
> -	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
> -	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
>  }
>  
>  static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
> @@ -143,6 +144,9 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  	else if (IS_VALLEYVIEW(i915))
>  		vlv_detect_mem_freq(i915);
>  
> +	if (IS_PINEVIEW(i915))
> +		i915->is_ddr3 = pnv_is_ddr3(i915);
> +
>  	if (i915->mem_freq)
>  		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>  }
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
