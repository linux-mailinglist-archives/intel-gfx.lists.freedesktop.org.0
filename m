Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 704F08FF186
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2E610E9DE;
	Thu,  6 Jun 2024 16:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSe1/ec3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0F810E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689909; x=1749225909;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Y8qc8xb/Sg07eXwUGPu7TaBtogU1fA2HXd+hOP454yA=;
 b=NSe1/ec39iTpNzSVjZG7nzGotjXtD/bia7SZVpwhSTAgi9Bw2Uax6apc
 Lee6MzYvvyNBrueAukDOqLeUZIeMzY0lSHn0cbXyW0amzxWBHxUljPumd
 UboFr44KVBLnaesH/TTaIGfyvzWlZ0fojgfR37qonfhgLsUs7nB2M4Q4D
 puXJ902A6mAioUHsOo7ZRMqKcQPIEvSnFzuBins4ppCQ3EeSw1VefsjM1
 DVVEErpIpOQMrBniKG9Tz21nSIrIDxlm+1SG8lik+Rxw+qAVVKbktee2q
 LxCuSAFfaUjqT+Y7I4Dkd0quTkbLx32tVizrbryLQMI3lxdzut0kuf1qF w==;
X-CSE-ConnectionGUID: VynmexXYRL28Hqd7IEECBA==
X-CSE-MsgGUID: REiBUpxUR9ibxxqadT82SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14524215"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14524215"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:05:09 -0700
X-CSE-ConnectionGUID: m2ea10eLSASTijUQdrobiw==
X-CSE-MsgGUID: yGT4Suj0RYeCC/SDF+i8wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38572361"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:05:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:05:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4o7lAnfzuCPtEt1OkILVRD7BtcLODuk5IREXsS1YfulzveYZlIbiHqR5wkduDSyNgmlUId6PcUiajka9yNOzqAhT8f++/cd9IKFQWvs5GdBWc+V8I5+JRDdSwgsK/VXjpfKgC879mOwpu3elIptApKy+635F0j41uzlxlBdHvyKdJvLqoTbobxUvVtpw56OxB8R6Gl0SIphsU0ei47TceeYZaPUeys3lpGNztlrop6zg9k2fS1RJXWmds+Br60/na8L/NRQqES2G/J4DUZAYXkfdBjAPcH/cKIxEf1eOvn59NBaY9OfTaS41weRkPFmvpVI9DYkQL9BT03CmMogaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5AbBNVRDTKQ3jwd1VQKWQ5QRaS8LjyMl9D/dyC48TY8=;
 b=ZOa3jAB70AaOZl3/iiZL9tE4iZ5VVymLUh4L1DzXEosE7PWfkjkVupT0QrXN65zE1M48I8GLOBtuDI1uvlFUBpMVH1TkVmvTELXpKzMU2DWK153/vkh/OqYcRDTgvMj6BEl5+gno5747H93gY2oPU/TEcs/mMP9dHSdo+dbJwxfH3X87w1GkUyc8gC7r2BreZyFCRFYmfYbIxNTeiicx2XDfsvKH/e1JzDBs1AOTkZUO9NxHrY7786QobxdZfTVsjWjWqm3Dx8BtLenNXJqM0Sn2v7FU/cAxJ1m63mu6qN10tiV7tHoEpnZ4RwO1vWoMIbMcdKIcYwqKw8sHHnqiMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:04:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:04:57 +0000
