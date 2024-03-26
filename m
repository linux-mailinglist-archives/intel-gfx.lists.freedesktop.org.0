Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FF88CF72
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCFB10EDC6;
	Tue, 26 Mar 2024 20:56:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtLzg1Dp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69F210EDC6
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711486571; x=1743022571;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uFa2zJdOmqkKE/OFToL0MEVnGXl456Rh3OjCJ8STQnk=;
 b=HtLzg1DpFBHmzsV0S5COSobK2lj+0v4iM5JnxlOMt/J8Mp0XLUE5iOh1
 vMDt6gz6fjk1RgMSKYE4oOW2s8Ra244tyOOmGs9tDC7aBXJMkYzlvGN0h
 Pv2HXWNgkzmaz8YW2qpPveNe941qplyaY+qNYwSm241cPNOtvFx/GHj4a
 cOGyOhwkOb3KqF+49B4t/qcY9FoaMZqeymGRmVo2MCFqx+NYj84Sk6tsj
 xqSAfGhKWmBLGyPoV5+0VEwVPbOL+RwHFX1iCE0J0mnr7sUpbwk7+zEBM
 zQCOkbqDT05GXGRqEgrBVoYg2qzveUWJIpBcV7wl0sKguPxyqN0HWQGyX A==;
X-CSE-ConnectionGUID: GIgs9uP6Sl+IlH6uvZibmw==
X-CSE-MsgGUID: 65v3aEqgRm+4E1f8HOjCMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6428348"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6428348"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 13:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16141766"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 13:56:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 13:56:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 13:56:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 13:56:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 13:55:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LoRXMoKii4STv4BspXWy0ICyL/dvXEBOIeNi5xOlrPKJCCUnYKKpsgf/9VBRdUl0T8vp8HOoiCPSrjTGxILFv7jFk2WbxparO8heIL/DafOZFqoiMC3Etu0BbC5j+/n+OjYcsm7s7Qa2EjcCJSBvEEopmfZ6lG13crQJ30zAsIp8B9NtvVe8E4T2YDalJPeeg+on3YN5WnZWNiatGDxwhVSMg9wQQofb//hxrTkQ57AhN+1fs8+Em+FGzL6k8OCDh/NTfJAkmdtU8uoGJO0k9Zyx26+7zvLxr3qjcKtOlR4zUC0LnKdMu7jGU+5xoYgvlfKI4u38WtUlz8ahwN4cGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Ila0nXlxUecksSv/IXYf7cKMUPY9HolpcRQ+LYKvAQ=;
 b=RKe8sMESEkj/J4L00afYYfE15NwFl4kGLL5H3QLFBg+Drp6F9hApvnSvVNo1M5BGZGwaST2krl625qRHu7XSbtqwVrM8NQi59r7fJPTVeMIYHZxqzcKILKlqUvSzQxS3GhOSAPFePzFAztVmrNmiI+xKrVEdpZyf1quPAgMUsZ3iPW4EBU6vXzMZFy9RqbRTeLuTfeV0DHhISlLe2BQeS17g7HsYaO0xDlAQuv/TMj3VcJ36urm0cmI+W2vdUjkNZB/rZF/3ztoCCuG2+xbGC1MNgAKEFKHmub6Rhb8jZQD0o5z/QmOT8Z6Yd2K0F1VWuiA4jYccKKapc9kH8krxtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Tue, 26 Mar
 2024 20:55:57 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7409.028; Tue, 26 Mar 2024
 20:55:57 +0000
Date: Tue, 26 Mar 2024 13:55:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <balasubramani.vivekanandan@intel.com>, 
 <lucas.demarchi@intel.com>, <gustavo.sousa@intel.com>,
 <radhakrishna.sripada@intel.com>, <clinton.a.taylor@intel.com>,
 <matthew.s.atwood@intel.com>, <dnyaneshwar.bhadane@intel.com>,
 <haridhar.kalvala@intel.com>, <shekhar.chauhan@intel.com>
