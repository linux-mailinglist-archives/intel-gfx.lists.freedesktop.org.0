Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6390959161
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 01:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049BC10E023;
	Tue, 20 Aug 2024 23:52:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jMqOTFCh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB2310E023;
 Tue, 20 Aug 2024 23:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724197971; x=1755733971;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=diWrsofNTAuAHdRZd56VracjrcSxCAkOZ/bYv71dufc=;
 b=jMqOTFChj1ndfEGdeXyTX8xj/zsKHDB1Z+XcmFYlBlmfIdICvsZOE1yd
 b9IjJshyz7CThFhb5CZaD3cGmksLmEnro/ZfGxiWa+ufquBNV7EEdd5T7
 T811VhshPm2QkAHDVXBRmWOveQr3cEF/EPM0NmxncbVNHaLgirpfN+m1o
 bmcmkwPLEE0tKvGXDJSztIHeSwGGLge604x0xQl1fx6DRnVF72gsGpW2Q
 Ts74GI7EEnr76Jcy0kWsTRhqYcawJolSbWqKIuuuoOnp8cU2OhymrosZc
 spQLGN85/AwOdpbCojpEROUZBLE5jUqZropaUkqUvkmTpouu446PEZ0iO g==;
X-CSE-ConnectionGUID: ke+Saw42TwKyhn/vUxhaJA==
X-CSE-MsgGUID: 2F+IAOBJRPqPZ5ZLC/blsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33194914"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="33194914"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 16:52:51 -0700
X-CSE-ConnectionGUID: 76rF2O24QlWP6EcJu7qtxQ==
X-CSE-MsgGUID: iWBgjlmyQJCLq6ClJUGLkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="61053131"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 16:52:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 16:52:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 16:52:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 16:52:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UjCZXS9ZCpJkozX4yqOyFiQwwjUj42PHGNWczkyjb9O1SV8H6uZ2ZHg4HYmjf9WnRHjaoNvlaVHB2s29dVsR8OrUtP3Gz5jVJ4o73h+VLTqtOIzC0sEDugfSdTcccVKc6rA7UZnkM+3umKNgOl9J2PY1SWh0+7vIga8qYjiqlYio9xpp2zCHRlhXP8m/kklxj1l3jdsRuptK/4eD5NzRFPXdmuQr7oLWApnrnG7qU09lnhrcPgUigdUSe5sY1RLytD9e5AKAadhzpq4xuDKWwub8i5tBBnqrpcEPa5eD8UvY2POv4awm3zhc0kwnxYJucVBXgYjBQ4U5N2QvVEds5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YWTx41umXz/Oemp54H3Jr5d1mwPFcru/dGzGaUuGP2w=;
 b=pRVxCCoCc7jatt0ai6IEJSKY5GMoQBr175ENr+FaAgxzJA17VA778gMcdMOdCbNd3XwV2JHP9dTdl/2/LbhEuZOGLiiLIiLC/QSou1Bm4wToZYO8oN26rL1mC6I2OONIoxsfUFMzqkSDv4kT+XGAQOL6abuu3Og/+/edrsyYrDCLTgY/8PkinPwS1E3NrZ+8atVa/ZCtZ81xGhvPYFNPPYJGUY++1bL1RoyGLSDpnANYZ6KDOKAgGyqh/p82RcciVnbw6Cb/WYip5yjV3mUbIXi73oYyxWgiNngQk4Z+TeqUWGDZd6FFYDJtBaqo7JqqEl1+zgevyOsWK+ptxOY99w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB6422.namprd11.prod.outlook.com (2603:10b6:8:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 23:52:48 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 23:52:48 +0000
Date: Tue, 20 Aug 2024 16:52:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 07/10] drm/i915/display: identify display steppings in
 display probe
