Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBlrJtA6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A037194D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35E210EB5F;
	Tue, 31 Mar 2026 21:21:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="qQ5mCDlH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010023.outbound.protection.outlook.com [52.101.201.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E925710EB2F;
 Tue, 31 Mar 2026 21:21:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AwqKap7pjnoRxCHrW6ZURcK3N59RMhajYZFufWwnmzNIQeBQIdWdp3dl1JzvdoJJo/zWb7ZcFmR0E8Ojqmy9YZp0mZq1qLvQcITRfy0tWy6KLOwh/Z1NzDELiK+UQ7w3enQ5+N2aP2lUeJC+z3Y2uja5EtWv9e236m4Za5yedgLE7k/NLW9Duye314b9tJYcV3z9lEaHdQ4jO/srwrS5OhugDacopziNZYA4aU8izTDsLSAKinpjQwYMNbhrlmESkM9jceEwiDbskGbFWlPnoW1aIKnkK5t71v9VcPqIDoDOIL7u88uGRRoL5yI16F8Yw5eSQbwsYVCtvgF9SKc/6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDBCutnsz3JPI4JJT75zhjTl7rs9/+BdsTXMsrNf598=;
 b=IDjzqJZd9yVpJd21V3K9ithvYwyB32Azn9hHi2dAGRO0Txq+nMTkt+cnv7glqdX4yCHK42TWunW+acCh12yuN5R5nWH9bd7aehdpK+aOV75IbZg2XIlSbnSiO4AbKxjcpLEQTXeY7VZoSNfO+U2IwNTPzgIjJu8Bpwt4eVpgSvd2rodR+n+/bLjZyKkWmYWQ54U7qQ/CauVQ698iv6CrYUotfzn/of01ZBwaM0pmFvxOaQdSydBHQDbuTNckjDjTFcQYFS8TPeKyP0b0cC/HFcKnKO6NBoiw3ioKuTIdNOfgYt6rQg76hGQDMXXxFbXZvD6U8nxiWOPQja4hU3uMig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LDBCutnsz3JPI4JJT75zhjTl7rs9/+BdsTXMsrNf598=;
 b=qQ5mCDlH5XYXDZg4xrKavWQ/76U5ts/sttj5cuvZdj5VQB+x7QfWLn2qL78tPvGijfWmRElA+EQIRh612bK7XRsY9y9bwSpzx0jL1XJ99wJCC1A/hIz975zMjVbg33rwvXnuorX+L+MfqCbudFSNNJvjeIRh+KHT+oRL1q4qvjxSnh5nkSppHsOEUQNpxNwcDeht3CLxk8Qb+AMQL24gcahIhXWcvJQmaS3UeChx8Xc/nsgA2dvodaKtjRbtTLKBi25MtnmBnue+7MKFP7bO7YGyCp4iXU2mmDbpJYPPPnVAP7TNtl19DJOS6A3+18ZoDxtcezj9KlGVbEkJrTWhEw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:11 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:11 +0000
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
Subject: [PATCH v10 04/21] gpu: nova-core: mm: Add support to use PRAMIN
 windows to write to VRAM
