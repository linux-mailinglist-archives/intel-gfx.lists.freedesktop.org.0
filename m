Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7218492C425
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D80510E65F;
	Tue,  9 Jul 2024 19:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTy3WcTP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC1410E65C;
 Tue,  9 Jul 2024 19:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554886; x=1752090886;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=j9faSb4aETRKHmK8I8UjvuFFxkagk7gz15fhhryO7gE=;
 b=fTy3WcTPxn33VQZ0uR3DxsAO7XZ1N5UMMAsMB3sebJNBWhGAtw4K6Ite
 3Fk53mg2IhGpy10NWoF5h7qa2wJK41qVCp6fyED1qOV9k/kqj6duMPute
 P5Oc7ez3PigbifMol8GIxVUjbImK+36NVeZioPkoZuTbypNsigMY5gifd
 zqxsgDjl0kz3onpPP5MPCyoW+UHHh2+7D5vsNO+cU8DTfHoM1k/00EWfP
 +RrsLNcrNVg2d9lYZFnqD0wj2ORDhRaSCJK//2KWq+g+8G68wn0kbrpNF
 12uRkccIj1GkBi+XZPkSlZTkG+yc3mnSZJhWbdNe8EJM1Z6/k3hAS1c0i w==;
X-CSE-ConnectionGUID: QAKf7M/mTJyZbuZXSJAMUQ==
X-CSE-MsgGUID: 99oBWhRHQViCJUVMWvMY+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17675282"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17675282"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:54:46 -0700
X-CSE-ConnectionGUID: sUB7Ev/eRXSYlJ81aebGVQ==
X-CSE-MsgGUID: 0Z6gz+HcT4Ch2mspNWGC1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="79115844"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:54:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:54:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:54:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:54:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QMkReo+8E8gtQSg6An7GTo8OElr/Eh4V1Qi2sAe7eeJAZRuGAmfDq7UEXCULvrTSPI3cFKvoSUyrGJ+5xmL/UvS8Tj2w44DN2Cm4xUUbHSAkiVeuEfICp6Gi6kp2trQwix2avs+WSm1XFQKL5hJvMxYT+4qIWUYQ+ztcp0EvvJUbTvDC2JwkQZl3Xu7GKEVCoRlDu4uK9DPZojxt+bDjILu4q1+L7yMa0jilRh5gUWYE/SEst4P4rwGvu29mckXDXiMgF0oQ7W+4fyaqA6Ai7Cb5djuIlSLpNd3zu7gmQsegCuUVlVewYWc6nIdDKMnuHvuwMXeMaujUFNHe0VFOGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bXkZQjHJA7oqYjAnq2LuSziBmKeb04o0jeZ3i0e4+a4=;
 b=FkEmcZETuUfrcwbMGiH15zFK9AQsc0vY9lBY4h0cT/SXqVNF/JhHjJ2wbtnbTh46Aq/FmVK6muAbU5dMrsBaDOOv3zM6meAC4wjuVnkjbipzt10ESyrRsEc+8R62NKGMv8ZgpzVjpKUURhhSpP3JPszvQgOwW+XTWMX7wi2URFXBBRxa3sqrQ+8ImQURcMKKhwM/mAOZULebzTMqkJkr4+kTHQDoxXr5HjuRD7r9y6WDYLeIU+Ba6/T/btX/Fw2pOWxHr0wLXhmerne9grVe2rMr3skkPJtDDevxj50xVZbV+mqS0NaoB5oCzZMXa6389LZp49Vwgw1e8Ehgf1hsPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:54:41 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:54:41 +0000
