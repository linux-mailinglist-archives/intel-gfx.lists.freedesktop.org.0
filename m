Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKiGIfY6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F815371A50
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5B610EBF9;
	Tue, 31 Mar 2026 21:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="B9D/QrO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012048.outbound.protection.outlook.com [40.107.209.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1285310EBD9;
 Tue, 31 Mar 2026 21:21:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cpj3+rP0HOthN21GdPWJ3gj4truDPm+ApKzBjO/p3OYNMLmC3KdzLYduhuNpZbRZTSCgDq9Bu732n8kJYG7jL6fDYYcru1mtGp69PhFG2COwe7L8UPcnZdGNCwauQU2CLRwrCHBYY9KBQRelQ/guSao2wi20FwwiI5sQdb37MobxkuucYcDeXzr3xqSqYpac5lQL+eqF+Ujkh94yqlgetYp5yDILnz0/ePJbNpR99ldotgX4DsU0h5cqwaxkPEnezro1ytGyhhwLxKMTE4g3xlt0I685N9wCaj6RGQutRQu4GiGO8EGLW96Cd1Cc+MtWTTls9nFM94HMpIVAEIV+Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gOnQsx+YUr0Po3/b5uDpGnvklZ+Y43iDZqZgCAq9X/k=;
 b=ELr6ZeqxbuOLdaOpVGUzEns8YZR48W3QwdYcTSTJFCsWaNA1FvineY2LzQ0pT2ryLZiBWbx64vu/l+MSuFYSy4DyBT0cScGBvNDg1OY7lK+yqbxBiM4fHRIAue5xXEQVfx0Y2A50k1ClbXagH/9fXUEpfweBRPXW9lq3TvP+8m/XzzR7tHA8TKVpbQym9Q1wHlw463N/coOySCAI+axBfT8I5Sa/XrG6OCE8f27UpZ5TT7CkCU72MmgBn+XUzwm0V+lblVoI/MYFaP+2XYYAv6Mma0M/Kk9GfRleiUfyoROWaK2k0zB+pRonRnWXN0QCquga1SRcAFJiGtxN3ypTeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOnQsx+YUr0Po3/b5uDpGnvklZ+Y43iDZqZgCAq9X/k=;
 b=B9D/QrO8ahg/clmrwID4AiswBDZZ+hXziAXEs53E75tVvZk+3vE3/wjg/pxl13MfhnRIyo3UO/aA9kI75NUYsyA59YYheYjtZsBpGO8+7qi0Qxh3buE1PNujawoVtjFEUAo1q/zElqCKiGDcHwEgcTU73fniC9VEUHQ1wtbtVZXYFeiLpNNYdSFlADrwrjoL6NkL49shZWKeQ1SrFMwJcK8YrOXXQM6LSMGLmiZef/hZD1WHrkSYhSeFe29vbqqxxq0CLhMilB1yKRJaYh5CM3ck1KnjfZBzHMHbEtP6oNlu+yUCbNqTiA3otJ6A9yPaqVAeojF4n/NaIkOSCfoZqw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:36 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:36 +0000
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
 Matthew Brost <matthew.brost@intel.com>,
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
Subject: [PATCH v10 16/21] gpu: nova-core: mm: Add multi-page mapping API to
 VMM
