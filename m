Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4BAAE981B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DDC10E86F;
	Thu, 26 Jun 2025 08:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEzancmF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A49F10E875;
 Thu, 26 Jun 2025 08:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926092; x=1782462092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ebbhpPyVlYwTp2JA/1pJfyZPTN6Zy1tko08ADkav5dw=;
 b=mEzancmFqz/7rMJ6DYcLnTGurorTrWzqByo3PCdlFipAEoHF8Prz1ows
 BMODs+QMAwQeSwCRscyu8RQJIRW+AIGrTF5UrU8WTAslJyb6jg3peSdnI
 jCUHuY7Bb0hxRKz4fmq2FOO6VWxuIM82V9N5tWOm/K9FUSYm2LM0fCvcT
 45Rcw+UllwTYGEwe82PgUnBy3t6bmBctgp0bCVtCt6jWwZjhKSqusJSGn
 AixgtJVbQvkWTOcxtA4ZmMH6X6dWdAtJZtX7ihFYfk89jOq7bVNqdoWEK
 limxvwXQHOQPMVYdcrPSAcjcNHic9Jjzh1aFRvxGnA35wCIQirCeWpc8u g==;
X-CSE-ConnectionGUID: tiw075snTpqx6AXWhfDKTw==
X-CSE-MsgGUID: ZSDUgKtESqKDHVdvEfHKRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019440"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019440"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:31 -0700
X-CSE-ConnectionGUID: XRZNA7K1T0OUnB3K9nMXwA==
X-CSE-MsgGUID: vwIuKDKVQdiFuu1EELznGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070168"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zdd62hHlPCT8CpE8ons3mN6dASiggPxNtPehAC6KeK+CQXJBh+5hzXB9xA1dkh7UbqArfPxmBsFP4OC6DEY+qoiUM1EL01QFZ5ruHir/i7bb50BJw8zFxTzvS4r12ZIzS8Hriw+yK7k3dgM9Iz0YY+JshgSnpPIxY/XYAChvL3q3tGRvxUdTTFpx1qmSyncbvHheXGhNNj8aAPY5BeyWa1Doe75kdVWbUwULOdGWP+TgRE6lhZC6yrcmbFX6LqOYCijs2+Hhop7F24GGZhPesBpSwRJycA5o7SoDUIxPshPqy3L2zdrE+oGbu9zfrMn4nrPxWiS7t+/z8nWEwXhEkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uViQVZdb0xJ+DbnqIgCuWap/zwLnXTMrsHkegKQEGZk=;
 b=sWOMmlwSwyqK2+LxDV7TjiWAle2Z7aX/pTl1Lp/wqqaA7zm1YQ6NEDuTxwjfvkAifUU5YVw4yo+16SUGuh4zko4q7uuEDg7u0vFYOV9LY/z38Ap29y6uA3/D6HG+u5X+8eeQgDTKy2kN4v+PL3aZwtubBSWEK+Abaz2yIec0XavLPHAmkbeo5ZMAkLySXRNfXKQ5o7zTdRqsSqfdiRGgZ61NJvJMUFiplpCO7fkK+TifLmmd2IkcIoVieyBKOCCpKkabFkalIMrgNmfUFndoH5sUGCkXd1Wql6GTi2ENzzCvm0EirDdi6wCCVlhO7WF/u7UcT8tRtBUjMrcTrsd9pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6928.namprd11.prod.outlook.com (2603:10b6:510:224::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Thu, 26 Jun
 2025 08:21:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 19/20] drm/i915/dp: Ack only the handled device service IRQs
