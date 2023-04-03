Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EB6D5289
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 22:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9E810E19C;
	Mon,  3 Apr 2023 20:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA6210E055;
 Mon,  3 Apr 2023 20:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680554148; x=1712090148;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x70/oB/dBaN21AKZ+/Wti2Lf4/Q8FZsVLHkWl1MB8AM=;
 b=nsmxqm+G+v0AFO6yLql+ToVBOmDHp60uRSpMld4Y1QvZXeOXAD7Y844K
 eNsL2rJ8SxXYiPDryKe+WjxQeYFswpIddxDCoEQLol1BmvySy+jTFGUwr
 rHBN4j17f5ZDlPMwHm8cjNoXwbgvnAy/75OypdJNhDGoks/dzumfz/oNW
 M4X/fnc/3bVykf26QfkfQYHxqydUlDQylUDc1p/gndIaIeJnse41/BSnm
 Arw4V4rGTuDscx92xFBN4X04JorTktSUS0B1tudbTELt0n2JMhI1eH6sh
 VDyZ6brJ4GhUyA4wqOrm1eaduK8BXr77lHd29gddjvFfGPfEQ+isBk8vq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="344566710"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="344566710"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 13:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="686112474"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="686112474"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2023 13:35:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 13:35:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 13:35:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 13:35:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 13:35:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eqkh4zDwWzJRm0KQ2FL5TVKTMil5KmI1Tv5oeE9PDR+c8P5Bc/DTNkLhXtV/aMd6ZIj0b9SUMnCkiEwobsBaiNhJoJkqSibB44ttIKMXsRmbAOCKgm6FX0lAhDHzAwwgLv7vMAOn91oQ5CylPJAyAoFqiYEkVYjLn5jSOLe2GNpnTudvbyL4cUwtvRh+AQA1PFl1I2sp2F/glD91EMEn3foiDJ/GlnJG+bltz6xAUNfFzhisWw8igl618MoTnSQBE/LUoOq47STbrYe+mel+50y+D8fVVri+53gekS+YKFXF0ah7oxe1m8+oFDPiFQdd4+k5+L3wJrLeYTyDh6Ux4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Za0RSS2lOfAjgUAohO8uBcOfef2e6eckK/57s85CMus=;
 b=QsTiLgToguCsL9JUkC1TguAYUZFRTG68QidSumRYhg28EbVhSSMm3ENM5DdMr4j90Lq8STR2XlVtmjXN1SBrsYkkbIrv0mvRrfv/AuP/56P8lRlxXPaJKJSQWT/IDc7MS/lXwqU7BkI/ApquyH7oPD1BnGqwZrw7KQjyLYuyCIaASLJgGKR1A7pbJmWDzAuCAocmHInqT13GxUrCknyOyjkzWI2LTrWp7OLJfo2DGJQIDH1Mcfl0OMmI3z+slVVR3UsoCRjVjOX0rkEcgwlP3j1B1CXu+iGbKj4P/vL8yQaiUkW/GleM/U0q0zxeCXV+yX4h2lvw5zGuFP6ngqKscw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5375.namprd11.prod.outlook.com (2603:10b6:5:396::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.33; Mon, 3 Apr 2023 20:35:43 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 20:35:43 +0000
Date: Mon, 3 Apr 2023 13:35:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20230403203540.GY4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230331102419.521392-1-maarten.lankhorst@linux.intel.com>
 <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::6) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5375:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ea91a32-5a98-43e7-5d40-08db3482fef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yt/oZjhZHSTILHsfXhibWjWcWCtiwisGPQny6/RClcQVxiXThncyoogTCs3Gyen88rko9OSDfB4lEThaMjHjUvUis9C7MveOKaJWVdZxcuFbfYVc7KWiuKdEyPfspaVThJNOLIixfCoQ8wxmmbB2gzWu/+zh2lQKtUR7L+jpnWjeuBcawn6+lgfbBEGQe15wHCUF4pF4BDwGV+2P/EHZF7kgBniOedC0kobDF6l9p1PhjYpyY3n8tHjZ0gip+SNoUxPv0bsD3brTxQKRAunX3yhm8IWpWgWmtdsosL1g4SfKnSHcbrEBq/LKnwtT8T18QzyHAC790SFENGgPLO6M3tBe03JnNJ3/tT9s5VFELlvfWXookqCY9INeGQpsTI/6teIqQWCGTpV/2KLestniJvRgB6gG3KYeVrP+pnpmu8vqS5iu5q+0q/+wsinAOXGhNB3W2S+snaC0jY55j2Oc7EqV0mzEvcnCz6+IYT4IIiMLDA06OrzaXN8i4ioBS+ESNSHJe0ioc6zDtVLR3gB8yJvCwW1c+cPO20FB78suwSxz5xEVIXL6Blh+L5UXczc4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(39860400002)(396003)(376002)(451199021)(38100700002)(5660300002)(83380400001)(86362001)(316002)(6486002)(478600001)(186003)(33656002)(1076003)(6512007)(6506007)(26005)(82960400001)(6916009)(41300700001)(8676002)(4326008)(8936002)(66476007)(66946007)(66556008)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+/gCglz0QE0anlYfeBRmqyYvlOGuxXV2p86GZf2P1baQVreyN7JyfkFbmV2K?=
 =?us-ascii?Q?IqPOO74ZVZaNYzhd90r4Dqp9QKwjKhf9cXQHDkGbW6wTMgqZ7Vrbg4XALllY?=
 =?us-ascii?Q?rCZ5ay1xGbxsXedezA3V4K5jJIBwDxPsLR6qf4D9he6MRzCeVVj0PKnXTq1x?=
 =?us-ascii?Q?KOhui4OXO1+wT5NvSnTs+aQaaC/Qj7RDCXWRyEJfa+A5gytAE4RmjqalcZBD?=
 =?us-ascii?Q?6D+TZXjXVa+u2fFLmd4DDBmgzpG7HmcCvvYoQDkHcTQn7WAzLH8k10VdzIBG?=
 =?us-ascii?Q?v++gacvOJ/rrDIvMdDd//E/vTG3RUTidK8/RfSdvT9aWKxojrIOE2pzWwDbd?=
 =?us-ascii?Q?Cza5aXAewFPfOgz4mJiB6vN0Wc+iLKwPb6yyXOg5KQlrLF/9j49kNCL17x5p?=
 =?us-ascii?Q?oTbox+zIEzkAmQoVR/dV4WrnsSStpPpRW8wVaoZiTToV1L+9sch+Zbm8s6QM?=
 =?us-ascii?Q?cCk4ikhH8tY30ifF04GT3xpgEMldzsJJDWU2PLnjXZPJpA/BbEqe4kXQWnWj?=
 =?us-ascii?Q?SDvFuZLSHAuqDR9MmQyYMd+TLatsYfwzCj5AIaNhBQ+TEWf6LtSXGkLNZmib?=
 =?us-ascii?Q?HQyJ+rx2b8DgFDVIrauZexGtVRFonW1O7Nx7cJV1JA20KHRSqpbkCOh7G5aa?=
 =?us-ascii?Q?WaYagVzj/JPX/cS3hWU/V+kdUCbWnoLUe1bybWA+dyZKr8A0BXGPdpjm+cer?=
 =?us-ascii?Q?HocuNQzZpyR/d9YUAjZxl8cu6dksd/sqcsBMB3Qo0LpX7SE3r8LzWMARMOmP?=
 =?us-ascii?Q?Yf8ftTidecNIP+XYrzaZi8SJKbzyOqfDnnhdkbEIEzivDTv4nHEcYO9UVHXc?=
 =?us-ascii?Q?aCPlOoZ7E+PEQ8CGxAqFkkZYCv9KJFQoc2e3pu2uR18P9z71iZPD5HossyC3?=
 =?us-ascii?Q?0E1daKcIxaMYKSwhNFUV2stMGzjMfHsChkJVhHVDnh3/a+Jn6SUPzSXjkS41?=
 =?us-ascii?Q?MCPXsZ8GNnrKTQ/cs4gQ3uDnsFx81mUuweIP6+y2V/hLWQyqwQL8RmwYvxLQ?=
 =?us-ascii?Q?hZJR1cLgS18oQuHZMxBT9gQLLKKIHYTfPRIqS1n1HQtZY2NVk9ke29FCi1hV?=
 =?us-ascii?Q?bpJT/wU3Un4JXpBkGtfq1XxtP0V3oo9ZgJHDzHYof2zNHkgzM0hck2kKEXeI?=
 =?us-ascii?Q?H2K32wXMBjaUnLNSZDrVinyQPBGP37y9pu2wxc/JS54YafqUjihsld4FRXlS?=
 =?us-ascii?Q?c8HeG8s/UyYOuQDncjr1av4bs8S6Gue+1Zj38n4kaaIwYdCeiL01xLetKoLG?=
 =?us-ascii?Q?Ol/eWF9LckMcN8l9nm1LeU6Ph+Rt+gqWSvWX3NXTw9LY2ckF+NBSEe5yKd0h?=
 =?us-ascii?Q?WAf1CUyMAdSQvkOdaHLjhB9xZY2vrDFHgB16543K27GxkvP4al/DzjT5F8+Y?=
 =?us-ascii?Q?z76bjQgnhAr2FjgUjvrFXAosPaAGerU4VWvIuFCIooU/yDQ9ExF70FTXdctO?=
 =?us-ascii?Q?Eqzu3C6kCLpBGXzHN4EFE8ioPDfmD3d5fAsrry6vwW1v4BlOTSu1FidGcqZ/?=
 =?us-ascii?Q?HSg3nUgBudoySc8E6WgRXVDMMTykjVgTvc41QxHZweRP/us6LfELKub6BgMH?=
 =?us-ascii?Q?bWzvNkJ0DM9kEWoXuOP1jEfqVZ8idsapMWNc/qSlQiUfKZnk4o0VF0xTFm4d?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ea91a32-5a98-43e7-5d40-08db3482fef7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 20:35:43.2911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T6x3RYdJLdwJJwXwb8uFaknwVF67gcrziNRgLxnZZbRqzfGHhP+G4+RtGEhR3u+BUvBTyyRIaEfoPTnnZMJ/H5/BoSexQOOxkoYZ32+kzP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5375
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/6] drm/i915: Fix comparison in
 intel_dram.
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

On Fri, Mar 31, 2023 at 12:24:16PM +0200, Maarten Lankhorst wrote:
> Gen13 should probably be the same as gen12, not gen11.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 9f0651d48d41..9649051ed8ed 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -548,7 +548,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)

I don't think we need this change.  We were only reading the this pcode
mailbox for display purposes, and even on the latest graphics version 12
platforms we shouldn't make it into this function anymore.  Instead the
display IP now provides this information itself so there's no need to go
through the GT's pcode mailbox; we read it directly from display
registers in xelpdp_get_dram_info().  It looks like this condition here
would only matter if we had a future platform with graphics version
higher than 12, but display version lower than 14, which seems very
unlikely.


Matt

>  	if (ret)
>  		return ret;
>  
> -	if (GRAPHICS_VER(dev_priv) == 12) {
> +	if (GRAPHICS_VER(dev_priv) >= 12) {
>  		switch (val & 0xf) {
>  		case 0:
>  			dram_info->type = INTEL_DRAM_DDR4;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