Date: Tue, 31 Mar 2026 17:20:43 -0400
Message-Id: <20260331212048.2229260-17-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:208:32a::32) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 8036ce36-bd7f-43bd-8ad1-08de8f6b7d92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: k8648So14L+YclnCh1S4cx2y6S1YnbvJ1A3Q/h/0FB/C7+r1CoBN4yHY7F6FP87ulE1AgP4zyAmOy7gCjcjWelVyji47URdoOVaK9W1sP1DgBpp9nplXQZoIFcxyM4tFkkBFvFQJEOEierY4ScwE6hAsDG6WYwuMjWH1DA76WCmZKofeNSGSXAF8xv+wfOVfcJs6Iyog2BjT3LB2i526XH1aOA072PtAs0rVuEw4S0qeIdvl1TNY479dsjMI/tKsGlVpY8c346YDBcilVTU0R9ncFKHGWNp2RPd1EuF+S/pRvgD7SMEeGED6/22urEwqQthtoEO+FO+kYg2qRo1viZWuvwr6v85PkDSXjTbZPmxcRkWe1qGFCeQNNG195/Xxv768itYLOq0QGPsVxT4eXk4hOKjojPNEryPrFl6rSm1DJvf7CvyULHVm/VgUZpcDuI/XcbuVBCj5mVUNsbwMiv5+t/9vKjtULhSKUNfOByVn71MStTNLf03ZkiCq0EDfmwk4fQjHGAOoIsFSRgBs5kXRsb9l8BzBj/gbbLi8RujyzwlRlY3gDA/mcQFISV2jThI/zZlLhe2xGyynrsUKUCXEvsdraN5gpaSZ2wylyWPqa7b5/tl/wWBu3l+xjrhtB0fvHVGxTnV4wrEeTpEfomSVR/bRukjHDp7a0Jl+siZakVtfi9mRVaKJkLomef9GaeqEnIMi2rFJoEu/JhdelR8YoPGtNgSe/Svn9GhSWcY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WcmCr/zIYlDVTsmmgcydS4cqBEn2NLEJbNqQ2T/dK2mdMsThpWKFkqijnjDq?=
 =?us-ascii?Q?Ga6/Vpo2uNVWeN7Z2nahqvICS57YP8buh9A41/3dXacfZ/klSFb489o1fHbL?=
 =?us-ascii?Q?ue069AYE5AIMG92hJ02KmZADrIJBbgUcl/Vvm8JQ1OydeWmXsHub/9NcPH6i?=
 =?us-ascii?Q?JV1rGjVNMGNjRR72iyUZWbF0Q6cTD6UdpID5LwmOQFuj2gSS9A7rndPrOAEP?=
 =?us-ascii?Q?oEGGti3OoUSsCVAkXoZRT9qxbadJ9KRr1AuFB9tHrD7eSni9hwv6h6vwgUPy?=
 =?us-ascii?Q?F4GfIaflj0zyZ2hOqEfQdAMBJTdort8jx4rhQZk6QQ6A5lquT0sE+hu3oCYI?=
 =?us-ascii?Q?kaXqY4MDXZC5UQVBWRQAetFXjvL9HEKsDrU5ASRUxEdF8Mxnb8Q3p53sxAWQ?=
 =?us-ascii?Q?M47/RhRWsF4+2uWBixZL4hCuJuCri96WmOlQI2jfSoDwBS5DhZ5diowL0iPz?=
 =?us-ascii?Q?Ll+y21c8qpV0LEQH9ld6NzBeslgg3IQVaECMvOTEljU6msqHuiZhoTtFNJnv?=
 =?us-ascii?Q?+/w7OycvCIcEz3mpSABTrnXYw/u9RQaSunSI68rHd/v0+i+AI89vQjVyhaua?=
 =?us-ascii?Q?MCPeR8BUm6b62keQab6RS/HJFeuwF8/R4Z6tSfm7kG6LeEiYU49llgM4Woui?=
 =?us-ascii?Q?njaet2dvn0DhcPXrO11UW5+JE48MjUkPoaoET04znQt8DwR6emb1OPoWrRef?=
 =?us-ascii?Q?ObyE8R8JOw0MJR2wEtUu7bxkA6IetQHgzVrFmZ5ojnXztqnJ9DQXwsE5JlDj?=
 =?us-ascii?Q?LOLpGazH8buxxN2n/ufp7keG7IWqZBwTn4o639bYeoXQU+q5ZKaC//awVHeW?=
 =?us-ascii?Q?YDm2LkUpIIvd9NAdGywA/bOvoi/IVFhsNRWAoZL/WIIX9D+MkjyE5QEGABU0?=
 =?us-ascii?Q?ezhM2ju3m77l0WFwOKVk+xkFQf/XlqK7ljo0xr9VzOZWcgbQJ1JzYuw5jeTV?=
 =?us-ascii?Q?F2oWL/QfFfYCSYc+PHoCSF28PHowrWJXQgk0p/ojw7pExkBzY7psa6kbdiKD?=
 =?us-ascii?Q?gK19t9da8r09Rl3eNi8PBdJVKpwusvdUeX5KreAvLtsa/7fuNnV7k7ZqkWS1?=
 =?us-ascii?Q?vG82cOtgfe/Ab0GknqLFALUR5jSbMGUaISCP/poSLjujyC7qRXffDv3keKV7?=
 =?us-ascii?Q?yHk10Vb9kwWzitCP6o56lLyoj5cdZXF7HdXF5eAGsZnYYOKDh28O/+iVT+3s?=
 =?us-ascii?Q?XbMfaLusnO+d3+DTKgX1ITMSN1deC3e7tfdbByjCmc2u2AbvUz0UpR7GJ9RD?=
 =?us-ascii?Q?vMB887mHZL0Fotg2pOwnK7VwhzMT9tn/aTa7VQb+/745YxT6e6rF9FyAZxlH?=
 =?us-ascii?Q?wQno40ao6vmIifftaW060PSuJ8kIPdbcTxcrCmmpQMCFfo3Xl0vCPFvNysN3?=
 =?us-ascii?Q?xJNhELvZO/BNo0fnmiV7EXb7pOqKcgGPS7KqMAJHv+kWhTseY9Zx7rut4u1n?=
 =?us-ascii?Q?mfl4IMPLhNFPQmgJA3F1K9kICgIt94b4rY77b3I5HasKLzDF+loHcYsfLYEB?=
 =?us-ascii?Q?dDz+BVSITO7jayijUHlRmTiAin+npLo/ouCjAxd2z24VVQZ/z4Oa0v46Sttu?=
 =?us-ascii?Q?MP0A6JJesv3FN7D5yZvEC3EEpQvQrzUu3cy/p1li43HOv2+EgRTp3bVezapH?=
 =?us-ascii?Q?jeEHSJfndH/vNR7d+eArIZrk9T4Q+WIrI78eOYFpyqAz2r+lKmkqDl7NH8Fc?=
 =?us-ascii?Q?/vbUY2F35Uj9aK6BDv8mJtMfFqUDL9XKAISVy8k+EPnD2tAopU8wIKfRxQSY?=
 =?us-ascii?Q?pTco06cERQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8036ce36-bd7f-43bd-8ad1-08de8f6b7d92
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:36.5971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tu2/BLQuA8SClDN/J3ADNcG+YYsI8jb2smN197oeTLJgMnAmlQDNNrAtGiZh3cY/oK57hkpoQFK+jt7NEP6iOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8809
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
	RCPT_COUNT_GT_50(0.00)[56];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 2F815371A50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the page table mapping and unmapping API to the Virtual Memory
