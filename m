Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78989A27F0D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 23:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77FC010E6FD;
	Tue,  4 Feb 2025 22:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIGP6DSO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43A110E6FD;
 Tue,  4 Feb 2025 22:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738709875; x=1770245875;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5ImSkfIwOVafM8cuDapaiYj4lWlr/O2SztFRwiyVMKc=;
 b=nIGP6DSOnTZevCCjoGZJfp6McZVGH1+F4xoVYk1muPW+AN5XE+kFaNPq
 wtbmnBQsq7NlxsoqbbkVqkXhtvFMpCGfBH1caz0IG28w85GL1IOVR9Fa+
 OQk932OInZrBYTf+6fY7+p4g8uf6wCQy94WC5obpFp1kqIlgGL8zalfgE
 FQebur3bliuEhpyjplqk78u69v7ysG3d44pT16Xjc4V7wZTfGdFh7IrpP
 HlujrdvKgHhCX/rfLy1qqdyNevyNg2EGvQUqZXGluADmxHDv3cUu4kJpX
 W5mqXy+tFSDpjYQuRxAp6q98JU+R6RQ7oAfUuJJ/Y8rfmrfhgeHtm44YN A==;
X-CSE-ConnectionGUID: 2IoekTkzTZ20spXtwyWWmg==
X-CSE-MsgGUID: Hj6M6iAvQPmsAsRrmwAJww==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26860729"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="26860729"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:57:54 -0800
X-CSE-ConnectionGUID: mvZvhpi1RseqXTLYeAL6gA==
X-CSE-MsgGUID: JbZdUocwSJqOp2xgMb2YWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="110508965"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 14:57:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 14:57:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 14:57:53 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 14:57:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oUznAOrwgsWxwam1S5pVWYRdI03eHQyszkhoET6OoXuzZoQD0iydKr77t09gPsWwCpEZSlqCuovXuyttdTHURj/kAENB7t6AadOpCE84eXYwzFVUcMkBilRAR5RlDRGJyohImnA8inecXBZDEZ/m5TsclT65Z502Itd2qPkBk7SeS4GwlByhjvSR0JBYWub4JLBNGVF5j1P0U6MriniinFtavRU2maWlxat7jAWnJv9x+kA8+ZKlwAoEbWGGvJdhqHYfNQNMFqRpRB1x5IkIRVEkpTlaetuHeVP2r7nANSUIdNM9/2SY739dF6mQe9dC3xXRu3U0uBloidF7+KE3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dv6SYRHqPbxlaBpWLLnlf01auM+GMXzEbyay8a/U8xo=;
 b=X0N6v1ElKxLlaQoES8CYPx+HWviBS54tLgK6HBbvC4ZX9XZLT15CfKWNW/C6rGln+FOdnIXIfaR48YJJGjnbzYxipOavOz3pQY4QL00+xG6nxpwGqs+wTuDcb8T1iWMHVKDtxmWiOOAoqg9crC62Qs3iYEBQPVLsoHe//VVEgqSW0crtiLSqoVhjgWas5hgLr0zX6q3+2m1JR4lF5dVd8BuK/jU3/8DKcFFl7YFE0jXxcY9DkJD/pxvSjXHrZjs22JX8Ye31D7JzA0ILliRMEbpKLFcsD2Q2h7R7N0lgIB1S3SniW59TJgDXvdLtdLiRon3gQJcRK+4f49J6JL3H/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 22:57:09 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:57:09 +0000
Date: Tue, 4 Feb 2025 17:57:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/6] drm/i915/lspcon: change signature of
 lspcon_detect_hdr_capability()
