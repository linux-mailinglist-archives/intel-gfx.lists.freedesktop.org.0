Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD988AD63E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 22:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F67112D89;
	Mon, 22 Apr 2024 20:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ctg3nJrl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60555112D89
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 20:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713819592; x=1745355592;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mhfPg/HPw+da6GfQEhByw1GKYHapG+mlJ5KkXG/1dWk=;
 b=Ctg3nJrlGVgdMxDqZbofitwQOhMBuOYWJ7/2Bn6gOa0ToOpmGohX029B
 XxzlUzaZYsV39h0/eZ/5c8cN8aZBar9VRn7KtPc37/PS7zBO1w3iQvDmz
 RKHoyzEkLjAi0nqNnsWFu6XpIWSibrbxN0f3WytmpYB6j2obiiCm3Qag7
 Qq169gLaewcpoDQqorTI7noqbyuuwbVjrJI5/aJH95IyI1rrba+x4nXDj
 pt/JH846i88q6/q2DSdjik4rkjj+gL8cpXWMRUs6zETVAWSf7AL/Wue4n
 /HKpI963uXfLzHtvbei++g9iRXQ5qJo7sj1XMJX6Y1My6UW5KudmGIQtB Q==;
X-CSE-ConnectionGUID: 7FkC6341SzaPTWzPnhPTaw==
X-CSE-MsgGUID: 4RVMLg0NTSyFXiUbrzEaVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="31870204"
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="31870204"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 13:59:52 -0700
X-CSE-ConnectionGUID: h5yBB4XTRQGkbWb65FXkOA==
X-CSE-MsgGUID: HtI7IjSaSamuoUGREp0hQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="61577523"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 13:59:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 13:59:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 13:59:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 13:59:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 13:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ke1rtVhSEzlzxo7ix5mPwAIfPayzLOeKI4YufDpWOxjIr5FyQbf42y2dm1w6Hz4bt084hxXtJWMrvuA6NIuGI/URN2RHl//lgOP+H0u+DEPIjhgU1t7HbeID3uFVP6ByQmxge1+Jp/GkXUePej270zSpO6iu6+4dg6xMgXfPSx7xBlhwpxWq4p2dxx0+g8VWXmI9Li4FBNVRWmHN5hDQ9NQ52SwfGNTpc5so/jUQyeBnwq/nxHSZ77BB5a5SxpZedEnlRcesYwrtih04yfs57eZviVwENC26gbNKeta/HTR8h5/LK7GMwFb1GLL8J1lMCa/4Qd37b3T5dDvrJS5bzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKY/eLEz0JebsHMdv3zv6ZhRnEDBR55Ig8u4aKRLAcM=;
 b=eJE8izE0l8T8H5rcfClln1fr3siUG1kwR1GxXee9s0n4vo9GPztA/nsO3knLYRwYTu/olbz8yy96iSdD756qfkB0ch+3sESFPJVm1UqfINI/crF3xZCnfWOKaib4zRY0QBXiXmB4ZqxKzY9SG2s+HxU2uwMwAC4nOgMHnPMt9DrLQyZFaBr4ldIEBhRgyErXdTK4QaLkc8w0EmymrowJ45YOYLLHNU6H3+yCIUusvUXDRMNiti2rOoVUh4otCSKT0y67ryuFdzh/VV6/nPDmhcDT1Vw+gDTjH8SswDVdqadqHTYaBJbF6mPdBa+stOE675OSUueqjOqWUYKOo0pImQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8522.namprd11.prod.outlook.com (2603:10b6:806:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 20:59:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 20:59:48 +0000
Date: Mon, 22 Apr 2024 16:59:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/4] drm/i915/dsi: remove unused _MIPIA_AUTOPWG
 register definition
Message-ID: <ZibPwTsKs7M7K2fL@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
 <57afda02856a68f78fe4d30384d4f7b352b9a812.1713520813.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <57afda02856a68f78fe4d30384d4f7b352b9a812.1713520813.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8522:EE_
