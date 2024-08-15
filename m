Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1247953A87
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0D410E156;
	Thu, 15 Aug 2024 19:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cuBQ74lb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19E310E156;
 Thu, 15 Aug 2024 19:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748772; x=1755284772;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zUtU/WrmK1YXMV2SsMXdW4xe0SFzNXj9VBTEPS0E9io=;
 b=cuBQ74lblq2qMK6DUWN5VBDpZOinBcUE7OdQ+qOvUJDCyAMAslXaVCDC
 mY9uHULHjDwliyHmEImOvevzRxYIYTfMrHETZirU9ATgoUIJymnpL4wBS
 cm2gKXnSUF4yL3RSD1VaOuOaS9UCCD1A6L60vgymfYef1zlNs7nF2ehzC
 hzbPWYn+jAzmp/dcL8gamLqfRphFUFBFz+fw7jBlJr0NTEiyRAApXztoG
 7TSNXabh6sXkDGNvLu26yCMp7nGJxTFlij2FGnBTrfaqaHyYmjNtpZe4Y
 KA9jK/F6K3jdn5+ZnTGtKLhODW6u1zj1kOs5RjmFwdSvSU7hmPBDtWh2k A==;
X-CSE-ConnectionGUID: 2+qx0qmCSRCJ7cFnoT26og==
X-CSE-MsgGUID: fwSe9y2iRaqBLD9G58S5iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="25787394"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="25787394"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:06:12 -0700
X-CSE-ConnectionGUID: E8KJmC/rRSWHx6MRg/JlxQ==
X-CSE-MsgGUID: lMwsBSmATBq79BVu2IQ0Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="82643275"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:06:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:06:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:06:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:06:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=diZQw+koBR4MbKO5ry9Wp3jJSkkzu23A1c6LKa+InXj6joKY4xOkHzPzmp2YNy6yXtdFrtGaRqnHbqUIbSuSDBMd9vUYeWxEOQxlpogL2O2fEKhlNGXX/0HvaCgmbs4q42LhI1GduVw89d9dpkMIZdkdDs/Pciey9kYSF+9Y/7F8TpQpGKnkm3ccXYIiu5kny9RGGzJ3IvxXyuivxzPGOXvRAprRauYrwvVTGsZPPJyWFgKZzOrUjr1Dputa6hQ1hdo+pgMIeY0WVs9sFVXg4uCpCk2DGs9MOddiMfONONAmlcQjxuxTF47CdZSV8tGsod+WWkLCza0i0MuxVHCl4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4fwevtgyudb2eYdthstFWyTGJZ0BvlemTmxuRu3jEk=;
 b=nrtDBKm8QncyfErN4dO3pc830VssjHiL3eY0oWKCyx+C5lsjjPY49ryi/yLfpgaEwE+Qma+neCUvIWJpI/kLVtvkXa6TBDMh06TdqiUsGZs5caqSKiSnk32pC9eWiiurVA9ImF6RkiUJ9PVD5ERATioMJBhwINnO9zRHwnvRdunmUGCj4KokkX21QLqijI0qWVSQIy5hkQjVvLex6BfQkd4H9I5bnnQOaQINsqF6iWwb4nild7KaRvbx1dhCGYXh5/vL6plLN0JSmnzzOfcrUKCLYV+3MuOoHR4g2f7FxA4WtbVCu5KzYBypMNZAzSExvylU7G1PrBn9zlrD8FIqRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Thu, 15 Aug
 2024 19:06:09 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:06:09 +0000
Date: Thu, 15 Aug 2024 15:06:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915/display: convert intel_load_detect.c to
 struct intel_display
