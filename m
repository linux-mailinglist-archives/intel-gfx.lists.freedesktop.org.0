Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29565AE980F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9725B10E867;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TcQzJsJa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C0E10E838;
 Thu, 26 Jun 2025 08:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926074; x=1782462074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Ry/WJmhonS6FJTC5Djdd5JUUMoD5gzRbfEcdzMq7jLA=;
 b=TcQzJsJaG8gATY5cNWfztCTW0y1s8ua34MzOAcTj1faJyiZpFM1xdz6a
 podS1QMMMOZfCH5UfpSte0LOvOaIKD3g2n9Z7iIoeZYIIL65dq/bftuyQ
 swah0iYG8tvlJKTYztR/tLzSwYE7so3dhZSPhWYvzxf+nx8zVbDp8oKJt
 h/tQcv7ZDc4wqfYvZRVkM8mTWUcrKgF/aFEJJa0VkzcP79EVK1dmSUDtP
 eE3SWuD8CHaRWNT191rj7PUKRuKqmQVG5JJF9FjLc+UPulmuNjWxNCTgX
 wGuWXdd6vOSXbYqxQ/GDi9+2MebaTOEhYjD6qhZGCmY/r1OEzkn5Koo1A A==;
X-CSE-ConnectionGUID: MeDYYXIsQ1yAVnBWhyJycg==
X-CSE-MsgGUID: ITylwX0PQh6mvnws2W98ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019338"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019338"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:14 -0700
X-CSE-ConnectionGUID: 3jPoHoBWRBWqTPRrt54dgA==
X-CSE-MsgGUID: 7cC37ahtQ0SmG2yxoTQNAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069937"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=USUGepf0fQDoF+gNInXVAbKEQx0HUKzl1z/TMYfOpJY7UmD60pXjUwILkuyH6ewd0sZj4fa4N/BTjj2nqVDUVtLA0RRbI4D6XURMRXsU1CmOl+wjCkakMhnmomkmyqSX812uXsOHw7HOoP5bnIGb8Z0i/q15YCSL9sA2UHn3iY9feUYafYMKIUvzkaffUeuJoiH6nawm+tOV8WVCG0RJemC5yGZW9sEkglNDxa4M7Kh8zwg4Z00376IANplvYn/uB1crukx65nRKpemrQidGD9M0R2+0Yqm7O6mb8LfvIfRyK2ORGdAo+7N7bszeQFbRAgCnFSFBTRFRad7Aozl54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xTylf7RRpZBP37zTiKOuN7W5tMlRwKP5Kt6swrqEsPI=;
 b=unTz8xTdP8syEIwaBpUvnw2+PDv3lHjvvMCzg2RHlNba5SKBE47s0LhwiidBAYEdWNeWsRG94YP2ESzaFaz1rjwIslTRZX1f3kDh6sbVra/JCGmfzXCRjxbY2sLJoWZ/eiRLp97ZSbK7EXiLFAkNLPD5Cluck3a9fXiZVOCLmXT+RIhaJM5D0dEqJ0mJHOKgSqF5zIi1lNvlDj+baK1xBcCSqTbqYw7qqEc59n/IAgh5lxL0Gz5Lc3iCImDCqYAkKgjqaGnbdlspWcpeCVtGP1IVN9OTp6O9cm3yezvJdzlPAXlNeCRSF4wgDpHXWNfQyGKeqi/X4kuBRrABHyDh+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 06/20] drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED
 event
