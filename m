Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C98728A72
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 23:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0078D10E0EA;
	Thu,  8 Jun 2023 21:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A4110E0EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 21:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686261200; x=1717797200;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=deqYR9zn4j6SIu/MSN2x4s8nyxGaxO5thLJ3kTefLyw=;
 b=gSpZEaoP+bfuuM9kT98H6GbBGjnMbiq7B/rE1bq9PDevKTgP+XMCdnTm
 hI1LT53dkonsxL5IsH83vR9SSBcfTMcJIOXaPf5pkqutBEUecJbClKsj3
 fQK6/48ie8hJTdhS02N+JAItvLoPIh2AQFLhsjw9eItyzYOdSninqzA3b
 /2UYQIzECZDeI5MghX541aTvYUFdmxSWvSZ+CDPLXBicJBHPgjHGS6gGB
 LVQb5DLhhXVVFZBJG+3LMWSQPg0ureKMJqEfrzwKfAQwNw2WSgZ9ylawS
 6UjS5Pk25G1bSxMaYZJNJrFe70VuB76VN9qQu41NM9Ct+eR4+RIgu9lFs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="360798068"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="360798068"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 14:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="743256904"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="743256904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 08 Jun 2023 14:53:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 14:53:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 14:53:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 14:53:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kpm9anQIUtAT3BRBpcIKO+u1AhBhCfEvpwq22WcO2aATQDWFoheEm21Uivm3kc7vYo5csIpwdilNs/8ZDSI16XPfnACOUk8KgNzA5KxxafBcu59s9a9Dm2I/mZboFhVYEthbNTjyal4xsVpxKPulZGpJqMVExTOIt8khJ08ohTXlrWL108Ls7OrKlk+oKrFbqDmwjkhF3ATd3upYMBk6GUDpXKU7tsq/fa6hgcvp0a/wL37E3QJ5gs1Q4dCQasICaf+FTY60RNomoZsCx9asZ9O4IqtY/Blbj/MgN56m8RmXoAGQKNYMTqHa3OqyaH8E/iVTgMjnJ6Ei1wWNwE0RYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZwoOONeyDYoF/O2AqeEnfsaja/UHoibrjwxON4gbRTk=;
 b=MC2CmockUpYIa51rw3bUbfSrwLkd6g1QmBDSuLYnPYi/RB4npQRvq9JEt4Q+K5ng2os7RG8Ykr7G9hiflnz7Sr4++0GZxSWA70wbwAn2tZDTzFcFarGMpZUC/Td4xHM+5+8kqttry7ej4nKzw8HaPqvG0PJ5k0V9CLGUuAd/Si++HcGPEz28iB2EPkmqFsQSi/NdeNqNNhK0T7Z0z/mvTVuJIq8LsRK7VrFjVMTxSQa1y0eeOD19avQRquWckuM4xta5TVQSKN124TkByw5rGjqCcWdz784fyXClvAx9yvmdsztxQ8iok+TNy6GnTsB9XinuUDTgwDc2v528kKYXwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7847.namprd11.prod.outlook.com (2603:10b6:930:7c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 21:53:18 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 21:53:18 +0000
Date: Thu, 8 Jun 2023 14:53:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230608215313.GC6953@mdroper-desk1.amr.corp.intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
 <1af60722551ee6d66b0c8e3e5917d327c6a72ed0.1686236840.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1af60722551ee6d66b0c8e3e5917d327c6a72ed0.1686236840.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0105.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::46) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7847:EE_
