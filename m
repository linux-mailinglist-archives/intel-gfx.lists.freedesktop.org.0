Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGsAMSO6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724A5259F90
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2435310E79A;
	Wed, 11 Mar 2026 00:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="FvJSP6gf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010000.outbound.protection.outlook.com [52.101.46.0])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30FE010E7F3;
 Wed, 11 Mar 2026 00:41:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gKRlCEHbP4RjSCpx3ACZbFNPJiy2n72/rw22rAAES115rvPbcpRveNZBPud9PIpuKLkY1yBSJXiHdfyOpyr72wHDS2oc2ClvMmIbUaKW1CV2wwfwUhii2kevJq3qnKDU7sfVfpEd2RRgsMWTmOxePv6JYUPIzj5pDJToyjKL3psKbibKTGOegsNBqiSCBOrPwwGOlnUNwKFC8QlYEU6UxJ4q5rniLht6dVsLy+JoGphTjZ9OZ3gIH9cdGoNkMEKB95VoeuyM7YzB+RrXor6tN2G80gkL/+1rjz2MmtFOieK0Kxq48YIHsRw50xJwMagbPkYhGZRsDDMd7wuo8dgqQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gTwaKkWl6+FLxWWRLVZBgWpCODRlQDdu7ZSDMa6qH+g=;
 b=v2IGBrV+h0cr6AHiXLcKtve6t2j6znW3eO7U2Z4x6Y4t8Syd/QB1frVtPxY7KOBN/aQ90ImhATOUvGy1dUdpe3g8MiPF/z7sfVAKdOXVkHfrC9vorOuejHWXS7ykJkFjMfG4mClPbDfu+Xdix5vShP6zPFXU7Ph78iBmoTGlBFPMb8Wb2dgl+dzVmLRpkFAl6SpdgMKMxEPQeRQ/YpCfs+XfARcaLCaRCaWvojV03vqvOq9nSNDzfgsC7RT/5MZBwXulLW4tYxLtj4bwpCMHX1pKVknwFTucGTbrmXaVLLaWXl+5p9Z32gZ4YB9o4yvRGoN3q9QV+Yey3tkN4QAd+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gTwaKkWl6+FLxWWRLVZBgWpCODRlQDdu7ZSDMa6qH+g=;
 b=FvJSP6gfQxsC/zqdgokUVVN5lIqaVe4Q3mJYryL6W59U0xkzJ0u8Xri3ZmxWnsWu1ViqHRl+QvmjNb/gE3fOPpTsYs+XdIF1zTHBFrJuGqqH/DhZEVeXm1J0fM3yI9Cvnn4N9dxC3Ij/cGHsKNgTDWzPER26DXf+06py4y44V5gvAdeWgdB+ih04nQ5aYvURT3XeW8b0JjntEcI6Nf6LrJ2iBcOa0Zja8D9vVFfMOZxxYf9C225xlaBdmuS0UtK003JICf2Y7gfVLLTZ9DGeJUpknvTq5KBO5nEiq1b/qH+zUwKTeFUBet5ILMvexiuwsYaQ3zs29fgvvuUZ+ojJ8A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:57 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:57 +0000
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
Subject: [PATCH v9 18/23] gpu: nova-core: mm: Add multi-page mapping API to VMM
Date: Tue, 10 Mar 2026 20:40:03 -0400
Message-Id: <20260311004008.2208806-19-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0043.namprd03.prod.outlook.com
 (2603:10b6:208:32d::18) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 80bf9670-b061-4ac8-9baa-08de7f06dbe5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: s+8dah1G7I15cL4B4a3JlSuuVtM0jRWC0NT/9ObpiDdjYxdVEPB587i9PAqxrO5jGGJe1npclK8Cbum4Eq5zB0te+MPaVd0/aGfU1rIGatmFpBOMT+yzrkXj6zTnH4Ny9dvNngAzzWBlFzCYAdRl+5cpMUiHQ7KAG+yboekdazhdAJQWrO3mFmn2YaRIjI5SLPH/n0NLeQMP/6fN65o/hGP8Ssa3+jtOU0n/cRK8XqvqfTgSDxLl7yh4Z/sxfP+NFbrb75qpj1E83n6Y+suUnrCCWySBHBAVqY7FBTMEfVBJRxFMRfwyPfj8ZiGTwyDFLuattRgY1NYcPjBVLdzvXAH2ewLbitOIHaCaly+kKrcDteEGNfkBwU/pi+FXxVo7icvu9l6vdMXCYEAPogofbR2atsfwGPpgmYeG1OybMn+D2hggXC6PtdxNvqq/8P4TmuMpqN2Z8tBdoPoz+R40uYUbnZt6IOt1LJyqnDYQMePzz6HA1mNar4lF8eLH105axzOKM4vQ5HWkyqs0IFO7pjmIe8+YlEb+AyKHKZlxpab5a8paet5TqsBEMUPesxPRQmMbVK4iYBkd4iHn/8ZptBc6m8B9TsIYTr2at0t+bIZZ3VMBLaP0c5KOjClNH7f0lH9yOu1MoeW+534ysg/PhCOea1wf+EaO/AcrHDMUcLGKDEPzvLwXZ/HYHlIAu9KayIA6VA2Ex/oDXR3k+qjzzPw/mWtC82PB5EJKVt8gXtM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kltYNVz4Xs67TyvFZD9n+7+KRVjK8M6apMemDM7Ws9b4Np+Wnc7IuUgrRiCM?=
 =?us-ascii?Q?bZzDoTjdCk9ruVN9NWzCtnYiC1YxUKMU6G8jExgNaUxpJhezfmDluyG/vLWo?=
 =?us-ascii?Q?4oQ3JqziDfXMTcU45r5T0Za0swU8MFNrObBDOWJe+nOxAc4+QL17T6rfe3za?=
 =?us-ascii?Q?GPOGoJi/aQpSXGWx63LAMdYjDy6eHNsn1rFxyFGNX+xrvUmzp74iwBuHeYPX?=
 =?us-ascii?Q?i0+6bzelETHs3GfrzjapawW5y/KVThrLjjk1d26OzCwz9UBwT4NNY/Z+uo+a?=
 =?us-ascii?Q?pIfRW1EyPcrzIvBkz0yuqFSoyNVH7lQ1LdQrxe9+6U5HdjD/XX0CrdPiC+ng?=
 =?us-ascii?Q?TtdPhz/wC/sUOWXKb3Li3SLj2b7fX6xuti/Gjq8Xr5d+A0a5NrFmgN7tagiJ?=
 =?us-ascii?Q?ihhTKNpSnD18W2jHwkc30ZLG6nXYqxnEoIJo6vVXkEdGsMsEU3FdZItERFd8?=
 =?us-ascii?Q?RfDB5q30ZENenR8Anw7PZrlHt9CcwZ3kqSZikzRNnqpWxp2dY2XjwHW8/V+X?=
 =?us-ascii?Q?JMh1h8bBVbQL1dYdFmYcKekzw+gBeZ3svW5ZRJlQIMGIAiCHi/AVxWJb1rna?=
 =?us-ascii?Q?ZIXaZRM3GiyN4kPjxCcu+n3Mw0qPuNjhujtLeQKElyJergtzTXr4bCJIyYNa?=
 =?us-ascii?Q?uVTcr871q/IzKrSqGQO2xCmIGoHkBxmgEIKnyGwT3VayF5/AKjPMkyw3wfpK?=
 =?us-ascii?Q?5GHL5G21o7yZ54fUtfRdJvCfqkeyM0He/MC8E0cTAkAJTtJmB88o5yatf11h?=
 =?us-ascii?Q?vnpDjeqV/vT6E7wBGXK9sX/EDVmubgs4RG3kvX8Es7ib/Q6SrfvNmv9Un8aA?=
 =?us-ascii?Q?OQ7mlVOO0J+5fU2DJywHxyR2X6zk7oqxajUX6X/DfRB9xvLeuNfQ7sIojf5F?=
 =?us-ascii?Q?OJOK1DZIV14UhsD6LV4CZXPWRVgENKE0hdqsSVoKwCkGqOla9tMZn3xLslUo?=
 =?us-ascii?Q?DDIKfL7pH4HLc3kJBm+umYI5NQFPtvq0IIYf8nTRRyQHAE5SRU5vCQaTPLss?=
 =?us-ascii?Q?a2WQzcfoxc1wwPVr6Wpmr1FRhQQ3gVcm+jsiWQijZeddzOkqLJrjh9Ncq910?=
 =?us-ascii?Q?tJsxhp3yysAvQ4NLaCag6ds/3IEd/tXx709cXD6YkGUzwiRXi8lqO6K14l9w?=
 =?us-ascii?Q?HA7hKHRinBnF8H/UHxN2I0yS8MVgZL3mpCrWMcI7MV2fHMeRey1VNhOninyw?=
 =?us-ascii?Q?1X/WF7YfAYrYZ4gwY5e6Y3u5eKXkqEG5Ab7o4MgYqY0cEXNhIyQ0VW3bMmz/?=
 =?us-ascii?Q?z2/GXsfxMl4GzwgIOtSUpuWV/cFOQD5HbDYzTUCVjDjOYIiXs8OsocIdlf1R?=
 =?us-ascii?Q?lJKVgNRuln3Xf4sK78WGXzm1mSuIv75o5qL/KwdHj+IWIwT8kPA7vjxxOG4Q?=
 =?us-ascii?Q?nePjbVATUCKO8b2MRXT5Ck+DTEI1DXEONHYa7erauekUrNdX5FyxZJw7aVyD?=
 =?us-ascii?Q?w8OL1Zg6WbUPZ9rbnc2M4tTVpr+Mu1757yMEJuWZlT16PZQJRMgQhMIgkyOi?=
 =?us-ascii?Q?jSUTw/9L4k0W+eI+p7VUpwKXQHkLxOM4DiQEJy4eaG+vuTLiZHC6y/cZzk1V?=
 =?us-ascii?Q?hz/1SVJF6CbRFcTOWfPtZ4dZvKVQCAhgIiRb/qPn5jR5b9091NwPuB0Gv64V?=
 =?us-ascii?Q?jexrMuOuBXIMyDXTPsmqcoHcRFZqX2At/UIPWHSyqkBLyGgxwcGlbhMS6tM5?=
 =?us-ascii?Q?GhvjkrWAkQ7cy6u5qg1UyP9CLs/IizgP/iYQ4tn8TRWby2YjmIc2e5bwNgRK?=
 =?us-ascii?Q?85dPvw85YQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80bf9670-b061-4ac8-9baa-08de7f06dbe5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:57.1058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lEZb7uVbS46MnOXtzFCyXN8peTtKOpBeGuD6RgmSZySmTtQDBEVDuhm/Mcd7Pli71MixPbShiIUJnV06oVXtqQ==
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
X-Rspamd-Queue-Id: 724A5259F90
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Action: no action