Date: Thu, 26 Jun 2025 11:20:39 +0300
Message-ID: <20250626082053.219514-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: aeaf01a8-71aa-4ade-82d9-08ddb48a66eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9F+nw5M9cwhi5/LL/3AXBWZiFXPXvDb5w/kZ0alW4c5/Cv942iWQFpc5hHD+?=
 =?us-ascii?Q?q2Xumaf3kUcPt5P4ntp3SAqFlhGLK2wgdb5aP348TSseutRpmKHPLUGoIcFO?=
 =?us-ascii?Q?eRUEJeenlMAwAB3bhD8RMBFqy4WOrnvAdTaOiFk+LRTBFRfqeenZajL9rbH1?=
 =?us-ascii?Q?mv46I6FIeI3HtGlecg0IbHS2fKSMtmniAyWiU4tSYgxVsm8j4mlnChj7LmcC?=
 =?us-ascii?Q?FTc1BkiWLXO5eB78EPkhJDZN0v8ndioB/fxy7PImOQbSBT5mqA85lJj65xGK?=
 =?us-ascii?Q?HAVKb3FT/tt/2/FWawATuKWzVzFY+DTru5SEnquDbVSCFc4deT5Vb3d3URSi?=
 =?us-ascii?Q?pWhlbNiCYbjOMxVoRReFcy1rsPY/xP1HuuMhiqx1WbzWQ2PkMbgc7BbmY1G/?=
 =?us-ascii?Q?hm/uEV08LMpwTprZfbWDZdiXWv6g/IZcQzQnV8Jr5SpPs0Y4YkbI4Phuc5cG?=
 =?us-ascii?Q?3+MNnvXCBGcXN5AgjklPKUIa9XqY0r9/+G2JNZK8sfpdBT9R2DfThymWiVpN?=
 =?us-ascii?Q?ZmMnpuOagTpnzKYP1vWaaxfoZWNmUBypinOBkJUTUpZtu33t2XKig2/78z3n?=
 =?us-ascii?Q?DO2a/jDlnreux/Zi0ckZ6tkpW5oIDdLOIVaKhfP9am9g0nrHSm/eMkVYebW3?=
 =?us-ascii?Q?zFW6oP5yOeqf2YS2tpELPbZbPWtq9FHQ4Kh9x3ESpikq3Zx97wvQEZNHC0XQ?=
 =?us-ascii?Q?jGJk+BlwGOxLuljgPKy8x6sT2Oj7KR1yQVVlQxxQkCUV1RVg5nP8/GiMA1XU?=
 =?us-ascii?Q?/4C0OkXAXXLkKYEWhdLSZVT3iuoTYpY26mcJBBhl12MNFFKiFvKgPHtGOvmi?=
 =?us-ascii?Q?ZEIZLskg7nY/T6Ee5uxuavovd8t0KnaN3RD35tqudxgIMBi6ZrjTUHSLj+2p?=
 =?us-ascii?Q?XdcfYLf560Bn+B7cCihuq6cgovVjzPVqBNplrCj24aflo7AuuqpTfmEH4Nfl?=
 =?us-ascii?Q?754OyfiPz4VBTZ4tUI9peX+bUxGgCTjs+rfzwwaBY8SxcaLLMXymJNWwhwje?=
 =?us-ascii?Q?efQsc82wyGrQKcbpFrF5z9VURtWusEEP9mpVuvVEl2dUF0UZJnBuTKRRgLKE?=
 =?us-ascii?Q?nFEl7QLWKzdcMRcSFQpHO7/ARusytfzeURMwxMEXfncOhYPVrF1DGt3ZLpOA?=
 =?us-ascii?Q?y2M7OGu/WSfdwZlFkRawdqbxMQ4EtvO0+IO8kQ81jnaVdWQwdluqcqMSp99D?=
 =?us-ascii?Q?YSS4mO8dYXx5sL5CQzlD83YDql+ra+gF2CV4awb7ibwEOVH8jlw6DWewW1eM?=
 =?us-ascii?Q?UL6mUTh/DH2SBj2fynXyxAOcHdhY+qPxIjzdVRR9pCr9eD3/ua6Nd3SveP/C?=
 =?us-ascii?Q?7Uo9QMKgPnR3oLNX9nqDhDO+1xBiuNMssk61jn4YtnhmA9X++QfuxREhWVux?=
 =?us-ascii?Q?Dz3wDgYCT5lE+VtMtXc3+JygrMA4Qdlnz8JODeEvd5r24z/rNiFYH2UVGPyS?=
 =?us-ascii?Q?uKdr6s9DX/M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pcE7Gn6NrZLC17XRR35XGefdIWRykXIlOrscKLlZPFdlwfRU7aQw39tfyHJ1?=
 =?us-ascii?Q?El2FkXR+70p+qBYgTSwsjXBNXPldflRODxl8QCcC+x+N+2oMG9yrJ38HcuJm?=
 =?us-ascii?Q?mliceyDvAkK6i/aHzLFZ4n2T67LBw5mVeaTdDYbebs7Ig3TqLZoBrwrtOY1v?=
 =?us-ascii?Q?LmfYwMHBAOYbtfJauOHV3DeiQfV0FmAhfunrMdmuyduEH2DmBMeyBzY3FjT8?=
 =?us-ascii?Q?D1g+FbK7eSKXPg0BlmVrWPT3FWWlEahtF7IT9NQ21pb2a4o5y3DRJ7yKXJsq?=
 =?us-ascii?Q?VCLoXiaXAciwqlxcHUu/uPCMBxuYPBj6YlW67b3vTn2KjmAO8SxcjMBiZvyX?=
 =?us-ascii?Q?tnaPdm7IsM0LaqzuTsqvQp4ty+1/IlSrZTIFYDmFdhnJLAr8fa/Ha+7TN40Y?=
 =?us-ascii?Q?AqtpSf+Act1Z0JfE6SARzoK2PV44wJDMwYm4XB40qjrHtDva/TJznEug+1+l?=
 =?us-ascii?Q?JPtPmxkCmYU0tR4udoJB4dFAlkCzV9hfBY84aDNJ6QimlaVhhkWPZcerWXm5?=
 =?us-ascii?Q?FXW/vgDnF1RukXdBUlYspVPDVPMvpVEJLa5qJ+Tc85TU2uNkhMxQm77zxPQz?=
 =?us-ascii?Q?Ddvh9Uinn6NCxR+L1TLTlMSF0g0t23oecercyoYzRvkU7njf2aTp5GvPYYDM?=
 =?us-ascii?Q?IbDFdYCBViDyT0ZE88TBcBiUz42PlqembPWHTSh0BwbbyJ+MeO4vyYs8DrP9?=
 =?us-ascii?Q?JVRzTTJWMweJTn8whklKxiJlZ0WUwOBwrHCUaZ/dEc1Axv40s9ks/hgsHRQR?=
 =?us-ascii?Q?n2WaYDNXEiUzuN0u/UNzGhbeO+zMMaKyjug9tCKD4HXZOVFNv3On/79yZuXm?=
 =?us-ascii?Q?xJ+a2WXKS0UbOUwsOwpCdEK1zsFWatgHPRCHNnElIXBfFUpVLQJfXzv1ukve?=
 =?us-ascii?Q?E96kAlsi33jrjEROgL3H4bYCDuiAUbhLwu3K7TFuODhg0Wh4YMtdidquOSbH?=
 =?us-ascii?Q?i0gIOBy6uU4IyqKTh0jq1qsFwUyGsTK3Ak4DCjbU+R2C3mR+wHdBJHCuCkih?=
 =?us-ascii?Q?5ezStqDgd//z1bMJs/y/QnoWjN1LC16NbEqZOkvd36/iAnkk2Gl/I8YA1YFV?=
 =?us-ascii?Q?DJIl1QmW4lJyLPLlr1+PQN6z0/0JvksDGYlOUM76vjArS4NaaFBHmPv7+5KC?=
 =?us-ascii?Q?I8lMWLI46SNTK3rKPexpOa8FM0/yuVLv81dtOoEpv7ypnxrrfUs4OZj6i1z+?=
 =?us-ascii?Q?ygimhPH8p0dle/bMgcG0PeL1NhHfL/Px0cwL8sCmRgrUyeaEA8898CepJS1r?=
 =?us-ascii?Q?WkfmBngU091xlMh+YSgJpKFcTaDszkqSadAJ2UMOwPGcjsXAzzFjYSckh2y0?=
 =?us-ascii?Q?U1iCIDYFeYqZMzDEnPmUnXyPkWORcK8shckWX07PcXZeZAPehy3vyDa4ywz0?=
 =?us-ascii?Q?utOV+XTfRvXEzOdPcbz5bXxuMhD3YN2xdNp9vl20/wF8I9WQiKfBJ5vH1jPj?=
 =?us-ascii?Q?j8ZO/1fUIJkFyr095sWKJAo3KOmrOnbv/v6ftGdwdFTujFVxMA2BOdd+2Qnb?=
 =?us-ascii?Q?oEmHLYQmMh4FbrIFT0+l2OYCz6DMJq4t/3ykANHi8YxaipNumHF8ULRKXiH3?=
 =?us-ascii?Q?Y/bU2m0BtwCiC5lcfzjKQ9BDv3z2a9H3V8rEVdPM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aeaf01a8-71aa-4ade-82d9-08ddb48a66eb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:08.3302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 46yU04lj4UBlchb3tfsEl646XPVNHx9SZc4+6Po3NugbyXOedmttmLXVJZRBuFG8DSgLA3TAf3E1lHjVJ2t7ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

