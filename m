Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFt6GNP932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1008E407EEF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B77410E785;
	Wed, 15 Apr 2026 21:06:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="hG362j9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010063.outbound.protection.outlook.com
 [52.101.193.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB67F10E784;
 Wed, 15 Apr 2026 21:06:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sB4uDH6HtX+K8yfXJgRrHgwGByPHOxCKv/3d3CeKk39eC9o5Bd/GgXWbE/xWqONhDor8gw1OKn30wo+2Xs2R6wJgEntx/4cINj27NHnrSpYj4Ww9fsRIpZ4+borJOCRlf+gmslmf5JTxkAqFayPIlZLHg49SUlAKlJDL5dzGMeMuPRwr5QNbZJnryYdFMZsrOOMR3K4DI04IgNl+vHnK45xTLWN+xTcavU2myD3NXWzNshboLgFmNUZr8Pmh5X5AxHMjmuqIaM31itJQ850FN/2DLpFLREqD+9IluJzvCnOpASSG5xaYTBjeFS8RA8ITncqo+6GV73pTSxlQfSw9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwtSupEA8ZTbzlTfzcM0o1dXbzXBK/JEjCxuTO/PW4U=;
 b=KuWZV7Cr0xaF/l6N3KsSE3dLfb2BQezeMLJF6oxj+Vgdzaawm0JHNIwOlLHu/DiEii+lsy7k78uaPYIV7EnjDqBsNGKxhue45jr4yyTBoHZjeFHvTNRUa9Ahroq1v+3o/k6Dyqo3428ALii6Krbwad48O0LtcruVVar+SIrPnqoMCBKTWNrTdB8kkDR/IyqkrA/xiud+5feUxzjHvOjdCGa5x84kiws7JXA1JmBhtTFp2AKUcz5UjH90EmXx3KCryvAv/B+exm9nrVPEoAQARhG62Ntt1je3qQY+QebDcHIYT96Cay4tO0RNCLSDcJCZHDr8l6OpCR3cBLqQjTHgCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YwtSupEA8ZTbzlTfzcM0o1dXbzXBK/JEjCxuTO/PW4U=;
 b=hG362j9ijvjErwPhueldLo1TCH1UCe5ADNblZIV2sxOY3w72Np0HZ1u3IugAyCsP4Kym+5nHuIOKoiowNnQOHRO6VGOVgoAS0QhbrtRHJQ4qkJadC8Zxb/8eoBCB7E+Lx7Z+yvuij9R9CYvRPgJoS3/bTlaSe9w87CorvhzZYu0WJT1EpVySBsfn2XiklrWOfBh4MUuGqe2tj1oUyyi7NUlX9BdPpLpsUTu42WIAb23OISMbpZX17bY7MOPqwP56A2yH141DctVyHK7LnjZnQhjRImovKEiiVaNjAeoY3bVUsdWBnpffFXPWkqeSVOcCk3/druJo4Mk5MSqYQW2ujA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:14 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:14 +0000
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
Subject: [PATCH v11 08/20] gpu: nova-core: mm: Add GpuMm centralized memory
 manager
Date: Wed, 15 Apr 2026 17:05:35 -0400
Message-Id: <20260415210548.3776595-8-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY8PR12CA0063.namprd12.prod.outlook.com
 (2603:10b6:930:4c::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d4b1a6b-e6ad-47cc-f79c-08de9b32d403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: nb8u3l116LHZRBaSYmhCX8x/4qJQ1YI8vGMrfLHh7OI3bFB7qBKvmu0ozkl26tN6YTXB04kGUVbIHj/CXopLYDTD0NSiuS02Q0JI5Fljlbgc1dsseJ/dDwDy/6M6Qpyr+SH6WQVTFJ+OEBHqaSwR+Z8I6ei7Y6fNDBgvo8ex+FptGmc60wQvXnixDb4dRlB0qYZviyPkEdWhedNjht5XaHi19QHvYr3Sh1dpQ2S1au7QQti7/wl1+ylzly6SN7K1DlYrY7ZwQQuZMLorBaBBpCblR9vc2dtjWmxVX0arOtnGOHdGBuy3T9pcnimewb+h4jXhxG26FbdlVWE/n4LIEf6gVNdvPXvMAYNIOmqBmkazoigtwdnyVUVgOZFI0uyuuyCxM2zzZzuwwNGHrnrQy8tiNUSfECm27/+OlPpNueaJtJzr8hI8hAx8WVbjXTo6WRnodcYIKKUUKWJXI4QXSjyp2QmmePJEuPejM1Knw+4a2LCwY1/j2vGjdtuGuWdHz4B9HB+BQYbJ8ikye+RZL8oxbJ4Lu5GCkiWNUNGmp0LWtWJds1XiJOlo71SE9xNvni5dZVVA+Mz5VCgpM3bItdG5kOKwsCGHlmHZPzaq4IiR63gUQe5aldtpvdRBls0o6/H9zsJ8WW168cWCD5F5YIHXaQgxPVUBedV4XW5HbaI5XIlMQh2c1x2S40dyYqRa3iTNFV5rsUynMemCJfoJD+IZ4N5JIhAMe/9uEhp79xE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YeucUyDryX1GenK7doBd9jjOO6gqP1vt8g4zQayWXPwHbzvlWxyCarFa4k5e?=
 =?us-ascii?Q?F5FYlvM+mrspKgag1BL0LzTjLaLuVgTS7kbYX/ttCFXHakycWHB+wT2zTfH9?=
 =?us-ascii?Q?gh5VGTPtlKeF656yxXHpkltkT7CVhYawBd3ATQ9a3kjXDUhfB95GGVEf5sAK?=
 =?us-ascii?Q?IrmMGNQY3AP/h1PG6zUpoYSqtZCeXPEwPSbsRVr7UdLl3HxL2anr2AoyHuvy?=
 =?us-ascii?Q?CNwU9VZW5MsaBDznhSFVyunELaJ/We2RLfwX37uRdOlsLQDwLTj2weGobd7d?=
 =?us-ascii?Q?a8PeVZz2sA0jqPZlNC5ikSolD4F8Bn2xIBWI3Bg0PLDDzzf3UfoL6hgiljSw?=
 =?us-ascii?Q?WSbxj4JrIDMTT05AHYJJDfunxXIqWUWKjcP/qXO5QCZdAwBEoU55L7pdYIEs?=
 =?us-ascii?Q?3/8k0XTlg82IYdGzq55OftSbg5QUc7vqDxhtnJ+VAUJeKo/f5vEv9YEErNEo?=
 =?us-ascii?Q?wyC28tXpDag/Q+2DYDSJtam2TL2ciHBU1MYmUSK5qjScabfLeDid26kj/uzA?=
 =?us-ascii?Q?k7zJLbbz7cQnwJlOsC90w4BYYGEZjs3XP9gMIJopdJ7QSDL+npfC133IIP26?=
 =?us-ascii?Q?p8fe3lxjFB9Q0KPGZ6oQWWzYcIhhqF2wOcxFFotCc1iWh5ahclRNfhZvawpF?=
 =?us-ascii?Q?j3QPIZnzvD0TF8Py932bK5RudyQAjmbfw08yyGZTJ6600pKJoT+eMO5hPoKf?=
 =?us-ascii?Q?kC9yoU1R7YehUVxJ7aUzsE47G9twTqMsFzKMHyUMs0UDRHUhJ6LK5KsrTQEH?=
 =?us-ascii?Q?69zGFYKGMppEzmlQE0jKbmAavfmpxtVmIq+9/Ln5Pim2Ffixm0jh2y8hqk3I?=
 =?us-ascii?Q?MT7KrZyBpEuHw1D0bk5dML0h9DDXiby2/mlhxdibAIKpl72ChFOU1ZEdT3Ib?=
 =?us-ascii?Q?F2o9gLrRf6e3Hc8vV4ViROkbuWoaJGdcGrc4AhKdZlMHTS2FbA/60ywE4WUf?=
 =?us-ascii?Q?v6oQa+JEjn251DQcvaG8VnFynZyMpSdqNZVtpQWkOHt0/XOi/B9r6C/n5G8B?=
 =?us-ascii?Q?hVbInIZqtRApm/HMoCkobZpUpjZAKr81HF9yhh6M30OoQBW0Itf+BT27Lknn?=
 =?us-ascii?Q?KLy5UREeDP5IRTYg1gjnGWzOIVbFfJ18/FjH27Oy+tc35ujlow8muv/4X1C/?=
 =?us-ascii?Q?fiooq7lTzd16/UyOi1bh0CLAxx3z7bh9iFXNp+xts/v28RV/LgpxR5O6ARfU?=
 =?us-ascii?Q?tqKwr8I45dykJNN5gPJ65Azi5GtmZW31h6lmKKKh0lc1EpAVHiCYFsAvwqH9?=
 =?us-ascii?Q?uKtF6K9wd57yTyuGi2o9VdcEAkcGJUYkCv4OMt0jCaoyoBfl/nQnAcup/3nC?=
 =?us-ascii?Q?xT4gP891JGXNdMPzDfmaU1MmQvjWfyIbzK/oOEV7IyW/AeuSn+jeaiJ2l76p?=
 =?us-ascii?Q?wckBpm8P5JT5DOBHx7jZ2kQx+jDRAfe6zO39RPyfTQxRraAMe1FgBvyzNqL5?=
 =?us-ascii?Q?wU8aAXJw6KspheQ3uDBN3EB4NXkPV7iryQO8D3LPRa01Skd8ZKMv1WAFLudq?=
 =?us-ascii?Q?VVsJqe9ZxOkLTbyCjpiB2ngg6UVTAk9GnYG+0AXD2+KMQPPVA3jxDr5Srgwi?=
 =?us-ascii?Q?aBNEggLq8/FFNbI73nA7IK7xa+cxSyJFr68zXpB8GY+oHVazhN5Z2/aS1fqi?=
 =?us-ascii?Q?E9mumJBYxcetVwDA5U8hiZHIWgPxXLA8/odJv5tqwr0Lxvfx+w1Xm3Musxtk?=
 =?us-ascii?Q?7tyRg+OcKAuTc4+19P3r/itxMvOGgGV5sZyFsK08kilhEfWrSOy1pkyAyL73?=
 =?us-ascii?Q?e30stfErcw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d4b1a6b-e6ad-47cc-f79c-08de9b32d403
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:14.2083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FeD0neAglxKWjJz0jYwmJ/tgDwP3hQZYeHjaCDF8bAG33Z7ZSGpB0/YIKI5DvEIvUAu3nmoUX2RIpsK2hthcyw==
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
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1008E407EEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce GpuMm as the centralized GPU memory manager that owns:
- Buddy allocator for VRAM allocation.
- PRAMIN window for direct VRAM access.
- TLB manager for translation buffer operations.

This provides clean ownership model where GpuMm provides accessor
methods for its components that can be used for memory management
operations.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig         |  1 +
 drivers/gpu/nova-core/gpu.rs          | 34 ++++++++++++-
 drivers/gpu/nova-core/gsp/commands.rs |  2 -
 drivers/gpu/nova-core/mm.rs           | 69 ++++++++++++++++++++++++++-
 4 files changed, 101 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index a4f2380654e2..6513007bf66f 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -4,6 +4,7 @@ config NOVA_CORE
 	depends on PCI
 	depends on RUST
 	select AUXILIARY_BUS
+	select GPU_BUDDY
 	select RUST_FW_LOADER_ABSTRACTIONS
 	default n
 	help
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index b4da4a1ae156..c49fa9c380b8 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -4,10 +4,13 @@
     device,
     devres::Devres,
     fmt,
+    gpu::buddy::GpuBuddyParams,
     io::Io,
     num::Bounded,
     pci,
     prelude::*,
+    ptr::Alignment,
+    sizes::SZ_4K,
     sync::Arc, //
 };
 
@@ -25,6 +28,7 @@
         commands::GetGspStaticInfoReply,
         Gsp, //
     },
