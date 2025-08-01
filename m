Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 562D7B184D9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 17:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D309210E8BD;
	Fri,  1 Aug 2025 15:22:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nD2+L1gx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E674710E8BD;
 Fri,  1 Aug 2025 15:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754061747; x=1785597747;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SAkjdAWCJ7NJVUbpa2ygruurDueSHqEUypos+3ftnPs=;
 b=nD2+L1gxVaYsp0llIKVGXzX1LYYQawpHMgN6558a3L/ux2Pnh0y0TtD4
 e1jFZR+O/oUbgaF1nk9BO6hnehAFDX+TnDL3O60lZL0Ae3wZt3igoNQLa
 lbuHtIUp15XqkNInV/2qrq4XKdE7V17aZwjDNkVyO6cc33dMTC0xteBFJ
 YnJvYdBpMUK8VHcyou+ZFf14TVlJhHvmyg0hl0GgiyRq8Kj43q9qCDXiL
 0LgHoI1IQ08RcEEyXLMV3dGjaibOnFeSjsCuvp/UzN48h15YWDaD9dr0D
 6Wz5plAKDlrGfuKMfjm8nNy/Bj/k3WrxDBP2n/d1/FtfbDePikuLoHUpl Q==;
X-CSE-ConnectionGUID: 78VhzkwCQOKFttoyEKv4wQ==
X-CSE-MsgGUID: YA4NjnYiSJCju0OHMvaelQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="74001499"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="74001499"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:22:27 -0700
X-CSE-ConnectionGUID: NmYF8LWnTs243J0/dwlupA==
X-CSE-MsgGUID: kHzj74L+STmJGnD3rCLang==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163962506"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:22:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:22:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 08:22:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:22:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GyfyGhnABqH3vqEgtOV9uL2AtfWV8NOZjWru1VWLkL9OgwcwhQ0NXeoa6BoDpDaAFoq2PVoyiTiXRlNBnzG7IdIIBt6swPhvp2SwD4vyLCLWxvq19tOB5FnYDt2YOTEIQp3SR7jnB4dlL+FrA2qJAV009uAMlE+v8hGchA0hQvzSyKie71dRNoR43IWbHrVcY7NeNwUaXw53a/pNDGX4M4pSfsIllGp5SZYmIKDGzQG42PFYwoNVvlqIvTd8Jhku7qZsuo3hS9AEo/rOLzLffTydoijhNRGtG/egKtLHxlk7FpgnyQjgWu5hoaHVtArRwgGSLbNE1sHGYy00P+KxoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g06IIGerO/OaV1goBn5OkdvbtLPLkdr/gd7kNU4XwTw=;
 b=C6YoZ7DdYHMmFtQRqjTpzLZENKA/r14Ln+KhSpKMcbd7G7JurHnbDNARZWK2yStT5PdRVWZtsxSThpCwc/CHLQE2BsvgEXcYYPXN30LPNP8BWMsmXlvDVR+70lPW/fSsnKjJQbax1Tzwfil5F4S1WznjkyyyEbbFMR+lox//WZzjeFVPVAWcBofL0Mk63FBEseu6nt8QjkwVgPTajpFWxkHGdqIXsavEZEIewhlGPfINLf6q1ZRLL0lNCJN4y7HSb7LriL8FAeIKOnmBUDQgRrKH2bglHKqzakMDHCB2JQNKKqcksuOHF660MxpenyDDSQWi2VXQeENj4EcfXh6YPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4851.namprd11.prod.outlook.com (2603:10b6:303:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.17; Fri, 1 Aug
 2025 15:21:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.011; Fri, 1 Aug 2025
 15:21:56 +0000
Date: Fri, 1 Aug 2025 11:21:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/xe/compat: remove unused platform macros
Message-ID: <aIzbkP65RdbiFI4O@intel.com>
References: <cover.1753965351.git.jani.nikula@intel.com>
 <4507b49ead12c997de4615fa6ec277e666e5226a.1753965351.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4507b49ead12c997de4615fa6ec277e666e5226a.1753965351.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::38) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4851:EE_