Add the page table mapping and unmapping API to the Virtual Memory
Manager, implementing a two-phase prepare/execute model suitable for
use both inside and outside the DMA fence signalling critical path.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/vmm.rs | 366 +++++++++++++++++++++++++++++++-
 1 file changed, 363 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index 78e614d8829d..95ee3496e0a6 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -11,21 +11,34 @@
         AllocatedBlocks,
         GpuBuddy,
         GpuBuddyAllocFlag,
+        GpuBuddyAllocFlags,
         GpuBuddyAllocMode,
         GpuBuddyParams, //
     },
     prelude::*,
     ptr::Alignment,
+    rbtree::{RBTree, RBTreeNode},
     sizes::SZ_4K, //
 };
 
-use core::ops::Range;
+use core::{
+    cell::Cell,
+    ops::Range, //
+};
 
 use crate::{
     mm::{
         pagetable::{
-            walk::{PtWalk, WalkResult},
-            MmuVersion, //
+            walk::{
+                PtWalk,
+                WalkPdeResult,
+                WalkResult, //
+            },
+            DualPde,
+            MmuVersion,
+            PageTableLevel,
+            Pde,
+            Pte, //
         },
         GpuMm,
         Pfn,
@@ -50,6 +63,74 @@ pub(crate) struct Vmm {
     page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
     /// Buddy allocator for virtual address range tracking.
     virt_buddy: GpuBuddy,
+    /// Prepared PT pages pending PDE installation, keyed by `install_addr`.
+    ///
+    /// Populated by `Vmm` mapping prepare phase and drained in the execute phase.
+    /// Shared by all pending maps in the `Vmm`, thus preventing races where 2
+    /// maps might be trying to install the same page table/directory entry pointer.
+    pt_pages: RBTree<VramAddress, PreparedPtPage>,
+}
+
+/// A pre-allocated and zeroed page table page.
+///
+/// Created during the mapping prepare phase and consumed during the mapping execute phase.
+/// Stored in an [`RBTree`] keyed by the PDE slot address (`install_addr`).
+struct PreparedPtPage {
+    /// The allocated and zeroed page table page.
+    alloc: Pin<KBox<AllocatedBlocks>>,
+    /// Page table level -- needed to determine if this PT page is for a dual PDE.
+    level: PageTableLevel,
+}
+
+/// Multi-page prepared mapping -- VA range allocated, ready for execute.
+///
+/// Produced by [`Vmm::prepare_map()`], consumed by [`Vmm::execute_map()`].
+/// The struct owns the VA space allocation between prepare and execute phases.
+pub(crate) struct PreparedMapping {
+    vfn_start: Vfn,
+    num_pages: usize,
+    vfn_alloc: Pin<KBox<AllocatedBlocks>>,
+}
+
+/// Result of a mapping operation -- tracks the active mapped range.
+///
+/// Returned by [`Vmm::execute_map()`] and [`Vmm::map_pages()`].
+/// Owns the VA allocation; the VA range is freed when this is dropped.
+/// Callers must call [`Vmm::unmap_pages()`] before dropping to invalidate
+/// PTEs (dropping only frees the VA range, not the PTE entries).
+pub(crate) struct MappedRange {
+    pub(crate) vfn_start: Vfn,
+    pub(crate) num_pages: usize,
+    /// VA allocation -- freed when [`MappedRange`] is dropped.
+    _vfn_alloc: Pin<KBox<AllocatedBlocks>>,
+    /// Logs a warning if dropped without unmapping.
+    _drop_guard: MustUnmapGuard,
+}
+
+/// Guard that logs a warning once if a [`MappedRange`] is dropped without
+/// calling [`Vmm::unmap_pages()`].
+struct MustUnmapGuard {
+    armed: Cell<bool>,
+}
+
+impl MustUnmapGuard {
+    const fn new() -> Self {
+        Self {
+            armed: Cell::new(true),
+        }
+    }
+
+    fn disarm(&self) {
+        self.armed.set(false);
+    }
+}
+
+impl Drop for MustUnmapGuard {
+    fn drop(&mut self) {
+        if self.armed.get() {
+            kernel::pr_warn!("MappedRange dropped without calling unmap_pages()\n");
+        }
+    }
 }
 
 impl Vmm {
@@ -77,6 +158,7 @@ pub(crate) fn new(
             mmu_version,
             page_table_allocs: KVec::new(),
             virt_buddy,
+            pt_pages: RBTree::new(),
         })
     }
 
@@ -135,4 +217,282 @@ pub(crate) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
             WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
         }
     }
