Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDDF96B095
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 07:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626B710E41D;
	Wed,  4 Sep 2024 05:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VGu1ZkJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5936410E250;
 Wed,  4 Sep 2024 05:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725428372; x=1756964372;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=K74Xt6+EmPKUIfUXJWJFwI9b7zBuSKoJ6jNpiRGiHJ4=;
 b=VGu1ZkJeqgm3IsT04km7GIhA9Eg+o+M3jiVhDlFuiKOyHjzmF337vEy6
 V3YXJ2f6pjSUlby5lUNAFBBhplLSxv/shYPnZTi+l6+8MmBWXk3MKhQ/i
 /q1BHPNEr3Z1WMijDfJg3TVyEH0wvpFbEpWvvDvQP50eU7D1NcYDPnxFT
 u7PSYWSTQU59+pKNpB3ueJ7EOdr5lBX/a/mKbJ5qiDfTWxZUIaCU9Vq2a
 MTZQRfRIIXAZ0DTR+TP9+l6Eo9c9Cje2YDP51NZf/ZsfGeaz1RIBH5olG
 OBuYSqmUoin6dA+d1Y8FeR8UJR4sYQZp1fzmKmpjlLdfyhZXwFYJSBMgk g==;
X-CSE-ConnectionGUID: 0tDa+JoKTSu2w9S69Nv00A==
X-CSE-MsgGUID: 9PfqbY/8QgO/43yYzVdZ1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="13361608"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="13361608"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 22:39:32 -0700
X-CSE-ConnectionGUID: AEomgjDIQ+yDrfGNDqizBw==
X-CSE-MsgGUID: A8LkXKtlSWaqLOo4G4O9KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="65137954"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 22:39:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 22:39:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 22:39:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 22:39:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fSJ1gO8TA4iz32okcHR0Mh7H6B5n+Y0l2HW/zX/HTCJ0JboED96bNQSR+MINGe8djXoSUWe2WOMXv5jvJLMBQCpR8gvyA8rPa23xsAO55maQtbVIMsjy3+ZzPPk2n1tMb2ApgVaOMexHlLed0UuPr/t8SHqM+gsT+4+GcKNtjFoWeuw4IBr7eJCPKK0Hu+hkb9DmgPL0osG51MUiY6Ycc1CyGXgKG34y021nxv742XBdZpWi7G4rHnTl8Z2JJeR8a2bsECQq5RBmQ8AYmRWIw3fYXu46JlI2Q9O6Ft36Mc3jjgao/3WprHgeVAf9yayXTp73/tPz6dN7N4tDwk2ZcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/lXIW/JT0/spwYUN8d6vtWDNS0eeyYE7e4h9fH8Alp0=;
 b=K8k+O3YiKZu8r3NNYBiV8qC+VQOKSKK2/01mXe1npoEgxCv5xUNJGtbQMH0Zaw/F5GsnwvCCWxfmRSHfxmLfouFEbGfH8cUZHgUZtEH4VFliczGv5jkTd7kPkDWYikPSypsl7vGdHkGZVsFuBVRvnsFWsaJv9kKx/oNTMzCv1xxfwpSS+GRhls2v7Zymvb48xRmpcCkvdJiiINPz8J6Zh/ZiUWbM4jIQgjUxsZVVCHA8BbFc/+yiSQPGLt9uFialDsNPNybfGczZg3sGt6GLwKa+Gb4XvuO/PqEijsZ1YA7Cu36M+L+xaR9mX0xhXPHi9hE2yl+CQ8ZK7fwhdjDcpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB6884.namprd11.prod.outlook.com (2603:10b6:510:203::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Wed, 4 Sep
 2024 05:39:29 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%6]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 05:39:29 +0000
Date: Wed, 4 Sep 2024 11:09:24 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 4/4] drm/xe/display: Reduce and streamline d3cold display
 sequence