X-MS-Office365-Filtering-Correlation-Id: 02d0693c-3048-426e-e856-08ddd10f2689
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zJGk+HNDmoBaYgM1/TjhZKx64LvUsxruZczW30C7VP+uxzkfCI1uL03i53OL?=
 =?us-ascii?Q?ON5UMkBJedTkynD9Jw0Xo06Xlly+TZhcdh08mvHb3wU06nxdarPfHrzN1O7w?=
 =?us-ascii?Q?z+3OvZ4coN2vSWJKyaWvuZDNtNeHKrmM/BaRgo+v8R+dt+96lwGdCueT18q/?=
 =?us-ascii?Q?T0iCoGPiTGXAX3ZgiJ0gJ0BN9+ogBSbIGW6KzsMFOLBCZhUcbNbKiGb0lvQE?=
 =?us-ascii?Q?SVu9cAD1i0wid3ruwE2aIT5akgbZ/JnOayw72f/s6U5Cp1cx4TkYQr0eu8Qu?=
 =?us-ascii?Q?XdtPSgAW+dZK0uiXlkSN0vfDIMNRelSdkYVX6WPNMRfeqrVKt8JtsHDkjP8m?=
 =?us-ascii?Q?fTYVJJy0Svh3tbrIDm27DVl+e7uGxcAPTer4An2HWbpGlu7UOrh05GRg7asB?=
 =?us-ascii?Q?9scgGoAn5HJLkwTO7kzRTDnCdTNeBIefk6XCtnf1rCLzp/jVTySgrlgl0EnS?=
 =?us-ascii?Q?OzCqYxW5tbngmj0yyUGxIA/cShCC9YOZ8SNip4qK5owyT22gMJsAvOM5GDDV?=
 =?us-ascii?Q?GPAUZiElC6Ar36LmmIEqxgQt2kQWIiSvNhq6gL+pMqoch3TGvUxF2OsY9gPw?=
 =?us-ascii?Q?l49ESmYJoYoTwcfTJkcnwXRiyRjZ+HJXdmQb86+Y/Lb99LQUf7Ycihd6gxB/?=
 =?us-ascii?Q?vP79GM3JBDu0/NHLkMfRDUKkPJnstx97vJ5qJV9MmLTikmdGTS2VCd2JHtKu?=
 =?us-ascii?Q?3wmS0glzMZXlVOEygfEJ4qIwLMmNYfHVNDrQe11ZtktjB1V+A4uzU2D8uexC?=
 =?us-ascii?Q?ioI+tJ++nxEI/hOmOraF9kt7aLTjyFytAnpp1wv0wOg+inV5ZpRqxndjp9Kh?=
 =?us-ascii?Q?ID3+AChistxEGjqFoZt056t6H/waBw+qdabNsN9AvCCLYb9Y1WibbhGA3oOQ?=
 =?us-ascii?Q?f4uH/QSEkb0B9HjRHrLLB7y9G1ZCat0ftXZfeKybAJl3cyDU/D2RbWE2afWK?=
 =?us-ascii?Q?2OlE7bHWH9ASEe6/dZNo4DDtP8eaiMIIs4g2XpAZx0gJqPrlKTvIY/BnpelT?=
 =?us-ascii?Q?sAPIdbq3bKcrOJRUem8Kgz+oSDh5xdFGTr45ZwlIpli6+SgZQCcwRyc0VgX5?=
 =?us-ascii?Q?PotQEN2YN9Sxe6o12plULfFVf+2LzfzvZFC4kOhOyGFJTzG6blJzzX+rUtSD?=
 =?us-ascii?Q?TcQM7itrGZ95QPLwPSmH1ZMM9EycI2FWiOdtTzsLOYzupTwGdmVrNucSa9gC?=
 =?us-ascii?Q?Dwul1zSlmjJeb97X0PSALdKom69yptMDWAVGbTnuonTzrTjFJ0R/mlW8GzqR?=
 =?us-ascii?Q?+xcXLU+sLccH2xf0EZYsiEa+GkrvYzwKRWV3pX5qOFfez0uWkD+RypMog0jM?=
 =?us-ascii?Q?CvOE2be3uK0t3q3y+7AOf8KNIzRiYATuri0+hFDTiEoRwlBsCVh/NafhYKiz?=
 =?us-ascii?Q?XLm/dObk5YQplU78tXuSKWscH6fR5XXfxP4dEdp1EX3QQOP3bQGM573jLhhQ?=
 =?us-ascii?Q?VUGGARs32qU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oEhu7DQBssBtD1Tw7NMg6BvBSYQlvDtItntW1C6+ueo8K4/vq+uOVFL9MIUg?=
 =?us-ascii?Q?6SJR30xA+8QPUwRQBmc9ZOv4mTvNWt7CVuhIgj/uAVkndqQK9niA3+uLub6b?=
 =?us-ascii?Q?lMnvpkbdFn9lPZcQ5yGz2rnkDBwo2jHIEnlbs7/RJTMKh9zw7ZGOjM66Orll?=
 =?us-ascii?Q?Z4k7B7Od/uHcv1501gq2bZPD843ZAiQAeV1s3k7LQBl9+pw5F0RR6Og2MEXb?=
 =?us-ascii?Q?TXQpryZAnoBvJTyjo4S4TVwX/n+FonHEfzZK32x/p1KAVM0SxIXFvEj1EdC6?=
 =?us-ascii?Q?4OmMlT7iK8XB+ra1sllffgypS7LMlRjGANHkm3a+0iyyn27ccRMJJlQgRswz?=
 =?us-ascii?Q?PxKKw0isZHbDoT3V2iRaXPbWsz4+yJg7bGILTeyERf/LWvlNs9CA+E6ho39V?=
 =?us-ascii?Q?UOOcukmyo2tsJUo2c+F6cQTpeH4SC7W60GyU1tGmN+MPGQI+x6ZTHKWL502U?=
 =?us-ascii?Q?6B91giZc29ILgBmivDBCDZizIwkYuLlcEecrNmPcIYKSF4R8/Uruz5HB5iti?=
 =?us-ascii?Q?OYYc3/JqzY0lhqxVctiqQJWRhT7oo6rd3ZEiXzc3VjQ/WrLVep1Dqe8kRJGi?=
 =?us-ascii?Q?KTVgxJ3MRKC8wfAkHaw2WCHKil7I0lfh8RXuzuCYM4EzL7sEOakgRVZvCPCi?=
 =?us-ascii?Q?eM72mtCxTo2xbMC3V9hw34Dy7xrk1Hw2kF6fx8z3CVarJhcBKxLAWyia9Z0v?=
 =?us-ascii?Q?8Mk1HlOWeDKtCtLZboMcGeo7+/TYmPi/X6l/VgprZMO6CoGQc6PDCG4Dd0mp?=
 =?us-ascii?Q?cdxp5UZIbXMaRNKLGakwnPHYOeLTOrjw5bBd5njh1mJyTe8zmlEGax43QiYK?=
 =?us-ascii?Q?7+T017u8/zZgP+Mp2jNKxE1G3b1KfHAY2z3brGBkGzMCthRZMZrdvBURXYjx?=
 =?us-ascii?Q?b4IZhygU676i5Iu9OY3wkmpsENHd+pAA5hrv1/0h0i4+FEnauZLDOvm1BRyx?=
 =?us-ascii?Q?/t4ZiPYKx9xYrk41XS8mw+RKOC72OlwIjeNVjJXGTqTcBUb9oZpwpMv267WF?=
 =?us-ascii?Q?DE+tsHv4Jxdz9ZzR80Mx+OSkGXcJwfFoDi1ldP3SwtqYQJCBO3TOKs55siLM?=
 =?us-ascii?Q?CcHphTM1dVK1kr2r2e+J6uhdvn2Yt0aj0gwSXj1iue1Jis8Ltsn8KeLcketY?=
 =?us-ascii?Q?+InfOeIMX8RlHyMN0fWlqs/O6rpbBZz7pEKPx+2K7FjR4gm+NJKi87dmhZYN?=
 =?us-ascii?Q?lqd8EdbPyIlRKo17XPEuqMgK0Bidq/PyWJTEdZgexv6JZVjHjft/VeiLcqg8?=
 =?us-ascii?Q?DFgHI0baRsF85Ry1D9aWMCdWKEFi3etOJfWc1vLNgSGJy+iGIbCcz3cB7OXi?=
 =?us-ascii?Q?yiI6wUeoMUbgdZwLrfN4tRUvBHlt06OI7Q7LA9tmTPYdUJcrHY5a5V2FbxbR?=
 =?us-ascii?Q?YudJK0CEpV4ZJeFKOz8HTAHxTP3+72mZV16FAIPCNhFC+fNLdhLspu+sXgXE?=
 =?us-ascii?Q?NuOFRiwtEROSodlz3ceNh2m0kjBQE1TieZNfiUeNr+lNylUOf0SAJyAWog3c?=
 =?us-ascii?Q?3NPHcfrKn98+8LdYuAWJDE/Fp89fuOvhJMNQHgFVXm0JiCX7jxD+F1Frh0fp?=
 =?us-ascii?Q?8FL0f13D/S0JZ05xfisP1S9j+DjUu1YP7DZSk9nU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02d0693c-3048-426e-e856-08ddd10f2689
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 15:21:56.0358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kefydUBMHSOC+pxP4n2tYE7QL2JU72WIx/xJUDaRRNFMaGncEjCuMKgrkRXfEy40ZUPO0QR1Il55F/4KU8KZ4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4851
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

