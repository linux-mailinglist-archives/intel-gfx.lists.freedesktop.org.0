Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1DCD695D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE8210E6E2;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfCVmGtY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9636410E6FF;
 Mon, 22 Dec 2025 15:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417798; x=1797953798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=WROS9Yg2NqJshRuwhiD+o9wHFrbEfzWPgKeO9SSj0J0=;
 b=lfCVmGtYf0rrAIA4m6Z3npGpVkkwPIYEp6thCYiS8SYzt3d23oHOwoa0
 30mtvHYprC7ZKdHOQSFpKK/le/m5EigxUk7DUs5eSS7CfC6MQAcOibp3L
 KEeLFQUZgb+kuK02DW0rrLgpdSMgqeqi0F5ZzH0e1oUIdQJTfyP2f39iu
 Gx0HWEozqCKSUjhUCnswVGnVLgrscRtFZ8s+e0/ZRcUyErUMRLniJTKeg
 722WP5fiTk4qoWStySELtlzSgIPT5lheJ/OG0Vo+vUXOv9iEe90wikhH+
 FydzWWuLwdWbwCONB52HkKVFlRVrkqTumONrA6z/tj6qhzvg5gid02Qps Q==;
X-CSE-ConnectionGUID: VB8bDaOZQT2Ngrq0zFBxXA==
X-CSE-MsgGUID: xTSerTi3QU6hyDVt67f+iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79726299"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79726299"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:24 -0800
X-CSE-ConnectionGUID: 3BCuFXUOQW6PmumRe57D7A==
X-CSE-MsgGUID: uGeRXyrzQJaudQ9WyK0IBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200053262"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:23 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6aFb3WQBbZoiJ523USL/Ui5tR8aDUr3PHNemBDPBtliT4gRXlVqOYEH+bwh+G0w5sJ1S+oKOG1Dfhf/WNg0KzwuC1qN9k7JWHiSsRv8rSb49kbwVOJURhXILNJy6dHNQU4OF8ouciBfq4htsh67VeX27wDZ2c0k/teoKG4NLGTY2e8OmF/MpkxjM0eOCFB6cP9YV5enZsaadu5jgttJ2nKpunDZoMSyonOMMmjh3SWnPIaZHV4lWIs6VIKgGmq4sVkP2Q5FbaezLrX/sLXClXwsPd3aLrPZHdY2xfEINvnFUfZILH+2DptQTKFTUGx7u1TbGDFVHohzK6jLWiZH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pb8GdYkFMbocOBmietS2SPkDnso/tz+pacBxt/c+SFc=;
 b=cbUWdJhJk6ZqTd/vetIcdw3q0XV7+Cl6eb5PRj52g2hQLepDhmIOm1httM55IakHm/uHzSAr+ERfOpyIeaQmzS7Qv7zSahMc4JKeOKKFaLkQ/Ky3izcVKycqFQ2WPVlcfCZEcV6gMam6MV3RttHb+o2j0qc9MIIEHDa+McPkPnqr4EAHDugUlaFegSNmDGWhxRPKRIvtTp++eODRLwpBIx7IRAlfZxqz+bQn4nURHY39ExEhSp6rm4Iz4QAGfFNEH7E5m2In2NOPWJlLTh9j4MvZD+FpmMPv8KDQUOYq94Q8mrER8ZeiROSqw2KUd0t5mIpGw8pcoQXMq7FRvsVm4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 10/19] drm/i915/dp: Factor out compute_max_compressed_bpp_x16()