Message-ID: <Z6KbQZXAVwBzy6NZ@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <6f249f5c537a16a6762faddffd6a95cbf61cf077.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6f249f5c537a16a6762faddffd6a95cbf61cf077.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0022.namprd06.prod.outlook.com
 (2603:10b6:303:2a::27) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: fc9d0d3a-2de0-4b6c-1ea9-08dd456f40d2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?id0gln84srsHlgX99ZKJFaWAOIonVzMCiovY3z4cI6tEeIJAeKU3zTMgaG2K?=
 =?us-ascii?Q?sSUSU2r7PMNsXzqVhfNsvRPoGKJRUCz8E3klMirEBH44CsOk4FnWH1gJ1TuU?=
 =?us-ascii?Q?HQHqZsKqKfz7JPIUeWTrWl4q1ypue+DRxSamecNtNjCNqvPtu37NEN7+PQst?=
 =?us-ascii?Q?51d5bw1rM0wDOZu60njD7PgIOw1tP7QPvr7HobnjfAH4+dUhS0ziLbyTaGau?=
 =?us-ascii?Q?tGe9LohL7u75PTwEmIwbguCHL8bcHc+idb0Asl37a2wHklbRq467idaHGzbh?=
 =?us-ascii?Q?XDs8VQX6mDUxYT1C0AqMPeCijGkRoLyDc52eW4TvSPU1t+AI4apNrUAghd1+?=
 =?us-ascii?Q?Cl3vC06W1r92XjXyv2g8SJaj4rX5K9SNUu9qxfl1QqQhCMucpJRtmYoeQajX?=
 =?us-ascii?Q?a0MrQ+al6RI94tAsjJGvMoAIyfSmv15AgAhruyn9tlD7i/8pvMXLqzs3DAL5?=
 =?us-ascii?Q?7LuiAhIWkF4nLTtuMiEjl6IW44mvJy1IkEUdYGMtjXG+//kpT7YJ++zX/+aH?=
 =?us-ascii?Q?RXJld0WOPiSfpiQIx/Qtip1n+cmZCYWx0NtJTKK3hwXUvp7bYUyiWTdcFSOA?=
 =?us-ascii?Q?XnS5DClvjsASQf3/LVIkFsSuzssxLne0y3KQ5OGMLso1bD8MkDt8UGZGGp8L?=
 =?us-ascii?Q?PKs9tmQhf8lkymEv/CRieq7QN9zuWhU/ieRgnrFoJbaxnKW8O7leuOtzRvcY?=
 =?us-ascii?Q?JS3e8gdnQAybd5ib003Cb81YdwcBurfWly3fmCeUwdoLxGHX5i5iKUfPC8CJ?=
 =?us-ascii?Q?OiimBIDeD5+C+MdYoqAuRV+eWNlpDlPipI9VYxBbjg5XyBvKLSFrPfWHbLa9?=
 =?us-ascii?Q?2Juo7Couv2RCgFeo1nglFKKUrwnL9ycLO92cbkylhYmj28IPGbmqu19v2FN4?=
 =?us-ascii?Q?iqRDNGycva0ACOAQnX3nrtuoJ10vUeYgdTBclyt4IyJdSuf8F3XQdMF5DZsD?=
 =?us-ascii?Q?zo50YjstBJoogz1i6uAjo7xiBn1qdaE3g/xbGD4BpSObtnILekKrXjra4ODF?=
 =?us-ascii?Q?peVyDCfcQl34mU/e3X8qQ6+iHx2LajMFzSIkMXoLKpFh5imhOoXCLdH/CeKH?=
 =?us-ascii?Q?60V75RBMHygm/muSkPLYZbdIrDduNLl5PWjij/W9j3+Xkg293YQdCewMwWqP?=
 =?us-ascii?Q?x5t/v2urCqC971TovWSw09VTz+0Jo2SdMVa5MMo/wGwcq6pI9VR4BdYq3jYI?=
 =?us-ascii?Q?Un9etYn7rKT5dewG7ShVuurz6Y1kfZhiR+B2Q+UncEUgYThFH/zK2CEfzvVw?=
 =?us-ascii?Q?LoxQZjVS1a3c06KYfEtKzCXuhxlbhXag7FGn5DXx3Pq2fJ+GqTBxN0ZIlSZT?=
 =?us-ascii?Q?8Wx16I42iadpBgMx9W+BAo6gNOIgLU9eAKKqXO4bTf6At0mrVlrJEFkJBlqX?=
 =?us-ascii?Q?H+htyKVSxArpS+M1z9KBspfVb2+R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qdICqVDWj71YOzBoOtVhp0FnJw7X8KRxrOkX1aMkTmWA/wOAlWylRSZ+8n6t?=
 =?us-ascii?Q?LpMAeTrSAAANnIFD7fDEBvc+bkaBLizsomvW/IQk3nSsbIpxCi+FaL3zyopx?=
 =?us-ascii?Q?cCiqiAd1aUmwP272LbDLNhZc13s18E1AiOIUhUrwPF5XFGXtqZK+qU13YqdO?=
 =?us-ascii?Q?mqbcg/12tdbJq9qEWHbAaasE4ayQDby/zU5qV0hrbBt8By0lec9VPIdf3Jsg?=
 =?us-ascii?Q?VI574aAwcPOPaS91Z41n5t6ULJuAnEVf5zqfVHSEc0PRmJ6e/Az0PEFjYS0f?=
 =?us-ascii?Q?ZPQugA9UZ/xtgGf7NP0ZjxsWXk9fCd8IUN3kd53NbwrIbp4qZ8idA7oxVV5m?=
 =?us-ascii?Q?ZrFafPa9K5YesG4Xo4rbytBR1PnKROKISB05YkqiOxptYy/N/I5Wq1x50Opu?=
 =?us-ascii?Q?t9FSjlxLxpcUxoHT76aVA+VKAO8rA+dtnd5tb7AQJliQDDU8i3aTximZr4wq?=
 =?us-ascii?Q?0vjbgfs9NSkScQ856KKNOcIqjqEAqTwVtrEHdI2rq+8QRYcecaG02pTNTMVP?=
 =?us-ascii?Q?/lyBxMNxFTSAokA2TrYZV9w/WxrxRZYJJwFDiXzn7i1aAUUXiLNPSamLIh57?=
 =?us-ascii?Q?sxz6jUPe1GY09F4qf266P8r7yYojDNj/PaiFJpMJcf2iUz0388mE1MyqzwlE?=
 =?us-ascii?Q?bv0smmj+aIp7OQud05Rw3aNOSiAg74DBG6K0HFMyX9y65hZGDPGlXJ3Pnb5z?=
 =?us-ascii?Q?6Ji/4EHMXBNl2qN5dlQFYQGHf3k9TezO5/XEbjZjCruHmMf0w2Coq/xgSFB2?=
 =?us-ascii?Q?bNpJHZy5JcQzkV4fYJyLI/qFl0HjSFzjzizpjeA6UwRMYzNRDJ9ZPmuKTJJe?=
 =?us-ascii?Q?kz+mAdz8Fih2CbMjOT8udlnu2yNIDXyirFw9tlaj4xNVgT2rwa6dI7ZBshXn?=
 =?us-ascii?Q?VDrCJiZG2wVAxMSsZV6hexoLej4n61xeWTcbml4fbRrvy5dkZYB8ioRCiOhq?=
 =?us-ascii?Q?Nb77THyR0w9FNA3dF9KfSjbT4HvhJ+a2m7xa4qfGhPNgNwtBIEQBP6QW3Ync?=
 =?us-ascii?Q?sjioQKAzCsSAu4zDCp+pyh0Trzt8VHNFOm85KwZi62ONgpqlW81kIVtFzDMI?=
 =?us-ascii?Q?4st3kc4N00aSyOmKI76BSF0JhZ9Iz3rfiEmq27obb5cXtni2KuqeN3X/0aaf?=
 =?us-ascii?Q?QLHOMBIEfGAmexo3IyVp2akWMcBtuCjffkFwCJSo3rc8eBEkEbnD5nHEm3GC?=
 =?us-ascii?Q?IOhNN7M2LBvYkZX5WsNVmBehvfJDVg6dha5bI/ijvFCyBxfYlRk/7jZsmWwu?=
 =?us-ascii?Q?Tqvq079iekBOD1baGD0539sNUmEopbShdww1WBRPK8+U55R2Xv3QJ7thviam?=
 =?us-ascii?Q?1Ea23mQkT8N51DxLM9uDJDW+3TMk0MmLirUo+TErif9m8vS9LgW4NtoGzbIv?=
 =?us-ascii?Q?NELGk5MYU2sPIqkpue+wumzbXBjwGW83HKKbJaGwqhlEstH4JUP9majU2JYz?=
 =?us-ascii?Q?YvqCEUrUbfv29F7H03OQedwCS6n10WaMS0V3Le5Vym9X9DOpUkxbzJBWd2vT?=
 =?us-ascii?Q?DfHhf1qsOkYo2ZYI2H3dyZEMCRhm6Nd5RA3NGj94lyOEO5dPvBSutUqZju5a?=
 =?us-ascii?Q?Teg10Lr1ekraccyUQPugsixTzNCCQPuVRIC3qFzIqeDPq8uF40R3c83t8nyr?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9d0d3a-2de0-4b6c-1ea9-08dd456f40d2
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:57:08.9509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qQ0Tbag8oHme1EuG0UPWGYa3Cm0vBkvcKc8Q9pgl4fK8k4g2qDTYQgKUAKfIDR9PozdPNwnJXNt0qofBEm8HXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

