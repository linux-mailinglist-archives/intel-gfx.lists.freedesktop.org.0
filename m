Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHZVJvD932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A89F407F7E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769A010E7AB;
	Wed, 15 Apr 2026 21:06:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="YT3uWB2s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C2510E7A7;
 Wed, 15 Apr 2026 21:06:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kbi3/t0F2HXwpLd1RrBJbBFBPwXx/sepC6Ji8mT5l86tbml4XBBCmA6smWCZzm/LJQfN5tR/saRtPs8dkjJtigz98JxZHxL9H4lXP39wsefHdMnof3rBFRH3LhTmER6dCsPvITJRJewjZzG0yoOjOQTmZBx4hQ7anC6Zl+UDBxK4acYQi0CcQXEB6MrpYm8x9B148cCssjLv304W06wocizHZisNX7JNQjfzxAVnl80KuYkisTwNvMIpm9YJWmYJW01FgSw0aG6hfHYS3g2+vtlJl24DV0Qw66xpRsm+IyJA6KM4sDIkXQFGWx94akFAXJaC/FFL1/87Hp77s1LwfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wjxLxm5WtjiTlKvzbK+bZcEp6l9lQ1b6WVZEkf6PnjU=;
 b=mq6XkyFs7GDr5Sqrg4FJ7IJfjGWD55peBqFXOeJ7d3RMP7i5IjWMPCoaYo3MCL8guOFOjgqTvr84eXfYymr8Osf57S3qrXo8Ipt3Hc9GorVw16Sie/U1JXgwclwVJn/4PU4/+8b2Cou0V4mLqBmDlRuDIeaCQSNN6q2CitZLdYJftx6ICqyA8goRSObjMCAV/h9wu1DP7vFoV22xfssCUTwncW0I+2tnnL53dh1Wg7s98ZJqZyzX6UUSpAYGPNjV9lMqPn8e47oJ4reB5xrYkgNodfyj2015sF0m6Da9dGgxf/0Et/WcUNlGhCLBQkd0mM+ihdYoxemFv7GIDJ8cKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wjxLxm5WtjiTlKvzbK+bZcEp6l9lQ1b6WVZEkf6PnjU=;
 b=YT3uWB2sZyo7EihJ8OWuOrGT1cjessqECtBZrMe/JKZtxyUCajrxnpfltPyu3TugaLOh+M6nTpmaZuu4Adyk9ID61ZezBYuX1+25D5ErZGZ3bTtntMKPcLc4eXf2y2JkTaxCr2lK4tqBwjSAQbuRj4iEoA+ttvabMAVTIQ/IGaVNcIrDBhT0fnjp2tUhxrOCs6u0by1Yz4dKWV29scQkttgVvRGxzJzK/C5n1ScdQ91YkaKsp+79GvRqBjJyAUCueQ/9dYgmIP1TGmsPU4RJU0lZs3Acj1NFxwxQ/mei0dnnbxWjzmZTJgJN/ThWxwteSa4cbiBE35g9Wud9GwTg8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:31 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:31 +0000
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
Subject: [PATCH v11 15/20] gpu: nova-core: mm: Add virtual address range
 tracking to VMM
