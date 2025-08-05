Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4092BB1AF67
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE2E10E5FA;
	Tue,  5 Aug 2025 07:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G47dy52j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0505510E60F;
 Tue,  5 Aug 2025 07:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379453; x=1785915453;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=mXS6g8GdDm4meW/qfunM3tS4x1XrBCXNsuVZgvf8EMM=;
 b=G47dy52jKBBXowW8RDq3XSh9ZVpu7Easp3kO898VNo0L0aEQDKFJBO7C
 ENlT4IMteWz0YVG7byLgvY3l/Lx8EYfbDoyeuLnEduMiyB1pLkYvLdE3r
 4TtQY6MiSDN7gBnqDq59In5iSoFo92H+QTMb8JlKZaa5lRvy4FapjUGcD
 VE0lJIq+o1UOnzwcU0Eo7nDv5kd77/WeV6sXJrXc1ptc6lCzUluQAkjqO
 5SVZqkcaj70Yc0rNkx9gAOW30NiO5PrNHyV0iPgcr4NHLR1oBXsSgZDLA
 2ZwtlFfXfJoH61eTD+gicN4+6db7yxvUbm0V8evaD1CWi5pK6nIxAn9B0 w==;
X-CSE-ConnectionGUID: pTol5hdMSme0c4HtD4VuLw==
X-CSE-MsgGUID: m02aQsXGT/ie4rCHsNf9rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79217809"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79217809"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:32 -0700
X-CSE-ConnectionGUID: 6kt4tEhxR4ONI36lvNiIcA==
X-CSE-MsgGUID: KCyf+mmtQC+XLW1hO+Tuuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163668549"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:31 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJu5UlDtJ3RpJNVJI31ZFFxaOI8FvprJbX6GMmGlSHhn+c/GcBCP5UCBW/RnKsEwFzkjQXZM8VR8CyUymfJIdnj3pfVZaxKCnQhwrDo9drsd/pbMDhK/qIfN7JzQdrjEIBKibMVyeRUB8QVtjabp6hhDFILJ6/XuKt0fiA5kWZsdft6j+BwNXOtZPMzXDsGdbtaJJkBoxOGwMTBc+Qp6zzSnABzLGwv3igkYR8k3NfdF7duSqEGEHs/He8dzllJskNtPIVLQrqBSY+is0Jbxf2Ntkh9Wt9k1XGhp5ZKp/p0/4eknrxQdYG8ArKYI9w/ISbKjvzaHyhBtgv7mQzkvkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IK7TazO4YcnSuKFxKJIlBVcJ1TCAdIvAhqeLaSKHGEk=;
 b=Nz1WHbvV2ncjH9Mo+7OlUeiBB8H/7LHoXon2+RgcISlIp6UJZoNsXQA6eFEXXm0vkE/BZ+LcSe6yyTfndf5Tkqd3LNXZgWz9ix7yTwoUtjBhJRJ+432irBwrv/2TK/s4uiI3BxclVJND4baPQn1d2p4Nr/WRQwdbZImkF3cgzYoXmMU3swXobYOQc4wFAkhl9o8h0mP6l59omrbr1FbfY5zXir7bMCAVVtM1EJz2yXTvPMdGhXqCpzE0zJo69y26v84sx/IcArmjcliTG/pivZk+PceiutBOcWo5JEoHUrgmuquMV5aYsGAVtCvM3zkt6DL1M/DswnDHQmIz6zEIJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:27 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 10/19] drm/i915/tc: Pass pin assignment value around using the
 pin assignment enum
