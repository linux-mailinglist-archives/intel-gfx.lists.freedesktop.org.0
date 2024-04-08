Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2B089B798
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 08:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E7210F78B;
	Mon,  8 Apr 2024 06:24:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKxlHDTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E2710F78B;
 Mon,  8 Apr 2024 06:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712557465; x=1744093465;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6Vtf9aj5HN9ZdDPaRKeJxq8oGrCKiHpfa7irXlly1Ak=;
 b=AKxlHDTyHrniI3DaEpt+zv6JNe0yrqFy/ARRg75Dy+ZxS09LVnbwcJlm
 lIGjGwAbN/nNyshYRYtOiDtq7OCyRi2JYoaESvfLcA9bEhui84P2ZOgp3
 YmgyH5RxO1rt+pFYX/mLuqqNus4/4d/Gl7AJxkNONj69WIa/VTxbjcN1Z
 O9estIcYDBCNC/y++qVxbkDzT+VxCEGWqgv/xjH6G8ZnUFxsmLE/BmFce
 s4WcmOYUWIvRoL9b89n4lBxQo5GOCGl4QtA1e/QN2JCnv1/oM4jEtU8CV
 PZ8jjSXG0W7j3k1S65t5GeRkqRiPdt6Xj3dmi5cp3scmBo1OcqL4dan30 Q==;
X-CSE-ConnectionGUID: tUa62HCxQ9yv8UkLpVqVHw==
X-CSE-MsgGUID: fd6DUMZrS/W/4IG6rhKsWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18388820"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18388820"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 23:24:23 -0700
X-CSE-ConnectionGUID: hrg/FuXJQN2JR7U7vbbkaQ==
X-CSE-MsgGUID: NkjGtJErQ26kcXON4M2i0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19646616"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 23:24:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 23:24:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 23:24:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 23:24:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NevEOohNGocPC7BWHi+pxXJZwO/3F6hGEfMBMfr64iDR8lLn1TwTxCZMhlKtJ7yM/T5E7nvHNXDtP1paEW448H7pEnGfVbl7DbkVCqMAjbJlr+2xFYSZb8MORGwmBB/WU9bwxxCBJoelqh9FILO2Cp6tILO2YpSZU3JE9f/LDsBGFI9eiUcyIyuC/W0QOiyQ/7f+SGdEaqkH6pTNdoEYJ3esmFwabSKcM60DwkHcEUETKpsqxhF9hOm30mH63Fw4RS6bBh85+AwhrSVKd192RqLDngncdgSqh2J1VY9j1117oMorcqiHhhp/xryOw7v/5LaeQoSJ/QJd33IY05DPYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UAU7X79fX/0sBHv7GPrJC6ZG60IMmICtOg1mK/6qkQ=;
 b=kFoCIk76DEvbx1YCoQ1JXaJFKxRH3bxz9j6PZlqe7k94GSEqLzZrK2PP5VsXlaRGxdqI5lZZElEDb1L9CJZLDaOmipvgBa63rN5Kz4ZZMc1Gx9+U3MlpN8xwnVkv8ewPtrGSHZAF0MpfZIkhcDFpmMOs3zT25fYlSEX8c+RtoqGgPKQeZfmJ1Arlo8Y/FH17ut3nZ4Chs4rZ76TYOrgZsuoNNpmktcWTjWIHbD/lqYxe/hfGM7mXU/UWTB+zhfAMaUDVCSDUls4658DEhckGvrxBkRSxGGccpyLQ7Pzxccoj32KuuXMUG6kKMSb+aOdvCqVnqYB8SIUVEa13cRqo2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by PH7PR11MB6834.namprd11.prod.outlook.com (2603:10b6:510:1ed::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Mon, 8 Apr
 2024 06:24:20 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::bf52:bbe7:ecec:9952]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::bf52:bbe7:ecec:9952%5]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 06:24:20 +0000
Date: Mon, 8 Apr 2024 11:53:56 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 25/25] drm/xe/bmg: Enable the display support
Message-ID: <ZhONfOcFNOq-MQGn@bvivekan-mobl2>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-26-balasubramani.vivekanandan@intel.com>
 <0f65f332-05f4-441d-8880-fbc36ec7f08f@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <0f65f332-05f4-441d-8880-fbc36ec7f08f@intel.com>