X-MS-Office365-Filtering-Correlation-Id: 9433d938-9f67-4a64-63a1-08db686ac486
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9NdFDtH9zSo8JfbaaFwCGhUleL1bvTMLIOWLd2MBvU2L1X64UKQFCpZjZgiueWERZ2klDXGcmtKyJstwcgPA+fzn9/T+d6A4iGQuQGs6BygwHQvPas7AGu8lb8bFqjMQhg1iKBbHE45+bVttLNyEos+8q8Ak+fnFN6LWfM2XIekdTCw02PfiY87Yhpsf50zA2ZMaE2rDr+UC25dSXnX53Xr0FGsjw0lY76gH1/qVV1Hs7UchzTjT5JxmCn4ts24VI2gamZCWhLyQiBr7VwqiNWNIKeR1mUCrhiNoW/ACWZCyTjCCGRDXCwSz0T4cNyVcchvYWX3uocp8Z/T5xE5kz96O3mcmdAHKp/7cKq48k6cTriWXRmnOcSDlAbbF2qib54isC4921MI+5MIYa1hT9Y5uwKYr4OrF/ZKc1UE4rZAp84vokiarUe4bTvxhdJ0p6i1cPg7JReya1PoWTHC2GaGCcaf3Nbrg4JuIsgMjz9f8h/XRyTqsdgYiShFy3tv+2UDmsB4zIxR5vwD4b41EWxopsJ1H8bbANDDqJKYgy2vOn54KZZe9dUgtZ+A9hGLG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(366004)(39860400002)(396003)(451199021)(41300700001)(8676002)(4326008)(66556008)(66476007)(6636002)(8936002)(66946007)(6862004)(5660300002)(316002)(2906002)(6512007)(82960400001)(38100700002)(1076003)(26005)(86362001)(186003)(6506007)(107886003)(478600001)(6486002)(83380400001)(33656002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SrpDz+nsLH+SkIuaXYNjMYYYqKHmIzEBviS7nGcXuXrWNbjiG5qzvYsTsEYZ?=
 =?us-ascii?Q?hd09yrO6dKn9gBd/u1JEifh/fB7FnmRVxtd3z8253oBLOfyge7QpqZsjqZ46?=
 =?us-ascii?Q?LRMzCxvDoNbMf2udSY2YQKtBNm3yDNK/3Bitzd3hYaJHCCdeTAL3P9loJnT7?=
 =?us-ascii?Q?Iq9VIvPyo9rS9Yqn10P4ZZ3qEBgkb02G0nIN4ORrMMyHGaD7nC6GOw2Vx16A?=
 =?us-ascii?Q?TbG7b6SGv7p1nGBQcazQxoZpfOxZu4sI8786uJdCcedYZyCxqYpH32qxlL/i?=
 =?us-ascii?Q?rADvOBsNRA3m1H5BDfPq2/CAjGDN8gyIU8q9TXIE0rJkgKG6upC8EiC47rFT?=
 =?us-ascii?Q?1gX6HPFo1zKcxBOmn40HtentB+dWdNJ5NBUR42SxXIlhOYdIAnrMmrHgH4lP?=
 =?us-ascii?Q?Gl2HrSdKuqRGjB3WVJbSFnXZuyGeId4emxUrbyRACjGGoPfsWiq0brIghCsX?=
 =?us-ascii?Q?nxEZeNBotxXKilCvLtkTmsYbWyOHAaNhn3f9sLaHb46ngIx5sZ1X4d/mhv74?=
 =?us-ascii?Q?DoPOK4hK9NUE7fyZYCkjdUp9qCEaXuH29VytijSijMDpHGGk3dmZOSzd55LR?=
 =?us-ascii?Q?smj+Q0/sRMys215vTwWuWEVwRbLU7mJUia3dlv+qBtxGzp3DHwIYVKw7PgEP?=
 =?us-ascii?Q?u5PB9gPtdgoz29+/tb7ZHDEp0qUQcrLnkJtuRa4P8BLP6ohmURQ9u6e4Fjtx?=
 =?us-ascii?Q?wdHEuxRAeUCfPkcnUjxvLbvymhpSasRVX42hUirPj5nq2eCiX6Lx47xnURzy?=
 =?us-ascii?Q?SuP4q7XFLf+JS+NAm+/UtVUFarYEx3fZQ6cTQGlruxFjjtFbx40FsndyGZn2?=
 =?us-ascii?Q?DOZiZNK19efzv5J9tKTxkI00+pnPadTUKG3f6zh4KXqFZtQGhWxqY6rWCEkD?=
 =?us-ascii?Q?BB+rLHcdDjELZ3xgQrCGwLYRFWvYLs3uavGg/FTz6iksutf6k1XaANozqgwT?=
 =?us-ascii?Q?1SeELzEHuw0ASpsRETj9g4yWwgQtRVAbBBHokKbnGHQthEwcLHor0jK6bxqv?=
 =?us-ascii?Q?rHpy35rK4HTEQroV4jm4UCxi/C3whcA6d6JcKP/K7TrhCIkwosorWG1ZDLsj?=
 =?us-ascii?Q?saGACqnHcQOir7a9mki1lWXf9YB+hGj1/UNR2Cwhqh/aqvGX87oNisz1kIY5?=
 =?us-ascii?Q?6qCx5oeUMbzpBGdoOCSa8c6t/oX1T/F9wEUb2RUI+/g5Enq2VpwN0z33EUjI?=
 =?us-ascii?Q?QcPzUyb50J315x+u4hYbrnFADOVgzYDPCmka3yXsVvYTZIndIkdqqG+71XHr?=
 =?us-ascii?Q?trTdpmWEhQeeQapzCb8+pAvO+95A1gdI0ETVv76XtT53z48Mh8Lw/m4NTApm?=
 =?us-ascii?Q?asmkHqyHGZ7LjTFdCaJpQdyEBYX18PrEvgbD4YKtOyw6tgoTL6jKmq19rTAD?=
 =?us-ascii?Q?UnSyUX9oV6+TFJmF4O9eFq8u+9zsnJQHR7yr0Rc6GG38kcoT8CVv+rVwSvfs?=
 =?us-ascii?Q?ZmGKeW6tSlDxKUYwv8099stZiDgWXjVBP/mAC0cEncq5Ehd/1acgWf9eRFUF?=
 =?us-ascii?Q?FiRaxj4bmgV6t/uF0qKgLyugkS6aStmwTeh4yZNxHr3njJ6AS+3Uw3d9sfUs?=
 =?us-ascii?Q?agstXwIggphZkDTdiFRpzxuIpb8OGdFtIXbo71A9UTEK7ys8/NXo7F9tCcqJ?=
 =?us-ascii?Q?UQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9433d938-9f67-4a64-63a1-08db686ac486
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 21:53:18.3780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dwFQdnlcFkBYPnHdLgKeSS47K+QsZpzl9OAzd5peXiIEtJPtcyfBYTAzfGenZi5g/QDG2/bdEJUGl3PU26FgynTkZKw7RLgnvdRU1cwNsBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix display info usage
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 08, 2023 at 06:09:03PM +0300, Jani Nikula wrote:
> Prefer DISPLAY_INFO() over INTEL_INFO()->display.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index c744c021af23..1a987dc45c70 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -113,7 +113,7 @@ enum i9xx_plane_id {
>  
>  #define for_each_dbuf_slice(__dev_priv, __slice) \
>  	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
> -		for_each_if(INTEL_INFO(__dev_priv)->display->dbuf.slice_mask & BIT(__slice))
> +		for_each_if(DISPLAY_INFO(__dev_priv)->dbuf.slice_mask & BIT(__slice))
>  
>  #define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
>  	for_each_dbuf_slice((__dev_priv), (__slice)) \
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
