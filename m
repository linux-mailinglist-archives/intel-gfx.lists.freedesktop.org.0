Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2741D9875BF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 16:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F107E10EB64;
	Thu, 26 Sep 2024 14:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WhDXa+/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A36110E05F;
 Thu, 26 Sep 2024 14:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727361411; x=1758897411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=arcLxPTSkV6Pq6DmWee8Nb1gY0fWowYwi4E2ulGOKPY=;
 b=WhDXa+/SmG4c8vCzZ/of9+2B7VGTP5x0mvoJIKYkxv+IQHrzVT/Vqryo
 8tvkOa3Y9kVzaGyPiJ/mpNIOZNYt47Epvb6rBU1y8q364pwSWgpygpIKR
 L6TPG2/8eVlnsG7KJ391IUo3CNtiIde/QDJQmEtnaxeqZhxeQv09dyZVW
 fKTre2szepaNDYKVyvtFQdE48j88z5nZfT6IRtA2y5kVrCgS9t6qZ5JIh
 ZURv4Ck6mI8HawPaX6j0dkKxXLoD66tImD9nT034+bGOgo3CugcIsH3mb
 urYM0Eh8DZ57Zy+m/jZb2xCSmqiih0HlpUlzj9I0Dp1SLN14KfsO4zIru Q==;
