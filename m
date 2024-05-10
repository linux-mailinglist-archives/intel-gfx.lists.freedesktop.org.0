Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B838C1C37
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A0810E33F;
	Fri, 10 May 2024 01:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LGFHPS5i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBDD10E33F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305848; x=1746841848;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dRjKYm6rm1Aaplw6QOjCwoizG11tDr9NgoC5S9G/HBs=;
 b=LGFHPS5ijpwGNakSR4tBrvNLXB8nnXltSmvu8Jp2zCGrA639v9S/FE0w
 Y4mUah8nP0OdZGWnFdgE60kvTWjaPYeT0rHmz8KRieptf2XsDbVAuxrEb
 TAcw8vtIou1v2GVld5lw8EMpI4KlrFmxnupZfxmvyjF+hOxfTSNhtxHX6
 +79P3r/24x0dRv9mRVPG1Lm/38SlWgn3U9lcvU8P3YfjsaGuuKM3DOqKn
 9j6iABjTfZzoGWZltAdKGnXcuSFFGTVk1p6P1H6UaWBTAUQmnoA5ZVx38
 woBGF0EtDtyKa5vh4ISfjbO7I0fJFcFVqh9N7vmXWcP5DY/csCRDQqfGx w==;
X-CSE-ConnectionGUID: aeQYdop7RPCJdM/lwf/nwA==
X-CSE-MsgGUID: m20lNg7nTFyWchlnWxywVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11427981"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11427981"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:50:48 -0700
X-CSE-ConnectionGUID: ywpUDayyQe2ikH9RGbhqNA==
X-CSE-MsgGUID: OMgeqAuASESFIoOfSfop4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29999678"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:50:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:50:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:50:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:50:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ip9g6KeKX1Vs9BF0FZkLLQKzoXxKr0dHHjnoyIh19aNOK04x1s/pMYZ4zVbOPIeEkiZ6emq1MLU9zzkNfUY+VB/VBW9p6TKAKR8aVFJ1NTJTQ5h5Ev9cYd9bb1ue2EOsv8YIDuuPHmy6xN/ZJz5JJBIkA1Ls001moIu2/+eUv+9ouNMbbBUE3bXqOmf343KIFf5gSQNuV6HzOWqlqKyTT1pfNTU0fkf62FYXL6OrdjfIdyt/SIXUf+vCzuYEw4dQ5f83trL9Yfm390/SZau0UBlWWSwN79BZ9cgA9l+g+3+3EfxRr2bOPTSSKChUg/f8nL7tL+XTYM7EA6BmH+GjAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tAsu4MR9nMkz0KttaztAlkApRr3cfHY4EH6s9rWibpM=;
 b=hsAyo8m86nGqMflF2v9IilQtXQa72s49DvzfpBU0j9fLWQltDjB4uzEkA4Z1g/im0fmdcAA1rkUj7ysspu1qCjPpXHVgBLNbDZzr9QfRmjhR0lmYkubSFgItNVLxfy63Kh+x2HsK6CoeVNspV7d2NdkKNbdftoLvsutR0085dJ23iReCzrOMsTGeyJaMw2W/SoTdHQY2K3EeGCmpSQLI1T5GSXI2IP64QFDtmU/Iz14ocLM3tczGpGTDfSzXburp7tvdxnqSq2GFZfa9ARmMa2V24TNPtlRreKwFnEaFdfp3eaYeNwtO3UnRD/kFblbCYNnJiQ8frGrwYwth1X+ymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:50:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:50:44 +0000
