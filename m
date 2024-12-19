Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9279F8679
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C1910E028;
	Thu, 19 Dec 2024 21:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdnRMQXr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB03710E028
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 21:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734642057; x=1766178057;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JSHUOKVbmjiy0qNtaOu+9zT3fCcX3dVoc272SkZ67z0=;
 b=gdnRMQXr0TdYlH7fMs+oo9XJOieZWnDvoHikU+JstfXU8wIMT5oKHXYA
 T6SrscdT+TTIo9ABxILiCVhOlRDySSeFknGrIFgvu9iXgTw9X7BLdX7F5
 5nxC066GS5uRxfwWl4c7ui+hfGrYq+r07VZfYZnJ0SwezCY5G9m4Pcea2
 IYJOh+KJFqUMG6wjmhw8eAUDCs2l86dV1UeYTwleQIPxTnfFdafRSUt/O
 hhSeiCMLASfc9yOyXfOdRPxI1XkxrkCzdcbVhOWcCipIlMIKkeIDYIJGJ
 OXG5mDuKrfpk6/n8rhEuiYXObl4PYOXOcvE+PnhFpCOtypEU9BIws5BQX A==;
X-CSE-ConnectionGUID: ICftYfd0S56H81APblo6qg==
X-CSE-MsgGUID: tQG0GBlTQXC4wN3jNlnOEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="38020265"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="38020265"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:00:56 -0800
X-CSE-ConnectionGUID: IrCtq1hxRj+AqaP6UaeECw==
X-CSE-MsgGUID: soI6iIq6TF6dy6iBzWYxdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102439513"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 13:00:55 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 13:00:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 13:00:55 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 13:00:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c0ZBOkjobUDYqv8TUVLhKklVP0SVpvjq941AHZfJqOH29N/RXJOiD3Lpzldp2qf4sKzfJi65ZocOBQ5g7y7WGiQmzSkyw4W2a7FhGG9278vXjqp5B9gkXuTUXNMPn4BDD/B/8dGwO5/DUvmG3q91sWJfF/736dVW1CtvUcD8hMnWuNhxNICepZ9pMlWLS5E1jXNlrH6MyGP67AO4hPSB2zrLPbPHU6IHW1rFisBBYKoGCyl92h1u6JTcdbyNDzSWu1XA5pTWbFGMVAcqRybdgpQ6WBvdRPf1McSPllMy4D4G/6hTEORR/aHWROLgRedmKDl9v5wGnbBdJ5+19k6hHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSfqe/v/CxIkUYj1XuaQhera1I6A3oA88gwnY58mB+g=;
 b=LxJ42CqU2k340166dNnd6at5r1VYKBLUCEbxr7tJAHL0PuKuoCC46U6icqE3UKYvzzfvyRA8PQyIppZt3SdefzfBIo6x7EFSHOG3aOlYSub4Cg4YTX/6bpY3M7rrRVZeecBPDo/CJvBralCXW11faWRbpHi1vnuTGWdUXScALyhtJNb0zWFE6Le0RHRXEeUstJsl8hbTKkzay7ovqC/DrREP4a4/cXpL40mC1mK5Hy20c+kGdL3XLNHzt4COLdWalF4qiim93k0HKM4Ur2LN7z2fcQ8SSXp8u2NoLFJwBFu71wd/4rHC5xszUltzvQ6WrqnJsTyNFQjJZJDeHlN5iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 21:00:23 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 21:00:23 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>, Himal Prasad Ghimiray
 <himal.prasad.ghimiray@intel.com>
