Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A86984C5A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05F510E75A;
	Tue, 24 Sep 2024 20:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLGkgbId";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BEA10E751;
 Tue, 24 Sep 2024 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210634; x=1758746634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5oKBgg/kLxWTS6byL3uecfP2vGRnHi3FLBbBKlDiC5s=;
 b=QLGkgbIdEHOpu+vtqf2ARbYi+Q/LE/ECXvsZ/KCHzK08qsB1v9tcrt6F
 EZV161Q64jJ631gcjswEkG7qreRFxrK7cNRkeblqhirgOtZ0PRhRR2Aj1
 FOXVfzGlSsxPGqII7Tmz4wJlBT0uQR6jv7pex6J1HdyTfVhQA0L9PHlzm
 Tho0Zxalnhzx0mKGsrs/7WwVOcWQJDC/QiQ2ArcpveBJhhXNGpVhK2wc+
 qUhRaSVI2JJ1vb2C8skH/05poXO/Qhg4QSiVtNqHDMPp2+4uz6TR/ekuB
 qWRFLYq/VoMeNXKhtkpmniSK7PAoc2AlZGZ8PRrC/iYlKfO/DQWeP8v5C A==;
X-CSE-ConnectionGUID: z+EilD87Td6Kg42+Jue6vQ==
X-CSE-MsgGUID: IqcQLpIfSUGw7p2ylLZRMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26326195"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26326195"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:54 -0700
X-CSE-ConnectionGUID: pbviSRStTfaFIf29RY3Dhg==
X-CSE-MsgGUID: +Bqm66iVQJKekV3Fi1I6/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="109001720"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ix90QsiIVBgbEpR8qgClx3zdaqsWK3sMwdU3oKmDLL5UMiG8nQcH49ybUSQMrkwg4HX9HfKVpi/pkSUnoHEhlB5wEwyxUzahyxuFRuWd2YNX8YiNK5aaCrnbqVhR65Uxe9McFNhVnDQjhzEBfKFNL65oriI87KPWgTmKp2HDse1aMVWfCV6IsUT8b9noUy69446oYoFC2o1MR2ghmYDxwHo8QD1FETQiw/O7lf6Sj/8s2pbiHvvK043LpmOSIsx7erROFq97yFFegI0Iov2tV3YqI+p8txD/3ZUKBKc5cFOfO/EQ+RUOcdkKeQtaKLsc53azfDO/7rmpBZPWJVbiYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ld/Y/M5RwnMguRCM0c+/hn/jhWo0KFTbN2Ej1MiDISY=;
 b=h8XxAGZuoyLWnqn7S1IR3E4r0nhKVA2MNYi/U7nAaXu7nAQZYDNadNEMajc1R0y8rLMWgQUWXtCxjqFpXK3S9wuTSNsie7SbxBjYGOp18VmPRVqDtghj81hgZehautdoLcKhywAIOJy+izEqUeaSMc5H0sLylwfJmhvtiWImGrfMoH2dJDnr5gE0L8wIJMI+RGUu7vxZRQf0zXmryiFPw3EeLMH8gyZzLPyKN6ArUA9QZehkoH71FTfF5DmpE27OFBosiyjSeyjdBf5IvpROeXv0CAztexISWPwjoP7DlDAx0k8U9FD4ceCzJSDhJ9VEDY6nEEOolTdYdaTQr2q3aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:50 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 26/31] drm/xe/display: Add missing watermark ipc update at
 runtime resume
