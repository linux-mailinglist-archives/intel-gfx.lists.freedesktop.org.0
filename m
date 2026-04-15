Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADuYJ9f932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522EF407F0B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1B810E78B;
	Wed, 15 Apr 2026 21:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="q+DEbJFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011056.outbound.protection.outlook.com [52.101.62.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F3C10E78B;
 Wed, 15 Apr 2026 21:06:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YyrCRSeI8t5fJMstDJYx4fJIQgQ//zTCO9bixg/vdzsH0VgPHCsSH1B49MsruJwuwjOze3tGMtSNmVWqFyWcKg2NAvB7YIrEmiAj0mSVGZveiCXeitqqWT4YnDgKLo93aj6+MKQFkkubFQKEo6k2o4I6ARQ7T59DTaEFlSX6MKY+O2rEalkDMF15xnYub63qPSTXjcv5ywVLBokyqJtYJOF3NhQVjZ27X3BAP84x1D7poPE+ok6LhJCx9RDHN/jZe5l7Im989rMmSJ3eSPp+SN0liY01UDVcLaWVxITI9NPYMwn5xQrrlvqvFXVHginXnEzUtVFb3bZG7n8a2bOmeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZKJNZMg6MAJQOFEzsQu9GE9KBBL3qqf4fOa3VCNwuw=;
 b=TX+kpz7zVeFGXouzMDUv/MUEVzpor0EfpY+zzp0+HlmPAQUr3obxtyqHPuClwmLzCtkPL/xnSuL4MeZOD+Fp9cygXkv8Ae8W361CLSjUiJLQ1LIhf73llN4hg8O/w30IFaQ/XXzc/MQ8nVDUKv4M16j0Q5gTmRNijhdNqErDF9orgoQrDCluoqyfRUA+Tjgiupecmp1YuMo4BU6pZM10wyIKrmfyrn06QxgLwErmqEw9nDzzaJMgN4fCKQsyq6f3u628EFG7iKgmy/d1X3gHxJEarBSGN+ahuo+/Ox3GgvTaqCWKqfF+q3jDKV/yRWH0rwgl9VESl2XnDWIA1L6mTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZKJNZMg6MAJQOFEzsQu9GE9KBBL3qqf4fOa3VCNwuw=;
 b=q+DEbJFZ6QiGprrKEXcocip6kD+HAPYx03bN/qzrDGKbbBsjBlI7JxKRqNI7fKGHnPIFQu59/SpJ5wcR49WsRTmw/XnsXEC+rshLTUU36X9MNPLvRYmdX1E6vtC9/8vPzgqVSghm/GF09jknkb97qfacSHk153cSztjl3Y04W4GWwu0m7RArpr+piAmXg75mvO1ma6IJopWPetKbvZUbY60NIF52KZt34T41m9S5ba5pig975glGrHScih0lvlp8EKgzxjn+KcwadcrK8A5/VVHCq5hzyOX8YPYOt8ZYQQ5NPXJQ3pT6iWrFa3KaN3PvgXWq4FHdxzSKB/B+I0xr5w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:19 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:19 +0000
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
Subject: [PATCH v11 10/20] gpu: nova-core: mm: Add MMU v2 page table types
Date: Wed, 15 Apr 2026 17:05:37 -0400
Message-Id: <20260415210548.3776595-10-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5P221CA0082.NAMP221.PROD.OUTLOOK.COM (2603:10b6:930:9::9)
 To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: fbc6310f-7ff3-4ea3-d3cb-08de9b32d6c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: OGgOMnGJET7U3b/9glVOUt5XzjJkWMqmJxJJEWr+ychZo/q/qWaQbMkD6+uLbmcEoPNnmZ63Qs8yXlcSn5ycVTvoHP4IB1/dy9LZvCknno0H05dAdAThUoo//vK5Z7SWOQsbi77JXEYgCBsGmHfGmnboKaGElswRrr96ykMIV3nVZulIfPzXD+xFS330jpKuLt58rNKfOfbJjXTKqNKXL2FmVHdm1L3OwwaSfGXjBTRRzBd0lPhD/vi7Sepr5yEH1Kb7BdcKmt90YbcjrSjIv9s2JRfc5wvPTQ+S8rbFc9+tUKqkRGWOWNZp2LRmpoMUf20m+0bMXtl0kzliCnFKOjDc7PGiFV2YPVMlEzoXz1FyLswmoqNsQOXk7skzIAT/diRCtxUxgH6mbScVoVlC5HhoOEx2eYYAzQIw00XB4MtYBsM3UQFlNB4xwDNIZIEaN9y3s14SFa902zdXs3XgaJOp/V4pmo8LkkMG7OKNWlihSmm/uBZRAsXZTOdAuTi7JZzPAA1eEA1lx1Y3vSN0NgALojYDgiJazT9R5Zt6Q7tEqg/eOm8CV7Drt5YOl1PbJG1g+N/CY36LS/977Xax83pZNePUaFBa/jMLZHfLbDTpaF1rlw11+rm7SwiUk6KV9FVmQVGs8XYwdyhEy+II30a6J5aFFsCdtkWtxC665k3N57zj2o5DLnUvZZhENeInlo41ksiAi6c9COQDbDseI+EoO31CleISQvw4staYTO0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sScIYsx7s89E9qYqILn0cwdG2KMxM2Log+E8DCBLDg47pyD9GT7uK2FowUZf?=
 =?us-ascii?Q?QWlay4L2sSkAnPQoA2ucxe7VzVD4beuaMAdkxY0JnPxsDKhWXGOf68+WtCMP?=
 =?us-ascii?Q?8xRcKr17HzDlbwM1nFn+FpshwYjTjEBFxu+mMzLx9GVBIwbkjp+6R0k3fypn?=
 =?us-ascii?Q?lHRPvGtqfR8Zj/W+ap0NS68AVyCQMFDW55e6NYbZJ3SIAPZwtsy/LSnrexQP?=
 =?us-ascii?Q?nmsjX96wWawf/0e50+U6hQnyUnvyeLF5wbWuct9YPTl6I+AhSmwB0dqeaAkw?=
 =?us-ascii?Q?Tdn+0XS6+VSnd/fjz0xZ3fqDRSIskK+MvyspV+3FmdYrKgJdPtMXFbO15H2k?=
 =?us-ascii?Q?lV8K9iqaV4SlbtzFcZq7cFsnH5XXQwBFphgnt+xNB3XQkqaTPhoyxUTJ21nu?=
 =?us-ascii?Q?hz7/gCWfHMTz6AGlp7IOQ26AuLo/LkVA4u/zYuy61dz7ytIxv1e8luqxhGxW?=
 =?us-ascii?Q?iyr4g3gcpipG25W4fiw6yoYfuh9htjXGVyt9Xf2jbjHaMPJQVYHXcls2YjHS?=
 =?us-ascii?Q?RUYPvAKe/I7cVJ+4CUOtjypoVZ8seoMyaSZf7xfEhvNa4XtvRMNKeXrxjobM?=
 =?us-ascii?Q?nuPIpp7k1Ettx1kjUVibjxM+20aIdJh5mxntIJyKj6iZ985XIGAD7aFPUBv9?=
 =?us-ascii?Q?2usdAPQTYwg0Ulww1TZB333cwUQ/NCaNeyoeniAyAECsc68rsb7MAXxr3137?=
 =?us-ascii?Q?Zshnx0Tss9HdT4yOsVxN5Hj7zdjXIQf5IEchFy51a3CuDriIxXvNsv++s0nx?=
 =?us-ascii?Q?FxGn1HwDI8SUXZWomNQUb5vvVjTFMXQet1C7H2yAMCHCtxX+qgIPWN0jO0xg?=
 =?us-ascii?Q?BgEitdL4XhOLCjU6H9u5s6CkAoDN+adqyGbcHPJ2C4as28hKcEUV2V6qmhe3?=
 =?us-ascii?Q?bAEui8K+ZvHZiSnidg3WZpHrkxacOxpwFIvQhG9Yyxu3yu+vWbmdKyIi0Evp?=
 =?us-ascii?Q?bsuupR7u/MyFAj0DCLtr/5XySyGbJyxYq27IjaJtUaC7E+eNwe13TgXZAxHh?=
 =?us-ascii?Q?84zG3aZF1ttR55KNP37lWjDv/RrUFCIhqUuHvr26jk7Y0/HNRSyJwEFdIohx?=
 =?us-ascii?Q?AtXWNYplnSM4zfGQQKUJxR4mpJoTVkM+HXk6GOq6GuwanuIZ84ZWjZXx/J2E?=
 =?us-ascii?Q?y1/3U9ebEw9N/mYE08dFAgeO7jyzR5vR5M+B0lyzoeTo11DOZPLBz3LCp9LS?=
 =?us-ascii?Q?iB1he/AUqbW5Lo9ZN63iGh3VS01OhUK++gcc/1zSLZe+cd0EzczxeJVhTa6d?=
 =?us-ascii?Q?Ix63FKmQYX8wSCHGXVNFyM65LFn3wjvi/9ir1inVNYsts+yJcrUdQePHQa8T?=
 =?us-ascii?Q?Lmx6/1YxfpxHHULCEW62mU9lPx84bBzpN3Vexa6lx4eCZqdvpvBaNTCx1hAW?=
 =?us-ascii?Q?XNNy1KdJjY2qyDvHl2HjTTxtK440WfjzEk+Gm47useSmPkf+nN4xsW4drSfk?=
 =?us-ascii?Q?cyLkQ+1G25BY72mT2OVgl3f45HgT3eRIMK+7u1AzbS9IqmBEpREw3FiOGHBI?=
 =?us-ascii?Q?LpQUYZNW3rM5OAsZXmCZ5/QyBlYOZxk2wlsbdsoFuK1h1x1URflBJOVWwY/A?=
 =?us-ascii?Q?oPvcHoiWbZulznPhBYDnkyg8SXJEvRyc7celo/p6KJvORj33Fj4vgi0cv+tw?=
 =?us-ascii?Q?42hGfVxnPcV1tooq8gmhIjz03JMsH17+d6Hof6+Zf7o88PvJEk8zZ9CDIC9G?=
 =?us-ascii?Q?X5WL9ysdqVs401jonzCvijc9NXbaAqopNQxX0Z6oXW1FcqGeDk+Rremw/uqQ?=
 =?us-ascii?Q?ZVM37yRQsQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc6310f-7ff3-4ea3-d3cb-08de9b32d6c7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:18.8638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YPer0lFHIrJZxna9gM5KnvAL2Lq+ILd+6N9OmXI43PzOdLEg3sBcctPwtKk2oT41TfUcIOuJIw9LA82E72GCgQ==
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
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 522EF407F0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add page table entry and directory structures for MMU version 2
used by Turing/Ampere/Ada GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   2 +
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 271 +++++++++++++++++++++
 2 files changed, 273 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 637ff43ea83a..f6b184c9b8c8 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -8,6 +8,8 @@
 
 #![expect(dead_code)]
 
