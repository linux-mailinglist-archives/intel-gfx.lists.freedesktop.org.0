Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D1AAADFD8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 14:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7129310E7AC;
	Wed,  7 May 2025 12:55:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3udMnPH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A122E10E7AB;
 Wed,  7 May 2025 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746622530; x=1778158530;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DRIqR/Yl3jjs03t/ivVI15E3HH8vzEX2eC4JqE5rhZ0=;
 b=Y3udMnPHH466vOjYzSNWNFJLbw9ZD/7ekzeRPkNg1ArONX8ZCm1VuxPd
 YL/ghnxY52wGC+lAZGt1C3mxXdsSaaO6CTkMw9Y/ltPejOLmLWR+cI1x6
 zJatu7rUFomtKRlTXqgfdVm1KBulVU7oYeW+reRtfTIbwRcLvpv7HxGmT
 2AxnMs25odO0hXZnurb0mqODxAdrJVdGRtgbmC8D7g64g0OKe7Q7jOY3b
 ICEc3EjEYOJFAqeCOW6tF3vzg9SJe4lorplZbARFwNduZqNuX9Dj200IQ
 eFCtG1KjhT+W4vr5ltP773vQ4eQ/sH07WmBF2klG141NladgwkpXRxE44 g==;
X-CSE-ConnectionGUID: rcC6YbBqScK7C9D+NyS4jA==
X-CSE-MsgGUID: EWsCtJuiRhOCr2qtI1Nsxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="70855261"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="70855261"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:55:29 -0700
X-CSE-ConnectionGUID: TSTXn/pRQfKCXfKMPsehUg==
X-CSE-MsgGUID: odeyhVpOQQqtcxHG+qv33w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="140696242"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:55:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 05:55:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 05:55:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 05:55:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pV+XhRdHierusEh3UxcjGUTyidEiZOdFlbCtMvspA+xlCJAz+xlxckRp1yvgi/wWTz20TXovPuHkxcsmMtrnoUV5wUpszDeZjoySwjCPeQf7zd7KCrxcgnizMhamDNhhdxldipzAOaWPYkNlENNtEPuUmcDHQAUiIVBF3rTTwivUCREuO4igbIYm1vFGDZhFNS3XzlUYNvj68grZRhZEaBUakeQKGlSLo7lqrG/WrdIDt9FGQjcskUQF/PZMFxj8uKBKTGi1s5lwKOivlSS3ySocUTWl2V/KavLh59Yt/CQLDXywTrKpWXjsYXZARuUSLTKRwKDDJN9rh+wWZjGYuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+rrmCdv7Zgf9L6/w6gnPUaYhr+JvHaFue57LhAeT+TE=;
 b=kwpLvU7npQVZUqAtzQfs9J4A8gnWrRKe0pkTcA8fEzZIhw+tIH7yZNeyVv9m3wC7YL/FZS5Mg3lI/vr6Ek/piTZBAoMlf8t8kjHj4f5dAKGDvGFZeiPy6WRk9bN4YMUvsHr/ZR9HWs+6YVtkdhcLd6nT9gr+emtPDwRJKt1i5zjf1nWor3UeZoYbsgizbZ86V9ws+6ZXFVh4jhf0GbTfDn+4+ZrQZj1cT+7GRZyr3Mb3FHAbG6bxVa3+XJjcLcmi3X4N/FSsOXT1pEtqQ4UruN7rohp1ZMRVVqj7TVy7bxGpgcpr0g7uSbtyWjiwdLBaLjXQyuZX5/+w9vH7EFC+QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:135::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 7 May
 2025 12:54:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Wed, 7 May 2025
 12:54:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cover.1746610601.git.jani.nikula@intel.com>
