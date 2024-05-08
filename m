Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAE28BFDB2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 14:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2A21128A6;
	Wed,  8 May 2024 12:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YiTbi/pu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDE51128A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 12:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715172705; x=1746708705;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jaTYaa3XZiDyex9RxI08/TYDB05LPUmhgcKMD/BzP8g=;
 b=YiTbi/pufpxg8dC6/ijjwfLD3fwVtp5DXB6iBL3xccoco3yJD6jxURan
 HZzNcqjCIYBhgppeNfD1toQ9N9QQWgrv3vpjsJCDUW96Mg85HV0rYEgRp
 JZ3huKwjuwrf46rPRqsOZnVo+M1WZi1W+FY74PQ2z092amAxLngD/oJei
 Lk6gx50MDuDMTazq19p8nhCmxwnoN/zrCGABcP8qTGumv9nOXiz31Gm4g
 pnzkdoP1M7o6BqnpkJeZLdsPP81+QzZXH78jXAQ2PFiwtYlXcEiDqL1vM
 wxCVjBpyu7aT3tqRbaR672zDSVq6lp/FLiNY79lNyFxG1ic+eS5pGNUvv Q==;
X-CSE-ConnectionGUID: ibPQyJuXT5ag1+VKypbyJA==
X-CSE-MsgGUID: us69QCmIRfm5LikAcBbS4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="22435359"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="22435359"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:51:45 -0700
X-CSE-ConnectionGUID: B+tA26hFRQ6N63Y4elMxQg==
X-CSE-MsgGUID: gRjCuKNfQgezCtmRrNMByw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52087091"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 05:51:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 05:51:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 05:51:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 05:51:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRiAW+nz7LXXAO3pGW2J0j77IXKWB7C4jITq6Mc0OGS1Fbf2cp6AfnUtWb4xyOCavYXfxD81E2yHR/nKK+Lh8pC8oFYwMLNno1RPkVviLT2MVMRSU+FAZL98Gv+1Ohk6X/zBHpNGZkbYa9KV+gtaLRcmjA0bZDpFc0/Lt1YeE0GKWZMnO7PqewqyvhsFdEaIb/1ckY3kLCXpAHzOHYbhd9sbq87a4nP3+RAUhuXWr9nBLxggd25Uk3zuRkASVj8DKUoNuwVt965RtgM+EUQmqM9KGYllDs0QY6JBCu7j1233EIIj4e/rVuS6fHGDBa8VJELRDYQDY0dXRJEFWO5L4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPmTgNUGj60Q5uazsC72lTbV6djgiFMBLNUVRpfqLmg=;
 b=Bqozcu0PNMktXNXdsTZ/ZrqMBhox+1y23ZkUVAEqDfuaKefEyMY/qsS8/lkk3FkizMj8who2Ht6bXKsgF+McMaVByEPlvkSQpeZzMFZnvbsozT+UDNs1cCMEpPuPR59j8cI0fWTYjRAeW07RdyHGMcHUsgAzAoYglj0OIUrz9vqXlffgq84sobnyxB9x2IexNU0UBgfo/TM0WIRC20qFxnBC7p2Y8qkK7T2CMK+csokVygMnAeKl2kBbnQrqDRl+IQqkij/tN//Yu4dti8CFEoym6lZWbSFfHzsmXwV8m+oN71U8vAuX6sprDreFUWlDXNGyVERLDUt0yEIWH/QH+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5270.namprd11.prod.outlook.com (2603:10b6:208:313::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 12:51:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 12:51:42 +0000
Date: Wed, 8 May 2024 08:51:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <lucas.demarchi@intel.com>
Subject: Re: [PATCH 4/5] drm/i915: simplify ULT/ULX subplatform detection
Message-ID: <Zjt1W4owwCO2E4AZ@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
 <0d96bdbcb87672ef1b78b5f78431aab4d2984818.1715086509.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0d96bdbcb87672ef1b78b5f78431aab4d2984818.1715086509.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5270:EE_
