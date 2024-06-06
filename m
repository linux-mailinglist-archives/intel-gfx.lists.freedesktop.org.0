Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A3E8FF22D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F9610EA0D;
	Thu,  6 Jun 2024 16:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JqUp9gXe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F46110EA0D
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690700; x=1749226700;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/VXlpa3if7aYNFvgyKlnau5TuY0rC2Fs1vwjWB53OoQ=;
 b=JqUp9gXe5PbPv3IO/4F4yWsIMxzcVHR/s8s8kw5GQjq6xywiBOGv/DxY
 L5gDJ6THaUmaotebTXO/Y3fLvtC706/ByQIXBom7E3XpdCHwfN9Q/TZPJ
 hUBv8aig2Qu7xOsdxaw11zrgI4U92bNWZAQRI9fvRvDLTS0CuO19Pk+Ku
 fayx8DbvXGdHx1GKZ+t04GLkZmVRYVmXEqqowsid02z8pLOcGiY2W0DvG
 4fhPgyP2itI1Pp9l67kOc1MF2Jvex/GINgSsh2rYMrUHP7g28TCTJGLYv
 lGTorN08n+5IWrp//QsZYUVarM+AHyvPSk2MxzL2MGu/ZSYWv4bJ+PSn2 A==;
X-CSE-ConnectionGUID: hysVUsUySkKdHAj8jIRdUg==
X-CSE-MsgGUID: WhLVMpJpReGJ1K8WQ1kU3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14526691"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14526691"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:18:20 -0700
X-CSE-ConnectionGUID: 25BSjtSRS72J014KxvlmPQ==
X-CSE-MsgGUID: PjQETISvT+GgIk0PuRT/Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38698854"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:18:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:18:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:18:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:18:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MFkfq3Kannf140XNM5wGKRiFaGcRoAaGrWjDCgyF0/nIRQacVK4jv3wmZYiA+we+DIuQMf+EYm9yBIxeAjrIrfZNbnhoH3vKFLpJq+2Y1X7VtqUOmvYOVj/tFtAmvKamB3Lgq6HoUzqyx7SjqRvjZGTVVnPpVpp0h59EIDtIUQXr5J2rZgg3R3zP4IeUQRMz/FaCrgBe5Sj/IwmByLaTzTIVeq8d7urIk8Eq+3iCje0Eai4oHI1t9ohRvccLATTnH22kBSrPkjUy6+toa/zUaUiDh3OKom0NTpBJb8fad3RVGzJ9Ut9u04mkU4xy2Tl/7RDfJYmtDWsCuUWPqctqPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXs6m6CXFpAopeErkfTQgTDkFMfewDGt1YBEPUiPLGc=;
 b=LDsqskvmJtGrTGBaLQnaID0lNurztio9u5GtFe+pWTU0et+lwvL5DICxovhWiUIu/Pc1TFVcFoAhvc/CRWy0paYUKH9LKYScmVbcpOTIF2mN1iTNVlDhuZKMSB7xR82y8QMLkZq7yHMxk2p9/dIlenLJ79FSPjNynLP3gAuTqpoZDtHW1lxLccYBBMWj/dkKZwU2zk16FmaDefEb2BEuTwvjhmPg2PbQz7j0dw2Flu+NpnMKbf4x82pPJJXNs5Htgo802yW0ejVG6dXJkmzbwnwgdjQzeE4chOq+cS1ChwDTp76vjDl1jnqP5gtgtrDYnkak1jd43TihXNySa+GFAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:18:09 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:18:09 +0000
Date: Thu, 6 Jun 2024 12:18:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 60/65] drm/i915: pass dev_priv explicitly to
 TRANS_DDI_FUNC_CTL2