Date: Thu, 26 Jun 2025 11:20:52 +0300
Message-ID: <20250626082053.219514-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6928:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fb8ef43-9aa1-4146-68e5-08ddb48a72b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mf9qtV7HvM0CUWIy2GXcz1+zFlI1H7U+fw9giouyWluCUcmJRcd/G/eNy+b4?=
 =?us-ascii?Q?tglo/yTzPHDENODfqb/lFGfCqCpHhHicu3f9bGS1VpeM7JLOPLyqPD9lDnbz?=
 =?us-ascii?Q?xQoZJjtGLoOPwJvbZB9V9oZ1Q0w4RLqgqaIqFH8rTKhHhCGbZ1zK/JBcEtBF?=
 =?us-ascii?Q?fc0ov++l+kVqz0ulTMqV7I3vBN86PCsJy+3wyMjD3OKUyS+f4APM+8+Gr6zu?=
 =?us-ascii?Q?aD1LfBwp6x62zGVFaLiJU0o7AnBE6kj7/NF3yhkl297ZerlmWYtIp+Md/BeW?=
 =?us-ascii?Q?zPeYIGy3ww0+nWMUiYpj3+MiWYX+q0N5Ie8lkdR6C1AWhqMVKRoUgleZsF7n?=
 =?us-ascii?Q?Nt1n4SZXepFAO/BM6dD6+clYdqjNfOQj0/Q8w7VIuIYQoLvpO7vj9+k5SeAk?=
 =?us-ascii?Q?HbKZ2KbUYxFYl0RlEB1uklqS8CUO6rxyq1utc3nm0fz5BhEmL/G5AmKNt72B?=
 =?us-ascii?Q?CF2NeG9XTVOGHW3FxVdoVg8Pb9Dh0AnIrdtC5C/YEC9YpAdyC+i557xiEksC?=
 =?us-ascii?Q?kA6J/7UEwSMrz302Guc3XsKx2SmrQep891zI3i8L6Q2DQu1dV3IQOOito/6L?=
 =?us-ascii?Q?toeSH+EETnsMxCVONbZBzDuefxOuIL9WySOiFzOa6ZyI/2aYM3DXtR9MLDZ7?=
 =?us-ascii?Q?NDe1evFRMOdKWVoj3ZqaQLRLgkDsiumyffE5qJYPyNkVSve4QoDaZYCbOjef?=
 =?us-ascii?Q?j60Cq7/I3+qyGeyr4wrT0G3rSeaAYNm7p8NTvZIzj5EGZrQ4G3I6+oqWhAnu?=
 =?us-ascii?Q?7IAG+fE1HBb8kSEPk7Cuy8/DtXkpfk16nyOIoFotsyLTDbujbZGWZNty/Xsg?=
 =?us-ascii?Q?nxV6BVoGSuyRnhr7yXOKLdioygmjgiLXoveaC13kyr8hzopqIOClZCbRmf1J?=
 =?us-ascii?Q?oBosYRDc9EcQjL0dc7q5Nfi66+1/rOsJJpzAOC9ZbYFzMl/LGUO/f1/XpB5H?=
 =?us-ascii?Q?bwxfpzRWnuWz83lOMOGEidj1jcEXs9bJj4oo5qZO570449310e8bz4tDH6wq?=
 =?us-ascii?Q?xe2i8Wz9ouDgPFNJI5qAXFZDt0IrvnnZADFU/dR2tZfkKrYkzN1hrNo2DWOW?=
 =?us-ascii?Q?mIw7e44NjylzhXaLup6npD9GRsCHV8qcyhTPW38GE6Lp9JivY5uTzOfFAd71?=
 =?us-ascii?Q?wSVDqcgltlF1cCBhbS8JZo652J/1k6Py+WDe3hYHQk0WS8c6QNkNst7zkgjv?=
 =?us-ascii?Q?EaJTlnc7ofqQ73SyxpG9u3L1H7I/JS31gtGvSHlefwOYYQAfw4I8gonqgeTy?=
 =?us-ascii?Q?sKbVM0nlqE7Acd1KWVBrAsDuWyvcgsWIq/LTTgS7OLeZ6MlQ+AikidR1/aJz?=
 =?us-ascii?Q?z2h8gCJ1ULZ/GuUFO4oDsqXYsYs1BKNvGz+0LAKjqGkJOqIpLQNxOZZIenn9?=
 =?us-ascii?Q?PLukrw2siXDI0KOB5DGY61XMNz+/mQQZJst9xAO0ibjiq7sapQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Njv8KNrUBJefKi3zRsSbNC/nG4PYkU2JgBaFTZ59KKebXnOdShu0K2NE+sZi?=
 =?us-ascii?Q?6W3ajDQ+Q2HGBpd6Blhyqf7NWzoteQgTGhSzslN1/SrZKQdO2kqJUaZEt9Zd?=
 =?us-ascii?Q?UAM+b9MqjtO8M5wzRi8RGBz9O0ajw6c1Y+lUHQIzaHm2tLJGa16vCBFRQ+G5?=
 =?us-ascii?Q?5L9skIh/uhzqOpGUy2UDxMccmXzksHzPZcJqyLq87TL8Nz8BeElQljzaYDoW?=
 =?us-ascii?Q?GEoqZSKzIvZDYkw7cLAi9onL/iim0YKUQj33LkblVPwgS9aphmFfHvveq3aS?=
 =?us-ascii?Q?Lb++D6lDGioxbslKe8G3kdJYFHnFnW/R2vCgAgGEcGv1dU7jvCjLSfR1ugKR?=
 =?us-ascii?Q?9OKHMtd+k3+/yZ6n/jGhNI0mjhIFayIPwn1uxXSRWpmVcxNIl/iKGu7wFO9W?=
 =?us-ascii?Q?wWMm9IaOWvPBAwFP7bm/kKq61E9yKFiIDcCvtxiIur3rv1lkZk7LL22rZbHy?=
 =?us-ascii?Q?rrR5VsAwB3fDs8E6UaynKlLxg/bMi0Bar/lOpe90YgXHuu9qJ7kw8KaXlNOK?=
 =?us-ascii?Q?XFIiak2ud3ORkS/zCQJbwZGHai1BseiA1P4bqRBA2/dXjtvDgoy+MknLTyIQ?=
 =?us-ascii?Q?cDop9AEco5gTaHSfB9CYqKS0q2ia0owULTatcARD7s0HMLtrZ8C2qLzuNBBO?=
 =?us-ascii?Q?WS6a9LQp2Bw0CXUlH0Mn5bFMtc4ypSm2T1nI77jHzI/YIvd9jMiVru8BUSnT?=
 =?us-ascii?Q?E5xBJqEBCgPlfI/N0xkm0dFraRwQfjUcXD4sAhIpxl0KSwhkOB8XwukQu62b?=
 =?us-ascii?Q?8ZsYPaPoM+rB3rYO8B3g9yLHN09qq0jw2wOx/on3j5lraIO6x5qVsYuXBbTB?=
 =?us-ascii?Q?gjanmmsqBmyBeJp4dHbyEmL3lsNN4zC0zv/xeLo+YD8lYU30f7hQ/N9xC86x?=
 =?us-ascii?Q?VuEPqGN3ShLktdcRhc3kMkQDLjdu/xO4AWIVPMhbGsr8HRHgDVY+BOHmYDgj?=
 =?us-ascii?Q?XyZWMLcyBVzxymVxu8D5fFx/NZJnKXtAz7FmoBzDLWcOdClDu5Q0XsEtTwU5?=
 =?us-ascii?Q?ljzUGB2GEv0jlY/aidjXReaXw8JORcQ+/LO8lNf40kQW0sRYCxnyZJiC1BOY?=
 =?us-ascii?Q?eLhEmpe9158vn6nZKN6amJOW+HVengYbdg8S4ExX6ASC3muKE/qniZyTp+ki?=
 =?us-ascii?Q?Uc45e8wJGV5XcM32FarNDi1exKfY54ptsIcRQSOD91JPVehU4e6/+wO6a3sF?=
 =?us-ascii?Q?VzNW5JPrydb1VwKSTK9yzxhIbvxrgL++HKybnfbKfYUe+J2Q+0X1CUed0iko?=
 =?us-ascii?Q?lykr70eJXCaiUdaLX292lEB4nH9CAoRJHzDoop7irRhlCMqDJkgCVIi3GDC4?=
 =?us-ascii?Q?vf2DpcdZqWncIoiHXO9d9i95uxsU8P/XLhJUCDeHVRdbpEFGGqDkczdnkyzz?=
 =?us-ascii?Q?S+6s5MaH/3kDVc0m4Lj2nLofyHZL9dRF1yYlbS6fwbDK8JonSjTsxtZcogXQ?=
 =?us-ascii?Q?WbZT1gNMhfFuvJQKudQPUa/7AzqxYvRv/7aOq1oSQWHwbQW4l0QeDMpp8HpF?=
 =?us-ascii?Q?fMGOB0/1L39vsZFtImNkn2fbAry0FjWNjPj4Z9fYHNml44gYfBrLFYm3RCeY?=
 =?us-ascii?Q?AGAMjrCZc/FKrI1ajwHsNc1ZphetUfveJYTqTNtV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fb8ef43-9aa1-4146-68e5-08ddb48a72b9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:28.1362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CC22s10EKlcubRBnlkhmhvMvEprxwSHx5kmCq9cjSkQlifr8+KOKBEpHOxy5O1tVhaXAcQ4nTJYpX5XiQCyW6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6928
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

From: Imre Deak <imre.deak@gmail.com>

Only those IRQs should be acked that are handled, however for SST all
IRQs triggered by the sink are acked. This can be a problem for flags
that are reserved/reading zero at a given moment, but become used for
some purpose - with a side-effect if set - in a future DPCD revision.

Fix the above by acking only those device service IRQs that will be
handled. While at it add asserts that only the known/acked device
service IRQs are handled both in the MST and SST case.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 52249fa5c8a6d..6f67fac9724e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4537,6 +4537,14 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
 }
 
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_REQUEST | \
+						 DP_CP_IRQ | \
+						 DP_SINK_SPECIFIC_IRQ)
+
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
+						 DP_DOWN_REP_MSG_RDY | \
+						 DP_UP_REQ_MSG_RDY)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -4628,6 +4636,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    encoder->base.base.id, encoder->base.name,
 		    esi);
 
+	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+
 	if (mem_is_zero(&esi[1], 3))
 		return true;
 
@@ -5172,6 +5182,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (mem_is_zero(ack, sizeof(ack)))
 			break;
 
+		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
 
@@ -5456,6 +5468,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
+	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST);
+
 	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
 
-- 
2.44.2

