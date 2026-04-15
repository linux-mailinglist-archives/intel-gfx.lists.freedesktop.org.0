Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACmVKNr932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2E407F04
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CB410E78C;
	Wed, 15 Apr 2026 21:06:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Orj12KLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011048.outbound.protection.outlook.com [52.101.52.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1454C10E787;
 Wed, 15 Apr 2026 21:06:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HbZ/9oePzT686zu0ndJN0dV9/xMelg6JDh9K2H/+ClxOn60qJ0zDQrKE3/wSIzTNEQ+637cLTQ1gqW54sf1tFKA2DquAgGfneWG+qjm2B2fM0qXk/DViVz0I9sJubhRsp5/JzrY5IVlr/RfRFdi9Z7u0CE/uWu1Rukmxdt1991JifoMPZqJ8TbSWzWTMJv1mo3f0j7OUlY7yiIuacreNFPuKho1DDEzT0uwDNa6eMm/iU2NcoLT4NFFt1etExwKyKvJHUCbZkibCB8rqJsXzl+fN9qsGHqYfuzqBW7CF0Q7sMj1dlKcwvRLhz1skukttimyQyn88AMHUuQ1D3EgKKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDKT305DM876+J3kvoCdYriCUTsWO7o/IEJAbbipJY0=;
 b=OY19SRcIj8uuKE5akBJbJneRsKo5jDS7WF1l3p9wto9kGC0tNq3VSQExgAZLeP2MmHdHOfXCi3eDuxP0dkFKBA+xp/VQ5P4yHkttXPMOTFR3rbop2n4u5ZTcvLp8xzrtKBZbTJEWrOfLLDFcd1zzBwijfuzT6WwvJJZsWAZ9zSYo5Lr0idMiGDg7pmO+sjzFAdSFG5ll2AVK+wPSdJQl/2s6ONGbaFv22YPYScIoPtjCDLb43eqg6p10is3h8Ypir8yLciAybSYZgxC7IFyJSxJm3KkoK7qAxxaKMPXlkX0fFPoFahnf+rQBtONMZy5Mpwqkkc531+bphBob0zMmXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDKT305DM876+J3kvoCdYriCUTsWO7o/IEJAbbipJY0=;
 b=Orj12KLW49V4VEMmgPYG/bTCcKrKqxczeMb7hm3Hs9nhctbHqyMj39ytGoPMmyR3ErkaH/rnbpFOCVoVDVTJTv3nNO79zbd8xbXPETwLac0C/lpPhKiq3g61pN+DYQSZN8yiayRMmljKf/p8rtwjvsc15MWGe/ulGxOziZKt/bY2iRC3H3UvLmCOgpfjAfbbiXcUljZ1eplhhjamslwueb0/PoIlk2tJYpUUYidihwGjMhB9rot3JVE+Q7Z4wC2lTpAo2v455BPMglW1W/LgzKaPUSXVvNiNirNcNei9Ru5y6yxKVf6m9UJW3XrDgPJeLsbx1Q4W6Ap7NUSa2PAtQw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:16 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:16 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v11 09/20] gpu: nova-core: mm: Add common types for all page
 table formats
