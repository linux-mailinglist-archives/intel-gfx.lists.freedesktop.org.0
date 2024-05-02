Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2D48B9B22
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FFB10F1C7;
	Thu,  2 May 2024 12:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwDDewpa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66E910F1C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714654464; x=1746190464;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Bd5lu4OdpdC9/uTbdNbXE2xgLfEn42sJOkFDe15sDSc=;
 b=TwDDewpatMRRiQbPUQ2HGQLCFsTNp/sXCC6iEvFmooND6aGfpLRYPCg6
 aLUKbW6/qkuCS2HvHXMFUzNE7UmrAg0TJHzx0hS1ZtMKmrN+CWVhtcSJR
 oVu0QctJrXhNuR+MVIGB/T3TPW2Q5HHnQXB1XPCm0BsIUS11rns+rvg/P
 UwM5f2C2kQ+u5xR1xcVC+VMW3RgN43Cddgikm3l/J/fdsOZgZWzzPwu3n
 B8b4HRXRd8nglBwv/vbaMHYM9xm2sWo+gtwTWx32JxtTk3yPCqBZ/wIJs
 KKTWFsNKMoldP4gmPp7E2L0CJrAC3Q6H+cCZ7LhprWPAJygsY1MsgFHso Q==;
X-CSE-ConnectionGUID: RAt+0srhTbySK1+1iFOK2g==
X-CSE-MsgGUID: qLW1sd97RJqXlhUMlrWehQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="21034430"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="21034430"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:54:16 -0700
X-CSE-ConnectionGUID: c/1mCoXKS2aU8DxkBB+swg==
X-CSE-MsgGUID: o5EouUvBRVW9H+JQmW2MIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="31727273"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:54:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:54:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:54:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:54:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5kz+PzB4+Y0lRkgIw3zmmFdXenIsFc3JfAP7+hkitgfEmSBvrK3uKnyFRTfIS0SzMB6ZRhbEWQ6LWeL1Q2f5VHD2K+AMsj6wb76c75JkzjZNpLmmvew6YdWzoCOa9iloIEI+azDjSrupQdC8nFwQrNfrN2cN1fCAqoMwkwMKnUlku/47Tm1ZE+j6v1qudir04Ur7wiVPDXyb1Mr/MZ8yN3O5JWOCnJJKLV2tbSgXHgEuEY2xYeBnW3kVNpJBEcdShoUZyCXiueN4OYF/B44MjA7mzwqYqrdDN8UzID/vCdf5oF/zkPgxsJChm5QLq0JofJ8yhFJGX6KndeMg/Ey3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=270lLRpKSQ6Ish2gUa+yaW9dw6pTWn934cG/JKOVqqw=;
 b=H94xidZe6ESkRmDKwgkUFkDdDO8BUqWGbEYlnYgYRsR/CIUMKB0OipLgGe9XMIi29r1Epq5UnUb0hrAU2WxR/Pl5+y8gpYZo1YD16uOvW9lHxyfp2RwIBpOekHMNNaGH8Eu/x82G1Wd+QKs+wDZlaLNmsGVWd8deHHscHtJ+ko5J+gNOhgiOiTY454ZRMH0HVxzlOI5NRpTwa1NbPfBOxBi/qbKU3y6WDHAFz+Q2aSmL6Hl/C3lolxcOzi+/R+xtCtaYtwRGGBFFhcLm8d9gucGrqUqWoXi+gRAq+BnwluDpUEu3cRgOCDAmivdS8MLspY5OmK84sismjxhBKyYnxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7405.namprd11.prod.outlook.com (2603:10b6:8:134::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Thu, 2 May
 2024 12:54:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:54:14 +0000
Date: Thu, 2 May 2024 08:54:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915: Pass the region ID rather than a bitmask
 to HAS_REGION()
Message-ID: <ZjOM8xgskaxCRrf0@intel.com>
References: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
 <20240502121423.1002-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240502121423.1002-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7405:EE_
X-MS-Office365-Filtering-Correlation-Id: efec86b7-38d1-4fda-ca2a-08dc6aa6f83d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?v/xjCk6/wokNTvAVIemCvQB3BUdYcBlEPMPFzFSiIsHFZTFFxDw2WIKFQ4?=
 =?iso-8859-1?Q?sFvdyOVUB68zCfJ03oYpstAwuB9mDgAQ7N2pa/OhZQg+/q7XXRewfbybXf?=
 =?iso-8859-1?Q?035UTTRwKY/eVIGdbidpgoaQWqqTQq8JukL88dm+XO179jq1eJ434bbWHh?=
 =?iso-8859-1?Q?5aBlpApvEfM4uLIgcRdxjplJ2aawCRKSl80EYq7Wj+U511lbfPP+U0uM9Y?=
 =?iso-8859-1?Q?/jBbXuBB1vbznpq3Nlag0aQnEYi9lPPndYoI5nVqoJm87xNWvziRizJK+L?=
 =?iso-8859-1?Q?4rbF2DOTJQb+lgk04GOHQvTE8HOViAXRzp2VWSkvMWKIoGF8tn2BKf+GkN?=
 =?iso-8859-1?Q?p38VpkzokhfJRbp6L8fwoFsyZ5vDLmBdecHnC3SiB3FV5+NI3Y9QumlPKa?=
 =?iso-8859-1?Q?/joFppwusbD+nwrBUbMH9U1WOnnKoxp9SemmE8EZ7lO7uMD6Cjj3KLHt+4?=
 =?iso-8859-1?Q?2PZFWhbrY9y6ie1RWw+BOEb3gFThV4qkQ3qJSFwu7rBSJXkkXGIfhd2UmJ?=
 =?iso-8859-1?Q?2gI+iVopQMPVgkR93uZxNzmXhsrzZF6SaqUB3mhm+57nyvf/DSOtnuTmGW?=
 =?iso-8859-1?Q?To125r8H14kmumgBrzjxln0uFiAKaDOhFWGByVrQ/78DUdOMbQrVkyU+aq?=
 =?iso-8859-1?Q?qUbcY5C1C+lD+jVtTFWV5e6FelOLa6k4J4ouAcN1ukqVYV7hdYRhYlPVsK?=
 =?iso-8859-1?Q?KIbUo8HRkHR6n0XhRhG0UmGmvL4W8y8FxEG90gj2YuesHKMCoiamk+D04T?=
 =?iso-8859-1?Q?OQMiLg/fFvTH1VoN7J7i/0mYN1Hr8i5ioBrZv3ckFCeYfS9UzcjblWrYn5?=
 =?iso-8859-1?Q?SDsbNY1NaFPj55RXi9VzPNkw1xUBOS+9DOeccg6dCZtZTFQ6WTolb55jpR?=
 =?iso-8859-1?Q?CvH7zaZux4FtE6Upm4NTeePwcI7FgvYnRYFK3Dr0AGvm/ucxmDywpZYoBo?=
 =?iso-8859-1?Q?2LXhDtKiQ6qU/ycfH1KsjRLO3+XXO8rL/zS+/dgKMAqPyHVejZCtL5m8q9?=
 =?iso-8859-1?Q?MewPtPLoTEdhxEc6XAhychfsTk/nhb4gy4v2rg2ZCW6+yxI1zpcOd3mCgB?=
 =?iso-8859-1?Q?4KjyYQ6S/4CqYHc23GvgCfqkp0CNawutnLdSQA07ZLTSLht9PwXRKIIDOJ?=
 =?iso-8859-1?Q?vUfUQV7KALwphuCpQzBw3VTqbH2dPNzYZdTti1usK97yp9SM1iE5wy4n+j?=
 =?iso-8859-1?Q?XM6YbE7/DqCIedT05L7ZnbsVzykZZR4QdZu0fGmK7tbWxZLg/cdglXAqPc?=
 =?iso-8859-1?Q?9PKnQ6+ud0yYUW4kwc+13xq1wlTA1uh52BdegtLX+1IbdifPFvCSXB/2dL?=
 =?iso-8859-1?Q?dwLgUW14VLq8r50a6HbKfGcadg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?p3HxffN5A596FRc+GQTA5nRaM7IelFFM5gtqTL1zvdY9f4fu6BNZEWhWE/?=
 =?iso-8859-1?Q?HzUsifFXf/moui7Ximt2MC3kVCABfeP2HbD+zG9jvmjFRdsYExcSGnEygu?=
 =?iso-8859-1?Q?uxzpEgNWA4FaJuVmNcVuoP6qsmF7dRXAmmkXOQSP9r60EGXnLoxFq0PB+p?=
 =?iso-8859-1?Q?k/3t2YZmO+Llb1dOUKeO1mO9uQxNKE72rJzuQw0lmwS7PJlBrOlDEgCrhT?=
 =?iso-8859-1?Q?HhWmCmWkI+eZcMIOO+r5jYr2G7Y5uFtei2VxqBfOiVWEQ9zAktrFjyzCez?=
 =?iso-8859-1?Q?7Ma5booG17NF755+ZOPgwtrGaKN9JNnxdOzbIUgPE5P/zjYvKmq45iKFyy?=
 =?iso-8859-1?Q?kqEdhtADyTXHOhRuBw9bodIYhIWI1/LY8kuyEInxFx8lvllOK1L+o4VvwR?=
 =?iso-8859-1?Q?p/dxTM90zOEwn431Hcbvov9tmvT2aLvd10jXEoS1Nt6Wgnt92VQ+/96OK9?=
 =?iso-8859-1?Q?SQzUNR73QchYSUS47wxKJ7Ui2sRpMXC/fw62cJv+3w6MlvpQYFszPOt/MD?=
 =?iso-8859-1?Q?HqX90yeu9nEt5k3/2C5ESS0CyP2AdQa8ZJyjYX+hVec6hADKcO+d8bE2dg?=
 =?iso-8859-1?Q?bmCa2EomcxC/SY59LxR8MiLNCHRrV4S0vNKvaWYXOu+L0rgjjK7SEIO7lI?=
 =?iso-8859-1?Q?KqgZR27L1IQQ/NeImH6ZN1Fuu2to0+tSjMbdVlM08xZ9WsqkDL492PYaha?=
 =?iso-8859-1?Q?utXHPDUcE5tBznev0YxyqMG2Wf+qKeenYTSswFF8vqzVLCYO8iQBxxdspg?=
 =?iso-8859-1?Q?iv8dTX+csm78YeeXSkRtQJjBMHNiMNORoRT5W9qnCRWdpNxJEHV7zsuVhB?=
 =?iso-8859-1?Q?FcOelD4CRRf9hE+HWdGY8Ywb3syacRFcejg00nfz/NuS1Xj3KG1Foh9OdH?=
 =?iso-8859-1?Q?ZTMDI0oATFJXFBIlC5csN8ORyZgEVqICxhkTzheKKQ9UZ0OPMhPsDBJHUG?=
 =?iso-8859-1?Q?ESWorOHxzTSSZopCOeYnV82hw8CoL0G5fq2VrvbjOymLULJ5tGqhbwEA3K?=
 =?iso-8859-1?Q?ImOJAE3FqyGHVnzBHuHK7VYe0FxPDkv/G9TGyHCor6l2Yel2zC38kUMt+E?=
 =?iso-8859-1?Q?VTsidFBRNonufeoR9w9kav0H/uh2/fLjvAJATrD/VXwNjBurGcPFyp+TOe?=
 =?iso-8859-1?Q?IU8hAmzR9/5VFWIxnpYe6XjFetaoyHFPM/hb3xmty1ZXpuP8fsmMc8Xdy6?=
 =?iso-8859-1?Q?O8L8cpakqYmFg7/F42d8wj4CzhWBWENCus7XeDxBDbxBuryPebseDiYnJO?=
 =?iso-8859-1?Q?baER9js1j+aKCMaBHxnDyzccCAb1CYf/HGGmq/bXjK1pnQ+T4k1SJUlUnM?=
 =?iso-8859-1?Q?sTldJm0RgQbKDZdWErNAKA+GJvrJ+huP8gHlZ+khTD4ptiELZrU9pJ4w45?=
 =?iso-8859-1?Q?DQX9d9x6ww7As2aLNqFpigEHGwmaK9hDpRp0XotF33DZhfzUf/lsIoFsUP?=
 =?iso-8859-1?Q?1xuWINmF8SevSWdJixiv7Z1TC/IU4Sd8FI5ZH8J2wsDYNsRLY90wQxXa2u?=
 =?iso-8859-1?Q?1ECy/+zXh4JUNYAU9Nr+4t1vFBuWLTPp+6WfT1ZPPqIyKe1MsQU8ReO5Yv?=
 =?iso-8859-1?Q?pO4p1KL757DCViDkIbNuGbvRfCYnT8HCTw6RTy9l2+bd4LDMR5tFm29ZgH?=
 =?iso-8859-1?Q?teYjQWg+OiH/goqcSyrP+zyC2TMe3hdoSE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efec86b7-38d1-4fda-ca2a-08dc6aa6f83d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:54:14.3592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gL8IvA5/ZDGiY+NYBTR1kg1EJkLkUIdMTzyzvou6xmbTcUFOO24/AJzjCT013G90qEXvUI39zp3giwts9SpXMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7405
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

On Thu, May 02, 2024 at 03:14:22PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The name 'HAS_REGION()' suggests we are checking for a single
> region, so seem more sensible to pass in the region ID rather
> than a bitmask.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c         | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h            | 4 ++--
>  drivers/gpu/drm/i915/intel_memory_region.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 5a7ecf823ae6..626b166e67ef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -105,7 +105,7 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
>  
>  	intel_memory_region_set_name(mem, "local%u", mem->instance);
>  
> -	GEM_BUG_ON(!HAS_REGION(i915, BIT(id)));
> +	GEM_BUG_ON(!HAS_REGION(i915, id));
>  	GEM_BUG_ON(i915->mm.regions[id]);
>  	i915->mm.regions[id] = mem;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ee0d7d5f135d..5cae1fe42c2a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -715,8 +715,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
>  
> -#define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
> -#define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
> +#define HAS_REGION(i915, id) (INTEL_INFO(i915)->memory_regions & BIT(id))
> +#define HAS_LMEM(i915) HAS_REGION(i915, INTEL_REGION_LMEM_0)
>  
>  #define HAS_EXTRA_GT_LIST(i915)   (INTEL_INFO(i915)->extra_gt_list)
>  
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 52d998e5c21a..172dfa7c3588 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -332,7 +332,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>  		struct intel_memory_region *mem = ERR_PTR(-ENODEV);
>  		u16 type, instance;
>  
> -		if (!HAS_REGION(i915, BIT(i)))
> +		if (!HAS_REGION(i915, i))
>  			continue;
>  
>  		type = intel_region_map[i].class;
> -- 
> 2.43.2
> 
