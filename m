Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EC3BM/P932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3D407FA1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3388F10E7AF;
	Wed, 15 Apr 2026 21:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="tjznkORd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C4410E7A8;
 Wed, 15 Apr 2026 21:06:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=te4V8ac6rLmXNL0lyt5tr1s8l0WwviLjPlAcRia1xsne7eFm6IHRi2tazV2CMuRGvxo/h52dZf/lgis7TeZOFCZCmqM4aG5EvSNtgWF6U875QfpWpr7uRcXfD33aRSFw3PAfsP8N4rEZgEWh0fYKlwbLbTTymmuslz/rJyA+SYsRE92SB5nih3oOSCYPWH/z3dz7S21bVTxHj2K4gwg0ASkzBeg63zaw18MQ/FZcKH6TS/d+4tLgu+CCQDWGJ3Fh/o3mFCl/lmXm84DTGD2ZGpuiF40C2Ow9OKLssuYAVsdgkBebfk38PpTPJLaQgTSM6fXxaMQDnjfugnS31Kq3Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4/xTgNImMTfx2k15F2wK6pBLMkeo5tKsZ3gNhhGpuU=;
 b=ZO3ceaR3FHcXwBaw+z39XVHBVkLuW4oiNpOCQ6IuqknoD7VezVsQmwt65hBTswUUVM0sR8MFzp/9ZS03lnBoSV1LgiOpJ+nLSwaiaLOATDxkUiX3x17aFeOJSBFSX0oYW8l6Wq2yFDOHo5iWnXhAu2wBq5I0ecieVFNDG7ibz5SHdqDPogFqqGrk9oQGZafXbs9jKdOyov2AmJ5L5HP6HXkP99di1uTb88xK8+mPq3Zj4gKO69pIf8zIEg26Faw+mjTEu+Umpw4bg2/x59rUaEUY0zJYJb6gx2QQlITorQ1mI5zKIMI2CMOdcgPCAnUdEV2Vh+ah6nyKHxi8nuMtgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4/xTgNImMTfx2k15F2wK6pBLMkeo5tKsZ3gNhhGpuU=;
 b=tjznkORdCt8tlMAY0pjLyYPTmterehFAfnH3GrEMksCLT3blBT0zH5LMisEXZ2aEbqP2Qgeb5OttTh+Z1cWb6u/XP2/qRUT38S2PrInVJ+MPco2XTCcEF8AUtKhCmSLg7csa+rw+EDQ9mNMA4qqaecayG+cboO86QCdbvcUiAmv5h5UJxuc5v9/TyJMkktcgubAWBG+g98ekOk7mkQeJOU18vBrv3nRdtqUUfbFIGkKujCeEU+QcOA1zm1G/VflwjmniScI3CITghBlh7LXEAGwyVHhAJLWEVMzZcdzzJ4cBQus4vrSV6/ZfOgf8lXCQKbICYIsk3/uOegvb9ClHwA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:43 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:42 +0000
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
Subject: [PATCH v11 20/20] gpu: nova-core: mm: Add PRAMIN aperture self-tests
Date: Wed, 15 Apr 2026 17:05:47 -0400
Message-Id: <20260415210548.3776595-20-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR18CA0021.namprd18.prod.outlook.com
 (2603:10b6:930:5::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bdff947-9f04-4356-cba6-08de9b32e519
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|11006099003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: KFCF4R+50ghFAP1+D1Z5218OYB2v5RWlsZoKzHLFU1BBjwzoztv748kyKgcj4mvr6qHHfT54hF+WLj4BJngFmJ8TT68LrO1IHwVhcYwIpJ0pibd9IX6OJUshBGXVIU6MAR1WAoaPsCSTjW5WlAe1X6YUMBNt7belCrytmAW42EERp232kiXbgZR8vs4Va6QcbXPmerysLoJvGp+lNQ4vLkXBzYmMg8jhFssMTG6qEc7zxZ7+WNU4rb0ROHO6ytwcS1MLw4hwDAx4mGu6xqhkrCfAuPtN4gATOlnTUQuApLhyDKMUq9x+CrRFvCXBQscTIR453wssi8QN3Q/934nTaW4u67sg+Bq3Uw8dl4kYUBz0n8Y6ZbfVM6eIFXiSQh8MfCtMwO7Eu7N8MDo0vtrpzNvI6mo707tO5Va5cboZqg5Ts1WF4F9t4MJ7KxlVbgNmlbc+l2PsU4is7KiQXk4JvJIjuHBR2z6+2hxUz9M/yjF7oVhbK4hNHq/uR/bxbUz15faVVXtdciHK3Mpq8ib1SqskTUEE44KLeg70ajAff8DYzz/y+rki/fmn+uIpswLPgeGXEMa9Uma7CjgdN0vjyHhlZIA3FlrkhYiLqFGj6HqBniG5ANn8J7LMHelNl4KLOKtVJz+7qft/cdSCKLjRdu+Tq754D8AJag3N2xtAC/26Mc0aQR4CslQ9GvNa7cGmSZt4NAx670M6bKFAgqhtuze5hlehBhPaWb/8L1QzInk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(11006099003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6AbRVVXh/5gTX8CYqI8N/+rX4Pz1j8LjoY4yY5YH5BLEgEC/rm9TlnBTpLfB?=
 =?us-ascii?Q?GrkUNbVxtmfmvodPI0CxuQYmFpRlEpXF88QSxZlGKo26YPvmwjW67Dyhcjxy?=
 =?us-ascii?Q?6nMZYPs/UwMeKhVMFH+zx5Bbco6yL0EkUHofMXPCeS8yxlCh3GsJ6aaTgXfY?=
 =?us-ascii?Q?l/QKaRC+8njdmKy+nUSyvtD6ljNSHypTsMoLfkemx1VAeGeVkaCN0bKgJiCj?=
 =?us-ascii?Q?yep+zAGK5ksJaUhVd6ci1COd6mHqukyg+yyz8tALOKDJYWGHK6ppMi+RQs7G?=
 =?us-ascii?Q?4Xaep6JxmXtp7dYxlHMa5vG3+wtT9n9InteX8U4nE6bueCZFJ+1nyHKmKzIJ?=
 =?us-ascii?Q?01KLTaMi9MACeO1o8OlRxqR0GaJLmpXdCA4c6khGuv3qRWOrpzei+9QW11Wk?=
 =?us-ascii?Q?73CJj1jAGjXpE4dgOPyVoluWwP+GVXkaegvc8PCJvEV3zT7H3TNoj0L5k8tx?=
 =?us-ascii?Q?ITIatDFgUgyzG+iuGDLmDGxgb7vq9iGNgyXkcIAVWY+O+sxdQN47XTPftwuM?=
 =?us-ascii?Q?+ILTmnQrsxF4iVZhIgxQxa+3hA+6O+d874O3e7VUEIcS6JdKJglQMoggM88i?=
 =?us-ascii?Q?uhNm7IXJcLRnPBdrYWyqCIIDCtv5X76/0pvdd0/YHKw3KVmcyEAbX/z0l7Cr?=
 =?us-ascii?Q?Jvor03waYp1SYkvXx+Gv5Y8QTHKy0gFRva8CNQt4Lj/OfP7ZcunTR7fcjT+Z?=
 =?us-ascii?Q?GboCB4voITG4jMNfF5p21JL/QSbtVs5m9dLrr6rGYAHsyWcQU6s/rdWARWrb?=
 =?us-ascii?Q?2t+k0VIlSbkxnyomtxqdXKUMHOvLEenQFERJ43JtjOi4yN4bV3OSv36R+1y9?=
 =?us-ascii?Q?Vn5k3Lu48XhKBbsw4GdLHpVSCNIrdzAW8rdWV4t/fHRZVKON60U6nA3RXcfN?=
 =?us-ascii?Q?hY5V74u0THlPChhYjMZTKOGN9YsAogz2M8YvcLWgFk9vfe92Z6TCxgIULMjx?=
 =?us-ascii?Q?jhFVZHtlO0ia/9GrowP4t2gV0Q8s/H+mTyPdVMYxvhAI0yIXcR+wHscne+4P?=
 =?us-ascii?Q?eRO1RhMPkMiZHI/AEpvs46PoB7C4oUA/Hd2xSafQqvciZ+HkFF/4f9lfQEFs?=
 =?us-ascii?Q?X9tgg+AWX4cMCSNYuZ4088uMCWrvSeuWvX0oXTZSUDzG1XFtE6Gp+S89H6xu?=
 =?us-ascii?Q?oTOPAhKb1r4TX2OwUIT2UvqFMOszKQCV6gCczh52EdgPMLDAovEMnSjNJSTv?=
 =?us-ascii?Q?vEelWpMWGbn8C8YoZ5Pgj/UlSW+/gAGtHbm0ZQ/Uuj1aEKhZexYF2sYRUDze?=
 =?us-ascii?Q?suW2qo5zhiaO1hYpgzokrqsAma1oXuQpv+uNLJuEd6HIKDBJyZOeZIX+JPQV?=
 =?us-ascii?Q?1SdrCxtgnVqRVri1a969XndRuivaOGzbPJsY7h+UuPjOJ0LSEtgbmWiEIehr?=
 =?us-ascii?Q?MZFu4hSFPZBu/PVXOKMnWR7NxUXIKOSLsMc8k2l5j54XCV9z6UuLgyyOFmiN?=
 =?us-ascii?Q?6BLpgE4Bqpbv3I57JolrOeHnRWIE6deUqFblD/+QroZfS7gQ1CZykzjANAC8?=
 =?us-ascii?Q?O5W46ZnPAyXmUcWbNNTM8FpPi/pkCHjH7RmnDZiWMbEg3lGh/mMrzoO5FR3q?=
 =?us-ascii?Q?Dy2V7c4SGngqchamBm80VmBC6ReEHK1FXz5XmnOxrKxtHGCpdvtazStcj4T5?=
 =?us-ascii?Q?sf00ueTz3IJ3zXr5YdptWyIKxgRK7xg0w43wgB8w3qpAcnBDWJYSMw0WvNKS?=
 =?us-ascii?Q?J7WM+RMFqK+v5BOMYGwuhehTzHiYxPUbGuj+tMxmNANy4o284P58PZUDNyv4?=
 =?us-ascii?Q?kz6NIYkTfQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bdff947-9f04-4356-cba6-08de9b32e519
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:42.8978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqfecslSJNCCOfokBrwrUT2MpijTeF5Cv/3JTKpRi4MiQnJ3Su6XSYGc31aLJHerviKsR5Uqjob7aWqK15eJxg==
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
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 82F3D407FA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add self-tests for the PRAMIN aperture mechanism to verify correct
operation during GPU probe. The tests validate various alignment
requirements and corner cases.

The tests are default disabled and behind CONFIG_NOVA_MM_SELFTESTS.
When enabled, tests run after GSP boot during probe.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs       |   3 +
 drivers/gpu/nova-core/mm/pramin.rs | 209 +++++++++++++++++++++++++++++
 2 files changed, 212 insertions(+)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 8f236615cc13..ba6f1f6f0485 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -353,6 +353,9 @@ pub(crate) fn run_selftests(
 
     #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
     fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
+        // PRAMIN aperture self-tests.
+        crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin(), self.spec.chipset)?;
+
         // BAR1 self-tests.
         let bar1 = Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1"), GFP_KERNEL)?;
         let bar1_access = bar1.access(pdev.as_ref())?;
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
index 91a0957b2f92..eccbaa67b39a 100644
--- a/drivers/gpu/nova-core/mm/pramin.rs
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -180,6 +180,11 @@ pub(crate) fn new(
         }))
     }
 
