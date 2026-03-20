Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NMjM8DTvGmr3QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801A12D5D65
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E526E10EA68;
	Fri, 20 Mar 2026 04:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="W6kPNMXI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010067.outbound.protection.outlook.com
 [40.93.198.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323A610E0BC;
 Fri, 20 Mar 2026 04:57:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRWzNsxs4qyVJDlZww8HDL5+NtCBfKHUkP6QKTGR+BJT9rixCs7G0Qn1/xhMjl+6KcyFVOuYGuyAhvS3ShGs/yXN7ClV4ifo/e1fqPirXRLSICxHhVHVZ8PLGOXK3jyzW7Sd4caDJ0HjO39qOfHWrfpv6dL57PaqWuDi3d2EQHvmMsshqsbLGrHEneiSjddCbcI+BUBR1zHrKOypLVtHaL8dRbcOdWhwiDZhFjpsLzLRdNsIvGXruptWqJFtXgdrq4xNvaj6AMb7WaBKmqJz+jwidqZKCHe4gkHuvKP5xScfko62OXAbNkJ+AfbLuK5WmsDY54Vmy0mofc3nhw1huw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ige1SUMVxDCYED571NUQz3HCxKutYucDbhpAI9mJJrg=;
 b=RCVtQ5o0QR3+lA5skFsiiwM4bvaSy2IAyC++8GaKINMObP+5Nb7loyx4NDzLigtEpRJUl/RikQqsTi9/U4l1Yvc2KwwHeNxo47fBsEI9CWfLCeN68wPkXKkT6fs0vVs73gR158ObjuGT1jVZLoXY4No8XzlsHnYldAxJx3f2X7EP21vpmWUBvqPSpktXgeN7Y+0CqbeIcafzcz4r36aQKPlTTvoAVF4sDu+Bl0XLbPCy34Pt/WZVNYhneQDA/QAB5UrdtPHMQYQAMBMNMnKsP0FqRsI13tp1UG0fQov9fDa3mP/7WRC7oDtvQT4ktcdsv+cDQU9IayEfIX1cMxfDcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ige1SUMVxDCYED571NUQz3HCxKutYucDbhpAI9mJJrg=;
 b=W6kPNMXIqri4JH3FKlR1u85YNrEadtT/0q4kaYWo3ctn7YXfFTYwKC666XCzSSXIRZyKvLCQtVXV9wq6n7P7nWyYoxau0lTk25BIwK7d1LEqbEpYOC4JEjSuMdO21mKysu3inehdJ99sJxf3xGGtxH4FzAdXgQ0XEwk/a8DRTVZDn44k79EoK2ohkwTZ7A0i/2GUrh5UAhsY2ma7ZdtOWfOWWROt+0bU787jKttyrATwaobsjmN77BoxFwlrZxPMbHCjDaHFn8QfFU868j4UOxMraJuKKbZf34s48mjSR5juOlM30+wNVkRd24QkkG7fYH+eiTOMQxVSS6EzbSTqXA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW4PR12MB7310.namprd12.prod.outlook.com (2603:10b6:303:22c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 04:57:18 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 04:57:18 +0000
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
Subject: [PATCH v14 0/2] Rust GPU buddy allocator bindings
Date: Fri, 20 Mar 2026 00:57:09 -0400
Message-Id: <20260320045711.43494-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR20CA0010.namprd20.prod.outlook.com
 (2603:10b6:930:a2::18) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW4PR12MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: e0d21433-b48c-495c-a20b-08de863d2959
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 2QN8LuXq62uBID1gNVF2Mtn3nLCcE1z/Zvvf4rwROa1WuRgiUg9onOLM95CCa14TSh6fmoE0afjA0DrZEhz28zMmIpjDv3IcyHI3LwIFipGTCn6y/+AVNFjRFb21tIFHdH9TTdHh2pjOP77HKBkz2wCjnbB1O6YEcVcyGjkN4/7WHckrVhHfVlKcpujLX7AKPCV66x59IT1Lm01+mmMYwF+nBMVv8Sp0aR0DEu5v/ye5ZAKzPxo84PzgP2F/O6pHQWzMzMXK3D1oukq7GVPrMEh4fLKOKEeD8S7Umpv4VERQRsbkrgCXjqOiA/qam6To1fSIMsyGroE0ubGrEpL9m/WLR964a6hJC3ERsnQBDfiNl5hogd2VcH9U40pskGLw6B82nPLfkDSmJF534CpFG4OJLkHVfmVvJX/b9ksAfZmFzAuQgk85h902XnwKVWqH2GiOIrFDTDd7sJV2PhpM4l2pbV4TNjA+qEITgoR2TjPxAtYlymOuaZuYybhceSzhdnlky0rSGeRI7gDnxRMQoiZnIvW11snaM2iVXL5mKt8GlODG59i8yHT2jNBtbaYe1mmX9vIz2KutQvav6YuFcMVjZN4ZsnRYHD2Ny05+xfKSsy3y1RnSCZeNzdLmwmQEvUhCVWCtgqfmVUq4Xa4iCPN/iyJuGWsMdn/ldUoO5AgP0zMzeHw5HzT/uSQWKvolvPnmLxTTkqqNt6d/mfiA8CUh5CAJCNmhPXkFcckpgiI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dDDXmn/g/67EwPhFFCKcttvPMefumBUWJp5Ko+Xgmvo5wrq8g2dGbmpwghsB?=
 =?us-ascii?Q?IjPfWDHFR3Y0bJ96UjOq7gEu8kS68h1RLjhbaxy4HwZGTRFYXh01QJNhCVWi?=
 =?us-ascii?Q?90BTYjQq0UdIsw2OoTLJuuKB0XTGAJPGRw3ckfqEc37yUyo+7YWx0LR9hOWJ?=
 =?us-ascii?Q?FpfUNZNqvPghC3I6GoesFY2Y1ukOAb7Q60TBbfMKeyng/nNR8Le4i+H5rIQd?=
 =?us-ascii?Q?2HPTxm32BTSCZ6eN526K4FSkajzlBrW+pslB0JEXECt5zQ6QWJwlTbYq62/Q?=
 =?us-ascii?Q?bfJewlMbvXwEXz5olKscuWC3GG47OWKJ/mC1YJOM41l4eH6zsGMNuccFTT33?=
 =?us-ascii?Q?1tDjYhyUscryO391bezyaq3R8UYwC1ylPvhRDHmcqwqxiz1pvaluLFSRdNvX?=
 =?us-ascii?Q?3EIru+aTg7yDaaffhrm8vvqHveWBcLdWG1NX48epbzYmGHGGVcRagEal8AFw?=
 =?us-ascii?Q?UOyIpC8udCHQHA3Od5gVQyraGG+2g/PqZtzI28ZAWvXrhxICcRDtxXa9zKel?=
 =?us-ascii?Q?+29i0sK8GUhoPKrRd+BlOIt2J/a3krtYoNKlpoEdXTUFjfiINp9pfFJAnfS5?=
 =?us-ascii?Q?HTDOzqs5aRKWdOsx8M8AGCVLeeavfTz7ph9zKq73fjLVWeo0LWKU3k9wLjdm?=
 =?us-ascii?Q?+u+BvQLHYSVxMRzqFmfLI0HTN+tobtz5/MO4VSunJV/KLB4pXxxpNeR3qGaj?=
 =?us-ascii?Q?zQ4Sj83nCHNtlTtAcUJGncIHeXu3jzETfjP2jQ9aCMSuZqjKg/efaRmKv3bB?=
 =?us-ascii?Q?oKSiyn1VLRpdjx1sSsh9ufkf5TsZeI9XBWamJoUpcIxBT0r1chIr02VA757s?=
 =?us-ascii?Q?adEvUpe2DefBhK590QmQ2IvxhEKO0Vd2ojm/vAOG2su0yxzY+VZ3f305+f+Y?=
 =?us-ascii?Q?wcFUra87pk5Z95orxmKpCfVafx5k6CHOoinLiDQjRhra205buU023u96gjj+?=
 =?us-ascii?Q?IBxQy/e4ZVQvGwUdDV/x3aMyQkuEcbrQgG8bnyYtM7z6xuO9YWtIJAud5RUZ?=
 =?us-ascii?Q?PDRg93xMKmau/vGkYGeEPS68SeL/lTm+/gWc/ddcyAluh/Orqv42AW3NXt6d?=
 =?us-ascii?Q?oN6hIDDd59h8jsDS6IMFTbc++Ax5KkmJ9C2bjQr/4RTijHKkgbkSDahQ1RbK?=
 =?us-ascii?Q?w7uR34FXkuRYTuGheFoFy6esp/LpXUFReg4UvB7U+rzoFsmMaq2F/4HWaXst?=
 =?us-ascii?Q?0ox125KEYvzkAIX3ar5sztfVxprBXNolhkJCvKb4sJ5YFqeq8lgcg0bgVqed?=
 =?us-ascii?Q?hJfm8zJFZ0eLhAaDXGN971EuDUbF7ztMEgYUjwOzb4Ofu+9x2cmT4R5CLpT7?=
 =?us-ascii?Q?r8txP4wBfcH4QaNEXrzIIHO3fZ+TMuJ/T6VTfPcB6XzaM1vqCZdmMjO8kjUE?=
 =?us-ascii?Q?xRz8kXucIw12bFVEPzfPO+YqqdjHDRtg15ib8x/VOPLkyPcd5vGj8LqhF15/?=
 =?us-ascii?Q?DldvsRSM+t7zH9PxYRXxTYxwUxK55Buaa1QOg66WzNuyFiF+IWRFXrG3RIey?=
 =?us-ascii?Q?ya7mvVKoqZvMg/AIQ3Y7+n86HPr+fXr2OUT9eNTDNnu5UApzq4eRw+Gzp+zQ?=
 =?us-ascii?Q?2Awh4JoKNmG5X67vJwoy8X1p3czm/JmwAj/VG0pfv+fiAazcVW6lHwTtBLlH?=
 =?us-ascii?Q?PjVPyigvaH/uurMkioGu20nLLAygqqy+rjlpC/OZ0sHrtX1+f7P4xwPcso9w?=
 =?us-ascii?Q?gzWe4h/VIT8PHzbjZz1tuyAMD0jtohs20gQl6KFLO816zT0JoYtsvLynVCw0?=
 =?us-ascii?Q?NWF05gXMRQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0d21433-b48c-495c-a20b-08de863d2959
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 04:57:18.0542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /+ApgZlQ2/p7xwl655dzG7zn39bGpTvVFIrO0tifVOd9L25XkxXlAE7lv7twecqwvMnn6j51/3B2nuqMQx7Q0Q==
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
	NEURAL_HAM(-0.00)[-0.962];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 801A12D5D65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch adds safe Rust abstractions over the Linux kernel's GPU buddy
allocator for physical memory management. The prerequisite infrastructure
patches (DRM buddy code movement and the uninitialized buddy fix) have been
absorbed into upstream -next, so this is now a set of standalone patches.

The series along with all dependencies, including clist and nova-core mm
patches, are available at:
git://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git (tag: buddy-bindings-v14-20260319)

Change log:

Changes from v13 to v14:
- Changed clist_create! call site to use explicit unsafe{} block.
- Various changes to change to Range type for ranges (Alex).
- Renamed GpuBuddyParams::physical_memory_size to size (Alex).
- Changed GpuBuddyAllocFlags inner type from u32 to usize (Alex).
- Renamed free_memory() to avail()  (Alex).
- Various nits (Alex).

Changes from v12 to v13:
- Split MAINTAINERS reviewer update into a separate patch (Danilo).
- Adjustments to use the Alignment type chunk size parameters (Alex).
- Fixed doctest assertion due to blocks landing on top of range.
- Changed chunk_size local vars to Alignment.
- Changed block size to u64 from usize.
- Renamed rust/kernel/gpu/mod.rs to rust/kernel/gpu.rs.
- Several other adjustments (Alex).

Changes from v11 to v12:
- Rebased on linux-next his is now a standalone single patch as dependencies
  are absorbed (but not clist is a prequisite)
- Redesigned allocation API (Alexandre Courbot) for better Rust ergonomics.
- Split single long example into 4 self-contained examples (Alexandre Courbot).
- Several safety and invariant comment changes (Danilo).
- MAINTAINERS changes (Arun, Mathew, Danilo, Dave).
- Fixed `#[cfg(CONFIG_GPU_BUDDY)]` to `#[cfg(CONFIG_GPU_BUDDY = "y")]` (Danilo Krummrich).
- Updated `ffi::clist::CListHead` to `interop::list::CListHead`.

Changes from v10 to v11:
- Dropped "rust: ffi: Convert pub use to pub mod and create ffi module" patch;
  the ffi module restructuring will go through a different path.
- Dropped "rust: clist: Add support to interface with C linked lists" patch;
  the clist module will be submitted separately.
- Dropped "nova-core: Kconfig: Sort select statements alphabetically" cosmetic
  patch.
- Patches 1-3 (DRM buddy movement and fix) are included as reference only;
  they are already being pulled into upstream via drm-misc-next.
- Removed clist patches as those can go in independently (Alice).
- Moved the Kconfig GPU_BUDDY selection patch to nova-core mm series to enable
  it when it is actually used.
- Various nits to comments, etc.

Changes from v9 to v10:
- Absorbed the DRM buddy code movement patches into this series as patches 1-2.
  Dave Airlie reworked these into two parts for better git history.
- Added "gpu: Fix uninitialized buddy for built-in drivers" fix by Koen Koning,
  using subsys_initcall instead of module_init to fix NULL pointer dereference
  when built-in drivers use the buddy allocator before initialization.
- Added "rust: ffi: Convert pub use to pub mod and create ffi module" to prepare
  the ffi module for hosting clist as a sub-module.
- Moved clist from rust/kernel/clist.rs to rust/kernel/ffi/.
- Added "nova-core: Kconfig: Sort select statements alphabetically" (Danilo).

Changes from v8 to v9:
- Updated nova-core Kconfig patch: addressed sorting of Kconfig options.
- Added Daniel Almeida's Reviewed-by tag to clist patch.
- Minor refinements to GPU buddy bindings.

Changes from v7 to v8:
- Added nova-core Kconfig patch to select GPU_BUDDY for VRAM allocation.
- Various changes suggested by Danilo Krummrich, Gary Guo, and Daniel Almeida.
- Added Acked-by: Gary Guo for clist patch.

Changes from v6 to v7:
- Major restructuring: split the large 26-patch v6 RFC series. v7 only contains
  the Rust infrastructure patches (clist + GPU buddy bindings), extracted from
  the full nova-core MM series. The nova-core MM patches follow separately.
- Rebased on linux-next.

Changes from v5 to v6:
- Rebased on drm-rust-kernel/drm-rust-next.
- Expanded from 6 to 26 patches with full nova-core MM infrastructure including
  page table walker, VMM, BAR1 user interface, TLB flush, and GpuMm manager.

Changes from v4 to v5:
- Added PRAMIN aperture support with documentation and self-tests.
- Improved buddy allocator bindings (fewer lines of code).
- Based on drm-rust-next instead of linux-next.

Changes from v3 to v4:
- Combined the clist and DRM buddy series into a single coherent series.
- Added DRM buddy allocator movement from drivers/gpu/drm/ up to drivers/gpu/,
  renaming API from drm_buddy to gpu_buddy.
- Added Rust bindings for the GPU buddy allocator.

Changes from v2 to v3:
- Squashed 3 clist patches into one due to inter-dependencies.
- Changed Clist to Clist<'a, T> using const generic offset (Alex Courbot).
- Simplified C helpers to only list_add_tail (Alex Courbot, John Hubbard).
- Added init_list_head() Rust function (Alex Courbot).
- Added FusedIterator, PartialEq/Eq impls.
- Added MAINTAINERS entry (Miguel Ojeda).

Changes from v1 (RFC) to v2:
- Dropped DRM buddy allocator patches; series focuses solely on clist module.
- Dropped sample modules, replaced with doctests.
- Added proper lifetime management similar to scatterlist.
- Split clist into 3 separate patches.

Link to v13: https://lore.kernel.org/all/20260317220323.1909618-1-joelagnelf@nvidia.com/


Joel Fernandes (2):
  rust: gpu: Add GPU buddy allocator bindings
  MAINTAINERS: gpu: buddy: Update reviewer

 MAINTAINERS                     |   8 +-
 rust/bindings/bindings_helper.h |  11 +
 rust/helpers/gpu.c              |  23 ++
 rust/helpers/helpers.c          |   1 +
 rust/kernel/gpu.rs              |   6 +
 rust/kernel/gpu/buddy.rs        | 613 ++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs              |   2 +
 7 files changed, 663 insertions(+), 1 deletion(-)
 create mode 100644 rust/helpers/gpu.c
 create mode 100644 rust/kernel/gpu.rs
 create mode 100644 rust/kernel/gpu/buddy.rs

--
2.34.1