Date: Tue, 9 Jul 2024 15:54:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/20] drm/i915/fbc: Adjust g4x+ platform checks
Message-ID: <Zo2VfQjvNYonoETa@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-8-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY5PR17CA0029.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::42) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e8cefdc-b0a0-4a56-3009-08dca050f890
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?8j2nE+g75oze2lT+dUT8moMQMBkWyDKTnXc/hPfl5ExjZj8sXZmNd/S5vA?=
 =?iso-8859-1?Q?/m6AkdttolEvE02rVP78OCE7Dk4KTNjapc5qwANXYwZHeNZY9QfBWXonIv?=
 =?iso-8859-1?Q?OEe+/Xot4v+9JsXjRYwyZLbtm6yiY8NfUsRvdylT3JheUcdfP/lPPTgb92?=
 =?iso-8859-1?Q?0ojPnXD2dfusUSuL1Yublqa92lEifseaREJymMRNOzkjQqga4NtpiPpOnj?=
 =?iso-8859-1?Q?COGL46YTYextM/DAigOK78X7M7h2tN8OsZ4jnRNovU5SzacPGcJKOd3PSV?=
 =?iso-8859-1?Q?HDgLuW1Ci4jqYsMpb/jTUTGS8hAnU5YMQky5mkvZozX50JwxZTfk8/CuDK?=
 =?iso-8859-1?Q?DbaKMzTuS/y3OGV7nfPXPymPFi3KHoEZ/p61pRgOT0tFgYrLAl2SJS3rHe?=
 =?iso-8859-1?Q?gsmwFtXkBVMJxmCfce4BZi8Ci3mrB1wqJGhci1YA6vzESQHwkCAq1glHu7?=
 =?iso-8859-1?Q?DttNEK9J+e9S6qcVFOo0Adkk+8FwHC3ElRBy2aZQ4onXcESrLd2+c6W+fo?=
 =?iso-8859-1?Q?SWttxuamaSII6XKhQEfU4PpTYX5Y0EZWsaybc36U05E7BLVrH/d99QMJ/Z?=
 =?iso-8859-1?Q?JmcfzBraVULkNN/3Zkeu119RpK8FsL3UZSmSJfDfJ4KGYCgAsafe8+x2th?=
 =?iso-8859-1?Q?hPFKT2oXBiqoPXJ/8zIEVjRcsgozKe5/gu3kB2zWrydBNvBkr6IZ0PFHan?=
 =?iso-8859-1?Q?Thi309XuGo8oVt+Mqa9UPIyp6WTBeCSZctmuJwd24Wi5BG2l054mFNQiwB?=
 =?iso-8859-1?Q?2kXJR4afmW606IYHkpa3/oDjt3/hhytlrPf65i8IA8e4hqjxIFUHXVU6pE?=
 =?iso-8859-1?Q?ATTJZVUcFschc6YoQ3bE7OWJoPrKXuI8peGQRwioL9UUC079d5sI003god?=
 =?iso-8859-1?Q?c+02ra5S6MBLEhdrmJRBNz15/HEE/HgS7qYy9Yv591RlTTHqKlh7Cfgb3u?=
 =?iso-8859-1?Q?S60MHKFQFzXsn5QX++cNGeQnQ5bymc5cXj8kN50bC9mLwpgNvfroTF/9G/?=
 =?iso-8859-1?Q?Vf8tNqd/QPlF9ozRw6hVqTywh8zHZUo7r4CzkHvdhBvokglhd9bRmK27Lf?=
 =?iso-8859-1?Q?l0Z73koQd13EgCX/sq1yQTYu7hgf11fckEmx+xW0phCq45X6UUrAhPVa4W?=
 =?iso-8859-1?Q?mt7UUdjvidkydC49Vkr9i/iZimIQ53bJpoi8Q3kX42llWcYL5DIHVIAGu6?=
 =?iso-8859-1?Q?dhnVr+kmVIsBCOhC+ZI1mUA7URlV82N0gn6HHLBDsUghvAcsrrlro39wct?=
 =?iso-8859-1?Q?cTLktaCmhgo8vNSA5+uoOsWn8xKevtK4f76m2LvZfpyPy+SajNb7dMC0AU?=
 =?iso-8859-1?Q?0hY7lMLL/AiU4Wj2EH5uebMydBvg4lHQ89x9BMrWW6Aw1k/+13QDVmPec+?=
 =?iso-8859-1?Q?0TIRhEB4okuW/S/ARuJGSGSS36Geywlw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?h/d2eo5RiSLgNDT9o6jos7wpuIIpc1pNyMovO6QgB7ggviydYUuioVVtrG?=
 =?iso-8859-1?Q?ZoNlr6yy35Sr62A8l5cdGCuiWlDSqaxKxuRPfzI7k8Wx3img9RNdBc40DT?=
 =?iso-8859-1?Q?Ngt4fCTjS+GppTfvTzNxvC7eBkg5eenSwTAblMivZwJZgBMLd+8O9+DnJE?=
 =?iso-8859-1?Q?6wfKXoUJhCwyn0rlrpM9Zz+eHilFwrM4GtHQDqc2g2gaezIvrtT3LFOkjC?=
 =?iso-8859-1?Q?BskAVIPIxZp09hmpSFv6mfpdnqqcWGLtDFAWviL8lneq1qC1jl7mKo2nOA?=
 =?iso-8859-1?Q?IdYqyO9dYK2QlIEE7Nlmoeudni143z7oifxJx482+N8WklKIL/TAe6Pjan?=
 =?iso-8859-1?Q?1R8Q0tgzy17XBtmRKtXfoTLLDyB1ve+Dp6hcgslxeTh5OAzC+iDT7RzWQz?=
 =?iso-8859-1?Q?8VuqfVhCeWybQ+RZTf5GzKiix8vpnwhBxUENNbb+clFxDucC2mmhkM0nE0?=
 =?iso-8859-1?Q?lQyrSgb1BybKrpnWBNtfra1E1haQ+AfEfrCm/pV4UVD5LPhhxiHot+pFN0?=
 =?iso-8859-1?Q?uoNMITFSUkMdk2q2eqeHe/8ArMId0K1HB2KaRXJYJayf3KRT+yUNSuA3y5?=
 =?iso-8859-1?Q?h3gbDUcTApFEuiNWFvKHvR0KbPDvcqLW5xI8YIwt0tu0JZ5o+Ybk6Z3+0S?=
 =?iso-8859-1?Q?7S44JD7PM3Ehq6vHKwFZeaHaKD/+i1hBIOLJFpBUz2JGN2hDWES9YctSc4?=
 =?iso-8859-1?Q?oBPcq2T3IOjYK1NgaJUnWClr6DLUVN+P3SaolvCPrp7I9zgHHUFhyTkVWK?=
 =?iso-8859-1?Q?vS1qF/B3jBzIej9vw2Szde/OPo0LxuTTizGynBHjg/porH9i8wcenyKdan?=
 =?iso-8859-1?Q?hLp+GrSOLs6/g9oSqMpXidZaAeHcBMtRMnZqtL0v5x88ISYRmO+wSj8O6d?=
 =?iso-8859-1?Q?RnlH4MrvHKlxuTtSpodswKTh9VEgwDwFKdiOMHAgt//8E/98e1iicUGdoy?=
 =?iso-8859-1?Q?6lSciWD9lEgvzoGRedTeaMx/37rsLwpxZ3fLV9Njq6YHbz/PTJs9Pl1JZw?=
 =?iso-8859-1?Q?y0PofE9WBH5ZO8v472FQmowwvllYzpAprzqDrBf6ptg+qh/lZMjiA8HT5f?=
 =?iso-8859-1?Q?Q9ztG2GEiVaVeVnv4itD3JFoxppqryE+z3IZBNCxrEI0AD8xwhnl4FuJup?=
 =?iso-8859-1?Q?jHKgkeyM8T5fSUIBBeQUWe3l1MwPKzVYqq0kGZuV+MY18vJxBlD8ShkuN9?=
 =?iso-8859-1?Q?K/1WgDJ4bol+NBsAFB7Dpxmli6TXk5pEMrnZrR58geJ959JjYxlq7QKKjB?=
 =?iso-8859-1?Q?JAn32Ha3WcxCM66aaUVgu3Iy/Xmqbjfz9AmEUmuJtMBy3TAPRTALAQGm3l?=
 =?iso-8859-1?Q?LhuerbWCU+bGJo3k0Om20D2WPZzpr/rIrvQwdoRU5hF4Mph5te2rtBFQ2q?=
 =?iso-8859-1?Q?TwZ5p6xyaCalbb4wkLxl1et0QMx4FDtJLRqh4tvHE7wuuPFTBWmBcElfhH?=
 =?iso-8859-1?Q?/+XQmjgsAHyWro3+xblC5K1/N28hdL2OmYrzJVe4EwNabIrIp/n7qYG1AL?=
 =?iso-8859-1?Q?bHPC3lo40vbziY4O9my4bOZJec8wigH22sxiihWUt44h1ih0e9yp2QTp+q?=
 =?iso-8859-1?Q?xRrcq4JtNVC9nxwBY5SAlhgOnsMTao0DYiFheor8N4cO2GKQ4iN9TuK5id?=
 =?iso-8859-1?Q?WBrPHZe9bsw7JtcN8RH8V5rY7FX+ENysIi0jB84ijRs3ftBjlq7ivOiQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e8cefdc-b0a0-4a56-3009-08dca050f890
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:54:41.1694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jOVGTEXNckR4ddBIp6XGavwQYrzaWaYu3KNEzOdH32xKpWclFoFS/UQYsZ/NWhLmqOVh4kSXJLg1zQ4uzTymPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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

On Fri, Jul 05, 2024 at 05:52:41PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Do the "is this ilk+ or g4x" checks in the customary order instead
> of the reverse order. Easier for the poor brain to parse this
> when it's always done the same way.

my poor and lazy brain thanks this!
I would likely stop reading at 'G4' if trying to read code for newer
platforms...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 40a3b4937dc5..5ba3d8797243 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1087,7 +1087,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
>  	} else if (DISPLAY_VER(display) >= 7) {
>  		*w = 4096;
>  		*h = 4096;
> -	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
> +	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
>  		*w = 4096;
>  		*h = 2048;
>  	} else {
> @@ -1128,7 +1128,7 @@ static void intel_fbc_max_plane_size(struct intel_display *display,
>  	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
>  		*w = 4096;
>  		*h = 4096;
> -	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
> +	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
>  		*w = 4096;
>  		*h = 2048;
>  	} else {
> -- 
> 2.44.2
> 
