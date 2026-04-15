Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCrjNcz932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A351407EB2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBAE10E779;
	Wed, 15 Apr 2026 21:06:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="eSbZqOz/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012063.outbound.protection.outlook.com [52.101.53.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6CC10E779;
 Wed, 15 Apr 2026 21:06:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=abfETiRKJNLKWHwkYpIzdgGgedHw6y4GF6eM4ij1gS4mE2BKJ7KAEsAuKolCqH2X/Dxiwe0zP4GW/7sS4zt77X1Dx9491Or27UAaEAtw1s7RvHm2m9wWUOoFssjpvd72owUPk/icL47AZVS6+/g395whJj0DMpiztkuJTA1L26yCx+/lnGBAzIgnZtuznOVuEMS/Gg3dj2i63YOtoIl5O7Yme9oXFrv3yLPwOYvVWdnsbg1Qq/hUsnaSd4rDqU3ttLM/kRH0Q/5vblUrxXODqHnepwp12mcsojPy80Wsb6shz8AXdE8lOrh3HERpNwevFBJDS9LVwwqPjjBOxHBTrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xTmbIAZ7m7V/xzrPbXeaKQvv1DeFa5RJ+WyE5bpWuWs=;
 b=lNFH/bES46pFuNgRWzuVLyY4jM4lvtdbI09i4FmTt2sRbUjimxxYqTTP9c1iJ1vXxoVxjeVsGZxeKfZXxpK9MfMS9IhfkgtPeUD4w0EVrFI65gpGk8f7rBt7OqEMwEWUNYz68ALMvTzr71bMo7b21evvvZ9JgATpw094RMmFll1KOIoalLlbGAjIgOZ0lpNKOfzZLp9H4+iUpO5KuQk/8YDHiCsgaa5Ht4nx6ohcFAXBt8PkQqKkhyapPD5jRRRB8G9C6PkAihqrYBiViIzCZsHQBk0d+zvnLpLs/4rGi4Rlpskzn/ggFMbqsGq8nVHfC0Oo1g0/cN6b5Pgry8U0/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xTmbIAZ7m7V/xzrPbXeaKQvv1DeFa5RJ+WyE5bpWuWs=;
 b=eSbZqOz/GG/dDhzRskWhoxat4xcKcqC/7LYr8DDx3OoqUNnWB55a6BKT+1To1uxsMUfVwcX8nH45R/HPgLcbMAo9UAjL5J/J3X0VfIlPEAYDZ6mOZUs6ioo86svyXPnuVACl6C8RxUm95kB+DROC9JfP3oTRczHisKsF28YIsItcYjYole54JDndI1/hcvP+3iwmNozddKohjCqLF/8Licn5KPMyZIUFE5Cb44uu6T16uONOwSp2dUVAAsqiYSjwjmV/g54fIR8fidlJ2puDUqa+34UKplwxgNxw9xAuSKVxknywKwjSNMYivM9sAnJLSGjZo+wtTghiKpIuNhlq9Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:12 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:12 +0000
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
Subject: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
Date: Wed, 15 Apr 2026 17:05:34 -0400
Message-Id: <20260415210548.3776595-7-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR14CA0017.namprd14.prod.outlook.com
 (2603:10b6:930:8f::27) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: b8d50d80-aa3b-4ba1-0dac-08de9b32d2a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: aEpbe6CrpERYTjDCdxChwkjlSixAlnbgc2XgqabnX18CQBYNYsQTbszXnM7nq/nP6XDPCWMA7Q6CEjjKKTr7ZQZuk2zcRAIdf88+oq1mIboBdAkK+E109sIlhI8XgLug86zd1uBDdCnqx32LqxgVgh/ph45e1F10janwLn36RplSchHfsOBn11dl8eEytkYIIYaLS7v9cxjtQFbYx4BPgiLQp6EbQQPGYCLw2c+yGaDnjV0u+93FRsdn3Q6nO2c1a0ekh2ZtI6bVYvgvF4mzNuC2apaaMIJFZaYWxH88OfwOPNXTQs/ldHqmMHSbt6v/5iRCqa+tYC8Y8qycAITlhY262V9aUhZGKKMAOJpytI03zQjgeo6Sm6FEKXvLDsROXfZgrRLhQgFjetKEg0TBM9ilfIGSbILMhHYTEcdOveUza+wFcQVU/c2Vv7uzIrt51B7VwLeJ0bcqWNtYLWMQmZ4h1gCeib8ESNa59Drjh/Oq9pjI+c/BnqjTO1F7FIDquuajgP17cBBDVn6p3hSDtmCvfIp9BQVtrbeKl7NhuYo0Bffanjfhc5DGoExYxmarwu/+acRb07+SuUWu+034bL249lin5EHa7/4wn1mRs+9Op6BKB6nBrhtDHHpiGzVjV2e7DhnYOqPQxet6jNBPcxjnX3HcoPHaULirfo+XMkj2GYdR1xg3SWbq3ec5JKu/+KjJZ6cmEc1Z7Jc/H1Wy9fWMm94Spx+Rz94D5q7qm7I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lSVyVuoLW5L3A4rSVPCvHJlWOHu+3HIGANo+FOoHjWUjQEi/33gMHZzU8kVq?=
 =?us-ascii?Q?SxL/loJ+pALgeH4L6+mBG0bKz+GbyyQdjLZY2WU3rzzx1Q4tc3jUw9/bruVo?=
 =?us-ascii?Q?0Jp0yLP3r0tdXD9It/0AXrc4zadVrikvFclTS+hpcvYnsAxizCi852Mc0XLe?=
 =?us-ascii?Q?IqNukOSt8zFasiBP4dsd0FEA4BAvmfd4c3PCuv6CDzCjgQSpCuRyRnsfQSo/?=
 =?us-ascii?Q?xw2Wbf6LyxbrFsT+SpNhvYwTn0MO9043ZooMNDJetufSQHiOmJfFQSVl2Bfy?=
 =?us-ascii?Q?GsTc1jgmiHazi1A+2dTS8PrwlsDroZAo0wW8y4zJSZE28rAdBfVBNKUGdOtY?=
 =?us-ascii?Q?FEwvrVQd9yImdDLAm9arFRk5KDzy30Y0kx6H54XqSz2WUhoQu0HQrYUPrBZ2?=
 =?us-ascii?Q?u6icBemlFvRZiFRvSrRPZPR0J+F5y0BqZyaepIQFWoQ0I4pO5OXDrMNMZLhm?=
 =?us-ascii?Q?0RZycJNoJ+5QWXetAloVkko2HcspXqZmSW0wnpRAnNaXZODo7sRUk3vOAaAR?=
 =?us-ascii?Q?YgfosORST83OtaDKbyriAZx9fT+e7kVyZ6FnaY4x2RP7WOu9+5OCdPGx4eiL?=
 =?us-ascii?Q?/ZGNiVxlYds7uVrxrafKo5v/iR/+bquofhD9wRO4iYrU6AmBMRwJ4phwggqU?=
 =?us-ascii?Q?sR1EzYf5XhDIUoTQLhqRa0n5V8YIySQ/D2n4oUNDROQWScSkB3W7HCpCI66n?=
 =?us-ascii?Q?aOrfTdyJO5pIQAXVzCSsRYhcCIrHTttZ1Y7I+rVCZYq9JG1vdBLbzfjkA7iO?=
 =?us-ascii?Q?dqbyyePulhSFUBkDHdC3nssk4DyOEw3gFzQSZ6AxbdxPVxGbuQEoECvfwL9x?=
 =?us-ascii?Q?9N1O06a2CRKoH3FZ29HFhNsBIfERLEmps5JzLR7DXE+xWSW1tk/YoFXBGYl3?=
 =?us-ascii?Q?oCmCG8cmwhueIc+fgQyVzbcPjBsBCCd3VCSBsGUlI22rL0C9CG1c85BPuRmD?=
 =?us-ascii?Q?TBdlQcVI+ujavEFOWjrpyFZ4V1ZXeN4jKsn12Fx9I0MdIZyRVM9kSTeQk+Qo?=
 =?us-ascii?Q?xPlPyWamnGt60BWSsZjFFhaH66b7rLqbermysAZ1G8makPiKYDnKFmBhvz3R?=
 =?us-ascii?Q?bcgHqCwDckh9uCG0Kimj08yDPyqu+wJUHd4ySXrkpG1gXw1BLttNNaH3bVNU?=
 =?us-ascii?Q?moTY0hIdP6W63EXVtUYdM//vkQ4HVLTdmAB1roFUOfqJ6bn+errjCAVt7GwB?=
 =?us-ascii?Q?fcGx74+328YsseHmkGl02h6FS1FtYrRTCf4Zoe/OpEfYs5wMsDkJXvRgLSo/?=
 =?us-ascii?Q?bCyJ2tHxrHonJsgbBy7tOWUKtx/B0CxwEwT26RyUAv4quo/ZBezn32mmKIpy?=
 =?us-ascii?Q?z508os1ywwtL+6f7Btuiz6XHChVR2yq5oPOw2fOVRDBRCo2JMIsIvYUP5Nft?=
 =?us-ascii?Q?o3LCAkpRFeRUqykob8kkHVJc0I5hFLI0NPEBV1GKWM6Ru/2Mg/JcsLAnKbFG?=
 =?us-ascii?Q?M7d1GXErl+oNYrXljvQ0QrShHESu12XRhIqTmRKdTPwFrhvNAtFeE4cUBssj?=
 =?us-ascii?Q?TUT5gBc9L4kn3I3HasotVlif+lciuvRF0FM+R8jgrcbAtiBQwhB9p175hESE?=
 =?us-ascii?Q?BOkmFQORYtGqSpqjFdwMGrV/YHPETBkf4TCQ/8FAZp+QzrgaI0HfzQNHriSk?=
 =?us-ascii?Q?spLePv8LGmdnItiEr9SHvPRC5lzGUw1oes2MEnh0OfXtVjOWAbJ5nNZ7KHbT?=
 =?us-ascii?Q?iGzAOReMStdJ+b7skh7P21l6q0FM26XqHUBDZh+KifZODyHjT7IKfvlL2NJU?=
 =?us-ascii?Q?GFaGXcRipQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d50d80-aa3b-4ba1-0dac-08de9b32d2a2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:11.9034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rmFNKsOFRkhVjUXUJhOEEJ7UhdkoYWe+0ysHIG3TBvgPFqsxynDsQbMyHj3+jPzTNvpQHNMIX6U6oNTh8K1/IQ==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8A351407EB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.

