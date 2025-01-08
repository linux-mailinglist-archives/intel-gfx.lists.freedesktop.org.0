Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F48CA05E27
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CF210E8C0;
	Wed,  8 Jan 2025 14:13:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEhEkTpm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3AD10E8BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345623; x=1767881623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kcvSFMZxjivw3lGSg7BFDBDcZ6dkz/TdgPmKmPjnhVQ=;
 b=VEhEkTpmCkfrOnhHT6m247CnrwFfrK/jxL95fS0CnWCTEWdN3Q3IFlaK
 NjL/Jin+puURHBzI7HUHGnkCpu++o01mlRlvk19bcoTaggsFPTfsV/heW
 havslM9DNfM1P+l0dTQvvG7v03TtHDfoO6QcZr7N6qrVhFw2XFNp+ksa0
 bUqpDuH8GMYGAJoRir8FYCdXEExSagHp3FVGxvEmn64OGK7K+kN2i+hie
 hhBIG0r199WBQytbsyETqjJgVzDmPkf5nffpm9jJ85Vdo2pQRSWPRkFyc
 Fkxxf9m1Tl+6yWR/9h1O+xo/fWAw8dwAvNiqvm8Lsm1rL4NwIw+AAjT+/ A==;
X-CSE-ConnectionGUID: aCtha8LbQjO8mzPdTqdExA==
X-CSE-MsgGUID: UOmIxWmSTLC5jpryFXw9Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36456242"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36456242"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:13:43 -0800
X-CSE-ConnectionGUID: LducNGsoQyCukWb2AgUlbw==
X-CSE-MsgGUID: idb4WBwESL24vfPmQnoKhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140447414"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:13:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:13:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCOmrPQj6iCepkKgFUkZQTZCOEQVgmgk53CAZbBHSR+RU5kbmT57Fay+Y1eimDItiAqX6oET1uzXfDEHS37bXhwmLrhO/gjOhuA6GoXhnwed2M12PzjLntm8v2vct2D13ttKF0U453wA6J35J6WP5w9gllM0s7/R47/qc/mvnplbTuuXZuZWzlqStdEUaozDRKnrlYFvynCQBh33WDgKNRV73ie+lQk7PoAmpMYjAQImfJOqDpKI8oY7umWYlGVt0IXOGgPPcy5m+y1QH3ukqKsF8RvDPd1h3nRZ8UdLVvtibeFxlOr+l9rCNUWrxWci8r7GWEf6X53ey5ylC+o4xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Er0v0mWI1xQvlaQ5TaMgP12ZYa4Gh1O/3RdE2i8ei4=;
 b=w9nwdZOjIf0rPshantQYdARV8Su4vnlyJOyOpww5iMpTBL2FUjM6J3dY2WfQcQrLI6b27Ey8uERptOyuf610/PrWSFPkmRXxlB/Cx2EuRhlPoYFkI7Gl2wbAc/mxltRcVMS8QOag/mV5FBDIpaZfiontpNGl+NBdqGiLwXLHCtiNdE41rlPF4ph4UeddEBebH1ReejIurwMV+kVX0wM3B2gS+vYRgdFtE82P2ryCO5dweco7hthHRKqbeX5fojDvf/Yon8RKDzbjraC6Lqlqng58E4YIz96KEegeKfibvn0J5F9kyKLtXpoB116Q9mZu4z3Gd3Fe9gRD8hsf/A3e4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 14:13:29 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 14:13:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 2/3] drm/i915/guc/slpc: Enable GuC SLPC default strategies