Date: Tue, 5 Aug 2025 10:36:51 +0300
Message-ID: <20250805073700.642107-11-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 55393d06-48b8-4115-3b79-08ddd3f2ecde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6iQt+4gTkCoXTK6IEgJ5il50wgB9WHCk0RxZ26RJiYqvgV4AuHEjgIyjUWOG?=
 =?us-ascii?Q?eTK6ZF3HT1viyCUA1wohfh/rPBKNxwswflF/L6ykX9EVi7OmQRF9SX48GR43?=
 =?us-ascii?Q?+1nVAh+KO2v8qz3omj78j5HFVDvXK5nk4LzUT4obbcYrgVP12ViNl9/16HDz?=
 =?us-ascii?Q?4UVq6pWqCkRnAuWd/zGReBZbMGcz7VpoG0RImPL5MaeEtgJTfPnzUWXlssy9?=
 =?us-ascii?Q?XxZx3RkceKL+GK7cZfWiAN08h1Vmr19Qy2HvI4VvR+o4ZNVTjvkrXqVs8e4a?=
 =?us-ascii?Q?mJbOZxFuawqNtg9ADGaGlZp2z9YJ/WzsmriUyZ17e0Y7AwBOO0C8QcIseRjO?=
 =?us-ascii?Q?vtdMD2VkbI6gWrgWrdZg/SCRkMJ4mHsvIg7XM5yZI+luGGq15zYKhS+Dg2DH?=
 =?us-ascii?Q?Ofe5VSrC+elh1yirNisg8toAcDPJT62KU5abTFE/zSEX6hssmWQ6IfHYDAUc?=
 =?us-ascii?Q?TGJSvv024DpTuCRPujVQnFnS4WGU+sgYSyBgqoAO57VfO6MvMfKlGWpvRHwh?=
 =?us-ascii?Q?0ts+jOYFLbCtUTPVl1EUI54ZTbduMlOgiuSol+ylU7h6IedVfeTSxOuRWhPR?=
 =?us-ascii?Q?SoYXuhHXoVqSl01gFmBXeN+jQcnpHqnPjI73TcgVDsY9yUBiRkRqHdjUqBmu?=
 =?us-ascii?Q?nSnVt7XPuwlaaqSIhWD/VRlRgNxlKkklyLCfWLSzQwQEtT/qAVMsLavBiang?=
 =?us-ascii?Q?IlcpcCpxPoWvUZ0TrjiBdYRGkcV1FcuhdVY0FJcMwQq3epwSZak4OqOlA4vg?=
 =?us-ascii?Q?7TCiBS1V+wJuavRw6ZsqeA94i5SwLuxd3OWFblirJsEF+lVnMtm/8xVcyUtu?=
 =?us-ascii?Q?h19TRJdmWVGUwxpEMF6le3xJLDDLq6DLTXBK7Pw6GNb8Xa1GVRIKQiFge6n/?=
 =?us-ascii?Q?243sml3iatJ9hvLJXWcX1mxOQi0ExQYTcJtB14+8eg/K5utdS5dBsHXw+bFF?=
 =?us-ascii?Q?g1GLpTwSZhUkOn50wnrzb0ll9aFaEYFhLBKU1Xg8lXKPeguiJpXH1tpbRFIa?=
 =?us-ascii?Q?X7/+5rNqu5w5KsjgJQxGQbYv7/OXjnEktDgJen957bKJuhsNC8zFt30JHVxp?=
 =?us-ascii?Q?8POzf15glPduGoRwrjcRy4SHcSyb0kLMP4NwnEPoe+nRpmPxb3FBGDLXOCd0?=
 =?us-ascii?Q?Eha4ThkTe8iEDfT21p5Tj8bzJVkA4q24Dzk7xsZhIwV/U4KglptknltoyEpy?=
 =?us-ascii?Q?t/2pZTiVHY6YKaR9O4r5BDQh34X3ATYy1gdty8Uiy4KvdK7ODhheU7I0DeI5?=
 =?us-ascii?Q?o+nu54zJ8PQooL8mImuDCH4UzGXpRU15DUft832oERntNB8AMDLetKct4bD8?=
 =?us-ascii?Q?vGWVlXupt7Ia4NvoZEwY/M3mEdSHHy42KVUnmozJcdCvIoyj508ho884wCsl?=
 =?us-ascii?Q?G8LMBO3jyKrvdLhbyZWqD9Wnv4WjQSoEUlkSs7MrYqGCP/fbrEHVQy2WMiRi?=
 =?us-ascii?Q?6wH8LCKbQZs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H/OB9TX6lm/hnNaOln4N7I4GfgGIdd9bzLN5L8WP5gfUNE18VBA6nHEenb3D?=
 =?us-ascii?Q?j7ZQpj8+EKRgMxrBVTl5u/ZmR3ZqZwEg4TZHYCdSmCfuey5yg2Cxty4mzdIj?=
 =?us-ascii?Q?QptgDKWx97fGS/ahDKyZtMRwo1SLYa0ItEdn2U9bryt1nFVNotcHj2Wee5Ux?=
 =?us-ascii?Q?eOmiHnJUF79F0kzL5EMQ2gQ7PD9Dr+AKr1ZNbUh0WWJ3XrnZpjHJDcveN0qA?=
 =?us-ascii?Q?FKiBhg9FVjvx+B8YKbmkWiurqR3ZXVhAz3xEsBU8/wTqE1K1ji7QFfo5GCoY?=
 =?us-ascii?Q?lsZpwM4uQlbQruPiRZWdIfLiFo0ob5ahTGurG7y6iPHoBJHpwH35Gxt3vpOk?=
 =?us-ascii?Q?3Cxf5GT8Ix4LSs3DKB9sM2XuCRt3LKyQq55SF3eUCbGmoKnwirgGu2ZVI1m5?=
 =?us-ascii?Q?Fxv4zxoPUCmuXhrvqkf1W2srZwQMgl4PoLiOO8eQmnKPAZResfR4yFNYsAg0?=
 =?us-ascii?Q?3gQJM9zdvpZe7L2aLkknUKlAacHjLfgdwA/PwUMgL2r9G6IY/FNuA8FKSmmD?=
 =?us-ascii?Q?8Flbp61ONO8j5qKDenW3A3XrFODKxXu6xPz3jjXmo/FNeb9ABlP8FqgCbzQN?=
 =?us-ascii?Q?0KvbheGAJnxLjtINgbakureQ4T/Wg7udyiSniWOKlq++OP2O7lRF3zQ8YNXp?=
 =?us-ascii?Q?s9sguglwmpxxDoSrdbCmsxPoFmHYYl6iAkly5ej4E1G1NFjCM0RIy9GeJJcy?=
 =?us-ascii?Q?sRQG6yi4uvQDXXf0VhkyGmCLlPVplIkV2Tb22yJRmczHMOX+/c084ipqrRvI?=
 =?us-ascii?Q?equl8TIxkTIsgvLG5SdYawqq6kzs3THMDyJEOfekiQ8+ZPR7NUm5DGsMELHk?=
 =?us-ascii?Q?I8JupsbqwkqrpguCvAxzXzy32x/6ho0NndU5vFinu3CM8rXjalLXaroeabqF?=
 =?us-ascii?Q?/yqgmeqGPjQWqeRWc+oeGo9oi6RT3XK2amdCmuGGxz7lczSVnHAKKgFbEoQN?=
 =?us-ascii?Q?1GUXJtvYpJ8Jq25blmdoTUvqYsRnp2/LlcjmXKU6IRMU/02hzXxbplLIA8H/?=
 =?us-ascii?Q?Oohf4zBIplx8wmzNbNLIKO+H2Jtna2VjBZ0LW5gVLwuwoLPVCbZYXCAB9eb7?=
 =?us-ascii?Q?AuWWhq8usKJ/Rml5Hjv2WKBHS2tGao+qP2Z8XIKMbHlKj6rZ6ptNgkUNVhv3?=
 =?us-ascii?Q?l8TE+XCAEbn3ZBJbnZrCK1I/cIzuqQrh5N3ZZOYxprqodA2k02PIcZWdPAKY?=
 =?us-ascii?Q?ulyCy31tmmKG7e4TrmcduDGBYxWBBiO/0GfF4MIFGGtm+seUit82HcezK6dN?=
 =?us-ascii?Q?9JCAVceDkwXVWVshaRiYSytey9diMIRgFibKvWGRcqQhAReKVsEi7b/1lFdt?=
 =?us-ascii?Q?UudJ8+j+mxN8cGPc1FWTSJibf8k77+lCJG67Yw48iQza56yDJqcpGDGQX9rJ?=
 =?us-ascii?Q?OSAQYsAIGq9eUtL5a3kGqUCnl06bX8AfW5QqIoeYPVATZwvFpzG8Xdz0qmmn?=
 =?us-ascii?Q?Ynrz0wwtTu+ecB6R4C4sHS16o2iCXvAyhW0mYM9sKPWu47aIhqw0ic/Spa61?=
 =?us-ascii?Q?s9nO/rNSbeGtJNytcZK2t3wBBVm+B24B2nElesER/M5bcnlsq93W13LO48Rg?=
 =?us-ascii?Q?MK+EYOiZLuiIeHvMY8RgacPcSKNgcH8WQWagFCRLJubSPBR3fSjTSIEJv4JC?=
 =?us-ascii?Q?kz9KLXYDCqA3fa+u4lJxBHixdcM7U+74vy3oXacvGVyK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55393d06-48b8-4115-3b79-08ddd3f2ecde
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:27.1208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pULBfLYbPScA9TUJvR0A+SdXQD/+FBNdWua2goekYeucxdnrWydPXRNcRjVIfqge4PZEtpM0UKc2+zbL3Swltw==
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