After modifying page table entries, the GPU's TLB must be invalidated
to ensure the new mappings take effect. The Tlb struct provides flush
functionality through BAR0 registers.

The flush operation writes the page directory base address and triggers
an invalidation, polling for completion with a 2 second timeout matching
the Nouveau driver.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs     |  1 +
 drivers/gpu/nova-core/mm/tlb.rs | 97 +++++++++++++++++++++++++++++++++
 drivers/gpu/nova-core/regs.rs   | 44 +++++++++++++++
 3 files changed, 142 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index fa29f525f282..314d660d898b 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -25,6 +25,7 @@ fn from(pfn: Pfn) -> Self {
 }
 
 pub(crate) mod pramin;
+pub(super) mod tlb;
 
 use kernel::{
     bitfield,
diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
new file mode 100644
index 000000000000..6d384f447635
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/tlb.rs
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
+//!
+//! After modifying page table entries, the GPU's TLB must be flushed to
+//! ensure the new mappings take effect. This module provides TLB flush
+//! functionality for virtual memory managers.
+//!
+//! # Examples
+//!
+//! ```ignore
+//! use crate::mm::tlb::Tlb;
+//!
+//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
+//!     // ... modify page tables ...
+//!
+//!     // Flush TLB to make changes visible (polls for completion).
+//!     tlb.flush(pdb_addr)?;
+//!
+//!     Ok(())
+//! }
+//! ```
+
+use kernel::{
+    devres::Devres,
+    io::poll::read_poll_timeout,
+    io::Io,
+    new_mutex,
+    prelude::*,
+    sync::{
+        Arc,
+        Mutex, //
+    },
+    time::Delta, //
+};
+
+use crate::{
+    driver::Bar0,
+    mm::VramAddress,
+    regs, //
+};
+
+/// TLB manager for GPU translation buffer operations.
+#[pin_data]
+pub(crate) struct Tlb {
+    bar: Arc<Devres<Bar0>>,
+    /// TLB flush serialization lock: This lock is designed to be acquired during
+    /// the DMA fence signalling critical path. It should NEVER be held across any
+    /// reclaimable CPU memory allocations because the memory reclaim path can
+    /// call `dma_fence_wait()` (when implemented), which would deadlock if lock held.
+    #[pin]
+    lock: Mutex<()>,
+}
+
+impl Tlb {
+    /// Create a new TLB manager.
+    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
+        pin_init!(Self {
+            bar,
+            lock <- new_mutex!((), "tlb_flush"),
+        })
+    }
+
+    /// Flush the GPU TLB for a specific page directory base.
+    ///
+    /// This invalidates all TLB entries associated with the given PDB address.
+    /// Must be called after modifying page table entries to ensure the GPU sees
+    /// the updated mappings.
+    pub(super) fn flush(&self, pdb_addr: VramAddress) -> Result {
+        let _guard = self.lock.lock();
+
+        let bar = self.bar.try_access().ok_or(ENODEV)?;
+
+        // Write PDB address.
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
+
+        // Trigger flush: invalidate all pages, require global acknowledgment
+        // from all engines before completion.
+        bar.write_reg(
+            regs::NV_TLB_FLUSH_CTRL::zeroed()
+                .with_page_all(true)
+                .with_ack_globally(true)
+                .with_enable(true),
+        );
+
+        // Poll for completion - enable bit clears when flush is done.
+        read_poll_timeout(
+            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
+            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
+            Delta::ZERO,
+            Delta::from_secs(2),
+        )?;
+
+        Ok(())
+    }
+}
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index a3ca02345e20..640025041618 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -548,3 +548,47 @@ pub(crate) mod ga100 {
         }
     }
 }
