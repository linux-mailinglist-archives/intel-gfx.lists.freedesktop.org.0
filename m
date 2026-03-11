Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FeNCR+6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FCA259F40
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5304D10E7B5;
	Wed, 11 Mar 2026 00:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BWOmg0KA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013070.outbound.protection.outlook.com
 [40.93.201.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E5210E7B5;
 Wed, 11 Mar 2026 00:40:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f+DvIro4zDfW+GebRpdAA+zUVY9XRWXWuZ9BW0R6R7Sb7Jb7NY8DZf8vuUOKbBPqfq3drjmlQofiYXCQ3mgb8gFbaI5Jm5K8iKiBWb7jbZII5P4jr+pFHu+XvPtDW6art62GaVkp2UeWFv8dbqFjDFzUJUUT5JzS+L1KVpp/mZxkpXtphVfO7ucOYG4dLPMM8tZWpCP7y5kAHu+TXxOuLY2FeEaOqeJmOdIfCA9y8TnFlIUoeWf6++U+geVOjIgDEz4Fkl4zSUodAe5AcHtVbAnafoO3son2TFD5zjPyJzSCEP/diMBtvD1SFg+MOQgRUXbAlrMtYvJnpybj/gLZ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EKiUrfUdZc/mIIpSAIYNqrOhjj6d9prAGRN4H2zWefw=;
 b=AE9dqGQo81pzoqr+Mg7Z//PQjCDen5rW+bOi2F7J8oyqYcHN0Uec5/Xm/pWNF63iCXC9QZqqj868BnY9ReT8rcFM6atFcs2F/CWgBj+tqqiNJ9wX/XnY7lO/szpM1HUO127fAFxR2YNEKXHIaeGSZ9ZvcmoCVEUhliYSfD6ESmfoLzqG0VR8IQFC1QECEHa57YW1alscn0bPXIvw+t/YUnIRZmyXgwNn5yPy09dYCPbFpOgk6PxEaaSaghDv4zD48aKW05AkYWzT8u/aGtqRzS78pGooP9eX8RMSZWmLF8feJiGDG14eGSnGtRyIjmiRWQcnrempIFFBSD9lZ2ee6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKiUrfUdZc/mIIpSAIYNqrOhjj6d9prAGRN4H2zWefw=;
 b=BWOmg0KAm83P+EJgC7NqPj75hTinfMSyrBORDu+V0Y5DZigdG/CWOn0mjqcq4KXMwlhjKDZsFDTgon4UUOIq1Ig2/uJh2klHgBZwqFw2Ufwagdeaha5ToJUBItDfRQa9WoeZA4YnkFMOqWcMHJdypgfpk7eO5uVqboB4gSv7xeiRO0dMdXcjovMP9JoobY1hjFu+1yLc8UxXAKwcjpfXj9I99hHMTnzD2lylX98kQ4xrrn0s1wgxvxpUHCTaPCOGtE4I6isZjBo7PRnW3/T2QatnBEbeV8pbUFEy3v2hQ6ImQgO7TUG1xcjqzd3iapXBst5Ul+YNv/MCmPhHJr5JWg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:52 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:52 +0000
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
Subject: [PATCH v9 16/23] gpu: nova-core: mm: Add Virtual Memory Manager
Date: Tue, 10 Mar 2026 20:40:01 -0400
Message-Id: <20260311004008.2208806-17-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0078.namprd03.prod.outlook.com
 (2603:10b6:208:329::23) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 42543ddc-f974-4f26-1f4f-08de7f06d921
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: o/lowire0witildFJj8lTnffAo6g7KZzzyhDvX9iB3qLmK/yWs3dPZfBW7m7AyqpDZWKCn3DO7o0Ez80ZIxs7hGMUdYQBpL75k8YPdPcuulNiQ+pHGgJjFJw4f4oB3SvXL7Jt+Nz3WdxuFovrvE7trGM1XIy1ot5vJ4T1b8cXBWSmRct0glrO1dRSXJ/s1sBdACNuIb0ZEf3IvKZT6Rc4YwKE2sWxMF33M2LKphTNCC8Ucwno1cJqCAfXw+qT/YKUyVpegM7EQnH5QESOZO4pTJ4+9Oxz/a66g2LI8y5idT6ii5qWUDh8jAumYlbaSGiUtRCQBBWzLe0H/S+yuJAbdjQVvrIEkdBpkg8JwEFhHjkihcMexRhP9cVeJGfxGYBfUmqjvyJufp1P5kC0sdGa4M5KZ10Tq8vaAl6PZcz1DOwDGmxN0xkQufUgiP/BfMXNLSeAVzE8ZIPF8d4+9CaPHPeYgZxyPOEt2/cQbpLiV21EAuP3OBLNBaoq5KtJCZ1JlnizWVU4aFChOg3hkj/ZmfMBgpsSlf0ZfK7G7l2aAjrNQELYfOsWqGOJsdFsXzH/1gZBWW0QJMbxwHCfVqAaXkybVMNQmcaiObjqpfJRYSDEFwOmKagkLlAtegXWbkd1NvLUzIqKsRQ2PVeeSdyvStzh7qprya6fq9N8Xmnh2sZdabGC4OgktZsgC7hAxugnpm4dgArV1XwrTRrS0aw5r3diU8Mih8E6h3YwbsSZrA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?flTUxzQdLqPA4r+0+0xtF3vEAvIILS7dQNDx+Gixk5cdzd9NoMFOXoZhIb+V?=
 =?us-ascii?Q?JspBxlqKA4SKfxzHW6XAz8hnmMPmKbGvthFMAXNHUgt3lESTQ0FmGisTJkZB?=
 =?us-ascii?Q?UnSF6cnBLbpWFWp8XJb1pEy01VevdxVaxooN31I+S4BikfMbRk8Jg2GIW4Xb?=
 =?us-ascii?Q?I/bHbHHYVS3IbmYCorvq/iHalULdMicAQRDMs44yeCm0g3cz5D3xzdHzrY/w?=
 =?us-ascii?Q?TDaCpVPdtPeCEtgCrqH1lSaT3PxZsgGkAxFYq2+EE1/DgYkygyNWUIzdbGOj?=
 =?us-ascii?Q?Rg6ORlbzai+/nYwx4fG/gzg784QBZIPAf7nZjCjnbsAge0aOKlnOWWZ/U8yV?=
 =?us-ascii?Q?9NeRRUNEGjSMGYAd3/dyKxQqpFlL9SUQ2B0PqpIRnU7Of2jqk10vKySBid6M?=
 =?us-ascii?Q?NoxiRzCgNKN/B0vU3yu8PFnw04+VHHZ++aI84Uh2Gw+AaWXY2ILLnKbzwqw3?=
 =?us-ascii?Q?uyMPFSJTxFc/etpP5CRIYbPng6xbaddsWZAwqMo+b/c9UvdBpb4WrZiFbTwW?=
 =?us-ascii?Q?cpUZOgt200rMQGxL76qcQiojlqo6sDuJVOLiXyzfuKXD2yobZSKX8R5PWdRv?=
 =?us-ascii?Q?vy86kxCr5IlwgK1hr6zx6bDB1Ctha/061CnsKHYHbJk8dmH8o1gfxWx3FUPQ?=
 =?us-ascii?Q?f6owzIio/CD4i7u/2HOiuShzmexw+WXkgkfSmMEWRyZAumteCshtEBAYwmPp?=
 =?us-ascii?Q?96yQ7EZT8ESbVCUTdLIUr2pjbaXw/Bs1TNrM78vGNlHCTItfF8Og5NFrvVOC?=
 =?us-ascii?Q?QVVammIfeL636lmqDbOq+UhIOMXxoxQlEGn0FIUz4JgQZVUgC3yDAd87KnK2?=
 =?us-ascii?Q?0JVfxjKCg16q4bSUPBnU0IltqvJfUecJIkNL4ANUGzJgeTp4V+8/YwdVE8VS?=
 =?us-ascii?Q?Z8o8k1WIcClv+RgzxZAAXcQas1qxF/9qFMz1Z1YgXo5DYTOdasxlwc/FQMhh?=
 =?us-ascii?Q?VS3mH4ndRXxj94AG2CuOVnvKPdOWlvi0j+yuDsh5WQss3p4XHWUJyVNBtlxJ?=
 =?us-ascii?Q?5BnRbpD01hlypozSNR+SubYrXFD2jw6Nvq+v8k146E/o2uW7ok4xjG2wPwBv?=
 =?us-ascii?Q?SLcdEdzqmJiStvk1NstdrQ112y/CdtEat/kSgi3zGUzituIYv2SLNoGAmMgE?=
 =?us-ascii?Q?1HN58z5RSSd5cWxL1Eu4eA8ynv4OjUv6Q+MNboC92nNBYpDQfiScU58k1pms?=
 =?us-ascii?Q?Bw3ghkGUXnBTiJ+prcd5L0eTTRmai6empGoT0i50Pr8/wSXJGq9hLj3G5t5M?=
 =?us-ascii?Q?6b3xa5UeEzEjdJ0yCrkRIOKYz6WyexzxbUT7FEiLadWqu8rr3/PkLykOqPu0?=
 =?us-ascii?Q?ThI6H8rRGIbLilb/+8WRjbKBZYXBSHK7Yl01L7+d/Qa3qgGIBfuxXpllZVdU?=
 =?us-ascii?Q?qBJE+3aF9vnKZIRJxqBO9MMXRlILsFKdlHJaH74q2yPEbf+pCFwF2kzrdYMI?=
 =?us-ascii?Q?d5KoQHlFL8AqXF+1MklNntydYHLPb+Gzn13zy0eqHMCU82VZjMv5e3zBGjfY?=
 =?us-ascii?Q?gMFro5Mgn1m8qyTI/M+ShJ3JdwxtoZmJ80zbnhgRXN/OkitN0gKvLIj2yLL5?=
 =?us-ascii?Q?Fbd+pySEIev9wodf78ivFGIjIxBqgAc5Ck3zFtJ1OQ7LetOGaud5zPv/wW2p?=
 =?us-ascii?Q?tS3Caz9ktP1c++nmV51larTGPEeikyhX+cu6ldWX+hPa18K6GGRN3WXtirhe?=
 =?us-ascii?Q?jyQQPc/U/AeFBajoJs2se4OX53C1tko8C+ysOklvjyfPCmmDimuyNEGAE0T4?=
 =?us-ascii?Q?M9Btujm7gw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42543ddc-f974-4f26-1f4f-08de7f06d921
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:52.5344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNswoxtwr4apfa574wHsdxn8bfz96eQWZlpZkrvVo6O/JLq2nOmkEjAKXdMMTqu/1T2F54qQ7VzU1a95TNDPgQ==
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
X-Rspamd-Queue-Id: C6FCA259F40
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
 drivers/gpu/nova-core/mm/vmm.rs | 61 +++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index b0aad90e94bc..6e58f597fadd 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -7,6 +7,7 @@
 pub(crate) mod pagetable;
 pub(crate) mod pramin;
 pub(crate) mod tlb;
+pub(crate) mod vmm;
 
 use kernel::{
     devres::Devres,
diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
new file mode 100644
index 000000000000..f0e6ffbe2b7a
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -0,0 +1,61 @@
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
+    pub(crate) pdb_addr: VramAddress,
+    pub(crate) mmu_version: MmuVersion,
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
+    pub(crate) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
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

