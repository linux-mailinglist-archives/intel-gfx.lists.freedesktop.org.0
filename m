Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OM/2DTMiQmol0wkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 09:43:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D473E6D71F8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 09:43:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=z2WmSo0d;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E6610E739;
	Mon, 29 Jun 2026 07:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012033.outbound.protection.outlook.com [40.107.209.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3958510E72D;
 Mon, 29 Jun 2026 07:43:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oyotn+Hy2/TdkjYUxyPmyt2m1V0L0VujpCiO7ZA3qHeHEQjqPh5q7WwpyUmz52l0YXqCkZyyRiDJPbTdq34EOx8xtgYCzt3eT9ELoBFXtZyVW4t/ttSQDMDVYqheuy+ig4Zd84IHCAvuPYgRph/Pw0MRP/2Xu0yLAmyNgOtnK+Fk3NSOGPpJAFTaDK+47MnADYaPs8aryd7YJyuOJbAnUCgnasbZGz02QwObCw9GhyUhyk8buGh3PvSFMVEccTfOVuOYPDMW5yUPAkxo7SJEnRa49GTCKMydpyDmtbBeldC1+OCCdOkUys3rCpo+Vug6uA6UKon/bvT/IM+9vanBnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGI/vVqlZHJz4JlzpwIrut/PT3weaDmCXgB/ZgDr4uA=;
 b=kjw8Q0XgeWRy7gEVWvKRrvFhTQN0HQfPMbVlYvN8JdmU5dj1GrU51P0wji0FZrcBphJzO5uRTXg6CK27pEZT/QRBTnIi0qfOworVN7un3m2gHlrTMCVxOPy+I1LYdJzwBJRkdrm5CDYGfslZ7Eifsr3c6yki+gJ1s8fGWtGhGIsAAkei3Y0o/sPNaZ4a4yLBHww7WDrDgvQQMalMppFFU1lIW/Fx67bGKWd1aBAq28XWzr5wyHKeYUtY0dqqJt38wBu43v+csEDNkbdAFfWucnB03fBdLXL9hKMCA3h9rr/0syQ1TesKtyT0vGwodWMKBqowYLMOq23P+3TJVCapTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eGI/vVqlZHJz4JlzpwIrut/PT3weaDmCXgB/ZgDr4uA=;
 b=z2WmSo0d3c7vPExjZm1/aE72ohZ+WSc6IggLzjOxg9rNesL9PW8r787JAc722fEaGCd51oCD/ITGdt2SiTV72WvuqqPg3Thjkf40xOwv98/slhpez79OiWtdz+YbUT/rSWEZUPeq8CJf3QEcRQU1l9p8l1OMZgeLv7Q1JwrbF/U=
Received: from CH0PR03CA0051.namprd03.prod.outlook.com (2603:10b6:610:b3::26)
 by MW4PR12MB6898.namprd12.prod.outlook.com (2603:10b6:303:207::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 07:43:36 +0000
Received: from CH1PEPF0000AD7B.namprd04.prod.outlook.com
 (2603:10b6:610:b3:cafe::ab) by CH0PR03CA0051.outlook.office365.com
 (2603:10b6:610:b3::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 07:43:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CH1PEPF0000AD7B.mail.protection.outlook.com (10.167.244.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 07:43:36 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Mon, 29 Jun
 2026 02:43:32 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>, =?UTF-8?q?Timur=20Krist=C3=B3f?=
 <timur.kristof@gmail.com>, John Olender <john.olender@gmail.com>,
 <stable@vger.kernel.org>
Subject: [PATCH v2] gpu/buddy: bail out of try_harder when alignment cannot be
 honoured
Date: Mon, 29 Jun 2026 13:13:11 +0530
Message-ID: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD7B:EE_|MW4PR12MB6898:EE_
X-MS-Office365-Filtering-Correlation-Id: e23fe91c-890b-4e4d-a886-08ded5b220b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|82310400026|36860700016|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: ji9fu/TSOMhQzh5ZuLSwejICE5xkb6SrcR7lluwuNTNNijHFn302K1hBhpbQWDO2WJ9AO33hlQ+9IPrYYBvxKDwvfmESUYRWL78W8PRWXrF9GIisQyGBKXucLj4hm0wejZO3h0mfMF6MFkstqJlbtn8XDIf+E2FVTGZz6bDYxxGvU1UQ0tCYhhFDGL4DrEtrx6sOVaOxGAerUUppxj12xWblrDEEhAWg6JjG7Zl6iI5MrUqazMiACeweiqODJojaDzc7/zOqO3YzvHqeLCQccEIt9CuyaWYD+61iRJtvuT71QITvPY4ojjg4imwTlLJqCyOH2CXSerpeugy7b45igbC4MjJ629TPkVorU2/IIjcpfSfS5IFYmEfCPaRSWWLlIPNZv5N527Yg4A3dQj0T8OKR7QviLr5CJdhWwp9Lu5UAcwwllny0Hy4IXFS8SN7WIV/Ab+sgjQMCLqBxfbjiHbvTSeDx+cjSNNNxwHsGFfKHMusT2Cl6JkSDOhnIuyxq/sSA9sjvhOhwskrFyiMFhzvfJxCwK0Zgd+20y8Ed/tpDpz/gdrTEP6R3zGO8bIF2dRdcVdHIFCZA3eV54XwvwJTg3EwHxQ66tW5ZB+kbVg2VY45GAJyboeYKifuPEfHy8x6GIw4iv7nudXkUPaR/0QpkKATFg0jFe5SyGI3Ce3trQN1gef+NJAEZWVy7A2+jSWZEX+43qBXKATAk1dnang==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(82310400026)(36860700016)(18002099003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 3Qr12JGewYSbtEpcpOVuwNau5xyIsIs4wq3i/hM7V+ovrmJINrgXFtoAYLd+zb+ItqshqnbEF6meB0tqZHbUlyOpYaPEOwWlLL8v35htORzjaQ5jIdmSfTxwqWYVTo3CWsfjZEzbsYwvB6+7pYWtEGqolJxE4rGMwnoigK/B2Jebo7+UjZFGLhInT8mfufR7mHSYpBEO/zEDfHoXMjbicu/bjxNe4623iOh54ykOVeXe/p0qQV9AZJdgobANIhp5R+rUh5G++TelWck6ckkm8htlCVVs8oooh3wNBT5kCzPwyb+LZ+WRf8sVmcwUOoTNJXJd13MqTqmdJrh8lR4JLLAVl9xl1aM7jM+F9Mddh7CwSOojz8ZWSHadXkOv6NDzxp0b5WloeSnzGrkvIc+ZSIQEMcp99caWYAytwz+0HKPS0wF56JT80pTi1Pa6Q94O
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 07:43:36.2528 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e23fe91c-890b-4e4d-a886-08ded5b220b4
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH1PEPF0000AD7B.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6898
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D473E6D71F8

The try_harder contiguous fallback could return a range whose start
offset did not match the caller's min_block_size. When a candidate's
start is misaligned, realign it: free the misaligned run and reallocate
exactly @size at the next lower min_block_size boundary. This keeps the
returned size unchanged with no surplus to trim, and rejects the request
only when no aligned candidate fits.

v2: align misaligned candidates down to min_block_size instead of
    bailing out, for both the RHS and LHS paths (Matthew).

Suggested-by: Christian König <christian.koenig@amd.com>
Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: Timur Kristóf <timur.kristof@gmail.com>
Cc: John Olender <john.olender@gmail.com>
Cc: stable@vger.kernel.org
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/buddy.c | 63 +++++++++++++++++++++++++++++++--------------
 1 file changed, 44 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
index dc81fe0301ce..3c73ae87f3c5 100644
--- a/drivers/gpu/buddy.c
+++ b/drivers/gpu/buddy.c
@@ -1118,22 +1118,30 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
 			     blocks, total_allocated_on_err);
 }
 
+static int __alloc_contig_aligned_retry(struct gpu_buddy *mm,
+					u64 unaligned_offset,
+					u64 size,
+					u64 min_block_size,
+					struct list_head *blocks)
+{
+	u64 aligned_offset = round_down(unaligned_offset, min_block_size);
+
+	return __gpu_buddy_alloc_range(mm, aligned_offset, size, NULL, blocks);
+}
+
 static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 				     u64 size,
 				     u64 min_block_size,
 				     struct list_head *blocks)
 {
-	u64 rhs_offset, lhs_offset, lhs_size, filled;
+	u64 rhs_offset, lhs_offset, filled;
 	struct gpu_buddy_block *block;
 	unsigned int tree, order;
-	LIST_HEAD(blocks_lhs);
-	unsigned long pages;
 	u64 modify_size;
 	int err;
 
 	modify_size = rounddown_pow_of_two(size);
-	pages = modify_size >> ilog2(mm->chunk_size);
-	order = fls(pages) - 1;
+	order = ilog2(modify_size) - ilog2(mm->chunk_size);
 	if (order == 0)
 		return -ENOSPC;
 
@@ -1149,31 +1157,48 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
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
+			if (!err) {
+				/* Allocate the unaligned RHS offset using round_down */
+				gpu_buddy_free_list_internal(mm, blocks);
+				err = __alloc_contig_aligned_retry(mm, rhs_offset,
+								   size,
+								   min_block_size,
+								   blocks);
+				if (!err)
+					return 0;
+				if (err != -ENOSPC) {
+					gpu_buddy_free_list_internal(mm, blocks);
+					return err;
+				}
+				goto next;
+			}
 
-			lhs_size = max((size - filled), min_block_size);
-			if (!IS_ALIGNED(lhs_size, min_block_size))
-				lhs_size = round_up(lhs_size, min_block_size);
+			if (size - filled > rhs_offset)
+				goto next;
 
-			/* Allocate blocks traversing LHS */
-			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
-			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
-						       NULL, &blocks_lhs);
-			if (!err) {
-				list_splice(&blocks_lhs, blocks);
+			lhs_offset = rhs_offset - (size - filled);
+
+			/* Allocate the unaligned LHS offset using round_down */
+			gpu_buddy_free_list_internal(mm, blocks);
+			err = __alloc_contig_aligned_retry(mm, lhs_offset, size,
+							   min_block_size, blocks);
+			if (!err)
 				return 0;
-			} else if (err != -ENOSPC) {
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

base-commit: 6648301c5bb2ef23f0fb15bcb01d21ff66f36799
-- 
2.34.1