+
+// MMU TLB
+
+register! {
+    /// TLB flush register: PDB address bits [39:8].
+    pub(crate) NV_TLB_FLUSH_PDB_LO(u32) @ 0x00b830a0 {
+        /// PDB address bits [39:8].
+        31:0    pdb_lo => u32;
+    }
+
+    /// TLB flush register: PDB address bits [47:40].
+    pub(crate) NV_TLB_FLUSH_PDB_HI(u32) @ 0x00b830a4 {
+        /// PDB address bits [47:40].
+        7:0     pdb_hi => u8;
+    }
+
+    /// TLB flush control register.
+    pub(crate) NV_TLB_FLUSH_CTRL(u32) @ 0x00b830b0 {
+        /// Invalidate all pages.
+        0:0     page_all => bool;
+        /// Require global acknowledgment of the invalidation.
+        7:7     ack_globally => bool;
+        /// Enable/trigger flush (clears when flush completes).
+        31:31   enable => bool;
+    }
+}
+
+impl NV_TLB_FLUSH_PDB_LO {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [39:8] of the address and shifts it right by 8 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::zeroed().with_pdb_lo(((addr >> 8) & 0xFFFF_FFFF) as u32)
+    }
+}
+
+impl NV_TLB_FLUSH_PDB_HI {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [47:40] of the address and shifts it right by 40 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::zeroed().with_pdb_hi(((addr >> 40) & 0xFF) as u8)
+    }
+}
-- 
2.34.1