Date: Wed, 15 Apr 2026 17:05:42 -0400
Message-Id: <20260415210548.3776595-15-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY8P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:930:46::7) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 37bf324f-1426-401e-7f95-08de9b32ddf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: DSN1vMNZttKqeP/vrw4fipZvxxScLeiEk3S6chlFkacZIF3ADxfql5CNGP/A1gHKs7Zb0in1aR7Fzfq1nBjgEP2FUGKQQ88aJyQTO1TKNm8pvb50+K5nJWkTwPf1/Wa/sq2vSD9BP1Ba+YMRV4ofmo2U8J/BeX2DU2OnfRnI7/C9Lxmt6Tt3nhqbBqt/dZPbbNy9H6MBcqwzsX8BHi3kJfD/KweVQv+6B4GCk5NGTzdzGPU7czTLWav7An1B6QCX5qnChSu3LtzYt26vzCNCXbGqiWLwZ8CmgWbUQd9CMe6qC8qTTCw/iKxGFGNVUIphGtz4MPHARuBi5/9zWYPna/MzDLD6SchqNPRyr93BEdqWNL40UkCAPKBHjv/ABzDghR0Xuxcyu76NVpidLIKdPqHqGoJJ6Xf8+wgpMCuFKZuAjDXyyZwE3ua9LUrNodLY/bBHdVwl13Z1+6OXPREgaDIl6Wz/sVBIMuwxG3mQZdgE2ANYpVGUQ9NULCH09AacrAMP8rzCrRbzu7HsK/Sg1inKIlWQ4q3/QAS+s5O2Uv9SJ98C3e3coxTwsRuAsJXOwPGMNHVCMmC29HBV5CglSLgHdOJ2U+k9NCD0kdyc52fHBKmJ9AnyO7AKz3PXKLauNsnDQh/eFo6bumi9tUVifhQI0EZJQBfqEeD/PaI4xz7rgrYPOqGtYyL4YTlKvMmPFSLbbDIn3SEdEkvmuao4oBLZQaHmuQo69DSWjqCcZCQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0r9XgR3ANtp+CSr7RhIJbuWyEuvFA0GQVxMSPO82w1nEy5xDLtxHOYp+zuIM?=
 =?us-ascii?Q?EOMHqSjSNzHRJdxvZbJRJFP+fbDjvlv/k1geIU5TaMy4/J5BA5Ltp8GzRpqU?=
 =?us-ascii?Q?zz+LHu1zBiewrs/GrzWeVf+lopYMlgIUIb1h8+UcQ2ydQ23EDXsE43o/CyZO?=
 =?us-ascii?Q?f7OqAivcAdmX9MZEF7iMFeZtUcg/B9ohjeJ8IqUWq5EQsV2SPwkSN5qTFtZ6?=
 =?us-ascii?Q?GoBCLA9O7R9uQrYsHW5RXEhBQtit0pNflA6JaiJRhJJeI+Rm/gzZm6JG9Gky?=
 =?us-ascii?Q?Qswcygi4RAeCuin0Qprr+REWHXREfFtjO0WYoVKim2ZRfJOkalbsIDd+QsCV?=
 =?us-ascii?Q?PaEFpN/S6QH8d/MUdoHmQkjOs8EUFvZX6muD2bqQeabL3TXMUpNZXoSE8kjx?=
 =?us-ascii?Q?uPQvj/VI+rfzEOPeS9zX7YssY+3oM/KD78gCh2w8Qz2l9jsh6u/ACk6X4wkj?=
 =?us-ascii?Q?lQPj41VsThHRih3aJKfBEBbdwTvGusqWdslFzb0dFe/IXAGUffsOSPpa/CNn?=
 =?us-ascii?Q?7ziUfKL0d6MVf+TfGev33C2Da2Vro8HcHiOcowHjMKaNaL4UQU89W3kFaE7I?=
 =?us-ascii?Q?vHtQ7PFCfIiMAwpvzUoGqAb9TLnCwkfZxt705ON8CYkO21r7HEHu9Bpe1N7r?=
 =?us-ascii?Q?kuyzOmfriDxa7hCwKrHtIaGmD8PkrFWSwpMI5vdG8y4yqjJEt6IpdCXhawY2?=
 =?us-ascii?Q?TCNnpfTFZk9hPVulVckHBHPlAwyZZ1wLSnArohVsP+MsQhuw3W+G90RpYPxj?=
 =?us-ascii?Q?6vQSmRiBkG0eN2MBWVOBioHvP+/qBdkXiM9z3d04xP14ARk5hbpMZE0vMRs3?=
 =?us-ascii?Q?Tbb5t8lZ3vlv2dJlHbPPcmvkGTU5o8t4Vi5bfLRHGj2DlJ8THPx0w5adxNq8?=
 =?us-ascii?Q?tJXonNWIJOsNKyhZOn0tgyi7tH/5JatgjJghYxgxWVNVacY9IEoIlg7I2Hd+?=
 =?us-ascii?Q?qVhQFZ/iSYwfMf124xZk6zd34ab0Na5WmJB+KU+XYzpIaL/qaPF7LNDQv45W?=
 =?us-ascii?Q?6v9VPOdTGWFd1c/Uc3yderpu1UyvrWvJ5E1ifrOGtYbX7oVSErIdJZJp2yVi?=
 =?us-ascii?Q?8gQYAkTjx5E+8jQ+OkSQHEEiuwV6xOzUE4Ra2yKoXKeSmgRlGCgvTreE0GwF?=
 =?us-ascii?Q?mo+YHumIy1TCQjL1sYmVewFaZ3eYY2nVsqbZ4O47cJasKZwcToIZAudqJrzC?=
 =?us-ascii?Q?6vhJsL52zvwUFPPC7MrkO6YSR6bZVm/zPxDzzk6MqYCXIWGV6mV/U0/y6aV3?=
 =?us-ascii?Q?TAlZ6QDfsXVr337SP9f94GfetuiVlsjCTiaPeb0lnGMaEbsiPfOWfnWtkAha?=
 =?us-ascii?Q?d9FJmHywWeXj4dsES50juzUN1IZ+AnzGlmhL2RMuMraXhxHZtQlEXXgxqaAi?=
 =?us-ascii?Q?7qLj9t/prqC+Pmv1u5VOmH3eiBO9eluZaKK6nUP/EyFHFTQEBFrgBu2iXYH/?=
 =?us-ascii?Q?0gxlGu+lr6dOZmFR4m/S6OeDTWx5lbKsr3Qhn94h3uhG+Uak/PHtZsJgRF35?=
 =?us-ascii?Q?ci4yfzXyYepB9VN/ry+Shv8iqKpYhZT7B+1jxVkJCFTprGU3+9Qu2EqVd+2B?=
 =?us-ascii?Q?DIzlifCzvB82OmFxezmV5sPFVhYqR/ZvT5YH74qmFKJ7QC2kXUXI38Rjke6d?=
 =?us-ascii?Q?o/CtIbIhpoOZRjMIVQ+IGeFZsyNNerjyNsOaIuJBSYUrw0MCGbJo/SAb3k4A?=
 =?us-ascii?Q?nfikDraa6A+Bk43GRa5CJVuChRkUkSviF50F5XJkfJTSQz08tSRS6CZu9te3?=
 =?us-ascii?Q?sOxSQhKhyg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37bf324f-1426-401e-7f95-08de9b32ddf5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:30.8989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nOhPL6Ql0dZ7sKiW3fKJtCK3az8FgEOsFRWg3GhGyX57O+b1mbFUL1oVvf4191DzfIPv+hqqX/c0ypgILuG1kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8993
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
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 4A89F407F7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add virtual address range tracking to the VMM using a buddy allocator.
This enables contiguous virtual address range allocation for mappings.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/vmm.rs | 97 +++++++++++++++++++++++++++++----
 1 file changed, 86 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index d92495a4579d..0ff71119708d 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -7,19 +7,35 @@
 //! and handles TLB flushing after modifications.
 
 use kernel::{
-    gpu::buddy::AllocatedBlocks,
-    prelude::*, //
+    gpu::buddy::{
+        AllocatedBlocks,
+        GpuBuddy,
+        GpuBuddyAllocFlag,
+        GpuBuddyAllocMode,
+        GpuBuddyParams, //
+    },
+    prelude::*,
+    ptr::Alignment,
+    sizes::SZ_4K, //
 };
 
