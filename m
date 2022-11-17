Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E1962E11B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 17:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E3C10E650;
	Thu, 17 Nov 2022 16:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B9210E651
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 16:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668701282; x=1700237282;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5+WX6xTqkygXc2UJiB6j30aY74g1PhY4AkRzCxM7cno=;
 b=B7ORpo5AL5p0C/sKi0bEpRQwzHhYySAnbCvQR6GR2CQfy7aElzS1Ei+D
 dBNHE38PYVElEGPHVqDdS720RVaGlCqaKiq0v4IX+AvUWUWWO+VxNQ3PK
 yIvnYd8UPRt0dEPBX8cd0+B6sCyimIZZSkJtft37mV+5pGwOzCZbifqCv
 AcWPRluy2RtmwVUdFbBduM9BdWm7M0kV+XHfszu+bWwZaPkjV8sGr91Ay
 liQOI5fRfWKsXQ7Vfz04QLkkSRPtq+xbgZZiqcraloT2KUQRL5oHeaKSK
 GZXuorL1avci0dKd8olm58FehdF3JN1XF5xveLgMk8bHTaRb7w4D1e7Wp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="312905079"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="312905079"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 08:08:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="639853984"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="639853984"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 08:08:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:08:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:08:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 08:08:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 08:08:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQWhwuSeFdnHkIpLZakjg2cU3mBKw9ChHU2hIsUrtw2AslcX1YpuNX4vZU0hv6GuJBi3nUaXVJQ5rnH2rUCEsct8q4F5wPgy3bbxPyAspjNNhMMs6xV8GtUIvu8BEb4KNXSCw/X3/7G7WYhKuDaMw5hilVrQDWJ875/iKuipqheYyeMxy9BJO8ExWBaEOShQ9LkWwIN73QForbF/6eIWH2L9Fced46rIBGEStT3QidznS3uRq8YflAbnNBEokc1nqYE6jZrrvCIILBZy3c92PjfKZIuPnpacT0y/UpWUoIdolxhokpa3ahP+krnVYTH3F9424HeE/y3Ezm3XvmGcnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4g43W27/ATlOPbx7XHD3KARiHduTe6QqpA7m/dEom4=;
 b=QYwNjyvnMj8hDozdO2SlZMihrmu3o199rBnkJiDETHXGoSSxsh+wii1pjLWI6w4knSl+139nAxlUoCiIQGch5kOI+YK1vf15KIZ67leOY+65h530NFVJhdnl6hbjIBgjan7qw9dtVht5F5AYmotH/vdTlma62lhMuoSUov52OhyqbYcfQweGTMbjbhS5+qyhglEzBnCRWjbe5wYq/hsy+Cj2hJdY3QrEAjEflzVtoZwic2b6I8m1K+BriK7hJZgXlXYf7EW2VPEl5VsF0amMA0o37FAf16+CIKaLELwZhz9LRl6teT4SjhksoZEzBYGzT62I5lRQcPnptjGCcAxRFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5705.namprd11.prod.outlook.com (2603:10b6:610:ec::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Thu, 17 Nov
 2022 16:07:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%5]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 16:07:58 +0000