Message-ID: <Zr5RnmdvwWSZ8SZQ@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-3-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0134.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a0d7997-b75c-47f2-21e5-08dcbd5d524d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cN3S7z6p3BGWswPZFB/9f6g+2zv2xrWZqB4kdsdtszFXg7tlwE6ckR2oz+Qi?=
 =?us-ascii?Q?0P1ICbVZ2eJEfnlWBw9xtRn2c6xmNMM04UMGIIBNHXQ0vUPFSgOshRyiKJ3+?=
 =?us-ascii?Q?XRtjceP7nijdVk/Nr7D1zEYRN6ir8GtX1YpJ/vlDi3ogAtFG/CFl86YsiJZU?=
 =?us-ascii?Q?nGNWfeHcF/+jUbRVJcRJe8e1xJ3XxsIZoHnqbop+fOBKEDEN1x/apnFcwIiU?=
 =?us-ascii?Q?MXm7j8+OqeHnyZRdMO9tKTt3p7ewAOQjFCwNhCsNO9fA40cQWtcP3aiFetyl?=
 =?us-ascii?Q?6MXajxu2Aiw/QdkhTODOrBMK40kpxb5KmCEEliHXOJO0vORmwIG2uIT3mWKq?=
 =?us-ascii?Q?hPuHoyd+VteL21ZEjRCnsrPLpOlkmL2Qh3cw4Ecr6pSAdWlf3e5BP7EW9uDZ?=
 =?us-ascii?Q?0Io9mKKPBfcfXK8oN5H2FqkOgSJLgmDU7nTiVujJpNNnxom0b+CJAEu9R0ee?=
 =?us-ascii?Q?BGqfvkcklOhmh60YrXOvCuVINCDNbtpaq6GUhLes1hfOBTOkuwXjZaGVRcCS?=
 =?us-ascii?Q?SYNOSM1mRrnlU8jTkO2asbOtmhxNOroTsykUN+qmXlnw9QPWymbWKfyXfWay?=
 =?us-ascii?Q?NMi8q8WxD6nv6Hu9/0iw5AZ5hDFt95QSeswkxMsmgz0uBYwqcd9OY9YOb/7D?=
 =?us-ascii?Q?Br+3Kbm6A7918QJkSZiMxMS8Rr3OnNihfdDPXQ3Xx0DLtdoKzTL/T4hB9FEi?=
 =?us-ascii?Q?GS2AgoCXTTfYQR769CdqxP61mLNKp0Le4Prix0Y/aCiy99syp41u+ScoL3qA?=
 =?us-ascii?Q?kmfx1bgPI6Y2K7O9C/v+rsWseNoapZDYhIUHY5ZDYQxXpOmvrNsQLSgCmpeD?=
 =?us-ascii?Q?omj+HRSlV/xObDglipv4J0rszXGIpM7UrF21Dkgy9+CFSDNK6OnSnnYb7Ecf?=
 =?us-ascii?Q?s2t1opMx3dn5dM5ILl2Q00n+WW0wrXrUzpGOZgCeT1Ekl3M80AX/3rzkdblt?=
 =?us-ascii?Q?ZgX2PtB3xKtzGsD6f9dKKsxrDH7v4v3YzixyEVGhQ7m6s+U+1Lno4kNSvvFy?=
 =?us-ascii?Q?MN+fMhefib3FAXESyghUdGCsM6TqoX4+eURJTbbCxFzU+C/zIg69Rfx55WJF?=
 =?us-ascii?Q?a4Ot1JmL05fRp26oLKjWRuyP/3vnod5EChdUec1qbey6wqEsQZLOQX/K9cyQ?=
 =?us-ascii?Q?oOMlMrQDu6ztCBhr0qFH5b5/pXwJZz2UFYsC7HljGYWjHa32SkqyAGsOngNe?=
 =?us-ascii?Q?iVBJFoLJAkRt7T8HA03S4THOzozdipoMUhEeQzGsvmk7kT8W8AnvVZdWiQlV?=
 =?us-ascii?Q?ZrSaGe1LtUIvSFNKg37lLSOyWpUs0fNW6ZFm6BXMq+Y/ngN4hjFKZSfpx+R7?=
 =?us-ascii?Q?BwmhpIwDlIJketAr+4LFHrXEALa9oj+gpIzVz/uM1iPV1Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gMdip/lDpGZFZfRA39plhp55JehZmmpeicwJUKnKztcm4fYPXNi8u//x0Bii?=
 =?us-ascii?Q?C8X5mubFOhLKXvAjKolrGSkxLTS6lKEbqo7eVNW1ewvmFrYIAUoFE4t10LT3?=
 =?us-ascii?Q?T3nKnUC9GCGB2jqT6VNltXV14rl8uzqCeaqRQaal4xrswYC1jFIcq9yHyAto?=
 =?us-ascii?Q?Vxk0l7+gzLPGBCituD1/9SiUAnWwxli8n1DP3QvF/o9zZiJzgZq3hiXx3A9x?=
 =?us-ascii?Q?t869DME199/B4Wm1IqkSOgEZMs3TJ2E/9EWGEBNpXDkRpUi5P4tcTwZfAh2F?=
 =?us-ascii?Q?JvMhIfWKNQVpwK+x8DDG4t8/XvzFq5ZeV9kWf47WvPTMnM+GA5Gk/agQqVro?=
 =?us-ascii?Q?VvMioJ4cbl0v3wec80g6xDzf2CZY9b8+bXpg1AB68i9717+HYZdL4CCcs7DK?=
 =?us-ascii?Q?kD4KNOieuMFzeNm3TrPbMULiUW4aYYikw33Yr+pKhSwgg89lQbU9MNUrztpT?=
 =?us-ascii?Q?VNDJ5qgPRn9pIsy4B67PRj2p8TnEwl9rW1/PumbQcUiDk3oABmrTC9fqqqwW?=
 =?us-ascii?Q?wv49DfVYuU4lLE38AedY0W9yX0PE2atSsycZSgWmg8KHfgx0GWptm/N3mURp?=
 =?us-ascii?Q?94pcAGwG6ApMCJKWDBOZidZg+IcjzklsqqR+mc9FhWF1vbFyvMQ6OhGP53ai?=
 =?us-ascii?Q?ndsIIlQuukqvsD3LfJfMp9dKXDy2kFcP1zRKgMf30pkGkOImIlCrZMNHdx3t?=
 =?us-ascii?Q?jI3Xf1g9TF0s+JNwp7HtzZCRjZCPQFW43AUH3fK0GwgpoBZ6BN+vzcCCcLQe?=
 =?us-ascii?Q?ysRopZEGgf7uXfcbbS2NqrF2FPb1w9dORuiXDoA/HLzGUf9QJcIYSg+Z2yW8?=
 =?us-ascii?Q?QNLmgMJpbZyiGiGwYrxOYhvrBRFiRHJhc40sXAQnqArFS6iBgS5GRuJ3J22D?=
 =?us-ascii?Q?YLy8+SXO16Pc5ZQyosr86PcwkMj7J0TXi3dfic1ohGlHE/hM/bEV4bVHQMEJ?=
 =?us-ascii?Q?I78X/bi4ImTw7TlXAxnWHvolAy4THQjuvcV01aeGL/ZqE1WvrBhzt22U34NZ?=
 =?us-ascii?Q?9rXiTr6KwwePqjeHIp18rgHqDdctmwk+8X2vm6FcHXaZR5720i6f1q+hAWrX?=
 =?us-ascii?Q?CE34kixN0MNPbAP3Gr+rtBM9LNKXmo4MTvocBpGTu8xlWNSpXWI22aw88Lgm?=
 =?us-ascii?Q?Wf3PdgIk/aeHM+F1eEoAiHOpjaO8RirpPBAt1aY3hKJBfN/p8O7CjEdjDSq1?=
 =?us-ascii?Q?N9xhbuycL6wr0D8iyh2w+gr3WYKx9QPVp5ybemcta0esvisusemTbR0jAt3T?=
 =?us-ascii?Q?dmRNoUt+fEHuZOBPkAo8VbmCklj2Cu6ElQduE3dqf23EhV2Ka22OU01gFbhp?=
 =?us-ascii?Q?4XXQRfJXHYKc1ghxToPDJ1JqYXOH3Gqx5wiVKvBj9J8Nh2pO6ouVh+ssgni4?=
 =?us-ascii?Q?WFkMf3UpoE1zxwRkdclx5iJn/Kz3QvBYjhDWB4RMu43vEUv1RNAdOw1SG9oT?=
 =?us-ascii?Q?bhvnPlSqhfsmY5QFvcAcJhZTd+WbJvWDHDqok5kD+xPUpWl99jsN+s4WLZha?=
 =?us-ascii?Q?3r5XyWDIEhjBVn8RDmyxFNhYCKQ89bAbgh8qjMDkDHr5P6QRY37kY2AfA1j+?=
 =?us-ascii?Q?RrHNEzhXorxxvXkZHAbpayXiqjwWHTfkiYwZ3Owq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a0d7997-b75c-47f2-21e5-08dcbd5d524d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:06:09.3013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FmMw1GpDN12g79OkMez72+NEEFQB9bGlsQ8vOoVW8AVr4jOD+cyRkmXxLSeuefzchEL1mQRZPVXAnWLAz5dEtg==
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
