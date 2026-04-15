Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePf0BFr+32nnbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:08:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F5A40805D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE8410E7C4;
	Wed, 15 Apr 2026 21:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="nJNmCEuZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010068.outbound.protection.outlook.com
 [40.93.198.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6753610E7C4;
 Wed, 15 Apr 2026 21:08:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dKfCSgx570HsRyVRuMsoYQomFn2OMlgR6KZkZMNz1eIISmKMLTe+COPbWTZBZwSGF/5bYMg7WoJUwdAYqE15Z7TKuAGYjVl5f8nI8Sbve1ggrIibgDJRTJ5/YPfVx14mBFfZdUV2Ju8HWzSVMqiY3+CM4xnHxrVuWJV277xpbnHgNPDHs9kATLHGtHPlFhmzwNhVi9MO40/4LrvqZ/F3YxHFqps38DshH/C0HDU043DLrSgcniNAD9T4fGFCdXaKFgfiX9qSuw2EE2Edpkhwr9wQbAxAuB5cqGpRvXRZWFo97QDFaP1SRKbmSacE2luEJIZtKZHZ7iyWrOsGUUfE6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Z5ekdCAL+z0+qFAGmXWpRhnb7mvYZZHEwk7q/UhNy0=;
 b=ceQK2SpKIyic3tzHwHYPN/tG3ST5aa9wQg4wJz0N7Rp40JupEDKsWt+umlf1iy2maiL3alaAsBtIy2en47zqJ93jm/jD1Q0jgCfMGUFbbrSRIdHAPz2tdcSq3WDGrNBF7Hr25ISjXurzwkQckBp3nUPawHl4bGgmZ/gGkAKOrV1VQM7f7Ir1JmvnV7lbofatwW2tsp6ql5g5Bg+bmjdJu7aFS4eXkTeK1/QEVSiV+sod9QIbboVFK63mWfSxgsYMcutnB+G0TSMfKCryO9rk4wpz3AWNtWrfB1MIed92Eo4QUVmowNheYCd+iGruUjW5FgNqgoTOAiCQ4uXXZpwx/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Z5ekdCAL+z0+qFAGmXWpRhnb7mvYZZHEwk7q/UhNy0=;
 b=nJNmCEuZhqXpG3dVZBf+yjGbY7CRKPlcdW3JM8hQcAzS/hfylL50a4Gc4oCDkkEgoMUD7k436rTLXlmt7UciuyU5frhGFUPwqxqxmg46yGchEHs/YbKICfZFfcMwJrAs2v6FXqfUu5M14bEMr90ksobul0Nei8gWnrh4OGkYrE3PGMbUp7Jl+rAaNawDDJJ1nKnOx9aPes0zRhIfDJZv6XltBpnKrtQRWHwISqtY5i7gaJMjnpCLwFT3NIA6WUn5wny1KLHtA4l3poYHuOtsx1tbGzi8GPGJ5m80FmZc0UWEO7APP3O3Kc/S861SfvuRdvs9g7WDLqawOZSpDzIy4w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:28 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:28 +0000
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
Subject: [PATCH v11 14/20] gpu: nova-core: mm: Add Virtual Memory Manager
Date: Wed, 15 Apr 2026 17:05:41 -0400
Message-Id: <20260415210548.3776595-14-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR15CA0005.namprd15.prod.outlook.com
 (2603:10b6:930:14::18) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 10a4c091-81e6-4c16-eb89-08de9b32dc82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: QZDP9TJKRCZr6rvMLFgyQGZMKjHwDIktdJGI2MUEQ1YgabXNUYD8dH/JAuZBC9GbpICv5oBKhJhTSgjvc3OKX+Ra2cIxDNP/ehlb7lbMeBHWx0E+HWeu4KBgWCC8ypx4S5Ek97LjxoB3ocAxuYp0TVshTM2nUjI1lPeSUfROj1f/cWoCTfO1UoKkCrKYle5O1PFyQ6/2MkGzC40NLE6rYTN0Kzw7e2SqPqNimZj15Y279BH9qUEpT12qn5ppTnX4a10SQo7mbSQcAL71UcIO/sj5wUa7zokwhruxRtNPAZSTVIcdvDsENIGOztC5rq+nd370t7l2mq4FWVLzdssA7qLKdzzf6bPC64GUuKwA4GmHJqbzWPoJzTHe6R98yI10pojM5Vm7ziT3pFZidi7D97SjQkKkSWv1X410DLl7tshRbMxvpLnbTQLueeM0/vGTc69GWTOlQ1v/YMhU7KwU1zkB9yhaex24b/zc2aUMyB11uzyzos2Jeq4OTpKNTKXnl/juvjaQCJI3NGOzYGyYfRRdN8T3LBu+rUGUmpoqoMAIsT7f1xC7HqrF7QVlp+I2lVqFIAYoJbd+iFYNndCLoK5dIXp6AcBPUmkI6TdggWgWDFVb4ljNSHb1bx48daJiOXRqfSD+BjnyN4oZJSgYSkxkTZ7rLwahksRfFvvVKW/ObBT9/A+OcNzZGUvllpAzqlypAwhvc5WfFg+yyARBWiDa0dnGrQ1GqG/lYXwQ9fo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Df865shGFde/arM9IQ+iRbMVYLuFvnoccOdxy1pzxTulwuqEiz1JkSba96MO?=
 =?us-ascii?Q?vEdwGaS0vuv4tybKyezZ/pt3obnC2gC7X6CFo0x6V35/RoZRuxpKMWYt5jLB?=
 =?us-ascii?Q?W2PEVPie3w1G+pJdZyFHD1PQYhwjMssDnQzhksC1nfoGtMkCj0BcwiuyS63R?=
 =?us-ascii?Q?g0KzUxoBjyxp5Z1wE4JUI9BZZS6lZn8aaN3Wi+0obbtsf+OqA4whJ9YUBdgQ?=
 =?us-ascii?Q?Ie8WpaJa5LVQus2RWXIIKK4soSboJAtspKqd+UONpiJghBTr31PEzHJJaw5J?=
 =?us-ascii?Q?xcyetmyliiTYqQomVm7WrQIsMeYKt7gjAqm+qvyxfBEZ8pxSgBcuXIkvPRyj?=
 =?us-ascii?Q?BJxwFFWvstRUHusTibB2LzykEPZUI9j55/mJUCFMzO02DveJs+p5BBl5LlwF?=
 =?us-ascii?Q?OY38dxjLDgTJPG0zT1A74eMMEk0klGfH7AzpxIQFvGjwPJibmjbzllHt3eYc?=
 =?us-ascii?Q?zLiwneI396hGgQBAt3EN3Q/V37/VE6Qk91RTC2XY6+2FeCdE+g9q1io5xQMZ?=
 =?us-ascii?Q?Vp8a+CnyVdMtaarxuheLbzXVPqbhKSRHm6v2gQ/78eg3cy5L7uP86hZkjfC6?=
 =?us-ascii?Q?V4qjtnpeDKPlqZt7pD3IKeYNl8LuWldpGNxpVFf8mAQ+UdNOBC+QWwsNhH7L?=
 =?us-ascii?Q?pOz3i2J1XkO/9oWkGgFavcloI0gTXVYER+MWqvF3FopuNEi2uaDD/j0ccpg9?=
 =?us-ascii?Q?FzxHkspOXPcNROrgiAIcdnPY+HO2yinx3HRky17jeF5shZRbmQ7+Xjchp1B+?=
 =?us-ascii?Q?9Axl3ASinTYA21TBKeB0DPzV87Fgwt98xrBTgmekdx77oqc8AtPjf3so+w1/?=
 =?us-ascii?Q?lrEGxC/2coS/WcnYsm+sAxvMJEKGRF5F3XMXtJldrdvrJfhb+mCXU+leu6YL?=
 =?us-ascii?Q?W7ciZFWH8I3ecFWOyo7z13IPzRZ345ZEaToWOnNu+IuqqmwPuC8HjsN4c3OH?=
 =?us-ascii?Q?8JoVlE7vs2blk/pPJedEynCkySGrDF9698SsfU8RWB2sZdoJZm56HEEfdtPu?=
 =?us-ascii?Q?umTnbdpb9181wfWoZdN94j16JIb05jxY7MshWxduhAnU8tFfuLxV2yjLYr07?=
 =?us-ascii?Q?XaSbaBO+Sy42i1CAMn9PMUrvWAJuqM6m9VSTGW24NJ1UWyujamobHvYv2rUk?=
 =?us-ascii?Q?Pk8e5XI8BvecuVwywx3O7Q89nO24iaZcYqSHB3GHndkwIk+L5Yzn2mt0O7QX?=
 =?us-ascii?Q?YCretmlGmCoaHdRPu2vpjWUJ8bJVxeH1lM9M5k6q4V6BHfF5x0P9GZgl2apo?=
 =?us-ascii?Q?ksgu5sKi3hJzp8s31Bdf81mrB7nUsSXy4a/p3e33Hb1JNGaRQdMzPHxiqOpz?=
 =?us-ascii?Q?eejQcfW1I51RbxZ0i8/UqlnXS7nIktjpquel3/Ndz2wKg2aaoZOkgBHSDMan?=
 =?us-ascii?Q?cozUHgZQGRDat2PQumgydeFCEEDhN+pbO7Cy92zxyREraH+8lIoQGC3obM0Z?=
 =?us-ascii?Q?muKVkocHwjyuB8vFaHbRrGTXTR/Gb1bEnBvLYF6rvRFS8RA82nZio4Roe8SB?=
 =?us-ascii?Q?q2prgFhh3J81hhp+VnnQicsDegkeir3UEoxJsmy8IRh7a76hsBq7xPmTp5ew?=
 =?us-ascii?Q?3DgACSA48e07HO/EQe29NDmSbRKJM0PCF8QPP6InzsKhW6AkNzZiXOZgHqFL?=
 =?us-ascii?Q?F0HoLo9nZU6oaCxZx1FroGG/NKspIH29Lxy7GBZw3egLfJRZ9JSWCeqqc3fD?=
 =?us-ascii?Q?bB5uwh9oe+dag8aOhbkC/0Y76CoZOqvgswQff9jlGyL9C2iO5fiRvuTbFBw3?=
 =?us-ascii?Q?6LCl9zi/tA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a4c091-81e6-4c16-eb89-08de9b32dc82
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:28.5725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LzaGZQ6B9oHYySBFJVeKiERhd6a7aqjNldunq6PHN/dB4WCONqNp1oYdsMw4PiPY9c4lAlLuwzOOO9bE+Ta8vQ==
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
	NEURAL_HAM(-0.00)[-0.977];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 66F5A40805D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the Virtual Memory Manager (VMM) infrastructure for GPU address
space management. Each Vmm instance manages a single address space
identified by its Page Directory Base (PDB) address, used for Channel,
BAR1 and BAR2 mappings.

Mapping APIs and virtual address range tracking are added in later
commits.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs     |  1 +
 drivers/gpu/nova-core/mm/vmm.rs | 63 +++++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index af398e94dd16..87fd6f0b956e 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -27,6 +27,7 @@ fn from(pfn: Pfn) -> Self {
 pub(super) mod pagetable;
 pub(crate) mod pramin;
 pub(super) mod tlb;
+pub(super) mod vmm;
 
 use kernel::{
     bitfield,
diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
new file mode 100644
index 000000000000..d92495a4579d
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Virtual Memory Manager for NVIDIA GPU page table management.
+//!
+//! The [`Vmm`] provides high-level page mapping and unmapping operations for GPU
+//! virtual address spaces (Channels, BAR1, BAR2). It wraps the page table walker
+//! and handles TLB flushing after modifications.
+
+use kernel::{
+    gpu::buddy::AllocatedBlocks,
+    prelude::*, //
+};
+
+use crate::mm::{
+    pagetable::{
+        walk::{PtWalk, WalkResult},
+        MmuVersion, //
+    },
+    GpuMm,
+    Pfn,
+    Vfn,
+    VramAddress, //
+};
+
+/// Virtual Memory Manager for a GPU address space.
+///
+/// Each [`Vmm`] instance manages a single address space identified by its Page
+/// Directory Base (`PDB`) address. The [`Vmm`] is used for Channel, BAR1 and
+/// BAR2 mappings.
+pub(crate) struct Vmm {
+    /// Page Directory Base address for this address space.
+    pdb_addr: VramAddress,
+    /// MMU version used for page table layout.
+    mmu_version: MmuVersion,
+    /// Page table allocations required for mappings.
+    page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
+}
+
+impl Vmm {
+    /// Create a new [`Vmm`] for the given Page Directory Base address.
+    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Result<Self> {
+        // Only MMU v2 is supported for now.
+        if mmu_version != MmuVersion::V2 {
+            return Err(ENOTSUPP);
+        }
+
+        Ok(Self {
+            pdb_addr,
+            mmu_version,
+            page_table_allocs: KVec::new(),
+        })
+    }
+
+    /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
+    pub(super) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+
+        match walker.walk_to_pte_lookup(mm, vfn)? {
+            WalkResult::Mapped { pfn, .. } => Ok(Some(pfn)),
+            WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
+        }
+    }
+}
-- 
2.34.1