Date: Tue, 31 Mar 2026 17:20:31 -0400
Message-Id: <20260331212048.2229260-5-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:208:36e::28) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: a042bbf4-806d-4e2d-d3ae-08de8f6b6e56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: LyKJCwZVy8daUDuyC/eFYi14GdHOsLZfQr2AVlgb/q3CkdW90bu9Dg9PLhTlP/Lj0W3Fo51CrwNbgifOHRYyp2ZOZ0qell12S/Wq4Ahf7qiGJRZlhMeGfDXtWaJ2YvqrQ65kiLI1e/9iL6QMh2pEx8W/XDGnDjw1PGCkxgEkELnxMpwBZyMyIfNB1+ggQa7LATESm6K9Gt3QKW450++MeNwET/bLsfWWTMd/9Pz5Ok4lBHscc78tXWrPw3sKJsmLnB8CsFmHE3Q+izs9xxgn6QqIinJ0YWJSxvKvdD7cw4QdF/90FeXgO/12siEZSHtD4zIRRiy2V44OAoHfCnoxb71ZIIKtDaEcF6dSXuQFRNjgMF5bsSV/q6BjXEZbOsYG1PfGSSTyVVEiRYeEBVpJLkmxpPrqdMGqOO1/bEo2Y2Yrio0E73BeThcYzNX0JYXiu2DgAaY/ERh/FO5QQb7V/i3vKQU7atBwW6VPjiWKmmsyDMBE4GfcP5s3LTOngLBX22uB9lIWHEdW/PU7+0wI4rmY1NkLQfQ46wnrWsBiJhrVUwubIBxdDSgdPXGgBaElNm2L1mGXBIu2Qeg0oOdmLG819/NwRxkqkCpzlqSQRvcH3/BVZWBb02bnb5cLRVTt589fycMFHimpCFe5EY9YdUI8Lj2U7BAI0bys7GldvQfHQOn9T1d53yPpM+dkDThwYenaadTFlbDHmBe34C7ErDe78o8o/O9V4Tg3LrguQhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i7z2zNIjSqDDgT+izjI96C/dCK3Y+rKC2XnzcVtwWsu0CBCoxkEcse9jL9Zq?=
 =?us-ascii?Q?p4A8Rn8Zp/FD7u2fVweGthMKCXdFO9KulCn6XyUDchyvZcjvuwqi/5jdpztw?=
 =?us-ascii?Q?BCzVhz9gwi89/G6PF3BZryxfCRBEV98krqlp+7XuR/50F7kwDBG0U93v5n5p?=
 =?us-ascii?Q?vI5+YFE7biY+5ZIbux9q9YJmLwf+Lo5sauV0t3d5V7Av512d7sKJxHkRp/EP?=
 =?us-ascii?Q?QAQU4j9bSiPzREY0M6dUQPRT6fEJqVMITJ1/EwHIQwvjUgHuOc8SLeTd7ERl?=
 =?us-ascii?Q?7OTFEMubcYvUBsxIWShvYT3DnTq9XhCVSAgjXNhDR8uTHm25YrFS1uE8k5d3?=
 =?us-ascii?Q?9qQe6bw4d5p2Ij8n7ec8hO88E6LMV8MjG8IVE0ULfQA9SlWgRcb3X1fNpfHD?=
 =?us-ascii?Q?VraYtFXLmoDxHxwc4pNSs6u64tRcmHOvzMA7V+ZccYXKOM4dZHN1JbcRTwHS?=
 =?us-ascii?Q?XZx8F5mBnhS9XktmVxIV6iGaG7fjQqMsbWFi1ritQ1FWbVvAKVqh7GoKZLEW?=
 =?us-ascii?Q?R8O7dqffawQifianGLgY68e71XL3msFeGjvA2IchWnS6ZkTmLsbwfag0QDZH?=
 =?us-ascii?Q?oaBpriC6Idhie/UjsiefbFzhhEh1+kAyLANr7WdM0K1/t6HqIz47Jv5M/0Yn?=
 =?us-ascii?Q?GmkZuNUYRJZeQMzOAgcdaNNSq1XIudxq2nrev0IEra4BU1mJCeRThTZqz70D?=
 =?us-ascii?Q?hOcW9UY8E39ShNu3z6VLU6A9Mx+JqcKdn/UDtTKeETJ7NHxCApKDrT6pd63g?=
 =?us-ascii?Q?E1VNKFEddJcgDebMI1eRtMlro/wevvfDwOgxWvOI9TyPD3SxipV2X8V1LTnt?=
 =?us-ascii?Q?s9ZJ2ZTd+ChSTd5j5mzwwpw8I9R26fAs+wpfsO8Vjv06qEfNTgwrxrEKEUut?=
 =?us-ascii?Q?SMcJ3ZzTKn8XdpAQ32XoCZm2NUTfxiVUcJwUvTKZyEtvg/Cfi4ef/4JZWCLS?=
 =?us-ascii?Q?L8Mf077lT+ws0RDtPaudnuNNnKDnOULPH9GYU+fJYvdf8ej5x8+KYu28hoq+?=
 =?us-ascii?Q?SDMkxjgoftc0CCgXBQw7ymDa6L9qHzZurA7jL2qePFzuzt4zSZJ4XcVNkq0o?=
 =?us-ascii?Q?caMW7L7Gw6DQIAihHHaxM03xeYF4L36zImj3q8XAnK8GzrSYckvfP7frgSUb?=
 =?us-ascii?Q?OuY3E3r8vTozSOWVFElZognVouBGg0apa95LF7Fv/S1KE4BpoBk3yZRU8KHu?=
 =?us-ascii?Q?OyxcAVzY5mEvLTH/5B9x1dxaMdHkhpnt1o54BLmhqRbTkZvsIW7l9F+YB2Zp?=
 =?us-ascii?Q?rOuIa+pfFd4HMqRRD25qlOsuZ7v1zmgsG8jCkBFiAZxOlZ5HaHCHc8iZLr/2?=
 =?us-ascii?Q?J4OYbxKb/UXbCbRrkTDkgkSGeu71tDlX/rP1WIHyBt34WXfUAP8TlJR+N3YG?=
 =?us-ascii?Q?PrStq+Bl2zpayw0iWK8ZX2rQY7Zrb3I+6RDxSlOT4Oca3C8uiP1R7VrCWSsp?=
 =?us-ascii?Q?mUAMum84lqdHmdi0yjPO5/8yDTGAzT66KLHrS5xINQ/8ocn0asoDdssJFVq0?=
 =?us-ascii?Q?WGE3pKu+Rd4ArrmCsHoMcnVploJCkTJ37APBKjr9ZyTdgxVdffFjJ3ZD6nln?=
 =?us-ascii?Q?kKw3qS5PqTPtNkWxuvsU8SFO6+ABfLhleuhgwEwrOCl0eEynlLgFFgvQQJjV?=
 =?us-ascii?Q?nfMC83CQIgnhCHzeM7g90AT98rwHsyeTpDbuBo8ZcyChjRcNgyGIlFINyukc?=
 =?us-ascii?Q?7VYtx8ZnOcY+joK3dtWoaiPHvy/mTekoqUtgdxEEK3oskqZePiYfJheaQXLx?=
 =?us-ascii?Q?B/U8g6uEpg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a042bbf4-806d-4e2d-d3ae-08de8f6b6e56
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:11.0624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GRJfFteYh6+PZAkWnR89HvP0DzUbr6/9OL/cZInxzmw0mttuoMI6k5qUMMriwffAE83leq2mgmBcTM5qCEVxNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5849
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
X-Rspamd-Queue-Id: 459A037194D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PRAMIN apertures are a crucial mechanism to direct read/write to VRAM.
Add support for the same.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs        |   5 +
 drivers/gpu/nova-core/mm/pramin.rs | 280 +++++++++++++++++++++++++++++
 drivers/gpu/nova-core/nova_core.rs |   1 +
 drivers/gpu/nova-core/regs.rs      |  10 ++
 4 files changed, 296 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm.rs
 create mode 100644 drivers/gpu/nova-core/mm/pramin.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
