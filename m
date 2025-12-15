Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FC8CBF87F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A1E10E500;
	Mon, 15 Dec 2025 19:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4ltutL1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 947FE10E4E9;
 Mon, 15 Dec 2025 19:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826664; x=1797362664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hg6loBtzLX0gh6uSQGUNIHIOJlA3CUegGaRYUpy6kok=;
 b=e4ltutL11NffmUIawnWszjgDzGvQvamqX/TvgXvN5jdTCetCsBQAEUWp
 5tzxDurVwfzYCx7XTBjj4VOSHNbCCRpVyFK7a7QqJi4JqiBbnn3GjHhFi
 jv++hKfctW6KgChEtIdUAU7TfKg1cvVT0vYtyzHLrBrmf5S87uNTSHG5L
 G9dEHOvnciqyFm7hbvgJxguLz+r9Vm6Lrcs4ZzTPWcP5J9uKsnuxWGcdV
 5fMb6VRsIJTWAVyLUE4D/vTaG0bAFjh73ZU0FwPQ0XLj5Gx0tHtwClDpH
 xmB7Utxy8hDxu8C9PHFKhSgAKwQwiHabYsewi141eoI/Lyu+WbQIaR0uD Q==;
X-CSE-ConnectionGUID: 92h/zVUGSDuKHExA8pS0XQ==
X-CSE-MsgGUID: n8CtPNk/RkaaFQyjBeiOfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726622"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726622"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:23 -0800
X-CSE-ConnectionGUID: EIxPLuK9QF63uoxzSlwQLw==
X-CSE-MsgGUID: JuDaCY7AReSshc/Rl3Md2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919572"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:22 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bO4JGE9SXeldHC/NHqzrEYYig+xvCvkVTvJ8XqldBvi4TEmH7aGE+d41l3ujAvmZ5u3EjpRbMOqVNLHB6XgecM+iGfFNeeTmVCf8qitFUyKOwaRBSlUxneRgeuRFCkTuQ55YHcm0bF6hzrs0KSVq4qNBPIp9EhH6QCW0/AV2yspChw9wOzNgsBBo1jODpX8LJYcD863hucNRWmwDykyeFgB9eYpFPPuKf6PszzvKiEQRxR9Gzi7bufvw0+7cXFlOL5lYqVseMgNPdJEFQLGQkJ/of5FyqgVjswHuevEdfeGXI2UG5Z4By6uXaOsZzzVq1owohamn0CtVYQxzWIHNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ke9xrsa5+rvPKy5ZPF78YX/W1UYqbOLfyRovxDGlY0=;
 b=ws0pvMeku8ejNkz6D5VqcuWNbC86dbzFyJZHMF1csBrh311AAtlB6g/zHReysWhSjhRsjIWot6Hp3moi1aKEm8Vf9TaolUPZvUxUa+F710aMU3pwvBaSdet54YiEHKFkB7tVEc+PyJEYNjD+LBWpe2NISqjGyICJGfdCnxrykb/KS9Y4/ItovVR/WAmMhIk04Cc50E5k7nQi0hMX7O/Ylp0O/am8JySRbuEdC9iHT5uhS49nn9tHVjDdyGthgmdGsE00UkuYLvK0Ma3W24r9xXdYXwFiFDmjmTaAE7/xzsXvMsBTa4TIHQsK/N09mpDiG9TVC6ekMhDjODeMq84b7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 11/16] drm/i915/dp: Account with DSC BW overhead for
 compressed DP-SST stream BW
