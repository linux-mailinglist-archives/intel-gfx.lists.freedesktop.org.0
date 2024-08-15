Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE8D953A90
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850CB10E130;
	Thu, 15 Aug 2024 19:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d2ulX0cm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1599510E130;
 Thu, 15 Aug 2024 19:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748836; x=1755284836;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zUtU/WrmK1YXMV2SsMXdW4xe0SFzNXj9VBTEPS0E9io=;
 b=d2ulX0cmI/QUsUVe3tzecxOY7GvCLf7Dai+TH7s0t0w3ISexVK8z6e/8
 FUgw9hjegEysXOzRAvElyk+cgF2wdw8hhIe4vUe5uLAQkwHM/0Rvf1jM+
 1EomxQMJf2MlEq8jRmntXyxFBetXEMWli5ndxepVF86Iqlz1yq9lmKMQl
 LA7wxHqKHM+3TyHWoMOGLBHAbyuCap9OmjoGviPGX8G26LYU+kFOSXd6A
 5NfmomRdnJAN8ZV5Bt5jcEH9tRWAgJvA4BagdA5UGjtWgsLyDWAzMh/HW
 Kmqz4F220C6hjtxDcKiTzpEyiT/8oCPFNV3ur9iJ+c9h5tQfPZMPFd+B/ w==;
X-CSE-ConnectionGUID: WSTi3DmiS0KCcYMBx/685w==
X-CSE-MsgGUID: a1IHQQFMQOyq3KkIFmvPPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="32698370"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="32698370"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:07:16 -0700
X-CSE-ConnectionGUID: Nynp9e2KTkmrakcNgb2hwQ==
X-CSE-MsgGUID: 8kgV9KiWR9WxaSuB1W00vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="90226442"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:07:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:07:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:07:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OKCOTXlKUOI0i0Mi5wlhBYxwlgkcsUY6eDhQe1Jx/nplnpoxYGic9uVJ5+Tjl9m3BeBKgESpHeEI4D5cFwkpQj1SEphM1IdS31+zn91fqsNXLyv7vaKNFhJeTAl3mMeqBRfI9zrKMVKcdm2Rc8jdq4kopZMcc79D9IYOMmUu5UXpwH14r0ZSBuR3swilB61PYW9Kx+c0ZPcCiqDM5SvIyGd4q0a397FZ5+hf7GfMZmhwVlU6Hg2XJrQOLbk390pqQZSnpPHVgobYmNlAow73ftswxwQjoAJQ7TPJFEjCwZSsx/u5xn0jQ/3CtY0OIorvaUSABcQ3mW9TNtsycfzzkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4fwevtgyudb2eYdthstFWyTGJZ0BvlemTmxuRu3jEk=;
 b=NiViN+rsuPHa7Tr0F0vr8K0EwVmPjAlu4YhObWIBiXgOHAhEwojXuhjfohThFixLiAWYngQgOVDTYI73oMggcvIC5NxS595RqMSdBv0/SvM2gvEVxk/Q4QnOMcBt5xvj/UTV38cvoHuro20eWaf19rqhBLu4iT631aBcbg1S2rkbZc1UuVBgnpsZ6HVFRDkBsHs2IY3DIgqdjXZSnxeX7b+5ILAGUrAN4idQ0A9UwqThBR1n62W9mhBSFnKnZonweQucNp5oZmX1nz+3aJmXdo0Clxa6uF7cGZWZjnOiURUuTLHyJZb0rUr+GshyGVWc2xu3K2pamIhrUl6YFu1Wmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Thu, 15 Aug
 2024 19:07:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:07:01 +0000
Date: Thu, 15 Aug 2024 15:06:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915/display: convert intel_load_detect.c to
 struct intel_display