Date: Thu, 6 Jun 2024 12:04:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 36/65] drm/i915: pass dev_priv explicitly to _PIPEBDSL
Message-ID: <ZmHeJ9-U9ZVmRUGb@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <c2e90b608bd6f525c95f3350cf1661113a39360a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c2e90b608bd6f525c95f3350cf1661113a39360a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0038.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ebeb7d9-53aa-4cd9-339c-08dc86426998
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?d9W1t1LOIOmtYrT3+ox5sqiYwX/IiTeGXjBge7wtB1CIzZWzpnQQaTwtlj72?=
 =?us-ascii?Q?GVzdIkuHB+Mek8KIYrvx6ne+XL8uRh7XvjWWMafoNG4xnXPSb/gAg6qoLtQk?=
 =?us-ascii?Q?B4TlKt0TY1VNHfh5M2EdtVgerF/+U0cGcT3cHAPb3CMcyPIUXg0FPOm3jAfU?=
 =?us-ascii?Q?7rLw9a4mFAMnLEYNTtkNXY5S7VTy290YaFHPkMY0e2eBWL6cTQrEQydr36Ja?=
 =?us-ascii?Q?ZsJgPLQbTW5N4hMUwV+WQhYe3UEkwIs85vIZqTxavQwMaeEmJeatwVZO6g0W?=
 =?us-ascii?Q?050srz34k2fdt1kGJ4VlRYURU3oNV8BtWEd0ywm7VcqMQ4OzLoGglLw8QtFY?=
 =?us-ascii?Q?63b3O5lV2GS7mJwMxjEJzlOGrRooskhc1GcSENohroqNp9I3q/aGseLD9CLL?=
 =?us-ascii?Q?YaHtX1/DZvcI0480XV101Jt95SaTi3QK92z7OFz4wha3NvU922EXb3iD6C5R?=
 =?us-ascii?Q?z6HR8AeVqXt9o0P1yNiDP2q7Dc/6RMPrmWAv5gTnwrgUJ9BbQfMGCGojZ30Z?=
 =?us-ascii?Q?2PwV7aLcHzhZVUpD5zwkjBxe4BDTT0GN4HvaD33e9YJ30wO5cZBekNO0boPf?=
 =?us-ascii?Q?PDjNM2O04NUMhcCynsy3epJAlO+MpKFknVsCyaJopRtnt+sUUXSPljNkcbJd?=
 =?us-ascii?Q?BijYYrq0f7/UN2RX3BJco0pqk3s5j2dmsfeJIFzchv269lE4l/Ee5r+akWA+?=
 =?us-ascii?Q?uBp4FtML41/ktL9GCV5q/HW3ZBU8EmV+4BWRxpL0efnWIIc+gLo6JpIpRKs9?=
 =?us-ascii?Q?palsKnR6LVXcJpYfy2Q9h1uv+HNOEnLvVBWuiTA6t3wLtQhGLgLyv0AR8Vjm?=
 =?us-ascii?Q?ft+wRGMMtgczq4pzWNHSbSzk3DY7PMFZq8+0g6SPTkYi+XO7D4z025o111UE?=
 =?us-ascii?Q?LGfWIKLif7b2a6bgKA1GStea9kP02KUxa4i3AijLxTKG6rPYKfSneyHfTW0F?=
 =?us-ascii?Q?0xgHB15OnLayh8xwqvUdXTXrAMar9TGX7d7UkkBJaSQGaKPP+w8Y0/fqqvvZ?=
 =?us-ascii?Q?8RTTfaWeL/Vwo2hS9mDb7w0fxsXHY28kyYw4wMbT7nrEpd8t1UIgGyN9b1cn?=
 =?us-ascii?Q?PW89OZnEOuoecg8sx6+/3hTdlwskDPFXFSF5Drp4Dtfrs8gOQhDrGZe3ez9L?=
 =?us-ascii?Q?tfEOGOKaRzM+kznopk+C5HeVlVWRJwps5txR7+5Hj05/GALvEtAohfEga5I0?=
 =?us-ascii?Q?WSnmWl8ZAyJnrbOptcTGTcN396oL7VG+hVOxvk0BbwI8opACwA/A0M7Yr+JA?=
 =?us-ascii?Q?iSFeHSb1ssju7C7X3vGMX1xRexf+zXZ7g42Pek+GHn9W7OijxlkCt4zBnydL?=
 =?us-ascii?Q?X9piC5V/gXpTOAWCVMIgHept?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ywDea6sCFowtm8j7LxC5w9B+3iMrH3RYb0foZNGFPHK1lK3GPo30s9Xh0akk?=
 =?us-ascii?Q?VaSf4KhALkCW8sWKr9Qk5x1OTSDpwSRY3ujO/QOTwX9QQnlcAr0jgXcp0R6E?=
 =?us-ascii?Q?pLLLpSPQcm1uqlQXgYGr2b+9yvQy7w9K+w9Z4nRDlm38VItiFVqtss68x+Gp?=
 =?us-ascii?Q?6fonvSD6ZBPaLMV0umQHO5aGseEGXSGMIj+ZChUo6SvUdJRFKJU6g4z+fS/d?=
 =?us-ascii?Q?acvZ3oirsaXtQX2qlxgb7MqIAzFv3hgUoFsDON/mo1vqcNczmBYOB7cVnkSB?=
 =?us-ascii?Q?BlZ6bbIQS4HzXlNntQAaSlv7z/8YwoBWPb0yFw3LyAhK7UTPmCkBjQatkaUr?=
 =?us-ascii?Q?lGV3+bwOC5u/h4UZXeoktAYcDC9BgA7+iG8CaWqVPq6u3o1mQ3x34SPEObTL?=
 =?us-ascii?Q?GydF40zJ9UowWSwy51UDflJx/NI0dY6tIPdwIULhwnwZeGB+RX+DxWCd2Lsb?=
 =?us-ascii?Q?CWfpFY+4lU1vt/gscHbdqNh4p1w79XitdVyvyFMRorMskYq+SaydyyKrAY5s?=
 =?us-ascii?Q?3G++ZzVuMosogo8NbvclRKR4j34KS/ijBkp3OvT9C9s3N8ZJObkBjyt6jX2W?=
 =?us-ascii?Q?MycIsBq6SoSZO6JRQgXxSjI4Gvu7gJjkW1RKTXm+WRlA9xohwa4vuWNK7U3P?=
 =?us-ascii?Q?7LraoboisZq70Rcx13LpMxXiQ/s3zsone5+Y/3IYIWllkmIB+LrlVbIPHpez?=
 =?us-ascii?Q?mhcSyuolQGsMrsWNpyt6Dco4SEtY5FDmpMhpcdS4hJ70qnVH4Z9MWI1625xJ?=
 =?us-ascii?Q?kWkJNourz+CIC/fFUcyAVDyrTR+DYa0xpGJ+LC5SBk/Rmmfa8PiCEoxEsq0e?=
 =?us-ascii?Q?V0hBvk/SK0QO0ie4c0CEjZ+wy0B+UCcz/MBg2VNZ0fBIjPuqm5DcebSX9ieG?=
 =?us-ascii?Q?H72T+bcS51GGBDp+0z5x0r+wQGeaRivxCiFiXQ8L4y/kIUqdyvybmBt9b0Oe?=
 =?us-ascii?Q?oNKuT3Flra9EpODh62NCEsG8+7oOESCmam2PhXRwPaXQTAZ9LX0W32qGEsiP?=
 =?us-ascii?Q?nDukESus5WGCevW1uTBaBNN0g/tDvvLdCY6J8fXJzdLrH57OGBLiaY4u5dHx?=
 =?us-ascii?Q?KgVAv5I8xaC93XRSLSAhDWLYumiZ4NpwdKmstNAuMfa4wX1oo/uW2e4DpZic?=
 =?us-ascii?Q?nusHll24KcKbnE4oc1CG4rvEPDbmACXWB0aOhCAMGKocbYYHiMkmJCWDRTcZ?=
 =?us-ascii?Q?OpjQZ67SPSPxuR9fzALdoxZ/UmHGT/Wo5zrIZQsMdRmg9zjnLxQTVniT8xsO?=
 =?us-ascii?Q?ilrYXf8nBHNMozfJmOaRAhum0bO8Cz2YMJBxnj274ujjNpTqh8OZisBnI5D1?=
 =?us-ascii?Q?6LoGvAviyLSfAnn1jqaMcKXNHpb3n3aIvEqltVOzCKlj1X4TDe1gaIiw+gzK?=
 =?us-ascii?Q?YBhAKf1uBgSkjdxIGJGTBojHIEvjdQshQlPea+WGkD40DYIdeAdlRMY3wyhV?=
 =?us-ascii?Q?61hZWCTN+QgiD1j7g6bhG5d76LmZD9g4n0IsvwNiduHBv+749i1wPIQyKW6s?=
 =?us-ascii?Q?PNbdr/Rev4ui0fiBW50nJfui7SI2FgXXbJVcMMsCCqGtKblJ4yKjOQIzILc/?=
 =?us-ascii?Q?5ifi6HVCVyIJ3xVBETEOH/KzDacgH+Oj08G8U1c2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ebeb7d9-53aa-4cd9-339c-08dc86426998
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:04:57.9173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4rMtNoLahFmWBMIuAjA36gSjerayNUt0RSmHYa5jKBbl0DKySb4VaVqvZjm2cLERxpB/Q+62SoHDsGwVRaCW1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:25:54PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _PIPEBDSL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2f942882e7ed..0a2111b0cd98 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2296,7 +2296,7 @@
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
>  
>  /* Pipe B */
> -#define _PIPEBDSL		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
> +#define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)

should we simply remove this reg for now, or one of those cases that
are getting added as we speak?
anyone to Cc here then?

but up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _TRANSBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
>  #define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
>  #define _PIPEBFRAMEHIGH		0x71040
> -- 
> 2.39.2
> 
