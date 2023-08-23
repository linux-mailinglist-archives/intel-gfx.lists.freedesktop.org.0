Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DD8785EF6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B663D10E004;
	Wed, 23 Aug 2023 17:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1444410E004;
 Wed, 23 Aug 2023 17:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692813352; x=1724349352;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yQ6fYFpH/ABJbjNZYfkLb0IyXiyBv9L0pYLiAQcUTZQ=;
 b=POKC40EURbN1NoGVPq/RQLxCcbTwqU/GnlIfwo4Sic7sQs3o3YJZxAfj
 VshAHv/UJE56MRlRhVmX259rdXJIGAA0oT9yZBplCOGilR1m1jA+uUoNn
 iSN2BZ33Z6QJgeCO5fD7DH/TskTGm/0DUJ5K8TtfJscM0l4shbVpvC9l9
 B2HrUAiLVZjzGguhPy99+pRy6NlTR0Ujbh8oaj8USWvJ1+UsOjHlHLqPk
 6dJ4uHNy3HwhOZJwYiicSKDpk6xbGC/DMLgv7Lk/pxUjtHYZ7Fk646u4Z
 WNqbD/MzIt+g8GD/1xwpG/3akZw6Jm9GORAXizpQA/dnPZnMxbCBUCUE9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364406867"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364406867"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802226172"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802226172"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 10:55:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 10:55:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 10:55:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 10:55:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TN6XRAxfcCYxZcefFbbtoezslmxHT1wNL+F8G9XyGtXMYUHWo8Y/qNglHxYIPkdmxvZxjuK969DBYIuC3dQo64rdhtIzihlOhp5vwNe/Y0nMVxeBJFcR6Pv6eZkHjZ3pNMmTNR2iiWMl9MQ8JA0iXVMoStk2XDpHdn02Q33kkb3Oe5PepeUkVA3zHW7HMXS2Ak/6s48jabrrMccqf9CCSAXTrx7pbULWkjHuKxu8g4NQ1s8+aUZkUdq1Ig7b69kEsiYQu9Atzew1OnVW4pOM7Qe1g/dpU5yVq+jy4WzU5gw4I59XvX6yQFrK+77G5qS6BNPn6zySMu+hO/F8x47RqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBLZsSeCVXqSPtvbhT1cfhpaWjFrI73mkqQtqGDDOIQ=;
 b=Wqpphc8DzgH5k4qfQJEEmDfhqg91AiMkBFvFr6lfGN7nxVLCDWLE9HaVLm6N/viF0XNC6mQai6wWWTNSRrEHSmaKZvILaR3e1UVd3aNp0m46P/0sNIxQq9NAvhxpKS6+8kL+kLyISub2FQxqrUPHg6c/GTbiXrYSOj2hVKQnCe04OAt1M1xM8HHQ579bCCFzFGmzP4U/Y33GGH4Bn/uEVSUujZ9JSC655wowrR8WHnxw45Rqi0K4YZWuUrLeiMf6lGB7XlzdBE0XYaHpjGnLf5c+I/XknGqYLHnLjcuU8nOVw4fGFQdaNrk1BP5trG8wJVSz38FUw8/muUnnl8XhPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5312.namprd11.prod.outlook.com (2603:10b6:5:393::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Wed, 23 Aug 2023 17:55:38 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 17:55:38 +0000
Date: Wed, 23 Aug 2023 10:55:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823175534.GF6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-12-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-12-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR08CA0031.namprd08.prod.outlook.com
 (2603:10b6:a03:100::44) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5312:EE_
X-MS-Office365-Filtering-Correlation-Id: bfb4aed9-9164-4b62-d8a6-08dba4022882
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ajeb1TR3p7AZ3C4SNVVWkpCq0uZskA5h53WPsUqxwvWCebj9a5MhBQvRTvyMwZqC1c44atvTymWEg6QdWN/QmbjYChkrvi8eT58opD1rR1szjQ+YPdCg6b+SIuUeMiLi08b4Mh7JESVoQT7lGOy4M42P7aIcBSIVgBRhwwOAK4EyXYycLcDVd1YnFysaRAr5O8Yp3anRiQe7h5KNrWdl9vCvCMcGJ1Wq7YvfZ3t46Q96g3Tl59D++aTvqWHRKDpG2ThKyiCP3wX9keZK2bleknuzO0imviHtb+zZn+JxgdejVxUmROFF9mYKD95rESrVjxZWx9WFfT9cnxlBXvHDwuiM4kjuNC1B1ntC5p/KrrNPp8tFkqwnROEWnJPZDjxgYvB9BqLmu9ZEHWbKVtRsJ5PdpQRjzV2qXlpuhmbGdaOZbU8BCnaJtUadhC1MO50jHTvv0sIbDg6JYxDCEGvE/9mRv4Gp/ERiti+u5xBjkcM1uKF0WWEur5Sg5je28lKNs/qLw9a/4YGv5JUbCz6cCBx3MrUq/XLMzBRG+pMFFTMyvJV0sOCMRuYM3FpGtBrA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(396003)(136003)(451199024)(186009)(1800799009)(2906002)(6506007)(6486002)(38100700002)(5660300002)(26005)(33656002)(86362001)(8676002)(4326008)(450100002)(8936002)(6862004)(82960400001)(6512007)(316002)(66476007)(66946007)(6636002)(66556008)(478600001)(6666004)(41300700001)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pnOw+4xzHpzVtJjl66X6iQ37ebiSbjMw2vpMzeUfnCdZhqQtoM3TrUeP9Tlb?=
 =?us-ascii?Q?MlRoD/Zs+7G11VwpAxmvY088Z6zfNccTkQvDshTt1z142zwcYzdWI+QoUUSf?=
 =?us-ascii?Q?ry1hm4vEejH1SL+HM2RRjIYAEkxX+/ZaAdxq4/fq8V/AQOlDNYZiC18YRf8/?=
 =?us-ascii?Q?lBthHQv+mgS+ldNeyddNkE8SEHtiKpxHEIn/R6g1YzZ6gGTqHy9f8IHjhifr?=
 =?us-ascii?Q?JgRx+vpMOloRj0yd0ebjbHt/VRvm6Tzt2U5OJKa7uGSI7JV/s+N4mmW6SEBT?=
 =?us-ascii?Q?5UEPw7AIqw4kHbYs0PuFYk/zt1pWh6u8UMRfg05xk6aUgAqGHmRvbki57OLj?=
 =?us-ascii?Q?5QB3HZXAm2iKGAHia66ZistxNhClW9sfK/rRh38fL/S8PYiHzi7YqGn8QMPU?=
 =?us-ascii?Q?V8npfmn5iAsc7RbD7DsySK1OVmh1H1h4+vvbVhGgsXUrzaAcXtQMBWKfHCE/?=
 =?us-ascii?Q?DII4H+MAPHdmhkgc/n+WeWmtVRrhb+C3i8yJKq1nCi5iDCO2q35giahsmsRD?=
 =?us-ascii?Q?XE02TN6NHa0n/vi5USn60mzR2qxglrIW8qtmrQ2Pj+nEvIjZNOiwGxjtqRiD?=
 =?us-ascii?Q?ZTISizTxNVgTuDZe69DlFsCJIBLv9kZ1BsOc2xpWz6iIibWG5hyNkb//IHF5?=
 =?us-ascii?Q?s7KG8xeWqFQq7TFPME1R1sLYRwlBsK/LMI06aKoPnn/XTMY/Q2hJziDs5DIX?=
 =?us-ascii?Q?uQAO82LoDWK1whZCWJvkdTRzmSDjrnpJCGPHRfMt6ve67HBDNh6VaIppZwx4?=
 =?us-ascii?Q?WhRj0Jnr156/htAg5Zq+wXrLKeYCASAm18y5QWugcytYlRVEZCuH/MVxBoCr?=
 =?us-ascii?Q?tK0Qllyf4hacf0NIzIZw2A9HAbeL+uUNfWwnvmkY9vNkpjYMHIRU91abatUv?=
 =?us-ascii?Q?lcUaiC0gYhrpZkcsJjRX4qfWB5JsIvhAzw3MJg6sNIcfIIwsGe6m7yeveFQQ?=
 =?us-ascii?Q?WKUc3jQjyil6oHcUbHAfyi0k44f6J4M279HWTvlu8RA4lmGZdbTGNkxDeovT?=
 =?us-ascii?Q?9ZabVK/hQ0hy2M/ABFxLiHm+wza80Z48d67BooINbZZeGJUNT2jN12la9GDG?=
 =?us-ascii?Q?RlSguLlRVsfstpN3We9VDP6IU+Q1/gW+pS1Z+nBHz+ZIoX4mV1TpxinuXEW0?=
 =?us-ascii?Q?u2xFfSspLA6k77sXNkDLSqvczpd0m8IbCRo8BUsuN8bJzzyaFigMogNrgnHh?=
 =?us-ascii?Q?D7GElyIjaKa99AXKHiG8kpWqvlCmsM5Pbd6JX5XuRR2x2hWPWzdv9BG4ckzi?=
 =?us-ascii?Q?Cz0dcifNbWvHxfe9Ij51WHjHMGE4+pTq3D0u+OxSnnAHgcLXbZc9TtL0pje0?=
 =?us-ascii?Q?+aDv9utyiJ+UqQrBDqInioFkQpEbtoiNn+FRQn/4p+LHqvT6gwfFKIb9eh5o?=
 =?us-ascii?Q?YoQg37RibPlJimtK1A2VzTA7htcUqc+JG4DIzxDC3bWl7VL1Yp2emFzFEMa1?=
 =?us-ascii?Q?PQIe33n2mZk/Z5K8hXz4h5Y5cVc0ce4KhDLjfV0pJTeGQuslRiYwuYUH1Yup?=
 =?us-ascii?Q?6mWcKhL3HtBgphFIwF+0VebHI8/eOaP1c7adLCc2D1r1QOpHifqVGeczmmgb?=
 =?us-ascii?Q?2s9TpkAWMte9dbSfWPAeg5RuuZCLE20w6vxR+C5ACrsLFatT/x2NT5oHWMDw?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfb4aed9-9164-4b62-d8a6-08dba4022882
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 17:55:38.1839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M3Q4qPPOfZH2u1/DXo/ehMQYHg1xgRIKWCC6L+Dl85E/vwwGiDfuu+euH5qn2Y+of2aTN9jTwfdEWNMRTSaHqrJsNBQFMSUONRG46aQXURA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5312
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/42] drm/xe/lnl: Add
 IS_LUNARLAKE
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:09AM -0700, Lucas De Marchi wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Add IS_LUNARLAKE in the compat-i915-headers. That macro, to be used by
> the xe driver, checks for the platform, whereas the macro on the i915
> side is always false.

Stepping back, do we really need this macro?  Most display code should
be matching on the display IP rather than the platform going forward.
Looking at this series, I only see this used for fake PCH and GMBUS,
both of which I think could probably be checking the display IP rather
than the platform.


Matt

> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index d64d34181790..38b64ff6b9ea 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -79,6 +79,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
>  #define IS_PONTEVECCHIO(dev_priv) IS_PLATFORM(dev_priv, XE_PVC)
>  #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
> +#define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
>  
>  #define IS_HSW_ULT(dev_priv) (dev_priv && 0)
>  #define IS_BDW_ULT(dev_priv) (dev_priv && 0)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