Message-ID: <i6uf4dy4ibedkeeb76lcx6ntwhkcik43vxc6gakdyk6ygfgl7u@3a7wfdac2lqt>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <20240903223803.380711-5-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240903223803.380711-5-rodrigo.vivi@intel.com>
X-ClientProxiedBy: MA0PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::19) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|PH7PR11MB6884:EE_
X-MS-Office365-Filtering-Correlation-Id: d67f6b1e-5ddc-4a34-5d5f-08dccca3f1d9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Wcs/NNlxt7BPh4kCZqOxkul8RNCcEb3N2aXS/pxXnUMa9aCwjUZt0e5xC8fo?=
 =?us-ascii?Q?vQYjyQmqCB7XdaWtKa0Km+2XCNDAQte8fvex+giEDYCVMPXVMZaco0re02yF?=
 =?us-ascii?Q?+SLtmZjRDuc0s6aTtbXtbDXwWKwqdIeDWiBOyFaN2A9GlkQddLYgR3j7w7u2?=
 =?us-ascii?Q?aam3yr4AkSqXn43DBHrrSxgvPSOBCJO/ZlzPWHaiZEQDbb4gjuKhlVO9ZOe0?=
 =?us-ascii?Q?JQ+aZm5N4mgo/8gFcJBkVh2V312mHUGDvHFBAujqGYnj8p+Uz15AaZOq4fW/?=
 =?us-ascii?Q?TqlWYfmDpHA4jMOfTeH5oa9vAhIS5MrKEb2+Y90GF+0LVT6aPpGnBYbDn0jf?=
 =?us-ascii?Q?jyu/rSGM4XBIl/KIG1f9GY8T78SiAvS2eyWdC/yqum9xKr9wHZ/Ynyd78uZZ?=
 =?us-ascii?Q?PxIiRmyHbSFIropv0yD9D2wO2eB5/FWRwJME5iOPitMTtYoyG80Yg55T42ko?=
 =?us-ascii?Q?hJ8dVXOmqyzggy82ni52WXVPdmRSUecVkRSkQeUTuyGxZvnwHuAQZhrYkd6c?=
 =?us-ascii?Q?cFhkkLX0qnE3jgX1fKf8aCA73WGx8on+l0zSQzKPArkuAqmcf31DPYmm9/Uw?=
 =?us-ascii?Q?GeqsEwbrQc6N/ezusizg6me12f+yCKuL8LFvinPTkS4Pf/dGOm9Cb1WOkgcE?=
 =?us-ascii?Q?gHlqK/ptcLEkHuZoncg6zjr20b/bUJxVs0ulixJQOk81XfJAJMuAdIsR1eQR?=
 =?us-ascii?Q?vHPQxdiU7bETm+6doTCpNG6s07HzT5ojcyhD0RtiJdSc43l5x3gMevQ7ZXEA?=
 =?us-ascii?Q?MM0tJoMzQgwoukTZWMu2dqW6p7BGmRo3akqNUdce8EM1mG+5+Z/Dlx7gfdGP?=
 =?us-ascii?Q?RQlJr4n0seZC72iUARe7f7JwcYw9oIdaj+pdXBGA8wljXBtQcnhvzHL+ZGnJ?=
 =?us-ascii?Q?4o42BRCGYnjGDOXBBb0isYw5eMPcdVhc5+VMhj8PcFREIgmlrqtHJUzSsnyY?=
 =?us-ascii?Q?bcWcC7C5JJEnvf4qtzTXR14RDd9mSsnVW23svYset1M9HrMpr/c1q894MGlG?=
 =?us-ascii?Q?v69/VzPQoTw0svvQiypcmIW7DPJqmPjMW20MVuKkMM4ctpr1JFiBABmEi/qg?=
 =?us-ascii?Q?K618uhGgnJUTUSsvbg4lYQauT5YeLDDStN3D6BPbNa2AlDPAJgy1TM2drqhs?=
 =?us-ascii?Q?14ma0RXvETuoHNFNB4wXV9O1e6xOmCVS91vwqCD6KJ7FcsavieKKv7r+VFqS?=
 =?us-ascii?Q?HesLTaWx0X+P/j6pBP+PrjsxvVCe+bOFfH62THa3MpfHmmUk3Qe2+rNjpBoh?=
 =?us-ascii?Q?NnwWtA3itXSaIXPJGKekQbadQ7KxHSQdGy+zZkC3LC12fhk7LUrFeMK5O2EJ?=
 =?us-ascii?Q?h/xFkGj4TTB7lziguzZ7uO8RGWO7K5QQlBt2WLklNmP/ag=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mfselrdum7ma7y22qICkaZYaHF4tlUrOfG3En9Qgcq+9VCe3JgsPbjfVVQrk?=
 =?us-ascii?Q?iw0rPJVL+6hEg7QITjpEgAOy9w5OB2/4Go/8Um2clJ4/g+I2u7HXxhCNEm5D?=
 =?us-ascii?Q?D/5SImEUs3s3nRSvjOILPuqMmKsqEzf/QU5vUh+F87+MyWgq/yaO5VkNenAO?=
 =?us-ascii?Q?dnQH8Vhc2Qo09VDV0M88BViwXcF0oH8878+txlZvM7p9RomMnqA6cowUrdBd?=
 =?us-ascii?Q?sVMsFePEraD+poGJ+cOFlcFvvH68dH/yHHnOLtawY/KXmG2D6W5VP3aFIyVC?=
 =?us-ascii?Q?qQLfkXdBpM6RQoT5jtYoZ5g2KTtEMoWJo2jdNostTqm9esP4yXlGxj3YvcO+?=
 =?us-ascii?Q?0Rqm5GDvSjDCRCVMe9ab2rcBuRjlSKpFsFvV7C/cFfHBOCHa4Bt3Sspfo0m9?=
 =?us-ascii?Q?fk2Fzc8VqpOuYfWR9+JZkIe/g9k1O7K31R+hJeRevMFwC/IIF60doUQcZ0uM?=
 =?us-ascii?Q?swiyFqXpmD/PgXqHEVHANj2Zd7WUlbk66tZyUbZCVlnKxupNkMq5ohv44k51?=
 =?us-ascii?Q?0HKq70FnipX2UnckNLDcnLFtjmg5F9v3o6ydv83epHq19VEzf3SH18wAO9kY?=
 =?us-ascii?Q?0B4Z8hJBCYRJ5oFC1EDFgh0RUCuIcSLYe1lXUmiu3aidpR5tz6WO0dn3cDhD?=
 =?us-ascii?Q?gbmY0l357aBUBgM0so7qyVqtbFl105RI51HR9HGWHdGHyWebmDckR5HciMlh?=
 =?us-ascii?Q?QVBNnm0fyfYfVuBFu1JTHulDKrqY/oiMA5Jvfs7j/Tl0grQYDJJ/UyHSZyec?=
 =?us-ascii?Q?qhSyweCVm7WQVf7w844BqOZPI+zr3tUW2oQpmZlZcvsgC05V+xGwBAjyrqeS?=
 =?us-ascii?Q?yF3iiN6gJWLssclgixJ7Pfu90N+DbIq31BQbgScFz0laDEO5QA7vzcHSmyR2?=
 =?us-ascii?Q?pOyGXtmJ3sYkvNU2OjIbQoKjWUzO9wPIgVucy+YNpBxbOtNXuebLHt4uAwcn?=
 =?us-ascii?Q?r/Q2Ygo7Zqkv+ysYA+cVVbLsz+oGtVDzqzt9L7w4HnIeGcMCOAyxyJHVm+e6?=
 =?us-ascii?Q?pS8r8MuWubTp7eABlctz3f1ZAb+v4OAGDdmwnO1pACttunLoqR4ErstmxWZ6?=
 =?us-ascii?Q?2c/B7uDi8DGarCATUbMlOyEmKAq3qwnolMYX3KNM1GyRY/uF6BoW+docDDxk?=
 =?us-ascii?Q?qQBu/3r7tRalcVV0gXOTBd6Q77CxKsnPralaP0mr6V7bQ+C9JN4Cnu2lKlEr?=
 =?us-ascii?Q?9ikh9e8GlrgPKoxdhyNnrx6Um2vrLRtiprdzOwOtzgti6cghnQrE6UoW0y0k?=
 =?us-ascii?Q?UvdvCwGNGWOFKdg9OdSuHA3oLc6dPdkHlOz0QEXs4KV/DxR/bBNxcXfnmTbB?=
 =?us-ascii?Q?WxdZJAlt0XBQkMqK2qOrYdnfPo6Fa7zhFKv9i8nb9RTVJhwm43PHWeKK+ZBr?=
 =?us-ascii?Q?SbJzYO0etVo9r31j83BdvEBkHrqLvRlBWfLEiRiD8Um6MsweBJWRKsHTmL7L?=
 =?us-ascii?Q?BMpAtyzvZJosrtYb/DWh+l88AqHZeeNF5GUj5VdWFy8e5erBxBm+a3PXjrhi?=
 =?us-ascii?Q?4+zZ3CTTRU94DUOxnq/VM30K1d7QZV0ohPGc1TuCc1VGF7BVnx+OzzXZJIg8?=
 =?us-ascii?Q?qxoV9BBb3gR3fN1AIk5odgtt+xdY65al8ACMzR1SFceDb04uAULgFyi0IEpk?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d67f6b1e-5ddc-4a34-5d5f-08dccca3f1d9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 05:39:28.9893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c/WhsYZ+245t9CPUA4hteaGasliKEGe0bI/d7xlfSB8CDSERkzzdEJQbEeb4kzmraaAVGdB+JoSVL9E89NgciX4f2DkNub/vWbZon1QR1SM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6884
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

