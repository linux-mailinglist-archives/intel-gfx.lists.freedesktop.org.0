Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE179A5EABD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 05:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D0010E7F3;
	Thu, 13 Mar 2025 04:45:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c40TxacT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EC110E7F3;
 Thu, 13 Mar 2025 04:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741841124; x=1773377124;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fdRXBvibcD4oi9+dnqCyiFrG5PXtf9w+yVQ71koRHdU=;
 b=c40TxacT53Yq2yM798P4hMdRnUd+4DVYAf4NCq/XGJh7zFLNQx9zew1E
 sq3TfmM8sc01p+c+lXqStXcUqNZkMW2hPSPAPfzCcHUjz7oVhpO3ez7Vr
 VcIlkKGl6tuiQXPmcbIAfzWIuJAcI46P7nS3P+9Cp96TwOFZbgyFSDsMj
 Gfe29rSERMkUdZcFeA45QhBRJMLNtKoMmLLh9ZO5z5feQ0GBDje7FbKfm
 q1FGnbcotZ+Y+4iWKIi1DaqGFBozxQWxMzZGgUB7VNg4b7Go9ij2QkInJ
 2IIS1dd9uE49oTtkFbtJUpDSOw4VIXDeU5giDrCd6g3dc9K8TzVrih/mS w==;
X-CSE-ConnectionGUID: 2frivALqQLi8Zz1otKpmbA==
X-CSE-MsgGUID: PS3Jef6rSimXrjunHk1Ptg==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43046427"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="43046427"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 21:45:24 -0700
X-CSE-ConnectionGUID: v1mulb4KSBCL7kAhRKkk2Q==
X-CSE-MsgGUID: lP/wKkbbTJyPpojzuxA/aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="126019370"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 21:45:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 21:45:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 21:45:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 21:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mkW/PUKEik1a0hJLfBiVO1YUu8OiSHLFfGHITv50t4YZWSd36dDGldbyszvQ/Vq1etTI5t8CWxK0HyG1pukVS1CWKDMOca/gg1VHuqFV0Kt5YHxcrPxQSjXsM/AQl0+vsMSEVbEDQsSqyMx4Gexo2zKscze3EpK85cZzEopTtQhnCRRohJoncR3NW1lNDyaAYjtPmO3XOzSGuRuMrdAYEhn2/DTQhC/zWGQnAfckPoh0qTdO9ESSUiaS0Qxp+Mu/HlD7BFaCiSzV3SRQ6rdHBlAmfb+NcpRX2iXF83DD7ciLFSR/gPAgPXwiVP6SA+4hp429QhHlEhS1etVo6Oh0HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXOxG078b3snn6c1oHZGIlCQPXT4QZU6MsHM9jo8jg4=;
 b=UNUQYTbZa1ymcvwqOJY9fwjp9BAGPOUCuiLyuS9X9sRVk251UIjzWf/ajKy/UrjNWEShDmb6XVKLJUl4zj/L1OjM6F561mgdG8kZ6zha/tHH+5i22J45g2BAKvolhRBweUiAWcOOGu8qOhg4yiloUd+2ktBNbojCkAPSbQRRlHftX9nweoykf9WTKzGBS0Yfi1j8UI31utSA+ZnRXTEweru0ofahF01cyPMlicMpjxIGRm4pScxJsEZgV3GIDyKoVQ/cjX8sR2wdMzROIuDS7QJuXJq66SGHZPKeY/KSpOSyeTP2qY3wUlDsalNFmQ/w1N0Q9iDtQorMOwOLHteOpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by MN6PR11MB8103.namprd11.prod.outlook.com (2603:10b6:208:473::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 04:45:15 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::3225:d4ad:74a:6d7a]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::3225:d4ad:74a:6d7a%7]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 04:45:15 +0000