new file mode 100644
index 000000000000..7a5dd4220c67
--- /dev/null
+++ b/drivers/gpu/nova-core/mm.rs
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Memory management subsystems for nova-core.
+
+pub(crate) mod pramin;
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
new file mode 100644
index 000000000000..fde0eb30eaeb
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Direct VRAM access through the PRAMIN aperture.
+//!
+//! PRAMIN provides a 1MB sliding window into VRAM through BAR0, allowing the CPU to access
+//! video memory directly. Access is managed through a two-level API:
+//!
+//! - [`Pramin`]: The parent object that owns the BAR0 reference and synchronization lock.
+//! - [`PraminWindow`]: A guard object that holds exclusive PRAMIN access for its lifetime.
+//!
+//! The PRAMIN aperture is a 1MB region at BAR0 + 0x700000 for all GPUs. The window base is
+//! controlled by the `NV_PBUS_BAR0_WINDOW` register and is 64KB aligned.
+//!
+//! # Examples
+//!
+//! ## Basic read/write
+//!
+//! ```no_run
+//! use crate::driver::Bar0;
+//! use crate::mm::pramin;
+//! use kernel::devres::Devres;
+//! use kernel::prelude::*;
+//! use kernel::sync::Arc;
+//!
+//! fn example(devres_bar: Arc<Devres<Bar0>>, vram_region: core::ops::Range<u64>) -> Result<()> {
+//!     let pramin = Arc::pin_init(pramin::Pramin::new(devres_bar, vram_region)?, GFP_KERNEL)?;
+//!     let mut window = pramin.get_window()?;
+//!
+//!     // Write and read back.
+//!     window.try_write32(0x100, 0xDEADBEEF)?;
+//!     let val = window.try_read32(0x100)?;
+//!     assert_eq!(val, 0xDEADBEEF);
+//!
+//!     Ok(())
+//! }
+//! ```
+//!
+//! ## Auto-repositioning across VRAM regions
+//!
+//! ```no_run
+//! use crate::driver::Bar0;
+//! use crate::mm::pramin;
+//! use kernel::devres::Devres;
+//! use kernel::prelude::*;
+//! use kernel::sync::Arc;
+//!
+//! fn example(devres_bar: Arc<Devres<Bar0>>, vram_region: core::ops::Range<u64>) -> Result<()> {
+//!     let pramin = Arc::pin_init(pramin::Pramin::new(devres_bar, vram_region)?, GFP_KERNEL)?;
+//!     let mut window = pramin.get_window()?;
+//!
+//!     // Access first 1MB region.
+//!     window.try_write32(0x100, 0x11111111)?;
+//!
+//!     // Access at 2MB - window auto-repositions.
+//!     window.try_write32(0x200000, 0x22222222)?;
+//!
+//!     // Back to first region - window repositions again.
+//!     let val = window.try_read32(0x100)?;
+//!     assert_eq!(val, 0x11111111);
+//!
+//!     Ok(())
+//! }
+//! ```
+
+#![expect(unused)]
+
+use core::ops::Range;
+
+use crate::{
+    bounded_enum,
+    driver::Bar0,
+    num::IntoSafeCast,
+    regs, //
+};
+
+use kernel::{
+    devres::Devres,
+    io::Io,
+    new_mutex,
+    num::Bounded,
+    prelude::*,
+    revocable::RevocableGuard,
+    sizes::{
+        SZ_1M,
+        SZ_64K, //
+    },
+    sync::{
+        lock::mutex::MutexGuard,
+        Arc,
+        Mutex, //
+    },
+};
+
+bounded_enum! {
+    /// Target memory type for the BAR0 window register.
+    ///
+    /// Only VRAM is supported; Hopper+ GPUs do not support other targets.
+    #[derive(Debug)]
+    pub(crate) enum Bar0WindowTarget with TryFrom<Bounded<u32, 2>> {
+        /// Video RAM (GPU framebuffer memory).
+        Vram = 0,
+    }
+}
+
+/// PRAMIN aperture base offset in BAR0.
+const PRAMIN_BASE: usize = 0x700000;
+
+/// PRAMIN aperture size (1MB).
+const PRAMIN_SIZE: usize = SZ_1M;
+
+/// Generate a PRAMIN read accessor.
+macro_rules! define_pramin_read {
+    ($name:ident, $ty:ty) => {
+        #[doc = concat!("Read a `", stringify!($ty), "` from VRAM at the given offset.")]
+        pub(crate) fn $name(&mut self, vram_offset: usize) -> Result<$ty> {
+            let (bar_offset, new_base) =
+                self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
+
+            if let Some(base) = new_base {
+                Self::write_window_base(&self.bar, base)?;
+                *self.state = base;
+            }
+            self.bar.$name(bar_offset)
+        }
+    };
+}
+
+/// Generate a PRAMIN write accessor.
+macro_rules! define_pramin_write {
+    ($name:ident, $ty:ty) => {
+        #[doc = concat!("Write a `", stringify!($ty), "` to VRAM at the given offset.")]
+        pub(crate) fn $name(&mut self, vram_offset: usize, value: $ty) -> Result {
+            let (bar_offset, new_base) =
+                self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
+
+            if let Some(base) = new_base {
+                Self::write_window_base(&self.bar, base)?;
+                *self.state = base;
+            }
+            self.bar.$name(value, bar_offset)
+        }
+    };
+}
+
+/// PRAMIN aperture manager.
+///
+/// Call [`Pramin::get_window()`] to acquire exclusive PRAMIN access.
+#[pin_data]
+pub(crate) struct Pramin {
+    bar: Arc<Devres<Bar0>>,
+    /// Valid VRAM region. Accesses outside this range are rejected.
+    vram_region: Range<u64>,
+    /// PRAMIN aperture state, protected by a mutex.
+    ///
+    /// # Invariants
+    ///
+    /// This lock is acquired during the DMA fence signaling critical path.
+    /// It must NEVER be held across any reclaimable CPU memory / allocations
+    /// (`GFP_KERNEL`), because the memory reclaim path can call
+    /// `dma_fence_wait()`, which would deadlock with this lock held.
+    #[pin]
+    state: Mutex<u64>,
+}
+
+impl Pramin {
+    /// Create a pin-initializer for PRAMIN.
+    ///
+    /// `vram_region` specifies the valid VRAM address range.
+    pub(crate) fn new(
+        bar: Arc<Devres<Bar0>>,
+        vram_region: Range<u64>,
+    ) -> Result<impl PinInit<Self>> {
+        let bar_access = bar.try_access().ok_or(ENODEV)?;
+        let current_base = Self::read_window_base(&bar_access);
+
+        Ok(pin_init!(Self {
+            bar,
+            vram_region,
+            state <- new_mutex!(current_base, "pramin_state"),
+        }))
+    }
+
+    /// Acquire exclusive PRAMIN access.
+    ///
+    /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
+    /// The [`PraminWindow`] is exclusive and only one can exist at a time.
+    pub(crate) fn get_window(&self) -> Result<PraminWindow<'_>> {
+        let bar = self.bar.try_access().ok_or(ENODEV)?;
+        let state = self.state.lock();
+        Ok(PraminWindow {
+            bar,
+            vram_region: self.vram_region.clone(),
+            state,
+        })
+    }
+
+    /// Read the current window base from the BAR0_WINDOW register.
+    fn read_window_base(bar: &Bar0) -> u64 {
+        let reg = bar.read(regs::NV_PBUS_BAR0_WINDOW);
+
+        // TODO: Convert to Bounded<u64, 40> when available.
+        u64::from(reg.window_base()) << 16
+    }
+}
+
+/// PRAMIN window guard for direct VRAM access.
+///
+/// This guard holds exclusive access to the PRAMIN aperture. The window auto-repositions
+/// when accessing VRAM offsets outside the current 1MB range.
+///
+/// Only one [`PraminWindow`] can exist at a time per [`Pramin`] instance (enforced by the
+/// internal `MutexGuard`).
+pub(crate) struct PraminWindow<'a> {
+    bar: RevocableGuard<'a, Bar0>,
+    vram_region: Range<u64>,
+    state: MutexGuard<'a, u64>,
+}
+
+impl PraminWindow<'_> {
+    /// Write a new window base to the BAR0_WINDOW register.
+    fn write_window_base(bar: &Bar0, base: u64) -> Result {
+        // CAST: After >> 16, a VRAM address fits in u32.
+        let window_base = (base >> 16) as u32;
+        bar.write_reg(
+            regs::NV_PBUS_BAR0_WINDOW::zeroed()
+                .with_target(Bar0WindowTarget::Vram)
+                .try_with_window_base(window_base)?,
+        );
+        Ok(())
+    }
+
+    /// Compute window parameters for a VRAM access.
+    ///
+    /// Returns (`bar_offset`, `new_base`) where:
+    /// - `bar_offset`: The BAR0 offset to use for the access.
+    /// - `new_base`: `Some(base)` if window needs repositioning, `None` otherwise.
+    fn compute_window(
+        &self,
+        vram_offset: usize,
+        access_size: usize,
+    ) -> Result<(usize, Option<u64>)> {
+        // Validate VRAM offset is within the valid VRAM region.
+        let vram_addr = vram_offset as u64;
+        let end_addr = vram_addr.checked_add(access_size as u64).ok_or(EINVAL)?;
+        if vram_addr < self.vram_region.start || end_addr > self.vram_region.end {
+            return Err(EINVAL);
+        }
+
+        // Check if access fits within the current 1MB window.
+        let current_base = *self.state;
+        if vram_addr >= current_base {
+            let offset_in_window: usize = (vram_addr - current_base).into_safe_cast();
+            if offset_in_window + access_size <= PRAMIN_SIZE {
+                return Ok((PRAMIN_BASE + offset_in_window, None));
+            }
+        }
+
+        // Access doesn't fit in current window - reposition.
+        // Hardware requires 64KB alignment for the window base register.
+        let needed_base = vram_addr & !(SZ_64K as u64 - 1);
+        let offset_in_window: usize = (vram_addr - needed_base).into_safe_cast();
+
+        // Verify access fits in the 1MB window from the new base.
+        if offset_in_window + access_size > PRAMIN_SIZE {
+            return Err(EINVAL);
+        }
+
+        Ok((PRAMIN_BASE + offset_in_window, Some(needed_base)))
+    }
+
+    define_pramin_read!(try_read8, u8);
+    define_pramin_read!(try_read16, u16);
+    define_pramin_read!(try_read32, u32);
+    define_pramin_read!(try_read64, u64);
+
+    define_pramin_write!(try_write8, u8);
+    define_pramin_write!(try_write16, u16);
+    define_pramin_write!(try_write32, u32);
+    define_pramin_write!(try_write64, u64);
+}
diff --git a/drivers/gpu/nova-core/nova_core.rs b/drivers/gpu/nova-core/nova_core.rs
index 04a1fa6b25f8..5f716d1b8c1c 100644
--- a/drivers/gpu/nova-core/nova_core.rs
+++ b/drivers/gpu/nova-core/nova_core.rs
@@ -20,6 +20,7 @@
 mod gfw;
 mod gpu;
 mod gsp;
+mod mm;
 #[macro_use]
 mod num;
 mod regs;
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index 2f171a4ff9ba..a3ca02345e20 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -30,6 +30,7 @@
         Architecture,
         Chipset, //
     },
+    mm::pramin::Bar0WindowTarget,
     num::FromSafeCast,
 };
 
@@ -115,6 +116,15 @@ fn fmt(&self, f: &mut kernel::fmt::Formatter<'_>) -> kernel::fmt::Result {
     }
 }
 
+register! {
+    /// BAR0 window control for PRAMIN access.
+    pub(crate) NV_PBUS_BAR0_WINDOW(u32) @ 0x00001700 {
+        25:24   target ?=> Bar0WindowTarget;
+        /// Window base address (bits 39:16 of FB addr).
+        23:0    window_base;
+    }
+}
+
 // PFB
 
 register! {
-- 
2.34.1

