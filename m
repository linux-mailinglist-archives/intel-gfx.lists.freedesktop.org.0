Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56732C2D7E8
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180EC10E204;
	Mon,  3 Nov 2025 17:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TIMrs4Y8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B4110E204;
 Mon,  3 Nov 2025 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191425; x=1793727425;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lAgcebFga5PuJbV00pX2uDt+jjHbncHb6o3NJ7Ft+fQ=;
 b=TIMrs4Y8qcpX3YWQeopUzeikk9yNAuEGDTL/6/VvMMZLoabWY9QnTZUL
 scSHrhByDqh1m9wK7MrMoXqQAK5geyAbZ2bwn74zAezHuGzA4zrO7IjAZ
 FRIVcPCr7oDmyTKoebhSWRYwoNN1cfDXaM6l1WHhIeeDyHJaRutFDhuMm
 w4wcetI6GImUCzFgsXQpJtsSNd7QA6Cl7cP9LYsAzdfzQFLdu3Nz7u0O0
 n+TwRNhjtKlFN0o/HdxjfjirtbpPmTPB5nRdIhC16hCD/IlZPfBK01xMV
 uQ/zGxrvTz7UDQjFyBosjuBfQA+0UT7zYfrWvTFQ6uJTbKPcrEZa9JQi+ Q==;
X-CSE-ConnectionGUID: /1lo5Zg2T5yIz9oPsxzx9Q==
X-CSE-MsgGUID: SL3O1eMgSgOiOs83xIZ7tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="74876596"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="74876596"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:37:03 -0800
X-CSE-ConnectionGUID: DyxqiU7rSa+hpyIrfFWbiA==
X-CSE-MsgGUID: bSw/CAm2RX+RwNgfe1WG8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186611692"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:37:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:37:02 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:37:02 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:37:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZbxJnsbjbil820x/zWE84rsJ+WitfQp5eZfKt9304Su9vSRJbF6lGKKyLP7KRu5fMXlBLwy7YVO3+4kxKpPB4Kc+mGO6E893JUWvdt2+GAqVO3RZhuvJkB9qOHaxC5Ieh0fGq6ewJue1ApJ5pvYIkwRUUNOlF5f91pdBWFptknd8teXBToJakWvoN6eET51Zgb6fdttU3kC1px1raLGJsqZBE4XZzYxMLKCNlP9EbScxLqkbhAb8O1JpwpMPcE6CvjA8yTsOQVt8qry95/6uFEAHB4QT6wj3u6LgQkUwmfqWC7ZNdK5e3G3UspJmgAaI5PrqS8/AennKUi+0V8tgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R1KN4QAlGBtlEmCkAthrs3BnBykz36BVwZ+B2hbVBuE=;
 b=rqF6uAIR9Np+G5WFhGSCJcwfYjxFfrFf/KQJmHHmz6dQe3YlO/moH3wkr9rQKzWrWecWAlfgoZgzkWebB6XIfW2MdSDfKErYmZKFaIlE6nBLpVM+R/FPB9puWeabrUtBzRDk6B/5NbSmdQDb6RpKo/JQX25re1wG7z2PgPjEQxlipkTgzgq1UTve2mhSqgO6d84qNKCuVjWPxiTKCyPrF0VrE6lFx2kssIVefmIiwnEEFiPgQbKS+DOU3rv/XJ7ofVDejZ2oVVynveD/MKhSyz8Q0iY/BdxipiPx5ArcHlijS/QgnfXpcuzzSgqVdZ2R30sPAPotH3Zh1QgOUn6Xjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 17:37:00 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:37:00 +0000
