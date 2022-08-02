Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFEA588085
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7131E91C92;
	Tue,  2 Aug 2022 16:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8370891C92
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659459134; x=1690995134;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EGPobN7h75WSFoAc3+gkK4dCF+9/tEfaEMPFd1uV/7U=;
 b=NarfUy2j001xGKgcds7aNWt+ddKhy/tNO3NQJn/lSIkT/l9puDQKX4d+
 NM6zBVn+DH7bqZTrOrZ+cD83CTg4GYoXDU26zS7Iy9EoO8PN7bHZXGclZ
 CN53hjeEj/XZks0rzMA1VL5Tkvlz/8K6gjR4jikjkp+LxaeBSUzqwOsHe
 PlBqgx5yn4xidty/z3ymGET20Hgh7NKZRkMGxrphOaW8xK1z0ywfIyaaO
 okkx4GnIM+UnhaEMZ6KlVZ0yI3F7z5mK4MJfo9xEcG/PFhyHyXRKlbB/J
 EvsXo2vxW6/rVKGvQxN90gAmTfOGY539qwG8lB47drdPY8stdl51N/lOA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290678883"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="290678883"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 09:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="705446974"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 09:52:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:52:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:52:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 09:52:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 09:52:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwiIExg30fyb7ENTMXfpunW4dm08qm73uRRPmOSDuulbarZbeukx+b3DfvarmUMALYYb4nlfLdqUeZLJN62ZvvKwNbCxJBymP5dBZPk+/jf9YZrlsvPnWmUStI2tS6/M8YBcObbjN7ebXJDsOioiutaGwj+SR0LUj2kOhMiXdgDEW0jEmMZqdiaBVel3S79t4YuA5hsuaWm8WPCfqI1YCuVaHcQCnjN++g25C8tnpHid7U7u1b4jo4iA7dV9zadWAa0v0pHCs6Pf33vSCDLZz4ZqupZyB7d93mZu1c8qhrxG8ZWYAzXxI5fKnShu5wfGxD4EIdIB9dKcv1aSJ0MO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CCFqD2ZOcD1F+eAlXv7lv+mP9kNO88DTI+U6jirHyrc=;
 b=mIJAJTSlK7WCT6/1VhLazrYuuq/FZgVFfIJ+kf0zU9XJ7D9ccJHSXw8Q2bnpA1xmaO2QnxdspIDb/E9ADO0kwDgyEafE+CVT3smL2xVGpCvaIriOBCjQ0QIW2KoH9BzuFCKxCmdUO25iicCNdxJaXtL3fAQciOE8Gm+KJbb/AL2JwOqH55x/NY+G9Ty/tm6YG/+LL+3DgkKCQ2Drkx/Ap1Kzmv5Z4N6j30oWbl6OoweSh0aN1IPicFMNd+l5djWhaYDj/YHtmgamE7To1J7Pj5cT7NMKPkKFNurg4ceGnRDMvG4K4FFogLxphT26HjR4bgYHz1RD80a8O9FUGo8q1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM6PR11MB3385.namprd11.prod.outlook.com (2603:10b6:5:c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.14; Tue, 2 Aug 2022 16:52:09 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 16:52:09 +0000
Date: Tue, 2 Aug 2022 09:52:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulWNwSyGlk/SB3A@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-17-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-17-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0043.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::18) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 790d1914-d29a-4717-aba1-08da74a75712
X-MS-TrafficTypeDiagnostic: DM6PR11MB3385:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nyF6PI/VdxcVxM7ouW1saI4EUil6KcvkzmozH3cxZWlwvJpc3+81t4AiA7GnxhDzPu3lUE8GRVCqL+PaP4jlfnTr+ZIpN1rHCmGBAimaHPJq3O+2kuf4QY4FIqVgc9geQvLBDqDx9I8sMTcReh1rmpafLx4QLi3t0t0kZTmRNPy5xIdylH2JPp92UyoskrHc9HOEl9a5E+vDQAtjVmA+1sP1vlLl0M8w6+DVLePb2ZvetHEhntYxDHSiuakmUvWQ1940qhZAKvvEkjpRu55P4DZKwFf5XYYnAJlqTMD9UqRmHVh1pY9xtQiCbF9kp1OILbvVvYnnPeyXupsX8ek/LgoXmOj6sJ834vpmaIV0ewlxgp8r16Up2DAGn9tnCR5ibuzoTl5y2b8ONNAG5tSb8FnibMBSJ1wseH3VZpKkxso0BqvykdM/QifMKW9m5xocQOBM0QkuXXMzvHJi3bDWO6xU336zj93JHp+PylkyzHgJrRGfP80TYhzFYkzhq6NW4NLCkU9dX3e5Rh6UXr6rw0xrN9lW7GUIfBvQbWveEUq5F8zEgIdWp1jBWGuo1W6DSEiCxfxUg4gMK3S3YbONnx7DP2Ov0kw3JXOIOvcqNSqRVnfw5PMJtJgNE1M+eDbK4Ar49RXe7Bt/s8UvD/2ZrL8AU2Uiw2iRKjTYoSDHJDrw8flcQ9G28NbVdlAUEjOtkbngdqENFd46hTAh1CKJcE8OADkJiFxe5ToHjUjgb0P5mhU3Zb5vvHp1fQSZBJJP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(366004)(376002)(39860400002)(136003)(6636002)(6506007)(38100700002)(8936002)(26005)(6862004)(6512007)(66946007)(86362001)(15650500001)(186003)(8676002)(66556008)(66476007)(316002)(4326008)(82960400001)(83380400001)(2906002)(41300700001)(5660300002)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?cA40f0pTgx9nHsYVoJOwC9Kghq/vVch22QjVooc//NmNKsjJ9340aj7GlW?=
 =?iso-8859-1?Q?pOwh3WM21GRPZ8Vhit1DzOa6h6pYFLHIEiXXU5aDVhyQhhy6EUZChmhfUR?=
 =?iso-8859-1?Q?2Jg3MRwsasVJ3UaZmMLO8xJEEkU9UZBD3lbSxLYBxPGykqH46eX689pTZt?=
 =?iso-8859-1?Q?l+tVb/jT/6TTH9bqa/ZEMZLBCGuYXJP/c6LStnwgtXPSnDtJxdGOp9qRq3?=
 =?iso-8859-1?Q?u5IJUMtME/mJyOzHc0mPA/GZpu9q90xwMJuFKQejrWB6FvwLll9XZ7EHl4?=
 =?iso-8859-1?Q?pwVkuXwYb9m4Wf8z3d8YaKlnN3Y6mddK4OCNwUWtm+NslD2RWUXQIaoX/T?=
 =?iso-8859-1?Q?TMmDqq4F5KCtSY0CYcjGW8ixWWinDi5SZnnziN+66IVYyXA2URKXNyVx3f?=
 =?iso-8859-1?Q?034zT4ZX9ckuIZwaOB+tqFhp1thn5KCx1/hKYZZ6ZwJGkNb+tWuKLEKq2F?=
 =?iso-8859-1?Q?YFOuVRofDKonBMBx5FUVILCMB6iDVTk6Ye5RdUPOud2vUUagngM9NAi2tP?=
 =?iso-8859-1?Q?P0bQGuyKT2SA6tfGGvf/f2ZEz6QR0+PTkOwfwqRvto4rt+d3kSP+SN1qW2?=
 =?iso-8859-1?Q?hb22kiLQA6ydcr8JI+Dsl/4ORK8Ar8wXbpgByqGeVr5IZ9mTOIYdJCa+qG?=
 =?iso-8859-1?Q?+1y9H+Mtk57jhiv9owV4lz7JHJVWTZxnKs2cQ9p2bm1B2un+wNOAbS0wEF?=
 =?iso-8859-1?Q?ieQSDZ9nUM7j4NLBiWhgL5nA1oO6LvXH+s6x2u8i7xfKcqIXXAB8mAqynA?=
 =?iso-8859-1?Q?KZBGKnpzXMOetWjV9o2lnLdqRZoANrKAJWeFh7FCB3cG1o4wCAY1M9W3dw?=
 =?iso-8859-1?Q?7IGgcww2lJluhS7x3qC4EoXR8q5YMjsiKDbiqsyhcuP11JaQgKL19qGT6A?=
 =?iso-8859-1?Q?ptJszqRGSZM/HHpkIxDliXCzp9PoywyJpJDnuykQ+6y2hMSy9tMLLnXGzA?=
 =?iso-8859-1?Q?fdlj3RYIlpytC/FGPRARSywRTTGmDhOrMwEoT7nne/pxqdKo3Vl/JJchOV?=
 =?iso-8859-1?Q?luTlgzaYH2nd/FNfEvQ2wcdO25DNI9dkJBcuajsR/VKMTEZApoeMNLkgiy?=
 =?iso-8859-1?Q?hfvVKZRmOKzpntUcnH99g1Q35d20jQjZp4MjfDJ/uD8DBmMzPa9xzlPhRb?=
 =?iso-8859-1?Q?SXXgPmlYLUXitjlXKxrY8yTQ8rPEWGHrvMe03fUPAdzIF5sc59b5Q7MZ5P?=
 =?iso-8859-1?Q?bU246iCfepIN05kthVrgp8IOFGTNiubqa0EtlbRfp62l8+akWF0RsHmDqK?=
 =?iso-8859-1?Q?/dVRZIkpHCEE7QKP4++FwLSiv5DNNpIal1tPkQnRlPe2er9Zzd8/kfcWh9?=
 =?iso-8859-1?Q?aZXmAN2mbbDdir4hokfK4jzWeQAqX5GS7LUV8JyRXOESiDMQFASgIwjaah?=
 =?iso-8859-1?Q?0h5fJi+lOVSw49eS+zQ3kMNexrd4bw5CHqx+ccMxXLiNeuqsKV3l1uwEgi?=
 =?iso-8859-1?Q?1UcegQ2we3O49Y2+vNCPyqWbvNyelMeJkNqYsj/sIf/w4iAMaMBJatRkc6?=
 =?iso-8859-1?Q?lOHxkifTjcvbiiwf8DnJOKEbxjP+nSsSJakbEf7yT74kT6nFUUZxANK2TV?=
 =?iso-8859-1?Q?YI/E9NtCiUSpNy/vLx2YRS8JAM818dJ3eM6WZvaYjze78KScd8whzd4edy?=
 =?iso-8859-1?Q?tSAtam/UzycQAfMZTgWAHCPQ1hiWvIRQzPBbDR2L4HpYlZoE6C1NAipQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 790d1914-d29a-4717-aba1-08da74a75712
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 16:52:09.6954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oMo41diu45+qPuF+f0RLMXlGYsRiBPDeSTv8gCIrEdC1TMVc23RCih2GevwEhajCDHWLn9VG5z3fz3e5kKVPSkDC357wY+jbQ/t0Sq/gcGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3385
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915/mtl: Update memory bandwidth
 parameters
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

