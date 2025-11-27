Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9699FC8FC98
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2967C10E890;
	Thu, 27 Nov 2025 17:51:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOkeG3et";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27CB10E88E;
 Thu, 27 Nov 2025 17:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265892; x=1795801892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=pun7uzyPDmGTvGJK5Mdwu8gTLgcyv6mPp5nH7NpcIAs=;
 b=AOkeG3etaJwHfdpK9kE325h0ygM83ZW3raKx+yzNQYKtbEnLpxN3k9xp
 96FS7qT7HuilXxVOMyYa1dZvQ/VaFazFOHmRhYx4/nOzGZsUhPihP+0YO
 bRUtco+UmXM5svARKxKGRGapbfT6HdMxh61uIhOHKXCunNwWN/72Pouov
 MwToxLnCL82wCM4MTEbDGv1F2xLQ5Bf4ErD8KiBRoObT8ivoYMjfi2auJ
 UZKFILNuY4TXyOrW7b2tFpwtWL1VhWFwBJuuZLYKqmG0P+LnYKDJ/hrQQ
 MNngvBGMLfU/whJLGbqERmD4h9P6qU+pi2dM6vE7BSjXc4QyV0UsKeSoM w==;
X-CSE-ConnectionGUID: nNFJRcP4SFatG1JCeg9cJQ==
X-CSE-MsgGUID: ip+yEeylRISemsWPykTOdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003000"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003000"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:30 -0800
X-CSE-ConnectionGUID: iP5ZSZWXTySQSMLGSOR/EQ==
X-CSE-MsgGUID: yuG9I7RPRt6lWNh177Th3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453636"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:30 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:29 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:29 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X1gt+Pjk5s8GRb0NAr0dX3YlRrFVaTe1oCVT7R5ZaO2RaixjSjeItFocYjSKFtm2XNo7qBI+NWoVkYN2f+Euh7JsXsss3aQK4Xvgw6082OMmPNuLF8kEG+XzxkgfbntBn6FrOsnsWkaTV0tPjWFMWbEP86pzd6Ra9KwnTr1SXvdo8RPK+HQTZepchIR98oHIrB62jFI4Gp5g8LZbnsSu0ad6D4EoWUm4ztbLeqb0tmDTslaJT1kagVyPr9dUY7BYmdXu6unElCeUXVVhRe+iw5QpR5NCOGsayRZHMZqSfDkj2ll8zgVWMv6szpapVhKr3FJ7oaIg5qhTJvxwg0xs8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcfKz1kfdaue3qZEHa56H4rw6NufdEP3S7HHOZ/XyGg=;
 b=hD15FlNI+8IThpMgno2ZN6JXiggmMGk9UaKQMsWNuY9YTFCQEEZAK2ShIxuTfguxu6hNX3pqJ0GaZkD0gUCqoCiUdMYCXzo9zXZXC7xn/0qoxSGT2GvikLBmO2BYoBI/2fkYSdoMI8UZD23Tqztw0aZ9wAg8nuH5v8clUngzAKrXL+DRiDu+mGGdEsDdQ7iQXdj16qvOr9z/AtbHNbj1w9vl5ubZQjB5QPwOxOoNsbDx6dqSM26R0r0bhDYLcKHTMjL6Y9odWXg1Q/jMpE4/YSOpmiO8HZUGI/LABlQCOzzPgHCWRbKZLkD15/4gkBuTgiwpwm3l4gokI3XUOIGiAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:27 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 29/50] drm/i915/dp: Use helpers to align min/max compressed
 BPPs