Message-ID: <ZmHhP9VgIfQzRIQS@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <2b61bf9c1f74ae633c99aa34fbf1aa85735cc5b6.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2b61bf9c1f74ae633c99aa34fbf1aa85735cc5b6.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0053.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 38e8d077-1a7f-4c59-adc5-08dc86444182
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PPSKB8V8CK4HqQLx3948mtiR3kQbcSkEWvpafYrOdunSFiYp5+bIGDwQjsJL?=
 =?us-ascii?Q?hb9+JraOPLJhImzeYI4QXKcyGItFCO435VKRVTMmJy7iqaYwL6NnNfgxuK4U?=
 =?us-ascii?Q?1a/MgjqpXJjoWkcm79oh7rXV3mBgv098/YKAwAHEknm440SNuiZbZ/gJX2Tl?=
 =?us-ascii?Q?7bYD/weE20Oc25/Iphj9zK9s2CILCct7doKEUZW7oakHeswmRQ9qH3vM/gJ4?=
 =?us-ascii?Q?9o4zHBY1mDmybOZF6Cyi/kX9sNod15m4lbzUSafJsJvAcJpHXjwlTIr4sknm?=
 =?us-ascii?Q?fceh64z3WQ01r8KeCYaXPa4x2eG91JJ4qgvSCZF2XNWTvi/ycDem+/XWSQTz?=
 =?us-ascii?Q?RZJFjqLf8+BL9yHIyZWIjV8CcqsPQDEDd+tV4M1xx9WIFpE8VaohsND1mbwm?=
 =?us-ascii?Q?TgM+lw4FfVnmbLwnGk63CT/uYFZhznMjURx06OlTxTX4A2/sGyzJ0jU6yt2d?=
 =?us-ascii?Q?0hktXCOnDwqlA1B3RrxNDpXVlBqUcQDgm85zrg5dYn4iiB/iuqTrXt0LnptD?=
 =?us-ascii?Q?ULyixcm8wt3f3GFyr/4FpFRgw/ehevhIrS2iT2wW39FiEV3WjVMkgmOosUPn?=
 =?us-ascii?Q?CSLlZLcs6RR0tlllmKdnt5yOWE0knmYp/NcjUDAPnI2VUC44fegHsBiKZLZR?=
 =?us-ascii?Q?BFHQkx/b3KE/eUj4AbcCuUyXJQrjPRRgvvYY35o8B6Cf+MnwFheM5KVOTwkC?=
 =?us-ascii?Q?soTTpDpFzQp5LBBrok6jsHVIvY8AzCOpp6fmYRaDqebb1aa2TzFl+bMiPmhA?=
 =?us-ascii?Q?m7NqMmJ1WCnHNgQvLd/tCWMTWEVfwg2IdSo3NEb0/KsO7N7paICyRWP3GTVy?=
 =?us-ascii?Q?H6ua7Xsx+bF1/Vyt7ZTl01GyjKeLfL8oX3ZIA75iR/JPay3Ef7E1KBnnrnsq?=
 =?us-ascii?Q?7kQwPatEWFowghhEvuxp2a1NyNGJeok21jlC8CQnh5Li0su5sqrXftI7OEYf?=
 =?us-ascii?Q?LalLbyBVWfDrsIUBDG4rG2MR+fmCrqy5AU6IpLxnGgkPymL18yhPoEPcLbS+?=
 =?us-ascii?Q?8PKih+kkMEyCH+aKKp0EgrN+rgoPrVsSbV3pb/tVKPHQ9c6818Kl2I1He2Ig?=
 =?us-ascii?Q?c1dD+1X7Ro6QERSTH/qmJkUutJ3GaQyKHgwRe8FHhcadkYTVYcyJw6tzTEw5?=
 =?us-ascii?Q?yiY0wwAxSawoShNvLspFvD2NMGG9WMMO/BftPVr/FEElq3EstQAcaXwTh2dC?=
 =?us-ascii?Q?A6DrS3n5adyXhF/Z+jLNo/6a8QIi3fp6Et+v3u3z9pb33GXa7+mGP3DOApTm?=
 =?us-ascii?Q?VN9rmvZqhDrEALM9wvukIDbOcSlST82hSNkGBquVFiYRdyOZv7AWLXrrvG4k?=
 =?us-ascii?Q?AiSM+xGmABlhn300fqA0KsNs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MxLkyLclbGVDOcWKh5GXr3F+JfSMOqDDuIOPke0m4IEf/Gmj3moK2+Qlb53i?=
 =?us-ascii?Q?uRNCJSfwQlyQAcheah4TPqbjdsWY9q3GGyQuwa5PizfHjyQbRNxD9pi1KNor?=
 =?us-ascii?Q?eLCtEJ6byYo36/JRsI+4GZXJOqdf/CA6YNWtfrAjG1fPoPgiX3Y/oEWDJoUY?=
 =?us-ascii?Q?IJ7f0WCU2Le51Z5lQQ8mTQTBsGk1EbtB3dcKk0twBsyDSAX7QEvMZtpjwmx9?=
 =?us-ascii?Q?F4I5wu+/ufj2oisFnQvyyhWCBteQ8BVJGG1CAF8M4GYUgfOIDDE7ZEigEVAL?=
 =?us-ascii?Q?UFXPRDEGisD9jk7zHakcWXEMLjzhS6a9bUy7Jwqs1+B3w4d04wqo5O7b61zx?=
 =?us-ascii?Q?E6eCTF1jNhx9DdIyelqSyQmzTzS3IoPCjM1eRPwKj0XLUPBJUx7tkDr5yt3N?=
 =?us-ascii?Q?8cM8sfptpo1Y0BNoNAuE+bbh1sK9xSf3XRZV1fwicCGJOPOEZWqy9oveaewD?=
 =?us-ascii?Q?bMBQ13sam+alQATWjan9YYZNvC0W+GaM6r+fIurSl2mYdiQ773OJUlT49iR6?=
 =?us-ascii?Q?FlAdkBmO/psKO1N2I4FFcCqL6YjWWhneI0W12MEAFYkuZCGM+gdl/b4QIBda?=
 =?us-ascii?Q?pt1LslYLduIlpz/NRZ4Q170XB891VWxNNoEH7a2mupztXBKqa97xoQR6t4Da?=
 =?us-ascii?Q?6QALK/PHJ0wouvpQ1nPKjWirqWbYTVjLvTq5uEknRJstYdo7NZDV0UE0WPYX?=
 =?us-ascii?Q?Nk0Ct/DHHcGL+WSNuQbpRP2B87IR4T65KMVgdQjlyvxXbMCksUZ1MjLXAUCf?=
 =?us-ascii?Q?ysIB7YZPBvaLmIaZ38NP75+Ho230v5QRjf1VCBGEOqwN3KD0NIL/VEvNKmBP?=
 =?us-ascii?Q?86LWTovjHJH7jRG+3UXIma5OeuK7IwyOVDAhuIJd1PZpCmf4ZSKMnq447fkh?=
 =?us-ascii?Q?yqcg3bHguEx72l8wtP1aJdugBNjo9uxb7ip5OpAeTlsW3vMb9CY7vRDWPsTg?=
 =?us-ascii?Q?8PYZ2kAWQ6DxV4TEzF6qMsN7PKeYCpAEZSFqtYvRhGDftuAkjIWL6IEhdSZc?=
 =?us-ascii?Q?GPMW+oP3gZvyzY6s/A5i74rpqVDaVzV+bFOGvq4ddjL9HAcd4UkLXGcoVAis?=
 =?us-ascii?Q?bVFT0zUipK6jYxm4Diysei62yWWca3eO2xlsn/f9Rz3sGjwiAHKdogckdp+T?=
 =?us-ascii?Q?SOWe9cilcVsYkWFiAXo3XNt2KaEkTvllYUHS4q1WyJNzszJm1gOWx0HaiXlI?=
 =?us-ascii?Q?7ceeVty9R3GOCCgWcRBkNIPkXkvSR4swmfY/8/S/vSXHhlZyLciKYiyna4+5?=
 =?us-ascii?Q?mG7HMWNSMChLxFIerZzFQE6Gc09PLGdnVjkcpSuE+67UtPTAiZJ2xPujjSHu?=
 =?us-ascii?Q?VJimOnX9XLO4GAur38+v9QmTkLX1D11JI5zrfXlp3L/TNPTUawh8/A5TJxGN?=
 =?us-ascii?Q?51PuL6JHChJcAtKN/8uo3wEVf8Neetx+ZLjj+OtXNkJNvGe6F3/c51CTINwu?=
 =?us-ascii?Q?7Nw9zUtsqeSLMCGK2vZqJjfqeDBFL6+63lWkuklfDzJxUoJUG7uz0RECDOkC?=
 =?us-ascii?Q?9fygbz+LbNm9R14vRY1kW9MtkwrwBBWMskfWcLbdCM8150TKHIizIkMrtOmH?=
 =?us-ascii?Q?4FWXP7XYCRJAVtcCP/S3zwOSu8qvYSCSHSk+ybtQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38e8d077-1a7f-4c59-adc5-08dc86444182
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:18:09.6494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ugJtswgGQoxq4nNXkd+gQLUUdJfoUEgET6GHIbEeBG/hnZYePG6FieZTX7FnXajJ5hTrNhYaeugMXD7U+ebxIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
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