Message-ID: <Zr5R0th60MHvM-Ad@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-3-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 79865d0f-baf5-42c3-cf72-08dcbd5d7139
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2bqGfmlCrES6BlJvNZBO1hj2geqZF6ftztDtIbxnlJmp4joo4OHadoboftcs?=
 =?us-ascii?Q?4PE25kvOweI+zcJLrPOZK6q68kxkbHa/sNTOV+ZzqUjtzO8jKaDrD7rK+2/1?=
 =?us-ascii?Q?YR+RgwAg9fejiF1aUf6foalNcjH2mh2vEzJo8zFcg9ltFudIrrf2HSFCPs6H?=
 =?us-ascii?Q?T7kmFhuaJJ93Q3QHuc22oLOJanAewt4dtQeA0aIw5jnowefAv3B9nvmtsamF?=
 =?us-ascii?Q?MpW93NfrURbEe4wWj+0TSQNJzUcR4c5FBrjOXvXwL/eoRuCtWV+/XFvDuIue?=
 =?us-ascii?Q?/pCuUvn2ksmGFV1SRDCPxltx0TbRk7LsPzq1nfzU+mCL6IES73x6lfwHyc0S?=
 =?us-ascii?Q?nAteXMYu25tmayouIGy2+X5Jesxt8L78+Lb2ZDJFWA+AHNJTY31og4zWofoj?=
 =?us-ascii?Q?G4dIDL3iWVZxADs2SuOEOn/c0aTyDiMkzDBTdPoW0Ka4YuhjTxKlCxk/1rlE?=
 =?us-ascii?Q?NV56HpuLS5+WqNCPLCvU91zZaFl9H7/ECSLUXi+gZ/xLaXwZ7WDKY9RjXQvc?=
 =?us-ascii?Q?DEjVXW/qFGpgoPYeecd21svYvlfbtIzVVYadRgbQqtbg/dwhWJD8VjsCVQY+?=
 =?us-ascii?Q?C0P4mDKOTs+IryQEAzqYGBFhgVF8QvbJHGMcnPTgtJpxqEG3nHHgk3UcrXSY?=
 =?us-ascii?Q?l9Ev3eTHCtgnVS8nyHcGXr8+3H4vBSAMJyVbUwtVajW9hpHC38hE1y+4OO5I?=
 =?us-ascii?Q?IWeNV9tO+LB5Rrh4xcLjJ+MtZQaozkSxF5+L4weWU90drfkVoN0qrIA9CrjJ?=
 =?us-ascii?Q?v1bQkAmT8tE4eh2aSveUSux3Vy0pS6jMXXbrkamcKsBPyhR6omKiQkqahoXd?=
 =?us-ascii?Q?sUDCXLxCBgJiiEpGe+iVbLJeciyni7+ovSmhCCZ5+eOk38xaNtWER6dJb0zb?=
 =?us-ascii?Q?HTfl6927GtwbortfgWUGBhNAUfi+sbWHBySRDw5EqSlgKTX391GMFahHwvEV?=
 =?us-ascii?Q?G1VYPhAVQA7z4Vj+DDgnZwlzofkdRgLWaTfK0SSR7++3Xe8TRFuDIxlfHOXB?=
 =?us-ascii?Q?+W/NEs//YiKhOlhT4ncO0T8yNoLBWw36Lx0L0WPqQGS4+Ip8Q7DWuvclhEee?=
 =?us-ascii?Q?5i8mVjxgeFArHik2js8aP0luqwuWDwsMG2a4/l1Rs23ocbMw20Oi/7O922K8?=
 =?us-ascii?Q?ozHVa0mb1ZpZxTGy2+Me2r61IT1mcfCMl6O7zbwHqbQllMJ7RW7PdmMvHf68?=
 =?us-ascii?Q?70BS7guUMxd4KGLOYik0j8BcKVx+kVoOluuDUT7pzzd0EBWWQMLlEeTnBIw9?=
 =?us-ascii?Q?rUkvA08+wkwQNN3rmeE3DhzEripHZSP6cQxjBdra4Pg92K9P/qfElZgo0mAW?=
 =?us-ascii?Q?4PsWgO1+QOZ77CZQZjGCH2U6Vnm+/yFrSLxf7yx6iWR/xQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2YHPbseKro37Br7eYZBHRhtA2HfD2QF78tPlpBi4cUmrENpSB7W0lwkKyi/B?=
 =?us-ascii?Q?W/HBQHqWP0vpiQge4D+DoVKsEcDMKDCj/225MZiAQJZ2y8xWIZiVWdUFVXs0?=
 =?us-ascii?Q?L185aAtaSg9IQQTq4mjdRc2OihGew2FC0WXgahIfSZ5R+TP446DmMeghijyJ?=
 =?us-ascii?Q?PPRP6+PcOwHF0UptfL62caLeny2dNZFyq1T3R6mqH/rrKtS/2AKbHBuKveSM?=
 =?us-ascii?Q?3Ufdco44pQYuIricYEILTWMwIK0puralAlvku2Nk5iq9Co2eLLDQ2U+0P42y?=
 =?us-ascii?Q?9FcG9zY4kkUgnGy2NVs6HklMBy0rBdD89s3GXloAnlgnxvQhJJ5ojVsXlbZd?=
 =?us-ascii?Q?7FC53UFtoanaihD77orG26cuMoGL2fnvIOvsLH+ZP/UTC9rHWQdhTWHzYQOQ?=
 =?us-ascii?Q?3ijIYlbUARuk1MY3/XOoI9JZgDPxaEqz2YUr/mYt/A7xG5OIxUjl2hzPWWRw?=
 =?us-ascii?Q?JpW6McvLua0mOgQqMuWpezgNfTmyck+0rsKbRUlpGA0CAS5VvZ1iRTidVgkG?=
 =?us-ascii?Q?Bu91PwN/eNY2hJiDL1Icnp2qGWL2AmPXm5w7n0FLCT/MLzsER2yClIMNyWD+?=
 =?us-ascii?Q?a7xfI3D3ZnHPCKKDgU8ekUcVv4rkRTx+fwf6VdeCXWlniyrEjAR+4o1ZgBtn?=
 =?us-ascii?Q?GQe+2pgWDvgAujvdRVfl2sdwVMY0aeHo1LrlSwRlNckkvzl+dxgCvwjRJhdE?=
 =?us-ascii?Q?MQq4fafeK5Etbch3s5XSbh3VftKdWBC126swlEL0RUCkfwvgyl7fsvZTfm8G?=
 =?us-ascii?Q?ndT0k4jKFyNQsPj7qtgJilAlat8y9CLzkRT5A1MiRXRBdVItvooiWNRCaIFz?=
 =?us-ascii?Q?4Wv7G994fQnoRF9QN8waeB3QKSLsN0QcBPgbNdWwirEnzHb3+EFg2mSWyY/+?=
 =?us-ascii?Q?ASh7o517Hb+oPuR+onXnh+l87q+RaGNZgciaaGSw78On0/sVuIqsnOeHzWWe?=
 =?us-ascii?Q?0KoJbaE9i7dGw42PY35TFy6JMci7CheQmTMc66unj12WtVEsT4Da57np/C7B?=
 =?us-ascii?Q?VrXQiZMahFq6CQk/szpz1y+zwSwRbpUTyFqktEdPfksOaR3BBpNv4Xx63hI/?=
 =?us-ascii?Q?kiMvIEme+V60gImJlp6uPKfLEycECdilHUfhmf0RcOgRrczC46SOcEmdcAq2?=
 =?us-ascii?Q?D0lA6VoCzANpR9/lpV0ijH6/hDKF7CixAE5xtw0ctZ2W5vhzJJ6kf6sYoYxu?=
 =?us-ascii?Q?ZSUqPig02Li/Bi1Sw5nTTX3Ugu6fRKkuG2u8AwEJR+yfpSHa/4n0WUCZSKVS?=
 =?us-ascii?Q?IDo+J22ZdzLz7MIlCXdGKAajA55Kn5m6N2Huh/ICgWGBTsHdik+NhmuFMVQx?=
 =?us-ascii?Q?KzPbdArN2S63cs4GsuyOgmHsADAVL3klmb1CnUj/jg+IjlPZp9bvlyc6ZFZC?=
 =?us-ascii?Q?QFY/IGw7rUlK4AwDvXGuARcWVWsugC1LUKgd0efCj2vy1KBrRjDFubYansSQ?=
 =?us-ascii?Q?HBhZgT6a9nFvMcK7nrSDtX01owtQ0wdgxYAR2pufpQpweV9oMgH8Vsrej6yQ?=
 =?us-ascii?Q?Il6LiEALBghIe6oGj+ymBpkxbbFFAM6Pr8mSXEa0dJ6T/hC+1NNP2jBji0gQ?=
 =?us-ascii?Q?AoeYlmy8yRwI4GcgEaBVFOX3idYb0/WqZ1oieheP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79865d0f-baf5-42c3-cf72-08dcbd5d7139
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:07:01.0646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ukbc1y8m2TKgCcdZrAvHVN3RuLAC8dcCOOHNEp3GKq4xU5UOr/ebuHZHhrvLqv1Xs9YVrt0FOfX8HL2KMvzjNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
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