Date: Thu, 27 Nov 2025 19:50:02 +0200
Message-ID: <20251127175023.1522538-30-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: a492ab03-8b1b-4154-4153-08de2ddd967f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?arQ8B8BYDBQsDNQ8nUYOQqjcoOj4p8G+8VZI35dA6EYbLqm6bioTEM7ToAZC?=
 =?us-ascii?Q?lDjMSfUc3El9rLJMfaUU6Km6h4ornEAH6hKhDLkrVa+OIRKLwL86bcz/sj+D?=
 =?us-ascii?Q?XxfsiAHh7b2J6/MrEcoNyGR8EyjoZB7kYendtz8m6w8B9T/5jeVQCgBab3io?=
 =?us-ascii?Q?wldj7nsGQBARtAOB8+UFT58M/8Nz9vE/Q52xnq9U7dUOr4fyhEEW7qQERQht?=
 =?us-ascii?Q?UmffReRodGIRQMyBSl5tE6a+LTolANtpZ1RfD8GNsgv6GYYZhZ5ppFjyv8Ma?=
 =?us-ascii?Q?7m1DEedcfXqudZ2yWy1ff9LCS6Ccfy1uwETeCWBa6w4y636ifinEixeT8wmb?=
 =?us-ascii?Q?FiNKbchBA2J3q3VEkebSKvOG4dWcGigF4Na2s0zB/FTqNUfXaVbfUA3h3sDA?=
 =?us-ascii?Q?+1cZ7RoHuKvK9RkLmHwsLBtTYYogcbodfLo3muS+NS4jSqq+uMKRCl9V9jd6?=
 =?us-ascii?Q?qfWuP4ACFjiwodacunejCz8xS55TcSEFqSwJm0Xw0lCRZLWAffeWTtKKFiel?=
 =?us-ascii?Q?7hCohbVGK91viiUj6lhCk26o5B7LdHoq4W9EA5qD1+RtlXy1oJyNU4KNGseK?=
 =?us-ascii?Q?9qg9TfLaeS4NpiWe5urlFXXx0uK1FnS5EwjyWJajNDdMEh4xsMGCCJbP950l?=
 =?us-ascii?Q?JVsvz0p+mjQCvZJH4KkCCJrUm30Z9sFXnTyGoMfBrXbJO5NZwXo+j6qtL77c?=
 =?us-ascii?Q?zWw8FOxuV+Xzvxzu+MxoaZBBtIwehbYsR4bF4waa5CRBMg8RNgmCjZNAqmjh?=
 =?us-ascii?Q?lUqfmteR/aZDkpSw1HeGEmxTikb2eXdRcKhU5sTfFRsqbJX4vayv0OX/w/V0?=
 =?us-ascii?Q?m3AJLzXxHZbIBLUWD7Ly1iJ4uAmQLwG8kQPShzk7yFSc6hmns9R95i1VptyK?=
 =?us-ascii?Q?L9uCbKYfeVm9dMEpVTWc8sJa/VzVn2TZ254mI1qHmPeB3zX7X0h29qbl4Ii1?=
 =?us-ascii?Q?TtIpSDHkffkgTDmCq4S8g4V6KmGNiQspwEz5uboBHuRL2zxsG4MdUzXuGBxA?=
 =?us-ascii?Q?liymkDJFIiaVcSe7vaS++RIQFPmCySeOVeESwOB0GGiMDy4vVFTmsKjkNFMr?=
 =?us-ascii?Q?fEoft2apK6hybb/ChI0HhMDYTDJ6Ffg1orrFSqURuTPW5T8itJ9BmTkb5+Kr?=
 =?us-ascii?Q?1Ncq0FjjyESN4UwH9F8xN4iirG8/0tw/4nv+1An7oV8Dw0EaspOBuMf1hAYs?=
 =?us-ascii?Q?DbSsuluJG4sApNAmBy5T6a3oPSlE7BjQhiVto5dr6gI4JXoG98p4bZb+kKFa?=
 =?us-ascii?Q?5IIlwMvxac/qZ/RM26qj4dW2Kya++dyZTTRLAu2ndp7TvZd1o1ouWAbuzMMR?=
 =?us-ascii?Q?UkxTmIZKoJJNFus/kVpDJ9dWHMmjL/oraPk3LffGLRUGbM6No/G45/EIzOgO?=
 =?us-ascii?Q?KFEt+o92qEShB359qk5xsi+80s1g73JVZm4bU086yL2Y618FTLfVts/gShaX?=
 =?us-ascii?Q?SRXdF4K0W7zOrXVbH2ipNu027jC2pm6Q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kIw4BiGSdXBLC6tXzXzOS7UxPrZlhqSy0s3Uqp80ngvBk1Xk6k6IsmvIUsG4?=
 =?us-ascii?Q?R7zyOynAxKvdsT38X1Mw/HAUpHyRRo3Isoeef9lNvKKWamkJ9pZ6apJfZgNL?=
 =?us-ascii?Q?az4YvP1544iJ6BVPcoaJewtlouh0KGrBnNdTNzyQqqncJS/Q5JX+Bl2pRyU3?=
 =?us-ascii?Q?H36Ls0w6DdlwbvwZIHBMxtAC796Lfc3E/yyG9BIJQmhyHvEpzFD8YdOJm1kF?=
 =?us-ascii?Q?2L15MDwHR9OpFzMV5FmVLytafM6A6LBlhAAFmt5aPgfRzNwwGCLpY8/o8XCq?=
 =?us-ascii?Q?pcgxLJorj5WlsNsABixLXOtCqOcffBndPxJfAH8ACgM8pjDOj6UcTkV/foSH?=
 =?us-ascii?Q?gEDxHh+z7VWJymyblNP7C7iedi8CCbV2q7sLDg/T1vLmjphE7gMKc3EH7l20?=
 =?us-ascii?Q?TIMJrvV8njNnZ5Nf7Z3RZtBo0Ks/0W8CkGI7si8kwGEE9OckcgRbrleB1TkK?=
 =?us-ascii?Q?KswBDu98UrYsfgam3VXdGHyF1oPFC8uL7AfvvqrAOmRfKtuY6I66gqSkn5nz?=
 =?us-ascii?Q?gAu3k309Pk8n4GY6IArCzV8uJShwgb84wxFYmodn6EZvHlHkX82iijWlxctj?=
 =?us-ascii?Q?kjEDrOA0VGzOaS6HS+uoTXmzvl/KPuyBxIzAXUGIzqskLaJDRLkHzPFbjki+?=
 =?us-ascii?Q?sqvCkUYT57yjVAxyyNxx0ZZc+8+qcza2npR9L3MWeFH+0ZO9snyb5TzHlWCU?=
 =?us-ascii?Q?wS8JC6y7QmJ6OfmWAFHLoypZSHHK+Ql1kKjKnH/+OQfGKBak6YuamN3YMrzD?=
 =?us-ascii?Q?LVX3z5p+P6cOCANJbcCInFMtp656UqQc1yfNniw5MD47nfy/ss1l6F6lcK5I?=
 =?us-ascii?Q?WXYY50Uonk85OQSvcN5G+ZmZxcZ25zM8/SjuYhD+33rdka7DkTfB7BT/9nRh?=
 =?us-ascii?Q?WOoPQHipDoh+PqX+w3O9pIQ9JsSxy8NXNW3rXPqsVH2vCDE21FGnFS15PUST?=
 =?us-ascii?Q?Yn/voLc5uFm7sEWlF2Gblsr+V11drmwWsG+3lodRkKFNJuHddPmwnoRcAtwA?=
 =?us-ascii?Q?6aG3R0V2DfIhaL0CYKmqMfKM5Igmg4hkhCMbu2o7QzHAMyD+/FdAPhJoqJSg?=
 =?us-ascii?Q?zUZp1HJ6nj40KdxTLUDvn5f2TnL73lBty3SBs2mmEl0OuvsgUWVEn6sehX4m?=
 =?us-ascii?Q?TEugqfqRTVS3+YeXA5HDpCJIdj0NRfqFKb3UHb0+C7NM9B5hrHYZC3VMuQiy?=
 =?us-ascii?Q?wflSr1P676zBH3fnSZ+LePjtMng+Qf51dqr5Eb01yW3jMwAp6ozKtslJUIiu?=
 =?us-ascii?Q?Fqtvwl6TayhVirP3K5Cg8URR4m5A2PeBVFIIV8bgd9rrZwXn9deL/VvjbRDj?=
 =?us-ascii?Q?ZU3/ag918rjIK5Y/xZ3tNvfgwcDJS5ZK1Kn+0NcYq/GL/jke1KPX9ryryX8k?=
 =?us-ascii?Q?od3vEVfBKN72Bls70pbfqZHGpms4Mm4aHYO8kRjSlWvX75XNjI/KJDomzTwG?=
 =?us-ascii?Q?BSsSHlH9dTywx1bYw7VOADC8s2NfbFrEtd21elYGjU4goZWfHJ36m1FbAwLZ?=
 =?us-ascii?Q?qCdTA0pT1MrbrlsLhNfFdByjRAZOCRVIgyxsDvO6DSCp1d7eHLxqAc5+u9uL?=
 =?us-ascii?Q?S2Fb7WQQQnpBUOtdffsNvtfUZ8v3y4hlE2XF0Yrym72ygfEVc/JtgiL5j+/3?=
 =?us-ascii?Q?UllGxGaJcyFUS1Jaz7Sn2IOgjfShzowpKCKDBmMyZPZk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a492ab03-8b1b-4154-4153-08de2ddd967f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:27.1388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nyaU5pUbiSx+VCuZz5y//r+9vdGIxoX/sfLdFIC7/gKf4yzlP/jTXaAhg2XvrMu7w9cnE4nQpYDCRa9xaVe8aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

