Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pmnzGjLpM2qZIAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 14:48:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E56A0291
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 14:48:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=KMoJLLIH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D1210F2D0;
	Thu, 18 Jun 2026 12:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013002.outbound.protection.outlook.com
 [40.93.201.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6004910F2D0;
 Thu, 18 Jun 2026 12:48:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rPUiWcYx26172xUxC3HJHA8ZkAQRQFPoDd5E9wzKUDrPAYihzQYplra6xbs3/kTxvY77GsgW75L4lrEgOyB9vAmn/Ml3Cpwmstlf1VD5JvKfSf547jKQyAANig8qw9GpZZH4aa8G6sKhI2vy3LII4LyHjKHGE3ari6RzynqIFIZu/KTw8xCM8mKQAOhw8K2D2idBHghFLn/YMa6v+gFdyk4OyZ32uu04lw+AGCk9V6+o5wFE96NR5WyskieB8vyCwpj+Ft4Z1Uy5w8AsS4/B11AlBaw3MZUeHNbsA+tqzzpDm8jwjYLTHW//RgwxuFooXF2z0BMAcnW6k5Xs3bSxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=htx3joIIIkWmWt1xbrlHuV5szXDaHPexdKwo2ESHm/4=;
 b=cTUm7LjFH3LycydHUoBH0Erkq6WUJFjpwI/SXRb5wwp/NrK8WL/pm2jcKzijGOEQtNjZtX6AT74k2zh8VUjFxU+er/KBgSlxg4zDtoHISTQzol7B+Jhrs/DbIKQXXbHZ09D7RKc3jlAkR6sm66azXhQi26SDGywf5g7TfJAa7PRBNIgNFoT0ni4vEgSVjNGrR0fvr9oPHdjxpdsIC0je3BBluKs1o3uk4TvgnQFq6YhpN/zYJbFZz/g6oCKsCJJxrVgpzrzJhCZRi3C8j9wlJRC5H2sVDxwYnXjKVVE1XshDd4m6QZSLU9mR2Mr64N/88ds6TbgZmLXmlIlo+QwdSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=htx3joIIIkWmWt1xbrlHuV5szXDaHPexdKwo2ESHm/4=;
 b=KMoJLLIHEQGs1wZ/VGS/cB0EI/6IDNM9nPTVYEHp2vUd49IOTEQbnUGUgakF4y37K2BXpHAsrBsda/gOLw6x4o3t7E1l+ATRzbmwjbAAv5lglaJ41h/LQDb4HqgMSm1+D0UUINJap1JjOrPSyvDJEePKGCJd+trfiztc7MVcXd4=
Received: from DS1PR05CA0006.namprd05.prod.outlook.com (2603:10b6:8:457::15)
 by MN0PR12MB6343.namprd12.prod.outlook.com (2603:10b6:208:3c0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.19; Thu, 18 Jun
 2026 12:48:42 +0000
Received: from DS1PEPF00017091.namprd03.prod.outlook.com
 (2603:10b6:8:457:cafe::2) by DS1PR05CA0006.outlook.office365.com
 (2603:10b6:8:457::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.13 via Frontend Transport; Thu,
 18 Jun 2026 12:48:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 DS1PEPF00017091.mail.protection.outlook.com (10.167.17.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Thu, 18 Jun 2026 12:48:42 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Thu, 18 Jun
 2026 07:48:39 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>, =?UTF-8?q?Timur=20Krist=C3=B3f?=
 <timur.kristof@gmail.com>, John Olender <john.olender@gmail.com>,
 <stable@vger.kernel.org>
Subject: [PATCH] gpu/buddy: bail out of try_harder when alignment cannot be
 honoured
Date: Thu, 18 Jun 2026 18:17:55 +0530
Message-ID: <20260618124755.2751205-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF00017091:EE_|MN0PR12MB6343:EE_
X-MS-Office365-Filtering-Correlation-Id: 29e92cc2-48c8-4327-72b5-08decd37ed79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|376014|23010399003|36860700016|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: CGaMCzYzD0FNze89BnvEqQv3A4+yOn71luNjz2NPJyYlxyfN0c5NV437IGCeN277q0FPmy/3S0Qt6caDxgXZmtgI8M0qbg9F8J7oDo81vuXLNL0+UzXnYAwgPjF0FhpAXt0wRQBTurE/NQf3LqMsQ/ktcUqFb2KGuZ9wpbGy8Y1JH4NwabzVxrUDYahxWXx3ibFsIjaVBYqsIYkDWcC5WINn3Hn2gtdfJCl7b5U+5AeP8A+qw9Wn8x24fY5Ocm4edwe1Hy9GjZEixvuymJcZ8lcAshtDuAq88v0Rx1yAgCwmosgLxI9n1yGZiuaW2f01WbfYK7jx5/AGoPrWZXNSdHxqndV1sc505TGXdwLIWIT6CD1oD0HJDKrbAJ3Dy+AW34AJlBQa7K36stNv+jN17ZTCjZ2/nB2GQn/meKz7aiUneNweo/DuGeRagNeJaSBabuwrU+6/J/W4HcHoROyJfn01LvPhOXsJ0tBab1voPM4z1iZaSIPL9l8aFMSsoeIZdiIVllQYRJbWQgblWOU5yDl9Z3LoAIlTNt4+c7XlVzrZzzxL4Vyic0uAQ1S9n1pozJEQdHGOIqAhpz+/NJF506s0vZ0euik6ETyPnccFhRFJmXcWcJ9hAwwqLZxUxnVNGe3kGtrJZ12tvEbOsUesyYEInfziOrfQav/KZ3qrppwufAe/wYrJsfa2+ZK8aRcTUL0OQyJBnl+EfLGSFjdpLZ56it7IHwE77Z3mZTyRqqs=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(376014)(23010399003)(36860700016)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: tWIiSUhuYq8aMT5o5CFtTklS1ycRWyX6AMPSU5SK/ZPECGgtj4eRtmEF70oAXxUwS3SwFu2yl/JugkMKQqSipJ3E/lG6V8x6SMHNSFQNsa6kiIbwk1IpCBhcxk5mDXcHNXutdn61uv9a3rnUXxq8MUejA8pcYqLS8milOleGidykpIy9yShAqbXlb1gwo4hwSgYD+rYRa2ijLCz77D5g961ImWhXIn+KZgS5wZfMysCtWIv6ySV8rAWbSLhGc3ErfDja7c9r2bbGiH0zOEC9zGYdd0P0roebe8wYwDA+S4eRXxxi8RM7CEeqt6j1guNVDFChoxioBQiubbVkqdLOwnmnoRo9g7lJTUeio8acU+A3msP4b68eIdxTAUCdsi8xee273OCN+L/BhsLRboRSz0cdl2orepJwM+j22OrTodch6gMMH+qLIanHB15gVi7y
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 12:48:42.3795 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e92cc2-48c8-4327-72b5-08decd37ed79
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF00017091.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6343
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[Arunpravin.PaneerSelvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D45E56A0291

The try_harder contiguous fallback could return a range whose start
offset did not match the caller's min_block_size. Check each candidate
against the requested alignment and reject the allocation when no
candidate satisfies it, instead of handing back a misaligned range.

Suggested-by: Christian König <christian.koenig@amd.com>
Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: Timur Kristóf <timur.kristof@gmail.com>
Cc: John Olender <john.olender@gmail.com>
Cc: stable@vger.kernel.org
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/buddy.c | 33 +++++++++++++++++++++------------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
index dc81fe0301ce..28ed3250ac57 100644
--- a/drivers/gpu/buddy.c
+++ b/drivers/gpu/buddy.c
@@ -1127,13 +1127,11 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 	struct gpu_buddy_block *block;
 	unsigned int tree, order;
 	LIST_HEAD(blocks_lhs);
-	unsigned long pages;
 	u64 modify_size;
 	int err;
 
 	modify_size = rounddown_pow_of_two(size);
-	pages = modify_size >> ilog2(mm->chunk_size);
-	order = fls(pages) - 1;
+	order = ilog2(modify_size) - ilog2(mm->chunk_size);
 	if (order == 0)
 		return -ENOSPC;
 
@@ -1149,31 +1147,42 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 		while (iter) {
 			block = rbtree_get_free_block(iter);
 
-			/* Allocate blocks traversing RHS */
 			rhs_offset = gpu_buddy_block_offset(block);
+
+			/* Allocate blocks traversing RHS */
 			err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
 						       &filled, blocks);
-			if (!err || err != -ENOSPC)
+			if (err && err != -ENOSPC)
 				return err;
+			if (!err && IS_ALIGNED(rhs_offset, min_block_size))
+				return 0;
+			if (!err)
+				goto next;
 
-			lhs_size = max((size - filled), min_block_size);
-			if (!IS_ALIGNED(lhs_size, min_block_size))
-				lhs_size = round_up(lhs_size, min_block_size);
+			lhs_size = round_up(max((size - filled), min_block_size),
+					    min_block_size);
+
+			if (lhs_size > rhs_offset)
+				goto next;
 
 			/* Allocate blocks traversing LHS */
-			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
+			lhs_offset = rhs_offset - lhs_size;
+
+			if (!IS_ALIGNED(lhs_offset, min_block_size))
+				goto next;
+
 			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
 						       NULL, &blocks_lhs);
 			if (!err) {
 				list_splice(&blocks_lhs, blocks);
 				return 0;
-			} else if (err != -ENOSPC) {
+			}
+			if (err != -ENOSPC) {
 				gpu_buddy_free_list_internal(mm, blocks);
 				return err;
 			}
-			/* Free blocks for the next iteration */
+next:
 			gpu_buddy_free_list_internal(mm, blocks);
-
 			iter = rb_prev(iter);
 		}
 	}

base-commit: b9e2d5cdaab05c997be3a69d9b372d7676683e1b
-- 
2.34.1