Date: Wed, 8 Jan 2025 09:13:16 -0500
Message-ID: <20250108141318.63823-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250108141318.63823-1-rodrigo.vivi@intel.com>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0167.namprd04.prod.outlook.com
 (2603:10b6:303:85::22) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ca3d097-37a4-4107-c0e4-08dd2fee9f33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?21CRHIHTwXMy1h9lhK1ItkgahGG/cWmmRD2+TZ5MAc6cvyhlqzc102dYhzSI?=
 =?us-ascii?Q?b3sdbLQUyiAgFwFo3qi3vt7ULMQjd2IoTBy8hdGz3zwSWJEsfzr8zfDw2OQv?=
 =?us-ascii?Q?Y/IsoPPr8xm8hBX2T+ehB3ypn0ytI+3gPW3uq1ozwq1+64aHYoZ0gQZinCMT?=
 =?us-ascii?Q?nGweq90JWts4HcJTB5CAoUMNufyb0wrjP2Leg4WDrB6VFurtwrwYjbdbfVyR?=
 =?us-ascii?Q?AsaFYkCMiL4UCNW1OaomKtPgnE046JfCLS1wgzjrkMqA8h0zhQXxA6rEoIKL?=
 =?us-ascii?Q?5IToN8i+JVLqpXTwk54zw4IrvlSrlTtIIF8TTLeM3kRS70BOgctXZC2J7dd+?=
 =?us-ascii?Q?b2XXTfz245+aR+RnZrTsUUNr2Yf8IiOzlxmtOo6XXkd4Xjuqo3hSuutnNhDx?=
 =?us-ascii?Q?cQquvidyaInMe0n4qgWxt3xttu7f7IXiEkqRUmiT9t/6hAigOt7v+wDvdM56?=
 =?us-ascii?Q?R8CuuELQRmUDuoNTfv+q2mJAzS884bnx8hsakzjipOvmBRErf7HxjzBeJJqg?=
 =?us-ascii?Q?UjRjdaLyKGKRne2PniOUj6m/Lk25cddDMBLqFhydPsAPeM/2MmNuzRjCsIqM?=
 =?us-ascii?Q?4Y6GvS3Onho5OmBKk2ofzEwqHHDgRWj3LILy2J/kYj5zmjONxoZfmZzGmtwm?=
 =?us-ascii?Q?zBOglHrcBc3HZzVizDEroSuIQpVEOpQg0vz9qcwH5ZTvUw8AdTjPagz3ORcJ?=
 =?us-ascii?Q?/LFZ1vBMw29/GwqYr5WQbREe8APqb496VJBLEcAnETOTEak8ba4DjP7RGQbL?=
 =?us-ascii?Q?X4QvbOrJcq/tV0DhhtImF165zpErRdxi0q/ctVDP6KHTiXjhaefezgdQzuyY?=
 =?us-ascii?Q?X6AkHsdsiQtd4oyyQp/aFjgmOnGc0MDRYrc9gvZQMKO9ryj0VlgbtoKNADG6?=
 =?us-ascii?Q?fd5MCLPL4Ae0cabGm3vY3MQ9v4i0ODraTiNxAEbgPZ5YXrdpl/YiSz1QlofK?=
 =?us-ascii?Q?y7tr2SKUiPXPtgLKrfYaqRjrHmDsMCOYjoTDMPAmKmLCR1NcrPJbvWIeobiT?=
 =?us-ascii?Q?uiizd1+T4SkIijcrBXsDroxGL6WgdSDBZgXed//CLJvjA5XiINHFdB/2uGhD?=
 =?us-ascii?Q?EJkiI0zbJTkjVrg94JtSDVeYAojORE6KdECq6boSwKaIF3ZXA22FpvG0X+wO?=
 =?us-ascii?Q?pWFAg8012SOa9YtjUwMRxAWkiXvkWkcj+oWme8MHwUGeN/Pj30nvJcKD+PPA?=
 =?us-ascii?Q?p3mvxP7BBN3wSmGHWsDdG5g43ISYxQjOhRgvdAG8gvO5+Ud7o2oEF5QG98Gi?=
 =?us-ascii?Q?uQ9H9S3LLAU+D4JoXQD+EMdSek2xa+qmhtF3wqHmUUe50GU32HSUCWfl1Dgj?=
 =?us-ascii?Q?BwKQ7/UrVg9IsFaQAOyBAqM9jjHffHmCnCiz5JiPvTvb+ANHKQmSXjfPk/+D?=
 =?us-ascii?Q?NTueUTCO/N7TIoc99x1ZocZj0KVb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+3Hh6Fnj0gmsNR6lK3qrA9fWOLOyg+S0NGnyP+cF0Qp0S2kD2ScT1nSIVEUH?=
 =?us-ascii?Q?h/TVl8YsA/uKGI8JA2XLpk44Oed2/2a3JAIiFikx6Z0TKKKK/ERUm/FI9R++?=
 =?us-ascii?Q?G98YYA70A4sfImwidgVVhzSNijhzDCYfNZ/W4zW1Hmi6ZuOsvb1YzISdXQHa?=
 =?us-ascii?Q?8PX30s9SrLEbsllN0mt74uewsWUBtvc7StdbvbQ+KvH/HdTD5vbS/9/zZp8H?=
 =?us-ascii?Q?YIXRZ4mulZg+zJf5suEreWGLXRshXBarw+Pn1V3hafmuv1j/CjZEcVA32hCs?=
 =?us-ascii?Q?lNRNm6swNvl1J3hGcRefEfoUx+me/dMdJXOH/tEDN29TvOoxoDkezb9isgrw?=
 =?us-ascii?Q?PRbApciPOM7KR11A/0FvpR2OD3+BQ6z8s90VL1xSKM2Jvs3c9oX5eixT5rd0?=
 =?us-ascii?Q?BCE4VOAaGFrInBiXlr5FCSGgMjw/Jo7aXjjePe7YRc6NIKY1NgjtL46cNW5n?=
 =?us-ascii?Q?tmG4dSATAbbeZKMyqNf8GexeP0iS1KkmgivN6iVW5bjObjicO37TZzMwfKV5?=
 =?us-ascii?Q?WJoJOjyI6Js4SUMO7kVOCmYyJgpSDqSGlPBaHwXTzdiVWKelR0lUABbvOEvz?=
 =?us-ascii?Q?JIUidw1G+dUSOdLJhjLEDADr3HnfRyCCpGievPAzUV/GDWRqgaNBpFpU5Olq?=
 =?us-ascii?Q?Xm7YXKrMVUswvhr+mU3QrMG8Fkwvt3aJZg+TM1bwWnJ4d5zZycQlHyRK+NF5?=
 =?us-ascii?Q?SD2qju7FrJJD1kOi/Kj6dnLc7mOfhvKk9ZtsgHghLwWM0218jbPff2fJdFTi?=
 =?us-ascii?Q?XJNd5Mbb3Vk2QgXkqWs5BDARQCfAjyQ/+Y6YsZrxAIWkuNRgy2RvWmLYDJej?=
 =?us-ascii?Q?XD5syaJ7DNtxGGQNqbM3p9nt5y1ig7p/8PrITU5LsD6XRmA/y6KE3VWUahva?=
 =?us-ascii?Q?cEKCtya4GNa2HijwnXCeIae2uojd5Jan7JkWMJIJyMbXFVkkaglSDnEX8h0F?=
 =?us-ascii?Q?+ATxCp2fxhVNQExEzpcu9clyz7SHR3X8NQLW1RJctY7drzTtgFQWtVhGEx60?=
 =?us-ascii?Q?lxMJui4h9XcyML9LrARlGrRx+GLtGh0gr6DJCuWY/HJ3f2geJKGf2X7Ccult?=
 =?us-ascii?Q?zWrOAXgERg9iYU67mwOVuQCgROfXnVAZQHHl+rDDDPy+6sRilvoWcQ9m7hF7?=
 =?us-ascii?Q?+QaT8mGKk/2YvzhC6bLTZvADSZLy266kz4BwZ2MjQtVEeGVLERztuw+DLs3w?=
 =?us-ascii?Q?VaRBQDj4r+4MVZTGFWHbCioLAzyHS0fF0liw2J6LEgZJivW/o1kE2RxQiqzk?=
 =?us-ascii?Q?8vq0eLl2DEmOav5nDaafYpn1lgvbky3nr9wW28mosJZ/mIC+ZKOXKLiHBiiQ?=
 =?us-ascii?Q?t0FfgSDxXyEZHBfjV0x06AhvlTF1v2AQU6shixITxwExKSjZ5MU260qghTnH?=
 =?us-ascii?Q?iMl6khF3v0umovheL76Y7QJhCuupLENls7Nfr+T2EX/SSkaC31n3T/ZlOwM3?=
 =?us-ascii?Q?OW+mcDLfrQox+uG9wjpyDQ3srmDsh2SpWkUbf0srQ7vqTbO5Euhi3lPP4wDY?=
 =?us-ascii?Q?S0kD6P+ApHLtWGYti7kWebWNIATFA4ZPQrDkMIej3CTa9Fe8u6el4z1hQM3d?=
 =?us-ascii?Q?SC8BOrSNjsbtP48AdjIN+3pEDW/PqrsMTjVDLNHmbNOArlWzyoI5EBZYF6bO?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca3d097-37a4-4107-c0e4-08dd2fee9f33
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 14:13:28.9689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K54ClF6zrokO/QqUHslKMbMycZdk6KvX3nx1htXfthRp9//zNvlJPFDa2kRXdoCMn2aEMVOluxfzxPYqENKmvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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