References: <cover.1746610601.git.jani.nikula@intel.com>
Subject: Re: [PATCH 0/4] drm/{i915,
 xe}: convert i915->display and xe->display into pointers
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 7 May 2025 09:54:35 -0300
Message-ID: <174662247594.2473.11365997948191677836@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: BY5PR20CA0023.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::36) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: 9da42053-29de-4a67-3355-08dd8d6654cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nlh5MmoxVzBFTFpOZGRQbGM5UzByWmhrd0dwRjlMNWZaTEhNTU1icE5lT05J?=
 =?utf-8?B?RURsdytGcUowZEVEbFNtcG1pWTMwQitYQmJCelZnU3pWM1JTR0FzS2xnV2ln?=
 =?utf-8?B?ODJ1WFVPcDhUWjFsa2t2eXNsK1F4TFZBOW9uUXVHY0xKeUVqVXV0ZWlwNE9I?=
 =?utf-8?B?TWZiQVZEZ1J4aVpKeDVOMkYweUdLNlFFd3FlMVM5WVBqVEEzOTJtNTZ5Q2Mz?=
 =?utf-8?B?SG5ZdWtIRmpPclA3QU1JKzMyT3NhV0UzWXQwL0RHTmM3YjVpckxVRmQxaXZy?=
 =?utf-8?B?MlM2T1drWmFqL2JXMG5NMGh5WmhRbVpHdjJQTEJOM1M0S3dNNHVUM3AxUGZt?=
 =?utf-8?B?b2RoaTlRVTFvbmdIdk84bURiTVBaTGU0TTVkNHFtLzlzWjJGOGtQVFF5L0RE?=
 =?utf-8?B?VnFFY0h5Rm0wWnlUd1d6WjV2aElYUjBBcGVOYzF3cUxnWHV2Mlpvd2xsM1Mz?=
 =?utf-8?B?VmVUdVp6N0VuSjFkejBIRUdmdjZwSUZEQmpoZklRcjlEc0tIRU5kMFBmdkZH?=
 =?utf-8?B?VURTWTM5NTA4YzNCdHRUeUE4R3FOVDR1MkYwODB3dTVhd21ySHM0TmlFTUpU?=
 =?utf-8?B?SldjM1NPeHZidjNJZk9DdGFlalRHcnU1d1VlTkExTGxsR1I5WFZ3M2ltYWta?=
 =?utf-8?B?NmJGKzR5dnlCZTFlQ0gxRU95RUZTQnh3eVpvL3pCSFhpVFM2bUs4MVhYOXVz?=
 =?utf-8?B?ZC92RnZlRmVPVDluRE9yWDlWcDlxZEt5OW10UlYvR2ViM3hSc2cySFdwVFg1?=
 =?utf-8?B?ZTdiTzBVTm9DZnhHK0xOUlRNUGIwM1dzWGZvSVNLWDVMM1lKL1lxanVSTFNG?=
 =?utf-8?B?UmtJV2hBZUZzazdQdVgyMytuWFRBUi91SWtFdmhkdDd1RTMxNnBQMEVRMnpX?=
 =?utf-8?B?QlcvZVJrdnNoektlMmNOUmNjOGExckd2MUxrejdxU3ZXR0VWNExvOVdTU2NK?=
 =?utf-8?B?OFRWTTBkbGR6N1RXek1IWEtlRWJvQUdYR01tRlllM1FaTW1zR3RxSXZDTlFZ?=
 =?utf-8?B?T0JueDJzclRPV2ZMb09JQWpaK1NqN3Fhc0Zua2tFSlI0ZDhiOG5CT1lKZ2tn?=
 =?utf-8?B?ZGNCQmNPMUo1anhNL3FqQmoxTnVRQmtDU2pRNWdDeURLdjdRSDhqY1pDbXll?=
 =?utf-8?B?MUZGRWU4UWxiWkRjMUU3L3MyU0tRYkZjaU5COG1jYk9nNXNyUitDQko2dzNj?=
 =?utf-8?B?a3ZPdk4rbVB6Nmk4NitMQ0hreWtLeGNGS0NRNEUwMk8zcThWeW9JQy95RVFP?=
 =?utf-8?B?dHRCelRWS1QxK0Y1MkF0cWtLaTIySlY2VFR6eEhzVEdxb1VHcjVwTWx4eXZ6?=
 =?utf-8?B?SUYxTUZkUkNaRWorZUpLb0M2K1RxTnpxMHBnYnB2YzNFcE1pL2VPaEdQd3ZU?=
 =?utf-8?B?dkRRcU1OL2pkbVBtYnRESDJiVktjakJrdjRZanBaZUpoSUcxekZWaC90RWt0?=
 =?utf-8?B?VytrNzcyNm1STEVLM2UxVEtHSE1mbEo0dllCV3p1a2ZKekJnTDV3RnhzNEVj?=
 =?utf-8?B?aEsxNHcrait1L1dPTXBGMXVQVUNINkp1N1VlbmhvcUpRSlhwa0FVZ0pSTXhp?=
 =?utf-8?B?M0J0NmFSSDJDNkZJdVpTem1BTGlZWXVNdmVVdlpMUlUxdXhMMjIrR0pUOFhu?=
 =?utf-8?B?dngrckhGWnFMU01yeVpsV2Foak5TS1VHU0VOdGxYV1M4cHNPMllrd05Xa1JB?=
 =?utf-8?B?T3UwMlU5SHA4SkRrZmFHbGxJYWV4ZU5MclpaMUVtaXJTZWNWZkFYWFg3MWxK?=
 =?utf-8?B?WlV0ZlhNUlE4ZXgrdEVDY1pVdy9TdE16S2NZQjVpekJqaDlIc0xRSVphYktC?=
 =?utf-8?B?RktWMnFZR01pa2lGN1NacnVDK0RTbHo0MTgxU0xYVVZlMVU3R1FYV2hIbjRP?=
 =?utf-8?B?ZnY3LzI1Ykg2dVMxUWMxdEdDYWw0Y1d1UVI3N0IxemJQekJpYmVSSTFVQUJh?=
 =?utf-8?Q?Cyn6pFvTvrU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjJleHNpdUZSR0lacURKQmxuQlRtU05OT2pqb3ZQWHVUcm1ibmM2UFkrN211?=
 =?utf-8?B?ZEg0d1dNREFWNmlxdk1tWDgxaXA0ekFZdm92MlFSRy90ZlQ2T0VlakF5QkdV?=
 =?utf-8?B?VjdwZ1lEQ0g3cjR3VTBDTFRpMnpsTVRqdTlUZ3pxZUtGUkpyTnNPSEk2bDE3?=
 =?utf-8?B?a2xnU1AxWnlwdzdSTEhJa3FmYnFKVDRZSXRiRWRkT0RQSVdBb0VtVHlCS2JO?=
 =?utf-8?B?TG43LytscnkxNDNNb2FMV1QwWlVOSjcyclhEME5FR3Jta2FlNW1hZU1ZcjI0?=
 =?utf-8?B?Rk5GRXVmQXdXMVZOM096UTZWUHRRWmtzR0Y5aFFVVXlVODlldEVIbUZZT1l4?=
 =?utf-8?B?cmNDM1UyeVRQYlp2bHVxMGMzOUdIMWpWeklPOFhtc2t6NzZ1RUE0ZGVNOTBp?=
 =?utf-8?B?WjVIOFRMTEF5cFU1dXl1NzRiSEVrMURvMjFEbjJlR1lUWFd2UEhTcDVHclk5?=
 =?utf-8?B?VzJWWThNRVZxeFBoYVpaaSsxV3ZWemdRK3pYKzdZVi9zYTdtWUJZbFUwRDI4?=
 =?utf-8?B?SWVWQVdCNkc4cm8wRE5MWEJzOVRlUkVZZ2dFelhKSXk0Rk1nSnovN3VaRE5m?=
 =?utf-8?B?WVU4Y2xtUldIQ3dUcWFEUXhrbGNmWkpJOG5uNTBZbW91NXg4L0RHUVFudWRz?=
 =?utf-8?B?WTdDWEFUdi9MNkpxcjVHM2wwcFU0dTI2LzdnUGdqQmxoZ1pQUnlmcVRNUmQr?=
 =?utf-8?B?NEI5eUhncncyTGJNRENheU93cGk4eDF0R2RzcjBjZ0dVS1dsN3IvRXhLSkJK?=
 =?utf-8?B?MFcyTFRVTHZYYm9pR0tRVzQzVW1LV3pGUGdXK3NITWZCUE5Fc0FlL1UzdHJN?=
 =?utf-8?B?SkttUHdiejgxR2FYUWZWb3JUZGN6WlYwRlZRU2hyMGFKTnJTTERwUFp5cWww?=
 =?utf-8?B?MHRLUVdKOERNaTJuVUJVRExTOXdqOHpPdDNSZ0V4cFNITU5LL2lJc1NzVzYw?=
 =?utf-8?B?bml6T3ZYa2tkUDBzY2RUT2x0MSs2OHFCYkdWVDBpK2ZJV0pPUW1CbnQxb05u?=
 =?utf-8?B?Y1ViWndkbTVMUEQzaHB5UWRIM2E4dTMrQlZQdEJ4NHR5UkNVNGV5cDNDNVZj?=
 =?utf-8?B?ZExXWDY3ZlkwbmxuUThELzhodzQ4b0lrcWxRL28vU3ZTRldSeUFGcFYzazJW?=
 =?utf-8?B?S1ppalduK2hLYkN4VTVCUzVOSmxKeVUxQU4xL1RBRjZEMGtYYzMrK1NKbVdR?=
 =?utf-8?B?aVc3c0Y2ZW5NWm1zSitMam1YTU1YZCtDNCs1L0ZkK2VEeXY5bDhXWHlEY2ph?=
 =?utf-8?B?TDlVemYzVU14RHNtaXNvLzdHMDRjRnFPVnNhL25OaStlSHVuMGlwODR3dGNk?=
 =?utf-8?B?elh5S3dVT1dsUGRLYmNJb0o3VEFRMlpJNEJmdm5aclB4aE81R281UlowaStR?=
 =?utf-8?B?TXd3bWxpTUpvRVU2OGtBaXFvWGdCWGdoNFI3blVEMHFOL29DSjkzVXdLeU1T?=
 =?utf-8?B?Ky9kdjdHWXJjUURFNEVGYWhvSzRnVnVQRnhDWnFrVEJuY3lLdURpSUdRVFRS?=
 =?utf-8?B?Um1GdWlCVVpTWFZLSmtZU2p1WjNleGJhWkdDU3dqM0pqc05rVWZFdkxNUkdx?=
 =?utf-8?B?ZzM4MVNaVDlld21uNlNVUmtwU3VsQ1ZCZHBMMmhVYlZFTnZQTDdEVENITWFs?=
 =?utf-8?B?a1Ywb29DWS8rWDdoUlF5bjZ5NjlWNHRlalJ6QUZtR0t2RjVKOUY0d3ZyWk5X?=
 =?utf-8?B?ZGhBRnZjakpzK2dvKzNoVVlKRFBLcXFNVksyaTZjN0JPV2M1TGkzZ1BpTVhu?=
 =?utf-8?B?QjBXRTZRdCsrcnVadDdVbUFtblB0RGMxaGg5RFBndHQ2SjdjL09ZM1B0QmlF?=
 =?utf-8?B?dWxoS28zK3Q2MXlWdTFtZENVb2cvYU5pRThXemVBTWF1NU5HOEJnNFBUUFhm?=
 =?utf-8?B?U240ZDVHMUVBRWdrZnZPZ2RCdCtOb3NXSnQxNmxCaXBLVnVxWWJEOVlXaG1Z?=
 =?utf-8?B?MnFTNG9YYzJzQ012QmFGR0VCeUMvTUdnYkxoL2VMQldhMVdUeXY0TStSWGpE?=
 =?utf-8?B?VkJiVjlsakV4czZmRXRBZTZEOUtONUxzbllIUUpucWNHUGtGRlhBUFBPV0I5?=
 =?utf-8?B?UlV3dXJqdnFVVjZJNjN0cHgrczBIblVkZlMxbG9IWDVoeVNvWkpmQks4Z2NL?=
 =?utf-8?B?OFlhSUt2TDVvNTRsVGZCd0NUZjBPbE1IL0R6RytXaGdHUUozaGtBVkgySGd3?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9da42053-29de-4a67-3355-08dd8d6654cf
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 12:54:40.7413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o1rJ+doquoYyuvI4Lf01AOqI+1Is0ZTFYNA8c82BDwyrcaHSkfo6OMrz0HVKy5CU3sOFap8VYKLjCfsf6p/2YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
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