On Tue, Jun 04, 2024 at 06:26:18PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_DDI_FUNC_CTL2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c         | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  4 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index acc80d439352..ae8f6617aa70 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -784,7 +784,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  	if (intel_dsi->dual_link) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
> +			intel_de_rmw(dev_priv,
> +				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
>  				     0, PORT_SYNC_MODE_ENABLE);
>  		}
>  
> @@ -1344,7 +1345,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
>  	if (intel_dsi->dual_link) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
> +			intel_de_rmw(dev_priv,
> +				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
>  				     PORT_SYNC_MODE_ENABLE, 0);
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c5571be3c66e..515996c49f5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -603,7 +603,8 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
>  		}
>  
>  		intel_de_write(dev_priv,
> -			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), ctl2);
> +			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
> +			       ctl2);
>  	}
>  
>  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
> @@ -640,7 +641,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
>  		intel_de_write(dev_priv,
> -			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
> +			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
> +			       0);
>  
>  	ctl = intel_de_read(dev_priv,
>  			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
> @@ -3757,7 +3759,8 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
>  	u32 master_select;
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
> -		u32 ctl2 = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder));
> +		u32 ctl2 = intel_de_read(dev_priv,
> +				         TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder));
>  
>  		if ((ctl2 & PORT_SYNC_MODE_ENABLE) == 0)
>  			return INVALID_TRANSCODER;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 036f77c2702d..bf55c9064b76 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -913,7 +913,8 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
>  	 * Incase of dual link, TE comes from DSI_1
>  	 * this is to check if dual link is enabled
>  	 */
> -	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
> +	val = intel_uncore_read(&dev_priv->uncore,
> +				TRANS_DDI_FUNC_CTL2(dev_priv, TRANSCODER_DSI_0));
>  	val &= PORT_SYNC_MODE_ENABLE;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 14f4060dd573..f330953e71cf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4009,7 +4009,7 @@ enum skl_power_gate {
>  #define _TRANS_DDI_FUNC_CTL2_EDP	0x6f404
>  #define _TRANS_DDI_FUNC_CTL2_DSI0	0x6b404
>  #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
> -#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
> +#define TRANS_DDI_FUNC_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
>  #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
> -- 
> 2.39.2
> 