The Balancer and DCC strategies were left off on a fear that
these strategies would conflict with the i915's waitboost.
However, these strategies are only active in certain conditions where
the system is TDP limited. So, they don't conflict, but help the
waitboost by guaranteeing a bit more of GT frequency.

Without these strategies we were likely leaving some performance
behind on some scenarious.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 706fffca698b..722da8a7f852 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -76,17 +76,6 @@ static void slpc_mem_set_enabled(struct slpc_shared_data *data,
 	slpc_mem_set_param(data, disable_id, 0);
 }
 
-static void slpc_mem_set_disabled(struct slpc_shared_data *data,
-				  u8 enable_id, u8 disable_id)
-{
-	/*
-	 * Disabling a param involves setting the enable_id
-	 * to 0 and disable_id to 1.
-	 */
-	slpc_mem_set_param(data, disable_id, 1);
-	slpc_mem_set_param(data, enable_id, 0);
-}
-
 static u32 slpc_get_state(struct intel_guc_slpc *slpc)
 {
 	struct slpc_shared_data *data;
@@ -366,12 +355,6 @@ static void slpc_shared_data_reset(struct slpc_shared_data *data)
 	/* Enable only GTPERF task, disable others */
 	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
 			     SLPC_PARAM_TASK_DISABLE_GTPERF);
-
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
-			      SLPC_PARAM_TASK_DISABLE_BALANCER);
-
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
-			      SLPC_PARAM_TASK_DISABLE_DCC);
 }
 
 /**
-- 
2.47.1