Manager, implementing a two-phase prepare/execute model suitable for
use both inside and outside the DMA fence signalling critical path.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/vmm.rs | 366 +++++++++++++++++++++++++++++++-
 1 file changed, 363 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index 2a65ffd73b0d..542bb0a760ba 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -11,21 +11,34 @@
         AllocatedBlocks,
         GpuBuddy,
         GpuBuddyAllocFlag,
+        GpuBuddyAllocFlags,
         GpuBuddyAllocMode,
         GpuBuddyParams, //
     },
     prelude::*,
     ptr::Alignment,
+    rbtree::{RBTree, RBTreeNode},
     sizes::SZ_4K, //
 };
 
-use core::ops::Range;
+use core::{
+    cell::Cell,
+    ops::Range, //
+};
 
 use crate::{
     mm::{
         pagetable::{
-            walk::{PtWalk, WalkResult},
-            MmuVersion, //
+            walk::{
+                PtWalk,
+                WalkPdeResult,
+                WalkResult, //
+            },
+            DualPde,
+            MmuVersion,
+            PageTableLevel,
+            Pde,
+            Pte, //
         },
         GpuMm,
         Pfn,
@@ -52,6 +65,74 @@ pub(crate) struct Vmm {
     page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
     /// Buddy allocator for virtual address range tracking.
     virt_buddy: GpuBuddy,
+    /// Prepared PT pages pending PDE installation, keyed by `install_addr`.
+    ///
+    /// Populated by `Vmm` mapping prepare phase and drained in the execute phase.
+    /// Shared by all pending maps in the `Vmm`, thus preventing races where 2
+    /// maps might be trying to install the same page table/directory entry pointer.
+    pt_pages: RBTree<VramAddress, PreparedPtPage>,
+}
+
+/// A pre-allocated and zeroed page table page.
+///
+/// Created during the mapping prepare phase and consumed during the mapping execute phase.
+/// Stored in an [`RBTree`] keyed by the PDE slot address (`install_addr`).
+struct PreparedPtPage {
+    /// The allocated and zeroed page table page.
+    alloc: Pin<KBox<AllocatedBlocks>>,
+    /// Page table level -- needed to determine if this PT page is for a dual PDE.
+    level: PageTableLevel,
+}
+
+/// Multi-page prepared mapping -- VA range allocated, ready for execute.
+///
+/// Produced by [`Vmm::prepare_map()`], consumed by [`Vmm::execute_map()`].
+/// The struct owns the VA space allocation between prepare and execute phases.
+pub(crate) struct PreparedMapping {
+    vfn_start: Vfn,
+    num_pages: usize,
+    vfn_alloc: Pin<KBox<AllocatedBlocks>>,
+}
+
+/// Result of a mapping operation -- tracks the active mapped range.
+///
+/// Returned by [`Vmm::execute_map()`] and [`Vmm::map_pages()`].
+/// Owns the VA allocation; the VA range is freed when this is dropped.
+/// Callers must call [`Vmm::unmap_pages()`] before dropping to invalidate
+/// PTEs (dropping only frees the VA range, not the PTE entries).
+pub(crate) struct MappedRange {
+    pub(crate) vfn_start: Vfn,
+    pub(crate) num_pages: usize,
+    /// VA allocation -- freed when [`MappedRange`] is dropped.
+    _vfn_alloc: Pin<KBox<AllocatedBlocks>>,
+    /// Logs a warning if dropped without unmapping.
+    _drop_guard: MustUnmapGuard,
+}
+
+/// Guard that logs a warning once if a [`MappedRange`] is dropped without
+/// calling [`Vmm::unmap_pages()`].
+struct MustUnmapGuard {
+    armed: Cell<bool>,
+}
+
+impl MustUnmapGuard {
+    const fn new() -> Self {
+        Self {
+            armed: Cell::new(true),
+        }
+    }
+
+    fn disarm(&self) {
+        self.armed.set(false);
+    }
+}
+
+impl Drop for MustUnmapGuard {
+    fn drop(&mut self) {
+        if self.armed.get() {
+            kernel::pr_warn!("MappedRange dropped without calling unmap_pages()\n");
+        }
+    }
 }
 
 impl Vmm {
@@ -79,6 +160,7 @@ pub(crate) fn new(
             mmu_version,
             page_table_allocs: KVec::new(),
             virt_buddy,
+            pt_pages: RBTree::new(),
         })
     }
 
@@ -136,4 +218,282 @@ pub(crate) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
             WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
         }
     }