+
+    /// Allocate and zero a physical page table page for a specific PDE slot.
+    /// Called during the map prepare phase.
+    fn alloc_and_zero_page_table(
+        &mut self,
+        mm: &GpuMm,
+        level: PageTableLevel,
+    ) -> Result<PreparedPtPage> {
+        let blocks = KBox::pin_init(
+            mm.buddy().alloc_blocks(
+                GpuBuddyAllocMode::Simple,
+                SZ_4K,
+                Alignment::new::<SZ_4K>(),
+                GpuBuddyAllocFlags::default(),
+            ),
+            GFP_KERNEL,
+        )?;
+
+        // Get page's VRAM address from the allocation.
+        let page_vram = VramAddress::new(blocks.iter().next().ok_or(ENOMEM)?.offset());
+
+        // Zero via PRAMIN.
+        let mut window = mm.pramin().window()?;
+        let base = page_vram.raw();
+        for off in (0..PAGE_SIZE).step_by(8) {
+            window.try_write64(base + off, 0)?;
+        }
+
+        Ok(PreparedPtPage {
+            alloc: blocks,
+            level,
+        })
+    }
+
+    /// Ensure all intermediate page table pages are prepared for a [`Vfn`]. Just
+    /// finds out which PDE pages are missing, allocates pages for them, and defers
+    /// installation to the execute phase.
+    ///
+    /// PRAMIN is released before each allocation and re-acquired after. Memory
+    /// allocations are done outside of holding this lock to prevent deadlocks with
+    /// the fence signalling critical path.
+    fn ensure_pte_path(&mut self, mm: &GpuMm, vfn: Vfn) -> Result {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let max_iter = 2 * self.mmu_version.pde_level_count();
+
+        // Keep looping until all PDE levels are resolved.
+        for _ in 0..max_iter {
+            let mut window = mm.pramin().window()?;
+
+            // Walk PDE levels. The closure checks self.pt_pages for prepared-but-uninstalled
+            // pages, letting the walker continue through them as if they were installed in HW.
+            // The walker keeps calling the closure to get these "prepared but not installed" pages.
+            let result = walker.walk_pde_levels(&mut window, vfn, |install_addr| {
+                self.pt_pages
+                    .get(&install_addr)
+                    .and_then(|p| Some(VramAddress::new(p.alloc.iter().next()?.offset())))
+            })?;
+
+            match result {
+                WalkPdeResult::Complete { .. } => {
+                    // All PDE levels resolved.
+                    return Ok(());
+                }
+                WalkPdeResult::Missing {
+                    install_addr,
+                    level,
+                } => {
+                    // Drop PRAMIN before allocation.
+                    drop(window);
+                    let page = self.alloc_and_zero_page_table(mm, level)?;
+                    let node = RBTreeNode::new(install_addr, page, GFP_KERNEL)?;
+                    let old = self.pt_pages.insert(node);
+                    if old.is_some() {
+                        kernel::pr_warn_once!(
+                            "VMM: duplicate install_addr in pt_pages (internal consistency error)\n"
+                        );
+                        return Err(EIO);
+                    }
+
+                    // Loop: re-acquire PRAMIN and re-walk from root.
+                }
+            }
+        }
+
+        kernel::pr_warn!(
+            "VMM: ensure_pte_path: loop exhausted after {} iters (VFN {:?})\n",
+            max_iter,
+            vfn
+        );
+        Err(EIO)
+    }
+
+    /// Prepare resources for mapping `num_pages` pages.
+    ///
+    /// Allocates a contiguous VA range, then walks the hierarchy per-VFN to prepare pages
+    /// for all missing PDEs. Returns a [`PreparedMapping`] with the VA allocation.
+    ///
+    /// If `va_range` is not `None`, the VA range is constrained to the given range. Safe
+    /// to call outside the fence signalling critical path.
+    pub(crate) fn prepare_map(
+        &mut self,
+        mm: &GpuMm,
+        num_pages: usize,
+        va_range: Option<Range<u64>>,
+    ) -> Result<PreparedMapping> {
+        if num_pages == 0 {
+            return Err(EINVAL);
+        }
+
+        // Pre-reserve so execute_map() can use push_within_capacity (no alloc in
+        // fence signalling critical path).
+        // Upper bound on page table pages needed for the full tree (PTE pages + PDE
+        // pages at all levels).
+        let pt_upper_bound = self.mmu_version.pt_pages_upper_bound(num_pages);
+        self.page_table_allocs.reserve(pt_upper_bound, GFP_KERNEL)?;
+
+        // Allocate contiguous VA range.
+        let (vfn_start, vfn_alloc) = self.alloc_vfn_range(num_pages, va_range)?;
+
+        // Walk the hierarchy per-VFN to prepare pages for all missing PDEs.
+        for i in 0..num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            self.ensure_pte_path(mm, vfn)?;
+        }
+
+        Ok(PreparedMapping {
+            vfn_start,
+            num_pages,
+            vfn_alloc,
+        })
+    }
+
+    /// Execute a prepared multi-page mapping.
+    ///
+    /// Drain prepared PT pages and install PDEs followed by single TLB flush.
+    pub(crate) fn execute_map(
+        &mut self,
+        mm: &GpuMm,
+        prepared: PreparedMapping,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result<MappedRange> {
+        if pfns.len() != prepared.num_pages {
+            return Err(EINVAL);
+        }
+
+        let PreparedMapping {
+            vfn_start,
+            num_pages,
+            vfn_alloc,
+        } = prepared;
+
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let mut window = mm.pramin().window()?;
+
+        // First, drain self.pt_pages, install all pending PDEs.
+        let mut cursor = self.pt_pages.cursor_front_mut();
+        while let Some(c) = cursor {
+            let (next, node) = c.remove_current();
+            let (install_addr, page) = node.to_key_value();
+            let page_vram = VramAddress::new(page.alloc.iter().next().ok_or(ENOMEM)?.offset());
+
+            if page.level == self.mmu_version.dual_pde_level() {
+                let new_dpde = DualPde::new_small(self.mmu_version, Pfn::from(page_vram));
+                new_dpde.write(&mut window, install_addr)?;
+            } else {
+                let new_pde = Pde::new_vram(self.mmu_version, Pfn::from(page_vram));
+                new_pde.write(&mut window, install_addr)?;
+            }
+
+            // Track the allocated pages in the `Vmm`.
+            self.page_table_allocs
+                .push_within_capacity(page.alloc)
+                .map_err(|_| ENOMEM)?;
+
+            cursor = next;
+        }
+
+        // Next, write PTEs (all PDEs now installed in HW).
+        for (i, &pfn) in pfns.iter().enumerate() {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            let result = walker.walk_to_pte_lookup_with_window(&mut window, vfn)?;
+
+            match result {
+                WalkResult::Unmapped { pte_addr } | WalkResult::Mapped { pte_addr, .. } => {
+                    let pte = Pte::new_vram(self.mmu_version, pfn, writable);
+                    pte.write(&mut window, pte_addr)?;
+                }
+                WalkResult::PageTableMissing => {
+                    kernel::pr_warn_once!("VMM: page table missing for VFN {vfn:?}\n");
+                    return Err(EIO);
+                }
+            }
+        }
+
+        drop(window);
+
+        // Finally, flush the TLB.
+        mm.tlb().flush(self.pdb_addr)?;
+
+        Ok(MappedRange {
+            vfn_start,
+            num_pages,
+            _vfn_alloc: vfn_alloc,
+            _drop_guard: MustUnmapGuard::new(),
+        })
+    }
+
+    /// Map pages doing prepare and execute in the same call.
+    ///
+    /// This is a convenience wrapper for callers outside the fence signalling critical
+    /// path (e.g., BAR mappings). For DRM usecases, [`Vmm::prepare_map()`] and
+    /// [`Vmm::execute_map()`] will be called separately.
+    pub(crate) fn map_pages(
+        &mut self,
+        mm: &GpuMm,
+        pfns: &[Pfn],
+        va_range: Option<Range<u64>>,
+        writable: bool,
+    ) -> Result<MappedRange> {
+        if pfns.is_empty() {
+            return Err(EINVAL);
+        }
+
+        // Check if provided VA range is sufficient (if provided).
+        if let Some(ref range) = va_range {
+            let required: u64 = pfns
+                .len()
+                .checked_mul(PAGE_SIZE)
+                .ok_or(EOVERFLOW)?
+                .into_safe_cast();
+            let available = range.end.checked_sub(range.start).ok_or(EINVAL)?;
+            if available < required {
+                return Err(EINVAL);
+            }
+        }
+
+        let prepared = self.prepare_map(mm, pfns.len(), va_range)?;
+        self.execute_map(mm, prepared, pfns, writable)
+    }
+
+    /// Unmap all pages in a [`MappedRange`] with a single TLB flush.
+    ///
+    /// Takes the range by value (consumes it), then invalidates PTEs for the range,
+    /// flushes the TLB, then drops the range (freeing the VA). PRAMIN lock is held.
+    pub(crate) fn unmap_pages(&mut self, mm: &GpuMm, range: MappedRange) -> Result {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+        let invalid_pte = Pte::invalid(self.mmu_version);
+
+        let mut window = mm.pramin().window()?;
+        for i in 0..range.num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(range.vfn_start.raw() + i_u64);
+            let result = walker.walk_to_pte_lookup_with_window(&mut window, vfn)?;
+
+            match result {
+                WalkResult::Mapped { pte_addr, .. } | WalkResult::Unmapped { pte_addr } => {
+                    invalid_pte.write(&mut window, pte_addr)?;
+                }
+                WalkResult::PageTableMissing => {
+                    continue;
+                }
+            }
+        }
+        drop(window);
+
+        mm.tlb().flush(self.pdb_addr)?;
+
+        // TODO: Internal page table pages (PDE, PTE pages) are still kept around.
+        // This is by design as repeated maps/unmaps will be fast. As a future TODO,
+        // we can add a reclaimer here to reclaim if VRAM is short. For now, the PT
+        // pages are dropped once the `Vmm` is dropped.
+
+        range._drop_guard.disarm(); // Unmap complete, Ok to drop MappedRange.
+        Ok(())
+    }
 }
-- 
2.34.1