Date: Mon, 3 Nov 2025 09:36:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 15/29] drm/i915/dram: Add field ecc_impacting_de_bw
Message-ID: <20251103173657.GC2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-15-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-15-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5027:EE_
X-MS-Office365-Filtering-Correlation-Id: a7753dcf-b99a-4292-6fc5-08de1aff9804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VFO0eu3M7RPnAFgl2sO7M1mjnQwXc3qJxP74X8xXn1mpDiADOHao+wOFXgD+?=
 =?us-ascii?Q?5VMzFER1rLpIleslirogjbXQqv+nXBScNrH/DEDlon8QhgwQHFHUjf6Aa66a?=
 =?us-ascii?Q?2YMRawusENRo75nOAsgMccYd+EumS/KT6bfNfhBFNBmbhq1FtyKR1CmivG1U?=
 =?us-ascii?Q?m0BjM7MDrbfM4KwE6lEt8DInQfnbkDWQuJ76nHRqmpwJRH5wDY97YqEyTGBy?=
 =?us-ascii?Q?DIrUA9Mm2b83kF1vYIeCJC+/iMpG2ugF1EOxnLgck6fGgL9FXITjF0syFfiv?=
 =?us-ascii?Q?izLSqQw/d/rP3Kc6Edb+aJCJoxtz1DdeCuIJaekv/cVIk43s2MaNNk2mnhSq?=
 =?us-ascii?Q?pOkC5ReIpMtNehtUEfNlO7RvbYC/GbgQmT5DW6r5wk+MWDg4MVto+Rc6vBVc?=
 =?us-ascii?Q?WNatMU3J7NvcUcNYcFOo2RvOJRWdHwK6zcOstdshwEaSAbv5cNqFcxKj3ew5?=
 =?us-ascii?Q?nxF24vAb/MeZtbM48n1mTlHpV91wphMTbPXVQbg4YghAyU4ty/Ju79OhsR2F?=
 =?us-ascii?Q?ASJqV2v0RVqEs23zvIgh+YxbLIzTlTYTSBX6xclcDzQ9tRSDVRCitaaHutTg?=
 =?us-ascii?Q?D9vX2X2nkJgOvd705KrTnwpEQ5PXdhd1Fw+ghc2ka2GdE1Re1IPxaSSYk4xy?=
 =?us-ascii?Q?prsxe67pru1Osnk0zYc33pl+J7Ldxb2v9Q4eXN0YVWbz/iYIIP1CHzYRSL0Y?=
 =?us-ascii?Q?BB6ii+r8m614jl1ryrnEnXAE+VZpiAdA5nAuPl+WdiT7awFvhJPI4hdNGm8P?=
 =?us-ascii?Q?YrBRU91L7VuBzUOZ1lCNK/T/zysoRSKs0jkMi9xCNSY5hxFf8JlcjYKvQaiV?=
 =?us-ascii?Q?ykGsjMz4oiEOYNc3VtmRpwW5yUPUOshYcycp3ghEVVKUZSWD4/aR3m0dNqhH?=
 =?us-ascii?Q?wWhsxFCR3AreZL1k9RRI22sw3WB+VWj55EC/DfD96RLhK+JFv091xTToYxa3?=
 =?us-ascii?Q?685YI4IV5m0g7k/cv66i3+q8TEB1AWzwG4Qn0OOhHWleVtmjNb0pV/HJFChb?=
 =?us-ascii?Q?rRyyb0avBJrGf1Boy+n8Fv3llKWJIgwf5xRAhsyR8KjF8smS7QsQ1DZLSPxp?=
 =?us-ascii?Q?/NhvWNAM444KUY7MG5FmJxPYX2MNBIoetDVznC+3yL0taBqwew/mfLAtNGcl?=
 =?us-ascii?Q?WoDf/jPYDKO4oyfUAajuBTghJjIBAFVKFO4UhvEBPD3vw3gciK7SCpQJ5+3m?=
 =?us-ascii?Q?bgxjH/wQ+8gdNYv/URyAl+Yuc+KPhsfcnkxNYVGMYqj+p2OeFSZwhqb6r7Ug?=
 =?us-ascii?Q?dq1IdGEaADLv8irN/T93O3SVL3zVdbi+IpHlXxy8+rMlE0KCpgnGdBKY5f1v?=
 =?us-ascii?Q?xc8qWPXolPOVYaNV1D5r1pTDa6qXv2grqHhPow0T1pegyjL37PcFQviejybA?=
 =?us-ascii?Q?H0+qR63UdBuL9ZYpL2jOpl6egbBskiaquffSw5dho8FOv+fHInxSyy6twORr?=
 =?us-ascii?Q?Y9mzXSEL655ci204/OPl86Tzy4cBfIDE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gRfsNFuvNZViv1nABbUyKfXCHOSJjbYIUj2HTtIXHXB4SRHbCemPTuFyMxSe?=
 =?us-ascii?Q?+5Bq4Hc19HYjBHxiF7Mh5PnWhmnfmN0pI+mu0Rs2N6o96/DqGvJYST2X1cbv?=
 =?us-ascii?Q?2Wu65O/OQ5FNbUoR8F4R21ArPh9B+/1Chr6ANrvbzI2guIARs6c0+QZ8Z4QW?=
 =?us-ascii?Q?ktlfkRL2oLQFcvwENn8qq1htpxicaUHb8qBIYhYlgO4Glq5bA9Md+kj3Oj0+?=
 =?us-ascii?Q?1cjI2dW/ix1XhRj4FOzmZsyjSRBupe79THhVgA2CLYqAL6bxxrxMyhHcLRsZ?=
 =?us-ascii?Q?wMyAwfSPUJxySncN5uN9PFp0Ka3xdSW/NiA7o95RGC4+L1QkiNAZjrNHKkho?=
 =?us-ascii?Q?pc3T/BH4JVQEZTVs0VesTldxIEPeyHPAvod6yaqAOZOCoZ8V41i2o873XatL?=
 =?us-ascii?Q?9pI6jdWkmOxua4s+DZmVG1n31tQOsuQpRt0y8K6+WIyrerjRIV1XqCU0EfUU?=
 =?us-ascii?Q?yEFnQ83QQjqTIAnGfdYb0VWgA4WF3A0g1Vh1bI/XPaYOLGGtwbQq0Wg9iMMl?=
 =?us-ascii?Q?9vx2pvcsLok5IxtTVTF3TuOxD6E1YsLyo6fjsn6/ZKOGp/cQuPrQY4IWkAon?=
 =?us-ascii?Q?q4ISwLSfON/AwnSg9w9PdiZaTsBKeoKJ68OR5ahDsIBP+OyBmPBapdEQD484?=
 =?us-ascii?Q?saBv5VnQw4D3OW3RFKYL+KDqE9yG4cFzzny5/oNtXtHwcoQHlKEOAfurZdo/?=
 =?us-ascii?Q?ddBay0VQE+6pN8R2qKUNVDoXKFQjV6h81ph5zqz/kjwtSwDoUCdb1/JFMxnT?=
 =?us-ascii?Q?ZSz1HrwAiUJKQ81H4ONLcY1zMfffjyLYDOEP0OBBoA42xZMvmT3fNs8/qcOe?=
 =?us-ascii?Q?NxK1DMVfExNzF+0NMwF4ZocVdC9T+o3CXGNxINcYBW0HwzK0sKANWfUXJ78W?=
 =?us-ascii?Q?oB6Ul+iZ4s2SHo1BW1i6tlkjrk6361fONfEhYNyOwpjqAy+g7LboExhd4H7y?=
 =?us-ascii?Q?ySXGE7Swqh2U+Qm/XUc7Ubpv+B+IJJkEKgMdss/exyXEaio3cxBf5ICxrMGq?=
 =?us-ascii?Q?FyA/CA9zuHpl37SIJX2ih/wioj/K6sFhfOZdn2oR6IjlwyEyyVy1FnCuUWGA?=
 =?us-ascii?Q?W5aQptOfQ7ZWHUGqXV70XXOvIMW+M93U2/YAC8J0nfhoregCAorIwQHSXMrn?=
 =?us-ascii?Q?pbWXhY2OvCaD/9szypEoIr4t2jPvPlIyIrkuA7sWNYofHFI0cxAgC4vRnP4C?=
 =?us-ascii?Q?+HXC0QyJjuKxsDP2ftxjnhstLhSWcVV+O6sYI+b2D4VOinnuPbeCbZ3ByqA6?=
 =?us-ascii?Q?BOXHKuUx1LQujGYH4hZpykI10+qJGLz7w5Hg9xEoq39qExMaqe+mkOs3xsnA?=
 =?us-ascii?Q?cICCiUu6jxU2X00YF7+zyYLhMTk4PBvY4Pa35YFTKcHcnXvXd1aG10x9/Ue2?=
 =?us-ascii?Q?sKPDD/oDlmSqePcGya8Oel8IU/EOQozhloIqX9vdBfkCDwgXY1SrjK5xBgLs?=
 =?us-ascii?Q?SD5YAOSQFuV1geALlvrUbvjNfWCb1wjk2x8wLi3JVPg/vL2ero3al28ZZxdS?=
 =?us-ascii?Q?rN8ngUfU3QRJy16+h2UL7G3Mvce03APPpAsjtfkWZZXDvhDbpHhQnjEWbTFV?=
 =?us-ascii?Q?REENxsgTaV+dK4PYtC8gTn0n4dLkF/czjrNoUG/c0+SMJ6cLnBmTq1io9q70?=
 =?us-ascii?Q?PQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7753dcf-b99a-4292-6fc5-08de1aff9804
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:37:00.5026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wvgds/o0w8SZgWlq3kSS9dVvJZQwADEo1hqDvesLRFKBjZ3uQkSlGNcsoAl5oewmk6Qc8umBQooV/w2Ur2rWkxwmR/emKxsOpYyTQr+ZAtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
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

