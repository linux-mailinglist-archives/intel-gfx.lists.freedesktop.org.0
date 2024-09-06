Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D181996F7E1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500FA10EA8D;
	Fri,  6 Sep 2024 15:10:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OoMDwTxD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7436210EA8D;
 Fri,  6 Sep 2024 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725635434; x=1757171434;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=b9+3PfGkx3zSWfCfzM/bQv1KYbzzaXy4cWIFJButDiI=;
 b=OoMDwTxD+eYCZ+rqtSLDs2JMAG7KRVnifEmxCTUPkIe1Oubt3acbG2Um
 mnXIdP4+/BMl7jwbdb98hMO/zVDSDEzXAYFud2J2nurp7plKqexKxw5SF
 1FPdcNIIY6uJHWCy6yhUBvWX3RvmL9AcG6dJpqrnYjd1LTixLNhYlzQNp
 I6YGtdAIfV9brF9YAkfvumylAOLAkmMGfKsoPVjtYx6WrxcTIinmmpD77
 FHKu1xv6erGcB1jyZI0jcU8emV0OFbGCcTgelzJ6ktKPVXZo8BzhtQZ23
 0CcxLllEY/+uWKxpjBalTiL/pfcDvTtFy+QGTJsN7OHQoESc/S8AQTL70 A==;
X-CSE-ConnectionGUID: rlLzG1zsRDuQ5eLOGfTwGQ==
X-CSE-MsgGUID: N4c4LbtaR3OlpvdXK5zXQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="23955832"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="23955832"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:10:33 -0700
X-CSE-ConnectionGUID: XOHYavF2R/uCbuhczvPFXA==
X-CSE-MsgGUID: mokLuEDgRoyUc1xPpULxnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="65668515"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 08:10:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 08:10:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 08:10:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 08:10:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ccI5RGZWgtDQhrTnceb3mrsx+5qOx4jdidwQuDgTFw8mFmgrgUrKq+52hVMg9tLHoSEqxwP8wN08MAzNGl7WwtmMYjHGc8b3FZ5h0UD6xiXIktxxKUP1U4lti1M6dhzTnrfqKJf3BugxsPMqPOVfMkI8o4+HcEr/agS4E+6K6wSnAl9RxnOkSfLFYRH67ERBBnS4aGN2FpNTmDtzmg0n8S1kLf7fJRdJwIhqa6U62o2PCP8pZwO4ZabVh83J42rqZoqZwjvcjCcorke/b4KrRVDs9tFTCkjWrE8zdXZDaHGfVGClWNMfsAr1zzDMSiiypSp8bG7xgOsdLybUoi4Y6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jz5cJ+lDMohtQIa46u+Spq9/4DPxrxp0yquR3l4Xou8=;
 b=MVNKC8HjAvPTQoxzYF7mMX8xmKoLnETerCG/2uzxxpawXhcZHnHKHczYkRkssNg6LBuniZIBOj4657576zVqbjz55wS/sNGizVxtT12iZoHmfaEf88byyIzPOwmMJF2bgyzVf8lObUIJUvoaNLJYzqegVSBG2iHYkjm7y5tUPG065orSUqQ2zFFrLAR3Tq/tNkmOSgMCJy2noWRppbg++Ii6SnEtlGruRZu6Un/Oigte7r16zeZJLhMwFkGObU/0dFOEj4DolMqDgGef/Df6dpuJAet7HQu4KZNX3twfwXStDGOCvO6HMm9/IATa7Bnfa2S9tTHunkPqARrlrd7OyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 15:10:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 15:10:16 +0000