Date: Thu, 9 May 2024 21:50:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VTOTAL_PREV
Message-ID: <Zj19cOhGEfglmhPY@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <de2c305ffef3df1112234baeae944b8dc84d0707.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <de2c305ffef3df1112234baeae944b8dc84d0707.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0149.namprd03.prod.outlook.com
 (2603:10b6:303:8c::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bab0531-e011-4e3e-dc22-08dc70939b12
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?p5irGEi4cc4Lj1XdLyshIf89R9XpOgGyV+Z2kb5NCe3YPMXhEwnhvDDQ7AHN?=
 =?us-ascii?Q?X4+9Q4WXTw/draA8zioAU+OLcZWaZxuFLILfYKVQu2jX4uY+TbymLzYNfhIm?=
 =?us-ascii?Q?fJZ9GnuNvks63RAHNkdjC5rNs5SAA03qu1l5Fz0Lc3KWygq/lTis7r3rn00p?=
 =?us-ascii?Q?vYOweI1AwXRnAi94kczJ2QjNbS+usfRH9kAKTlz5Ty7/3qhe0z85rP34/phB?=
 =?us-ascii?Q?as4tbbUc+Ciz4Nylj3O7+ui3uUGhMZNwiRtshgdYFhAGIsgZzluSFcRoQ/Ys?=
 =?us-ascii?Q?Vetz+Nko2PgPIz9J1Tl2BCYkgB4p3tLRDs5+v6scr//ojXYpab6TSmHfdcdD?=
 =?us-ascii?Q?9Tc8gWMyQGLIPV+QvdPX7iZAgMavG/nsklFdIwt5rvL1U4RJfCs0xf3Ndb5y?=
 =?us-ascii?Q?EclawtJvyC2jgljJqfgFX5lNQZ4e1J7NZ2Bsl95h6TPAqQeKZXL+9iFdfIR0?=
 =?us-ascii?Q?E3ubC+35rrSjfxGuqgPOQqv7epdNBu5zh3V/oqgfJsleo1alJj7d1oXLR59O?=
 =?us-ascii?Q?Fd+cEuhTJ66wrfxrkPVpnquT7ERIgmiDQyj5sCfHYOrxYmgbYjO6fMPNSNXF?=
 =?us-ascii?Q?674b0ITXGFuT3yf7ZiACvUhdBWJCoz5clyuZvgF4oTrDAItOY5cRyATaxz5N?=
 =?us-ascii?Q?dPCp0HPyEFWa/UxGJ2GoRYMYdDi7dG41eGnHyZhM0ECFvUn15E+0fvPinKqr?=
 =?us-ascii?Q?EzKB9xXBVsgApTx3sc+ycMA57V4YPEqK/0agG/O/t4Rx6Wv0LQTvx9XJKTTF?=
 =?us-ascii?Q?pK+TEkCyXiTDBfyFDIEMPEPm+90CeSnPC3mgTSJNIFFtN2SSrOaVBFLqQsEU?=
 =?us-ascii?Q?n/+UnrwG4iUl9bcqXKJ37Wdl4/FpttGA7i6Ar82oBH1IHkTu4PbxRLnDlP7Y?=
 =?us-ascii?Q?tIt7zbb+l/IB+Y1HKAL9HShYClmCX+Gkge3nOxT+mdQESZXh+AIBXuGBrH8r?=
 =?us-ascii?Q?pFy0TFfIgKKh3vXSUf8Ez3t9wqAWQM+YzL3twi/wCGPwkcaqbPQE6qThy5W0?=
 =?us-ascii?Q?oSD6AUSRmzBwBLIc1Y2xLMxzYah/HCkKYbvZjglOsXu79/VPmp/sC0DCsdzf?=
 =?us-ascii?Q?vKGe/FDxz9blFT8x5UJQSeErvm7uCNUIqoRRwk+O3fOORC+NeIFvtJcjlBrf?=
 =?us-ascii?Q?lYArjTV8m3lD+tWFfGXN1l95CfwYHlKcSjZcDSuTwEcvSVBQXftMjiymaD1o?=
 =?us-ascii?Q?JeFO4C6bSjPSZdyqxltUQcZQ+4rumImjFmqlefjApadaapdY78wkqLYUbvwd?=
 =?us-ascii?Q?gppx0nf+5iPNSQXCSd24CmAQFHg3UcUup47bXrGxlw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1QaGZKY5PwMydSilX+y1lWZ2QTs3VZOv3E8j6Jny6JKw0SQL4RQ40SoIh6Jy?=
 =?us-ascii?Q?AtWmB2ZTRR75S35p7VUkuhD11xL8nsfsaPKAy1JqfeMMO23kXQtm09BPwcfU?=
 =?us-ascii?Q?wH/dryIAYJHeXv4WLAbP90Fnx87Pm6VHMsCWyjBAwW3eybvEja1oOclS+4dt?=
 =?us-ascii?Q?eNuZ9rnsu3XqxwpupFqHu7li22q9/YC3GrmiY9wUmAn+XT4dDPP2B1KegfOG?=
 =?us-ascii?Q?YLL0UavQ9freoBFT3pxMW9lNRBdIgRBbN5MCPVmhwktjFVcbm8eR3zRcEUE1?=
 =?us-ascii?Q?7xVx5b9+gTHMg3MhpZCRVbjzfBjoQlmEQ32LRKLDt6FFmdwaVwu4fjRLbxw6?=
 =?us-ascii?Q?dgNfjk0/3IG4hRjZNpFZAroKkBhxDMsUyINEAAZDyaAvnNfI0mHxAvTKVtvF?=
 =?us-ascii?Q?dmt40e66bFQeU4RD+OAv+Roy1NntZtEw3asO8BPtBpeKU9W3ogU6zFkDhLQ1?=
 =?us-ascii?Q?S48cTfQsNzIQSNuNhIucomupVvDEHjmS39ont7FhpSlT+3holpJP+3ANPC9X?=
 =?us-ascii?Q?tW/izxS+bLkNl5zJbpKreMxCf3M+AmmmSJdZ8nXM62+puAKaLDFeIGP3XlWI?=
 =?us-ascii?Q?hXfooNObTk3LrmTTB8QVdsOJJDVuroY0A1Lu540e8n8gTjE9P8A33TwFsY4I?=
 =?us-ascii?Q?l/oPXr0QXwHHGcVP5NBeguo6ucOq9pYv/3D4jdDNfgrBMZuHWNLgtqVOh15o?=
 =?us-ascii?Q?psXuvfGL5dlwqews6QlO9Xbil2ILgnNFhPGmulom9hOzTdUvnkcG3ncDQZgZ?=
 =?us-ascii?Q?Fuj/1nWiELaIaiTFUyf9DoyZjfVNIFHoHJUem7RizM1agDrR5v96K5kVcPvX?=
 =?us-ascii?Q?abxvj3w6YefVIgI29OMhDFptM38/mlrbEWCxAksgp5pwrZp2jkXflVFqF1iz?=
 =?us-ascii?Q?U9D17T5XbY/m2/cDv9NGtVdJJu50SnBu23Oriwsqy9qMo0WWXy2lMUbFeYUl?=
 =?us-ascii?Q?t0KJV2LTEN3SC4E4RLGVbZzZ2JUK3oR2lI9TTQ9+pu912DDUO7FqtEypSBXA?=
 =?us-ascii?Q?vYv82Y+WzvCZuaQoZupMiQUEdgJAclDMFB4n7vaAK6tL2d+KGlJ38T/+qy9U?=
 =?us-ascii?Q?0CeKGAzWXVHmsyugUPp6E9rppylqHeLoFNgPhg/TosP8QjeUIMBi26GbVqHe?=
 =?us-ascii?Q?fdw0pEEdL5zCZvmNRCTWh6hE4hr0PYFX7jJb28ula7ANaU31dQReIqfTosup?=
 =?us-ascii?Q?wI8M9zQoqpDcc8uTRAaF9unKpfWrR5e7FDEJV74MWL7BYZqLNAowXqa+qPFB?=
 =?us-ascii?Q?BOvNgeIWH9wKNDRm8SvGSBqZoGxSmPnuyzv7Rc9MSQ/wIm6E7CW30ZFQSzUN?=
 =?us-ascii?Q?M5EbnMrn293TOqAW2Vha0mcuwBLgjcTBVzdhDpjgtImi7PrBOtfH3WTsgyh5?=
 =?us-ascii?Q?VapZtSryGIW6SmRO1VD/GmOawHgQRHYVCS4fb3pf4PhS444SeriogCW9esO9?=
 =?us-ascii?Q?gAf7czCSuXUE+smlz4xbqR3DNZRkCjQek1lRaxL7JAf0VxzB2KjCUjIETUIa?=
 =?us-ascii?Q?+3ui8ihffxKiSgaiL5FWHJvX7oYi0G2uKQyoGbhsC2FnrcB7iDECjUlKLEhR?=
 =?us-ascii?Q?Gc1s5c3J2Fz44OMMB2tDI2zSEp+WQxLsb5IrkDQBjSn3BhqJzrRpl5LDTdSZ?=
 =?us-ascii?Q?rQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bab0531-e011-4e3e-dc22-08dc70939b12
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:50:44.5584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GbrowIEE/pXq+1LBhz549MRIs3o1WclQm7jz0JJpyfIFpOj0QZDBo2i/xpQwRBTkIZxM/3leL2dUlFBYIS1FNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:52PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_VTOTAL_PREV register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index df43b9eb5374..745ef9a32d88 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1291,7 +1291,7 @@
>  #define _TRANS_VRR_VTOTAL_PREV_B	0x61480
>  #define _TRANS_VRR_VTOTAL_PREV_C	0x62480
>  #define _TRANS_VRR_VTOTAL_PREV_D	0x63480
> -#define TRANS_VRR_VTOTAL_PREV(trans)	_MMIO_TRANS2(dev_priv, trans, \
> +#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>  					_TRANS_VRR_VTOTAL_PREV_A)

ditto,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
>  #define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
> -- 
> 2.39.2
> 
