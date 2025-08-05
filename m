Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196EAB1AF64
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7831810E60A;
	Tue,  5 Aug 2025 07:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWvgXPZj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A6B10E608;
 Tue,  5 Aug 2025 07:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379447; x=1785915447;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=hmyB+vXG69d9Ycc8lhXGADiazr56mmE1YzQwza3pjQ4=;
 b=EWvgXPZj4tugaQRK0A/O8oSfej2FGI0hZ+RnwDjLPBOtp0RKgThnpHr1
 BljbUjE9CQ/mqZ4qjnQa4X/dwiZh/cOPnsbDVqQEzl/1CF7T7hsWNOLJ1
 Es7/hcELrTFOnLtOrdwDQz4QxiekM+e2YfC4mMIWHBhahODYsPoAgM5El
 gp2wtxqityQBIe/3dgM7FFkZEO0YfhVljpU1oVKGQOheraQ7X5PP9J9X0
 0RirfcwLqtqhtkAmJ763qu8lsJ0682nf8xbHGq2iHRJoJr+cHS0ZjYldT
 KJ9E3Wfs6bGFKiXLpGHxyc6n4JBWylvuVLlREqBBUT9owRdrMjBZAZNKp w==;
X-CSE-ConnectionGUID: iCmZWHynRXum02hpSRjd7A==
X-CSE-MsgGUID: O5+pmWxaSZyUb/+yAaSdog==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469680"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469680"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:26 -0700
X-CSE-ConnectionGUID: dOwMdvRVTIetLT0iggAMUQ==
X-CSE-MsgGUID: SLA2hY+FSYybAYXXY1z6XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080097"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qnSOfqRH9nKoZnsU6JGB5YRjxKzRYae8mTTzoE45R2DtSmZC/SWPyfxXE95MS9G5YXW0pFvBh7Kff6hziSt+BC2hMa2sFDHKMsjTodkPMrWf8Sxi4o8kyQYoGs7XOd4jIYnkjeRqhopJRkSGjfWXowY0W15VJB7owIVuAK9qkH5mCdm0XlnVBIjEPVP8ANmtwCREEOBv1OPt7SrylaV6nN7Sj/a/p7p4wKcW7GKvQliBQb0pwRrsfo+uJYgds5ejYuvqkx2DuoKa7om69Saum7lmXwfdrIOgsd2/4yDKIAO39mB4qwQjqedckg6oY8d/V7cmMhgCdySzh093D0mgbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVMYSzu7KZ0uXsqmxvuE0icZ4p8ppMNcqxAloAStf4E=;
 b=GGLTOWpflY2ljrFhi3jewsW8RksovROgMaDb/TYKFhVm1pbkz4eCxJYGFn3Ctpo9qO0uOJXYCN3bjRRCg/4H8slNo9ALiAubWs5F8UtdsXfIGP+dgMAi1ZrwBny55HLVGbk/nmeLv6oSQI4jPNJPgjfKl/duPWoZQGXHTafHjShAkx2wTEZx4kL0cqIbDnUnJOrLzOc3kseVwFMlGkcUGVL7AfCGfgq2wIGA898ROhjbfIapHo5XlngAMDDKN3E/vLUiRl8phEKdtuogcztFnG9rfSUOKsQ+3Y8i5LPZdX44OS7Nt4R5zEZmsO1gInSPawCMnMvui3CNKaRSnPg7gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 08/19] drm/i915/tc: Move asserting the power state after
 reading TCSS_DDI_STATUS