Date: Mon, 22 Dec 2025 17:35:38 +0200
Message-ID: <20251222153547.713360-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: 74dd5b5b-d3f3-4fa6-b072-08de416fdadc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vOTLL2aJE+ALUsI/lNOT1TrVMFLC2g85P9WHFjzIJcwuN00UqGjju1BEpBnH?=
 =?us-ascii?Q?bcmA27WiLsVRd6aSj8Jabhqqyjkhxtq/iqJIcFXt/oEaKNdnIX8WcoynBbWL?=
 =?us-ascii?Q?e3gXTLUI2RkjtVxJV0nN0heBax5tU4GJZIzMFUgR+QTdfwOLz2Mx32O38Xzc?=
 =?us-ascii?Q?chVA6gto7LiUmfDYooMdTIenpP92zP2tI3lwcUzMkfqk+q1t9/jfKYhicNTr?=
 =?us-ascii?Q?T/7lx71PtQMjzvoFjrOSpP7gEkpX0tGSvRipYm1In035++zXE/kqkFFXcrdf?=
 =?us-ascii?Q?QyzvB8r8ZfGj/aYtFIV0Rx1/FJpjfpqG1HIlcjW+d7x7l0ZVFYP9Dr4LlL2D?=
 =?us-ascii?Q?l/qOZfvOr6C/x+ubOziO0YeQ4yQ/eqPmmjUayJvFTvLMQET0LAyj/VByYV9/?=
 =?us-ascii?Q?jsu8LKpiVaVjUW9oKtH0zM78DcmwKxuBpc+OOTqacBqMgpUFkjA35mhpsxG+?=
 =?us-ascii?Q?eKI8LXhxqevug9fI8mTbnBpCE1s42ni+gsESdf38dkNHCSI/hM2N+Au3q8JJ?=
 =?us-ascii?Q?qvh9zj1MR5ginwTWB9RMvHWdTJ0x27aWWU3xUoX7JiBtRh3gwSsgE8Sdhhco?=
 =?us-ascii?Q?sQS95MZKhYnXd/vt3TFQP2xmIOe01iS80X4g7WcKeGrlewQl7tNT3oIgcdkq?=
 =?us-ascii?Q?nVWwNOeWb+HmMRUHDWw5XruWlmt0BzPxyg09QXIbUyKPyg328LUVPaefo8vp?=
 =?us-ascii?Q?39OUN5o95O00zFIhTUsMZ4z8cbhiJUKxvnt6kfnTFz0XuundxKaUTxmOwKND?=
 =?us-ascii?Q?3aZBGMFx0Nk7SG8wpiqoeuN+80M7ZZBNbZdO7+U162jBEQFnC1xrYxip7hus?=
 =?us-ascii?Q?dbOtF3XpPiyXQ2NyaXxW6iIIN1jO/gUCyzxLQBJPEUgofjJNTj5fIcUvdJx7?=
 =?us-ascii?Q?IuvVfS4RG+cOAkIc2ulGZWfveZnHUfh0YdR5Bm4FQI5gTkHTxGmEUQHkA4ci?=
 =?us-ascii?Q?NR4bAL3xa5F/CipC0IrCHs0wVUZj6ceq3Fzo6Ql/zJ/cNuxmy+ABCmv6IqLe?=
 =?us-ascii?Q?53OjzcPLHWSWZ+cLQvzPf6/O/vduiSUWMuKp8A2pveEMpn/DwmINWck26Hf2?=
 =?us-ascii?Q?rLvdQ/oZkedQ8og0QHmJyUGt5PnXfDxzri7yzPG5O8oQXRGs6bWWAy4gkBll?=
 =?us-ascii?Q?sN3M9XsXEck7BITQesyUturwOSLM1br/QlRw+pQp3cdqPTx+YW+p3Le0o/sz?=
 =?us-ascii?Q?ffQGKCerGxnOsvBS9zN3yywaeUJAZl5T0neHXv1jw8nw7/aiO5J01fpljkx1?=
 =?us-ascii?Q?k5FkJfQYZ5Vl1asmYoCHhsezYwOYOHkrmZiCXIpkbV3ca25D4IqKuRgiXgBA?=
 =?us-ascii?Q?NwrFuX8bRRYs1cEuQxvYLeLbTjVoDxowm2N/iRNPbjXEzzQ4tSpVZCYz1O+Z?=
 =?us-ascii?Q?+h0QG3U5DIUBbABrK6kfUKG6jPel9eOTNmxDEIbl1SM0RKPqwZ2vPfUKTq0N?=
 =?us-ascii?Q?97RRV9zcu+OdFx33xyRLlnYUwzWykmAB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?spx1tsEfth15Zis37WuweS12zFW6h2DURsqGXqa4URU/r3gkMB/FBCjtMJJo?=
 =?us-ascii?Q?ePaCyNblN+jIE0rYh49UQBYT3K2n2cL0bD+Ho/pQ5XiQd1KFFeW5wfhlStZx?=
 =?us-ascii?Q?WjeHGY9Mt6Sxbs+tYSRC90Lw6ECxROA36Dt8jHd/lO49G5YFsEWQr8Eh8Kwz?=
 =?us-ascii?Q?hQBv7pi4KiE8jrfMf3XLZvsThIsL/iCxX4i+C5UCmXoqPoi5UkxdF/3lOH+p?=
 =?us-ascii?Q?i4i989Y8eVt2swLpoDac+ENIRFjunz00aTQ6nL5gxMs484A9hDlMQLFDs1PD?=
 =?us-ascii?Q?W9rCtu670Siy54jZped81PSbZ8ttaQ3gDzSTYEUoK5LuB4I4eObTf1KE5f+3?=
 =?us-ascii?Q?FGg1QyxCBMOP5ITT62FgQr6EzjiRfe4449yBzEmgliuHgLqrOLM8hVdOrpXn?=
 =?us-ascii?Q?i0LoTXwqn1DbQK3iRxTmXVbsFd8KsV2g7JV8Y6InHn0XVM1pFvl3Uxk2aYMp?=
 =?us-ascii?Q?fgi2y8Usv+TopcA0ETYpkKkZv8tonFPERd/8bhPgeOgDyNhcwQiKFzF28Cgw?=
 =?us-ascii?Q?KxCPoKtj4ZIVkQEAJMwPW6BL3eo7+HBNDMgjMHnToQYmIoLsmKgXqPEl7NuL?=
 =?us-ascii?Q?iNw0PzdLq7NwaYgT9l6UWD2iM3nlkvQYfJIj0qwmquqCCIVP7Tg9Fdo+e0Gk?=
 =?us-ascii?Q?gZATsSOU1d+i6K/rBvLMthiAfGM7ff27TP48/WhQQywrzjQrVth6FN7M//K3?=
 =?us-ascii?Q?81ZdddRiTCi1x1QcJ0lglMruweSiowxryC4yXVn17NutD1Z238tQedML8i45?=
 =?us-ascii?Q?iSZ81+lbwdBEdnViho3p9ZXHPw2BooOHSEsY1rYJ/xsnpU9qEtPjbYlDFC4L?=
 =?us-ascii?Q?Rx2CGt7PgZHx8Wu4ezMCFDXe4mxJANQQl8mu21P+a5N3I0jaPB8ko2kqQhvd?=
 =?us-ascii?Q?HNs4b6shyN29VZlryFsq1NzD4WXhjeGhm9GPy+ielGBsU51KosJ3XSupCNBt?=
 =?us-ascii?Q?FyzdDQimmKjJDhBdkCO9a0k05EB6jCkLd7Et3d+dw+/gTxzgYjLNpT5wL0Qr?=
 =?us-ascii?Q?J2TNJj1PhtZKKFJM6DbBU8Xq4dBWu0xLtGj24qto77gK14PCTc91aoIJUoro?=
 =?us-ascii?Q?Ogccw0K7jgm8U5mgb5ZC/aVrS0nOt28OfFfclS7jBoBfDmmisT1Nt1a/km3E?=
 =?us-ascii?Q?3mMgymuPq6Up2NKV/jDOi0vaV4w75Tx9rO38u//eZwWDislPEfRTos4WDGA5?=
 =?us-ascii?Q?z/Uz6aAcPmW8HdAUq/euk1AS9SInlcCM1F+6UXcAVIrPllqEw+rso7R16X96?=
 =?us-ascii?Q?eXwQUkX0PrJqJaM066IUTddZOkmj+IYIsaSNO8N+xs6Ra6UHk+mKocamb9KQ?=
 =?us-ascii?Q?1XJt6jtjMoukVEuHsDJSjuz/B1hF1vkfD2gQgGTdhBMk0Ra/85m5oSZuNQa1?=
 =?us-ascii?Q?CjR++5s00tX3UXN0ndgztiT4619DVaLGJo4ISaQYUL8tSXMP4mnXRij9n9+N?=
 =?us-ascii?Q?VC0k+dg5XUL1hYgdtBiyH+Ck5WeVdGiW7qWFOvWQGhrhuW9dgSSPLEXdp9HS?=
 =?us-ascii?Q?d4F7j5oP7WuLM98pDOKrU0STJpGJXpc/x7dw2XQ/7baP/g/C1Bd6JVtai2YW?=
 =?us-ascii?Q?a+EuRFOof4vctw65vvTCONsP7Uk8nYVKqNiu4Ll4or52X3RN6lnp0maVFFAA?=
 =?us-ascii?Q?0iJuKGo/iKs4FtO+fhBnqtwe648eGV+lC7lsgKpfvfUAdCQaRrklMN5D0HKY?=
 =?us-ascii?Q?YvHLTpGwET1JJJmfsum+30e5ChjM2OnHAqSeQfgDZAJQSorcEtWpSEgE7beH?=
 =?us-ascii?Q?fuJ6wznU0bqHnLXNIfL1aI4wCx7HUHgXpbM7QZIKTBWo1hHbKgcFUTzGDM65?=