Quoting Jani Nikula (2025-05-07 06:38:32-03:00)
>Another small step towards separating i915 and xe drivers from
>display. Convert the i915->display and xe->display members into
>pointers. In the future, we can allocate them dynamically, but one step
>at a time.
>
>BR,
>Jani.
>
>
>Jani Nikula (4):
>  drm/xe/rpm: use to_xe_device() instead of container_of
>  drm/xe/display: do not reference xe->display inline
>  drm/i915: do not reference i915->display inline
>  drm/{i915,xe}: convert i915 and xe display members into pointers

Series is

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
> .../i915/display/intel_display_conversion.c   |  2 +-
> drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
> drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 +-
> .../i915/gem/i915_gem_object_frontbuffer.h    |  2 +-
> drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  2 +-
> drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  4 +-
> drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +-
> drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
> drivers/gpu/drm/i915/gvt/cmd_parser.c         |  6 +-
> drivers/gpu/drm/i915/gvt/display.c            | 10 ++--
> drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 +-
> drivers/gpu/drm/i915/gvt/handlers.c           |  8 +--
> drivers/gpu/drm/i915/i915_driver.c            | 57 ++++++++++--------
> drivers/gpu/drm/i915/i915_drv.h               |  3 +-
> drivers/gpu/drm/i915/i915_getparam.c          |  2 +-
> drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
> drivers/gpu/drm/i915/i915_irq.c               | 50 ++++++++--------
> drivers/gpu/drm/i915/intel_clock_gating.c     |  3 +-
> drivers/gpu/drm/xe/display/xe_display.c       | 60 +++++++++++--------
> drivers/gpu/drm/xe/display/xe_display_rpm.c   |  3 +-
> drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 +-
> drivers/gpu/drm/xe/xe_device_types.h          |  3 +-
> 22 files changed, 130 insertions(+), 110 deletions(-)
>
>--=20
>2.39.5
>