Date: Mon, 15 Dec 2025 21:23:51 +0200
Message-ID: <20251215192357.172201-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: f967085e-3aa7-40d7-cb1e-08de3c0f8add
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wGVO0GtEAh7XzItLeUy0DI662ClJubzeF+q169FtFFzzYizFE4mAvU8ji0qz?=
 =?us-ascii?Q?ptsoUmBTTPodXfO8LRswPx2TY+/J1NceJv2dPifZrckWM3y1wDE58HvXPb7H?=
 =?us-ascii?Q?9n10ftEMeONz3YQK492UHEtRd8alRHslvXycWOH32JYIiGsCeqNJC6CqUidn?=
 =?us-ascii?Q?8/BdJ73CaS85+3ZBkzVRDRx5zYgA11Wy5xlcchsXiKim1rwajpPFyrgDlXF8?=
 =?us-ascii?Q?T6dDnfROQfuoPVAhR0A4HCFiM0y2Ox1dQHQ6cEaGBTO3b6v9SNEnUvZG39Zu?=
 =?us-ascii?Q?l+D+pMyAXdYnwn/31z2J9a1ckqKrKrZr+Km54uRXJ8wMD6GWglHk+VAlLbBR?=
 =?us-ascii?Q?NFMfX+ZIXgbx4TX2Z7YR7zIyeC+ZByI1dKdWt6yAiHsjw/BPxI8lvKK+4U0a?=
 =?us-ascii?Q?Vfx53wWtNctIMLAvO5+AsOSFazrld2PJLvFjyx3FW+XWxTCot9pmLGZKgIcO?=
 =?us-ascii?Q?oqP3GkVc1QTOzZkaOMvA+GbguejL2ZuITXx9uhvNfmMdJVKcKPVLzOv2nkI0?=
 =?us-ascii?Q?hajaw1wLQTjs4+PBh/W6uTU69hw6WAorW5LXuwxlcG4+BeR2HIYTFTq116LC?=
 =?us-ascii?Q?vnmzw2Q3FQh1r7z1U7kg+9q30jNdzcP4w14B6pJCMrKqpYd3WKiiXlzaI41F?=
 =?us-ascii?Q?G4H4EzDlKlE8Ekmnz805y0S/z/dm4hUsmBalmCZyeTQk0LrEAoEV9kB2EOts?=
 =?us-ascii?Q?FReq7MUql17pmPDjb0jiqQxwzkWmCyx7b9nzc9YMvgHlG3stj2ZmLmwXb5xw?=
 =?us-ascii?Q?ADwOPqdblhinwn7EjPY+U5PitbC7vcoEnmRxb7fp3gwu1WzVPjpqRH5K3cpS?=
 =?us-ascii?Q?vFigU+cccsA32GyHpJJRzRoGvbeDZmv2Y+ihOdC0hp0YJ/Cnbfm8CxYO8Pva?=
 =?us-ascii?Q?vpCZgT2dst8zknyep4PlNYZZbq6mdjriR1Xlt0Db9Zp6zUvIFQJjuyBCFf8z?=
 =?us-ascii?Q?baRzypeRh6Vj114Q1F+ZjDPMWgXq+bPrw5SxyaI+y+MrAeOt5DT4dQxV0jwo?=
 =?us-ascii?Q?sYC74+cCWcUhX7O50csIGOpJ3m/ogGpuwHgtjdx4ZiKvMfGRYvc1HaV7lX1N?=
 =?us-ascii?Q?M2hys06biPUjA6RFjTxnO4mi+SzFTmmoffYgHR0ZmaP2Dh6oZmHxBpwrV/m6?=
 =?us-ascii?Q?VF9++cpdys4WIzV3+WNR1lLOeL49xoX8TfBKIZ/hHDanRI9vsY73Y1DH5Vb5?=
 =?us-ascii?Q?Qs39VIle6vWxtY2Jsfmzt8dLo0h5P1vszcgqpqeZmP1keviOAH/F3kaUj6oR?=
 =?us-ascii?Q?mej7noWOG/b+D6jjrLe+H2iFhveVY+7F27DFecGV3XkhpEeFCeyIEhwh5nnC?=
 =?us-ascii?Q?FBiFMcNnMmsdfQ69LFXPWSh55OHs4cBhZcWFlrOaPYw7aUhCWVZpwl7bkui3?=
 =?us-ascii?Q?62kBpjJKyfP09T7Ao5rgVXJ/8cKxyvQ7kXrcni6GAkiUhO2qtaKT5yzbv5HX?=
 =?us-ascii?Q?MBbOikY57XlybNbsFhC+o2V047e7chdL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dg99ayH5ojOpLs1G50I7vUG65v7y6GT9g/bASkU3dUWjS4FFVnUp8CsvAbD1?=
 =?us-ascii?Q?5/+OgyMfFSnZSGwgqQf7jdTLxldQdx+a8OF439PxggSN2/rlF+2ZcE6nXWNG?=
 =?us-ascii?Q?KjQE6NohUBFZRpUMFbn0y9/4MKhiRKUFb27VyfO96BdDZ5fbBzL8GbXb59vD?=
 =?us-ascii?Q?cvqw0KREfJepNzvIJcdSiB761XQSO9miTqRmXKtlKJ08pKxREBp1xwevIzW9?=
 =?us-ascii?Q?JEVg2k7Tt8KtgGjA7k6QVFDHhSdirvn42MRQDYxidfdI5fikqC+RhvbGACCX?=
 =?us-ascii?Q?zuOObZ5+dBCDxipwIQMskqqUaiz1Jy6N44x2ti4Vd0ZaD/WJ7/hXh6TaIW34?=
 =?us-ascii?Q?yt+mdvhXz8CQ3EpeUyYiaWDsXy1ut6fCQOD9esSxyJ2RfeXEHsSxClbFRtmC?=
 =?us-ascii?Q?rTyuVvgcIGK3HhXK7OecQ98zREA/izorl2+GKWuQ4skWWdTtrMXOf6edj8dp?=
 =?us-ascii?Q?ihl6EWYXp2G/UApvsLgXhLrdornmmtBOTOsD+dFySNPuOgP5qjbM4w6i5jb2?=
 =?us-ascii?Q?4sdoGFgUit6w1Sbl7Egr7FxlkU7BlZmGGJ//6pyUBXG4Qvmhq8vfmEB7rdML?=
 =?us-ascii?Q?vGutA8yMfFKq86qoQMd2WMe/75GGvb9b2yprv94LiSxL2+x98y4RKLu/oalV?=
 =?us-ascii?Q?DS01H7QIno+rUg4ooSyOn/smqQvuUiGh92O1mWhMJ/UWgZPUHzVnr3JY1uey?=
 =?us-ascii?Q?2kwNWNVxeP5m+YkZ+FyWVLZjleZGP5GxqaZHmilV+7i6onsQY1pcpNPzXuRt?=
 =?us-ascii?Q?/858XHYl2pYSssFigt9J5bovyFZJYBmLXvlzaNd8yWvaARpfNEUldNovOwmv?=
 =?us-ascii?Q?4bP25+e8L6vp4j1MbhozGnzruC1/qCHigz7qwdJRiRmjReeNH5qHJmHhKn1e?=
 =?us-ascii?Q?JT6bWSqEXqdATtoH35Bmptm6iadD/ZjwGM+VPoXQDY0b8r83m+rDUh/JcGbT?=
 =?us-ascii?Q?D025lVFosKs3UWQiESwJBryjYAKml78CmwdVnipllClzrtiKbctag3hqeVHd?=
 =?us-ascii?Q?+IZlj7nH3ZaZ57/l+UTKZehbWS/Sapc9SfOZ/ObNupFGTC5MO6GzdWdd3W1L?=
 =?us-ascii?Q?KCPSVbyQtjwRxjqIh0XWc6djBB/zH2nOL3I+OIT/NECWK6I+r0/Vs15qOjyD?=
 =?us-ascii?Q?aHy3K9s9HXgRm4UQfWCBUR0tk0GZtLDUGrRqNTWROMJ3LJvbrezJ93kvVFeK?=
 =?us-ascii?Q?58/J50Dn0GfBa8pD7IYmHqddyXTnTNW8Yjufh5g0+dJiSM+oNjGu50TGnmxY?=
 =?us-ascii?Q?+cdzcD/od/oChuxQd5ytBbhXs2cgLEuY3MZ072uo3ZN/HoZDuBPTZH4DErTg?=
 =?us-ascii?Q?WVxeJlnzV97bJlB67J9JOgZ/e0d8u0dAWo8vUrGwQOV85SKg+qvDbAYuUtaY?=
 =?us-ascii?Q?ep7NcF65w6ZwDUbvhYmKy/GvbrzG4FL4jQ0oBTK3AkRMJi9jRxbLLn+77YGJ?=
 =?us-ascii?Q?yWgc2kRdEhF4SUIOWujuIwF/YlXZss/7ZYxOKe1BsgTmn1uwT0TgAbzLo/1Y?=
 =?us-ascii?Q?tFLb9G1CCQsOeNbg3lnHmvoaEwYNrYSNR/h6fxowU2SoD0pzWJpB4d4mSEnn?=
 =?us-ascii?Q?dRsf7+ljR2J1h/xN1QsSMbpNyAWj5oqt+Y38jE0jG+Hk9sMZLwzx8Q5pGxWT?=
 =?us-ascii?Q?ZZJkbgRKr6758z+jBzDp9k/4Cao/cJodtpopIbov12fC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f967085e-3aa7-40d7-cb1e-08de3c0f8add
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:18.6587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BoG/x6Ooxrb88bTzH6RkHv87KNoI7YXbAr0VYPrGclhP8tAl7c78KU1wcrzuxUu7LbP8sTYdp6BVMuEljFhvTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

A DSC compressed stream requires FEC (except for eDP), which has a BW
overhead on non-UHBR links that must be accounted for explicitly. Do
that during computing the required BW.

Note that the overhead doesn't need to be accounted for on UHBR links
where FEC is always enabled and so the corresponding overhead is part of
the channel coding efficiency instead (i.e. the overhead is part of the
available vs. the required BW).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4394ba1edd836..05cf283b220a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2085,12 +2085,16 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				if (ret)
 					continue;
 			} else {
+				unsigned long bw_overhead_flags =
+					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+
 				if (!is_bw_sufficient_for_dsc_config(intel_dp,
 								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
 								     adjusted_mode->hdisplay,
 								     pipe_config->dsc.slice_count,
-								     dsc_bpp_x16, 0))
+								     dsc_bpp_x16,
+								     bw_overhead_flags))
 					continue;
 			}
 
-- 
2.49.1