On Wed, Jul 27, 2022 at 06:34:13PM -0700, Radhakrishna Sripada wrote:
> Like ADL_P, Meteorlake has different memory characteristics from
> past platforms. Update the values used by our memory bandwidth
> calculations accordingly.
> 
> Bspec: 64631
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 42 ++++++++++++++++++++++---
>  1 file changed, 38 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 8bbf47da1716..447a15f2c18a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -178,7 +178,32 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  	qi->num_points = dram_info->num_qgv_points;
>  	qi->num_psf_points = dram_info->num_psf_gv_points;
>  
> -	if (DISPLAY_VER(dev_priv) >= 12)
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		switch (dram_info->type) {
> +		case INTEL_DRAM_DDR4:
> +			qi->t_bl = 4;
> +			qi->max_numchannels = 2;
> +			qi->channel_width = 64;
> +			qi->deinterleave = 2;
> +			break;
> +		case INTEL_DRAM_DDR5:
> +			qi->t_bl = 8;
> +			qi->max_numchannels = 4;
> +			qi->channel_width = 32;
> +			qi->deinterleave = 2;
> +			break;
> +		case INTEL_DRAM_LPDDR4:
> +		case INTEL_DRAM_LPDDR5:
> +			qi->t_bl = 16;
> +			qi->max_numchannels = 8;
> +			qi->channel_width = 16;
> +			qi->deinterleave = 4;
> +			break;
> +		default:
> +			MISSING_CASE(dram_info->type);
> +			return -EINVAL;
> +		}
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		switch (dram_info->type) {
>  		case INTEL_DRAM_DDR4:
>  			qi->t_bl = is_y_tile ? 8 : 4;
> @@ -212,7 +237,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			qi->max_numchannels = 1;
>  			break;
>  		}
> -	else if (DISPLAY_VER(dev_priv) == 11) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
>  		qi->max_numchannels = 1;
>  	}
> @@ -311,6 +336,13 @@ static const struct intel_sa_info adlp_sa_info = {
>  	.derating = 20,
>  };
>  
> +static const struct intel_sa_info mtl_sa_info = {
> +	.deburst = 32,
> +	.deprogbwlimit = 38, /* GB/s */
> +	.displayrtids = 256,
> +	.derating = 20,
> +};
> +
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi = {};
> @@ -585,9 +617,11 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		tgl_get_bw_info(dev_priv, &mtl_sa_info);
> +	else if (IS_DG2(dev_priv))
>  		dg2_get_bw_info(dev_priv);
> -	else if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_P(dev_priv))
> +	else if (IS_ALDERLAKE_P(dev_priv))

Here you're undoing the change from the previous patch.  If you drop the
unwanted change from the previous patch and rebase the real changes here
accordingly,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  		tgl_get_bw_info(dev_priv, &adlp_sa_info);
>  	else if (IS_ALDERLAKE_S(dev_priv))
>  		tgl_get_bw_info(dev_priv, &adls_sa_info);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