Subject: Re: [PATCH] drm/i915: Add new PCI IDs to DG2 platform in driver
Message-ID: <20240326205553.GE718896@mdroper-desk1.amr.corp.intel.com>
References: <20240326103241.3832494-1-ravi.kumar.vodapalli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240326103241.3832494-1-ravi.kumar.vodapalli@intel.com>
X-ClientProxiedBy: SJ0PR13CA0161.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB4857:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M0zhDwKKsolYsCh2hDPqKlcTQToHYASkz2Z3P50Y7YdImxiL04ZHRW1yor5e5XvdNA/rcH30oK38aONyMry/YXKkGKFpNp6Qcnk9LkL9CAq1JEvu+VMl2NRjulJDHv7DYz6NM1m8d/nEStfMWAMO7lOK9QLwO1UfhnSFqRpqwmDsmkFbVD+RKHr9+RPFXZfgz3JPrDlsMt2sr6Irmb6NUki4sJb5Hvb7LSO/uMV/2uUuHSLGdz2eBgDubHzkR9Itftu/Q1XRQoNe9VU0EkWJBtOToBOJT3c/LMLlVecJugQRs51JoZWfWEOz1krnWweZjUPVIKoA6mrbO6pt81G5HUMk0of1pp6ZhCoxDWHJi4ZlY8Av8Mm8TM0ITZf/QLp6spwbPn2BVVArmhUB1ri+bA0HqFcYd9xVFrSg+TTqUmnS1GsF818RWqaCr5n5ta2+1voG9RepPVb0+U2evdQ00cDW35truxJx6sLePmq8GePA0GbZXUivoroZAbr9s0YIE7Ps6ct15VJHK0eL72IE6IMa2syEHlkDKqA7HSVfULsq1j1a8JHSxpW8wBlur2moYIGybUtYw+Gs921QB0GlVoculjGjP1zbZ5SZP4/f6i+nzGD/4GkcmlcHx5GKTo9ypNrJWiVTEs+BnW5bunjfWdjmXvSom+x8YfF9k3YVZ5U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TWTx4LQbfKjq0JuMtEYb3LLY7aCSgBX1inTYnmqR7dQoPV3I8DADctb7oWT5?=
 =?us-ascii?Q?Nsjz5iTGDWdyvPlI3m17hC9i/QHeWXUdkhHeoaLaGLDSLLjllkhaoJGqq2s4?=
 =?us-ascii?Q?vKAc3HZmnmQNAu/V6Y4/9S/fN7lGYoxi26K2W0nNuB0NQ2IUh0cJOZHiEfR7?=
 =?us-ascii?Q?JXg5tNXuJABAxxSnu1DgE5dwDNXb2ZDpu/LWEoe+/NXUE1TSh+msShrZ9oFS?=
 =?us-ascii?Q?/n3oAZc5VFhfpwszzagXVLmiKZT0FLYTFX7+SPQ4u5ZJaqhUpx4HPDWVuaCx?=
 =?us-ascii?Q?qOh3S45zIMDWbLqKdS4yii62DzcnbDhld+UidowyPGfRIstW/QqmZvHJfuP3?=
 =?us-ascii?Q?/6nfa2ZgzpFHaw6imsG9Db6ESO5OAB1dbuISQyNYah+HH9FO54bJDDm2ceQE?=
 =?us-ascii?Q?0si85bR5dyri8uOqcX0XE+LnrMsCNBkQZLX/sCgT9mNIPNQMXddM+nauYfVZ?=
 =?us-ascii?Q?lRD3gBZZ5RnHKVyUOIw1uZoW18AFghHT9eVhbCxuI9TmMo3hA+vIK35y0RUD?=
 =?us-ascii?Q?fxNE+uC7A6Svm+uvXJ7FME15LoWcJjmIeNOH69RIaD7msVDxJMvE0a0R2m2n?=
 =?us-ascii?Q?g4fAQ032J/yOWun0lcF4o3XO6LacV3CANAAKYk0g6fXW/VcfEetNTWsOj2UJ?=
 =?us-ascii?Q?85g/+8PEK3k84ySYa11H0nthXmKhdnuLcjsznQK3JtIUof4mKwP0wf5vHPAn?=
 =?us-ascii?Q?T8i07U6NjUtv7Hmwiul17W5Rk2f5WTfQwNf3JT9IIqAa0le3CWzwi1cIJs/t?=
 =?us-ascii?Q?X6O9WD64YOexdfBjIjLiJ4FWQ6TvLYzb00U7OBgxEaotmYXEZjWA+IM0Epd4?=
 =?us-ascii?Q?dc2pPzEXWmTeaxHWDRZlohGzAL+IIudqjdS80Ciy71Ecg8HH7MMT3mYtS4SR?=
 =?us-ascii?Q?6FjC+qCTvkZjM8EYuDP4QLzaFDexJI9F7tzEbVb4rYShtJaNJ5deWUP0Odls?=
 =?us-ascii?Q?epYhxpKy+63iwEbeaOah+ko9IQBCSeUubmZcsdNJnkZuoPXweNKsF7NqZ955?=
 =?us-ascii?Q?Cfy3ueUVxzkY9CtdpfqOCwGTGJEM5vZQb6hb4nf24FrG3BziWS+OVpSmUnps?=
 =?us-ascii?Q?wXYKwtyGnGk8eW6GEwGlA6ddZyyO3EvNRZT8CH3CLiAvJpXjqwaEoAc3cIB9?=
 =?us-ascii?Q?sml1S2v+aREuE+T+zhh+xNFT5rqwT75tkVqUuIyJcgJES2yMEFs3h9oi4g2B?=
 =?us-ascii?Q?fVJOKLlXPDBQRAO/qp+kGcgur8rnVAvAu++mnqqtFhvxC8Ph2058APnL2MZG?=
 =?us-ascii?Q?ewJpVxkBYkCZcO9j7kGdOOhXCWOciLzpShMJB+n3FghokLaP5ifs7OQmIzT3?=
 =?us-ascii?Q?4vuALc5awp0GO5nhu5ceAeVUXd7W5iESwFHgAG7t8YZ4DJ+OcVC62Yth1Jst?=
 =?us-ascii?Q?EXi8DCccoa7YOPKbBAlaa/NTVOAeojSSzA/RW/XGucSVV4YY9RSnZhvVf2Ka?=
 =?us-ascii?Q?1/ez1E3/StbUy9n4KyyyFjOpnYucVCYKOriWsB+71Kxb0RLHp3RMChprOlLA?=
 =?us-ascii?Q?tIIXlvLP/WQaCm6A7TL296fCAmnhPvcBlwfBwF0cWTwlAvkkwybiTHL/d95I?=
 =?us-ascii?Q?sOMX5nzDBqF9uu4wQ1IWRFAHGbOlfPKaYohQKZlaEtsJ+CvjE8jbm2x/jCoQ?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf406654-4924-48e8-f09d-08dc4dd72234
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 20:55:56.9229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3QQT5h+w1PTppvoin4MYnSTsAoJ1RgxTnR/+J40ld80aUiUc20WS1TLbzHrU6F3hKDNxJFi7CO3WYzHRnCwGJawZpKtTkXFmajYwGRsO/Ig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
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

On Tue, Mar 26, 2024 at 04:02:41PM +0530, Ravi Kumar Vodapalli wrote:
> New PCI IDs are added in Bspec for DG2 platform, add them in driver
> 
> Bspec: 44477
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 28a96aa1e08f..85ce33ad6e26 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -711,7 +711,9 @@
>  	INTEL_VGA_DEVICE(0x5692, info), \
>  	INTEL_VGA_DEVICE(0x56A0, info), \
>  	INTEL_VGA_DEVICE(0x56A1, info), \
> -	INTEL_VGA_DEVICE(0x56A2, info)
> +	INTEL_VGA_DEVICE(0x56A2, info), \
> +	INTEL_VGA_DEVICE(0x56BE, info), \
> +	INTEL_VGA_DEVICE(0x56BF, info)
>  
>  #define INTEL_DG2_G11_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5693, info), \
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