Handle the DOWNSTREAM_PORT_STATUS_CHANGED event a branch device can use
to indicate the state change of a DFP connector on the branch device.
The event is signaled in the DP_LANE_ALIGN_STATUS_UPDATED DPCD register
setting a clear-on-read flag and triggering an HPD IRQ. Accordingly keep
a cached version of the flag, updating it whenever
DP_LANE_ALIGN_STATUS_UPDATED is read. Schedule a full connector
detection from the HPD IRQ handler if the cached flag is set and clear
the cached flag at the start of detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 +++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 30c7315fc25e3..039a65a6b68d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1669,6 +1669,7 @@ struct intel_dp {
 	int link_rate;
 	u8 lane_count;
 	u8 sink_count;
+	bool downstream_port_changed;
 	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c2eadfa060c2d..7d8421649be0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5164,7 +5164,14 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 						       link_status) == 0;
 
-	return ret;
+	if (!ret)
+		return false;
+
+	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
+	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
+		WRITE_ONCE(intel_dp->downstream_port_changed, true);
+
+	return true;
 }
 
 static bool
@@ -5484,6 +5491,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_check_link_state(intel_dp);
 
+	if (READ_ONCE(intel_dp->downstream_port_changed)) {
+		WRITE_ONCE(intel_dp->downstream_port_changed, false);
+		reprobe_needed = true;
+	}
+
 	intel_psr_short_pulse(intel_dp);
 
 	if (intel_alpm_get_error(intel_dp)) {
@@ -5509,6 +5521,8 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
+	WRITE_ONCE(intel_dp->downstream_port_changed, false);
+
 	intel_lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
-- 
2.44.2

