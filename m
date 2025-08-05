Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26328B1AF6D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E69010E61B;
	Tue,  5 Aug 2025 07:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iR/cBXZq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973E910E614;
 Tue,  5 Aug 2025 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379458; x=1785915458;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=AMgB8sLI9yn1ihBqLNdYcooeS/DjD+++hghITHh3MZs=;
 b=iR/cBXZqjUhfagmwlilkKaB6I1u4w6igknfxGv9FA07jI4Xs7+Zlz+qV
 NWpXXBX9zXn1v74/KxI5psI7zcHsQU89732nEW8WOdlFyZDsAt/qsRT9+
 BYhwbHFduC3fADDWXQixQVFL8Ji4gN4wHhcTg/ZNo5hIgSp6qqB6/Cgcy
 JYKQwYPM1ZvWBQidXNfOkiXy+XgAYbb8qHmjKHSdv/KYc7Ylf8jr1khGr
 qGAUdNu9+ku+sVfsHFEx2xqLTbkYIyl0jg3lFoSfVExD+Fxe3nFXFvnVG
 ZbY3tsX4kUHx5oxj0ylGsVbn+V7YbZVZ72TcMjPsnpXsBLMHhCDjmOEW9 w==;
X-CSE-ConnectionGUID: RX/jSR2aRuekB8VQqvI7Hg==
X-CSE-MsgGUID: RNtgzv9mS/m7ykOTD1ZCfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469714"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469714"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:38 -0700
X-CSE-ConnectionGUID: ej/hLdTDS+m9u7gBeNg5/g==
X-CSE-MsgGUID: b362UagmTQa+gYJDzXbQ+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080174"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BsZQJLqbyUpnXGmXH0fAFTWI5oEPwYz2FBkxmlGM7Jt9z7SMirHPMvZpKPztEFUXs4d71uxKT9f4SrvbHu5T63aObDWDQARyHxJQT7DHsW62yczwRWcoMJuBiqp1Anb1tbxJArMZwlYM3AMqkdskBZyoKCHZojOPJpXkrdpgVdjKHuoHLUze2R+xO0SrWadD4Jp0XIxkVseUjM+YerP5sFEolI3t7XGg1rp7lA1lkrICCoqNaD5sXZ11tFeBiO7Pkc0rud++LkRtdK1PDWnJAY/UzDITaa5FxkpIsjvDs/n6p23fE54fJZDahtFV39bdj4oLj48JZpST14MZbrTjLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEROUgS/SdMYsnNn2FFrsmZ6ZoERzwAOjeiH/ITBMA0=;
 b=Y4IhpeucMGYybGOiaGiYMtNUYtCB390h+5dpG7IZqQTXSw9Ufv1XFEA5bhGKO2WOTemBCoE+HI9pe8DXnkJ9soINQ/7X2C34gJIJIATrMcr6NdXc8MXreBMsd56SyEb5qBGWHjP24F3TCrMHzHGA5E92gqWgxR4JidpeN8engfSvyRt/fpdPwoFzE4ZH/yni+ExnI5TtH3sSEiLBwZrvqbeWEZP8M0FmtbLhXBr9GaKO3SaJG+ojdNok4kSmuRPA0aJQOhmtDIFZbGSmwS7tpg7+KhMzCr4B5T/DwmVYX3mCx7a9HKPDeJvfs61aKs4rgno5QJNDkXwbw+g5gzisCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 16/19] drm/i915/tc: Pass intel_tc_port to internal lane
 mask/count helpers
