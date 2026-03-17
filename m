Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPjeIt3PuWmMOAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09BA2B2E6D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3C510E305;
	Tue, 17 Mar 2026 22:04:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="sMd/ONVz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013029.outbound.protection.outlook.com
 [40.93.201.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9323E10E1C6;
 Tue, 17 Mar 2026 22:04:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdXl3bDRZcV8mRrXg2SpLAZni/Cr9z/izWVvhOI7g5tBeVCWPK9BD8ATeO9eAaxTX8IVY66VW5foNu4kB4+VM2mPCBbCMfCgKaIvWTpxleoJPw1WpzWnaluth8NralXzEK+9XZ1k+74Fj4024OTFaaNEuo9ce//cf1ajBBEd9DJHCL+dC2IQ6etmlOvoVOxEPmDKvGTG9kzC1nmeME8lbytu5vFBQKWqhJuuu46p5avGef5DDcaIDOni293vkMe9JIspIxro4rLvOZvOcfkk+o6xxEGPGpWzPA7XWGjS6Ro2wRe7ohKng2MORF5lNJ2SiSKWWODujoyx0IeZUR2GYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWJ3bnDLN8jIluX4UAOSpnG0ssV2foinopiIbZOvdY0=;
 b=hCZLkGdwX6rCA0WvU4CUgbK/wFv7ykPkmpSyePnLN3Ji2vQgwpbTjFnXFDL8AyAF/epO0YICseNi5rZa1TasYNlwmya0q34JgW5K3l2eSE5j4asQtZEz7Mf8rjt9YRv3jGWiLCF5WC8NZYZSmujuL5OV5p7YPoSKoIXNTtnqJpwWKYkBSWuKJw137vnmH0aWJkljF4CPc/ziFAqlCbixhYAU1h13GMeYIE6Chlyw85688oRDJBFFs1YERTOT3ghODeJ4rAz90uXf0M4ZlPIodJtLjg+W5bum245bSmxeZNLkz971MOxX6dFrhyRVuLbh0fmqFj0pNkQzEGxEUHBEQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWJ3bnDLN8jIluX4UAOSpnG0ssV2foinopiIbZOvdY0=;
 b=sMd/ONVzjo+i0LXLQD5bkVqIphOQpWykVPXeRydwbarmRqVhy7lLZ5dLp6fjuQsjpAacyTsv/0oZw0VWSos4rp9tdKv8XkO8LxtLjmDZoRL6x/5x2OAAnndSMZdiErI9lqNdiwYgqIcptMDkSzgYaeVIx571aoheoc1mRIO2zshLbI1D0Cmgz4sVSp/gveCIitE2Gn96hyOvy7sK8QPxKxBDwrS0/Qk5mqv1/T1pp5Ry6xdcVftvJFr6NQ2xHjTbuDG5QNcCi5/fwHgEDHOlavnEvetPs0zHyN4NzvmBU/nyv6nSWefUDik4pmT/h1QkUnKpm9dyUXpx5v9WNsmOow==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DM4PR12MB9735.namprd12.prod.outlook.com (2603:10b6:8:225::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Tue, 17 Mar 2026 22:04:01 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 22:04:01 +0000
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
Subject: [PATCH v13 0/2] Rust GPU buddy allocator bindings
Date: Tue, 17 Mar 2026 18:03:21 -0400
Message-Id: <20260317220323.1909618-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260308180407.3988286-1-joelagnelf@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR04CA0034.namprd04.prod.outlook.com
 (2603:10b6:208:d4::47) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DM4PR12MB9735:EE_
X-MS-Office365-Filtering-Correlation-Id: 691fc461-9612-4eb9-460c-08de84711842
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: T03g+rKVAzO6Kr7R7ZtPKMuYvzNMqMU0aG5QJxOOGkT0+3J/1Rp2O3xLUWh+q/brVM5O3X6KrEQfVnDZTN0whWUnTnT8uFMpktdzqRSzye6j/bmF3ENQHVGoePp+iKhf+VWeVcxHBGeUTjsFiNoeRTlSZXKNRhmN9MpCI2nF5ATvwl3axEyj9jjKGgHJtCtqH14+f0lxA9TBll4WV3HE2YxZVDsRQPllnsCNiMys1d4AarlWyhfBahsUeA2z+18i5kpwG9F1SA4eJoeu3GP5F/E9eyY9KNWayepD5v8ynQCx93N7x/02rT+msy1aJjXPef4YS/B4mXEvtASKdrHd/xBoTx+GpsPzzROD5kxosGE3mnv5PK6J/SM1gWNJlSF3u9HlqmBCATWHc6EAeCoVIsyqy57+ss4z9R0nmAC07rNzeD2as9RkQsfBRnurr/vXrL66LC5tdPOHWifLQyJyNOcu2/BgBSCGx5Tx0krAg00MLs0k38idyt+c5bp+3xnpV3RikvDQMWpX6AgUJfiSVkMX9GI6TzKvoNgzt+iW5c9IZ1+JrD2gITRYXu3T8uZiVmFXlKVfkXE1gPZybJbltG7CowHo3hqY5W7yGUR6N4y/rMboGTjilg+pYOLOQeoL+bvxgOeDQTkXPBeRB8lHQyVMJWUhDmck+NyH7mL+lNYsBaOWXwzvTJMnAqWtV5iotbpQi5KjWf2fMdv2Xcymcl/G4rBIsYNl+/NfeoczR0k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IftdwGE8A0opFVnc56Dh0pE33w1LjCwiV4sF9TtBMiT3upgF4SVIk66xzjuh?=
 =?us-ascii?Q?bhV3fZ1q5bBS92goRrGOvmsFi24ebe9PTydiVul/fqEIP/U22ueP8aW6Oqfm?=
 =?us-ascii?Q?LdGEJnQA6FEssa6Dvc92lJHxD+UHpm9HS7OFvLV0wC6XYS5QfB7WgiEg505w?=
 =?us-ascii?Q?XwDzLs9HYL0WYNsvWzg/VN2XnpKTun0iNxkLzrrwHho3PIMttwtTivI025nd?=
 =?us-ascii?Q?ACs5rhwtt91YPtcDG1TDP7gnN+chc1atKCBms3qXGbTMF+9JxjrJa84SjDAb?=
 =?us-ascii?Q?lCjGCXJJLcN7vpVp1N524pib1JYQ1hcjh8E3vajvvDffDkelhzLzvTLsjiyD?=
 =?us-ascii?Q?/eeJnHlpr5mDMM75UFsniiHqmUulHOCoySFRwAm3VcyOm6+Ud3OTJCs/tVW9?=
 =?us-ascii?Q?8aKwfbPZuQzGek4x0pj0p/TCNZxxU0cC7T2n+rCVlB/+nLWRIWQH0F/Jkadf?=
 =?us-ascii?Q?R5kG9DUJIWUzNO4MlNVQeYCopsiA3O5y3iXM0x9GUlJYOmVzo074QdrZEcOK?=
 =?us-ascii?Q?I8uTPFLn4nPmfI1Tn5VHjoj0KZ90qfXVdEBbbHM+4yO7GG6QlO/QV4SuSr4O?=
 =?us-ascii?Q?FD7nNYAU9JB5SyNvdbxOirFv1dZlxE7hODJ47rc1ifV/e0FRpVeUTKlSnvH4?=
 =?us-ascii?Q?oMPsl+PI0bzlzdlAj2xP8QsOWH9MwrsbbpQTdq8FWOFwHnA+Ajil31U+iXgI?=
 =?us-ascii?Q?Wc8qnhh8M3Ol/6Yn2ijXT7+Q74iVnB5TZSRzUhaGGfBVP1t9Ncc8soveu4O3?=
 =?us-ascii?Q?NAsOvJlVmpNlmf6E9Xk6BBs0lboQaFE8GN6D14DrcYsxuLrYPfgMT89xofe9?=
 =?us-ascii?Q?f2boBD0hG1z6atRgsqI+WmUMSNqBxM+WOVrXJzU80BXzoyb8+BjLO/7uSCX7?=
 =?us-ascii?Q?xuPqdDOJeiiaz+/FHnGV1drdW1Cn2O4HOcum1mI28mNxla4ln5xqk4iwsISI?=
 =?us-ascii?Q?1ltKQmFZx0czE1/KmASfz7s8SiQRWgpfblZWJUiznOoETdp+kiPNN/lWB6Xk?=
 =?us-ascii?Q?cELTexlPJYpDSRAgvWoY3GIGmtnBRHfVb3/2TBk3lHMn+FpxqNlEBf4leNb7?=
 =?us-ascii?Q?R40yUPKevW+4jaUw+f/DeLkFdjtqpXjo8N7kCA9l0T0k20WMwONvPOBLzTyg?=
 =?us-ascii?Q?ys/0DscpbkSAjknl85oaHKKhA//pfcziBxhb4dpZH/SPVzy6zm5ceRSY0JLi?=
 =?us-ascii?Q?NmhtQCJDhTSYNZ0XmwN+v939JJetx9SVj/VWydKymbu8SlETJsZ8nmMrElNZ?=
 =?us-ascii?Q?vrkmN0yxKd45pC9P2lJM1xbzCSWIN3/+VH9jd5Cdi1ZnjmHNHG9YGUE8107m?=
 =?us-ascii?Q?wNPuOze/j+XNyKXeUDUj4jW/dmODl8dBTxR8geQgy3ZEM11OBuoBa4vYCs8j?=
 =?us-ascii?Q?7fK3GkLIntJBS7Y4IY9l3IT1mAWuVJBqiRpClowAeOJmDyk39D8c+2ah9J9q?=
 =?us-ascii?Q?5Vnur+2TF94i5+DIMrMUdePtEZBV66Pu+ldbH6181ddk8N2Phe3ZOCbP9GFI?=
 =?us-ascii?Q?C4sp/zgPF1OWhO78fk5/L8pnu0CqFzWaREOkjhUpi7VaYUlvxMZ6NeJV2F8C?=
 =?us-ascii?Q?8u2ycT76EKkiNM9oOfbxpDUBvsI31jMJvV9qGaC75kYpfzWkE5XZjjfndLkA?=
 =?us-ascii?Q?VGQhpAjNx3ZzRC5EjP9DhswQHrQbhqQOv/4sa905GhvsRH3a5JatX4JPKSiC?=
 =?us-ascii?Q?DeXKpYCKQrAwUq1xkfl/feJg0Y2hzZsrSyVuXxQvI/xcPr7be+vBSvaWSf/k?=
 =?us-ascii?Q?Zhf/XzFXtA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691fc461-9612-4eb9-460c-08de84711842
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 22:04:00.8590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oc2pQYYq5q7SHhFUTImKUiKxtZG1n0j8/YAEL1AVuWAbpCmxKiCgT7waMv8fwkzsNm4mp97qXY8K+nxucyhQLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB9735
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E09BA2B2E6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch adds safe Rust abstractions over the Linux kernel's GPU buddy
allocator for physical memory management. The prerequisite infrastructure
patches (DRM buddy code movement and the uninitialized buddy fix) have been
absorbed into upstream -next, so this is now a standalone patch.

The series along with all dependencies, including clist and nova-core mm
patches, are available at:
git://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git (tag: buddy-bindings-v13-20260317)

Change log:

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

Link to v12: https://lore.kernel.org/all/20260308180407.3988286-1-joelagnelf@nvidia.com/
Link to v11: https://lore.kernel.org/all/20260224224005.3232841-1-joelagnelf@nvidia.com/

Joel Fernandes (2):
  rust: gpu: Add GPU buddy allocator bindings
  MAINTAINERS: gpu: buddy: Update reviewer

 MAINTAINERS                     |   8 +-
 rust/bindings/bindings_helper.h |  11 +
 rust/helpers/gpu.c              |  23 ++
 rust/helpers/helpers.c          |   1 +
 rust/kernel/gpu.rs              |   6 +
 rust/kernel/gpu/buddy.rs        | 623 ++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs              |   2 +
 7 files changed, 673 insertions(+), 1 deletion(-)
 create mode 100644 rust/helpers/gpu.c
 create mode 100644 rust/kernel/gpu.rs
 create mode 100644 rust/kernel/gpu/buddy.rs

-- 
2.34.1