+    mm::GpuMm,
     regs,
 };
 
@@ -238,6 +242,9 @@ pub(crate) struct Gpu {
     gsp_falcon: Falcon<GspFalcon>,
     /// SEC2 falcon instance, used for GSP boot up and cleanup.
     sec2_falcon: Falcon<Sec2Falcon>,
+    /// GPU memory manager owning memory management resources.
+    #[pin]
+    mm: GpuMm,
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
@@ -274,7 +281,32 @@ pub(crate) fn new<'a>(
 
             gsp <- Gsp::new(pdev),
 
-            gsp_static_info: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
+            gsp_static_info: {
+                let info = gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)?;
+
+                dev_info!(
+                    pdev.as_ref(),
+                    "Using FB region: {:#x}..{:#x}\n",
+                    info.usable_fb_region.start,
+                    info.usable_fb_region.end
+                );
+
+                info
+            },
+
+            // Create GPU memory manager owning memory management resources.
+            mm <- {
+                let usable_vram = &gsp_static_info.usable_fb_region;
+
+                // PRAMIN covers all physical VRAM (including GSP-reserved areas
+                // above the usable region, e.g. the BAR1 page directory).
+                let pramin_vram_region = 0..gsp_static_info.total_fb_end;
+                GpuMm::new(devres_bar.clone(), GpuBuddyParams {
+                    base_offset: usable_vram.start,
+                    size: usable_vram.end - usable_vram.start,
+                    chunk_size: Alignment::new::<SZ_4K>(),
+                }, pramin_vram_region)?
+            },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index e42a865fd4ac..eeecf81a0ffd 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -194,10 +194,8 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
     /// Usable FB (VRAM) region for driver memory allocation.
