Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92378AB2DE
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 18:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD6710F5ED;
	Fri, 19 Apr 2024 16:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCY5ydb+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D9B10E2CB;
 Fri, 19 Apr 2024 16:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713542907; x=1745078907;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zT0n04qp4WxdQVlyYHikTeSL0YbLgUg8TvrgYiVOs80=;
 b=hCY5ydb+yyuFIBBjc2edIxkN+PWcjomwQXvMOLdLW1q8NOevFqCDR39c
 tBZtESLNHP/kTRFGxRQg/v+uN7dlqVxioMe0B85ljF1d9qTVVSMQdvpRH
 2D5sEmeJ7ymyiApgaW2E6Eo3iU33FZjQvhYwPNzp5OgswEh3NFmFmXuMk
 OazB4QekShu94Ou2ZqS71pRNqL0MLobhZCQ+v/R9sE3wUC0g8HwfMCSit
 llVjRqLNs+gmk776vQHokPfsTGrXqRfOPwcz6j0k7zIG0GgeU7GKra7Q1
 bbR9Mx1+5hr2ASj+kEdm9iCjFKlSDQO+l8cmK6z0JRWXexZ+X4rG8eS2s A==;
X-CSE-ConnectionGUID: fzjRy4nnQdqzhLSa1RMe3Q==
X-CSE-MsgGUID: KwzY7pEvTVKpz0Am1lLIeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="12988021"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="12988021"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 09:08:27 -0700
X-CSE-ConnectionGUID: jZcvYzlSSi+jSzfqhCg9lA==
X-CSE-MsgGUID: Ky0NgfxPTdqadwB1cY0EEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23987243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 09:08:27 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 09:08:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 09:08:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 09:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTJhgFHHy4ZgrBvg6FL6RHbLQNZG2zzIS7VAUV+vTrA3LZ5BXPjFI50cpWuU0VkkDDcEWW716mfclljbv/C+vCJtu1uagxCUb0NU18ykRLXIOjFuyu14uy7p6DWmKj/IFJfNIACYj6MLFTrtSNzLBEEujBaCgHli/G2qGCdtFqB+lca9p0AnfgG1C2kH7mfz3nepBLILznc3fG49hbBDpBggRh/MvaQrrJb8hDfNZY2kvm96lOy6aqHvZCeHQaomeOsKettyzyxwiba4XUOl8iwbqWbTweS5RuXibJVDGEmv9vBhPjFlt9Y7TXCPQyYFATlhUDfQssYAoD1npw1/uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=el23IBw7DgkEbiu9nHDYh2Z1xRIMbzFTNvjTkVLV4C0=;
 b=O0UOw4xBhntdJtFCX28jtoq99Hu/DdelsgHFGqMOocjPsRoi1NqWcX23UWlajEKhpRSvRyV1V9AYz8TUQQ5N81JRKm6ts+5FL6vUoGzi5E+JpYEsJFSP0Vp864PGGp3ouIw5KBaxE94rApkld+/d1SGoXRNEAVeYEsUomuq0U1uob64P7+7WiADJ06J5gXRfJt5mmnugxw8v5ZFyFdumU7MD926q+7XEUhX76rmgVkUSZy5raAE+YVYmr0B5FTnH6IrgeICoKNrCfCki+2y1URbopq33tshYPrLZz1lB5+9KQZul3gcF5EmIXVZVn8+EiuDb3pjhWN302iN/5ls5xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA3PR11MB7609.namprd11.prod.outlook.com (2603:10b6:806:319::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Fri, 19 Apr
 2024 16:08:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7519.010; Fri, 19 Apr 2024
 16:08:24 +0000
Date: Fri, 19 Apr 2024 11:08:22 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 0/5] drm/i915/dmc: firmware path handling changes
Message-ID: <xa6zj5rxk725th4em7knyei2745fpps5bplqsdft7ua3one7oo@ufm4kw24rj3i>
References: <cover.1713519628.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1713519628.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0036.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::49) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA3PR11MB7609:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e3ab0a9-9575-4412-1752-08dc608af0d6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oQCMaeopYy3YvnrkwNyZ6+XTcIo3mecBbmKUO2F1CIKTke0iB/DgI6rO4y0o?=
 =?us-ascii?Q?LySUMor0K3JltdQCdlB7pXQ4sn7PJEm7KlQ4+YDNyXvuh9PlR9I3Uzbv3Qvx?=
 =?us-ascii?Q?/FGRO301xFKeQjiFgaWsRaDfDt/Zj8GFeD6fEx9MN+iWb75Hl0iY+XLXNR6y?=
 =?us-ascii?Q?DfshWrVcW6a8KDoxYvuDNDZ7lSWpGUZs524DuM/OWlOP9V50rN/EJgCsRkyJ?=
 =?us-ascii?Q?5TReXFJyBxpEmfQoEPkK6/NqgupVrqKstpXhENxQ7ak9KKjcV1RSm9ZtV4UZ?=
 =?us-ascii?Q?VTgwy/+n76RThzdI/M9hlnbDraTovz+DA2+iWOW3LfBJeycpVhG3UJdicbSf?=
 =?us-ascii?Q?eLQkYEX0RcBNrCEj+Zatz2aQ6tlItMy6HIN9V0h8hB9AKfEBY9ytL+GGPtoP?=
 =?us-ascii?Q?0LvMWtBFvNqN+uxs5uFdf1QUekLbJpRzodL7hC5LHpProRs1Sgj/U8lCOcKq?=
 =?us-ascii?Q?5XB9yVHzeUvgPCDyfFeiIg1oJrnWWhrjps/T2xS3oOpHHS49vPdbDMpD1w0b?=
 =?us-ascii?Q?FhNjEw0b8aPPz2Vw7hSRAxIWKSm4rmCX7+OnEfCMj6deLp5ZgPETZEZhYC51?=
 =?us-ascii?Q?bUEAY3aheIBtGkfdYnfBW6lenVtZ1t+PNrNeYwqZxLbBCCxwTuyw34KVbRYD?=
 =?us-ascii?Q?8iheRX3y2QO77Xov5m/sUgxsUjbUpRomDBFwH6kHrsOQI/WZc/PRO8ukSJvw?=
 =?us-ascii?Q?3KPxzo1rLII5mxr2TwGBltD1sl91oQhXDWFVUSy/rllmPhfjBoxJ+jVWlAY1?=
 =?us-ascii?Q?qpKjtIDA8SXEwrpjs80R893mDXHJvyO6T6rnFfpBm+qY+SLRHpFE99OFZAjr?=
 =?us-ascii?Q?ABvZ6IcrwcPjfPT/Hvu7vvfE393mRQ0I/JEUcpiJneuYvZ72lcixJs9SKhdE?=
 =?us-ascii?Q?t2XTgf6MinDU0195XT6EJ63oO9unhLF52qHpeFIv1Z83mcD4GvBKjwgVF6w/?=
 =?us-ascii?Q?o8xQmqzIc+PMVd17jqVzkKF7oyC1RhBivCGVeY8CqZGupIQSVkYr1d4oSw8s?=
 =?us-ascii?Q?dG6jqzer2MgH1gZmsoA74PkRZngExiPUXxa3F3X3SS/hC50A0E/7c8Adswdv?=
 =?us-ascii?Q?USVJmpv5TfnSiPBUPeLIfGpQWnA8UNml9pZRPB23H8fg4hto1AHBKW60G8HD?=
 =?us-ascii?Q?WDv6Q9ww+V+xXx5MgkwZxXC7Xx5zx7sdLB88eKm59I4S2vEO2dxA3+niRpp5?=
 =?us-ascii?Q?00nMNf8NqtG5Wa4s1Vsu/0E0vOW88yukzo9ut/LyJ8YkmZ22cooo2Uiiacxb?=
 =?us-ascii?Q?WI3fzZwEIrH6y6zPMqTrQcOwr9SoecaEzExc3bPTdQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sDgirEtRFOeDX9cdNfXvu9gxVOt0vzLLhMhHMOQeHBSE6Pf00+Y/2rtAX4ZL?=
 =?us-ascii?Q?R1IppwbikTiE/SgnFEhOcl8uf0qdkeCKSRjSoVyt8iQza+3MizzyMf/9ReTH?=
 =?us-ascii?Q?+nLj4pswMMAlHttyyNq3SkXOsP5SBONKq9TxHsqdmR83/hMlTIs0Nf1eKoz5?=
 =?us-ascii?Q?VNU9ojDavBTOjbTBgIW/F0CICy9VGvOsrEoAtjHGOQ0dsEZ9ARy9clggi1Dp?=
 =?us-ascii?Q?nIzBkgjDgchwPQJiQ0jkJOw3IGQDkk46ty5P2f0LsWN5jpN/VI367p781d2p?=
 =?us-ascii?Q?bkfg1ffcslZUvr3PxCjMZoDEpu2aBR+nd3sfCDMev5cuSNu+rdQMO4jgxg0K?=
 =?us-ascii?Q?3/fxtAkmLv1RsMYYASky3dgFCSA7U8sVbzpjkgxDIOLc+lCa8+ZtnaN7ZWYA?=
 =?us-ascii?Q?BPKkJjH4tElRT6k8sdfHoWVdTe7Y27OjklR/wTgaML94HVPIBDoHlXw94LbA?=
 =?us-ascii?Q?rJLSRNASyxJMqJNwtZzosm5cP+476bFyhONPle3hdrOq1eCuOdtN3NYRbJds?=
 =?us-ascii?Q?QJMvVR/YfzUnuYYv13FO0slnQmZyYUkWSFL9tSQpEDCvbrGDfSZEgO19ySbl?=
 =?us-ascii?Q?241vTuV7ET3IAu+s/Hwrgos8si2mFh/t4ThPCqqKU93aBGIFJR4QdA1nqcF8?=
 =?us-ascii?Q?RvILi3B3FSG38EcPzZDDeY3UawM0tJSkyFHk8ttLTdpH3D2jTGRbE0nrjcPL?=
 =?us-ascii?Q?IdPidnq9hFT0VL25+PT+MjVWPNZNn+TgB0cCoRzL/uCQYTo4tSK2Vd7ypkX5?=
 =?us-ascii?Q?LaPjXuyaiFdJQddvkPWEBa9FV9gXmkYDZXGavprTUKZx9bSXfy/B3uCVdLfJ?=
 =?us-ascii?Q?iz4++dWcJhI/TjrwdqlCxgoLbEAoBL0KNsa+jJRql3AJc19AWZ2qMzbf+7Ah?=
 =?us-ascii?Q?K1a7B+sDSuSH9Pb+YmjSdv9istY7ngVfx8OvHTmTG5UcEUlNk7DJ3sTrH6Vi?=
 =?us-ascii?Q?8XUi5gaLLdLQNXJBONP7FnOMQiDoFbaZH/O/KOXm6lRPl66AnM0yNGurA1Cl?=
 =?us-ascii?Q?gJyXJ0egfvK5lAZP6rIxAP1yhHofafpnlpb12VSxffV5PwhKmusealmFsRJJ?=
 =?us-ascii?Q?WiAy3+J2ESVazIydzuAAeMxFePr9ZLBFfG5bzdkkEvV/3ANezHaIC4lYuTfy?=
 =?us-ascii?Q?bWYcwZYQzcKhvf0Rot2DMHVeaq0YzJRZ6sfkRHIeDRyls2emrLgDtfQRatao?=
 =?us-ascii?Q?dSk/DjcebseLWjXmX7rVcyfLylErXfSkcsRh/9LmsY4OPnB87ibNSVp3K7iN?=
 =?us-ascii?Q?zzw53RGKo2fldPQd2NmkJ5M7wXsQw1G1G5Q26GZGsOi4+QWbWxFhrbj9y1D/?=
 =?us-ascii?Q?nhBnOB/4JiNHcetUCOg5Wwhv+FlFRlm4AaINBkWjJBMJImXg6IcT7g37BEpv?=
 =?us-ascii?Q?YLuDvnQlL25IE6IN4mYB9QlUVQ5aES5VrfET3udp/J29MrM7ndi3Ny0Jt1Ii?=
 =?us-ascii?Q?nY8R4gqg5wCjur5Y7K0XiysoPZW+eBqqGEVrhpIMTEcfVq1D7/e4LbBm/a4f?=
 =?us-ascii?Q?FttfBS5b0tbFq5/ZN2YP5GljP22LvnYRd1COOyFKpypbe6DDxaPYun3QP+/9?=
 =?us-ascii?Q?6fa0SQbfZcLi2TK3QZJ2QdIy4NYWGXwP8k17nMZCbsybfYXmTOQfeQszrCSC?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e3ab0a9-9575-4412-1752-08dc608af0d6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2024 16:08:24.3872 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /leSJU/8LYyfOs9ov5klx/Q08lJWdHCMMNOHfT2VfdJnUmPmj/Zl59hG4mJMKjjrcJ+1wUnIKGkPvzTBqhcMgAPETr7LhZ8kl5926h84yvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7609
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

On Fri, Apr 19, 2024 at 12:41:53PM GMT, Jani Nikula wrote:
>v2 of https://lore.kernel.org/r/cover.1713450693.git.jani.nikula@intel.com
>
>Jani Nikula (5):
>  drm/i915/dmc: handle request_firmware() errors separately
>  drm/i915/dmc: improve firmware parse failure propagation
>  drm/i915/dmc: split out per-platform firmware path selection
>  drm/i915/dmc: change how to disable DMC firmware using module param
>  drm/i915/display: move dmc_firmware_path to display params
>
> .../drm/i915/display/intel_display_params.c   |   4 +
> .../drm/i915/display/intel_display_params.h   |   1 +
> drivers/gpu/drm/i915/display/intel_dmc.c      | 175 +++++++++++-------
> drivers/gpu/drm/i915/i915_params.c            |   3 -
> drivers/gpu/drm/i915/i915_params.h            |   1 -
> drivers/gpu/drm/xe/xe_device_types.h          |   3 -

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

> 6 files changed, 112 insertions(+), 75 deletions(-)
>
>-- 
>2.39.2
>