X-MS-Office365-Filtering-Correlation-Id: d43aaeb7-eb66-41a7-85f7-08dc6f5d9c4b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4NqDHCTmlsebV2UVWxK9PblyNWbC7emLvQLpxMxNr4IkXoap2BeRKXrPcGjX?=
 =?us-ascii?Q?PWmDH/ifClAfr9ClFRmPCeope8HLJkMdthpxJ/o6viuYKu3w8R8PjSttqKn2?=
 =?us-ascii?Q?kcJjC7HumQfQGBRD1xYgy/fehkHEggSxxhEsfWYkXT7x0DX+liHdzbEJoagn?=
 =?us-ascii?Q?BTc9LOrIDvKg7uZkiJJZElHSUyoWMJ0h2WVBgmURQDpFM6jtjYTMTjR5k+/f?=
 =?us-ascii?Q?0Bl10A3LMnlXzjPGeBdi+/nSHvR0FW0Zo35St/6096Ny/pTMcWJTsJBJxBKS?=
 =?us-ascii?Q?FksFq15hpjFbbbxXp059BHba9N5DAxDQmyAqKKfnEnSGVqH5hAMv9RoKLyLl?=
 =?us-ascii?Q?L2lc1XAZNghijHXKtbqpV1BuykrnRyJZ2zTnKFbaGxqnS63KlPqsKl7BRozp?=
 =?us-ascii?Q?ykn7Jz6fiWR37VHHMSD7DyV/9AKhh6f0mkpKXu+L+YEV09a0eh/Mg/k3FVtu?=
 =?us-ascii?Q?HmXM2+cW0De2qBKyXk6dwg7R+q0ZynZzo2ML+uV9Nrau52Y/MesBvDYvQpNZ?=
 =?us-ascii?Q?Z7Uj5E5RPbGYsnH9gMa2EJ4J5HXeS2hW8IOlRR8VXOA6UctWvne8Bx8rfz3c?=
 =?us-ascii?Q?hp1ROCHEf20JjYJn4QjG7eZ4zfEh8GghzUZtFvMtENApwlH0Sr9czhfUFbZ7?=
 =?us-ascii?Q?RSpvDxX5PWJgIoshMxQA+JdGD6g5Xyrpty4MlujZSLI02GZtVbNmf7p90ipo?=
 =?us-ascii?Q?okt4vCS3FRdL9qNDK+it34FOMxV6USn5rl53bRwz7NzhaRwC90HXVt5/e99L?=
 =?us-ascii?Q?0bdD8DN9vgQvuQIbI/wYWMJGr+4AhPtdwTA5wl4LZEmwcIosQzpKSTGqy3vi?=
 =?us-ascii?Q?KzWY0o8z8Ar3NnIq2z7lpeB6xFo36DDhZ+utC1bwnpAhKLcBk9wDyVMoGbTb?=
 =?us-ascii?Q?IbQ9DFfRswr5ikureFsb1LIDbv6WnuJtxeNIVcMQd33uF1XQ07WJckd4LA1v?=
 =?us-ascii?Q?2m7Z7X2yxduoobE4b7FT6jafLh6IfBCqweJkr2S6BhlYXXC1dimMklTecSMz?=
 =?us-ascii?Q?scCdkFx9kyVDfYBGO+wKaKTPay+K+OazpnQEAb1Q1Y3YjI0dZRYm0CD6O6jk?=
 =?us-ascii?Q?3FNM0fELwAmGn4v/X28xC0Kir+ojuuSoA1udixSSNgBQxq+rBcRPCn5zkcIy?=
 =?us-ascii?Q?BshDqj8D0nDh4sCbRNHxTlbcxRIMFxOSqefY+E1T4F0ReS+4VlTjTVzwcVHu?=
 =?us-ascii?Q?WQpWa0Azilviv9ZVQ1ELGDL7Enq5JZB0MEEGwuLoFms1iL4N5ZhV+jc8uHeu?=
 =?us-ascii?Q?Oy+MfuqrU8KQyni6A2hLjiq7UwKJ0mPJqzmpDwHdhA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KX33ouAuZOLTe6YtXQUkR7QNZOepfFWybwYg4aQnGPUlUWeibw4PmE7hiZt4?=
 =?us-ascii?Q?01nTcmCRtEw5fCY19hB/7EEDbEKrdT9pRCZ9LE78h6yg6wkyIKG6lgp94vrf?=
 =?us-ascii?Q?y8fV6lMmbs2bPLr20++Oq1ffO5TSmAxIOlw1oc89NH7w8Qa1vgtYh/TSbUZV?=
 =?us-ascii?Q?x0AevuksHAyAmXdJ88/6HqmXxBBeWxGROeT6veU/VdQWk47a7w2tdjParOin?=
 =?us-ascii?Q?/j1nLW8V7859I6qIG1Fbux8lKMmGZk7puTm5Q5PA8gki+KgfpsaUgQ9FkEFj?=
 =?us-ascii?Q?rWX0TGtubMtv2xdeGAY9TRQEo4pyyahXoO2XZhM0zNQVTNn52ZDZ/c0XuwII?=
 =?us-ascii?Q?Ofgd1xk4i6TAQJZRsAnWQU4EuFI4SYfGU6uSCBAriOgrVAJWUFMGK2kjba33?=
 =?us-ascii?Q?N2AQ6wgLwSO3F90Evh4DFDZj0w4c4blX3MixBxlVdM1uA6gB+5CfHSbFWjL7?=
 =?us-ascii?Q?dgI+yOl0hHTlAzZ6l4oIFju8VRhxlKPkbkBxzGF0pEE/kLfW3+2B1w8nS3V4?=
 =?us-ascii?Q?q8ua4cOtci40lCVIW8ak/8Mg4SWYMunvfekdAlMfHVQiW8qH3eEWoiA4Ad+C?=
 =?us-ascii?Q?fhwcA3kAngH4PV0jKo4NTpvjLcNtdyeXy9HoN//y+Jqeha9HKAElVKW1UDcD?=
 =?us-ascii?Q?J1HBgMa2M0l26XKIPQkLPhstCbCMBZy9Um/Ju2+pPLv0gOn+KkVNsVeTNl+q?=
 =?us-ascii?Q?Y9mNlu/S5fTHLywyhesGxC1MXoNmioi1Tk6zOlFaE9bhmxfx+hVsH4yPW2Uh?=
 =?us-ascii?Q?C6Y5ltFtakHMCOMifKxH5nVzt45UfI6g5c7S4zyw5TVQInK7oWDl+Ryufb/B?=
 =?us-ascii?Q?QeB94f50Kvk6en4WJLGdE61y+tV5TBWwdyJa6HsjAWU9/GSCAodoJksguZAt?=
 =?us-ascii?Q?b0k7ZeX0qtJOTZdIykMDZ5/zZqzZFyMkqKs3kkpZkcB0HXlm4TljocywAm5M?=
 =?us-ascii?Q?J4nPMP7UFWQ970yMp7GEIHK/GrzNs15FtlN85R4l5CdDYCqy71P6fUCAOgHk?=
 =?us-ascii?Q?uIKR5B1pqzAUgFxsPeHunp6mI59k8ep+0mmYOE9y+X33qLu9U+S6yqTUVXQm?=
 =?us-ascii?Q?Rs8OXforYX3SY2scl41IDobo/1MPoViG6SBWlJxI39nOwYRGBFZOkHfTaBng?=
 =?us-ascii?Q?QNeqlM0xtjFcIq6kmRhqjdIvJztlBerd6W0nRgWfdVvr54fjUKGBlY6c/InE?=
 =?us-ascii?Q?fFRSvri+rHeI1CZevmcWCfQ1cdb6Et7Yc0e4mEkA2Mwz03GS+mci3wibaY66?=
 =?us-ascii?Q?zS0zd4m93Jgrd2mfOPYpmPT3isKB6nb8d3v4yIAUAngnF4rgXHCVF14gMulL?=
 =?us-ascii?Q?/PR7MHlj5qrzxmB0Ex96wwqAhUroKzR95wK2dFjGrD69+2gJy8Es12X8K+G5?=
 =?us-ascii?Q?cfdOyC2SuSm68OD2TQaCY15l4WPl4Seii9VHydShsa7cjnzbIjsia1foBQb4?=
 =?us-ascii?Q?FuzDy6DsdjMSB0szEB/WT6OXnByEXKQJn86VH8CWMmjwLV+DsWZOyxpKI/99?=
 =?us-ascii?Q?8HU65rqlx3PnNc6dRy9nU15QRTOdDr2MAccFDbEmbCGslH2tmoenQK8QKpiB?=
 =?us-ascii?Q?fab1lscg7K4y39P8vOKKZhx2gw8sJcdzGPNRgypx++NpGbJYwbkJ3o5xQP8u?=
 =?us-ascii?Q?tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d43aaeb7-eb66-41a7-85f7-08dc6f5d9c4b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 12:51:42.6603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fkfQttP9gvO0tjZ4XjJ901bQQFm14iCg2Yo/Usl0gjj075Jp+JNWrBn6vIyu0UxFaFeDE5cE1gUQC3Gsu1t6nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5270
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

