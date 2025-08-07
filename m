Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC959B1DFA6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555F210E496;
	Thu,  7 Aug 2025 23:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iC/fIKVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D4710E191
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607721; x=1786143721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=uHs4i+uEjUovBX7UWe9/9RJkVGETUbZ8Y5xyb/owAgw=;
 b=iC/fIKVTyv6xchUrpxjcK9tbYlR+wouSorA3hmJZrWM3dzaSq+Z77XGV
 4aAp0JnLXB+AYtW6GXdQWtQA5ScIHXHSmQym5cMWc27fBMzlPU4M6E5NT
 POIcPk7qM7axdsjdWORkY6bE0iUIzAjnd4Uns9rmn1IEEypDwylqefK/t
 6fddj7MVpk21pXC1kWIOnG7jIXAWBq1UxpnhLC3XYMrWJ2F3BRXkoXPU4
 LI8W1OZJcOrTQxFkQGfcUyWyxjDqwjrSUUlIpHQJ/99JmdZfJfgAoMx16
 p4ZnF91tZeX6MXUt4JomtIUcsoKeHQ5Xfm7t+8pPUJXKAuvzhisYfOs8z A==;
X-CSE-ConnectionGUID: 1IDC7CCdQpeaB5t8ue8/Bw==
X-CSE-MsgGUID: oYopjtolTn2PsVW3E+vD0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79510227"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79510227"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:00 -0700
X-CSE-ConnectionGUID: +9lp+y7rSAGIjru0KoQyRQ==
X-CSE-MsgGUID: QWernfZkTSm0j+xE5q83EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164406541"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 16:01:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZs1HwwPngXqFQ28UC63Vj+7rEm1zOyRPo9egRZ5GQIaPJzgJmXrnDpjI4Z03HQ54/cxCJno5Ld9Lh/HYXoagb87TdXdkZrHCUqpgceza5dKo6/8X3sHDyyxc72k9y0PqJCwfh6SxiBWKV2HinjvAdICB5DOa3YzRj3u5JatQaPBNrp/dRatrmnkC/089GPTgfnr2ZDWIBN1hKZp8Fd8qCKw/zSSZ0mol9/uSes7Id15dUgp6SZAyNkdzXPCcSGqhEd1Z95GY2xQOg5ag+sAuaHl/Xs5pta2TKqWkVEzlwM706ZmeuioOxXBbu9KPP6gk5pe/wTzA+xl1JZpEobsPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Eom9eCyYK7zSn8g/o2zwe4NdOUXEoBtomeGmMp3Wqk=;
 b=QZAoxgZX3jZZz9ozQcswJqLWy8AN9oMmWslL0NHW9+aLCPatuaEIKOUEKQ7hqDKaxSbmJJgb2X+o2lMck7oaOJSafL3zPgUX+cTX3sWX4RDEEIeYb7DNFhOJpkAfe7f2lVGWumGTHcMKHsIIoGWOug8A00vwJRXCHMyHuM954UBKDHxjrkc2BGEJtI/JuP4dP4MCBQ5dXqu+rP/lhk4np62m1UUfNT5vRDZVljFQ7d92s5O0CijsBtKK0CfXddVdZdMpd1sVGU3xv4j8HkbU+y+l1mJsTFRuq3/j1kVpkRhskKvYt7G+UPWY6uYTyaQZvjBleL83jfICfAXmDPk4Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:01:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:01:56 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 2/9] drm/i915: Remove struct_mutex in i915_irq.c
Date: Thu, 7 Aug 2025 19:01:46 -0400
Message-ID: <20250807230146.128362-13-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0033.prod.exchangelabs.com (2603:10b6:a02:80::46)
 To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB6221:EE_