Date: Wed, 15 Apr 2026 17:05:36 -0400
Message-Id: <20260415210548.3776595-9-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5P221CA0081.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:930:9::15) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: b96ee716-0818-436e-0514-08de9b32d561
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: OrKAfLUls2ZA30yWu/o7GbzHUnJVG8626Pq3hwYmw3o/JmnPLjBlv/lRDhNmUi+HQCTU8Etetwu+JWlqDWw8iOWAHrMPuz/aN6K2zZipli3YGiQlY9yfXGs+Dayue23Bk6hw1cZYh9HXQN2sqbkOEUkbj8+DC7O9CnavZnlLZl4pYIhUNsRvHqxzN/HwTqB7JgiXru/0EqtxUGsTihmsqHhg0omOcpEx+A4hKoJ5vHHynIskFNlURTIw1B8gqDqAi5D/IbfEAuYGh//3edoby+x355OkoXcI2tg0tJrECNKJRXeRTAoYsrLkYcXSw7RlJhV3t5Gr3gOsTIqz5CcndwHBUU7XNzBeictWdlZ4UpuzTN7zdUDKNDlWuPA8Eb1W7ZoEmWv1mOtKaPnNVIeJKy2JvbmXQI0npmMzXWMv7+gbL11RMveZsjjUmg926FehRt1V/l4Lon7EAck/powoHcbWj02prbrNTTF6yrfNZZB/8mRywgOATn9KBLrTZvwNNbJIf9m2WtzUeK0EhpdmJLuUv3AvImaBnUTzjgqMmY5wjvJxXk3UJdsVt6LU8W1tE9HzTKSpxeeZ7ffM+hGJcKhzjs8m7+SwfOP250EgJUK7f7XF3DZu+l9xMx7pf8Wm8nrfwd/nudOuZQdCiFqI2xx2HRavEwfq9PC6cO1hCW1LzvJOFB13kUIsSL5RbGKLgGGC9yz3enqTEcNOfGoJtCSz+MR5OFp5a92bZ+jDIO0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NI4XxbvEauDthxpgv35O1zAHAfHyvVSAeuOevXlpMhalHdnGfhrMPCK60/06?=
 =?us-ascii?Q?bttXyOgQpbOjHerMECUpr24yrO94ZtS5VYBm+V5vKuNrJmhcNj7zY1tmNa2n?=
 =?us-ascii?Q?YLJoKNmzELuyiN8t1u08a74Fs0ogsS9ieWer7HzJNxH5MTBYYY53HIL+KAGA?=
 =?us-ascii?Q?shmBbyRDXiqZ2I95D4pcLc4pvBK/bKLRT8KjpJ0mev7EdGlKuewGuctm6IUT?=
 =?us-ascii?Q?Qs8lkLDI78jeeiwCvu9hhmviweI5GsenusPXCMuebCW+fd3AKBg5bqfQ9A3k?=
 =?us-ascii?Q?wqu+LR5LZmoMkgxgT1GqV1ZloRRq4CVoxbleYjKtB5xsO/3SqZtU6jy0Qz/j?=
 =?us-ascii?Q?+PXT/zpiuExXrnUNPrPuRJjWDpiSK/erz1daGZHKmlGrRKlLxnFgroUwbVbP?=
 =?us-ascii?Q?y86TmY1zqs1azyI7ig3k2KaXTc45cJG6sorLLc9SDE08d9WUhhWuM+2BZFMA?=
 =?us-ascii?Q?sZDUgRba6N4XA5MPFXfKjiWVn1JRMo5CRksSisMCH/XYN87zgrNWisHpm9Te?=
 =?us-ascii?Q?goOXChUCh/KawzyakRXN5f/wTd2wAAnjllhWfHRcZQbM0En6CTEjHCu2Tz6e?=
 =?us-ascii?Q?mqe0V4qM0DVe5Tk/EfTDHB4eMBpKNqxMl6GnQF3RhPc4VlAykElFqVjvFz0f?=
 =?us-ascii?Q?YBp1Cop2UFtmkHJf+m8EBESib0ZQnLo2tmiybpy9vtNomQQ33CmgNHnQ2tuu?=
 =?us-ascii?Q?Nuwdyveb9vrAa1ue+uQ6xO6QCV17Uy31zkjucjEXYmAM6FAS0vDVSMUdZU5A?=
 =?us-ascii?Q?G5yog8U15lrrrdxBqLySW7ZOp4gzR30Gu9dVscEh07uMP6CLoDFwQCFZwwlz?=
 =?us-ascii?Q?IFSmAPQoyzIpNi4u59KRIYFaKMKpukKgBVgEjcEXIsGydR6HBGIAJ2ZsQ/JU?=
 =?us-ascii?Q?9Scrn7hVdJUNwSp1+PnOgq7OgBNluydXglHC9W/36SLNePuHPGp7a8oIvD3q?=
 =?us-ascii?Q?t3lHaweqoT/0WOljhWE1lswgzOtqiwTuIVnyC9L+XXEneku9eJiWKHDrPIJh?=
 =?us-ascii?Q?lf5CjINDObs/96KBQLgRXCRoDCJb/p6y1IlAT4uuQ9G3jvNlg6d6N3QXlu0i?=
 =?us-ascii?Q?MrHjSwduAXEzgetkJL32d0pljVOEC/VybUVMmRTHL7o36aiWKVRkezHywFK6?=
 =?us-ascii?Q?3rmPZE/A9My+u+/L6DbcthTV2qp8YGX8W+HlEbSShu0c5tAp5kdvqS6eRTzK?=
 =?us-ascii?Q?6cWiaMPGyvTAvdmwzpMxzoPNxfPF2IxTb8wop5Jp3+FrmoPBi1zxdaYrAHbS?=
 =?us-ascii?Q?3X3I7rYVN2Jy+ogSqY4qIP612eQ8sU3oOhYmSM3XcsN+5diktO2BYFbIHzdj?=
 =?us-ascii?Q?yQIbloJUFtFejerHf2IAUCc1UPSAABMXP0b8ckedbzrXw3OjhnK0tlPNPbgZ?=
 =?us-ascii?Q?TyBgI6LP1o00DpQFn2x2fknpABHiAL/uv6T2olJ9LLRulVGXs05Sck/iyqiL?=
 =?us-ascii?Q?3Znqz/jfetMNUeV85Vi3VqP5H/0SZVUS6j4R1FGbHalNI5oZafIwkHOsHI+N?=
 =?us-ascii?Q?2dMz2F9OLm7TQkY0/sdIvukqmHpjeh3B8DplpUlLmXvX6jKpCgKiFKOoB0OK?=
 =?us-ascii?Q?KyO2iMTeCe1aTtAhXs90QyrgUzknGmBsRmSc8Dl8jlNRz3+saXNbzPEsqXTR?=
 =?us-ascii?Q?VhFRDAVumq0caozUgJzehK/XNGK6eChyk5VEb94lSYZuoAlVzZYNQWUI3knF?=
 =?us-ascii?Q?Lz6BLv4IFvTLoIg7oSOXFmxj/Nd9BISieI3nTIBAe33jRws1dPGZOPij61sH?=
 =?us-ascii?Q?5I1VNRVshw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b96ee716-0818-436e-0514-08de9b32d561
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:16.5288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xI3lHjhAz9ZNQcUmac0TsLTJJ6/l7Ds4Fkc6dA8I/XPMV0sK5kAki4it2XdSy+geyr/JTZ7qE/qTD6vyJjCCiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9177
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	RCPT_COUNT_GT_50(0.00)[55];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.988];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 2DC2E407F04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add common page table types shared between MMU v2 and v3. These types
are hardware-agnostic and used by both MMU versions.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs           |   1 +
 drivers/gpu/nova-core/mm/pagetable.rs | 157 ++++++++++++++++++++++++++
 2 files changed, 158 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index fa92540bb006..af398e94dd16 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -24,6 +24,7 @@ fn from(pfn: Pfn) -> Self {
     };
 }
 