On Thu, Jul 31, 2025 at 03:36:15PM +0300, Jani Nikula wrote:
> After refactors, a lot of platform macros have become unused. Remove
> them before new users have a chance to pop up.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I trust your compiler! :)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 21 -------------------
>  1 file changed, 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 9b7572e06f34..d8cd66a96621 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -26,34 +26,13 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  #define IS_I915G(dev_priv)	(dev_priv && 0)
>  #define IS_I915GM(dev_priv)	(dev_priv && 0)
>  #define IS_PINEVIEW(dev_priv)	(dev_priv && 0)
> -#define IS_IVYBRIDGE(dev_priv)	(dev_priv && 0)
>  #define IS_VALLEYVIEW(dev_priv)	(dev_priv && 0)
>  #define IS_CHERRYVIEW(dev_priv)	(dev_priv && 0)
>  #define IS_HASWELL(dev_priv)	(dev_priv && 0)
>  #define IS_BROADWELL(dev_priv)	(dev_priv && 0)
> -#define IS_SKYLAKE(dev_priv)	(dev_priv && 0)
>  #define IS_BROXTON(dev_priv)	(dev_priv && 0)
> -#define IS_KABYLAKE(dev_priv)	(dev_priv && 0)
>  #define IS_GEMINILAKE(dev_priv)	(dev_priv && 0)
> -#define IS_COFFEELAKE(dev_priv)	(dev_priv && 0)
> -#define IS_COMETLAKE(dev_priv)	(dev_priv && 0)
> -#define IS_ICELAKE(dev_priv)	(dev_priv && 0)
> -#define IS_JASPERLAKE(dev_priv)	(dev_priv && 0)
> -#define IS_ELKHARTLAKE(dev_priv)	(dev_priv && 0)
> -#define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_TIGERLAKE)
> -#define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_ROCKETLAKE)
> -#define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
> -#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
> -#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
> -				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))
>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
> -#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
> -#define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
> -#define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
> -#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
> -
> -#define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
> -#define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -- 
> 2.39.5
> 