On 2024-09-04 at 04:08:03 +0530, Rodrigo Vivi wrote:
> When going to d3cold we surely don't need to flush commits,
> nor handle fbdev. So, clean this up a bit.
> 
> Also move the opregion call to make the function more symmetric.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index daf9b9baa88a..3fd3e74f1310 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -310,9 +310,6 @@ static void xe_display_to_d3cold(struct xe_device *xe)
>  	 * properly.
>  	 */
>  	intel_power_domains_disable(xe);
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
How do we make sure fbconsole doesn't use vram to blink the cursor ?

Thanks,
Anshuman.
> -
> -	xe_display_flush_cleanup_work(xe);
>  
>  	intel_dp_mst_suspend(xe);
>  
> @@ -329,18 +326,15 @@ static void xe_display_from_d3cold(struct xe_device *xe)
>  
>  	intel_dmc_resume(xe);
>  
> -	drm_mode_config_reset(&xe->drm);
> -
>  	intel_display_driver_init_hw(xe);
> +
> +	intel_opregion_resume(display);
> +
>  	intel_hpd_init(xe);
>  
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(xe);
>  
> -	intel_opregion_resume(display);
> -
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> -
>  	intel_power_domains_enable(xe);
>  }
>  
> -- 
> 2.46.0
> 