X-MS-Exchange-AntiSpam-MessageData-1: 3jCNup02cwda+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 74dd5b5b-d3f3-4fa6-b072-08de416fdadc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:20.4603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mRxWAvYDLbsneDV890j85ADMx9LBkoG5gCMvt4o36B9G161BtmlosYDToIpyCkApSGJMUJ4y50195GWhARyXIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Factor out compute_max_compressed_bpp_x16() also used during mode
validation in a follow-up change.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 82 +++++++++++++++----------
 1 file changed, 49 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8aeb61441322d..d1139d6582e10 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2663,6 +2663,48 @@ static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
 	return min_bpp_x16;
 }
 
+static int compute_max_compressed_bpp_x16(struct intel_connector *connector,
+					  int mode_clock, int mode_hdisplay,
+					  int num_joined_pipes,
+					  enum intel_output_format output_format,
+					  int pipe_max_bpp, int max_link_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int throughput_max_bpp_x16;
+	int joiner_max_bpp;
+
+	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+	joiner_max_bpp = get_max_compressed_bpp_with_joiner(display,
+							    mode_clock,
+							    mode_hdisplay,
+							    num_joined_pipes);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+								output_format,
+								pipe_max_bpp / 3);
+	dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
+	dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
+
+	max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
+
+	throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector,
+								  mode_clock);
+	if (throughput_max_bpp_x16 < max_link_bpp_x16) {
+		max_link_bpp_x16 = throughput_max_bpp_x16;
+
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+			    connector->base.base.id, connector->base.name,
+			    FXP_Q4_ARGS(max_link_bpp_x16));
+	}
+
+	max_link_bpp_x16 = align_max_compressed_bpp_x16(connector, output_format,
+							pipe_max_bpp, max_link_bpp_x16);
+
+	return max_link_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2692,43 +2734,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
-		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
-		int throughput_max_bpp_x16;
-		int joiner_max_bpp;
 		limits->link.min_bpp_x16 =
 			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
 