On Mon, Nov 03, 2025 at 02:18:06PM -0300, Gustavo Sousa wrote:
> Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
> that indicates whether the memory has enabled ECC that limits display
> bandwidth.  Add the field ecc_impacting_de_bw to struct dram_info to
> contain that information and set it appropriately when probing for
> memory info.
> 
> Currently there are no instructions in Bspec on how to handle that case,
> so let's throw a warning if we ever find such a scenario.
> 
> v2:
>   - s/ecc_impacting_de/ecc_impacting_de_bw/ to be more specific. (Matt
>     Atwood)
>   - Add warning if ecc_impacting_de_bw is true, since we currently do
>     not have instructions on how to handle it. (Matt Roper)
> v3:
>   - Check on ecc_impacting_de_bw for the warning only for Xe3p_LPD and
>     beyond.
>   - Change warning macro from drm_WARN_ON_ONCE() to drm_WARN_ON().
> 
> Bspec: 69131
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 9 +++++++++
>  drivers/gpu/drm/i915/i915_reg.h         | 1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
>  drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
>  4 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 919b25a5fbac..1f6461be50ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -805,6 +805,15 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	/*
> +	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
> +	 * enabled that would impact display bandwidth.  However, so far there
> +	 * are no instructions in Bspec on how to handle that case.  Let's
> +	 * complain if we ever find such a scenario.
> +	 */
> +	if (DISPLAY_VER(display) >= 35)
> +		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
> +
>  	if (DISPLAY_VER(display) >= 30) {
>  		if (DISPLAY_VERx100(display) == 3002)
>  			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 354ef75ef6a5..5bf3b4ab2baa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1233,6 +1233,7 @@
>  #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
>  
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> +#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
>  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
>  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 2e16346a6cc0..3e588762709a 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -686,6 +686,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
>  
>  static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
>  {
> +	struct intel_display *display = i915->display;
>  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>  
>  	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
> @@ -724,6 +725,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
>  	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
>  	/* PSF GV points not supported in D14+ */
>  
> +	if (DISPLAY_VER(display) >= 35)
> +		dram_info->ecc_impacting_de_bw = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);

I don't think we really need REG_FIELD_GET() when checking a single bit
to set a bool.  A simple '&' would work as well.  But it doesn't really
hurt anything either so,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> index 03a973f1c941..8475ee379daa 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -30,6 +30,7 @@ struct dram_info {
>  	u8 num_channels;
>  	u8 num_qgv_points;
>  	u8 num_psf_gv_points;
> +	bool ecc_impacting_de_bw; /* Only valid from Xe3p_LPD onward. */
>  	bool symmetric_memory;
>  	bool has_16gb_dimms;
>  };
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