-    #[expect(dead_code)]
     pub(crate) usable_fb_region: Range<u64>,
     /// End of VRAM.
-    #[expect(dead_code)]
     pub(crate) total_fb_end: u64,
 }
 
diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 314d660d898b..fa92540bb006 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -29,12 +29,77 @@ fn from(pfn: Pfn) -> Self {
 
 use kernel::{
     bitfield,
+    devres::Devres,
+    gpu::buddy::{
+        GpuBuddy,
+        GpuBuddyParams, //
+    },
     num::Bounded,
     prelude::*,
-    sizes::SZ_4K, //
+    sizes::SZ_4K,
+    sync::Arc, //
 };
 
-use crate::num::u64_as_usize;
+use pin_init::Zeroable;
+
+use crate::{
+    driver::Bar0,
+    num::u64_as_usize, //
+};
+
+pub(crate) use tlb::Tlb;
+
+/// GPU Memory Manager - owns all core MM components.
+///
+/// Provides centralized ownership of memory management resources:
+/// - [`GpuBuddy`] allocator for VRAM page table allocation.
+/// - [`pramin::Pramin`] for direct VRAM access.
+/// - [`Tlb`] manager for translation buffer flush operations.
+#[pin_data]
+pub(crate) struct GpuMm {
+    buddy: GpuBuddy,
+    #[pin]
+    pramin: pramin::Pramin,
+    #[pin]
+    tlb: Tlb,
+}
+
+impl GpuMm {
+    /// Create a pin-initializer for `GpuMm`.
+    ///
+    /// `pramin_vram_region` is the full physical VRAM range (including GSP-reserved
+    /// areas). PRAMIN window accesses are validated against this range.
+    pub(crate) fn new(
+        bar: Arc<Devres<Bar0>>,
+        buddy_params: GpuBuddyParams,
+        pramin_vram_region: core::ops::Range<u64>,
+    ) -> Result<impl PinInit<Self>> {
+        let buddy = GpuBuddy::new(buddy_params)?;
+        let tlb_init = Tlb::new(bar.clone());
+        let pramin_init = pramin::Pramin::new(bar, pramin_vram_region)?;
+
+        Ok(pin_init!(Self {
+            buddy,
+            pramin <- pramin_init,
+            tlb <- tlb_init,
+        }))
+    }
+
+    /// Access the [`GpuBuddy`] allocator.
+    pub(crate) fn buddy(&self) -> &GpuBuddy {
+        &self.buddy
+    }
+
+    /// Access the [`pramin::Pramin`].
+    pub(crate) fn pramin(&self) -> &pramin::Pramin {
+        &self.pramin
+    }
+
+    /// Access the [`Tlb`] manager.
+    pub(crate) fn tlb(&self) -> &Tlb {
+        &self.tlb
+    }
+}
 
 /// Page size in bytes (4 KiB).
 pub(crate) const PAGE_SIZE: usize = SZ_4K;
-- 
2.34.1