-		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-		joiner_max_bpp =
-			get_max_compressed_bpp_with_joiner(display,
-							   adjusted_mode->crtc_clock,
-							   adjusted_mode->hdisplay,
-							   intel_crtc_num_joined_pipes(crtc_state));
-		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-									crtc_state->output_format,
-									limits->pipe.max_bpp / 3);
-		dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
-		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
-
-		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
-
-		throughput_max_bpp_x16 =
-			dsc_throughput_quirk_max_bpp_x16(connector, adjusted_mode->crtc_clock);
-		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
-			max_link_bpp_x16 = throughput_max_bpp_x16;
-
-			drm_dbg_kms(display->drm,
-				    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
-				    crtc->base.base.id, crtc->base.name,
-				    connector->base.base.id, connector->base.name,
-				    FXP_Q4_ARGS(max_link_bpp_x16));
-		}
-
 		max_link_bpp_x16 =
-			align_max_compressed_bpp_x16(connector,
-						     crtc_state->output_format,
-						     limits->pipe.max_bpp,
-						     max_link_bpp_x16);
+			compute_max_compressed_bpp_x16(connector,
+						       adjusted_mode->crtc_clock,
+						       adjusted_mode->hdisplay,
+						       intel_crtc_num_joined_pipes(crtc_state),
+						       crtc_state->output_format,
+						       limits->pipe.max_bpp,
+						       max_link_bpp_x16);
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
-- 
2.49.1