Message-ID: <20240820235245.GS5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0056.namprd02.prod.outlook.com
 (2603:10b6:a03:54::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB6422:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c6cd606-9451-45b0-d8af-08dcc1733193
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xz+dyuGJdAselcxrK5W2UsY3Mjt0Q56zZoRzdnM5wL9iZGuLlJdEFO1SwqCr?=
 =?us-ascii?Q?yLh5rUty/InTkmSHt3cgtdps01H4SplZwJ9wT7ByZDE3j1ZcewplWJbGDbes?=
 =?us-ascii?Q?v6zHAglUxetDky91QEwLqdx0tD4JTyBqvloRerMI/qZLlZ1ZpOnfRb5T8hWP?=
 =?us-ascii?Q?XxOiB14lrwb8DA3uYvWwnmNZi/H1kITrRIHRcTyTAeOZSwnWPmw5P6yFLACZ?=
 =?us-ascii?Q?32Ia09m90GxLLc4XL7exKWSlNYJ9y4xmu2W6iYDb7yZyko+ec6nYW29r5q/D?=
 =?us-ascii?Q?u9HXcajo3anqisTOBO+bk9jXxA6xsXuyJoXV21PBCc6Cv9Oxtx7+N8wFAd07?=
 =?us-ascii?Q?v6wckkbE1iyaJRRZAgojZ4ePmX8/D9t50ilwauIh9YFkr+/yBeQccvJS4bQQ?=
 =?us-ascii?Q?seysQ5oK1pfjpPm90UuagyxPD6G8Hzv5rGUiRW71t3bqps1cptQgID+UUa8h?=
 =?us-ascii?Q?Cb0b6ya1jtpW/+cRciVuWDcywb8hyfXtkR3RC/IcoXYuHW9AkbP2/2mvF4Zd?=
 =?us-ascii?Q?fkNzwzAtHBgS1EbYuee6OLGmRNKRHeFjS+m+vBBi+voq3iGZG2DpsGPxycmx?=
 =?us-ascii?Q?WRkzeyHiUHBjjrX85ZWOrLuwvBY7LdN16fBSzoEL8mTE0YAF7tfQpyO4CeUk?=
 =?us-ascii?Q?RU6O276VlCp8cJufztE6fjCmKjU01lx0KoR30lis7RWcN3R5aGDrZCk0IPCM?=
 =?us-ascii?Q?4rh/NPZArdIyu7BBKyzB9Zo8ObeqbyrLK4LCp1oMnY2vSCvqTQymiUuOec27?=
 =?us-ascii?Q?y5uOX4x/Yln73oTHqzQYhXhXRt3tBuh6F2n6CAZAaFz1zpx5oM/jWl6ROCaP?=
 =?us-ascii?Q?/ZckOOMYybFTiCwztzyDNKa4n5IkJ/DRSIq89UygbESslDtlYPUB3Jj5vjAu?=
 =?us-ascii?Q?m0ewe97ZrkhxKBVZ9h2xh/N0jkJeaj2aDnF+GUZqF009I3+FZZzFY0rh4dAP?=
 =?us-ascii?Q?dLg65JwZWn3t7JCePx7eWYJdCbVA2J0QZZYo2cQebtG5xdVRcUje3a4uHnpZ?=
 =?us-ascii?Q?G5dbKt00FlYERL2YeuFnx6ZD3gzMN4oGSWK7tCbUsysl8q+m/0n6H3IWgPcR?=
 =?us-ascii?Q?zmgez25slCIaKgTm3/PbKl1mfLpiZB6HMsTH2TAV43g5whNJjWUHlzYS8rrn?=
 =?us-ascii?Q?H3NWhnZ2dW1oopvQiUEKRfcAXZ9fQ/BBpfkVQHQBFFLRFpQx59wNeHa+rPIx?=
 =?us-ascii?Q?MGDSE/PwQT3Kl4W0ADWBmA99WgRN8dp/qHB82Eus1G0hi/iIU5E5MZgrADMr?=
 =?us-ascii?Q?/5N+Sx3pgc0d3Y2tLNPpYFkw9u8iu3j+mnGcT8omn+nML2BPO0J4rZEtaJSO?=
 =?us-ascii?Q?Krs8edT5RlA/Evf0bv4g6gIpwtElBj/0OavB/+oysf66Ig=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Nz8E9S8RWx06LGaMPHYQ231QZpLPdtXEjioO4Umr/NeNbhbooIoN/dKCxvLj?=
 =?us-ascii?Q?qlcZsEnRsgZk23GAZcPIcrnMXyc1oVl+QCfCsELWvSEuxQS3uRsfiF0UH9yD?=
 =?us-ascii?Q?I6grMahaa6U70QmVh8B8PkF92qrYgKlv1koFQQ3pKKkVxPu7j3siPUTGdjZ1?=
 =?us-ascii?Q?ZXYzSNy2h5sONT+nS7rE2hcrip+nTR9g98woBSXVFrxK0VKuGwV9pvDuaKyJ?=
 =?us-ascii?Q?qJa25dpazeWDxJGV8e5EnB7VB3lPJjRHKVXg80nUvBEJXAEaSGCWu0p8uhxz?=
 =?us-ascii?Q?z7vjHRHzTTurBOek738EKWo4ZYkfIHbmcYeuuCvebqVmjdRDGwo++CIU0Yqg?=
 =?us-ascii?Q?U7X/YDFzvRnQ03eekKWtH2FKCimUeWUXx+P1/1bGmbnQdnAxttbLqsUP8TC5?=
 =?us-ascii?Q?SxMBo6bqiWnPhkiaqWKZ7UCQhS8rsjEWT739M72xcqQVqSZ6ZEkaQHasOWKK?=
 =?us-ascii?Q?DFVBEruH5mPK5M+lVk86qjMWU0OWKnU+wATTm3D0bBcug76JaaVE11sHvfFJ?=
 =?us-ascii?Q?lZR2HUFA5KMrmzdOT6akg87Ps5GIUCY8iPRKHBU9gcQPzMvAmbU/h1/Vu32z?=
 =?us-ascii?Q?CbtsPbN9bmuUsBpxxJXtKftnBXpJHJO97f2aFAwB+GX1eoLpygE14wIQdV+b?=
 =?us-ascii?Q?TD0tZeOm+idndRASz5K5bEdtmr62Tyom63kAQFbYTRNOOviUIYs9vM6tqBS1?=
 =?us-ascii?Q?SnMpqNRHvPMzLkwn3gD51t64GNfvhntjo2esxp8yvDqrxHtaZ3KflrYNc6Ux?=
 =?us-ascii?Q?eu9gHzPYQcL5H/50x5MW6SPrZJJ+POuRpcff3nI6byvqCq9i5Ij1v1K2q6sb?=
 =?us-ascii?Q?kDfpyvidyFAn4d0yMv3XcAGkjgZcjJ/9PMTOIhwHV72CGWIcCsaOt25tzHs/?=
 =?us-ascii?Q?lTk/BTLvKSdyeQ07ggjVILVHyMgt30hOot+WWXkcpIPt4nzgVE73xz0zEnap?=
 =?us-ascii?Q?2Ma8PILUBUFcMftCONiCi1Ibq8QRoL+ndy+OHN8jAubb45bfMogBJ5vb0CDW?=
 =?us-ascii?Q?1KtigxlCs+yN8NcgS4TpX69fq03u+PzZBn2bS24E8icDXLHkrv9H6d2FVk19?=
 =?us-ascii?Q?kV+mfW+vjGjAAlcIwT6CaEjqngeWLHN2SCtEkN3oDyhYpA/Kq67Z0CFZ/iCp?=
 =?us-ascii?Q?ItRWCcgPtaTihWzjwqiz2De3md/+qNxpytB95u9X/+JMPuHvVyqO2l5fahG+?=
 =?us-ascii?Q?xmVS5QADZSGkJkceqaBi9ctxkclOTzYLzJxNftEWKLBZJiS83HSnVvPecdhb?=
 =?us-ascii?Q?6W1HFEopL1D6zJzHv4IWeG5BTaNVhTZCj4RLQxBSfaaFOFwyMFpBhe476Brf?=
 =?us-ascii?Q?zYp7WvHs0VjwbJU+MYJdhJEH0JIvV6dICfwptjN6DYP47OgEM5p9Bt5cpLoK?=
 =?us-ascii?Q?3MiWonefE5v7Ih0KqflzH3cR43vtAjFw8vUb4v4gNhbPr7B/FFO2sK4P+BgJ?=
 =?us-ascii?Q?Mmy48KYMc4ctvL9EtzidYl2x9qlpzR9PP3Tax/yAX+TRPr3fFv7D6Aozg4kE?=
 =?us-ascii?Q?KqyRFCWoi983EqS+xBzrxXmqISxyBJpquTxQYduzOmHv0FZu97vRZAmZUj+J?=
 =?us-ascii?Q?UKuR+bdsw3txyubfVJ3NXwoNYKmzbA1HrDuUUd99Bk2QykmfdlBm5erJCIMq?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c6cd606-9451-45b0-d8af-08dcc1733193
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 23:52:48.0384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hKDYnfj1tZpzIQ4TFRk4AmxwYeEbO6ayUV0a5jf5hrFnpP6G+iI4sSsaSxk0pZgcvMcazF/zj5gRJ7SSWWwSiM9f0Ptt7m8mDzPIq8X+lRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6422
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

On Tue, Aug 20, 2024 at 10:00:40PM +0300, Jani Nikula wrote:
> Both i915 and xe have code to identify display steppings. Start
> deduplicating this by, uh, adding a third copy in display code. This is
> not yet used for anything other than debug logging. We'll switch over
> later.
> 
> For platforms before GMD ID, attach the mapping from PCI revision to
> stepping in the platform and subplatform descriptors. This is a
> considerably cleaner approach than having it completely separate.
> 
> Also add a separate field for stepping in display runtime info,
> preserving the value from GMD ID.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 224 +++++++++++++++++-
>  .../drm/i915/display/intel_display_device.h   |   3 +-
>  .../drm/xe/compat-i915-headers/intel_step.h   |   1 +
>  3 files changed, 216 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index a31f89df2c0a..1ac3ab3954a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -16,14 +16,25 @@
>  #include "intel_display_power.h"
>  #include "intel_display_reg_defs.h"
>  #include "intel_fbc.h"
> +#include "intel_step.h"
>  
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
> +struct stepping_desc {
> +	const enum intel_step *map; /* revid to step map */
> +	size_t size; /* map size */
> +};
> +
> +#define STEP_INFO(_map)				\
> +	.step_info.map = _map,			\
> +	.step_info.size = ARRAY_SIZE(_map)
> +
>  struct subplatform_desc {
>  	enum intel_display_subplatform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
> +	struct stepping_desc step_info;
>  };
>  
>  struct platform_desc {
> @@ -31,6 +42,7 @@ struct platform_desc {
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
>  	const struct intel_display_device_info *info; /* NULL for GMD ID */
> +	struct stepping_desc step_info;
>  };
>  
>  #define PLATFORM(_platform)			 \
> @@ -610,6 +622,13 @@ static const u16 skl_ulx_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step skl_steppings[] = {
> +	[0x6] = STEP_G0,
> +	[0x7] = STEP_H0,
> +	[0x9] = STEP_J0,
> +	[0xA] = STEP_I1,
> +};
> +
>  static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -618,6 +637,7 @@ static const struct platform_desc skl_desc = {
>  		{},
>  	},
>  	.info = &skl_display,
> +	STEP_INFO(skl_steppings),
>  };
>  
>  static const u16 kbl_ult_ids[] = {
> @@ -634,6 +654,16 @@ static const u16 kbl_ulx_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step kbl_steppings[] = {
> +	[1] = STEP_B0,
> +	[2] = STEP_B0,
> +	[3] = STEP_B0,
> +	[4] = STEP_C0,
> +	[5] = STEP_B1,
> +	[6] = STEP_B1,
> +	[7] = STEP_C0,
> +};
> +
>  static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -642,6 +672,7 @@ static const struct platform_desc kbl_desc = {
>  		{},
>  	},
>  	.info = &skl_display,
> +	STEP_INFO(kbl_steppings),
>  };
>  
>  static const u16 cfl_ult_ids[] = {
> @@ -706,6 +737,13 @@ static const struct platform_desc cml_desc = {
>  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
>  
> +static const enum intel_step bxt_steppings[] = {
> +	[0xA] = STEP_C0,
> +	[0xB] = STEP_C0,
> +	[0xC] = STEP_D0,
> +	[0xD] = STEP_E0,
> +};
> +
>  static const struct platform_desc bxt_desc = {
>  	PLATFORM(BROXTON),
>  	.info = &(const struct intel_display_device_info) {
> @@ -714,6 +752,11 @@ static const struct platform_desc bxt_desc = {
>  
>  		.__runtime_defaults.ip.ver = 9,
>  	},
> +	STEP_INFO(bxt_steppings),
> +};
> +
> +static const enum intel_step glk_steppings[] = {
> +	[3] = STEP_B0,
>  };
>  
>  static const struct platform_desc glk_desc = {
> @@ -725,6 +768,7 @@ static const struct platform_desc glk_desc = {
>  
>  		.__runtime_defaults.ip.ver = 10,
>  	},
> +	STEP_INFO(glk_steppings),
>  };
>  
>  #define ICL_DISPLAY \
> @@ -773,6 +817,10 @@ static const u16 icl_port_f_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step icl_steppings[] = {
> +	[7] = STEP_D0,
> +};
> +
>  static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> @@ -784,6 +832,7 @@ static const struct platform_desc icl_desc = {
>  
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>  	},
> +	STEP_INFO(icl_steppings),
>  };
>  
>  static const struct intel_display_device_info jsl_ehl_display = {
> @@ -792,14 +841,21 @@ static const struct intel_display_device_info jsl_ehl_display = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
>  };
>  
> +static const enum intel_step jsl_ehl_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
> +};
> +
>  static const struct platform_desc jsl_desc = {
>  	PLATFORM(JASPERLAKE),
>  	.info = &jsl_ehl_display,
> +	STEP_INFO(jsl_ehl_steppings),
>  };
>  
>  static const struct platform_desc ehl_desc = {
>  	PLATFORM(ELKHARTLAKE),
>  	.info = &jsl_ehl_display,
> +	STEP_INFO(jsl_ehl_steppings),
>  };
>  
>  #define XE_D_DISPLAY \
> @@ -850,10 +906,23 @@ static const u16 tgl_uy_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step tgl_steppings[] = {
> +	[0] = STEP_B0,
> +	[1] = STEP_D0,
> +};
> +
> +static const enum intel_step tgl_uy_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_C0,
> +	[2] = STEP_C0,
> +	[3] = STEP_D0,
> +};
> +
>  static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
> +		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
> +		  STEP_INFO(tgl_uy_steppings) },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -866,6 +935,12 @@ static const struct platform_desc tgl_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
>  	},
> +	STEP_INFO(tgl_steppings),
> +};
> +
> +static const enum intel_step dg1_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
>  };
>  
>  static const struct platform_desc dg1_desc = {
> @@ -876,6 +951,13 @@ static const struct platform_desc dg1_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
>  	},
> +	STEP_INFO(dg1_steppings),
> +};
> +
> +static const enum intel_step rkl_steppings[] = {
> +	[0] = STEP_A0,
> +	[1] = STEP_B0,
> +	[4] = STEP_C0,
>  };
>  
>  static const struct platform_desc rkl_desc = {
> @@ -892,6 +974,7 @@ static const struct platform_desc rkl_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
>  	},
> +	STEP_INFO(rkl_steppings),
>  };
>  
>  static const u16 adls_rpls_ids[] = {
> @@ -899,10 +982,24 @@ static const u16 adls_rpls_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step adl_s_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x1] = STEP_A2,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_B0,
> +	[0xC] = STEP_C0,
> +};
> +
> +static const enum intel_step adl_s_rpl_s_steppings[] = {
> +	[0x4] = STEP_D0,
> +	[0xC] = STEP_C0,
> +};
> +
>  static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids,
> +		  STEP_INFO(adl_s_rpl_s_steppings) },
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -913,6 +1010,7 @@ static const struct platform_desc adl_s_desc = {
>  		.__runtime_defaults.port_mask = BIT(PORT_A) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  	},
> +	STEP_INFO(adl_s_steppings),
>  };
>  
>  #define XE_LPD_FEATURES \
> @@ -986,15 +1084,34 @@ static const u16 adlp_rplp_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step adl_p_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_C0,
> +	[0xC] = STEP_D0,
> +};
> +
> +static const enum intel_step adl_p_adl_n_steppings[] = {
> +	[0x0] = STEP_D0,
> +};
> +
> +static const enum intel_step adl_p_rpl_pu_steppings[] = {
> +	[0x4] = STEP_E0,
> +};
> +
>  static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids,
> +		  STEP_INFO(adl_p_adl_n_steppings) },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids,
> +		  STEP_INFO(adl_p_rpl_pu_steppings) },
> +		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids,
> +		  STEP_INFO(adl_p_rpl_pu_steppings) },
>  		{},
>  	},
>  	.info = &xe_lpd_display,
> +	STEP_INFO(adl_p_steppings),
>  };
>  
>  static const struct intel_display_device_info xe_hpd_display = {
> @@ -1023,12 +1140,33 @@ static const u16 dg2_g12_ids[] = {
>  	0
>  };
>  
> +static const enum intel_step dg2_g10_steppings[] = {
> +	[0x0] = STEP_A0,
> +	[0x1] = STEP_A0,
> +	[0x4] = STEP_B0,
> +	[0x8] = STEP_C0,
> +};
> +
> +static const enum intel_step dg2_g11_steppings[] = {
> +	[0x0] = STEP_B0,
> +	[0x4] = STEP_C0,
> +	[0x5] = STEP_C0,
> +};
> +
> +static const enum intel_step dg2_g12_steppings[] = {
> +	[0x0] = STEP_C0,
> +	[0x1] = STEP_C0,
> +};
> +
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
> -		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
> -		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
> +		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
> +		  STEP_INFO(dg2_g10_steppings) },
> +		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
> +		  STEP_INFO(dg2_g11_steppings) },
> +		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
> +		  STEP_INFO(dg2_g12_steppings) },
>  		{},
>  	},
>  	.info = &xe_hpd_display,
> @@ -1261,13 +1399,66 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	return NULL;
>  }
>  
> +static enum intel_step get_pre_gmdid_step(struct intel_display *display,
> +					  const struct stepping_desc *main,
> +					  const struct stepping_desc *sub)
> +{
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> +	const enum intel_step *map = main->map;
> +	int size = main->size;
> +	int revision = pdev->revision;
> +	enum intel_step step;
> +
> +	/* subplatform stepping info trumps main platform info */
> +	if (sub->map && sub->size) {
> +		map = sub->map;
> +		size = sub->size;
> +	}
> +
> +	/* not all platforms define steppings, and it's fine */
> +	if (!map || !size)
> +		return STEP_NONE;
> +
> +	if (revision < size && map[revision] != STEP_NONE) {
> +		step = map[revision];
> +	} else {
> +		drm_warn(display->drm, "Unknown revision 0x%02x\n", revision);
> +
> +		/*
> +		 * If we hit a gap in the revision to step map, use the information
> +		 * for the next revision.
> +		 *
> +		 * This may be wrong in all sorts of ways, especially if the
> +		 * steppings in the array are not monotonically increasing, but
> +		 * it's better than defaulting to 0.
> +		 */
> +		while (revision < size && map[revision] == STEP_NONE)
> +			revision++;
> +
> +		if (revision < size) {
> +			drm_dbg_kms(display->drm, "Using display stepping for revision 0x%02x\n",
> +				    revision);
> +			step = map[revision];
> +		} else {
> +			drm_dbg_kms(display->drm, "Using future display stepping\n");
> +			step = STEP_FUTURE;
> +		}
> +	}
> +
> +	drm_WARN_ON(display->drm, step == STEP_NONE);
> +
> +	return step;
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
>  	const struct platform_desc *desc;
>  	const struct subplatform_desc *subdesc;
> +	enum intel_step step;
>  
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
> @@ -1307,13 +1498,24 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>  	}
>  
> -	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> +	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
>  		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
> +		step = STEP_A0 + ip_ver.step;
> +		if (step > STEP_FUTURE) {
> +			drm_dbg_kms(display->drm, "Using future display stepping\n");
> +			step = STEP_FUTURE;
> +		}
> +	} else {
> +		step = get_pre_gmdid_step(display, &desc->step_info, &subdesc->step_info);

Can't subdesc still be NULL here?  And if we change this to something
like "subdesc ? &subdesc->step_info : NULL" then we'll also need a
nullcheck inside get_pre_gmdid_step as well to prevent a npd.


Matt

> +	}
> +
> +	DISPLAY_RUNTIME_INFO(i915)->step = step;
>  
> -	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u\n",
> +	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u stepping %s\n",
>  		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
>  		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
> -		 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
> +		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
> +		 step != STEP_NONE ? intel_step_name(step) : "N/A");
>  
>  	return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 8bd342658291..1c75cbd68dea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -201,8 +201,9 @@ struct intel_display_runtime_info {
>  	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
> -		u16 step;
> +		u16 step; /* hardware */
>  	} ip;
> +	int step; /* symbolic */
>  
>  	u8 pipe_mask;
>  	u8 cpu_transcoder_mask;
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> index ee3f45b668b9..2cf13a572ab0 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> @@ -8,6 +8,7 @@
>  
>  #include "xe_step.h"
>  
> +#define intel_step xe_step
>  #define intel_step_name xe_step_name
>  
>  #endif /* __INTEL_STEP_H__ */
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
