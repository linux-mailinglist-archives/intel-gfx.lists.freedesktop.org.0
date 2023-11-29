Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CE27FE03C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 20:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568E110E378;
	Wed, 29 Nov 2023 19:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D812910E378
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 19:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701285696; x=1732821696;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hlUbhxmIeUziErSDKHsJCUC35ry3cT8V5KJTZp2t2Jk=;
 b=D2IgVhSCzsA4J1lVgFX4GobIuiFEHUBNvxccAG1VXl4ZRh6Nt37Iv/Zc
 jSp/xgd809kO3nt9qcLQ5HrbtymswiEvdqI+HzvlC5ZbhaQRaVJG/8A8X
 fPo6zg4RQRb1c73o3BIshIqdWtxwHeQRqO8RbmcCD4sGibIO8TTaVV1pc
 nJUiFpYhTzWDRaAp/GqbRsS5tzptO88hcIp5iV8/DqPglWfZZ+rOhF5UJ
 U+KOPG6j/Fs6YNaNFsQFTxMlaDUXoQf0ZpZI5m49KUDNd0+skaMYL5kJT
 wmMSaFAzGW66ov1kms6UrnfBxNQL5vTR0mTO6D1kN3Q0nHLsH1i4GGFhD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="392080229"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="392080229"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 11:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="745366936"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="745366936"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 11:21:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 11:21:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 11:21:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 11:21:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKUHK3zmLXvrE+ijnZ5YGyCW8RRsHala/6Z/4wXyzJuMUCvn6TLrhBpSB0fTGXs9KEfSyw8TDghr4dtl1bB2Fl13mt1krG8mI3hVC1CJ9NtJsJk5QsSIL8MdSvFhejHsstUI13gUV6ze0doFaX8Zx9g+LId/i3CZIKM2qP5Kmi2bZL2F6U19dKuG9jFBjPK44K6t4LSDFa+gzx714BjHhAV+gBsuAd2+wHl6sOOm4UXiqzm+AnEJIRpryJZDiduA7u6uC6/Bv0JfjPyUTB+/ObPP+kHKByI6oLSYhdXj7ZePn4A+qfzLaUrVKEjs/i+wHcUw5GFDtnOi+XFS5vCUVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=00V4jUWRQlo3AJ8MSp/HCM1Ai8U3iTyQewJu41cznnc=;
 b=ADNAjpgm/5cn7aCTkcGycWVXXzF1ysy9KLflMCuyxHXgxc7ZZmcBDsmRrKDgt90mHLeKPHYj9wVpcbdpavNzrK+OSG+3C2/hGD6wJwIWv+G4SfVL0zmbGm4qgH/3RUYcd19XmGKB5VkKAIXi2n8fwE+aA9kHsurz+B8u1Hmrs9cJwYY5DFIVu5zf14iaxTYCK0AYkQSrRcnD78ff+datKTtG8Kg+rPWNtgaBAdgbljqrYeUSdl/gJQV/z14zfmvoUwOQvbwImM1c7ZBSLBA9CeNFPqx7MlH2vu7s2gipWxdXbwdbvSJcmHsV5Kjf6WYfrpzyPSt18GMv6egOvKsGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 19:21:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 19:21:25 +0000