X-MS-Office365-Filtering-Correlation-Id: 17eaab13-8868-4e03-e9db-08dc630f2560
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2E1TZv58LmOookZkadr4CItj3mC7DqBW7PRNceAWXnNhyfmC3puh/FplJbKx?=
 =?us-ascii?Q?tyYlaJwEWUCpOCilupeJV/FwZyR7QOFqqc+IEqsKvWdCJIERkbQy+qwecvLN?=
 =?us-ascii?Q?mHn2mLubxQRnzlliJpH4G0xXuTFcLNxnuqf9Vh7qLvqIEChOfQ+38vP49Gff?=
 =?us-ascii?Q?63t9r+QiFPz+2Vus/LD4my4bJW8dHS4ZxzH6TmPN9wo4l/dEDrSd9Z0zRLkl?=
 =?us-ascii?Q?mAlNXZDiN8HI/Ufl8Hmb65bP+NVfj6xVNeVG4j0fzbJPToUZHzj80OVLFKSp?=
 =?us-ascii?Q?NFoOZQqQ9qwplTA82kaWCayWNvEQDJ0/ipt+lPdfL3bDPLSXtfn8RPyBkRX5?=
 =?us-ascii?Q?uhT5dL5632ScYhKsFfL3VaqzyfcwCzSBvGjhjZBobdIxm/F2Irp9Tovue2y/?=
 =?us-ascii?Q?INVJfwmmhTYu5wSobzjQbIkJNBVtAFFHj3FW1Mian6q2tT3irDbthSWHUuWK?=
 =?us-ascii?Q?pJQd/66YN4vAPV2UUUsMIFpI/4wqotRi3cKwGbpTdubh7bwb3VSdosrmkyYW?=
 =?us-ascii?Q?isBm6MWbeoKs9SKH97tKzQKvFpCkVGxJgLagmU+M2Wu7ZeXHCprJq+fciGXu?=
 =?us-ascii?Q?5R5ZnGkFRAVCgNBcNLeWJASxu404EiifN2qlT3A8u2tCL8zpxCQWXWDonLfY?=
 =?us-ascii?Q?BVrKDf4rv7GRQvB6Dx+r2Wqc2SM8nYWFQD2z0VIGdkTIlUxEr3VZrI44bnU6?=
 =?us-ascii?Q?hIqSEHrVdGzes7j7wRIliIIUTRK5caCniIWaWihULiUtR7X8LyQ0i67M439G?=
 =?us-ascii?Q?t9tiQcRmlEhMf5ncXdA+cmHhPmujSSUqW3eJEeuZHMtt+OoR4MMubKxqslSZ?=
 =?us-ascii?Q?3hbGMLWdC2kOrOGTAqpwo+hM0vGlds56R9PZA6Fv4L8CCFqUXKC2+Q4iRF8z?=
 =?us-ascii?Q?yqrgcaSUQa8NTPZAf0HDn9zYdy73LyGks0EzPXiUs68Q8PVkgN05V6pIY9TT?=
 =?us-ascii?Q?jZiyw1wMzCc78i/R5AglhATM23JJxaXCFdlzSAipqZ93HmENrfXX1cmR9Hdv?=
 =?us-ascii?Q?9HAaIhuZYthvWECjldRyb0t5AS50/vA+djLn3HNIrrxGVqioEII+Xvb56nct?=
 =?us-ascii?Q?F2ThPNs154CWXtu2YLL0vArC0wmKROO5tDtbFfX3bRSy6/6q21kj8ALcjUF7?=
 =?us-ascii?Q?Wn/oz+xoY3BdJ7sr3bBMdkWPmJwXJP3/n+b5bwWeahSBr2qV5f2Y36aNURlg?=
 =?us-ascii?Q?nE5Fyvq6YdDA3DtDE9bm6IWO481cH9lSgXV638qhxyZqhrEBfSXIbvFMvtf1?=
 =?us-ascii?Q?glImljHqUTdZqH3+s+GMXC+sClcz75DP8PT37syscQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jD1L5uZ71rg0kaP/yigNabMpm1oFRkSehqVjjXGluOSAIc15NK9hBSTCjcgs?=
 =?us-ascii?Q?UMxHKcEa09YPfRXZFH1PiyryJCMzWpbQFxgdsePbUxqgiOGUz5xTIx8LmLsI?=
 =?us-ascii?Q?iDUGnQRkmn47+gW1mNbleFa2iKxaME/UXFsIJtHHCRomMTUUh9fV+5w923fH?=
 =?us-ascii?Q?J+J1x8fPCTp4nwFTsDxkUWaCkX076oJWiZ4HUVCYXIu1WfTerkfiFBHM70/Z?=
 =?us-ascii?Q?TX+5EH20v5rKKMX6xLYV0fXKhrY2TWL6crTF6LG8uaYJmBZ8bpGjKrnw2K2r?=
 =?us-ascii?Q?h7eLmCy4lLchvELOrWCZSfFrBui1NyiQdecaZd0RoTfqSx+vjczVJIyX0KJU?=
 =?us-ascii?Q?qvOvAIbfydx963Z/k0uPWyJgEtS2OyJVtg5JtSmR5WKXZ3l1chQuW+H4Biep?=
 =?us-ascii?Q?UNv/+t9vgKPiULlMNu/HFjUf0udU0YkaqALP5VRMugqxtpDb/6HN75wxYyZp?=
 =?us-ascii?Q?AowGTJgkBNgcLtdF8S2Ls3qVqqPnV7A+z3+Yn0vyHU1PpKMNrad+55oerd1V?=
 =?us-ascii?Q?hJxjimM9uruvPTIU9YnGpn1Jg0H7gE/zKJO3mPvxzscG9+QYxgvI6cDJrh+A?=
 =?us-ascii?Q?20Hju3F7r2ZXAA1m/n6pMjlpfwtV7pEl5aPt1TFcSByz1vHcVfgbvOaCO6Pb?=
 =?us-ascii?Q?3ZiH4CWXkYrddTOrY0L78vrf8oxHwdD+kWq0es+kDtirwpc00Vocfnx68yfp?=
 =?us-ascii?Q?chYG4jfMpkNnJ5qIwOwZ32Fhf+fY23MQNPnIcdgZ8P/7WjqBUnirDtg/HW2H?=
 =?us-ascii?Q?HdlO6/3XgyCtxOochsWpKWtx0pfEDRxHx3kZsYnU4wz1rhBDGqKkhuvhKa6T?=
 =?us-ascii?Q?AZc0Ubr4uUanS2Ze76SSCQH/M9VSIBvqypUnImpNSSPjsP2HUEr+bp4oEGMH?=
 =?us-ascii?Q?TVg/yd1XCrEB8HGPyfnBVn6SQ/Zj4QV5urmEP87RZ3NvSSASYoAN3ZVkFUoh?=
 =?us-ascii?Q?TQ/ABifvmzckb++1YcGYR7MX2N3zS393In+ivFE7hci0rd2rfm7BNScFty78?=
 =?us-ascii?Q?TSBjdK7knceRW7JQmPhjwfaXxNN5oggPVtTxqcmABT0A3mLEsW7/mpp2XyF5?=
 =?us-ascii?Q?K9kAtFsY8OxZXof7Rk58NIAxRkREq2FxUjyq4mP/XINnbVDG+kUmapFFU93O?=
 =?us-ascii?Q?jiGYRCrEvqh5uyKmd0W0o7JT68+VL3YVdnVeL0IpGXsPj63BE5Emz9fyQmwH?=
 =?us-ascii?Q?EVamVdoKeFV1wHOZYTsDriE0/4UeWteUYTy5Z0IbbvlwKEUeThbaICs+GpS6?=
 =?us-ascii?Q?1T2gR4LsgYsfHC80aUI9Qvdk0h3vvsEK6UM82rrENEBqjH8Hbmylf/f8a6Rs?=
 =?us-ascii?Q?03pPnMlRXfgQlEMI/ueyBGixoe0iUE/xJcI744ENWVyZoKQDXotDTndhqfNz?=
 =?us-ascii?Q?3iCQqkEuGgvej04koiLfh5AD65vpoLTBeoD9ztWjbigoR0nfryit5GfEYCvG?=
 =?us-ascii?Q?ML/Rwy3uKZjjQkVnprWdkGzm9seQ0JMiOIGIZ+ZqrLWKj1+txfIN1b8RaJOC?=
 =?us-ascii?Q?VX95LOR2q1pJYstCrGud/P2Qnen0PCviPeDc5c8+B2fNlp3DXriZ0cOa408S?=
 =?us-ascii?Q?o2Y29AHxxz5LoTpGD4tGOUnwNTvpvZUS/pYDH+h8j2O5XthD43/bH7CRoeO8?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17eaab13-8868-4e03-e9db-08dc630f2560
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 20:59:48.5351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cd1T5E6LO0Qpwpxtqck5Gp76XW96/VzUkJvGDjhopqFlXtenwJNvSvafj1n5UHPD+FqVGkSLsZz0n7svCjuYug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8522
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

On Fri, Apr 19, 2024 at 01:04:03PM +0300, Jani Nikula wrote:
> There are other unused registers, but this is also unusable and
> inadequate. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> index abbe427e462e..b0cdaad7db9c 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> @@ -93,9 +93,6 @@
>  #define  TEARING_EFFECT_DELAY_SHIFT			0
>  #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
>  
> -/* XXX: all bits reserved */
> -#define _MIPIA_AUTOPWG			(VLV_DISPLAY_BASE + 0x611a0)
> -
>  /* MIPI DSI Controller and D-PHY registers */
>  
>  #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
> -- 
> 2.39.2
> 