Date: Thu, 17 Nov 2022 11:07:54 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y3ZcWpE9tRQIfbzS@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-5-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117003018.1433115-5-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5705:EE_
X-MS-Office365-Filtering-Correlation-Id: dd39a2fb-e60e-4b73-dd90-08dac8b5e4cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7kiLEXl1INNrKL0D2uT4gLTeSABJN2vXtjYSUW74hvuEst1EARL4ypCEreZtXNhrJIM59BdTgjcwHPJYlSPKRLwiIP+5FJY1zz5aJl2vRrBJqDzmUwy/CIj/U7ZJ+f7mhAnPWYUDWN4oq32jHa5JMCnmgETCOx4wvAuFq8jczukVBOXR7gJQDaqG+t+dp7AGZ6FIMWT9zv7ZGbGkEtTGMJdHbRac5WOWBGJO07E27zCXVWuOL1PkSDHu4Gky3pcz3lwFRRENijzWq0tf2UUN/u2KBOgkbErsvLy1Gz8b1awyUFFYm6Sj8FzydhMS5t2HIvmERX5fk7IbOUVtaMnOKwUIxS0TLfoCEeOUQ+CMzvWgImPm6Eg4V/YUyfyXhmTsI175uLAbqCMiXg2AZA0ZPwn0OUv7HHB0q/vuJT8mKjyAG/nVCbe2JbntbgqNfkMpCKurwa+gnY/AE7MMKfnlXN05YxHcv2iXDJ6MTq+/17vV4F5XNYqHiq9x8rmuawMNtcP0GVYfI/q1dV3whtABWZ6uK0s1DgpUArwi84GyslC8ZkCPRknh014C9qcFwU8sphLIRBI6dTgROGJhSALb9EmjsC6NZ22NsGfH5hc7jLhMRXjtwBIkmtUkVJwGVGeKHpQGoMMOOCzagQidNIf0FQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(396003)(366004)(39860400002)(451199015)(36756003)(26005)(86362001)(82960400001)(38100700002)(8936002)(2616005)(2906002)(6512007)(83380400001)(44832011)(186003)(5660300002)(6506007)(6486002)(6666004)(6862004)(41300700001)(66946007)(37006003)(6636002)(4326008)(66476007)(8676002)(478600001)(316002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?icUZEzBbzdAA9SvGeqnLrHeRz62c4lLBYe8qRHgaL65eyUYMwNJDge8WIxOx?=
 =?us-ascii?Q?bCjIr8LUfQy3eIHBE8KhbI22FhKjpn/iO/TuhPj9i/HDzFzfo2liDQAUrDtQ?=
 =?us-ascii?Q?vvphf5tiLEixmlv3KsJsLANTGb6M0Sb5ASA84xhnEBCQBb1r9tGwitKjFm28?=
 =?us-ascii?Q?A2CfhUHOxRHvrzInOgaMBRPAfnkIf0rIn21ApKDhvq0JqW7Q5J7lflO5yE80?=
 =?us-ascii?Q?oCmyWmhHOIBgp3bovykoeczg72LXq4hYZVSDx4qxXxb/1qVi6r0PTMISAJQX?=
 =?us-ascii?Q?UOfjKlxkGJvbstWw/TTqdkDPC/jFB+dc+9mSQlOKv4S+xdMxMl7VffSI3U07?=
 =?us-ascii?Q?gP6qed84KkRsvaNNJpDZvMTvXR+YZ3jgKFsgCJwiyMak+1yXARknizijNO77?=
 =?us-ascii?Q?YcErHVqOZpHiv3/yifItLswpS/767FrH/81V0dAtPsKM97kceH3CIvU78aVh?=
 =?us-ascii?Q?w3VilZL0HSGba1Ur880/X2Pw5Ghk26HJyqDwDbcwjbaIBi0lV/1E4zwj5Zol?=
 =?us-ascii?Q?rc3VsA31658c3umSiOfKczeiZ9Gegu+eZRppLQKZRFx2H2rXAyyFdwnQFoxc?=
 =?us-ascii?Q?kisrREoojGpBjnyidA+uRTvzIMwO5bszdo7xi/+C7D7NitCE0XrT9vjxgwPA?=
 =?us-ascii?Q?Gmpxb5FOS4kitsvOZg3hDB66GQzjp2Jn1rJaAX/5AYrcQH1TsjJ+U3eP+06A?=
 =?us-ascii?Q?+hUcUKtpneCuFbxpwAAkQizb51pNnTPWEPjTcu4sYcf8YdR9rA+Qm93WLiI1?=
 =?us-ascii?Q?/sXLqSvm/+gez/wjXyjX/2LLOLKC4nLjtCP9OHoJvDktu44gAputL9SSIztj?=
 =?us-ascii?Q?Lh+3X8YXqprzDhdCa5glxcRmQgcjnD8iljWsR4dlQ/xurhNLmNoLvC6qi46y?=
 =?us-ascii?Q?EaOk/6EgaIvjhiH3n8MMDxU0RcObst/DByNJCd+GY8Ol2gMDly6T3usZpqzx?=
 =?us-ascii?Q?yaJJ/r3Rrh79Iiu+gnkxqex/EQWEhnLrsrgKvKrSX6DnhnVd3FY3XefcnnSH?=
 =?us-ascii?Q?g6eaZd6kjQLEGraqFMYF31J0JMYLEiH9I2MGCf1X2AH9tyaF6te01tho7f5T?=
 =?us-ascii?Q?2ZuFubUc8Zt9CORQgT+UrhUTeAqGkqmqLycDu48FPD2366PLscGuZXqpCE83?=
 =?us-ascii?Q?YZdrXpb0htrDWdSHaUT6keAiAIaQb41WIgeKXohwE0z9lLObAyKmrUmqjHq0?=
 =?us-ascii?Q?Hp+G03hX7AaPtx2Nn0Ad33hl6Bw10OAQ0ZQUDZ4HDz3l9VyUDtoTsBXsIRws?=
 =?us-ascii?Q?yfUEZj8BI78KbXvLK2A0ADF1UbhmciSOYhr/Qu4M7cAKLwKUUU/NzfiY/uz+?=
 =?us-ascii?Q?l7gYMKgkW2E4C304YlS32M3AtugjvO1l6ZvYsBBT2TQi710FmnwHGoMhR/nH?=
 =?us-ascii?Q?/7pV3M1NgcqRH/lyXgEJNat/UGsXrqwYnkFlg57+wE9g3imdjjhz5vwiE7ti?=
 =?us-ascii?Q?NMR3g5nWw/fowW69KbmPmrCOOYxH/W747l2yBIPYMy2qMMUlW0IsbpbcfNC8?=
 =?us-ascii?Q?pLNcz3W1tylRaQ/5TDvsZlNqlmA9g7QpgnjW6Lt1fVcYBdLsuA6ln9/oQEEr?=
 =?us-ascii?Q?Cve1cnNMi+TjRDpLiaOX5Z5SG8gmlbH69CXOegKt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd39a2fb-e60e-4b73-dd90-08dac8b5e4cc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 16:07:58.3537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aKeXTFZgbahRX2bg5TrBtU967mQn2YAtPtEiAvTHcfUR7092nI/CryhhIQT7UW9hFqgQoc3GB4i0lsc8Q7Y2JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5705
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 4/6] drm/i915/pxp: Make PXP tee component
 bind/unbind aware of PXP-owning-GT
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