Date: Tue, 5 Aug 2025 10:36:49 +0300
Message-ID: <20250805073700.642107-9-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 8ff4d85a-74ac-4dea-6136-08ddd3f2eaab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o+GrSoX8GtICTgz9tuEU8BjW+5M+INlyN6IrR4z57Cmae40XoG5CxRcj/mV8?=
 =?us-ascii?Q?TzZKukbXYSOvAPh09+0+ztv0soUw6aeaQ2W3u4XCiQY/65LLmgaI6pVFxW0v?=
 =?us-ascii?Q?F3S+veQpAT8Q+hS3V2GFSCuH233lDJdk8RV0rcmQdKaJeF+UTQdjDGXrt27n?=
 =?us-ascii?Q?LOcru3r+lQapJMtlAO7neiyNSECpLzz3U1fQ1+8M18pxGj8ovqx2I6R8K/WF?=
 =?us-ascii?Q?rJf4goo0ATLKlJp862QGO/Z2GD5b8pM5eV2DXlP4i/HsbDZK8RBGs2GPb1eB?=
 =?us-ascii?Q?5kIlYjjGmNUXyNjC1VdvojWiEZc+Xp/JJbXbqjQwuQU2lJ8Mr8JbjTNvGWFe?=
 =?us-ascii?Q?2I4C0Pa6iu84i4wHav/b6XQtCuJCy8n4UlxYJxROwk83dkmZxFjlJTu3o3+E?=
 =?us-ascii?Q?/LGdp8E//Tby/zsnNnS4FoUo0uNvN3lEl9MADVTTgijt9cAk6zOA/F4TOrVm?=
 =?us-ascii?Q?Rwozgbx68GJB7q46FTngL7PoZZ7flGg3uw/zJwIlqYirqFngbXx1ddhbROd7?=
 =?us-ascii?Q?R3t9x4YylVEBEsWJdAUP+7jOq6MEMKqG0j/D54eHzYMifcjs3y/0MPSzhCsh?=
 =?us-ascii?Q?XcaGBoBlFRPyH5CCPIL1PvbQeQ8YXmewsIvpa3LNFs4rAcrdwa8GX3mpS61i?=
 =?us-ascii?Q?JmMbVIJZL2ks/SaWz7T5AO+HU7wVN+CKA9yoo661zuITGaabfyA+vD0E3CKA?=
 =?us-ascii?Q?3iBGnMD5SIaYXLR/IW8Q1P/4vCiiY3Jnipu7GBlCXpzMx1K5xuNdyngidJzl?=
 =?us-ascii?Q?uf0PpdTsEP1EZWgBqSESqZKDIg6Iyo9yctOrT35BZXds+x8M6HlFiAqmjMlF?=
 =?us-ascii?Q?7Y1+4xPUb8Jbx0H0fbMDTi60idgy+J9hKszU8b1L4as4vEdeAxMTj5+jeF/c?=
 =?us-ascii?Q?j2R2H/UY/m4oN209u6RM2ssesI5vN++8xT9EQou3uq1Bo/vbof0ifZSEzh/I?=
 =?us-ascii?Q?KZN5ABzjq46G6qxciMw3iwvGem1Pc4IcktaeT2hEvlLb17AlkQpdM4QWgym1?=
 =?us-ascii?Q?k0bPo4c51nIa23y6PBsvV9wamRDgnEKVK9QwSx0eUB+DYxMAex55hUtYfZPa?=
 =?us-ascii?Q?tJhbK9q6MuJyNOV9QPdcGeQIeDbn2FGTIPonBoJwJPvHOpuz0lVztjZ2BXcn?=
 =?us-ascii?Q?l0kFBeN27BpttVFHAiy9yP3IDWzosGnLc9Ar3SqF1HP0JWM5dNodTEKNLzt6?=
 =?us-ascii?Q?wDTkGDKMk3GF/rNstbpykn8/rjAZq/1BWgsSarZ1/KuuMLahuL8bIaf09W7A?=
 =?us-ascii?Q?XKqfmDZxrBnipdm2XYb7zjd7jWzz2x1GxBfjWmeZLWVQrLBODcg/nNHEMzoT?=
 =?us-ascii?Q?Ak3PYidNDIBIET9aDSzBUHjiktYrP5Pm7aPJvV5tBRaLGd9EM6bq/kx8F0Cd?=
 =?us-ascii?Q?y5K6c5RcvBxmvUKlzYn3Zk6Q4zBGrQJu/jnWOqESa3NpEMkn9SJzzQnnB8AZ?=
 =?us-ascii?Q?y9yMZczpRtw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EZ3dJ5BkMrUPZteQYTb/uISeAVspMBwGnxYbNubLDJPUkXlkYp2KQ02RzPA/?=
 =?us-ascii?Q?+CRCkomdaXCEu4ew9TxbBtPJHE82qAXvZ0dudQC+3Yd5liHSg3fUceVxdR0o?=
 =?us-ascii?Q?W7g/pht5/gCVKsDuIWvZhlXWasvz73A/g4d+IlwKUsGJdRdJGeau+0o20HE1?=
 =?us-ascii?Q?BrhNw1hF+kG/k57mSsjmh/k6fPDbCGVj/Ks5mrB8p0bCpzn7Z1KPT/KiEXa9?=
 =?us-ascii?Q?QNRx8tPGYJoioEHuqrsAILq/3BA/wIbKHXjhvcDqbBlWH1YGzXCllBkSLOJ4?=
 =?us-ascii?Q?dmM2KT1dT/GtjowkIdP6A9bxUjndl8D/LNK+NuzUrPRoB8eLIP/oMDjQMpiK?=
 =?us-ascii?Q?TlTSwdZtM2hMStoq6NB3bzWiumFnUdk5pOo9C7cHm6pdLko65Z5a7f05F9Vd?=
 =?us-ascii?Q?+tqcBZ5ZOzCf/LW8IdkmaxB0qnLT+7DMxda4UIw1QMcwjPLAXfJGKnHUo64z?=
 =?us-ascii?Q?8SydUYpA5ki9TdtTW2HVOHFf4r9JfiFRiESzVPgO5Maf+0X5k+/adyC5wTqE?=
 =?us-ascii?Q?26aQla7JR7V9FwiI3klvfQJyAQ/acBsgW7ZaitrfJXjR1fxQkdKbjradsiXt?=
 =?us-ascii?Q?vvwv85T6F+u1pcPAUrMdUTciMC2r5qsHzjxZ8tS0jikZU/iW5EuqrKy69Nig?=
 =?us-ascii?Q?tP4rwgI9xIVD69MudJKY9F3eFvNdEEODDwltMUjhjWmlCuBIKpDKF6ZBoC5+?=
 =?us-ascii?Q?9+m0R/hf6hndsagp3d9oSY75U2xdGjb58xUqXzBQaxv+n5qOMo8M3c79dH3u?=
 =?us-ascii?Q?ebFjPcrI273a1X4tbM5m0GBxZBeV7CEglzvA7Itb6JrT8X6JRm+3A7jExkiL?=
 =?us-ascii?Q?kn3ENguO8E+ybDv9WjDNnQLtwv7eh9bc74wz780rucU3gzoeDrrp5v1Cux1I?=
 =?us-ascii?Q?m4MsRpanEHZGRmLgSqpYQ1YZBvh8IngfgJIr8plcGs6yILL8rT+ksBGACmB+?=
 =?us-ascii?Q?ZPbryUBfAPGrK18Im8jcsbJ2PJW3cfYEclKjh/r60Tf4oRW/SogL2PePYvlG?=
 =?us-ascii?Q?Kewq8NC1bZ2uuy5HNpts2lS8z9uipEetmvoHQeBpIRZL3/rsY9CjO69tIvgZ?=
 =?us-ascii?Q?aPCeX7jVpuGxnalzFVdRUo9+VvSxI40hacB1CHQEC8ypzhRGa2eiczV0R4++?=
 =?us-ascii?Q?XTKKrFJ+jAPQ1y1e40H9+JwMW2q3WtqjJPEzSIzVGbtm2awvR3QKh6Gen4Y3?=
 =?us-ascii?Q?E8a+M3surxuRUPrM1nvgw7DtxBZt7jzzaf37EP2KpkHY5QD5GICicY/M87IC?=
 =?us-ascii?Q?mUAfEHp3nnG7oov/t18djOYhzmx6iEW4M7st7ZlwNr36XabzuW8WNQf4Y4Fv?=
 =?us-ascii?Q?/lhSTqJ3s12zbtN3tqoH48UpPYUHSGfh0wc992H1ivXCTjSb95O0DE2dr/hL?=
 =?us-ascii?Q?6oXF/iBlZyIfxDOn1XGlfgr059JOO5lC/MO4vBBkz5LDIKGeZ9d0LcCtf2Li?=
 =?us-ascii?Q?X/UQ/KhQihpSyylLEjl3wbjQ0fnex1coOV0AwNUjzZBuV1AemYE5bwhbK3gF?=
 =?us-ascii?Q?hYjSMTSp0X64tM6MgmjogYY8OhPtWeSSSAFkO2UqXgsLIuqoO+ZNC1ft4Dn3?=
 =?us-ascii?Q?gEO70C3+HIu51XTPI5eArJqAJhZ2JzsY79EGIHT18ZhXJwhjOnyYy3medktD?=
 =?us-ascii?Q?0HYCoTuVbIuOiOOwRtJ0aaa5YdkXNPxStZDclpj9+EiP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff4d85a-74ac-4dea-6136-08ddd3f2eaab
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:23.5065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0wV1kbkExrgamhs4hIyIK116iA1sXCte2RGKdMu5AQX9uCy2Eox8zExwtBZ9SzFptAAIAJpT0OKKxgqeKYEyBg==
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

Move asserting the expected TC cold power state and the read out
register value right after reading the TCSS_DDI_STATUS register,
similarly to how this is done with the other PORT_TX_DFLEXDPSP and
PORT_TX_DFLEXPA1 PHY registers.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 4bd827c2187f5..de9129b65d34f 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -303,12 +303,16 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	intel_wakeref_t wakeref;
 	u32 val, pin_assignment;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		val = intel_de_read(display, TCSS_DDI_STATUS(tc_port));
 
+	drm_WARN_ON(display->drm, val == 0xffffffff);
+	assert_tc_cold_blocked(tc);
+
 	pin_assignment =
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
 
@@ -375,8 +379,6 @@ static int get_max_lane_count(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
-	assert_tc_cold_blocked(tc);
-
 	if (DISPLAY_VER(display) >= 20)
 		return lnl_tc_port_get_max_lane_count(dig_port);
 
-- 
2.49.1