On Tue, Aug 13, 2024 at 07:41:19PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_load_detect.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_load_detect.c  | 27 +++++++++----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
> index d5a0aecf3e8f..b457c69dc0be 100644
> --- a/drivers/gpu/drm/i915/display/intel_load_detect.c
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
> @@ -48,23 +48,22 @@ struct drm_atomic_state *
>  intel_load_detect_get_pipe(struct drm_connector *connector,
>  			   struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_encoder *encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
>  	struct intel_crtc *possible_crtc;
>  	struct intel_crtc *crtc = NULL;
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct drm_mode_config *config = &dev->mode_config;
> +	struct drm_mode_config *config = &display->drm->mode_config;
>  	struct drm_atomic_state *state = NULL, *restore_state = NULL;
>  	struct drm_connector_state *connector_state;
>  	struct intel_crtc_state *crtc_state;
>  	int ret;
>  
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
> +	drm_WARN_ON(display->drm, !drm_modeset_is_locked(&config->connection_mutex));
>  
>  	/*
>  	 * Algorithm gets a little messy:
> @@ -89,7 +88,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	}
>  
>  	/* Find an unused one (if possible) */
> -	for_each_intel_crtc(dev, possible_crtc) {
> +	for_each_intel_crtc(display->drm, possible_crtc) {
>  		if (!(encoder->base.possible_crtcs &
>  		      drm_crtc_mask(&possible_crtc->base)))
>  			continue;
> @@ -111,15 +110,15 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	 * If we didn't find an unused CRTC, don't use any.
>  	 */
>  	if (!crtc) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "no pipe available for load-detect\n");
>  		ret = -ENODEV;
>  		goto fail;
>  	}
>  
>  found:
> -	state = drm_atomic_state_alloc(dev);
> -	restore_state = drm_atomic_state_alloc(dev);
> +	state = drm_atomic_state_alloc(display->drm);
> +	restore_state = drm_atomic_state_alloc(display->drm);
>  	if (!state || !restore_state) {
>  		ret = -ENOMEM;
>  		goto fail;
> @@ -164,7 +163,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  	if (!ret)
>  		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Failed to create a copy of old state to restore: %i\n",
>  			    ret);
>  		goto fail;
> @@ -172,7 +171,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
>  
>  	ret = drm_atomic_commit(state);
>  	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "failed to set mode on load-detect pipe\n");
>  		goto fail;
>  	}
> @@ -204,13 +203,13 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
>  				    struct drm_atomic_state *state,
>  				    struct drm_modeset_acquire_ctx *ctx)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_encoder *intel_encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
> -	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
>  	struct drm_encoder *encoder = &intel_encoder->base;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.id, encoder->name);
>  
> @@ -219,7 +218,7 @@ void intel_load_detect_release_pipe(struct drm_connector *connector,
>  
>  	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>  	if (ret)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Couldn't release load detect pipe: %i\n", ret);
>  	drm_atomic_state_put(state);
>  }
> -- 
> 2.39.2
> 