+
+    /// Allocate and zero a physical page table page for a specific PDE slot.
+    /// Called during the map prepare phase.
+    fn alloc_and_zero_page_table(
+        &mut self,
+        mm: &GpuMm,
+        level: PageTableLevel,
+    ) -> Result<PreparedPtPage> {
+        let blocks = KBox::pin_init(
+            mm.buddy().alloc_blocks(
+                GpuBuddyAllocMode::Simple,
+                SZ_4K.into_safe_cast(),
+                Alignment::new::<SZ_4K>(),
+                GpuBuddyAllocFlags::default(),
+            ),
+            GFP_KERNEL,
+        )?;
+
+        // Get page's VRAM address from the allocation.
+        let page_vram = VramAddress::new(blocks.iter().next().ok_or(ENOMEM)?.offset());
+
+        // Zero via PRAMIN.
+        let mut window = mm.pramin().get_window()?;
+        let base = page_vram.raw();
+        for off in (0..PAGE_SIZE).step_by(8) {
+            window.try_write64(base + off, 0)?;
+        }
+
+        Ok(PreparedPtPage {
+            alloc: blocks,
+            level,
+        })
+    }
+
+    /// Ensure all intermediate page table pages are prepared for a [`Vfn`]. Just
+    /// finds out which PDE pages are missing, allocates pages for them, and defers
+    /// installation to the execute phase.
+    ///
+    /// PRAMIN is released before each allocation and re-acquired after. Memory
+    /// allocations are done outside of holding this lock to prevent deadlocks with
+    /// the fence signalling critical path.
+    fn ensure_pte_path(&mut self, mm: &GpuMm, vfn: Vfn) -> Result {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let max_iter = 2 * self.mmu_version.pde_level_count();
+
+        // Keep looping until all PDE levels are resolved.
+        for _ in 0..max_iter {
+            let mut window = mm.pramin().get_window()?;
+
+            // Walk PDE levels. The closure checks self.pt_pages for prepared-but-uninstalled
+            // pages, letting the walker continue through them as if they were installed in HW.
+            // The walker keeps calling the closure to get these "prepared but not installed" pages.
+            let result = walker.walk_pde_levels(&mut window, vfn, |install_addr| {
+                self.pt_pages
+                    .get(&install_addr)
+                    .and_then(|p| Some(VramAddress::new(p.alloc.iter().next()?.offset())))
+            })?;
+
+            match result {
+                WalkPdeResult::Complete { .. } => {
+                    // All PDE levels resolved.
+                    return Ok(());
+                }
+                WalkPdeResult::Missing {
+                    install_addr,
+                    level,
+                } => {
+                    // Drop PRAMIN before allocation.
+                    drop(window);
+                    let page = self.alloc_and_zero_page_table(mm, level)?;
+                    let node = RBTreeNode::new(install_addr, page, GFP_KERNEL)?;
+                    let old = self.pt_pages.insert(node);
+                    if old.is_some() {
+                        kernel::pr_warn_once!(
+                            "VMM: duplicate install_addr in pt_pages (internal consistency error)\n"
+                        );
+                        return Err(EIO);
+                    }
+
+                    // Loop: re-acquire PRAMIN and re-walk from root.
+                }
+            }
+        }
+
+        kernel::pr_warn!(
+            "VMM: ensure_pte_path: loop exhausted after {} iters (VFN {:?})\n",
+            max_iter,
+            vfn
+        );
+        Err(EIO)
+    }
+
+    /// Prepare resources for mapping `num_pages` pages.
+    ///
+    /// Allocates a contiguous VA range, then walks the hierarchy per-VFN to prepare pages
+    /// for all missing PDEs. Returns a [`PreparedMapping`] with the VA allocation.
+    ///
+    /// If `va_range` is not `None`, the VA range is constrained to the given range. Safe
+    /// to call outside the fence signalling critical path.
+    pub(crate) fn prepare_map(
+        &mut self,
+        mm: &GpuMm,
+        num_pages: usize,
+        va_range: Option<Range<u64>>,
+    ) -> Result<PreparedMapping> {
+        if num_pages == 0 {
+            return Err(EINVAL);
+        }
+
+        // Pre-reserve so execute_map() can use push_within_capacity (no alloc in
+        // fence signalling critical path).
+        // Upper bound on page table pages needed for the full tree (PTE pages + PDE
+        // pages at all levels).
+        let pt_upper_bound = self.mmu_version.pt_pages_upper_bound(num_pages);
+        self.page_table_allocs.reserve(pt_upper_bound, GFP_KERNEL)?;
+
+        // Allocate contiguous VA range.
+        let (vfn_start, vfn_alloc) = self.alloc_vfn_range(num_pages, va_range)?;
+
+        // Walk the hierarchy per-VFN to prepare pages for all missing PDEs.
+        for i in 0..num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            self.ensure_pte_path(mm, vfn)?;
+        }
+
+        Ok(PreparedMapping {
+            vfn_start,
+            num_pages,
+            vfn_alloc,
+        })
+    }
+
+    /// Execute a prepared multi-page mapping.
+    ///
+    /// Drain prepared PT pages and install PDEs followed by single TLB flush.
+    pub(crate) fn execute_map(
+        &mut self,
+        mm: &GpuMm,
+        prepared: PreparedMapping,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result<MappedRange> {
+        if pfns.len() != prepared.num_pages {
+            return Err(EINVAL);
+        }
+
+        let PreparedMapping {
+            vfn_start,
+            num_pages,
+            vfn_alloc,
+        } = prepared;
+
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let mut window = mm.pramin().get_window()?;
+
+        // First, drain self.pt_pages, install all pending PDEs.
+        let mut cursor = self.pt_pages.cursor_front_mut();
+        while let Some(c) = cursor {
+            let (next, node) = c.remove_current();
+            let (install_addr, page) = node.to_key_value();
+            let page_vram = VramAddress::new(page.alloc.iter().next().ok_or(ENOMEM)?.offset());
+
+            if page.level == self.mmu_version.dual_pde_level() {
+                let new_dpde = DualPde::new_small(self.mmu_version, Pfn::from(page_vram));
+                new_dpde.write(&mut window, install_addr)?;
+            } else {
+                let new_pde = Pde::new_vram(self.mmu_version, Pfn::from(page_vram));
+                new_pde.write(&mut window, install_addr)?;
+            }
+
+            // Track the allocated pages in the `Vmm`.
+            self.page_table_allocs
+                .push_within_capacity(page.alloc)
+                .map_err(|_| ENOMEM)?;
+
+            cursor = next;
+        }
+
+        // Next, write PTEs (all PDEs now installed in HW).
+        for (i, &pfn) in pfns.iter().enumerate() {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            let result = walker.walk_to_pte_lookup_with_window(&mut window, vfn)?;
+
+            match result {
+                WalkResult::Unmapped { pte_addr } | WalkResult::Mapped { pte_addr, .. } => {
+                    let pte = Pte::new_vram(self.mmu_version, pfn, writable);
+                    pte.write(&mut window, pte_addr)?;
+                }
+                WalkResult::PageTableMissing => {
+                    kernel::pr_warn_once!("VMM: page table missing for VFN {vfn:?}\n");
+                    return Err(EIO);
+                }
+            }
+        }
+
+        drop(window);
+
+        // Finally, flush the TLB.
+        mm.tlb().flush(self.pdb_addr)?;
+
+        Ok(MappedRange {
+            vfn_start,
+            num_pages,
+            _vfn_alloc: vfn_alloc,
+            _drop_guard: MustUnmapGuard::new(),
+        })
+    }
+
+    /// Map pages doing prepare and execute in the same call.
+    ///
+    /// This is a convenience wrapper for callers outside the fence signalling critical
+    /// path (e.g., BAR mappings). For DRM usecases, [`Vmm::prepare_map()`] and
+    /// [`Vmm::execute_map()`] will be called separately.
+    pub(crate) fn map_pages(
+        &mut self,
+        mm: &GpuMm,
+        pfns: &[Pfn],
+        va_range: Option<Range<u64>>,
+        writable: bool,
+    ) -> Result<MappedRange> {
+        if pfns.is_empty() {
+            return Err(EINVAL);
+        }
+
+        // Check if provided VA range is sufficient (if provided).
+        if let Some(ref range) = va_range {
+            let required: u64 = pfns
+                .len()
+                .checked_mul(PAGE_SIZE)
+                .ok_or(EOVERFLOW)?
+                .into_safe_cast();
+            let available = range.end.checked_sub(range.start).ok_or(EINVAL)?;
+            if available < required {
+                return Err(EINVAL);
+            }
+        }
+
+        let prepared = self.prepare_map(mm, pfns.len(), va_range)?;
+        self.execute_map(mm, prepared, pfns, writable)
+    }
+
+    /// Unmap all pages in a [`MappedRange`] with a single TLB flush.
+    ///
+    /// Takes the range by value (consumes it), then invalidates PTEs for the range,
+    /// flushes the TLB, then drops the range (freeing the VA). PRAMIN lock is held.
+    pub(crate) fn unmap_pages(&mut self, mm: &GpuMm, range: MappedRange) -> Result {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let invalid_pte = Pte::invalid(self.mmu_version);
+
+        let mut window = mm.pramin().get_window()?;
+        for i in 0..range.num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(range.vfn_start.raw() + i_u64);
+            let result = walker.walk_to_pte_lookup_with_window(&mut window, vfn)?;
+
+            match result {
+                WalkResult::Mapped { pte_addr, .. } | WalkResult::Unmapped { pte_addr } => {
+                    invalid_pte.write(&mut window, pte_addr)?;
+                }
+                WalkResult::PageTableMissing => {
+                    continue;
+                }
+            }
+        }
+        drop(window);
+
+        mm.tlb().flush(self.pdb_addr)?;
+
+        // TODO: Internal page table pages (PDE, PTE pages) are still kept around.
+        // This is by design as repeated maps/unmaps will be fast. As a future TODO,
+        // we can add a reclaimer here to reclaim if VRAM is short. For now, the PT
+        // pages are dropped once the `Vmm` is dropped.
+
+        range._drop_guard.disarm(); // Unmap complete, Ok to drop MappedRange.
+        Ok(())
+    }
 }
-- 
2.34.1