X-CSE-ConnectionGUID: SBNeCFQDQ7CJoC8rQTc96g==
X-CSE-MsgGUID: jOeOKfBATvi8lDfNkr8kFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26408733"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26408733"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 07:36:51 -0700
X-CSE-ConnectionGUID: dLBiyRYxRIyN4ULE6WqN3g==
X-CSE-MsgGUID: 7GC7qRp9S7G2i1g6JGb4uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="102992310"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 07:36:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 07:36:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 07:36:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 07:36:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KLkSCH0InjYwUV0ZM7AShDkC+bkkgBvjy9xLgyr7fi0VmOMWEzL4sdf8jsMDZtipdB0e/Gy+UWyL/wos5mjsE0khYgAQkiLKwJwTPPSp/VgiiTI4Dy/i/8hcq3if11zs3gNSajRENCITn8qdSoQiZCduP4oa6BYwIgZj1XPMFKOsB32N8hStDyTH5RtR3qkDZAErJIraj03fZinaAtOrqmknsTngZQ2syI451Dn1J4b6G2SnUYYdydX6Q0l1xlQNFtQWmMupzbeoG/FBu0C8fLxccUr9h/LAtNYY1rnUquRvomENj8M5lWd0GqasJWUZoMalnOKv/5EnG4tvtRtkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HiCiYLOUJM/A+crpaBqVdIox+zwvB2+1j1HIrufUQm0=;
 b=ly1ofHfQCitYWlksaLc5Jf80FJ8ZLh6uS5Qzpl+o0Y+8bSoXyP8DH9qCGwzE6+Vcz4rdH1kv8ZDPOFBOaYXPqn+9diOXZAqr+cZFyJcppbG3sB3EqJvm3Ba4B/xoVn96igWhX8/VEIeqbrFgnJIrr07+tBwsAOKwTi4PKmpWx/uuKrl03dY03ExWBvcccsY/Bt7MNY1Dvyb9AU8skF9iRWMY+Tvh0WV968bW4hIXciEM4HmOuitFBehn7MkZZVYcIA9zXUpJLmFPt73TgOIcbNN8xgGKDt7PN7gM5MvbCKmFyihcBWioZyqqFqYvXR5gaONq+ivlGJ/Q2vK6SQPwHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB6448.namprd11.prod.outlook.com (2603:10b6:8:c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Thu, 26 Sep
 2024 14:36:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 14:36:44 +0000
Date: Thu, 26 Sep 2024 10:36:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Badal
 Nilawar" <badal.nilawar@intel.com>
Subject: Re: [PATCH i-g-t] tests/xe_gt_freq: Use sync reset
Message-ID: <ZvVxdqTnPu7O3iSn@intel.com>
References: <20240925220923.2030384-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240925220923.2030384-1-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: MW4PR03CA0055.namprd03.prod.outlook.com
 (2603:10b6:303:8e::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB6448:EE_
X-MS-Office365-Filtering-Correlation-Id: cf551951-0be2-4635-9f4d-08dcde38a45f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S1k/d6tpQ15YdackC9x5WOnOL/eyROVVpyiem4/5aisRBSjlH+lJPFZctdiz?=
 =?us-ascii?Q?0Vp9Hfhi+5FZF67j+Ys1284VIl2XUqWuJ1+Vt64vQE14CXQJolyRoJ5oU4k8?=
 =?us-ascii?Q?mkVFaQkQ4iKlZmOjIumFEfDz7lzaIuX37IH7KXTysN1hoUwEl6JafKKk/LGW?=
 =?us-ascii?Q?9mEhAwzVJeHFdzJb3ChA9hOa742hasq+lDRUyefJDpHekYC0ZtifYDZLXv7u?=
 =?us-ascii?Q?fK2dlsc4HbPRky2UJxfo9xjR75Xg6wEJFxgGaRhm5hJxQQp/365v1eKdReFs?=
 =?us-ascii?Q?aDceXq1RxGSpNyIGDgj+dHrnny3mT6PlYPp7aXxvuUjSGMtY2KUx3xjauOfs?=
 =?us-ascii?Q?w7fhH/by61cuMQ+jUY8lIJJoGgICmTnRKSWCmfBr8iolSMbR0IHF/Q2QcyIa?=
 =?us-ascii?Q?tHABtZqbNMZ3M87IwwiJHWQo2X2beQGqhtXQwMwIenMmK6zn+ayRaklpo3VV?=
 =?us-ascii?Q?9jDnEifbnORAhe3lLUR5HgYkZTpL3aTv5V2edzRiirhibTykV5NV0C/PGKgv?=
 =?us-ascii?Q?eRkLvvM1yHw2JJia0qrlHUgCzutKAErPiTx0mcS9K9kt8g55hnyFAx99Kz6j?=
 =?us-ascii?Q?6Fa29zI+XMjdCs/bH1EJfTEVLlIlnM/MFMbcHJ4unYSmu5e8z0+spXmhcMhV?=
 =?us-ascii?Q?rN3QOY/r0y1v/QXtHVkPwPzw9ZBgbEQ/UzcFZ94NiYzhyOy1gLRuk1tiKpV5?=
 =?us-ascii?Q?tDX4neHzJNvbqV3pzUcH24TpysEQVCZemYGu7eDXJyixJYUdJ3mjM1z7eM2a?=
 =?us-ascii?Q?PDgOdCe6iCfkH2+S+u1eKaKfHuAuIRIiSrkg5zOqNwlNcRIZGwwod00+hM6O?=
 =?us-ascii?Q?ENb89AqSybtCbvsmv6aLYU5sIxtX2JGS+Uq34e9qiRoxT/+tE2TfBsym6WhW?=
 =?us-ascii?Q?thVLc5PqX/nV0EYKXUF35E2ODp5lfOG55i3T94vNS0tSdVk44jlr7U69QxdB?=
 =?us-ascii?Q?eXpKEyptXdWv013V1Z+/ipQNTMvO48rdBXd5c8FCUBL9TOFyMm9zBRqLp4/g?=
 =?us-ascii?Q?VznSiFZsequtlKF+EuTFYeN7vtIo4t82QDY5yhFaHSCpr9dV0BA/TnKz5cZ8?=
 =?us-ascii?Q?ZMw84pBiN3eYLfYxWqXB1oDIBikL8lcTx7rfFxDjclqASYACVH3IQNn1jL7g?=
 =?us-ascii?Q?n6F//0GZLggV1Dx2B10oUneJ1neU/fSy2qvJjn0/l8B2OxYwyOQhSC+qfN1N?=
 =?us-ascii?Q?g/PlS3P9B0e1wDm92LWokYLr4hvh0d7+GzFsy+DhCbrLBY786QsDUdKRnCA?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RUViSL/5Z1BBpQDPNqmPvhq08QaO2DeoDenucB4khftqX88u4FZSR5+zrp/g?=
 =?us-ascii?Q?ChkcUdTd3NH1691DLdMQra/adzovT90MTvr22st+6eOdMblAFZ2dfJJSAFbc?=
 =?us-ascii?Q?3dQ/tNwTP4PnAgJB/EqPzqgV/LiUlTJChBkzmiHpmxznhX04X9zOIqirYwDr?=
 =?us-ascii?Q?PZRCnnqjibPwZ8bFFwOk8fpJAHoCdX0R2r3NHmtEugYIKl1fp0h7AKybIL/P?=
 =?us-ascii?Q?aUvcUIr8nqrVvgt76GE0EQ+UZKR6n2WgGKZbctX/LoQvtB7TFUa8KK31S5wZ?=
 =?us-ascii?Q?mtfY1+SqlEeFaUaJx066xoB/976+nCWTthIpeE2CMSJieWSJ+xT/1QFxzY4A?=
 =?us-ascii?Q?+auIdWXuCSWV3k7rF5xNaSn9MGWyQf5OAMsyxA0qdM9I28AsTqaXy6lNPXff?=
 =?us-ascii?Q?Ke+lp8qNlhSNJWLTuiZVIg+8NPUpZGRYsk0wAuVnU6KUiKDNfEC81nk+7sfh?=
 =?us-ascii?Q?WuhEXPGwWPv/0GpqFZUXPRmVBSHDCCrTzvymtkevo8c/vL5Sz0bp8tfguUWh?=
 =?us-ascii?Q?fCoDcnDERUBSo51VPVTkkzgKCXFx9hkL4rN8l9Cz9xND6UDUKRcCGaabZLgp?=
 =?us-ascii?Q?QYpMJ6nV8UBYMart+Q7oh0U8FPEj1eJRTzARzHSuBR6oCbFWKgoFwI/KZrLM?=
 =?us-ascii?Q?9NDMDDgxnahbQ/wo1IN+Oq71ShsjhdFyvBy6yZwi1xjG675aIMAOuAkqWZID?=
 =?us-ascii?Q?wKKN8qFfw52TlC3bTpk1ECBqS43vDzGoc49JreM05CspGjGy3h36vjTDmWKl?=
 =?us-ascii?Q?NkMItfbA8gbKV2O9pVbl/KbTNsPoLf97auNNSGtXMXfUMOrdg7yoIpVfJ6KM?=
 =?us-ascii?Q?m/VfpJl3QIIGq3ZYwAkTZ05hrKg6ug4SiIoynZaZ+uHBoXAN8v8fvh95163o?=
 =?us-ascii?Q?oxBAflUgFi4FzF0tGCMlzNE0MCP7zVrNGDkE1YYJy0vEAqtCbB+MZ7CIFWU/?=
 =?us-ascii?Q?lVcv0dvRgo0DS/lDlXmADEK4iIlQABfuWPmGa3Wzo1+oa/hp5u8jAUVCCr2r?=
 =?us-ascii?Q?PmHimcvMrX7wmhYe770HDVU9tLc4Paw3w4pGWmDCmJQxyj858UH/9OCm48Ps?=
 =?us-ascii?Q?j1V5E8xAJIgo2s+aooEDhudTTnce16OtME3so5JUU1wKCRFCG9uWndCWeKHu?=
 =?us-ascii?Q?jUoeEn0jh6yosirl2tQ+NWooPnUbkhqJqkRA/eRyYdUVQKs72nZiHDBV2gqQ?=
 =?us-ascii?Q?ie9Sh/x/QxQCRFeGmHhbO3/sddW4L6U8UBS6szkJh8qbUaOUNMPN7J8xFmFC?=
 =?us-ascii?Q?nh0JHzvmTJX6EUaWZS5pN64rDT6eoBppCIVbYMLq9O0SZbo2NxWpxmP1sc7I?=
 =?us-ascii?Q?5DzcdIKor8dvuTAqNUOPYax3wMczaBGu5kkiZUie2C25e8r0//ancS8hwXer?=
 =?us-ascii?Q?3izsTms6HPs6tlJ0c9FuOt+Eoo3JWd1lySrquobZQv4c5MXZC8mw9KsNkmhH?=
 =?us-ascii?Q?l3jGOWb3Q/zdbcQ2W5wjzscDOe8fWGQfHOEA3DginRqjrMeO6cmtkiLtC20B?=
 =?us-ascii?Q?RcnZY0ds63EiTX4fvAL0DblKX4YFOWgHGekttPhEE3vQNnQLJKiU5gAhnBJ0?=
 =?us-ascii?Q?pJ6RGjp8igRoYmTADBVMCgKn98TwTWiwoeu5YRk1BBUhj1nzWs7AZuysD8DY?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf551951-0be2-4635-9f4d-08dcde38a45f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 14:36:44.4414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6g6rjks+fVLZf18wzXJuaG9AgvruxJzyRZwC9sVazKu3ZhS855d7UA9PE8EM8qZ5//mJAeOffOhdRJwBsnYLbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6448
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

On Wed, Sep 25, 2024 at 03:09:23PM -0700, Vinay Belgaumkar wrote:
> Some recent WAs reduce the GT freq during driver load/reset. Use sync
> reset so that we give enough time for GT frequency to be restored after
> reset has completed.
> 
> Also, stash/restore frequencies per GT as they can be different.
> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2676
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2711
> 
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  tests/intel/xe_gt_freq.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 427e12c55..de4d111ea 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -341,7 +341,8 @@ static void test_reset(int fd, int gt_id, int cycles)
>  		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
>  			     "Failed after %d good cycles\n", i);
>  
> -		xe_force_gt_reset_async(fd, gt_id);
> +		xe_force_gt_reset_sync(fd, gt_id);
> +
>  		usleep(SLPC_FREQ_LATENCY_US);
>  
>  		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
> @@ -433,16 +434,23 @@ igt_main
>  	int fd;
>  	int gt;
>  	struct drm_xe_engine_class_instance *hwe;
> -	uint32_t stash_min;
> -	uint32_t stash_max;
> +	uint32_t *stash_min, *stash_max;
> +	int num_gts;
>  
>  	igt_fixture {
>  		fd = drm_open_driver(DRIVER_XE);
>  
>  		igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
> +		num_gts = xe_number_gt(fd);
> +
>  		/* The defaults are the same. Stashing the gt0 is enough */
> -		stash_min = get_freq(fd, 0, "min");
> -		stash_max = get_freq(fd, 0, "max");
> +		stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> +
> +		xe_for_each_gt(fd, gt) {
> +			stash_min[gt] = get_freq(fd, gt, "min");
> +			stash_max[gt] = get_freq(fd, gt, "max");
> +		}
>  	}
>  
>  	igt_subtest("throttle_basic_api") {
> @@ -517,9 +525,11 @@ igt_main
>  
>  	igt_fixture {
>  		xe_for_each_gt(fd, gt) {
> -			set_freq(fd, gt, "min", stash_min);
> -			set_freq(fd, gt, "max", stash_max);
> +			set_freq(fd, gt, "max", stash_max[gt]);
> +			set_freq(fd, gt, "min", stash_min[gt]);
>  		}
> +		free(stash_min);
> +		free(stash_max);
>  		drm_close_driver(fd);
>  	}
>  }
> -- 
> 2.38.1
> 