X-MS-Office365-Filtering-Correlation-Id: 21e5ad13-dcec-464e-330a-08ddd606681d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mS3mXym93Hny4KYd6M6Ey/HPuM/coMrd5tAPTxmZGBSJxscs2FVuVyx8swYK?=
 =?us-ascii?Q?aHZH4ZbSoFzDvpkso1o3nQPRXC5N34MVasqGwq6cvLu+VGiUghfC1Hm3I5dG?=
 =?us-ascii?Q?8BXNTCUfG8ZBID/VNwQlEvPsy25hsFUE0PlRjCRIAMBbWZ7DY+qFpLb50Dds?=
 =?us-ascii?Q?7Aac1gMuSWyWKw4MB22C6fI4ilioxvDbP9GLhrptwHSXLqqn/ItqZlJZUhii?=
 =?us-ascii?Q?tWvtIH4q9zlvkj+HlezTcCsr0xRCJ0RXNGyHgAPW5HHmjY7i0qvrS/FvoFCh?=
 =?us-ascii?Q?+1rn/+xB0fh2/s+d27vtLPZzkEsNvc2XXUcu3SLnKAS5Y89IibQ2/EZ1/Wyp?=
 =?us-ascii?Q?XXaZucsOj26GKxM4dG3xo3iCSaIpM/Ju7vR9IqqwKXBplKfAYMW4DrQn/+qF?=
 =?us-ascii?Q?YVTl9/HMXiabZxpgcK9Kib1tWOcUcTvMXmgP/jPyZgk34v0LbHnbTmSlmd7N?=
 =?us-ascii?Q?kRCJL8A+laZBOoZwxMDlePo06+4gVLxOHYqWtSdNb9ZbLI9NOYsSOw9DcuMW?=
 =?us-ascii?Q?ye0zr6Z3vdcUegr5qOp6bFId8gLy3I6RttkaFhGfuGJhI+2S2/BoAzelP+GC?=
 =?us-ascii?Q?y5dqT43L5QRis7Iu9433Z99nfgSSWr1Ly0gGyLBjTuLHZtsYFZ6qUCnE/lyj?=
 =?us-ascii?Q?rJgpsjm/7Ziz8PpMcDQv4JyRbTNZwAtWFW4RnXMAEYrBX2xTCNNhCvkURTkE?=
 =?us-ascii?Q?AjtPvdZ9nWJ/rRZNjfERXcUvClD04p91mqE63d/3004SWBOSgt+fUrH+gam9?=
 =?us-ascii?Q?hvL5rfHciFBTTmZHcNp99Qo+JLuELxAOr6vY/aWcfQsffEGSuuabAlD3E5UX?=
 =?us-ascii?Q?O+IKGeagjiyT5tVMkVWyHv9BztpfiBsZk4R2F7F+iH9qFcCmRL09I9j9pZZD?=
 =?us-ascii?Q?FuH+B1Egb/i+d1tf1ZNYCogIyEq7aSAQwKlUJfZkxlM7cJRBY97XwbDVHQIb?=
 =?us-ascii?Q?QFPQBmSFmaWuYzF6DRdiqttf+zqAuuaJpCNuGn/ViSQ3fyUJGErIABIS6S2C?=
 =?us-ascii?Q?GvywfmJYAE9TNbbZ/TEO70of2Io46BMCW6OLK9ftvxmnagZhujcqb0LaXIpy?=
 =?us-ascii?Q?sTjY9k0JcULx/kVYDDVqU7cw5YyTCdHSZpL4tw/2//fLL+6JoFGMUqdHHjNj?=
 =?us-ascii?Q?J0qNJh+4UvzDZcVUX1joaCHjNH35YhAD+frs2d8WAXVBbiIDKsA6BpH461++?=
 =?us-ascii?Q?3FH4KPDBFhiRny+p3ICuDZ3IQHHpuzJsFTz3VA/ySyG796fOTe2WAT5jJUkd?=
 =?us-ascii?Q?GRXXNVOghSloXT86HBAuS8amrVYJo95VbrvEVASrJDLPXaE82aLgzAfPeQMp?=
 =?us-ascii?Q?dzfm+KaxDAFjWoolvRVc+2r3pBUxC/92pHBwkqEJRSXmQ1Z8IN4nrwZUqoaB?=
 =?us-ascii?Q?TC60gstCgjEu7oHQ6cqFxRkyxRme+E2BVwTSjdBDOF17yzi4mv5weGH5B93O?=
 =?us-ascii?Q?A/T6Xj1Y/g4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WAzxLd8AP1YyW0K3FvtlAzGzCV90AtDoEhqIPvU3Tr8EVl7A1MVbHqs9AfGA?=
 =?us-ascii?Q?EeRWUUd0uxWiri48aF+6TweII2kWHI16W6ivkaBrZTalanaUeieJheYBSUKa?=
 =?us-ascii?Q?gacFvdsgs5yG5l5Wo8h0BfOdBU9z0bh4mJyB97HzOL3X1LJCyh9NE+Wck+Hb?=
 =?us-ascii?Q?tFwqEx5lGKNexnrMNutTUO91aI+l4YhoLN5JAdZSbvF9c68DsLUmmTtLg9x5?=
 =?us-ascii?Q?FY8cl+emiEv4C263Kq9bWXLcmwuyxbYTH8bbTzMjMv3FTZM3O7hz6LWsiQkS?=
 =?us-ascii?Q?SRFD1l8UZkCzePs1ro/I/t+qQDQZS92A3NXapZ2zUm9IMSXt4MN9Gz8HYpC6?=
 =?us-ascii?Q?gzUM4bCaVgVY9iPj632O4pNClUB3UaQkv+LHpERx1F+lkuZB3EMhRgTmElwY?=
 =?us-ascii?Q?8UnYo/A6Gp/qS3mAqKEjpKojHOUZ45Sva2Z8QHdH+Gxjd08qwO83Vpou6udT?=
 =?us-ascii?Q?ueQgvltXevPca1dEafK+qwEkKQYMQ3je4qNGD45Dqy/zrsKVwjWpH8VsVCde?=
 =?us-ascii?Q?kfoh0d4T+UxI3lf7Y7RFV/bVetNGfq8GVwRxZ02Xboc4UJ9nItZI2KcBaBaX?=
 =?us-ascii?Q?JUDY72o+hLlpyzYBt7ZDVoOS6xk19PXXet6FkOn1gPVh8o6VGLKlB3I8jf6g?=
 =?us-ascii?Q?HNSv6voqplqhKRDo3C2BDZxWkgua8GQIp24Yfhgu3giLui8Ggb2DlphsiBp/?=
 =?us-ascii?Q?2dCQY+wxg6hf8Op7nf0ag6uBfOVWFRdqAlH3POUZTJzx18TdLEqD0/QUt/RU?=
 =?us-ascii?Q?AoGXzFrUo5DYbcpPaKq+QsYq8w4baPW+xDT+HncHGfb6/ck4gis3zOYsf25I?=
 =?us-ascii?Q?Q3Sa7UmYfjQTstWtr2D69Hcw4Tgss31uIlDEMEateWCXk+85dcywCPTiDUTG?=
 =?us-ascii?Q?PHnsFhpKpruvPUd8USxV7q0F/ohOiCZqXG3YcVIfYW91Fq0DUCTin8c9oju8?=
 =?us-ascii?Q?hFpfiMNBnuNrvf8VDnSs7QvwO9c2JTc6uydpcIRiazFgqw3BcUcV6XfTCV56?=
 =?us-ascii?Q?qgQwgj3Rya/KsLapHR0t93FtiEfOF6Y8F/eo9TtLinfYSYuZeDoOOkHM096e?=
 =?us-ascii?Q?u8I2M6DBjdSnOxOwO6IMGWZhTa+BaIBQufxTP1w3wRI68ZoonaUeLQRkGJD/?=
 =?us-ascii?Q?yKP+7TAOfPM6ZzbZsbSorYLM2SJBKbwOdkW+pcJewjhYRtH5shE8ugf0LMfv?=
 =?us-ascii?Q?XcYl9eTRAnF5w5/YUoScy0g7MJKFkb+JylmJmy9wXBI5xfejY224rAkGDG0C?=
 =?us-ascii?Q?pYRc8t0y4h2AY9E1mRsjXGCiE8gDW1ic1l0JbE1LhgxAHDisWZMiGC54nMwq?=
 =?us-ascii?Q?7iLf2tEt6geaA2+OoszrUd9rBsSfKkJ9deVw8xcDDh2PWd9KGPsGePlJtGwe?=
 =?us-ascii?Q?A/vCmNAafieVoNIpHT1J8Gdi5WIfNS/rbXITkIfIXBfSGwLb8SOutKiVx+7f?=
 =?us-ascii?Q?W6tnYa22gvdN2mPt5v2I9zwdYXMpVS1f6rw6z+AehjYPgHc+lNoZGoCJmIbN?=
 =?us-ascii?Q?/pinEIf3xUYUgydMpZm1Hs704fdB/61z5j1EfnWAUjiGmwVD+YpVdjCKMn2Y?=
 =?us-ascii?Q?zysceV3EdKVDMuXuOxalRWBS4tKho2/TSGhSmxhO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e5ad13-dcec-464e-330a-08ddd606681d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:01:56.3576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z71afms5EO/k/jvPIvWJkMyoY4HXDktWsHMdCdkLU2Jf2dccdHpiuorDdEtRcBi/QurZ8KPiPn7xq2gmQ+uIuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

Remove struct_mutex from ivb_parity_work() function.

The ivb_parity_work runs in a workqueue so it cannot race with itself.

Also, it is not protecting anything with the other remaining usage of
struct_mutex.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index cdfb09464134..83b08dacd194 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -163,11 +163,6 @@ static void ivb_parity_work(struct work_struct *work)
 	u32 misccpctl;
 	u8 slice = 0;
 
-	/* We must turn off DOP level clock gating to access the L3 registers.
-	 * In order to prevent a get/put style interface, acquire struct mutex
-	 * any time we access those registers.
-	 */
-	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -225,7 +220,6 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
-- 
2.50.1