Pass around the pin assignment value via the corresponding enum instead
of a plain integer.

While at it rename intel_tc_port_get_pin_assignment_mask() to
intel_tc_port_get_pin_assignment(), since the value returned is not a
mask.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 19 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.c  | 14 ++++++++------
 drivers/gpu/drm/i915/display/intel_tc.h  |  3 ++-
 3 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 866ed3e466645..2ed9fdd499c39 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2166,7 +2166,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
-	u32 ln0, ln1, pin_assignment;
+	enum intel_tc_pin_assignment pin_assignment;
+	u32 ln0, ln1;
 	u8 width;
 
 	if (DISPLAY_VER(display) >= 14)
@@ -2188,11 +2189,11 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	ln1 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE);
 
 	/* DPPATC */
-	pin_assignment = intel_tc_port_get_pin_assignment_mask(dig_port);
+	pin_assignment = intel_tc_port_get_pin_assignment(dig_port);
 	width = crtc_state->lane_count;
 
 	switch (pin_assignment) {
-	case 0x0:
+	case INTEL_TC_PIN_ASSIGNMENT_NONE:
 		drm_WARN_ON(display->drm,
 			    !intel_tc_port_in_legacy_mode(dig_port));
 		if (width == 1) {
@@ -2202,20 +2203,20 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 			ln1 |= MG_DP_MODE_CFG_DP_X2_MODE;
 		}
 		break;
-	case 0x1:
+	case INTEL_TC_PIN_ASSIGNMENT_A:
 		if (width == 4) {
 			ln0 |= MG_DP_MODE_CFG_DP_X2_MODE;
 			ln1 |= MG_DP_MODE_CFG_DP_X2_MODE;
 		}
 		break;
-	case 0x2:
+	case INTEL_TC_PIN_ASSIGNMENT_B:
 		if (width == 2) {
 			ln0 |= MG_DP_MODE_CFG_DP_X2_MODE;
 			ln1 |= MG_DP_MODE_CFG_DP_X2_MODE;
 		}
 		break;
-	case 0x3:
-	case 0x5:
+	case INTEL_TC_PIN_ASSIGNMENT_C:
+	case INTEL_TC_PIN_ASSIGNMENT_E:
 		if (width == 1) {
 			ln0 |= MG_DP_MODE_CFG_DP_X1_MODE;
 			ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
@@ -2224,8 +2225,8 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 			ln1 |= MG_DP_MODE_CFG_DP_X2_MODE;
 		}
 		break;
-	case 0x4:
-	case 0x6:
+	case INTEL_TC_PIN_ASSIGNMENT_D:
+	case INTEL_TC_PIN_ASSIGNMENT_F:
 		if (width == 1) {
 			ln0 |= MG_DP_MODE_CFG_DP_X1_MODE;
 			ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 9a40ad07830f5..05df252640f46 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -277,7 +277,8 @@ static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
-u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
+enum intel_tc_pin_assignment
+intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
@@ -299,8 +300,9 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	struct intel_display *display = to_intel_display(dig_port);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	enum intel_tc_pin_assignment pin_assignment;
 	intel_wakeref_t wakeref;
-	u32 val, pin_assignment;
+	u32 val;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		val = intel_de_read(display, TCSS_DDI_STATUS(tc_port));
@@ -327,13 +329,13 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	u32 pin_mask;
+	enum intel_tc_pin_assignment pin_assignment;
 
-	pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
+	pin_assignment = intel_tc_port_get_pin_assignment(dig_port);
 
-	switch (pin_mask) {
+	switch (pin_assignment) {
 	default:
-		MISSING_CASE(pin_mask);
+		MISSING_CASE(pin_assignment);
 		fallthrough;
 	case INTEL_TC_PIN_ASSIGNMENT_D:
 		return 2;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index d35d9aae3b889..3ecb3de54e874 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -88,7 +88,8 @@ bool intel_tc_port_handles_hpd_glitches(struct intel_digital_port *dig_port);
 
 bool intel_tc_port_connected(struct intel_encoder *encoder);
 
-u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
+enum intel_tc_pin_assignment
+intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port);
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
-- 
2.49.1