The minimum/maximum compressed BPP values are aligned/bounded in
intel_dp_compute_link_bpp_limits() to the corresponding source limits.
The minimum compressed BPP value doesn't change afterwards, so no need
to align it again, remove that.

The maximum compressed BPP, which depends on the pipe BPP value still
needs to be aligned, since the pipe BPP value could change after the
above limits were computed, via intel_dp_force_dsc_pipe_bpp(). Use the
corresponding helper for this alignment instead of open-coding the same.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8b601994bb138..e351774f508db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2217,20 +2217,15 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
-	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
+	min_bpp_x16 = limits->link.min_bpp_x16;
 	max_bpp_x16 = limits->link.max_bpp_x16;
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
-	/* Compressed BPP should be less than the Input DSC bpp */
-	link_bpp_x16 = intel_dp_output_format_link_bpp_x16(pipe_config->output_format, pipe_bpp);
-	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
-
-	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
-	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
-	max_bpp_x16 = round_down(max_bpp_x16, bpp_step_x16);
+	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
+						   pipe_bpp, max_bpp_x16);
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
@@ -2346,8 +2341,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
-	int dsc_min_bpp;
-	int dsc_max_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2367,15 +2360,9 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
-	dsc_max_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
-
-	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
-
 	pipe_config->dsc.compressed_bpp_x16 =
-		fxp_q4_from_int(max(dsc_min_bpp, dsc_max_bpp));
+		align_max_compressed_bpp_x16(connector, pipe_config->output_format,
+					     pipe_bpp, limits->link.max_bpp_x16);
 
 	pipe_config->pipe_bpp = pipe_bpp;
 
-- 
2.49.1