Date: Fri, 6 Sep 2024 11:10:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/6] drm/i915/cdclk: Add missing braces
Message-ID: <ZtsbVORgJemuCHZ8@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <20240906143306.15937-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906143306.15937-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0164.namprd04.prod.outlook.com
 (2603:10b6:303:85::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7502:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fb4349d-e1aa-4f89-573e-08dcce8602d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?RV9QQeuKjgDHdH9zAVCEb0CeyNzprQ/HJe2dMO0Kb8eO163ZpPD/aYYcPy?=
 =?iso-8859-1?Q?j75KEFqmTjYwoLRoIpH2jQ6vMiYAkSoeVe6DGH5+EVOOA981CIYQV/MG78?=
 =?iso-8859-1?Q?aVT/LRrVhOLZFAzCM2P8noUF/pjhqI7qgM7CcCKOT8SCX745l4+k5NwCui?=
 =?iso-8859-1?Q?2Hi3G+yZiBhsmEfqYq9IGe1hvZWjsWNRLimQYH4Rogt6lsg/Pky+NIiW5M?=
 =?iso-8859-1?Q?YqkAStGAaPF9o8jMqw0+SMP+Dbt02okB10XWrI4SP7mWNhQ2vplBdxP4de?=
 =?iso-8859-1?Q?87JfvXtJ8aHNmWBnqcG9/fhgoslan5z5qVsFgDeJ6PqSa9rQVJsjR7j7gr?=
 =?iso-8859-1?Q?2EjsbLDeswTgd1WUUvWBa2maWP4cTNwAM4zGtQCF4FjQHCcxYQ9x8bivxQ?=
 =?iso-8859-1?Q?v/JQy0Q+Unw2/IggzsLy+4tdpgiK6DFBYCN1bR3TtO3I5s90D6LFLdXyNe?=
 =?iso-8859-1?Q?f91rXB20qhbWrBug0r0iFnz7wHw5a+QEop5cMp89rdE9uTOUSFVo2CBZix?=
 =?iso-8859-1?Q?cmy2+csR7nnGi2KklRhEqGcisnsTqZ4DwaX/9UaggZIND1YtZzbpDyzp+H?=
 =?iso-8859-1?Q?5L7ElLpgogJaUTMz+ByEkNaB7Xi1dxMWZwTDfFmydEHZms9ITWU1etD/i/?=
 =?iso-8859-1?Q?mbnlbrjHeEYnmTk5Wjk6qmJF8/VyXHyAo60Um+2ntu1Sw+l32mGFau8iiB?=
 =?iso-8859-1?Q?3fmLCs3TwQzLCjE0IuRDXq39ozFnXq0IPNoQVbYEGP8vhRg9Gpac8JThzW?=
 =?iso-8859-1?Q?m0bqOENLCpcTubpfhNhM2PsszJRvg4SYBNTd4Yg3kqQcm99e5UIl3m7ini?=
 =?iso-8859-1?Q?OSlfK1Hpl6EThgBsD0yw2bZJc1Qv8japcbj4y1YybICArO8a9euyKIRplX?=
 =?iso-8859-1?Q?rFF9uLqcN1vXcBgVIVLdaKeZz3XW2p+l6L4zZB3u6ivtYMwLtSilHXSKpR?=
 =?iso-8859-1?Q?ArhUvO/JMUfatCWQ1uLt0CFYa4WH5fBgE3/TNbJXxKtDp+zVNOpKBY3czD?=
 =?iso-8859-1?Q?P01QooEkomIVMEojA7CcNfyOSSVpcAzPY1F4AcoavXhWQWH73GKsjW72GD?=
 =?iso-8859-1?Q?FGi+gwOh/LAS/HuwirvV+4jnaS1Cr9fX631kixVeV1UpEW7udrBv5ueDZS?=
 =?iso-8859-1?Q?3B6ZkSJ4pICnxOCrWA1R9udaV7hAZvB++MIc/DgiYMbsR2n3pQP4RliTLP?=
 =?iso-8859-1?Q?m4sXX4BH++HaM764VjroUuAURE6drAkNVowrI70UTcaw5FpdtYmo18Gc2r?=
 =?iso-8859-1?Q?9GtyCtBpkQiFLBNV+sp6OJydNif3xPsSlAbOzZSzObi1k2A7yXZnNrp09t?=
 =?iso-8859-1?Q?lLnOfPXvI90RnQGJDaoUtSaFqSaXyF5I/KtvGhJ7gNpH91D7Dz+5KF74TQ?=
 =?iso-8859-1?Q?popA1dZvrvKSXGcuCsmJDtRGYdOhLBFQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?f6pV+g/a+i+B1os8dJGa3TBEMzI03/PbuNkZJZK+O/Gj6N/oGIymmbvz82?=
 =?iso-8859-1?Q?R8eYyYsxYWprtTTS1xmOZPVrcdcCizOIN4WkqUoOAuGmFevoDxDUv4nKuX?=
 =?iso-8859-1?Q?87Wp8fluOBOVLIiXTkDjO2sB1TpuLFtgMDtSPNzPgqXqxeSAggNuRWBBhX?=
 =?iso-8859-1?Q?ixlMIwg0ygJXalXlnkeDuwpa9/PVrd/atp7uAK0H4sWVb8YMzag5bMKyE8?=
 =?iso-8859-1?Q?Ix6QdlcYD6raxF+wLjymK2u/zOvK+NUnJi39dFO33hqMSEz+5T7yvLxzZB?=
 =?iso-8859-1?Q?AyZJJ2OPQIOrR/Idr+A2ujLdfZM0rkrMt+0WmekQjgFUIBqpw390hhNOhc?=
 =?iso-8859-1?Q?nx2Vh6yQY6uBY6lg8Hq1dgnRvlx5DiXTKm7P716SKktt8kRnTH5qtMFl3r?=
 =?iso-8859-1?Q?vnCgPpGhnLxjJnsJ0B+zrMUgp1BRb5Q0HkaF5qBDIkXWn8NqsorigKuyIn?=
 =?iso-8859-1?Q?Eg0xaieLG5PEpzalHQ7KriMQvCG24Vr8I/VxCQ4hvZWVZXcnXgCVbvjIm1?=
 =?iso-8859-1?Q?4IsO99UIWGhg+fH815zCSRRkW6qnsPBtKwZd58sxJazumcKKFRs2cK3x8/?=
 =?iso-8859-1?Q?oFuZdJpoAMSWPlOnhNV/Xb4Vxnz7VM84H3YWGybobFELyDO4l3+QW7aM9Q?=
 =?iso-8859-1?Q?wzkKgeJtqD3j6e+jG5OA4ZxAEhtXhIfeeEewfTnPSExFUZ92gM5sAWV/jp?=
 =?iso-8859-1?Q?gunLceNlXdwnjiRhXLnmNWCTFgD2DR9hbDiheyzXGR/x9ywBJYlbVLXdNw?=
 =?iso-8859-1?Q?ICJ+3QDM53CqMHAu1ITv53CtIUwy/mRezt046dYL4YEYfUWsd/AlWpdxcs?=
 =?iso-8859-1?Q?r7tcF9tjo2s2T7JZ4p5cF2xfQZU/BreZjVVlqLYbHy2xfIBFfopDmXnGz7?=
 =?iso-8859-1?Q?D4uxpLTxeou/ane+1DrkGbw+J0dvRRFi2MZfgeFUDvTr3rjwbqSOVxqa4i?=
 =?iso-8859-1?Q?k5OTz9hPsRUKVY7z3+JbPW7Nsc8egPrMVUCRwdA+ebOeDBNWPyFDISs5Lu?=
 =?iso-8859-1?Q?Id4oYHZLYZKr4W1mHFoCU8YGvneqltnRZ4PHqcvN0+Brub3EuCGCryTGEV?=
 =?iso-8859-1?Q?Wn59UGtCFTSCvIVaAAS0ig4hig5H4ahesMCmclg7kFKK3YCd4pkd0D4ss9?=
 =?iso-8859-1?Q?01jJiNzYAkEitmJrNdfffG+lU6RzoB7CE76AMIgB+Rilb2oiMTF/l67WCm?=
 =?iso-8859-1?Q?x9YoNWKs2T/goq1kPI1t8YHnKsRFehV2RvsL+mMcfNs22CTEWq73ct0JwH?=
 =?iso-8859-1?Q?022nixPikgDZ5/508HCK0d6Hnj/OfkmITtojvDTgHUZjwWBCawV8o/tANM?=
 =?iso-8859-1?Q?rxlhS8fxt7lIioiwTcKXyxWbnInylPilCWDYUjFUWSCm461VkzJODbvcVN?=
 =?iso-8859-1?Q?DZfeQTsujbJo197JOHNfzJiFz/pnChAzozb4OKtAPZKc+aU0bOkobPegsf?=
 =?iso-8859-1?Q?t79JCsZcJLHM4lJyyZpc9y/2gcyuIq8du8/0GpXxzPrQz8LECJB+vhALVh?=
 =?iso-8859-1?Q?58HsJpRXCEJjiPwsYI6U4IXjRE0dlY8/QMCmssChiBKdXK58XI72oIOnew?=
 =?iso-8859-1?Q?T3tnPdTYO/ShDQ4l07SeRRwSmcby6OOv/BXOBmw6896DUwlTHEol1r6AM3?=
 =?iso-8859-1?Q?SU6M+yOLy43nM6K8MBnzqG/uep/iLa0BMpezsseRlfSjmDxcsxXY+mng?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb4349d-e1aa-4f89-573e-08dcce8602d9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 15:10:16.5302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /R5BaBbdrDpEmY3ufNvWbEQrfD7ChaVEIk4BwPYamM9xKGB4tlkbg2P6YznH8ESORfxPgj/iRwAdsbAqsroMLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
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

On Fri, Sep 06, 2024 at 05:33:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> CodingStyle says when one branch of an if ladder is braced
> then all of them should be. Make it so.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 66964c7d2a2c..9d870d15d888 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2053,8 +2053,9 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			dg2_cdclk_squash_program(dev_priv, 0);
>  
>  		icl_cdclk_pll_update(dev_priv, vco);
> -	} else
> +	} else {
>  		bxt_cdclk_pll_update(dev_priv, vco);
> +	}
>  
>  	if (HAS_CDCLK_SQUASH(dev_priv)) {
>  		u16 waveform = cdclk_squash_waveform(dev_priv, cdclk);
> -- 
> 2.44.2
> 