+    /// Returns the valid VRAM region for this PRAMIN instance.
+    fn vram_region(&self) -> &Range<u64> {
+        &self.vram_region
+    }
+
     /// Acquire exclusive PRAMIN access.
     ///
     /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
@@ -278,3 +283,207 @@ fn compute_window(
     define_pramin_write!(try_write32, u32);
     define_pramin_write!(try_write64, u64);
 }
+
+/// Offset within the VRAM region to use as the self-test area.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+const SELFTEST_REGION_OFFSET: usize = 0x1000;
+
+/// Test read/write at byte-aligned locations.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_byte_readwrite(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    for i in 0u8..4 {
+        let offset = base + 1 + usize::from(i);
+        let val = 0xA0 + i;
+        win.try_write8(offset, val)?;
+        let read_val = win.try_read8(offset)?;
+        if read_val != val {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: wrote {:#x}, read {:#x}\n",
+                offset,
+                val,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test writing a `u32` and reading back as individual `u8`s.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_u32_as_bytes(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset = base + 0x10;
+    let val: u32 = 0xDEADBEEF;
+    win.try_write32(offset, val)?;
+
+    // Read back as individual bytes (little-endian: EF BE AD DE).
+    let expected_bytes: [u8; 4] = [0xEF, 0xBE, 0xAD, 0xDE];
+    for (i, &expected) in expected_bytes.iter().enumerate() {
+        let read_val = win.try_read8(offset + i)?;
+        if read_val != expected {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+                offset + i,
+                expected,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test window repositioning across 1MB boundaries.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_window_reposition(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset_a: usize = base;
+    let offset_b: usize = base + 0x200000; // base + 2MB (different 1MB region).
+    let val_a: u32 = 0x11111111;
+    let val_b: u32 = 0x22222222;
+
+    win.try_write32(offset_a, val_a)?;
+    win.try_write32(offset_b, val_b)?;
+
+    let read_b = win.try_read32(offset_b)?;
+    if read_b != val_b {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_b,
+            val_b,
+            read_b
+        );
+        return Err(EIO);
+    }
+
+    let read_a = win.try_read32(offset_a)?;
+    if read_a != val_a {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_a,
+            val_a,
+            read_a
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that offsets outside the VRAM region are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_invalid_offset(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    vram_end: u64,
+) -> Result {
+    let invalid_offset: usize = vram_end.into_safe_cast();
+    let result = win.try_read32(invalid_offset);
+    if result.is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - read at invalid offset {:#x} should have failed\n",
+            invalid_offset
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that misaligned multi-byte accesses are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_misaligned_access(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    // `u16` at odd offset (not 2-byte aligned).
+    let offset_u16 = base + 0x21;
+    if win.try_write16(offset_u16, 0xABCD).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u16 write at {:#x} should have failed\n",
+            offset_u16
+        );
+        return Err(EIO);
+    }
+
+    // `u32` at 2-byte-aligned (not 4-byte-aligned) offset.
+    let offset_u32 = base + 0x32;
+    if win.try_write32(offset_u32, 0x12345678).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u32 write at {:#x} should have failed\n",
+            offset_u32
+        );
+        return Err(EIO);
+    }
+
+    // `u64` read at 4-byte-aligned (not 8-byte-aligned) offset.
+    let offset_u64 = base + 0x44;
+    if win.try_read64(offset_u64).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u64 read at {:#x} should have failed\n",
+            offset_u64
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Run PRAMIN self-tests during boot if self-tests are enabled.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    pramin: &Pramin,
+    chipset: crate::gpu::Chipset,
+) -> Result {
+    use crate::gpu::Architecture;
+
+    // PRAMIN uses NV_PBUS_BAR0_WINDOW which is only available on pre-Hopper GPUs.
+    // Hopper+ uses NV_XAL_EP_BAR0_WINDOW instead, requiring a separate HAL that
+    // has not been implemented yet.
+    if !matches!(
+        chipset.arch(),
+        Architecture::Turing | Architecture::Ampere | Architecture::Ada
+    ) {
+        dev_info!(
+            dev,
+            "PRAMIN: Skipping self-tests for {:?} (only pre-Hopper supported)\n",
+            chipset
+        );
+        return Ok(());
+    }
+
+    dev_info!(dev, "PRAMIN: Starting self-test...\n");
+
+    let vram_region = pramin.vram_region();
+    let base: usize = vram_region.start.into_safe_cast();
+    let base = base + SELFTEST_REGION_OFFSET;
+    let vram_end = vram_region.end;
+    let mut win = pramin.get_window()?;
+
+    test_byte_readwrite(dev, &mut win, base)?;
+    test_u32_as_bytes(dev, &mut win, base)?;
+    test_window_reposition(dev, &mut win, base)?;
+    test_invalid_offset(dev, &mut win, vram_end)?;
+    test_misaligned_access(dev, &mut win, base)?;
+
+    dev_info!(dev, "PRAMIN: All self-tests PASSED\n");
+    Ok(())
+}
-- 
2.34.1

