Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOOdNr7TvGmr3QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6F12D5D56
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C349110EA62;
	Fri, 20 Mar 2026 04:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="KwH7iYxj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012051.outbound.protection.outlook.com
 [40.107.200.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113C710E87E;
 Fri, 20 Mar 2026 04:57:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sb3cfQwPqJQzxn5tZwn+IZ8yn+DM6YMWwrBT83hOja0Xbu/YvNGzZgImDqk89iLpAXk8vCqb0FL1VTPntGyODJsdPfcUFd0pPsQmdWz2XsvFoz807DtTHanTqErfP5R3hyedbfaxOgzLD4RJoMBfEyHNOnk4svB7Nmhq+f7bsES1B+GNfXojfCvecWQoHOIgc/3re7Xzr4SEjELpnbA6oINScRlc7U7W2lOBiEvvKWsAFynO7SJfJ268tQptLR0oIITFphG1qxWp03fK6zq27U0WT3NSIEoxSJ6Q80YhC9lh+raxUP27k1W8e/SgoXfhGDTtiebDIUNQAShiJSBr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lEIC11YLJSo/YAf0gxjRNbQkyDRTpIO+rIhCA06Vto=;
 b=DqPdSQpuD0oO/XuJXHtBsz1vE8aykBS1n5fUMYDqPlfVYyHv9862U00zRjtlUvea9SO8hp4RqyYhm2B8g94I68LCh/F2EKLkLp0h2fp+xYyMaxzyO8V9f7ODeVWZFPSrDwdsq0XxMQdvKr3r2tjEPD9sVoo5BvN88tFD8PZdU7Jzib9FK7LP8mO/dmPPOauxwt5QqIVhsKFSBC2sdvAWbwH+W3Uj6/WAOwA6wJr7S1XxNlWkJcwmsCk4oBP63LpI6JEQvAJ2PE8Wr7zyYgm+XoB3ywU253DNgTJFJzg2CjxuS31zeNS1qPw9auUfjQ2q7tNBSvb0XvfDH9V5ZzPeFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2lEIC11YLJSo/YAf0gxjRNbQkyDRTpIO+rIhCA06Vto=;
 b=KwH7iYxjckC2kzNAcDBbYBzg1j6I8N6HWfdHGw+wkIcfmvmxWtzxxQGxQjpi6khWgxjrjjubUud55NmXHGFscBp/VsPDYkt6S61ZvI4k86S/KgYmZkSDA9FZm6wITfTYgolKcOANqaBS2QSXSZOcNWAnXD4GHguQAGG/82jJAEe7+rzhxhOj5S675KpXUffo2+tWCevu0jSQVwrynyBLhuP4YoV8jZ0pXuJmdd9iJKoDrEhl4RUBdtHpwmDCTebD9ssv5DVwCBNnmg2cvJh49dQiPzi0QLysp/rTryLwl7OO/kK8t8qE2Ylc3vDdBLy2xVx3rDvqDphGAkdQZofO0Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW4PR12MB7310.namprd12.prod.outlook.com (2603:10b6:303:22c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 04:57:20 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 04:57:20 +0000
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
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
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
Subject: [PATCH v14 1/2] rust: gpu: Add GPU buddy allocator bindings
Date: Fri, 20 Mar 2026 00:57:10 -0400
Message-Id: <20260320045711.43494-2-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260320045711.43494-1-joelagnelf@nvidia.com>
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY8PR19CA0039.namprd19.prod.outlook.com
 (2603:10b6:930:6::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW4PR12MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: ab71d068-35bc-4d79-ad99-08de863d2a88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: qwr24jHgIXjDz82AXFVtVJx4Xu9Pila99nCBfiv5f0ru7eKoXlOqvvIHN6iWM9GFxoHo/756wRVL+cE2/UC7auHWWnpublP8Zp8cCM7rdLmWBYdyRY19fFZZMW5yVqPHrePrsKfuCpR0ZYuM+jFelTpUPc/GJQZp79z4amJmpd+bpeuLrzXODa7elY7lKWd1wlTQU/fUb0QL/cJF4rq2s0WFfNlog1isDLAyzjMPs5YK+G81uNyLDdzipSbYdLy4xRFFE5HyToPAzeIyng1lFYDpasnUq377A8z266OljxyTsXx/U/gH4+5jHklMHagrCgzRgEct3HWZKVumuppCgTiv2EyIyqUKjHh7qUnbIu0QbHgkk70TKUggtOpiBVfrn8AevW9LEZ5yMer8QJeDaTNbXYaZIdo41oMF+UyLQVJOMhZ8RSDawHVz6dLMZIlRnaYLnkXI7bJTflZZfkD8hViNMGdfhQ3GaYcfxsZfVs8ECLAd+r6vBYc+VT8hDfymLH/nMo5YLoFi6FbHfWdEQf4f7d8zjAaY7Fi5k6vPRANJplth2mzMTxfPJe7leTtFuBkNm5T3criQkJg1uCU8U12o46vw68tECSxKbo3AheXWb2QFi3xbEizF0KpXFgjYJArU1GtHEsLIumWnO4N2JAqUwhPsgppOA0t7EBZH1ocwbgqGBnHbGkbuOYR6CZp93UrbR/t3GibtrWeLMIscI0/Okz37vthA1BES+BQTxfVEaiDShJX8jTNmZyBVbYnD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E/bF7EJUJn8T4aC1MgPB2ac9Ble0X4YX4ePnKrnSADZsveWwLqMjNXE2mP+L?=
 =?us-ascii?Q?pnQWPwsALIVS5G6R5q9a52XL4RV3a9qeU9YXvT3yW/WgVmtyD61ZKbEgA5ge?=
 =?us-ascii?Q?yyZ8xQJGGPKfonk45TRtjGyG7jxlm1KaunHfsEW8eqtu6FBooBJ9iZG/w8/C?=
 =?us-ascii?Q?JUKeKNj9w4ToBOLHlyqGVYkAjDgMJ6UTton/0+KjaTdAIADbIOj2B3Rbvvra?=
 =?us-ascii?Q?rayH8cphXXyBEUhztsvkjGTDPUIFj6H833T+02wd5YmZ6xB/oGXiQYtburBM?=
 =?us-ascii?Q?eD7Erl7P2jFwx081HY4XlZLbZvv04oyBhYzup+M8BEdHw8hQmFPggqSa131m?=
 =?us-ascii?Q?NdILs0ncs1YA0emfV4Nw+OUaaZYSiJDfCo8x4cRLJ2ZcI24WiYopjOLe5KXe?=
 =?us-ascii?Q?R9iGjjPvxfhWaT9sZ/wdbqs29xXrR69zGSDCvAyBHsvU60a5Fmzl8iHJ0yrV?=
 =?us-ascii?Q?uHuM/rXSB2SPM9tu6fmrDoU83OjLJFH/CJ+fXSgjILBHg8gp1pGimERf60Kw?=
 =?us-ascii?Q?x2U+nnwU/4dUgVg38u0CFCvWYM0VZlJWZN0pv7hjdy/nJjja2BatCID9GAgF?=
 =?us-ascii?Q?G6S2plAH9CqAcdS8QiwQL5g3SPqpYjiwn+aAFMmoPEMxNPTRvmbUn3Mm2udI?=
 =?us-ascii?Q?bIatkh5IhweIv/L/5hUzd8Hm6fpv0zRfFXuLdewx1PiL+CodgS0F43rwh4e0?=
 =?us-ascii?Q?vb1OUaIG84r9jhHRTmgmiqqEThJszX9xroy4RGVWP+a3cI52/CTg7zcSdPK8?=
 =?us-ascii?Q?miqrsbvwM8CSQQTVrUYis85CcmMHaiRG/Ji27DUAAxXsTwLf6Xb1OuXGpFy6?=
 =?us-ascii?Q?vz79tD7sH739CfcSeZ0k/rcasXQt6NhUYbGd0bv+dKKazronXHyTWja3yNvX?=
 =?us-ascii?Q?1kAd2NC5aUHY95iGQ9zPKu2G+34U8MW/hi+gyiD7W6aDdwcYNkHs3U5t5nC8?=
 =?us-ascii?Q?c/0xMtAl6oKghjOzbUSJu6L1v1rshdeTcjF8i5ak5vNKfhqD+konP2q3xnjT?=
 =?us-ascii?Q?Vq471eCx8gMHUNFZG3SUonv6H8sVdcHzcbo1bgs06k4gMmqbpLSIAp33a3eO?=
 =?us-ascii?Q?prwX+gQ+jOzaZ7HCT8skgJiC74OlZkVpfAoOH+YNQzBeUnXtEPliNAYqtAGx?=
 =?us-ascii?Q?1/tfwe2/Pmm/JVxpbosI32vbMKQU55f0G+Zm8y58leq0FsUdIkPVqZUuWaSX?=
 =?us-ascii?Q?AO6UKRrdCt+aGap/hnkhrXmCgvGQ5WC5PP26ly2SlzY7CED/1dpwTXbfLhjJ?=
 =?us-ascii?Q?q+CotsogUMrAN6F2jXtteESgnZGSE7URhZjDElB4AG1MgMDL59ohgAMQA5j0?=
 =?us-ascii?Q?+okoH3RGECyr1nXphOqqJm+7E5i2iQa0NJEu664m8jjkn03RTEZ6RaQO65vB?=
 =?us-ascii?Q?LswxDw7K//1QJgjsJ57l9l/pcdaEEa/vcjtfR24ZcVrL7Uh1p2gHeiy8uk42?=
 =?us-ascii?Q?KSvi5KQ0jM8rxA+pekfyE7WW6/Yf7cZ5jk/qndgLdBaKU1UafTNZzSz2e8FR?=
 =?us-ascii?Q?kWSrg2R+6+EUNRt0fhKj1QBgXWPv8GELIdvRkIWg3qA47g44CNbIOSJldvml?=
 =?us-ascii?Q?pCx5+MzAQYKqURufZtFHT7jbTgcImGTqJFT6RnhCEBSRIThPwCTIV11MAfYH?=
 =?us-ascii?Q?U/2w9HDRMeAvQmHJC7aUo1MaKqOIs0yLMsqUbmXSP4Xff3EBJQQgNZCyetv7?=
 =?us-ascii?Q?sKnB2gjCZJPHgtyHansCxu36+MUjlg3MB9xGl3nuji+dllf8ONs7nzWUq1U6?=
 =?us-ascii?Q?Ap8qjfssDA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab71d068-35bc-4d79-ad99-08de863d2a88
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 04:57:20.0379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dD7844kP67JhC3pcDW6flx2QuSE3nQdCZwRZ8hcLss5NcXQYtq1RRaG/ZnNfqg2lVabRSBZaxNA3IQg2XykxrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7310
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
	NEURAL_HAM(-0.00)[-0.956];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 6A6F12D5D56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add safe Rust abstractions over the Linux kernel's GPU buddy
allocator for physical memory management. The GPU buddy allocator
implements a binary buddy system useful for GPU physical memory
allocation. nova-core will use it for physical memory allocation.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 MAINTAINERS                     |   6 +
 rust/bindings/bindings_helper.h |  11 +
 rust/helpers/gpu.c              |  23 ++
 rust/helpers/helpers.c          |   1 +
 rust/kernel/gpu.rs              |   6 +
 rust/kernel/gpu/buddy.rs        | 613 ++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs              |   2 +
 7 files changed, 662 insertions(+)
 create mode 100644 rust/helpers/gpu.c
 create mode 100644 rust/kernel/gpu.rs
 create mode 100644 rust/kernel/gpu/buddy.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index e847099efcc2..cd9505d3be60 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8531,7 +8531,10 @@ T:	git https://gitlab.freedesktop.org/drm/rust/kernel.git
 F:	drivers/gpu/drm/nova/
 F:	drivers/gpu/drm/tyr/
 F:	drivers/gpu/nova-core/
+F:	rust/helpers/gpu.c
 F:	rust/kernel/drm/
+F:	rust/kernel/gpu.rs
+F:	rust/kernel/gpu/
 
 DRM DRIVERS FOR ALLWINNER A10
 M:	Chen-Yu Tsai <wens@kernel.org>
@@ -8952,6 +8955,9 @@ F:	drivers/gpu/drm/drm_buddy.c
 F:	drivers/gpu/tests/gpu_buddy_test.c
 F:	include/drm/drm_buddy.h
 F:	include/linux/gpu_buddy.h
+F:	rust/helpers/gpu.c
+F:	rust/kernel/gpu.rs
+F:	rust/kernel/gpu/
 
 DRM AUTOMATED TESTING
 M:	Helen Koike <helen.fornazier@gmail.com>
diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index 083cc44aa952..dbb765a9fdbd 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -29,6 +29,7 @@
 #include <linux/hrtimer_types.h>
 
 #include <linux/acpi.h>
+#include <linux/gpu_buddy.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
@@ -146,6 +147,16 @@ const vm_flags_t RUST_CONST_HELPER_VM_MIXEDMAP = VM_MIXEDMAP;
 const vm_flags_t RUST_CONST_HELPER_VM_HUGEPAGE = VM_HUGEPAGE;
 const vm_flags_t RUST_CONST_HELPER_VM_NOHUGEPAGE = VM_NOHUGEPAGE;
 
+#if IS_ENABLED(CONFIG_GPU_BUDDY)
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_RANGE_ALLOCATION = GPU_BUDDY_RANGE_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TOPDOWN_ALLOCATION = GPU_BUDDY_TOPDOWN_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CONTIGUOUS_ALLOCATION =
+								GPU_BUDDY_CONTIGUOUS_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEAR_ALLOCATION = GPU_BUDDY_CLEAR_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEARED = GPU_BUDDY_CLEARED;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TRIM_DISABLE = GPU_BUDDY_TRIM_DISABLE;
+#endif
+
 #if IS_ENABLED(CONFIG_ANDROID_BINDER_IPC_RUST)
 #include "../../drivers/android/binder/rust_binder.h"
 #include "../../drivers/android/binder/rust_binder_events.h"
diff --git a/rust/helpers/gpu.c b/rust/helpers/gpu.c
new file mode 100644
index 000000000000..38b1a4e6bef8
--- /dev/null
+++ b/rust/helpers/gpu.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/gpu_buddy.h>
+
+#ifdef CONFIG_GPU_BUDDY
+
+__rust_helper u64 rust_helper_gpu_buddy_block_offset(const struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_offset(block);
+}
+
+__rust_helper unsigned int rust_helper_gpu_buddy_block_order(struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_order(block);
+}
+
+__rust_helper u64 rust_helper_gpu_buddy_block_size(struct gpu_buddy *mm,
+						   struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_size(mm, block);
+}
+
+#endif /* CONFIG_GPU_BUDDY */
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index 724fcb8240ac..a53929ce52a3 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -32,6 +32,7 @@
 #include "err.c"
 #include "irq.c"
 #include "fs.c"
+#include "gpu.c"
 #include "io.c"
 #include "jump_label.c"
 #include "kunit.c"
diff --git a/rust/kernel/gpu.rs b/rust/kernel/gpu.rs
new file mode 100644
index 000000000000..1dc5d0c8c09d
--- /dev/null
+++ b/rust/kernel/gpu.rs
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! GPU subsystem abstractions.
+
+#[cfg(CONFIG_GPU_BUDDY = "y")]
+pub mod buddy;
diff --git a/rust/kernel/gpu/buddy.rs b/rust/kernel/gpu/buddy.rs
new file mode 100644
index 000000000000..fdf1fcc2dcee
--- /dev/null
+++ b/rust/kernel/gpu/buddy.rs
@@ -0,0 +1,613 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! GPU buddy allocator bindings.
+//!
+//! C header: [`include/linux/gpu_buddy.h`](srctree/include/linux/gpu_buddy.h)
+//!
+//! This module provides Rust abstractions over the Linux kernel's GPU buddy
+//! allocator, which implements a binary buddy memory allocator.
+//!
+//! The buddy allocator manages a contiguous address space and allocates blocks
+//! in power-of-two sizes, useful for GPU physical memory management.
+//!
+//! # Examples
+//!
+//! Create a buddy allocator and perform a basic range allocation:
+//!
+//! ```
+//! use kernel::{
+//!     gpu::buddy::{
+//!         GpuBuddy,
+//!         GpuBuddyAllocFlags,
+//!         GpuBuddyAllocMode,
+//!         GpuBuddyParams, //
+//!     },
+//!     prelude::*,
+//!     ptr::Alignment,
+//!     sizes::*, //
+//! };
+//!
+//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
+//! let buddy = GpuBuddy::new(GpuBuddyParams {
+//!     base_offset: 0,
+//!     size: SZ_1G as u64,
+//!     chunk_size: Alignment::new::<SZ_4K>(),
+//! })?;
+//!
+//! assert_eq!(buddy.size(), SZ_1G as u64);
+//! assert_eq!(buddy.chunk_size(), Alignment::new::<SZ_4K>());
+//! let initial_free = buddy.avail();
+//!
+//! // Allocate 16MB. Block lands at the top of the address range.
+//! let allocated = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Simple,
+//!         SZ_16M as u64,
+//!         Alignment::new::<SZ_16M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.avail(), initial_free - SZ_16M as u64);
+//!
+//! let block = allocated.iter().next().expect("expected one block");
+//! assert_eq!(block.offset(), (SZ_1G - SZ_16M) as u64);
+//! assert_eq!(block.order(), 12); // 2^12 pages = 16MB
+//! assert_eq!(block.size(), SZ_16M as u64);
+//! assert_eq!(allocated.iter().count(), 1);
+//!
+//! // Dropping the allocation returns the range to the buddy allocator.
+//! drop(allocated);
+//! assert_eq!(buddy.avail(), initial_free);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Top-down allocation allocates from the highest addresses:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{GpuBuddy, GpuBuddyAllocMode, GpuBuddyAllocFlags, GpuBuddyParams},
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! # let buddy = GpuBuddy::new(GpuBuddyParams {
+//! #     base_offset: 0,
+//! #     size: SZ_1G as u64,
+//! #     chunk_size: Alignment::new::<SZ_4K>(),
+//! # })?;
+//! # let initial_free = buddy.avail();
+//! let topdown = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::TopDown,
+//!         SZ_16M as u64,
+//!         Alignment::new::<SZ_16M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.avail(), initial_free - SZ_16M as u64);
+//!
+//! let block = topdown.iter().next().expect("expected one block");
+//! assert_eq!(block.offset(), (SZ_1G - SZ_16M) as u64);
+//! assert_eq!(block.order(), 12);
+//! assert_eq!(block.size(), SZ_16M as u64);
+//!
+//! // Dropping the allocation returns the range to the buddy allocator.
+//! drop(topdown);
+//! assert_eq!(buddy.avail(), initial_free);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Non-contiguous allocation can fill fragmented memory by returning multiple
+//! blocks:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{
+//! #         GpuBuddy, GpuBuddyAllocFlags, GpuBuddyAllocMode, GpuBuddyParams,
+//! #     },
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! # let buddy = GpuBuddy::new(GpuBuddyParams {
+//! #     base_offset: 0,
+//! #     size: SZ_1G as u64,
+//! #     chunk_size: Alignment::new::<SZ_4K>(),
+//! # })?;
+//! # let initial_free = buddy.avail();
+//! // Create fragmentation by allocating 4MB blocks at [0,4M) and [8M,12M).
+//! let frag1 = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range(0..SZ_4M as u64),
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.avail(), initial_free - SZ_4M as u64);
+//!
+//! let frag2 = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range(SZ_8M as u64..(SZ_8M + SZ_4M) as u64),
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.avail(), initial_free - SZ_8M as u64);
+//!
+//! // Allocate 8MB, this returns 2 blocks from the holes.
+//! let fragmented = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range(0..SZ_16M as u64),
+//!         SZ_8M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.avail(), initial_free - SZ_16M as u64);
+//!
+//! let (mut count, mut total) = (0u32, 0u64);
+//! for block in fragmented.iter() {
+//!     assert_eq!(block.size(), SZ_4M as u64);
+//!     total += block.size();
+//!     count += 1;
+//! }
+//! assert_eq!(total, SZ_8M as u64);
+//! assert_eq!(count, 2);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Contiguous allocation fails when only fragmented space is available:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{
+//! #         GpuBuddy, GpuBuddyAllocFlag, GpuBuddyAllocFlags, GpuBuddyAllocMode, GpuBuddyParams,
+//! #     },
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! // Create a small 16MB buddy allocator with fragmented memory.
+//! let small = GpuBuddy::new(GpuBuddyParams {
+//!     base_offset: 0,
+//!     size: SZ_16M as u64,
+//!     chunk_size: Alignment::new::<SZ_4K>(),
+//! })?;
+//!
+//! let _hole1 = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Range(0..SZ_4M as u64),
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//!
+//! let _hole2 = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Range(SZ_8M as u64..(SZ_8M + SZ_4M) as u64),
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//!
+//! // 8MB contiguous should fail, only two non-contiguous 4MB holes exist.
+//! let result = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Simple,
+//!         SZ_8M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlag::Contiguous,
+//!     ),
+//!     GFP_KERNEL,
+//! );
+//! assert!(result.is_err());
+//! # Ok::<(), Error>(())
+//! ```
+
+use core::ops::Range;
+
+use crate::{
+    bindings,
+    clist_create,
+    error::to_result,
+    interop::list::CListHead,
+    new_mutex,
+    prelude::*,
+    ptr::Alignment,
+    sync::{
+        lock::mutex::MutexGuard,
+        Arc,
+        Mutex, //
+    },
+    types::Opaque, //
+};
+
+/// Allocation mode for the GPU buddy allocator.
+///
+/// The mode determines the primary allocation strategy. Modes are mutually
+/// exclusive: an allocation is either simple, range-constrained, or top-down.
+///
+/// Orthogonal modifier flags (e.g., contiguous, clear) are specified separately
+/// via [`GpuBuddyAllocFlags`].
+#[derive(Clone, Debug, PartialEq, Eq)]
+pub enum GpuBuddyAllocMode {
+    /// Simple allocation without constraints.
+    Simple,
+    /// Range-based allocation within the given address range.
+    Range(Range<u64>),
+    /// Allocate from top of address space downward.
+    TopDown,
+}
+
+impl GpuBuddyAllocMode {
+    // Returns the C flags corresponding to the allocation mode.
+    fn as_flags(&self) -> usize {
+        match self {
+            Self::Simple => 0,
+            Self::Range(_) => bindings::GPU_BUDDY_RANGE_ALLOCATION,
+            Self::TopDown => bindings::GPU_BUDDY_TOPDOWN_ALLOCATION,
+        }
+    }
+
+    // Extracts the range start/end, defaulting to `(0, 0)` for non-range modes.
+    fn range(&self) -> (u64, u64) {
+        match self {
+            Self::Range(range) => (range.start, range.end),
+            _ => (0, 0),
+        }
+    }
+}
+
+crate::impl_flags!(
+    /// Modifier flags for GPU buddy allocation.
+    ///
+    /// These flags can be combined with any [`GpuBuddyAllocMode`] to control
+    /// additional allocation behavior.
+    #[derive(Clone, Copy, Default, PartialEq, Eq)]
+    pub struct GpuBuddyAllocFlags(usize);
+
+    /// Individual modifier flag for GPU buddy allocation.
+    #[derive(Clone, Copy, PartialEq, Eq)]
+    pub enum GpuBuddyAllocFlag {
+        /// Allocate physically contiguous blocks.
+        Contiguous = bindings::GPU_BUDDY_CONTIGUOUS_ALLOCATION,
+
+        /// Request allocation from cleared (zeroed) memory.
+        Clear = bindings::GPU_BUDDY_CLEAR_ALLOCATION,
+
+        /// Disable trimming of partially used blocks.
+        TrimDisable = bindings::GPU_BUDDY_TRIM_DISABLE,
+    }
+);
+
+/// Parameters for creating a GPU buddy allocator.
+pub struct GpuBuddyParams {
+    /// Base offset (in bytes) where the managed memory region starts.
+    /// Allocations will be offset by this value.
+    pub base_offset: u64,
+    /// Total size (in bytes) of the address space managed by the allocator.
+    pub size: u64,
+    /// Minimum allocation unit / chunk size, must be >= 4KB.
+    pub chunk_size: Alignment,
+}
+
+/// Inner structure holding the actual buddy allocator.
+///
+/// # Synchronization
+///
+/// The C `gpu_buddy` API requires synchronization (see `include/linux/gpu_buddy.h`).
+/// Internal locking ensures all allocator and free operations are properly
+/// synchronized, preventing races between concurrent allocations and the
+/// freeing that occurs when [`AllocatedBlocks`] is dropped.
+///
+/// # Invariants
+///
+/// The inner [`Opaque`] contains an initialized buddy allocator.
+#[pin_data(PinnedDrop)]
+struct GpuBuddyInner {
+    #[pin]
+    inner: Opaque<bindings::gpu_buddy>,
+
+    // TODO: Replace `Mutex<()>` with `Mutex<Opaque<..>>` once `Mutex::new()`
+    // accepts `impl PinInit<T>`.
+    #[pin]
+    lock: Mutex<()>,
+    /// Cached creation parameters (do not change after init).
+    params: GpuBuddyParams,
+}
+
+impl GpuBuddyInner {
+    /// Create a pin-initializer for the buddy allocator.
+    fn new(params: GpuBuddyParams) -> impl PinInit<Self, Error> {
+        let size = params.size;
+        let chunk_size = params.chunk_size;
+
+        // INVARIANT: `gpu_buddy_init` returns 0 on success, at which point the
+        // `gpu_buddy` structure is initialized and ready for use with all
+        // `gpu_buddy_*` APIs. `try_pin_init!` only completes if all fields succeed,
+        // so the invariant holds when construction finishes.
+        try_pin_init!(Self {
+            inner <- Opaque::try_ffi_init(|ptr| {
+                // SAFETY: `ptr` points to valid uninitialized memory from the pin-init
+                // infrastructure. `gpu_buddy_init` will initialize the structure.
+                to_result(unsafe { bindings::gpu_buddy_init(ptr, size, chunk_size.as_usize() as u64) })
+            }),
+            lock <- new_mutex!(()),
+            params,
+        })
+    }
+
+    /// Lock the mutex and return a guard for accessing the allocator.
+    fn lock(&self) -> GpuBuddyGuard<'_> {
+        GpuBuddyGuard {
+            inner: self,
+            _guard: self.lock.lock(),
+        }
+    }
+}
+
+#[pinned_drop]
+impl PinnedDrop for GpuBuddyInner {
+    fn drop(self: Pin<&mut Self>) {
+        let guard = self.lock();
+
+        // SAFETY: Per the type invariant, `inner` contains an initialized
+        // allocator. `guard` provides exclusive access.
+        unsafe {
+            bindings::gpu_buddy_fini(guard.as_raw());
+        }
+    }
+}
+
+// SAFETY: `GpuBuddyInner` can be sent between threads.
+unsafe impl Send for GpuBuddyInner {}
+
+// SAFETY: `GpuBuddyInner` is `Sync` because `GpuBuddyInner::lock`
+// serializes all access to the C allocator, preventing data races.
+unsafe impl Sync for GpuBuddyInner {}
+
+// Guard that proves the lock is held, enabling access to the allocator.
+// The `_guard` holds the lock for the duration of this guard's lifetime.
+struct GpuBuddyGuard<'a> {
+    inner: &'a GpuBuddyInner,
+    _guard: MutexGuard<'a, ()>,
+}
+
+impl GpuBuddyGuard<'_> {
+    /// Get a raw pointer to the underlying C `gpu_buddy` structure.
+    fn as_raw(&self) -> *mut bindings::gpu_buddy {
+        self.inner.inner.get()
+    }
+}
+
+/// GPU buddy allocator instance.
+///
+/// This structure wraps the C `gpu_buddy` allocator using reference counting.
+/// The allocator is automatically cleaned up when all references are dropped.
+///
+/// Refer to the module-level documentation for usage examples.
+pub struct GpuBuddy(Arc<GpuBuddyInner>);
+
+impl GpuBuddy {
+    /// Create a new buddy allocator.
+    ///
+    /// Creates a buddy allocator that manages a contiguous address space of the given
+    /// size, with the specified minimum allocation unit (chunk_size must be at least 4KB).
+    pub fn new(params: GpuBuddyParams) -> Result<Self> {
+        Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL).map(Self)
+    }
+
+    /// Get the base offset for allocations.
+    pub fn base_offset(&self) -> u64 {
+        self.0.params.base_offset
+    }
+
+    /// Get the chunk size (minimum allocation unit).
+    pub fn chunk_size(&self) -> Alignment {
+        self.0.params.chunk_size
+    }
+
+    /// Get the total managed size.
+    pub fn size(&self) -> u64 {
+        self.0.params.size
+    }
+
+    /// Get the available (free) memory in bytes.
+    pub fn avail(&self) -> u64 {
+        let guard = self.0.lock();
+
+        // SAFETY: Per the type invariant, `inner` contains an initialized allocator.
+        // `guard` provides exclusive access.
+        unsafe { (*guard.as_raw()).avail }
+    }
+
+    /// Allocate blocks from the buddy allocator.
+    ///
+    /// Returns a pin-initializer for [`AllocatedBlocks`].
+    pub fn alloc_blocks(
+        &self,
+        mode: GpuBuddyAllocMode,
+        size: u64,
+        min_block_size: Alignment,
+        flags: impl Into<GpuBuddyAllocFlags>,
+    ) -> impl PinInit<AllocatedBlocks, Error> {
+        let buddy_arc = Arc::clone(&self.0);
+        let (start, end) = mode.range();
+        let mode_flags = mode.as_flags();
+        let modifier_flags = flags.into();
+
+        // Create pin-initializer that initializes list and allocates blocks.
+        try_pin_init!(AllocatedBlocks {
+            buddy: buddy_arc,
+            list <- CListHead::new(),
+            _: {
+                // Reject zero-sized or inverted ranges.
+                if let GpuBuddyAllocMode::Range(range) = &mode {
+                    if range.is_empty() {
+                        Err::<(), Error>(EINVAL)?;
+                    }
+                }
+
+                // Lock while allocating to serialize with concurrent frees.
+                let guard = buddy.lock();
+
+                // SAFETY: Per the type invariant, `inner` contains an initialized
+                // allocator. `guard` provides exclusive access.
+                to_result(unsafe {
+                    bindings::gpu_buddy_alloc_blocks(
+                        guard.as_raw(),
+                        start,
+                        end,
+                        size,
+                        min_block_size.as_usize() as u64,
+                        list.as_raw(),
+                        mode_flags | usize::from(modifier_flags),
+                    )
+                })?
+            }
+        })
+    }
+}
+
+/// Allocated blocks from the buddy allocator with automatic cleanup.
+///
+/// This structure owns a list of allocated blocks and ensures they are
+/// automatically freed when dropped. Use `iter()` to iterate over all
+/// allocated blocks.
+///
+/// # Invariants
+///
+/// - `list` is an initialized, valid list head containing allocated blocks.
+#[pin_data(PinnedDrop)]
+pub struct AllocatedBlocks {
+    #[pin]
+    list: CListHead,
+    buddy: Arc<GpuBuddyInner>,
+}
+
+impl AllocatedBlocks {
+    /// Check if the block list is empty.
+    pub fn is_empty(&self) -> bool {
+        // An empty list head points to itself.
+        !self.list.is_linked()
+    }
+
+    /// Iterate over allocated blocks.
+    ///
+    /// Returns an iterator yielding [`AllocatedBlock`] values. Each [`AllocatedBlock`]
+    /// borrows `self` and is only valid for the duration of that borrow.
+    pub fn iter(&self) -> impl Iterator<Item = AllocatedBlock<'_>> + '_ {
+        let head = self.list.as_raw();
+        // SAFETY: Per the type invariant, `list` is an initialized sentinel `list_head`
+        // and is not concurrently modified (we hold a `&self` borrow). The list contains
+        // `gpu_buddy_block` items linked via `__bindgen_anon_1.link`. `Block` is
+        // `#[repr(transparent)]` over `gpu_buddy_block`.
+        let clist = unsafe {
+            clist_create!(
+                head,
+                Block,
+                bindings::gpu_buddy_block,
+                __bindgen_anon_1.link
+            )
+        };
+
+        clist
+            .iter()
+            .map(|this| AllocatedBlock { this, blocks: self })
+    }
+}
+
+#[pinned_drop]
+impl PinnedDrop for AllocatedBlocks {
+    fn drop(self: Pin<&mut Self>) {
+        let guard = self.buddy.lock();
+
+        // SAFETY:
+        // - list is valid per the type's invariants.
+        // - guard provides exclusive access to the allocator.
+        unsafe {
+            bindings::gpu_buddy_free_list(guard.as_raw(), self.list.as_raw(), 0);
+        }
+    }
+}
+
+/// A GPU buddy block.
+///
+/// Transparent wrapper over C `gpu_buddy_block` structure. This type is returned
+/// as references during iteration over [`AllocatedBlocks`].
+///
+/// # Invariants
+///
+/// The inner [`Opaque`] contains a valid, allocated `gpu_buddy_block`.
+#[repr(transparent)]
+struct Block(Opaque<bindings::gpu_buddy_block>);
+
+impl Block {
+    /// Get a raw pointer to the underlying C block.
+    fn as_raw(&self) -> *mut bindings::gpu_buddy_block {
+        self.0.get()
+    }
+
+    /// Get the block's raw offset in the buddy address space (without base offset).
+    fn offset(&self) -> u64 {
+        // SAFETY: `self.as_raw()` is valid per the type's invariants.
+        unsafe { bindings::gpu_buddy_block_offset(self.as_raw()) }
+    }
+
+    /// Get the block order.
+    fn order(&self) -> u32 {
+        // SAFETY: `self.as_raw()` is valid per the type's invariants.
+        unsafe { bindings::gpu_buddy_block_order(self.as_raw()) }
+    }
+}
+
+// SAFETY: `Block` is a wrapper around `gpu_buddy_block` which can be
+// sent across threads safely.
+unsafe impl Send for Block {}
+
+// SAFETY: `Block` is only accessed through shared references after
+// allocation, and thus safe to access concurrently across threads.
+unsafe impl Sync for Block {}
+
+/// A buddy block paired with its owning [`AllocatedBlocks`] context.
+///
+/// Unlike a raw block, which only knows its offset within the buddy address
+/// space, an [`AllocatedBlock`] also has access to the allocator's `base_offset`
+/// and `chunk_size`, enabling it to compute absolute offsets and byte sizes.
+///
+/// Returned by [`AllocatedBlocks::iter()`].
+pub struct AllocatedBlock<'a> {
+    this: &'a Block,
+    blocks: &'a AllocatedBlocks,
+}
+
+impl AllocatedBlock<'_> {
+    /// Get the block's offset in the address space.
+    ///
+    /// Returns the absolute offset including the allocator's base offset.
+    /// This is the actual address to use for accessing the allocated memory.
+    pub fn offset(&self) -> u64 {
+        self.blocks.buddy.params.base_offset + self.this.offset()
+    }
+
+    /// Get the block order (size = chunk_size << order).
+    pub fn order(&self) -> u32 {
+        self.this.order()
+    }
+
+    /// Get the block's size in bytes.
+    pub fn size(&self) -> u64 {
+        (self.blocks.buddy.params.chunk_size.as_usize() as u64) << self.this.order()
+    }
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index bdcf632050ee..2652933e585f 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -102,6 +102,8 @@
 pub mod firmware;
 pub mod fmt;
 pub mod fs;
+#[cfg(CONFIG_GPU_BUDDY = "y")]
+pub mod gpu;
 #[cfg(CONFIG_I2C = "y")]
 pub mod i2c;
 pub mod id_pool;
-- 
2.34.1