+pub(super) mod pagetable;
 pub(crate) mod pramin;
 pub(super) mod tlb;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
new file mode 100644
index 000000000000..637ff43ea83a
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Common page table types shared between MMU v2 and v3.
+//!
+//! This module provides foundational types used by both MMU versions:
+//! - Page table level hierarchy
+//! - Memory aperture types for PDEs and PTEs
+
+#![expect(dead_code)]
+
+use kernel::num::Bounded;
+
+use crate::gpu::Architecture;
+
+/// Extracts the page table index at a given level from a virtual address.
+pub(super) trait VaLevelIndex {
+    /// Return the page table index at `level` for this virtual address.
+    fn level_index(&self, level: u64) -> u64;
+}
+
+/// MMU version enumeration.
+#[derive(Debug, Clone, Copy, PartialEq, Eq)]
+pub(crate) enum MmuVersion {
+    /// MMU v2 for Turing/Ampere/Ada.
+    V2,
+    /// MMU v3 for Hopper and later.
+    V3,
+}
+
+impl From<Architecture> for MmuVersion {
+    fn from(arch: Architecture) -> Self {
+        match arch {
+            Architecture::Turing | Architecture::Ampere | Architecture::Ada => Self::V2,
+            // In the future, uncomment the following to support V3.
+            // _ => Self::V3,
+        }
+    }
+}
+
+/// Page Table Level hierarchy for MMU v2/v3.
+#[derive(Debug, Clone, Copy, PartialEq, Eq)]
+pub(super) enum PageTableLevel {
+    /// Level 0 - Page Directory Base (root).
+    Pdb,
+    /// Level 1 - Intermediate page directory.
+    L1,
+    /// Level 2 - Intermediate page directory.
+    L2,
+    /// Level 3 - Intermediate page directory or dual PDE (version-dependent).
+    L3,
+    /// Level 4 - PTE level for v2, intermediate page directory for v3.
+    L4,
+    /// Level 5 - PTE level used for MMU v3 only.
+    L5,
+}
+
+impl PageTableLevel {
+    /// Number of entries per page table (512 for 4KB pages).
+    pub(super) const ENTRIES_PER_TABLE: usize = 512;
+
+    /// Get the next level in the hierarchy.
+    pub(super) const fn next(&self) -> Option<PageTableLevel> {
+        match self {
+            Self::Pdb => Some(Self::L1),
+            Self::L1 => Some(Self::L2),
+            Self::L2 => Some(Self::L3),
+            Self::L3 => Some(Self::L4),
+            Self::L4 => Some(Self::L5),
+            Self::L5 => None,
+        }
+    }
+
+    /// Convert level to index.
+    pub(super) const fn as_index(&self) -> u64 {
+        match self {
+            Self::Pdb => 0,
+            Self::L1 => 1,
+            Self::L2 => 2,
+            Self::L3 => 3,
+            Self::L4 => 4,
+            Self::L5 => 5,
+        }
+    }
+}
+
+/// Memory aperture for Page Table Entries (`PTE`s).
+///
+/// Determines which memory region the `PTE` points to.
+#[repr(u8)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(super) enum AperturePte {
+    /// Local video memory (VRAM).
+    #[default]
+    VideoMemory = 0,
+    /// Peer GPU's video memory.
+    PeerMemory = 1,
+    /// System memory with cache coherence.
+    SystemCoherent = 2,
+    /// System memory without cache coherence.
+    SystemNonCoherent = 3,
+}
+
+// TODO[FPRI]: Replace with `#[derive(FromPrimitive)]` when available.
+impl From<Bounded<u64, 2>> for AperturePte {
+    fn from(val: Bounded<u64, 2>) -> Self {
+        match *val {
+            0 => Self::VideoMemory,
+            1 => Self::PeerMemory,
+            2 => Self::SystemCoherent,
+            3 => Self::SystemNonCoherent,
+            _ => Self::VideoMemory,
+        }
+    }
+}
+
+// TODO[FPRI]: Replace with `#[derive(ToPrimitive)]` when available.
+impl From<AperturePte> for Bounded<u64, 2> {
+    fn from(val: AperturePte) -> Self {
+        Bounded::from_expr(val as u64 & 0x3)
+    }
+}
+
+/// Memory aperture for Page Directory Entries (`PDE`s).
+///
+/// Note: For `PDE`s, `Invalid` (0) means the entry is not valid.
+#[repr(u8)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(super) enum AperturePde {
+    /// Invalid/unused entry.
+    #[default]
+    Invalid = 0,
+    /// Page table is in video memory.
+    VideoMemory = 1,
+    /// Page table is in system memory with coherence.
+    SystemCoherent = 2,
+    /// Page table is in system memory without coherence.
+    SystemNonCoherent = 3,
+}
+
+// TODO[FPRI]: Replace with `#[derive(FromPrimitive)]` when available.
+impl From<Bounded<u64, 2>> for AperturePde {
+    fn from(val: Bounded<u64, 2>) -> Self {
+        match *val {
+            1 => Self::VideoMemory,
+            2 => Self::SystemCoherent,
+            3 => Self::SystemNonCoherent,
+            _ => Self::Invalid,
+        }
+    }
+}
+
+// TODO[FPRI]: Replace with `#[derive(ToPrimitive)]` when available.
+impl From<AperturePde> for Bounded<u64, 2> {
+    fn from(val: AperturePde) -> Self {
+        Bounded::from_expr(val as u64 & 0x3)
+    }
+}
-- 
2.34.1

