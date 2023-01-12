Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7689B667CD3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D085510E1A8;
	Thu, 12 Jan 2023 17:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C341610E1A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 17:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545409; x=1705081409;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BEme3OM/VZQbYOr1+1hRQLU0D3xVyxdnq/H/Qsz1Ni0=;
 b=GBJKvcdR0mXL6wHs5hQu3jZWoKoaVBeo9P782sgTzv3bn0o/k4jFeod3
 +10/fSLcAPhquF8f7V03ReeW06UEM3FEVMeQ0NHXpo35Cy+ElHzJIojxK
 wXxThnFDNQU5lSGEarBl5h7NkS5i3aONh2QM8HRK+Yam+4sYp+rUQXweG
 J27450q2WmgHmW0llxErD4NqtqaTchKdcLq5JA+Mg8/diqvaE334OpcJG
 Y3Uk5J5kSGmI6mK/aVDJGF2VlVva7MG3lzrDfktCUFZGQMpXuzLHqLqcZ
 IU1N4KV5637l9JZiGei5dBoHetU9odbYmIGxy4Fg8S0WPJH/w9IL2vapR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="386115260"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="386115260"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:43:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="657901664"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="657901664"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 12 Jan 2023 09:43:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:43:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 09:43:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 09:43:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mcq4EWL8aToyW3AMj2AHgI+/HtadT/bZeYDyI6n6XTDamoujhUp5EGVi1SlcgPOzPXDZQ7ulXXVdH+yrWr3BRrQIEvc4GdIslRMDZClYermVOaAwQtpK66FzNJ22AWh5Khmf/GfK683UPmuH26mywF7Tm9JiSzMjbWbA+MHI0u0PkFbtoQaX39XKIFXQR7oO+Lf7UNtC9JTyA56MWq+ZByxt0tUHqRxjOhCZlXbKbcoEh6PTMbM4w+Gy9uW8JUmGMcvCshnsWN9tBet6fOcCegkwMNZJUb3WJbTP50X9oMpxgRNLdc2H7TCho8ai/zWC955LMTqv059K8zikVZp9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=edSeYVNp3md1LzvwzlCvJkB2Y8HazsOd49p0pldl9Cc=;
 b=Ng0XbL2ohLx2YrY1FJ0UoR15h7enY6jpEnMmYK8CHkk+UFXGfT2WltB4QGIjyf29vSb30aO5k1vX3emrYiF9pwwB5KcFBllDSb/GTAmL2h2I0BVS+YrbTE8W49adJFR9+gmioulgwmp4qEhS8kknkYLVNiCT6RIOcWMw786QcQIQ1DHJKVlakiTdm/Xq+gu/slbnvUFq26brZUclKc4eUMEkzhJJyPcfOYDM8i6zmrVAWHB5GQYlPvYQqiG4eDYP5/E9q74I3OennR7zjxA6CK3x/gPLmsZ81Gvt+QCjNHIU/imW0TAsygmWmwQAceX7w+T+qjJHiNrn+0Hsb5Raog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB6350.namprd11.prod.outlook.com (2603:10b6:8:cd::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Thu, 12 Jan 2023 17:43:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:43:27 +0000
Date: Thu, 12 Jan 2023 09:43:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y8BGtTa7lCg6qD6S@mdroper-desk1.amr.corp.intel.com>
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
 <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: CPYP284CA0067.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:80::18) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: a5fe4b7f-926c-43a7-ed39-08daf4c48281
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HMTD0/k3ceYpS0z7mncNwZ+JuOZudRESXC39YzbJ6HsQw5adwvhTTP9+EuABh8lVwS6f0iJujhbSZROvR8fd+Gv/DU2+A9cTv+VQJHiIo0ri8Tq8blmXY237oMA40dO4c4YWL2XvZNdIPRteUN6z+4PwY+pUU8+cv6FMpib3gQ3DWHkkUNHANe5kDDiP/QFdLOgDarbLnR5PssnhNM7rouO2S2CaABhXc5cArt2bQr2t/DtlIhQxlBAxLNAMcNGJnKpxOtULOgf/NiaLJAiC3y5gP7QmMKuV9AYBcu3v9J2myQhFCjOQMUPc8LqFb2pEWbyoKbLIxI6qx9Ohr7qrC683HD2lnlWTRhSEFtE5PLfbA2Ic+v64W1T14YdmxbFXS1gyYCKV4dNiOIJAqIgTyxsubycDkG/0XSNlJ3GKFwOTgGkfoSdnhnm0cYRNyRUKKOTd7KqSEzhzd/sv4xmaDqgCkj0Iu7pV9XYr5+nkpGz3DXta73njZ2NwcSOrjrMmRsEE3CvcZZHm9E+PzCTeExsbHV3mtFUMk3ctCaU9fqdgJvH+YDfRIdHD26s0/X0sH8Pv/jEVVBqe/SGDxvhXPjshMJWopUqTMOhRFD/NLq/iMFbNn7wbdeC+B+FMdRTFW1m9rC7iaU/ymXD/HDPsCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(346002)(39860400002)(136003)(451199015)(6506007)(6486002)(26005)(6666004)(186003)(4326008)(66556008)(6512007)(316002)(66476007)(478600001)(6636002)(86362001)(82960400001)(38100700002)(83380400001)(41300700001)(66946007)(8676002)(5660300002)(6862004)(2906002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jk//1yNI1O8LdVtaA964KSdfz8okcEQR/5rCPdKLBTHO78BOipa5r34J0LLd?=
 =?us-ascii?Q?B2ZlBG3Wof3pQJbKsS+7dHzhLLscUTGWuhLDiSf6D/OEdNgiulvVC6ISIjI1?=
 =?us-ascii?Q?zbVZRsAA94zzUs5eHGoBT3q/Zu08oiBhV1qe7RtlMWBt3HbiqJboLW/Kz5wN?=
 =?us-ascii?Q?QhuDC37hdPP6fZgvTwl9IhvuVf8QjMHKgEUWEe0VNcAQ25zsbuanqe6r8FM+?=
 =?us-ascii?Q?yiIF3OLH/6QAciJw8DEX7M+90WTVrBFbgDelslRBImBd2cXt00EpLwEg6nXt?=
 =?us-ascii?Q?wLHHBwWRX48Z6LKGB1CwAHkSaDI9shEoVT2Hu6TpVBqRNk5BlKy0jnoh9nFf?=
 =?us-ascii?Q?k6fLkGSNOZ2qzXQdNJHtc25DTdjyjs9CdLnfCS8Yb5tgOU2JZKSmYDBE2kEq?=
 =?us-ascii?Q?XdKBq9YfhWHkIW1i3InFDGqNl6o7CTI2WDmZknHjOEVw/FC7/TxyZvHkVHZw?=
 =?us-ascii?Q?SauQnZrEdi3HvsrRy1L5iW3diya+Hu8DrvOjyAJOJG02pC3dJR4NEK45mMSi?=
 =?us-ascii?Q?jI/bNSTej4Ce3orpesArU66JY0Zn/Gw+4Ho9CjvF+lasYpjPvmfuqugTxeF1?=
 =?us-ascii?Q?n1dPfY4F6vnOVWewKAevxqMbPcLwDXSzy4sAnbBXg2/eP57lIoftSCMY2YCJ?=
 =?us-ascii?Q?hL48dZsAQrMQvPG2vr+h6PCoBwPBeFHWIrG7bvWw28MOcYjRKdWq1BuEkTgP?=
 =?us-ascii?Q?5xKPnThxiWamev8EcAN4n5sUXxHkRb6fW3zdVQ3RKYUsQ2D8QlaNfhjb/jJb?=
 =?us-ascii?Q?QzmYshvKZuuPn/u4m83Eh67t947+K6GEdyFv7kIBl8PbAjwoiJd80Wdp4xiW?=
 =?us-ascii?Q?Io7jb+J2HKmGycgarCf5H9b9znOyUo5KKlTiMQdtz5mk+NKDUOS03vY+qysy?=
 =?us-ascii?Q?+zhCUmDmbo8KDwa4XpHEPwTJNgPxXHPrf+918hXcbM7OZVmtIKt1OU25/8p6?=
 =?us-ascii?Q?j8g580RrdFQNeqws0kvoyu4MlPZj4S7S05wquSo8LHwhJBOuj7pECJJZSCC0?=
 =?us-ascii?Q?0PV55tzXhvHE3jlOENJTcQqFkiKdiQP3l9vPwggJNSAuwWbkEXVlWjYc/EO4?=
 =?us-ascii?Q?FB24HO52Y6JbVUQC4s9fapaNvsk3bj57FvJuS0mooZL7QKo3B42vEhg8Xpmv?=
 =?us-ascii?Q?g9lJzSzy6YfIdOkovdp9G1q13nl/ZbG/Ilw+MhE9YVAs+D2u1BzdyvPX0mVi?=
 =?us-ascii?Q?7S+OFGpDt4thbLAxqjtv+1PNtpjslghFsRSyD3luZotDhPfvlMqh6WKcd7nr?=
 =?us-ascii?Q?EY2B1pxpoIf1cDYs13mX5Sg8HtQDkD08yEzI9iykZ4c6oIZ4VCXKW7jsKg/K?=
 =?us-ascii?Q?2KUxuCWc5v5u+RpvL6D/kdtGZbTY+Bsb+2488ZVzch53b04vijDDM+ilbqqf?=
 =?us-ascii?Q?RhTFWiy4L3QT8kaoqjSwkBrOuhEeUaxnjuXhNSKqjdH7WNZq119oCnhpU0Ds?=
 =?us-ascii?Q?QFmWxucolbFIYjmWwpNskG11tHqGvjuDAWjT43wXq3k96HiWyfC939VDUbmo?=
 =?us-ascii?Q?cBycCct1b6t3/nyBIWj25i+VR11q0GInYyEsb4LOACPor2qysrwr9QG/r9OI?=
 =?us-ascii?Q?ENS+9Md719I2hbGlOTE8qG/ZNi2jfJPNQT251PNH4UsHvCQoDgLZRhdwer5C?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fe4b7f-926c-43a7-ed39-08daf4c48281
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 17:43:26.7916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CznVCJt5DC8unln28teBLAosI+5SAMAL7h1Cs00jV6Q2IuIhJjTdaESAym7AonYgVo+sYEi7wDMbBuxjozErOgNxLKIjVqtxYpvwre6ERpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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

On Thu, Jan 12, 2023 at 09:40:42AM -0800, Matt Roper wrote:
> On Thu, Jan 12, 2023 at 03:11:31PM +0530, Chaitanya Kumar Borah wrote:
> > Fix typo for reference clock from 24400 to 24000
> > 
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Fixes: 626426ff9ce4 ("drm/i915/adl_p: Add cdclk support for ADL-P")
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Oh, I guess one suggestion (which can be made while applying; no need to
re-send): it would be better to use a "drm/i915/adlp" prefix rather than
"drm/i915/display" since this is a platform-specific change.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..7e16b655c833 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> >  	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> >  	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> >  	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > +	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> >  
> >  	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> >  	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