Date: Wed, 12 Mar 2025 23:45:10 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
Message-ID: <ktvzkpyjl5mf64bizabtr7cumt7qcm4ipe7vpwnyibwtqfoyxk@tuwfw32wl267>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <174179922572.12216.11347505165808081803@intel.com>
 <cdb8af14-e5fe-4718-991b-1b44fcea5d04@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cdb8af14-e5fe-4718-991b-1b44fcea5d04@intel.com>
X-ClientProxiedBy: MW3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:303:2b::32) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|MN6PR11MB8103:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a00c2b8-dc65-4bf7-9f98-08dd61e9d924
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LRKajP2x9lxDd+Mi3LXj1hc8hkdBRN2kygfBObyDLhHhiU4mq6VR41blfwD9?=
 =?us-ascii?Q?XQJYI9qzUUBbZzLQjwZsmcfJARQ8PcPu/9cT5369Hcc5dQOYpkjDGQ4dlHXO?=
 =?us-ascii?Q?4Un+mxuqKU8Y8rPgVlQ4Op4sM8fP8Twj86Nu8k3F7JjFtcfTVpicJVkATM7J?=
 =?us-ascii?Q?bLcCMe/AvFhBXz8sxZIThrdlgHtCiLIUsBfMmNWkh7zty7Rmg3yJS57W0iQB?=
 =?us-ascii?Q?4ghvTuN4EFoD+WuHNgq5tYSnB3rm8YDJOUW0K9GSsr5MEU63YVqjzyqT0KFL?=
 =?us-ascii?Q?RUya/xUkBEamDz08PlXxxvKKdjCxZi/9W/VlWPNN8dsFizaSjvFg1f3Q2MGu?=
 =?us-ascii?Q?8EKSfqkQhqWA6+hUHHsDIG48nBUEGSj1p1k8G5cqph9y9RFpzZWpAzKpt1KX?=
 =?us-ascii?Q?n1cNN0G3ENLNMPIjEyE0Ih/DTr952UAzuQeasR+cfNFGCsO6qogyPpSmpTCl?=
 =?us-ascii?Q?Od6G+yNs+MGuyl4635d3mZnJqIuLBNJy2OGxZZC6ZrB5McVxVE4jIcfATga5?=
 =?us-ascii?Q?qdar2fCNm89G8/ciKVPZaQ7qp2qWC2nST8f3SZvhAaLXcDawjkOJSmbU7uXB?=
 =?us-ascii?Q?rqoOjWOr3LN7RB88m5NKxEFRrlE6Us5u1lin6uPgvAdBbjfQr8lquzFXu0SV?=
 =?us-ascii?Q?gz6K29ipw4cdZMa8NjURYHke0ntXQMlwiZdkFusL5clBYNS9YNOj1R2zb4I8?=
 =?us-ascii?Q?7EUNX+t27JtRVuJXzn9NFDyiuLRD+1KKXDstwi9RCdexeTivc7vppVMulGwD?=
 =?us-ascii?Q?RL6J6hxagOr/rHJpX3F9wvfdI/FPi2M32J16blUKqjxZ1TDlsGeq8fcc+yeH?=
 =?us-ascii?Q?6uiM+5LF9AA2gtP/87BHoB+8prZB38dWh1EavEWKpVY17VkaRk6X6sRXxDkE?=
 =?us-ascii?Q?ptOKzbk+XYor5T2SZqH71AeVaqzp8SJC7jydC4ToBUOaSuKdEVFVpDpCmQk4?=
 =?us-ascii?Q?+vL0wOFsQyAM9CBquaI/VyjBzMB/uRXxVtu/WvJuoDoyuPA20K6FRrYXUAjs?=
 =?us-ascii?Q?vWPNvGLxHWKEhM7cfin6SHZoVeZ//4GoorWVThnW0dBRrbWPF3GsnTRU0Xko?=
 =?us-ascii?Q?03wDUGWo518yoVGuacNtxMy+3uCLAGgBDOZiKfc2Uyv0bjuoMDtStEzTFOPl?=
 =?us-ascii?Q?yneKJ7QBnZPrG3UGB9zTwxVYkSVr2iaCpl2MxmtZGStRtZWjjecfc/StHtdz?=
 =?us-ascii?Q?Itgw1uh/ERaxRAu72DDR/54RNFLLE/9bPb7cXEI8SOMzGuT7/vkrTmJIfL1G?=
 =?us-ascii?Q?mLrtrTGgQ0d7/lwz0LCDxm0Lfh8uNIAf5SU3XTcG1jA5nLFRZiffy96S4YOb?=
 =?us-ascii?Q?NhBy6N+O8wHjbFBPp6JejybJeuH4JaTQ6SRM6EyOOXVT7uz0zUFCxf6PTS6H?=
 =?us-ascii?Q?yHk3lDeawwizEQIqgt39ZcWRLbmg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jWIPCYT9RoMPVXsE8QvURahF1mmLDX+4bQVUjfUALp1kOvhug7OjYDRJjv0d?=
 =?us-ascii?Q?dcrA1vQ8nJCpMcxdr6lpARpyqXDFvbuJQ+vqvShDwy8b3BlygoSInH6RBslv?=
 =?us-ascii?Q?wgEbSdwSPLvfE7/QV7m8Mo9lnUfRdCgwrK2iyE0mAv4WS1sWmGRi6aDTcGgZ?=
 =?us-ascii?Q?JnRcQSHnEfvltQbHDJYU5+9T8uzHhmYW0G58EDlwJjScDuVK5e8QCWomPalW?=
 =?us-ascii?Q?bdGjlszW8fIBvajpXpir2Lfh4zX7S/ZwNvX+ExhRqf+1gXPc2flyBBfAVg8u?=
 =?us-ascii?Q?CkgGtpBjKck7m8URCFrC8zGRAufvV2bpZhrLUHJ3NOCcKRVG9+UoV4tsKyAK?=
 =?us-ascii?Q?Yry3dobZAneBNQWwU3Bbl4dtABvmf76DmjLeRgEqIAJ/MpmtoWdFNRCuaou2?=
 =?us-ascii?Q?3QOpNcdf0yBFEl2C0xQAbFKm589fbYmZjGgIGijmnM4WCvp1bdZvgR9jIwr1?=
 =?us-ascii?Q?XXIsKrImop3vZX2q96lTwd7g9KxxNA5sCHpw7bXY18DV/feIHVDzNmXfgsCw?=
 =?us-ascii?Q?D4XaGQ5rtbtdZONUNN20Gp8Zw17Q3m5skIfkApwHI5baGPsEtxwcy9aBcmpj?=
 =?us-ascii?Q?N5Av9dcV+9VMVOwy+m1jlhvwdJrHuZl9vpo6TikeOyaKzeyMT7Pk9XJjj7sT?=
 =?us-ascii?Q?gGOAm1Ui3LXQBZTT60U08m4dATQq+RReOeS0wxHrxdJlThaEwG1v1Fkvw3JN?=
 =?us-ascii?Q?cX/ycBc7G7bXdUr9SSxelw0mkWpCbEMpCjCdMSJs1iP5+/U2OKCsXLtljO59?=
 =?us-ascii?Q?OVtoIMDz9eYqm4bnczG1RMk0I5ZhzQwpmEXy+fpSvBqGl9UjbNXmNzS413xl?=
 =?us-ascii?Q?zkkpTNrJESWqjVRyP9l73N7Da15yZZ/UdNmY+V2XSnKAdeo58qO4tPLlLvyP?=
 =?us-ascii?Q?wBOVSLVNsbr0SzeCpOGEaoCgS9VIyGxIF/L+shgUBUIrUg55igqAMEZ4gqRw?=
 =?us-ascii?Q?JTOnZPUQg6sgmD/IuohuVTA1Lrv5oEkfKuAh6+NgZEpYYYPKOh47jNQ4Hw11?=
 =?us-ascii?Q?w5lb+qbMo1xhJ09yOm1ymuZ6sSXI9Ru6B4/28Qq4v/Q4fYPWLjB/kdlq6jok?=
 =?us-ascii?Q?eUIW39U0O+NSo2zTJ87SvOVdedpTgABu2o9Vvmqf4+VR+G077oMKZnku/bpT?=
 =?us-ascii?Q?I4Vp/Y99C05hUuNjk8byw1MeQP0nXeQbkXB2DR6XaJajIM5cFh+1ZSl5epVO?=
 =?us-ascii?Q?+xKqcMqxy+pH2sSXDZjth0/GFdNZJQvdRW67TDuG8kVwJHoAS6ITbqCsNpJH?=
 =?us-ascii?Q?8RXVDxFBi6vR0hHMcIDzf0G+yeogSUu2UbxKW4v2VlaKZFhT7Egs1tMqkyfE?=
 =?us-ascii?Q?4hufHUGAzGzGnSB1geVFwxDWasp2puXht3URqRF5gd2vnmYbeuV3FA6LX0pr?=
 =?us-ascii?Q?DOuJbMhTIIoKpcNGSqQZQMpf5mwyQY6n2uN5uXCwJCJfs0NzS8jWGxzRB3SP?=
 =?us-ascii?Q?m1tcSaSo8jOscjvriWlS4o6Jj6iGCwMaPmemPS3z6yvXWAytq+xSKLLOGkvH?=
 =?us-ascii?Q?hc3g5vgKSe9BB9r8kfQmyitqqyPnuEQ6jUcpA55KeSjB/2T/JPTyiLJs/2dl?=
 =?us-ascii?Q?m6edD1E5T1IjfES+XWW3By/dVGMZ/JlUhKMZySUVSXxrqynpDplNtIjEWjH3?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a00c2b8-dc65-4bf7-9f98-08dd61e9d924
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 04:45:15.7775 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R4ZYMvbocFybkjNWEEOQhrMzmKL0fqrqwCFY2aoH44veW01qb7tNxSzKsPQGTadlv0JSmRMzrjQH/kJlZfkAU9xv9vX+htFZeRjInx88DCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8103
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