Date: Tue, 5 Aug 2025 10:36:57 +0300
Message-ID: <20250805073700.642107-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 4246772f-933f-4cd0-0298-08ddd3f2f26f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2WBq8Z+kUxABMhaupjHuuwJSQtthz/2JFTPvMBmqGkewDL4uBBYv3+CLbfy/?=
 =?us-ascii?Q?HlOILov8SZ+JhRW9OgItQNpyIPVsUwVwnoxt8uwB+3vVINc47649OT2tTP72?=
 =?us-ascii?Q?2FIb4u0N8tGpAnk3xHAb0V4Hpu6ENmJEA8xzTUGIvdGXfRnImDGYhdH8G+W8?=
 =?us-ascii?Q?tGaluVGAytJIqeoo/Je84+sQ2otPkDWmvmdLeNfu8lmjB/TkVl/MQ1EGb7H4?=
 =?us-ascii?Q?SdBKYShvIj4vu8mLXUR1Y+qHF2JdSJ6PTGtd+NhXBuX5r/EKPCL1AWmWLVZu?=
 =?us-ascii?Q?I9XfdRqzsrcWqg7gZXy9oob4aTQBZ+FkjXsiHS2avhGpiHXiPXE+kdTiCxZ3?=
 =?us-ascii?Q?08dA9gxuHoO27yne1L65LIo55HeB99fa6Dr8uZcwYq4ZvtxmpdSOnaqJEeby?=
 =?us-ascii?Q?89zB0qbd3Opr75Hi7jlsSBojF+izfvqQi/+NoTngFzjgUFj4FCMi0IaPbok7?=
 =?us-ascii?Q?MeWqe7+88F+ggiceV0Bwoh34z+NMo4KqP+b7XhHZhObLKK25zn4SUDxlFOy7?=
 =?us-ascii?Q?iuQ+qj4ZuKdekAuW3R9Vsh7gGiwWGreSYwvuepDbaSK3RRUrPvYUsHKgc11Q?=
 =?us-ascii?Q?i7FRvotgYGoYAMt/+oqA7mhn28ifcst2jSKfWaQfK7NY9G+STjmsMA14V9sP?=
 =?us-ascii?Q?yWn3ilKOipJo9sBeqfLYmG6D6wHE3mTC3HM81qLni8E+q4HiSWpCgsMxv2p7?=
 =?us-ascii?Q?BM4f161CpsAhvT7xhpQfPhGyZk98TO/GqMeAJbsuIbtoHBe0xlat14FVeUim?=
 =?us-ascii?Q?EYdrPWbRTzMjGyOxAyZHDMfhp3DgdtZpzZN3wNT4AXP1Als6kjdADcC+2ZdQ?=
 =?us-ascii?Q?hYZsBOBRNKoYw42pLdz6Wp0UnpZihR0/Mh9trYG+DFIMvWRUBlso1MqWsS7/?=
 =?us-ascii?Q?XdcsFbR8ToNOW4zLAHupo3WNSeRRpek45Ob48b7ARChjDl2HeHLUdh36gNdT?=
 =?us-ascii?Q?l1SRImiilmY+P1kEYa7hrEgla+KeUej73/M2r2ehQFdRqGsPASTtoDTZQQCM?=
 =?us-ascii?Q?T5/2eU2vublAzbGACRFkNHULkTxnvB8c/2ESnQt65vw6QjinSxBc6ZEswVGb?=
 =?us-ascii?Q?lMC48OS3PtS6iayg0Wzx69AEN6BKv7y4LqPAp8TtuTDr1D6NQHikR6ot5U4M?=
 =?us-ascii?Q?kqXgz/87q3Zmqtxlf8dnJHweRSy1vkJGyv/27a1eREqHckqOEgeLpICS0XDe?=
 =?us-ascii?Q?8MM5EGJpG2s8VDGoJtTLDWcyDmUvjaEsLpw94fVgCV4D4clpLYjj3QJpfjVe?=
 =?us-ascii?Q?qD39dZc/2m9dCuAOcEYAZf90TavipOLEiE13Ce/UyVDNcjORXTWJXxD4xAB3?=
 =?us-ascii?Q?LehrS9Ld3p8hYzBQX4TI8qE7ZC8NEZNE3T5BlJ+JSwhwGACRBhH5O3XgXBQO?=
 =?us-ascii?Q?m4KZMiO9qg/EgEdvQk3V5SZXbvMdMNR8v1wEIACqnLlxORD61vZq2bliUobD?=
 =?us-ascii?Q?y9WHUjE22Y0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hrW1d4OUfU2d/cG+uzwU8gC9NDQ+8P1hDIv33IIP+vdnEMpqtfRm8Tr0kMZM?=
 =?us-ascii?Q?05gWhiJk1uvTINJUXwXJxEZeviV7LYN2IWAzC79VYKKoq3MRiyERSDArEDa5?=
 =?us-ascii?Q?CAQ19OyUm5hB5cd0HeGT4+0IhUBIykOGJ4y4+ayTMYovZYi1WSPoN0Tb3erb?=
 =?us-ascii?Q?dkNTwpQQJL4Uwx+ElkYWFbdKJQUrhBSHW3RnZ/Heoqs9sVIKIJwf/gwKYHy/?=
 =?us-ascii?Q?hh/y7fVhWj1jHGLA+hohAFZ9xbK4pPqV98bi9Fiw9TNVwJmoNtiL1lN5F26G?=
 =?us-ascii?Q?ax3hF5RMCrBQCXT6hneT5/RmvoWmx6cDnBvK68lLn15+mDjFWvb0o9VqVYTl?=
 =?us-ascii?Q?aPhsjHH6ysHfQ1qg+Fdzepi2FmfCENC8SSRxZGxwRp1Y62/qWXrx29pRlKio?=
 =?us-ascii?Q?OLAjsCgy38FjSabNs+ST56G6MPpdlM/C9mGf+OGmxIZhYIsF4F17lDrUq7z6?=
 =?us-ascii?Q?scBra5ckAfJWUMJuFoi5lgHQ6SnkUWCq8ny1QuG4QKSPn8KiOaDleL3Q4mvH?=
 =?us-ascii?Q?twhC8rXt+/wZZz4VPebzTSSyi28Fboz3IfJtkYqn4bT4axp3HpAscEoFKE+U?=
 =?us-ascii?Q?T1rC9do9X/YyfQNlwF6abz7befTBHib9nROW4AHc1nDi5BnJegimAniR3wRl?=
 =?us-ascii?Q?shzxZPzzsOw0BI3pKe0yrse/dhTSmR/QWyW74R9oKgLBSYcoFJc/N4jkC/CV?=
 =?us-ascii?Q?+DoMVRHm2YrrT9zttyjez0v7Kvy9s0oYMjmNgSaqC9q5A4dDGvvmyl8nPJhI?=
 =?us-ascii?Q?ngD9Qt/uIcHHYDLQhnALaAZ8ntI2GoyPOqI0cFPEBSe2q9QA+7Wl6P2h9hDw?=
 =?us-ascii?Q?yl52qkpPMsCY3p49sDq/KvNx3fjfLF01V2pH9pBw2MeEng/hqPnqRVpq/Xxk?=
 =?us-ascii?Q?BFqC/CCTcqnGeclqwZAt6+kvDjZmyGMzov8wgRgrcH5GyG8oIQOTWTmBlmJF?=
 =?us-ascii?Q?vNGLZeETabfKiMK74Q4ZqXtwjO07O6YXfh0zNFzecpu5RXHsswfH+4f8TRUu?=
 =?us-ascii?Q?46u0zufJXZN6BovJ6xH+w+BWA+qUEqNJWrSsRaAbVggMOZWQ53GGh0Eyaha5?=
 =?us-ascii?Q?ZkHpCVGW56E+43oj7Yzm/1qxZx4riFm7UrSO/axFCdWWQmAMy00fvKj6894C?=
 =?us-ascii?Q?gMPP+3L2PjNf7pw5cj+whFt9tFiJpOmMJylaO5k545tp/UqTNgLUGJhtycMQ?=
 =?us-ascii?Q?Oh7zoUgTj2R83JnrtSNNG0Yn8e7TMOpG6kqFOonzUocWl6phqH/QX3tLSrj7?=
 =?us-ascii?Q?hQyAEL701yYow9ITEubZKzQOEgljBOEhEydjn3cSWppF8tVayh8skWBpksKT?=
 =?us-ascii?Q?OkLg2MlKtFoNZodnGUY4gCG9ldJ2/piGcYGYhFpbgr1HpBjT7NZeKjjePiYd?=
 =?us-ascii?Q?eDkPKC1O10d/kqmfH78N+9fVRJEt/6a5KOgCZYBfR0q3i9U4rRt1ws6sdZMK?=
 =?us-ascii?Q?LOj0OJ6K72sRQsdN80Yu+lhAP0Y4xnH5PyrA8a71s1jDAcS/vzmGXCRBkC84?=
 =?us-ascii?Q?0NzPiJnlEFJw7Rr3EWvQoGtNxpgip0PzAxF77ARmwFU0YhF5bqe1uFC5P0Xz?=
 =?us-ascii?Q?PIr/x2FUKjoRUJYJ1l61/HG38A0utSMn04djrFXvBcYcvLaeKeuu2dsfe+DP?=
 =?us-ascii?Q?yBWI1yaO22Knm1qp/s/r+ko/SX869A0VDIq/On4slw1s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4246772f-933f-4cd0-0298-08ddd3f2f26f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:36.0513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XpsPUw6ixe9Jw173Gg4C8ftLAOQuWFHxMy729tiEdxMxLodWVo8UmuM6Tdu0H49zecdmCK6He48Xpaq+1gY/GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

