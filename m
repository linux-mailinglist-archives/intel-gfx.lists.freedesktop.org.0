Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEF5A75278
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 23:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764C910E1E9;
	Fri, 28 Mar 2025 22:25:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8k6EVKF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C0D10E1E9;
 Fri, 28 Mar 2025 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743200723; x=1774736723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0d+xbu3zK6PnHKszdsgfbSNz38T0j7oeCUjWNwzfe1A=;
 b=Z8k6EVKFHdxS8Yo0r+T7IESTOyOvzSlbHbEfd7Ndx04CTLct0ZIYtXzl
 ZECySo+Fii6IP7WCc/gFUQ2h1i31gUNm/zGFbHbxL3QlctgjVL7vaeyiX
 KML6b8LBloHcyDMsiqaSVescB49uXt/fVxsxP/zq3tZ1rA3CHfn33re50
 cVZyTe6ISWqe2yHrCUTnUV96VETtguXMYXSkkjsrK7X0ofBvlmMenubcc
 2Pf8Ol3ZIocXrbss05M/Yos4KUXgNM9VldrlM8tdJ/OXwfRYme1FEfQgY
 dPR/oJm5BHP1DCdrqbR64wPFvftnDEHKAEOGgnAIkXdLFiTbtE8tCJ/JG Q==;