-use crate::mm::{
-    pagetable::{
-        walk::{PtWalk, WalkResult},
-        MmuVersion, //
+use core::ops::Range;
+
+use crate::{
+    mm::{
+        pagetable::{
+            walk::{PtWalk, WalkResult},
+            MmuVersion, //
+        },
+        GpuMm,
+        Pfn,
+        Vfn,
+        VramAddress,
+        PAGE_SIZE, //
+    },
+    num::{
+        IntoSafeCast, //
     },
-    GpuMm,
-    Pfn,
-    Vfn,
-    VramAddress, //
 };
 
 /// Virtual Memory Manager for a GPU address space.
@@ -34,23 +50,82 @@ pub(crate) struct Vmm {
     mmu_version: MmuVersion,
     /// Page table allocations required for mappings.
     page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
+    /// Buddy allocator for virtual address range tracking.
+    virt_buddy: GpuBuddy,
 }
 
 impl Vmm {
     /// Create a new [`Vmm`] for the given Page Directory Base address.
-    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Result<Self> {
+    ///
+    /// The [`Vmm`] will manage a virtual address space of `va_size` bytes.
+    pub(crate) fn new(
+        pdb_addr: VramAddress,
+        mmu_version: MmuVersion,
+        va_size: u64,
+    ) -> Result<Self> {
         // Only MMU v2 is supported for now.
         if mmu_version != MmuVersion::V2 {
             return Err(ENOTSUPP);
         }
 
+        let virt_buddy = GpuBuddy::new(GpuBuddyParams {
+            base_offset: 0,
+            size: va_size,
+            chunk_size: Alignment::new::<SZ_4K>(),
+        })?;
+
         Ok(Self {
             pdb_addr,
             mmu_version,
             page_table_allocs: KVec::new(),
+            virt_buddy,
         })
     }
 
+    /// Allocate a contiguous virtual frame number range.
+    ///
+    /// # Arguments
+    ///
+    /// - `num_pages`: Number of pages to allocate.
+    /// - `va_range`: `None` = allocate anywhere, `Some(range)` = constrain allocation to the given
+    ///   range.
+    fn alloc_vfn_range(
+        &self,
+        num_pages: usize,
+        va_range: Option<Range<u64>>,
+    ) -> Result<(Vfn, Pin<KBox<AllocatedBlocks>>)> {
+        let num_pages: u64 = num_pages.into_safe_cast();
+        let page_size: u64 = PAGE_SIZE.into_safe_cast();
+        let size: u64 = num_pages.checked_mul(page_size).ok_or(EOVERFLOW)?;
+
+        let mode = match va_range {
+            Some(r) => {
+                let range_size = r.end.checked_sub(r.start).ok_or(EOVERFLOW)?;
+                if range_size != size {
+                    return Err(EINVAL);
+                }
+                GpuBuddyAllocMode::Range(r)
+            }
+            None => GpuBuddyAllocMode::Simple,
+        };
+
+        let alloc = KBox::pin_init(
+            self.virt_buddy.alloc_blocks(
+                mode,
+                size,
+                Alignment::new::<SZ_4K>(),
+                GpuBuddyAllocFlag::Contiguous,
+            ),
+            GFP_KERNEL,
+        )?;
+
+        // Get the starting offset of the first block (only block as range is contiguous).
+        let offset = alloc.iter().next().ok_or(ENOMEM)?.offset();
+        let vfn = Vfn::new(offset / page_size);
+
+        Ok((vfn, alloc))
+    }
+
     /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
     pub(super) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
         let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
-- 
2.34.1