Date: Wed, 29 Nov 2023 14:21:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZWePMkmVHaJ1NdL8@intel.com>
References: <20231129173506.1194437-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129173506.1194437-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0365.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB6813:EE_
X-MS-Office365-Filtering-Correlation-Id: fbd3f262-a8f3-4243-7dac-08dbf11060ca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FgIMW0RUpJtiaURCMtxT16hYO/0c6GIFBQ9KVN8tgG9eYq6gyFrWVg+pHjKim8fKL5eFHAzmRPZ2XGPwvZqwjxYFZTipJqNFeaZ6OXBmD4SXoLjyiI3oEMNXm20anjANUWDftI5ruMZDLh5eMmTXtyiuaUvEt92PV/VbjyRxh2XS5rGyzJEOLMHbHE6srhakIpAQIW8/H2eGHRPU2Hp75e/3Djckkj8npLGPVB/yPYXAaDW5MCMul4vJE2lFEtNdOdCOI7oYtegijB29LBKUkyYhBNgIyxam3ujhFuwmRB1sdhavsJrcqg1IC7ad7SmIGspxar5UV7lQwJQA9E+mSimGQbzU/2DQHgsDC8po/gSYvY/orCJ1PNGTW+tX01iOmbet08HvrB7cH4IpSkQCTMUxLgP9v5k9cQZLofS7MzSdZR6nl2VArFuhTBaXviGLOo1Ax69y5+v3Omr6hfVP7qQ+j0i33lrXk6z9hWqw/8UrYWHsYQnZEdZT7IWmvgunuq6UF9fk/X0T7+3YiHT77JK1nSoluD3WyN8irussDCci5EDVuGPb2oUm3eAycyaX3FUo/1WA0GE94YQm81MfFmJiIW6jx4F0aAWJg4plVREkOBekcC0fBXout129WvG5mPvtINpqQRZAJr/EnfkDMU5r0Re8rtoupwTFDlz9Ejs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(376002)(346002)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(44832011)(2616005)(38100700002)(86362001)(6862004)(8676002)(5660300002)(6666004)(8936002)(4326008)(2906002)(26005)(202311291699002)(6506007)(478600001)(316002)(6636002)(66946007)(66556008)(66476007)(37006003)(6486002)(83380400001)(82960400001)(36756003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SpEG73U8eoWFp3Z9xqT6BOhFYVOjM+XSgIrZisMhI65Wy3R5EJMruekJ2kDf?=
 =?us-ascii?Q?mlWFO5myxX57LPU3wlYU8lKxavt/CW8x50hQTS+ixkkI7KaUslk6cFykLHfx?=
 =?us-ascii?Q?vGqN5uq0ObagGRhXSLQuWluWFFO5KebMvkgOGsmq0gANTqVs8ah5BBecVYxI?=
 =?us-ascii?Q?wuKxmnicZtR+yUwP3Uji0v5F4QhcnzuLSs8ao7uiSJi+MN3rDgTRT66rFU6g?=
 =?us-ascii?Q?ujPdZs4AyhMYJI58AIuf7TQVN/gzswsif8vq869hzrXN2RGt8E7XpzSLNu9j?=
 =?us-ascii?Q?+9XhswJ1/s7P9dc/MfUODA76cysru+Szx5Iwh97DBM/2/370FBylP7E2OC7I?=
 =?us-ascii?Q?sStACTKMo0R0+clqfx70pea2dSgyhUDJyNo01T99zhz+aGUxEwr+OLCi0Utn?=
 =?us-ascii?Q?H6ASnKtUsdHqVkHjjf6p6nxvVqZqaQQ6uRCy7ZKrZXO9L1akGgqv7dZI+7i9?=
 =?us-ascii?Q?vJn9zEKrbwME4b2SgiLqO/uaGiiY/ey2Si9nXwYQgpKk26zGO2XgJSnVDYh1?=
 =?us-ascii?Q?Pp54TqQsj693yGQHicxgCb4vS4B1I9+i0Lb9Y6gCyk8Z1eBwhI3i3BtRrcjQ?=
 =?us-ascii?Q?Pj2YRTfwkeo0G9Joobe01DSiOepzdMtjvVt+anB0n934CE48giWOqN55Iw6N?=
 =?us-ascii?Q?EQ0omJ6/r/Y4bSQs2Rs55ZE14tyElk4mWUpw3ImUzEpTNjazYBhROLIDB9EM?=
 =?us-ascii?Q?SpkwiWUs8IGmeSm1b9NPC6f44As9yGqd+OvgsWitrn4Xu/EPekg3T1f7dbCf?=
 =?us-ascii?Q?a4j68MrVOmDEg2Bwmd03po/AnQWSrBjnx2o12ate6oZhWWgrtB2XQW3gGxNd?=
 =?us-ascii?Q?ask8dVVIb3r2ZQaXDEyv6WBkxmVNgZl0kN2Vl5GsmioujEAe+/dviyxb5wed?=
 =?us-ascii?Q?xauOz9ZZfDbRD8uGB2YVZtbotu73OEm34fY3Ub7jlg6YnHQA9gris9cWgxEp?=
 =?us-ascii?Q?cM89M6Ew/N2DWwu3vyeRgfL8w+vNQ5m6bPQkCUx+DPDE067zm7HmTzWsswZf?=
 =?us-ascii?Q?3NA7R36+owTzb+S4u3jTkSM2eQtkaecR9SGh2NBijWKHADvIgiOpf7R4U4dO?=
 =?us-ascii?Q?9xwcP8JgviucHOFmJ48gaRe6MJSB6IWdx+kxPTNwwA6PkhVGZjHAbszbQW6R?=
 =?us-ascii?Q?pDL4HqLNydIIZKyi436JynoEHM5oAmMWp7eCJI23+GW/mbHS3KkjsVv2zv1e?=
 =?us-ascii?Q?lqelArBfto3vIbISv/wfy1PImAz2858FruAGU9M2pDx+rhVqOivFV06RbWMW?=
 =?us-ascii?Q?ny95TI9XR52K5AhXhtXzAgse/9hujEyQASOlyc5zkPTafSijG/4s5LqYKUga?=
 =?us-ascii?Q?ZmyJBPaMgnY8O1mf1aNVU0+6CVEraMLlVWUnt1gyju0ollt7n0zsod4qbkJK?=
 =?us-ascii?Q?moH5k+bsK3Q+8blMXKo0kOGGxiqdvSjJAiOUiCdVCB5xRpyBNyuNOTDkF1wP?=
 =?us-ascii?Q?+2hIKf1Yayar3ETjvx3kGlTfyPN0rc5Lf/nb462+32drtSZXIA2qtV+KtEgn?=
 =?us-ascii?Q?ZxGM12LjbdkmHAnkJ/u7OFimxtewgjfnGLhLUJKUHwh1AqFbENnH4jiipiEp?=
 =?us-ascii?Q?JwouGDH48jWvINT9XdTVFQBB2YA+zqAipTwxVpA/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbd3f262-a8f3-4243-7dac-08dbf11060ca
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 19:21:25.1411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FxHUwSGWF4z7Pmwt863mo3jR5eCBHxsB2Q/HfmmPA0DYKka844bymNPOvP+uQVA2ExzeBQtDOsLKUgmRpp9pkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RESEND] drm/i915/syncmap: squelch a sparse warning
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 29, 2023 at 07:35:06PM +0200, Jani Nikula wrote:
> The code is fine, really, but tweak it to get rid of the sparse warning:
> 
> drivers/gpu/drm/i915/selftests/i915_syncmap.c:80:54: warning: dubious: x | !y
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I always disliked the '!!' magic anyway,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_syncmap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_syncmap.c b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
> index 47f4ae18a1ef..88fa845e9f4a 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_syncmap.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_syncmap.c
> @@ -77,7 +77,7 @@ __sync_print(struct i915_syncmap *p,
>  		for_each_set_bit(i, (unsigned long *)&p->bitmap, KSYNCMAP) {
>  			buf = __sync_print(__sync_child(p)[i], buf, sz,
>  					   depth + 1,
> -					   last << 1 | !!(p->bitmap >> (i + 1)),
> +					   last << 1 | ((p->bitmap >> (i + 1)) ? 1 : 0),
>  					   i);
>  		}
>  	}
> -- 
> 2.39.2
> 