X-ClientProxiedBy: SI1PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::11) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|PH7PR11MB6834:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bGIyyr7LgQcB0DDa2PYeXCqtYaOOrPhQqseGcmLPrKskbvjmtHfm1ETxV2QZp8tZPa4z57PK+RDaqSO0LaVwkrRd13ECo4b/BrRbun04hYC9HP2s8wQw//ovvVxjJfV4obC/uiw9zKsY7dr8F4aObIrk6OHcZ2srhf24nnrR74CfFp4+C5Y8GkqzuZnYYIGOIXJj9P8/cWmN7KmyRhyP6qLUOAfYK+3ABhrAo8uJJE8kY1wHyiPiN6RS2Yc87sBB3RcWNHYJAPToeoxeXWPTmIVGKYax5fpyIT5qyl9b4/yJfZxbzESfOBmHecu76Ziu1yMxPHrQx5M4dMVolVcjqJ4OimKh3Md/DOgFVVntSU86nCru2IobnrxlojZaRK6m0rPMiWCmh6G2gx6uEcrS1CORwcFOFa6jfVzVId/w7PY3xsptvOscIyJm87hpaPxQIi0+rMppuBRuEmgKOuQ278zsOwIgiwLGUQDlUfJsyZBHSLEPYkxra8k7uV2xU9pKUa71vaZZx1pIzHn5A1f3Of5GasjSCmicYvD4/SROl5cR/1qUjPvqL1dXgorfkELJaFcqXj4nCCcK3cZ5ppwlZ78SyLCVXfxKSUN2bSg4f9TTJ52FJeyv4gVxd9whDb8MNUtsJgvWeQ4JY27THzjURYi9n0NUoPDh7gMeR385Ees=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDgyM2FNV1paY1dQOStFUTVlSFkxTWg2R1p6bk4vajNrOENkNXpLT200WnRm?=
 =?utf-8?B?VUx3REY5Z3Z0WjNHNzVWM3hxaHdyWGFxN05qM1FFOTJUV1MwemEyeE96NXZi?=
 =?utf-8?B?QUkxeUVmQmk1VHhtTkx5bnJzelVFZmNEK1RXckNKaHEvR1ZwUUIxbzUvTWt4?=
 =?utf-8?B?RTZveERGczI4UXo1RENVaHRDaGQ1V0crYUlKSGFyYzh2YjI4amhTMVUvTzlF?=
 =?utf-8?B?dHppYVY2ZzI5clYzM3pEOElvOHp1MGhIOEFsaGVQdHA4OGFybks1RmF4dk9I?=
 =?utf-8?B?dDVqK00rYis3Rkl2Rzhqb0FGcndGazI1Q1d4NU5xZ1NPQ3AwTW0xeUdVNHhn?=
 =?utf-8?B?T0lub2U5RUtVVkZpZHRTZjFKdmtvTVJtL1ZSamJGcFdTbnBiWTJnamdRYy9R?=
 =?utf-8?B?eUREZGJPdTNoK2kzNHlWZlk1bGhRb0tST3FEbG5xTCtsS0pDUGxhQlNHbkxP?=
 =?utf-8?B?V0gwU0t1ejBCd1BhWXZmNHhOclFIVWg3WEJGKzFJa3NTT2VnaGtPTG40TDNZ?=
 =?utf-8?B?aC9lekcwTnFLZE5FOFVrenVuRkRvdUdnYTgyZ3MvckFEZTg1T0hvL2M3VEUw?=
 =?utf-8?B?NThaUXU3TC9KNDZtMHV3V1JQYk9uZ1BETGpRbk00WGVJYkUzN29iSmZBdldY?=
 =?utf-8?B?Lzc2NGhieW1ENnFFa0lkNWhrMkIxK0VoZEFSbWVKMHdram9sNTIxTEhMZ0Nr?=
 =?utf-8?B?ZVlVN25najFCaU9oc3AzRWhzWVpwRHJjbVBYTFBJSmsrbkpsNFpBREhONUhG?=
 =?utf-8?B?dzZFV3lGd3FYQzJzK2tEU0J1Z2N1aFc5bHh2OE5PYklZcS9VTHh0cm1OanQ4?=
 =?utf-8?B?RkFicWtGVU0xK29aYmpkMWx6eWM0cnM3UEF2eGUvUERJUlRnSFFzc21OVGZu?=
 =?utf-8?B?Sk5IaGl4SEtjV0t0VWVQSHZuV1VOV1NjWHZwTDlyUnFGSHpPUVhabWJrOTgv?=
 =?utf-8?B?UTI3djJZaStNT0xPdm5iZldBRVRielNMNmtXQnAyRmhIN1RuT2M4UCtXak5E?=
 =?utf-8?B?YjJDS05NZ1pWTitETHd6TktuTVoyaGJ5ZGxDcjRUYmtWMXZReGtoL0hGVk0r?=
 =?utf-8?B?SVB6THF5RTBsRGRScjRMTGxHcFJOWndYN1kzRFI5UjI2eFp4WkRzT3E5Q1p1?=
 =?utf-8?B?MHBsZHlaemJlT21jWS9EeHJuYWlnZ0JmdFNCc1JlbjhKS3RYYjc2aDE1cFZY?=
 =?utf-8?B?ejI0ZndHY3F3R2czeVpmVWxmdlhocW5obzlJcHhJS2F0U3oyeFoxTjFpZnlN?=
 =?utf-8?B?QXdqZDJPUU9TRkZGT2lVWmJoMHlrOURXS2d3VUV6aUh5SU4zWjc2cHIwZGNE?=
 =?utf-8?B?Nk8rMTZxb3FmMFAzSHJJTFg4VUorWDFheUJKcFRUY3B1bTdmbUw1YTRCUlhH?=
 =?utf-8?B?TkNtZWVrc3dORUR4cUs5NytuYk42dGp3RWJ1d3dQK2Rqc3p2SGNUa2tRRmxt?=
 =?utf-8?B?UTc2VTU0WHVYOU9taUIwZjdOZTU5dlJXcFlXWkhyV1FPZXl0VzBncFl1TkdM?=
 =?utf-8?B?R2FVa3pLakN2OHhzakREV3RaTTVTaUN5TXgxV29lQVdDSFZkNnFYWnNTUHRy?=
 =?utf-8?B?Sjh3Ujl4bzVycXhVdjBtYjN1akdiL3VaK0NvSnowd3N5VjZCc1d1c3piY3Jt?=
 =?utf-8?B?b2FqdDFrMlRFL1FEL21qamNSSlordWR5OVhFRWxLQU1RZ0hKWGg0aVMyaStG?=
 =?utf-8?B?UXlBQyszYjBzWjhOb1NsSG5GbWg5QzdBS1E1dVlwSTYrQjhTbTlRbzRBVTZU?=
 =?utf-8?B?UHZoS3NPMjRicUxRbnlrSDlmUDdOUXlEMWZaS0tIU0RndVdMalc1OWxLeG5O?=
 =?utf-8?B?RHlRTTB3S08waVk3RFdFWWFPZEtvcWJLcWdNVXYybkFycXl4WmZxTmdaMC9l?=
 =?utf-8?B?d2RzZmxxNkxSd1FBN05sWHNCYlhrTkc4MGFYN2liS1NBczhFbThxVVNFdC9l?=
 =?utf-8?B?UHVzcjJQUzlMUDY1UDkzM1hRNitHemZadEJXV0U5SFJPSGx2NEFub3BXSnZz?=
 =?utf-8?B?U0gwU1RGTzdQWStBZm1EMml2VVk0czQ4RHQ5THpzS0pVRjE0ek9pU3R1UXB4?=
 =?utf-8?B?OURFVDJUemtzbENoWklVTWtRUXZnU3o3TUhMUnljdXhGdlo3d1NSbGRHc2ty?=
 =?utf-8?B?Um40K1Y3cVpWdkgxckJLRVlmQWY3ZTUyc010bkxZUHVMWWNqWjlMZ1gwZzhl?=
 =?utf-8?Q?1JiphZ8/yEndLZeDKgl1ONY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50c42021-5339-467e-4bd6-08dc5794865d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 06:24:20.2851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KCmKJ+ca+mnIQrmVZ5Zte4+CoydX3vrCduI1aVcX/WmzP2NMnMtdHKhSr3q1DoHKBKC1NTmFMz1BsejFhmrYKWddUvygdIKGY8Y67p5k4XfoZZsVHR4HLtvEP1tzYjLj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6834
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

On 08.04.2024 08:46, Chauhan, Shekhar wrote:
> 
> On 4/3/2024 16:52, Balasubramani Vivekanandan wrote:
> > Enable the display support for Battlemage
> > 
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > ---
> >   drivers/gpu/drm/xe/xe_pci.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> > index b3158053baee..835c18ec8fb9 100644
> > --- a/drivers/gpu/drm/xe/xe_pci.c
> > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > @@ -340,6 +340,7 @@ static const struct xe_device_desc lnl_desc = {
> >   static const struct xe_device_desc bmg_desc = {
> >   	DGFX_FEATURES,
> >   	PLATFORM(XE_BATTLEMAGE),
> > +	.has_display = true,
> 
> Can it be squashed with the other commit 'drm/xe/bmg: Add BMG platform
> definition'?
The other commit, I have duplicated in this series to help build this
patch series. That commit is actually part of my earlier patch series
"Add Battlemage support" which enables the basic Battlemage support.

Regards,
Bala

> 
> If not, then, LGTM, and with that,
> 
> Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> >   	.require_force_probe = true,
> >   };
> 
> -- 
> -shekhar
> 