On Tue, May 07, 2024 at 03:56:51PM +0300, Jani Nikula wrote:
> For HSW/BDW ULX machines are also considered ULT. For the sake of
> simplicity and clarity, handle this at the IS_XXX_ULT() macro level
> instead of two simultaneous subplatforms.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 9 ++++++---
>  drivers/gpu/drm/i915/intel_device_info.c | 4 ----
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d1d21d433766..9c57af484ba8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -562,19 +562,22 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
>  #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
>  				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
> +/* BDW ULX machines are also considered ULT. */
>  #define IS_BROADWELL_ULT(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
> +	(IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT) || \
> +	 IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX))
>  #define IS_BROADWELL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
>  #define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
>  				 INTEL_INFO(i915)->gt == 3)
> +/* HSW ULX machines are also considered ULT. */
>  #define IS_HASWELL_ULT(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
> +	(IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT) ||	\
> +	 IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX))
>  #define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
>  				 INTEL_INFO(i915)->gt == 3)
>  #define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
>  				 INTEL_INFO(i915)->gt == 1)
> -/* ULX machines are also considered ULT. */
>  #define IS_HASWELL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
>  #define IS_SKYLAKE_ULT(i915) \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 27b4a5882be3..a72efa919602 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -232,10 +232,6 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_ulx_ids,
>  			      ARRAY_SIZE(subplatform_ulx_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_ULX);
> -		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> -			/* ULX machines are also considered ULT. */
> -			mask |= BIT(INTEL_SUBPLATFORM_ULT);
> -		}

Oh... it is a long time since I don't look to these bits,
but I don't believe that the define above would cover this case here.

It seems that you will miss the bits in this platform_mask.

>  	} else if (find_devid(devid, subplatform_portf_ids,
>  			      ARRAY_SIZE(subplatform_portf_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_PORTF);
> -- 
> 2.39.2
> 
