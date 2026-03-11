Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM9DBSi6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EEA259FCC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B31810E81B;
	Wed, 11 Mar 2026 00:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BIzrn2dS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010070.outbound.protection.outlook.com
 [40.93.198.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFAA010E808;
 Wed, 11 Mar 2026 00:41:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TEjrK3ll/+QG/H7crcaN/tphw1fLVoXW94TqKNBWgsvmJ5OwuNhL7Suea6Da++EhUauRkWdzZBYKZgOKJ56deE7tKAT6oOnD2jV8SUnrFPLxIMf2YocY7kij57KzTJPtCX49t64VUp34r6YXzuvO3z5CYfZlbvDhLkvP1w6E/iLQBxIklmmYywMe9+/UceSi5KCLL0Io0oZBjy6vtkXud4vNAnPRCfsaDgO+dcF2lj3TLkEqjvCThw4ilbFw1Rn8y+2MCd2joG50ZGSEL6MpnCLt1NWkNYYHq39uj0/MAsAtQL9rSZmjfy/6Jq2sDXaIfLTNl2mHqObKn/9pNNdl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHJBUDiYWq+PbVeY3WsVzfxq9mop3SJ9Azmglm/3v4M=;
 b=aPS7dTNAnBmBUZLOOKvygvLMG/RT2wO2JneSx7VS91IsJ2tdWAfESVFswkxhR6sDVqnndVpaHV+ELz2C9JLmDFMkaWtH7AmXdJ/i3RhpzpPfiqnShzqv2Km4ddK9cJSbwEwll3fXqxtuEdfsqgIgGM/NTutE8SqEP9t0aePGLf6Zzycue71A9tlJgrqnFjv5tMXg120c69O7nOhBtZFPQzOg43wfUdiA5JlPKcBqe6a88owCxImSGjxogtqOx2HHEjLjwNIZw+qBTPp4S9KZq3OuKU9dpVlrHnGBVMuhOpdD5MfxO8ONLa2HYFkpAhFnsnhaBloNHFigZUSlDB76Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wHJBUDiYWq+PbVeY3WsVzfxq9mop3SJ9Azmglm/3v4M=;
 b=BIzrn2dSzKlqB1t+k3VKO76viHwCL+xhUHZ4dDTcatp0uL1M5xJczK004ots+Zq/zfUjM2obG2u2RUWsDHuJu2LzkYYTZuWbIhko/FboumDP0kJNFjwtOofUtb0A32Cp+TA4uJzwDaDdXG0gjX1vrDnzywu3OFner8bYCbFNhG8c5tWz38BXEqULrQK4W0rA5LSQgy1neyy/5v1l+Sdz9lDSO+GGII0xvKPlsX49siNvIG+Hli7uhA/cYZjKONYvEYjTlkx9ycqeM5qOQUBDGbcRZnODYfDB52tIVcc8NPDWYrLziaj5nZpzInneM7a+eJtp2xJRiNpoktsfTfxrWg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:59 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:59 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
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
Subject: [PATCH v9 19/23] gpu: nova-core: Add BAR1 aperture type and size
 constant
Date: Tue, 10 Mar 2026 20:40:04 -0400
Message-Id: <20260311004008.2208806-20-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0051.namprd03.prod.outlook.com
 (2603:10b6:208:32d::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: f398c35c-d254-4bbc-c52f-08de7f06dd4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: bYt3/ohkG576xorueEU9Mgqmh/qx9UjB1vjWbL3khhEcXk6GN+kzPw7Ye7Dzr93ca9Nlj4ehZc6vZDV9lfaghCpt2xVLtukDFQ8yqU3vlKQDrUThcgq3CQXoiMYy+T/NXPPfwDGu1Hsjt+iYhIT7qntuxznKNGr029di6PdgJAPxg1xnFY15b5sx7YMjKLDSV1mspcRuP+/LYYeuLxj1l/dctTVJhLan8ASduWrIT30ZxTVYLY50Btyxzb9Qt95415ERd/+emiOOwmlNKOi+ogtbrJ1OWzPf+9aexFYUxsdLCV+KnH3esSktKvC40w4aC6Q5Nrhvg0a0tdajBResG08sXc7DXPicqe2lOSz+tvKNW8SAdjAyoYYkipvO9Pry+Nj7odDprMWdOHax6isdWNH9tRJ3/Fs2/7HvXT59X4QDPSQXPIqD62krKSFf8HpKHx8k0ojrd9DWh8NV+1Krc1rNi9Z3r21I1FvJdQb+KOiBqPNWp4YT04OKsjCAzPd6SMlSOLTmSzdJEeATf4017Ubn4P0hBQEGkaDicPpczTD/6gzfeLaRfxigM0PYf05RT+eyt7CPoKaibNjxWXdlgqG3o0X7Tx9B6mV/jH2nPgjW4res3UKwJNYjTIxuI6L9WfgpeUfOEFBWwXCbHYXFpEZVrRXGc1Tzne6etIpUKgmLr1s+ZYikE6QpavEgR2MEmoMbOxVqu7pmzzbr3XekaK8sv3G6CEFh0ERdYqPmuJ4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rqFyQ9fJju+tRD7v0+HOFA5AidpfmPLJqvF7Zdd4zN0YKk2MjIhMmlmHWaOX?=
 =?us-ascii?Q?r3C7xqAGMdVaKmbRaQpdF3PM4+UfzQkzcOdbwvvw8fFwYF8TUBJCrVszJNVu?=
 =?us-ascii?Q?3ki4fYgE7Q264wj4uHP3021nGuVDxOcdiTy6VSdNOJ0C9uCXpDxgRHmmg7lf?=
 =?us-ascii?Q?1YWNfHcvjL3O4/SFpWFitVW8U2TWhuvVBp9PfQnNFiM9OlSGiQLoJgV10aw3?=
 =?us-ascii?Q?ncQ6GkTyOiLeCgFqrXN8Y2jT3f1ArthgftCUuu8imG2ISG0IEWT7+EtfgWBA?=
 =?us-ascii?Q?4hjZErcJcIWb2MWBpQwxiKVw8OTTQL/mNI5ZrDNTgTKB25/qz+4nO+p6SOD8?=
 =?us-ascii?Q?l3vD1tWU651Db51gH44S/thFwum9CfVc352oMdizmudAxWyDNBlFbKDrfO8Q?=
 =?us-ascii?Q?tBecbSd49KZe429SLsRhCoWGWeKx8Zsyn5ndZ/ObFHXzTKFWLXMiYMRoaoLZ?=
 =?us-ascii?Q?QEwABrVaJTRYtpPvQ3jdkEff9Hszq/O63BMqhca6I0x5oBhdgVP3zNQeaI7X?=
 =?us-ascii?Q?XJ8t6sR1rUO4iRTLKN2oJvkXuGBcpCBbu/6T9ca6TlBjLx2NrkF8GKzx9Nl9?=
 =?us-ascii?Q?HBRgvceWySnMlnkssffUliCYchaplhszBUhVBdFbzMOl8JHZ/Daak8iOo69B?=
 =?us-ascii?Q?T2HfqGhKt3OGLGdLPjLb49JWZsYW/s9a1v3CpyJ+z64JqwRIOxn/isYO+Im3?=
 =?us-ascii?Q?9IU+ewx9SLnmFgU+oAZYibVDO01CrchzzZ5GyZrpmstswixxGHS8s24gvDaw?=
 =?us-ascii?Q?aBse8ew5yX/26eAwRVnVV2iBHy8pHuB4m7+Bo8xUNJ/bI/wX3zsv4niLv2SK?=
 =?us-ascii?Q?ExYe2BHcsyMsPJhHRs4o6QM7ZJ31PRNnGuScnrwFTbyoTQj4RKVyBLiMDrpU?=
 =?us-ascii?Q?5Y61DrFJRjhBiulQu0TcFG5N46aelG0xIbOyu5knqk6WMlVZm5Xt/F2YQtks?=
 =?us-ascii?Q?JILwIfGMqUBB30Dtd1rbMjseqR5UF79XggipgtGssN9Vr1lw7VhubHToAoPb?=
 =?us-ascii?Q?WTko/dZoI0U+ckNCh/9B6buUYFMCUH/6E2hOtTuxFdPQiSIVW+jNucCutKR+?=
 =?us-ascii?Q?zbWMPHbT32uRyVL4g2qbnX49FcEbvLoSDyfvN8LZO07B4YqoiiHE/eF3Ijf7?=
 =?us-ascii?Q?HtjATbXxySwaOPs3MnKZHrFR6NkTntD1NoKMrE7/8HqHZZD4Yclw606ihdlU?=
 =?us-ascii?Q?B7NoPFv6VHYZlzWLKIARnCZt/BMo55GXb80OeaoLThRQ4CgFMsUVSjS2wYlk?=
 =?us-ascii?Q?gxs1hYXHO2rgmCnkLIGxwAaiOBN6MZGuyysP+lSJmi6+nNIqJuoaj+NkRdLC?=
 =?us-ascii?Q?+m82DdcEcSF9UTHNjA1UUyQIbokYUz2iDCbZNJc9U7S1uk58W074707VHjBD?=
 =?us-ascii?Q?VSAwIGK94im+c0RGLCsmWqRTuNkXJVT7pHHSnYk+z2vIZBYbyrjR7Q/Rewcv?=
 =?us-ascii?Q?LcQXkB0jo4uSYJgbVNqh4vx9jWL605kGQnQiyG67WtNu8fy3nQOz5f9ACIFq?=
 =?us-ascii?Q?AD89gyllmOTvUf9CZ2hhN8fhdW7DzuTYyheyaUdvtSqEPoNkt6yz0TVyIvdd?=
 =?us-ascii?Q?sWxfLTttZt4sK8RmxNOZTPSAhvJegvGiKDSB0ZLWvMZLQ5o1FT3LvoHXKdeX?=
 =?us-ascii?Q?XAEMkp8fZyDUFtqygdj+bL3stAhe2OXlG94VYpLI+uqow5r92F9QVOfhV/eS?=
 =?us-ascii?Q?ZyrrSOHxi6MP/1BUfObndjBuuiwLqFYYAgOy18YS4N6LU5sm6C7uoKT1bCzU?=
 =?us-ascii?Q?MpnjHhIzIA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f398c35c-d254-4bbc-c52f-08de7f06dd4b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:59.4538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M6ZyKM4CMgtbZFy+6jKJzt0qWDuMzif6syBV5jkOnRj6TTV1yYXVMAwdgKR6yi0kEfIPjutVhmE67cvjxn2Q7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4051
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
X-Rspamd-Queue-Id: B7EEA259FCC
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_GT_50(0.00)[57];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Action: no action

Add BAR1_SIZE constant and Bar1 type alias for the 256MB BAR1 aperture.
These are prerequisites for BAR1 memory access functionality.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs          | 8 +++++++-
 drivers/gpu/nova-core/gsp/commands.rs    | 4 ++++
 drivers/gpu/nova-core/gsp/fw/commands.rs | 8 ++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 84b0e1703150..b4311adf4cef 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -13,7 +13,10 @@
         Vendor, //
     },
     prelude::*,
-    sizes::SZ_16M,
+    sizes::{
+        SZ_16M,
+        SZ_256M, //
+    },
     sync::{
         atomic::{
             Atomic,
@@ -37,6 +40,7 @@ pub(crate) struct NovaCore {
 }
 
 const BAR0_SIZE: usize = SZ_16M;
+pub(crate) const BAR1_SIZE: usize = SZ_256M;
 
 // For now we only support Ampere which can use up to 47-bit DMA addresses.
 //
@@ -47,6 +51,8 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
+#[expect(dead_code)]
+pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
 
 kernel::pci_device_table!(
     PCI_TABLE,
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 18dd86a38d46..1901c8928ab8 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -190,6 +190,9 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 /// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// BAR1 Page Directory Entry base address.
+    #[expect(dead_code)]
+    pub(crate) bar1_pde_base: u64,
     /// Usable FB (VRAM) region for driver memory allocation.
     pub(crate) usable_fb_region: Range<u64>,
     /// End of VRAM.
@@ -211,6 +214,7 @@ fn read(
 
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            bar1_pde_base: msg.bar1_pde_base(),
             usable_fb_region: base..base.saturating_add(size),
             total_fb_end,
         })
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index acaf92cd6735..75a3d602e6ce 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -117,6 +117,14 @@ impl GspStaticConfigInfo {
         self.0.gpuNameString
     }
 
+    /// Returns the BAR1 Page Directory Entry base address.
+    ///
+    /// This is the root page table address for BAR1 virtual memory,
+    /// set up by GSP-RM firmware.
+    pub(crate) fn bar1_pde_base(&self) -> u64 {
+        self.0.bar1PdeBase
+    }
+
     /// Extract the first usable FB region from GSP firmware data.
     ///
     /// Returns the first region suitable for driver memory allocation as a `(base, size)` tuple.
-- 
2.34.1