On Thu, Mar 13, 2025 at 10:08:30AM +0530, Nautiyal, Ankit K wrote:
>
>On 3/12/2025 10:37 PM, Gustavo Sousa wrote:
>>Quoting Jani Nikula (2025-03-11 15:08:48-03:00)
>>>On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>>Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>>
>>>>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>---
>>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>index 717286981687..332647c4ca81 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>@@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>>          func(supports_tv);
>>>>  #define HAS_4TILE(__display)                ((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>>>+#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >= 13)
>>>>  #define HAS_ASYNC_FLIPS(__display)        (DISPLAY_VER(__display) >= 5)
>>>Y comes before _ in asciibetical order.
>>Maybe that's just me, but I feel that's counter-intuitive in a context
>>where we use _ to separate words.
>
>I do agree. I was assuming that we sort the words separated by '_' as 
>delimiter.
>
>For a given hypothetical list, I thought the ordering will result in 
>similar items grouped together
>
>(please forgive me for making up silly names here)
>
>HAS_HD
>HAS_HD_AUDIO
>HAS_HD_DISPLAY
>HAS_HD_SUPPORT
>HAS_HDMI
>HAS_HDMI_PCON
>HAS_HDR
>
>But with the `sort` command it will be:
>
>HAS_HD
>HAS_HDMI
>HAS_HDMI_PCON
>HAS_HDR
>HAS_HD_AUDIO
>HAS_HD_DISPLAY
>HAS_HD_SUPPORT
>
>However, if majority of folks use editor's sort command it becomes 
>simpler to have the ASCII ordering for everyone.

we would need another command to do "the right thing", for whatever
definition of "right" we want.  Not sure if it's worth pursuing as the
sort is also used in other places like includes and build objects in
the Makefile. Would we change all of them?

Lucas De Marchi