Subject: [PATCH] drm/i915/dg1: Fix power gate sequence.
Date: Thu, 19 Dec 2024 16:00:19 -0500
Message-ID: <20241219210019.70532-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0106.namprd04.prod.outlook.com
 (2603:10b6:303:83::21) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SJ0PR11MB6695:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ab0b596-aadb-4c2b-92f4-08dd207027d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Znxt950MDj9V8+IkNUeWv8cAxLebFON8taYl/wBgnnEozlTmBsYjteawOAm2?=
 =?us-ascii?Q?btxFrBpR8cQkCcFxehkvpUEQ6kKcSqP/Nz+XK9jSrYPYoWi86AJ7acEnmn7I?=
 =?us-ascii?Q?6lb+MCbF6VD8t9BMcB1rSBC73NpjgZO0deFutt8Q2dBrUlWiKhe6OhhBz6iJ?=
 =?us-ascii?Q?NlqmE8x6xS8vJXd9kdqiDdEXbmwIfihgHc5iQ49IaHjW/xPwzAZkbycdrsKh?=
 =?us-ascii?Q?suMENJztfcurCaaUSqZj6maPde0IvERb2Pp9EcRmfFEySguKfDpRISRNk77c?=
 =?us-ascii?Q?zPo2lWTSRJ4aY+YabwiOeO54Z+prx7r8e52G3a78Pl8jc76ckJovYkUexhlm?=
 =?us-ascii?Q?m3Tf1pVUhDeZLXyYQBUGAOIJaeirb6gauh/vNR82S9Bb3CtDCezyfPqZ1LXp?=
 =?us-ascii?Q?v2Oab6vCaWNthbAtbyar9XA3USJ1BEVXV2bjbFDY2Wcjlmv8qu2P1VUO8a28?=
 =?us-ascii?Q?9YzrwakZHzn68aKKaBN5x4rQCFK2PL8v4sQof8ICjc0b2ab/AWNDP14YMI/I?=
 =?us-ascii?Q?YYtFobpgL3wJvPmDyStU35eOd5EUqiKo/72afMnJw7A525rzg6EOXyr/FNW5?=
 =?us-ascii?Q?Hyui4q4kuXnInXOFznNLx4mrQ07iuJUs5kenNBjrSwwFcqGSwPAjXH5+UG3t?=
 =?us-ascii?Q?lz0HNhDZ3sDATeyC4hX23E266gMcUdNNrxQBL5qOZ1JMjSreNm+xfU29IvwS?=
 =?us-ascii?Q?CGUj+m70XqEVLEr9e5DIztvV/t/Z8YNsP3WQzp3glv43u1LZBVPxUC9gOdDN?=
 =?us-ascii?Q?6KDs9IZXJexemy7F+nUFdAAGO6ZypSx2StkWnugSq2W2gevr3XPWQSaYGw0A?=
 =?us-ascii?Q?S5h8L9BTP/unKuPEPEeIpUUAPMAC0PMGwz3fuG1hA9oaMET1cTU6+mS/puI7?=
 =?us-ascii?Q?16BhSpmwHMO7BrURZVsS7PcR7hebE9wgmtFS0VHirnNoQqZOTt8g6P87hQjg?=
 =?us-ascii?Q?zGXCShNkNVPmlukFhLgR90tNoXhPnQSzJ82kCoRTnRJplniguSP9TpHS+qOU?=
 =?us-ascii?Q?KrozOW15OeAOEr3iUIpxKDQ1N6WDStpFRel/BchAn46iebJL/BOwqtI4jKtT?=
 =?us-ascii?Q?LJ/t7RzQ4F9f87t1hwv+XM17J+Os5zKWKFvWMIYp16VFY0I8MA3fdUE0g97L?=
 =?us-ascii?Q?IBL+r+CmxPC/6MOlmaAbdu3ovDLg6h2G1a8FVbWP6uZs1U5Kb+fxb+KfLgTW?=
 =?us-ascii?Q?YhmHx2heWHsXBFNAefYpJsCr3W5VAdx9oGXdPtySbD722o82fvoGZUZJmH5t?=
 =?us-ascii?Q?qh89rfRNBWv30IpGjxxyKLALC8RNoyjM0f1vpnJRRg42tKKAgDXPuPpVqMrp?=
 =?us-ascii?Q?44XnBAe2iIT9f7pDgOxNqW8f3WS6HRTkRTAoUXFGnEWFiA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?maWEKtZgJAuRaLSBpBZlLD1LpR38xjPuKYzQO9rp2EH49U0VYLmRupjqedyL?=
 =?us-ascii?Q?3pqgo8Wyp/WHCfU9FwZWhVYDGq8NhdcDTvXyaF6VXL+ZzXnGKbAvD9Sqy065?=
 =?us-ascii?Q?TMRiwwnxMMFkzbC93RTl33/G/F3WaFwYcsDoxMKUy9KxeTZCL0V26tSmbZ1t?=
 =?us-ascii?Q?rdsJotzbIq3aFHwcF4hqLJzXOcGxFpK4/sQ0jkOtuIhqZTJMe+BS/SrALGih?=
 =?us-ascii?Q?jkogF2nB6ojYj62KDOhETIjYKusTMi+k9yiiXel8EYtHydGGwgBFWNoCzvnI?=
 =?us-ascii?Q?ZRJmHswF2BG4aJNbpvXI4CQf8PaLa1yajECE/WUijAZ/7APg0hEfm35m5JG9?=
 =?us-ascii?Q?P5ss9Mo4g+j1ndeS6xhoPSdDQuXShAopAuZHp03w+nYe7rz+oPiykIM8Zr6z?=
 =?us-ascii?Q?L456RAkjCnqC0lKS+fakzOJUXH/dhKGDFbMTN0RoERGUypJUAGGWYjQ5ZH3l?=
 =?us-ascii?Q?NnXxxN9fYH0jyVS9z2JVDbHujxtEbafUFrxij8wT9u+WW0Ddswx6KaymZKnv?=
 =?us-ascii?Q?YE8E3x2okk6j/NDLVpyXZX3NlhNHODMc1l4U5KczoqoQJrDL7XRSqZfDKFNx?=
 =?us-ascii?Q?60pgCMaqx8K6P0kjcYNpelDBa7nBbZ07Q5JdqIgvkF0sFpWwVpM3rMhQpMjp?=
 =?us-ascii?Q?nNJT+l6T5W4prTZcXSwBgE1NhVkkprxylkPnzVFu7jG3mMcz+t/r8nNclYKv?=
 =?us-ascii?Q?SGIAL5Jfu945xez2Jl60KBtb7pSmCxvRL4/P62UHqChlVRlchf+JtnI+Qi3W?=
 =?us-ascii?Q?9llLxPfk6WLiPjQcrXWyPkfbpgFv5Uy5zdROli/v/9yJzfPzeNSAXwmfxL10?=
 =?us-ascii?Q?9IfQVth0IVsblzgZSQGHLkv/8+BtGBdkh/yMUxEqJl40LE/VBKGAahBPYZU6?=
 =?us-ascii?Q?OhiEmKNtcc0VUsKwJYAovSicL8JyQ/7JIljPwavZlY32VcSNbfLVtIEe6m1M?=
 =?us-ascii?Q?8IeQLwPfiL41EjIJ6yG+iE3a/B2VV1F9FxnsLAui7iiRc1L4xPUtM4lkbDaR?=
 =?us-ascii?Q?kPvcDzi5YfcM3YyKPeMY9VxghVcJKYApIcn408jyZ0uddufkFWMvgvkfherk?=
 =?us-ascii?Q?11+lcSKfruM+e2IyWR88l7ZYEfzPLbGDBzINBF10zQ2STCq1I69cNfrO6wkd?=
 =?us-ascii?Q?gV1apLuVOIcMEI1GosBQZgpCdTAqmSz/1MYOUlDHwT+KmaubrPXE6ZA4HdS0?=
 =?us-ascii?Q?t4KY4553diPevcKmt98YJiL8hAx4JUKjKiIOatm5UwVsUfsg1iqlNsZpZJ02?=
 =?us-ascii?Q?8JbCa0JFQBcEU6zkgvELIXX+44WOphbUaRmiUHGZUlkCceXGqx4avz5VKj5c?=
 =?us-ascii?Q?6dEbOc5xoaS/Dz8s0X6muIwmQVZO2frwd2c6XGXdt0zASl2WBrrROmWY8D0E?=
 =?us-ascii?Q?//ktrqzkpqyEO81p/NcgK7PZBUfp5hJFdhhIhmyeLgKO/quUBYU0ArMLOSAk?=
 =?us-ascii?Q?5MHnJ876yV52ohU4F2cA86kXhIvnQQRv+dP0CX/vOvJnkf3MbyqDcaXlNAo/?=
 =?us-ascii?Q?tKJt4ez+Et8qLrHWjykHpEojMafoiSoAnVnB+J9US+lpHlDHugejiRbpzsZi?=
 =?us-ascii?Q?sIJ1ZtkDVkWPUNGFCnKgcaRrD/jrsMIUGNgjJI+YoBLGO+//JbDkN1O+kLmN?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ab0b596-aadb-4c2b-92f4-08dd207027d8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 21:00:23.4447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EtiZQYMFzr+Kyzxi8CjXOgE1jiLhBuSFr1SZ0LlIca8IkOeVLQmmIoJRDBULsGR6ILcQRyVXI/eei2Etcjw2+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
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

sub-pipe PG is not present on DG1. Setting these bits can disable
other power gates and cause GPU hangs on video playbacks.

VLK: 16314, 4304

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13381
Fixes: 85a12d7eb8fe ("drm/i915/tgl: Fix Media power gate sequence.")
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index c864d101faf9..9378d5901c49 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -133,7 +133,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
 
-	if (GRAPHICS_VER(gt->i915) >= 12) {
+	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
 		for (i = 0; i < I915_MAX_VCS; i++)
 			if (HAS_ENGINE(gt, _VCS(i)))
 				pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
-- 
2.47.1