X-CSE-ConnectionGUID: fP0YuWNYQ6auzLiyPX+0aQ==
X-CSE-MsgGUID: rc6cbd89S5OBCIEUs6edqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="43732767"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="43732767"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 15:25:22 -0700
X-CSE-ConnectionGUID: ek7dfffiQyqgOBMGY2NaBQ==
X-CSE-MsgGUID: E1YSkwUsQ0iErU4mKvE/Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="125328625"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 15:25:23 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 28 Mar 2025 15:25:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 28 Mar 2025 15:25:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 15:25:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pnrlo2D38J9IJyMFgZE48EiYOCtPEoyeUDPVpZEq94qtHV4Z9BQgXBVW1A6D66YvAR8Up2kZ1h0Z/8PP1QFejzy7H1jHp7Sji9Me31WhUcophP5Az6MRpUhm/qXgHJzknNqqAIFbSZkg4spQuEIOboBkl/G/qX7ngqTpkqLXm9nN7OHVO761QrEF1RI9ofGu+QQIQfwmiEHXpthlqELagj1t+w9AjKAAf/c8NIz6dLKlA0SPW/RZS25XbuDOx+vMGuk26bGo8xJGHGIetW8yJze4rt6uFvTuwdCU9g5LOethy6oUXrulhUhGd+jaB0WrY5uGvNsD1qzBHTuSPgRHsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vw9rdampAcsP3VGDhs+UOwodHMM//NheV1aoa7TxBak=;
 b=UnWsrGbAhWaHYNjgJ94sl5lAWK0PuKsOl7R7KhcHnhxTdE42ztZ/VbYlOptU+eymdoZ010upUQDvdtAV9vee2vHiXdBwpz2t2kynJdgHQduts+hS2mDM19IdYAZd0brK0F/2kxz4g5p6dzDtoUhrJgYHsemyby3JXs/oM0T2Z0HCQLrrX872KrKgy2lc1LJIYdDk3+x4RoivbEpEGBhl4S7x5FvYc0OxiZZNiElQwXubxDzHDxO5MB/WmPFK9U/AqndzLKZRkjU/RCobGkLqHisxCeXQW6ANWYUckqd6tpSen5cjMooEHPuMzu68BA0dPna/2JlGAnC1p/GhwPujuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA4PR11MB9034.namprd11.prod.outlook.com (2603:10b6:208:567::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 22:25:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 22:25:20 +0000
Date: Fri, 28 Mar 2025 15:25:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/i915/dram: Add missing INTEL_DRAM str conversions
Message-ID: <20250328222517.GK1439735@mdroper-desk1.amr.corp.intel.com>
References: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
 <20250324-dram-type-v1-1-bf60ef33ac01@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250324-dram-type-v1-1-bf60ef33ac01@intel.com>
X-ClientProxiedBy: SJ0PR13CA0026.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA4PR11MB9034:EE_
X-MS-Office365-Filtering-Correlation-Id: 79a5c8b4-5d10-4fd1-73e3-08dd6e476c6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3ovb30FSkVuP+zGxnF9GxYb2NgS/PchjeVnzlwQYswY+8Z58b15+PiLOY57i?=
 =?us-ascii?Q?PP6iz/mnZ0YAexRaLfNEUROBh87y9B2Yvi2dZWw76uz3gWNCCq0BfAZMlxZK?=
 =?us-ascii?Q?a5NJWAdqNexcOSOdE3nWJm/WBGl6sDvVISaNFjHb8Ha9I7nC1e350hRNpzvw?=
 =?us-ascii?Q?/WjedAsVGrdqQRo3pKQGOAgKUHlShGOhTpGwUJDf8OQZRA1NQxxcHUSDdtKE?=
 =?us-ascii?Q?TOfLM5B73abxARoucFIn/4EkrR5ZdZpEeFZZhuZVTHAkiklf4a9nNXeveMaE?=
 =?us-ascii?Q?i/RvT3qu1m1B/sW7Z0MFhUpNYPETgf1dU5nzOkqcx7YfMQ8Y48+XYXZOT4On?=
 =?us-ascii?Q?KYW/x4J0Uha7RwOX8iRT3aTVC4h5lXIt52rgMKWNzmXPVtUpZ941ttMagEgJ?=
 =?us-ascii?Q?aRb/c4aHjkclLT0ru2ccfpIFeOv6OYeEfZ0EoeY6p4mcG34yy5AJNtQryamF?=
 =?us-ascii?Q?MYz/hESUDpL5QfjkJmQa7Lq6f3jyBFOqk3pHqlkjyccouo5Fanzv9lA2neHf?=
 =?us-ascii?Q?zqcaZf7W7LPjmhabOsZM0TribHJgcealvbk0eocjEMa2WCbtLVxkHcZtm+kl?=
 =?us-ascii?Q?6Zg0JcBUn7VMBODUfiFjCQ6tDIFgN3alYPu6EL7r1BIUbGtjxL+AQu47teh9?=
 =?us-ascii?Q?gy+Z+RUIc+aAlbTx96Q1pr9nwAIqAuU9M08dratKo58JL85IfgCmynsVUiyH?=
 =?us-ascii?Q?cFGLzJUu4m3an5/DhMzzFOxk7oB2Jh+iYumelS3BwZyK5Zthu1ShsjIcxKcP?=
 =?us-ascii?Q?F7w8EVxA+uxOPRtiVv8PXi4t0W8AL62cikEMFiaeRqMarqf7RLqrHv7Q9Uzh?=
 =?us-ascii?Q?vYrSYYBPR/ZFM+T4DjHC5GbZN+KIEDVebBYNv5eQcmrMpH0Ef6XoCy/xWLmg?=
 =?us-ascii?Q?UeLK4sCKeeGjyT6a3Ov5AB9YI5w7iDGI3aYkNGdRO31ICPw4X+48mSI4LBxD?=
 =?us-ascii?Q?lqaOij28BRmJ7dNc1sX6E4pZpKYnnieoUmXIA+2dk2InAQ5PeMpqvOKjAMRF?=
 =?us-ascii?Q?UKwHk71b9Onu8S1IwlPj9BWdxCxlHtwjk8iMlRJPJexYOu8KmSXAzJMXB83C?=
 =?us-ascii?Q?4Q7lScMh3VLk3lSAeuVBTHDI0iFFXmM45ocDav/V9uPpjPc7JKqKf4gR/H48?=
 =?us-ascii?Q?toO8/3iqxgUf1zhoMY2spLT1j/qQNXj3Xj8Gopdi+swzt1bSLtleDzDrHlct?=
 =?us-ascii?Q?Bhz6TZ3rqaPVQeh+SGeTT/e2c4+BmvJRy6tTim5ivGrUdKi01Ldht/g3bcIB?=
 =?us-ascii?Q?8VDFAndugzgS2jkZGdwOOPlEUjDnnYMqZb8G5JDw3z9dRg5X3BsQFMuvdZ9t?=
 =?us-ascii?Q?9fIaNzPAAI+6p7u5ijKbjI+TdY/mepbNgSitQlKoeqAdLJVCmND2WiN/slUb?=
 =?us-ascii?Q?mthBFqbU7FjMF7jw5F7rAzoeU+xw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4iB5ifRL6BPoRj9mLZ5hF4SPMxFg6ChkypeAIMcmMnut2PtVgTxUdgbPxUnn?=
 =?us-ascii?Q?PndRhIRoc09mw4eDv/T2Fqps0mPZhdklbANfdsG58Y4K2AVv39O6lFWqpwLo?=
 =?us-ascii?Q?fuQUCgoLzl6UoBgI4N8i+YhNvAJP2Fg0msfTKJOzPjmowSDy1KkB19xhXlF9?=
 =?us-ascii?Q?DDy1B/NUfw8KawRIbqjOKP4VWP7ZXvsKHWqh2DEj0DR9cu5j45IJfzxx/5kL?=
 =?us-ascii?Q?SfZ/ttTCKWqhef5kyn9Fh/sqFTk/R93ejVzaKCm5WrXWp/L1IAR0v7CmWyMe?=
 =?us-ascii?Q?dW5P+cmL3KHOdc/EgcPJOAp+l8dwWoSUdU7Nx1YFmZjdhF4FNO+wp+CPxl+v?=
 =?us-ascii?Q?nlTkqtVgxj0iVwrwIwzKzn2q4n/MkQMuWytaBhfYU60kro+s+GziFMD6udMZ?=
 =?us-ascii?Q?3W7BXiS9y/XEaAydszRM5pyX8UCvgPTHQHWM8Ow9RDbh2nQ7ew4N/8vY4OZZ?=
 =?us-ascii?Q?7AyXZxrIYPfB8aELCBJM55PUbjusbwkwqh0ZNT4u8vu+pG7DP92XCvtvCQI9?=
 =?us-ascii?Q?yx8Jh+yvg2/FFS9b++nWdptieHbXnf54noRSx7lyIDaqTWV5Lmi+Hlz6nGf6?=
 =?us-ascii?Q?cL3Km4fdzmoVehTbhPosIFaIaTOhzAF8rApjCu/aYD/M7vlBTtPphcOBOJZQ?=
 =?us-ascii?Q?k3+4JsOsZdrvqRS8aljkIbRsjiXeo9Xus5r8etU/1jF4CmUuZJO2LtiINYl2?=
 =?us-ascii?Q?7F4imCZ6OiVuN9BZDAujQ1hea/LD/+2+i/CrTjjGGvA3swVZfCSRK/R28jRF?=
 =?us-ascii?Q?csOi0RxHzaQxAWU/XA9dtY3ppj6b3FSkLyt7Zd/DmnnOSFQMiS1+ChMTq77o?=
 =?us-ascii?Q?G1F2i+Wdro9IiVuokxlR0sUMsdhx4EWOD3bsq+fxVesCsZoFA1EgX1w0u2nO?=
 =?us-ascii?Q?JVVNZR+oZKHMMh4wFGmFyNfECNLfDGVUpYq2GC1iQlhWXa/gyVttE2+NTWMb?=
 =?us-ascii?Q?6iQ6z8zHyqxqqYWDzTEmaxYcAjn7mflpI6qo+qMeitAddq4IV/lL02nTk156?=
 =?us-ascii?Q?tPSobxUUsKvoM7vi25yV40tKjtTMgtiEHEW2YQoeN5osKRsp1BWZ1iZ2plEZ?=
 =?us-ascii?Q?GaPIj37KS0yRy5G+EiK12ZqpaiEBNQbZbx0Ja88/YplwHD4cM39u3xkRL7Mt?=
 =?us-ascii?Q?aXaN9Um9zcJlQAgRbc6c9NeBhtVG2r5vVEbuwhNEgR/pOzdxTsjXOJ7I6/7P?=
 =?us-ascii?Q?eRXApddSD3+nWi4f3Qi4OjExUu3l1uU9PMLnTb1Q0YBCNyz8u2G/nB2fRnjg?=
 =?us-ascii?Q?K6ruzDJJdsKDVbuizV4qZfucXcON1dzFWnWKkZoTMIR0jiSSuSY9YbF15y9t?=
 =?us-ascii?Q?NhOH58FoBzPOXQN+IqEgi7ttxyRzVm48DVJOITqF3gEwYI60FXUjtbaN8/hl?=
 =?us-ascii?Q?Av2CUI+h+06ehGRBjbwd+XgRVwmZQIavwWpX/DbKbNM2TOdo7ZvTXUY6XQzR?=
 =?us-ascii?Q?Yl1TMQxoQRJYtnocb/MzOVclpozp4qQJUstwBVliZZqj2bwRPbKSAIFpJ0Fw?=
 =?us-ascii?Q?ylEJ4MsoxZFEUuuqPEGWHsuamsGZpwuirh+a+SRjMDfzM4AFgKN/bqrLiJ+e?=
 =?us-ascii?Q?5NETsKrF2XXlBZmCsfMQxr5xnUau/EdwFcGP80obnRu/M8TztG7dnjs400z2?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a5c8b4-5d10-4fd1-73e3-08dd6e476c6f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 22:25:19.9188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WePGDUP8/AUJZj0KbU+eD3NaU03zntSA5GeZfjJyPJZ+9E5S7nf1DuMPZghKYixS1dNOPvj0FLJ6GKhC3tHPStYIAVlRmm1IOyUgoxY41do=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9034
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

On Mon, Mar 24, 2025 at 07:28:41PM -0700, Lucas De Marchi wrote:
> Some new dram types were added without adding the corresponding string
> conversion, probably because it's not being used by recent platforms.
> Add them, together with a BUILD_BUG_ON() to ensure it keeps in sync, in
> preparation to make use of them in recent platforms.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h       | 1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c | 6 ++++++
>  drivers/gpu/drm/xe/xe_device_types.h  | 1 +
>  3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 54538b6f85df5..236c48d282e47 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -306,6 +306,7 @@ struct drm_i915_private {
>  			INTEL_DRAM_LPDDR5,
>  			INTEL_DRAM_GDDR,
>  			INTEL_DRAM_GDDR_ECC,
> +			__INTEL_DRAM_TYPE_MAX,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index f60eedb0e92cf..39d8520ee621d 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -33,8 +33,14 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
>  		DRAM_TYPE_STR(DDR4),
>  		DRAM_TYPE_STR(LPDDR3),
>  		DRAM_TYPE_STR(LPDDR4),
> +		DRAM_TYPE_STR(DDR5),
> +		DRAM_TYPE_STR(LPDDR5),
> +		DRAM_TYPE_STR(GDDR),
> +		DRAM_TYPE_STR(GDDR_ECC),
>  	};
>  
> +	BUILD_BUG_ON(ARRAY_SIZE(str) != __INTEL_DRAM_TYPE_MAX);
> +
>  	if (type >= ARRAY_SIZE(str))
>  		type = INTEL_DRAM_UNKNOWN;
>  
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 20239d6a2e985..fa9bc0b7d92e2 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -588,6 +588,7 @@ struct xe_device {
>  			INTEL_DRAM_LPDDR5,
>  			INTEL_DRAM_GDDR,
>  			INTEL_DRAM_GDDR_ECC,
> +			__INTEL_DRAM_TYPE_MAX,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> 
> -- 
> 2.49.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