On Wed, Nov 16, 2022 at 04:30:16PM -0800, Alan Previn wrote:
> Ensure i915_pxp_tee_component_bind / unbind implicitly sorts out
> getting the correct per-GT PXP control-context from the PXP-owning-GT
> when establishing or ending connection. Thus, replace _i915_to_pxp_gt
> with intel_pxp_get_owning_gt (also takes in i915).
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c     |  6 +++---
>  drivers/gpu/drm/i915/pxp/intel_pxp.h     |  2 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 14 ++++++++++++--
>  3 files changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 76a924587543..6a78b6ef0235 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -64,7 +64,7 @@ bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp)
>  	return pxp->ce;
>  }
>  
> -static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
>  {
>  	struct intel_gt *gt = NULL;
>  	int i = 0;
> @@ -79,7 +79,7 @@ static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
>  
>  bool intel_pxp_is_enabled(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = i915_to_pxp_gt(i915);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>  
>  	if (!gt)
>  		return false;
> @@ -94,7 +94,7 @@ bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp)
>  
>  bool intel_pxp_is_active(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = i915_to_pxp_gt(i915);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>  
>  	if (!gt)
>  		return false;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index fe981eebf0ec..c798c3bde957 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -13,6 +13,8 @@ struct intel_pxp;
>  struct drm_i915_gem_object;
>  struct drm_i915_private;
>  
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
> +
>  struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>  
>  bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index a5c9c692c20d..b9198e961cb6 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -20,8 +20,12 @@
>  static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
>  {
>  	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>  
> -	return &to_gt(i915)->pxp;
> +	if (!gt)
> +		return NULL;
> +
> +	return &gt->pxp;

or pxp is part of gt, what it looks like, then we use per gt and avoid on the others...

>  }
>  
>  static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
> @@ -128,10 +132,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>  {
>  	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>  	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> -	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
> +	struct intel_uc *uc;
>  	intel_wakeref_t wakeref;
>  	int ret = 0;
>  
> +	if (!pxp) {
> +		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");

or we have a single pxp component under i915 and we associate with the gt0 only
and save the gt inside the pxp...

but this whole owning thing seems so convoluted...

> +		return -ENODEV;
> +	}
> +	uc = &pxp_to_gt(pxp)->uc;
> +
>  	mutex_lock(&pxp->tee_mutex);
>  	pxp->pxp_component = data;
>  	pxp->pxp_component->tee_dev = tee_kdev;
> -- 
> 2.34.1
> 