On Tue, Feb 04, 2025 at 03:58:40PM +0200, Jani Nikula wrote:
> Switch from struct intel_lspcon to struct intel_digital_port to unify,
> and return the value so the caller doesn't have to look at
> lspcon->hdr_detected directly.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 4 +---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 2 +-
>  3 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ef182ef574f7..2db7741c25bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5844,7 +5844,6 @@ intel_dp_connector_register(struct drm_connector *connector)
>  	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct intel_lspcon *lspcon = &dig_port->lspcon;
>  	int ret;
>  
>  	ret = intel_connector_register(connector);
> @@ -5867,8 +5866,7 @@ intel_dp_connector_register(struct drm_connector *connector)
>  	 * efficiently and streamlined.
>  	 */
>  	if (lspcon_init(dig_port)) {
> -		lspcon_detect_hdr_capability(lspcon);
> -		if (lspcon->hdr_supported)
> +		if (lspcon_detect_hdr_capability(dig_port))
>  			drm_connector_attach_hdr_output_metadata_property(connector);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index e54aad8a5f7f..2dd2b700b0f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -121,8 +121,9 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
>  		return DPCD_PARADE_LSPCON_HDR_STATUS;
>  }
>  
> -void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
> +bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
>  {
> +	struct intel_lspcon *lspcon = &dig_port->lspcon;
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 hdr_caps;
> @@ -138,6 +139,8 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  		drm_dbg_kms(display->drm, "LSPCON capable of HDR\n");
>  		lspcon->hdr_supported = true;
>  	}
> +
> +	return lspcon->hdr_supported;
>  }
>  
>  static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 4c8ba3ddbac4..18cc15e5221d 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -17,7 +17,7 @@ struct intel_lspcon;
>  
>  bool lspcon_init(struct intel_digital_port *dig_port);
>  bool intel_lspcon_active(struct intel_digital_port *dig_port);
> -void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
> +bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
>  void lspcon_resume(struct intel_digital_port *dig_port);
>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
>  void lspcon_write_infoframe(struct intel_encoder *encoder,
> -- 
> 2.39.5
> 