Date: Tue, 24 Sep 2024 16:35:47 -0400
Message-ID: <20240924204222.246862-27-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0115.namprd03.prod.outlook.com
 (2603:10b6:303:b7::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bdd43b8-73a2-4308-df6d-08dcdcd99867
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SMMu3jIWWoDw5JjXLUKZ+H0olbyeNUJSzkurQSEb4oaYOVSwY7g678z4dgmi?=
 =?us-ascii?Q?cWpZDQr3Q/2vlL2hoGgB58LR8g7tZ6bAgaaEDnZuUqttzYTUGZYNAYf8lybt?=
 =?us-ascii?Q?09d3J9yzZ+zCpsmwdOmdvxsyNr5sCyPNc3dNfo87/vDZUKrCVwJtLGTu0zjK?=
 =?us-ascii?Q?4otKu4PTgCblH2otBj3RIT3nPzwkJ3agoFyqtMZQOGiyCd7r3xV780sVr+x4?=
 =?us-ascii?Q?Ox7gKXKHWF+IeeNg4YAvg29t+jLGh9UsQdLd/323i7wajDXOAAXy5gchf05t?=
 =?us-ascii?Q?LHX1LNqh5VNbm7MzwEHxrMO1kZ59fS38zs1mwsj2SpbUDtERW4pfIx3EYdnR?=
 =?us-ascii?Q?WYaQc7Z1Z2JWiP3BpEuGEbJ0XSbGC6mmumeKNgjOul9nzgDuWaAGNNmvmcjd?=
 =?us-ascii?Q?jKrl28GRiUIOUt42051wwqGgHLNpQWu3UYzoCn6+qitW3+Vrv2r5M65MoJfp?=
 =?us-ascii?Q?3gkENMZrjzasHahksFhjhxh2mvpIlfMuZzMj+WoZiTHt4tExxP5Tlss9vp0c?=
 =?us-ascii?Q?Kiy3ozXdH2fDI2FcHdjIIGOghbJmfLhv1S5CxgBjavc8FsbPoJSDuCp93VjY?=
 =?us-ascii?Q?3bhaqzDUeDfZrA9swco4tTWgn45pPzswRXiJvaQFe5w+mYsFDwIzbWFHuTGd?=
 =?us-ascii?Q?zhUzxhCGIc0VXGDimnu9yMnQwsMLxU141i4ISvPbwvxh/vP7cNJNa+YiwZe8?=
 =?us-ascii?Q?iLM5N6BifOpD6eeD6ds2GB8WlkPa620FbaKFSkAhz/QxfgN3VNi4wEcnECBp?=
 =?us-ascii?Q?dftXo1w50AwXA7lPHnjDiAHUoVUD9jcdnsdR7dRhUmHRrnd3MozJWwBaxZ3J?=
 =?us-ascii?Q?S28yt4seqN8fMmZxj14UIggraeQzHEYunVRnmBmQ2ygJTL0iBTnISuU2Da22?=
 =?us-ascii?Q?C3DWfhc7L5pWeePBCzSWlkliwKWROaG05osUR2T1r3ykskAlApvMSfOxM4tI?=
 =?us-ascii?Q?X74Vrh7FBJ4KKnmfl43yTqgq4BnfRvYQjiUJNOu5fzXllkJs3K5kd3BjwEeW?=
 =?us-ascii?Q?duirEGogC/t3Gwkq6Gm/jmLLRXutjUjnbKlm8Uv+5EGOO1l94cH407DWE1aH?=
 =?us-ascii?Q?BQqVv+IgIF/sXECoP8MMksH3JeX/Aq5KYJ6rbPLuDwXNDxybHDKHvJsJ2AD8?=
 =?us-ascii?Q?LV5W+IfjHanVvtO173GCmgevAzAfVc5jZeug/RDpM80wWb8pZbbfoBVgi0L7?=
 =?us-ascii?Q?OwjZIgq8HolA3VO9Tqt5bqQ+HydvUAhetKAIZZm7MID9ncajw1Q7k7217DnD?=
 =?us-ascii?Q?71DFk2GU8T3NfmUvMn+l/hX3Af9wSg1E72Wu/uVPQA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/IRUHpzk3pqKQ+p/Oug+wlxDTvxwlnpt4xI6BH4ukVQXtiNWVgBnIxpbOxa8?=
 =?us-ascii?Q?D3SPTjppbdltSMp5W0szFvuvsrNi3/IGBpvjAWDN6aRjjqXcplgw7Q1iBrDP?=
 =?us-ascii?Q?TDfTxPaKr6LXQr4x67LU22fi93yJ04NZ8uv1qPJ08+WbMmuQiVB6/gtrV5dL?=
 =?us-ascii?Q?nIspj/JbjUetal7EHYCpr4I2E2aEfpD2o8rjgLXkos63wkEtNvh9gWMJ41jw?=
 =?us-ascii?Q?bn9oThqbWes06VhrFr8Vzt4MhjKCY94MT8eKJk2Ns/0V/61oxEUjpaGJLtQ/?=
 =?us-ascii?Q?ZJxg3wObG1m2ew5jLicx5rI+6DXSDYJAOaKkTLZNHxdYsGrAf8kHjseDcSWv?=
 =?us-ascii?Q?8TWSHdEePbbxkvgvaYLL6a7Ucyg52opmfieheT1ffo2VrJa5xm0B5Ldp3DBS?=
 =?us-ascii?Q?gSv2pWHvIkn7KA+BjyrdoGu7NTZU2p9+FARcC0NDx+QZ2KyWwNqsnKS5aHw2?=
 =?us-ascii?Q?bow3ylbAj1ypw5JTZIfq2FwlIEnLzAsbBjM1cr1qDBTsfp414w3tLmQEW/gF?=
 =?us-ascii?Q?SGZzb+QjBad/900/rPw0CU71P5m07imZuHWY4F/yiAx3e2DLkrWYD56hkXKU?=
 =?us-ascii?Q?v9HDrUoECVfqvfog+Rka6sqch1nt8Uif2OoickaG5wHhtmj8SvjgfSt82/Mw?=
 =?us-ascii?Q?eE5td2xHj/3IkD/pLulcST8EEG3FcuwJn9PlPudG5GO0dSQQNdnvmoPefYeo?=
 =?us-ascii?Q?m6MehM/A8752vwaRIKjGd8fOC/Tboo0IqPaZQatuDsrOl1jSxTMccD7IIIqr?=
 =?us-ascii?Q?r2L3dIX+Ul12RWoydnRT8++qbum2EEuvu1yEUGQtwv6BhRgZaDC2VUt+CTOt?=
 =?us-ascii?Q?Hx9BYjZq6nYwORvO+JsU77sDXgfTozqlDnIQWyX5zEgizgrIkB1K5N3epXWp?=
 =?us-ascii?Q?hK+fvTWfm3kAAPpeF2SH/loHXPR0+oRMnBhWPMMlojFSfbkg/ZmuOis7lw/Y?=
 =?us-ascii?Q?rroIQRvHGBZgHOEy1XhRNXugr1ZZDrrcTzST7vtzXwiW3DaDvt+ILsv7IDvd?=
 =?us-ascii?Q?5w0wlblv3RwFxhlg5ALcLkt5U38LQpxFwCk8Fhf8+wGzYh2fAUUT4frPGKk4?=
 =?us-ascii?Q?9WWJh/LS6MCakJXwR+d6/gpfXph0ERc1cUesgjvBiaqxKrbcM/dmxxv0vD2z?=
 =?us-ascii?Q?0Ipy5r0cUFXS5htXO1OdQPYW9qHq3yNO70G6k9EJ0q8SSnl6JNdD0cF74OPp?=
 =?us-ascii?Q?YXkk2lq7gqGehCf2KJhubPpMn/TTYH899ty/OLKkqBkIUVa8BKsXUil0Alfo?=
 =?us-ascii?Q?GsFJVew2UQi5Te27a/xe6JMe8Ec+WVr1A3i9LWxuZrA+G6Rs+gmOFsPWVkvJ?=
 =?us-ascii?Q?oF5nRtWx06gWDuQuaxH6H/FpSLNTvCHnPK0ws2Kd4M/OXMferBouyw7chUMv?=
 =?us-ascii?Q?lywJ6jYJ2gLm/wTrl4ACBLVolHMGE8hpqfFFskQOmW9lEmVShzMDvGGcRG5X?=
 =?us-ascii?Q?vfwMiMH63p5nekmFv3RVWliXMTk8IcbEuytaHKCEwPjGMwJOUMlbjd8sbBnL?=
 =?us-ascii?Q?RgPj/uVjJleP3rJoNQkpAeGzowUVgqNpO9ijJStwDnyhMh+AG+9/5tY1L6tH?=
 =?us-ascii?Q?49ZH1H0ZNomM25vy2o8Jt4oAW/qRdl25l6V/cz8oRQY0VQ44eg1I2rW2W1V4?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdd43b8-73a2-4308-df6d-08dcdcd99867
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:50.4529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kuEOWtgUePT5vwUWP2flloJRVeMZXi0+9yhoL5B6VOftkp/sO6JAYz6J8yk4awmA1XdkkxJtO3eFnMdEx/7fzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Continuing the alignment with i915 runtime pm sequence. Add
this missing call.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c758874a9059..44cace0237dd 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -27,6 +27,7 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
+#include "skl_watermark.h"
 #include "xe_module.h"
 
 /* Xe device functions */
@@ -469,6 +470,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 	intel_hpd_init(xe);
 	intel_hpd_poll_disable(xe);
+	skl_watermark_ipc_update(xe);
 }
 
 static void display_device_remove(struct drm_device *dev, void *arg)
-- 
2.46.0