+pub(super) mod ver2;
+
 use kernel::num::Bounded;
 
 use crate::gpu::Architecture;
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver2.rs b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
new file mode 100644
index 000000000000..8086f1e5abd8
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! MMU v2 page table types for Turing and Ampere GPUs.
+//!
+//! This module defines MMU version 2 specific types (Turing, Ampere and Ada GPUs).
+//!
+//! Bit field layouts derived from the NVIDIA OpenRM documentation:
+//! `open-gpu-kernel-modules/src/common/inc/swref/published/turing/tu102/dev_mmu.h`
+
+#![expect(dead_code)]
+
+use kernel::bitfield;
+use kernel::num::Bounded;
+use pin_init::Zeroable;
+
+use super::{
+    AperturePde,
+    AperturePte,
+    PageTableLevel,
+    VaLevelIndex, //
+};
+use crate::mm::{
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+
+// Bounded to version 2 Pfn bitfield conversions:
+// 25 bits for video memory frame numbers (bits 32:8).
+impl_pfn_bounded!(25);
+// 46 bits for system memory frame numbers (bits 53:8).
+impl_pfn_bounded!(46);
+
+bitfield! {
+    /// MMU v2 49-bit virtual address layout.
+    pub(super) struct VirtualAddressV2(u64) {
+        /// Page offset [11:0].
+        11:0    offset;
+        /// PT index [20:12].
+        20:12   pt_idx;
+        /// PDE0 index [28:21].
+        28:21   pde0_idx;
+        /// PDE1 index [37:29].
+        37:29   pde1_idx;
+        /// PDE2 index [46:38].
+        46:38   pde2_idx;
+        /// PDE3 index [48:47].
+        48:47   pde3_idx;
+    }
+}
+
+impl VirtualAddressV2 {
+    /// Create a [`VirtualAddressV2`] from a [`VirtualAddress`].
+    pub(super) fn new(va: VirtualAddress) -> Self {
+        Self::from_raw(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV2 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde3_idx(),
+            1 => self.pde2_idx(),
+            2 => self.pde1_idx(),
+            3 => self.pde0_idx(),
+            4 => self.pt_idx(),
+            _ => 0,
+        }
+    }
+}
+
+/// `PDE` levels for MMU v2 (5-level hierarchy: `PDB` -> `L1` -> `L2` -> `L3` -> `L4`).
+pub(super) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+];
+
+/// `PTE` level for MMU v2.
+pub(super) const PTE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+/// Dual `PDE` level for MMU v2 (128-bit entries).
+pub(super) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L3;
+
+// Page Table Entry (PTE) for MMU v2 - 64-bit entry at level 4.
+bitfield! {
+    /// Page Table Entry for MMU v2.
+    pub(in crate::mm) struct Pte(u64) {
+        /// Entry is valid.
+        0:0     valid;
+        /// Memory aperture type.
+        2:1     aperture => AperturePte;
+        /// Volatile (bypass L2 cache).
+        3:3     volatile;
+        /// Encryption enabled (Confidential Computing).
+        4:4     encrypted;
+        /// Privileged access only.
+        5:5     privilege;
+        /// Write protection.
+        6:6     read_only;
+        /// Atomic operations disabled.
+        7:7     atomic_disable;
+        /// Frame number for system memory.
+        53:8    frame_number_sys => Pfn;
+        /// Frame number for video memory.
+        32:8    frame_number_vid => Pfn;
+        /// Peer GPU ID for peer memory (0-7).
+        35:33   peer_id;
+        /// Compression tag line bits.
+        53:36   comptagline;
+        /// Surface kind/format.
+        63:56   kind;
+    }
+}
+
+impl Pte {
+    /// Create a `PTE` from a `u64` value.
+    pub(super) fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    /// Create a valid `PTE` for video memory.
+    pub(super) fn new_vram(pfn: Pfn, writable: bool) -> Self {
+        Self::zeroed()
+            .with_valid(true)
+            .with_aperture(AperturePte::VideoMemory)
+            .with_frame_number_vid(pfn)
+            .with_read_only(!writable)
+    }
+
+    /// Create an invalid `PTE`.
+    pub(super) fn invalid() -> Self {
+        Self::zeroed()
+    }
+
+    /// Get the frame number based on aperture type.
+    pub(super) fn frame_number(&self) -> Pfn {
+        match self.aperture() {
+            AperturePte::VideoMemory => self.frame_number_vid(),
+            _ => self.frame_number_sys(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(super) fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+// Page Directory Entry (PDE) for MMU v2 - 64-bit entry at levels 0-2.
+bitfield! {
+    /// Page Directory Entry for MMU v2.
+    pub(in crate::mm) struct Pde(u64) {
+        /// Valid bit (inverted logic).
+        0:0     valid_inverted;
+        /// Memory aperture type.
+        2:1     aperture => AperturePde;
+        /// Volatile (bypass L2 cache).
+        3:3     volatile;
+        /// Disable Address Translation Services.
+        5:5     no_ats;
+        /// Table frame number for system memory.
+        53:8    table_frame_sys => Pfn;
+        /// Table frame number for video memory.
+        32:8    table_frame_vid => Pfn;
+        /// Peer GPU ID (0-7).
+        35:33   peer_id;
+    }
+}
+
+impl Pde {
+    /// Create a `PDE` from a `u64` value.
+    pub(super) fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    /// Create a valid `PDE` pointing to a page table in video memory.
+    pub(super) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::zeroed()
+            .with_valid_inverted(false) // 0 = valid
+            .with_aperture(AperturePde::VideoMemory)
+            .with_table_frame_vid(table_pfn)
+    }
+
+    /// Create an invalid `PDE`.
+    pub(super) fn invalid() -> Self {
+        Self::zeroed()
+            .with_valid_inverted(true)
+            .with_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this `PDE` is valid.
+    pub(super) fn is_valid(&self) -> bool {
+        !self.valid_inverted().into_bool() && self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the table frame number based on aperture type.
+    fn table_frame(&self) -> Pfn {
+        match self.aperture() {
+            AperturePde::VideoMemory => self.table_frame_vid(),
+            _ => self.table_frame_sys(),
+        }
+    }
+
+    /// Get the `VRAM` address of the page table.
+    pub(super) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame_vid())
+    }
+
+    /// Get the raw `u64` value of the `PDE`.
+    pub(super) fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+/// Dual `PDE` at Level 3 - 128-bit entry of Large/Small Page Table pointers.
+///
+/// The dual `PDE` supports both large (64KB) and small (4KB) page tables.
+#[repr(C)]
+#[derive(Debug, Clone, Copy)]
+pub(in crate::mm) struct DualPde {
+    /// Large/Big Page Table pointer (lower 64 bits).
+    pub(super) big: Pde,
+    /// Small Page Table pointer (upper 64 bits).
+    pub(super) small: Pde,
+}
+
+
+impl DualPde {
+    /// Create a dual `PDE` from raw 128-bit value (two `u64`s).
+    pub(super) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: Pde::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual `PDE` with only the small page table pointer set.
+    ///
+    /// Note: The big (LPT) portion is set to 0, not `Pde::invalid()`.
+    /// According to hardware documentation, clearing bit 0 of the 128-bit
+    /// entry makes the PDE behave as a "normal" PDE. Using `Pde::invalid()`
+    /// would set bit 0 (valid_inverted), which breaks page table walking.
+    pub(super) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: Pde::new(0),
+            small: Pde::new_vram(table_pfn),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(super) fn has_small(&self) -> bool {
+        self.small.is_valid()
+    }
+
+    /// Check if the big page table pointer is valid.
+    fn has_big(&self) -> bool {
+        self.big.is_valid()
+    }
+
+    /// Get the small page table `Pfn`.
+    fn small_pfn(&self) -> Pfn {
+        self.small.table_frame()
+    }
+}
-- 
2.34.1