Pass the intel_tc_port pointer instead of intel_digital_port to all lane
mask and count query helpers internal to intel_tc.c, to avoid the
redundant intel_digital_port -> intel_tc_port conversions.

While at it shorten the function names, keeping the intel_tc_port_
prefix only for exported functions and use the mtl_, icl_ prefixes
making it clear which platforms a given query function is specific for.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 571d311dc09df..cd4f0179b8cc4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -260,10 +260,9 @@ assert_tc_port_power_enabled(struct intel_tc_port *tc)
 		    !intel_display_power_is_enabled(display, tc_port_power_domain(tc)));
 }
 
-static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
+static u32 get_lane_mask(struct intel_tc_port *tc)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	intel_wakeref_t wakeref;
 	u32 lane_mask;
 
@@ -322,9 +321,8 @@ get_pin_assignment(struct intel_tc_port *tc)
 	return pin_assignment;
 }
 
-static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
+static int mtl_get_max_lane_count(struct intel_tc_port *tc)
 {
-	struct intel_tc_port *tc = to_tc_port(dig_port);
 	enum intel_tc_pin_assignment pin_assignment;
 
 	pin_assignment = get_pin_assignment(tc);
@@ -343,11 +341,11 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
+static int icl_get_max_lane_count(struct intel_tc_port *tc)
 {
 	u32 lane_mask = 0;
 
-	lane_mask = intel_tc_port_get_lane_mask(dig_port);
+	lane_mask = get_lane_mask(tc);
 
 	switch (lane_mask) {
 	default:
@@ -369,15 +367,14 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 static int get_max_lane_count(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct intel_digital_port *dig_port = tc->dig_port;
 
 	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	if (DISPLAY_VER(display) >= 14)
-		return mtl_tc_port_get_max_lane_count(dig_port);
+		return mtl_get_max_lane_count(tc);
 
-	return intel_tc_port_get_max_lane_count(dig_port);
+	return icl_get_max_lane_count(tc);
 }
 
 static void read_pin_configuration(struct intel_tc_port *tc)
-- 
2.49.1

