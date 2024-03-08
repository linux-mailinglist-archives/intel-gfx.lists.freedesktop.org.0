Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6B876775
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 16:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCD110E589;
	Fri,  8 Mar 2024 15:33:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imXhFBID";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3E510E34D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 15:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709912016; x=1741448016;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6sJEduFsEofq7e91NaC1D7vSJ//PshAWBGKdxHSlyl0=;
 b=imXhFBID0iBfOzMcV+y2551+DCgiRT5Vq+jv1c9UzVfhJvX0jGQj+PoM
 DIQlIIGIhQYmI/DmcYFhXVFuU7fZsgJBVWcbKEfE/8APvFA2bINMMyE0M
 9eZEfpL+uUO9XELEfbweeB+LzxkpCOFjCgO3BAiU+Fit0xQNlr4YiFKlN
 IjK2d1JVFcenGObjWBkf5KwKc3WXuZgUg6C3p4/NiXDiKkB1YCOfH+tQ7
 X5lMtU8vtWQw1pvPeJr9iWRs4jmdiACfko0HwK6G134F33q1xPxuSuH4t
 1UM21HCeeUvx50kPsRJtktsGDKkHDX8D2I0pzGlxsJ7qr1HuFYOtIMr4R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="22087957"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="22087957"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 07:33:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15167748"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 07:33:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 07:33:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 07:33:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 07:33:33 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 07:33:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J99yMUA23CG4lPXfRoAffY3Vj5fe1SvMhPfJL4bqRH9W0tUpYz0hEzzTAdmN9YRTrpqf+AsRjSIvbiZz05ZV02y6M9WrMU51cysf3wkEjVdqtB4XCM58uyTlRBQ1+v2y70PekrE9j3u1o+FqpB+5B9oK0iz9rphvw6D1NODHPsYWlSDMtsSAR//OQ/6woMTT3voyXO5Y/XkIqb/dMGoQus84LfiiLSXBd5HCv16yHrzGo0Dk3BgX2GKkLfKcc5EsJ80/vxiiKcrJgbWDkdvvsk3CvxT1UhgVyaKnNeqiDjtYhKkCmQW2edfW1KCTz0A2KkacAzzCKmM97J9htVIntQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2yv9wZXOh4k38UisMjzPY6W+kessA7ZA9MW0MrcNxic=;
 b=XJIPbpgh/N9qknwXwRTKBDAhrVG3Vs+cXGMa/ZH+9TfMjRtCvuttSdSJwpK60+/RYhyyAkQYTVoRJj5bdrBlNqukWGHzZfHZqYHNIf9ZA3Rs6QIPSXfr1Bzql3ELYmff+LMrCw+nbCwYPELDCykqTeBGLeZuhNzZzb+R5rFRazMOpgkhOBcY1v3hEDEvogz1WGmadSPe6WDnb/8dR1iU5KmGuTBt09O+8+ytMtinJHbYLRcSShZKY6pXrwKjkDZWYapoaXiJtsu/Jjy+/C6CZ9a2JUis+THgWGSZ5K4HjxiU7Al2OQC2LyaEq4alxHr9etLwpCYhWiIgVeZBuESwxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6306.namprd11.prod.outlook.com (2603:10b6:930:22::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.9; Fri, 8 Mar
 2024 15:33:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Fri, 8 Mar 2024
 15:33:31 +0000
Date: Fri, 8 Mar 2024 10:33:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Rename ICL_PORT_TX_DW6 bits
Message-ID: <ZesvyLtpIjjKz63Q@intel.com>
References: <20240308072400.28918-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308072400.28918-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0216.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6306:EE_
X-MS-Office365-Filtering-Correlation-Id: cdae2270-4fc9-4182-4be7-08dc3f851c12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IfNC8dOeI6xvwZn/AaPT9GP4J481c975gW/o9log2mQSxmXmSTouG3cmtrszDpWf83xEK/2mvXT5ZiDNLr9KqI8FbH1LoiwtHBRHHAAKsrD5DDD2Jx8tJu5XDpk+Alix/cEPnm1IX9yt71pNvS483CKSMzJkvbzlxYkyk2sfeKJYFGbPyXDaRMCMEstyyaYJQH869dXpCYj5ycxMHZ2BvXgRmpiI6mwul1KVqN8mW6zoyD0WMBfg8S/bx/ODLVO9PbguJf4sfewHcKKitzr8JaYouyt20kF+eTXH5lk50+ovXDsCUgm1Qw80zVB1tdq0BuMLfEX0C5GICU9V3REsu/B+C5C9gXC2KNxMEnBUTwgt22qr+LJdyWJuWbZtmP2Ft4OjcHZP0FFAuHigwgn+751iJ0KAWVHtDdPbmkJbS8M6QyHuIF9ULz24v6/MynALeSmvV0ddEV+Qh5SJndstwFLhoX7WodGFtZDzd33NxoIGBmwgkowfLt46kpuKZUkCBZ32DrODUANepcZP6/JubKH2O4t6x3raoi5JDbweuAcXAKby/0/Zp/7ye2yeX9bpzH0SglY9AyqQTsXb9kfEXf/G6lN0ztyJ3/Dmy4ojETIgqG0u1ypQ1usdI0Y03b4atcYsNlFSvNBC7bbTG4YsHZlPDKab9QLX5T6yo3kYCuM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?N9r/O/YdeD8/JUXgQjhJhu2p56cqBDmzCNlOrzgqhBVF1cr7J83KqDZqeV?=
 =?iso-8859-1?Q?nQOzcrBgPjWgKN6evHq12M4OPqggr5Db8WMKEM1881Qbyx3V9epEDtDyGB?=
 =?iso-8859-1?Q?G9gIRyyRODyrdvlHhPsbmsejQbKj8R5w+HQXM+kHS+utDD/BHh73LXhgdY?=
 =?iso-8859-1?Q?LTYSVDbn6pL4h+1z5Ih7K4SzzncgPb6MmB92vLbQjw+b3oV14HAntCXrEK?=
 =?iso-8859-1?Q?7WyLLcU8iJ0It9H3GQr05RWsh0nRvXGvWEjoLpi3TcKx5qQFzgzxXioNtP?=
 =?iso-8859-1?Q?rziydwN1/Z2T5F1EHXV6O2Fxz8jr/GkQK4tKmnm5QTboJGcCmd+a8XRqsT?=
 =?iso-8859-1?Q?Sqiu/GVf+Ty/8DtTEcEm6Wh+wjjgRMK9tb9Ydg+fy80DICf8lx65uDSnBz?=
 =?iso-8859-1?Q?Wdmx2C50E9dqAO8n8UGY0cA87vWNrt3eMUOu0JBlYbK80N8gP/KVA5idUC?=
 =?iso-8859-1?Q?HmScEi6MYQ0LNrCY0P4WochWCq1WdDfSl/jCeYz5TLtJ38nVK3UWg+46Yg?=
 =?iso-8859-1?Q?o12Pn6q7ScKpV0iN3l/Z2joYF/19Af5N1oHE1gvZfLSVmDXIoHbYYf5SEw?=
 =?iso-8859-1?Q?XKBnzX91QNGROj0fieoI5UzhzXF0+OBkzvS18sN9mH1Qri2YnfFwhvFY6G?=
 =?iso-8859-1?Q?n5fbq3zMywve5bTYHAnAsiBkKobi3/eqk2uCmM51TAZGPQmGF8smSYl6Tf?=
 =?iso-8859-1?Q?wogZlz3BDaXso3eZx3o1VYZsFVXHhWBWZ6mGEYpwUPBTMVTumxv8A02fEz?=
 =?iso-8859-1?Q?IFmM9ZpejqdVGt9y10tuz2AIKBKBkSGhDjdXw8y50dMyhhgbzA+/1oYTR1?=
 =?iso-8859-1?Q?/90QrR+cNv4DIiFs1k0Kvdo5X4ZxeQvSDrAW5Iv90RxmAShe+EOX1j0/nz?=
 =?iso-8859-1?Q?DmLPEjki03zy6O/smiPKu9q46qzD+MhbHiH6vAES9qx6SGNZjXzM9CQzNb?=
 =?iso-8859-1?Q?RuFnsHCpXslcxdKXdsVKPRawD7iL5qLPwxWaf4vIti2s/RXzAdwrV5yMbi?=
 =?iso-8859-1?Q?+fVOm/PUkqgBZwi57iWgVV27AdMGRk5vYhrNlZfyTKR9pxYfEVLaX3AdAL?=
 =?iso-8859-1?Q?OJqsfVTrh+j2fhVP5LyNUdiW4IwA8XSG+PpsgXx6z+r4drY7KqCcN48Zmg?=
 =?iso-8859-1?Q?rpjDfWWSaUlPxGq+oX6c2/jIW3yTKipDauDyp20WPcEgSjYt8J2pHzhWCN?=
 =?iso-8859-1?Q?beCKO7WlWCuPG0M5sb5hoK+IL4RF9z3NSBTR6CLGg7NhUKVnpItk36Cw5a?=
 =?iso-8859-1?Q?JnlsNi4OoR9ym7j8RczC1GC8/ZWYXYdAzet3oL8cfA0nJHqJWP+d2EA24i?=
 =?iso-8859-1?Q?iqld8huM+xZDerYZAPr0nyucMn27TGfa4tgORFge9QSoE0lOCabd9yJJYH?=
 =?iso-8859-1?Q?PVLyFRBVElLYZZ1TaptJ0sYlQNcwFnyZblkN5qaY7OhPDI9GeCvWgxHunV?=
 =?iso-8859-1?Q?M1rfaZxRocH+Tyov8NT9qIEi+nvcXtCtMLhQ8Cht6G4SrRdu9ncRh7UzVV?=
 =?iso-8859-1?Q?RcLg2zi8nCJfC9qS5E0k/nlg0K0UaJ9w8c/fJJ6IJDS1ZKAZTwKPCDFtFk?=
 =?iso-8859-1?Q?S9IQE6IoLPwlYqcOe2EjOrfRSaJsr5kJLsxrljiQY0rIU7wUelb2lGGT4G?=
 =?iso-8859-1?Q?phJnZAeLjR3spu+Fm74vDdDkEahDxWBNgma7e9cz+ydk8r1zwbtNNx7Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdae2270-4fc9-4182-4be7-08dc3f851c12
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 15:33:31.6500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kLLweleU3mBs6yoBWSOF3YevFGJUzJP26QAjVePdEDps+DQsK1/nU4v1CvsKwDB6Sx70erA0YLvm9LyZn0l6Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6306
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

On Fri, Mar 08, 2024 at 09:24:00AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Our definitions for bit 7 and bit 0 of ICL_PORT_TX_DW6 are
> swapped. Functionally it doesn't matter as we always set both
> bits, but let's rename the bits to match bspec 100%.
> 
> And while at it, add the definition for bits 1-6 as well, just
> to have it all fully documented.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy_regs.h     | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> index 63601129b736..0964e392d02c 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -141,8 +141,9 @@
>  #define ICL_PORT_TX_DW6_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(6, phy))
>  #define ICL_PORT_TX_DW6_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(6, phy))
>  #define ICL_PORT_TX_DW6_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(6, ln, phy))
> -#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		REG_BIT(7)
> -#define   ICL_AUX_ANAOVRD1_ENABLE		REG_BIT(0)
> +#define   O_FUNC_OVRD_EN			REG_BIT(7)
> +#define   O_LDO_REF_SEL_CRI			REG_GENMASK(6, 1)
> +#define   O_LDO_BYPASS_CRI			REG_BIT(0)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
>  #define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
>  #define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 217f82f1da84..78005d12638c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -425,7 +425,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
>  	    !intel_aux_ch_is_edp(dev_priv, ICL_AUX_PW_TO_CH(pw_idx)))
>  		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
> -			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
> +			     0, O_FUNC_OVRD_EN | O_LDO_BYPASS_CRI);
>  }
>  
>  static void
> -- 
> 2.43.0
> 
