Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJZMKeX932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CC407F64
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4AE10E7A3;
	Wed, 15 Apr 2026 21:06:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ZxbMa2Q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011015.outbound.protection.outlook.com [52.101.62.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB22510E7A3;
 Wed, 15 Apr 2026 21:06:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hR8WZXFUWnXW2VmRQn3gsFtHANtiluv0chqVyPrFrz9XcDqiSOd+5NRS4c7OT/xbSfNgIPbWKfh36w5NUsG9dwRxNME/i+bv+CcASTtBNa5SUowNKDhgRB1pNhuW54WY51SxlPaoPJoP3rmK03drvu069hIjiOXs65eQrgvd4Oq5yv66u2S4inJl9DxYdXJYtjfNmLkiBDlV3xXyGXis9gAiNRyAEtjG4EjhqHje/UbEbPZcLpPfN9mqpWkUCPtdba9Z7P5fU0oABHT982hnwuZ5XVno2EO2HHMicf741IzZzJs2srfOHE4IyiCZYvveDmUTEKTIqZ73tt2W8aTubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfmqTZ7DU3ou7aLmEs84Jk7ABXvy/xS3kSHJOsHziwo=;
 b=vCZ+pfGUDhuyypWZlI8ANFHD5sDHL+8VIhSkT7ptKqLgcDW9WP2PcS50EzfaRUZZ7A5eDxECHTAuFZhPcAzU4XdwOlq9PGp+B9pFwaApvUt0611Ek7VvHyuBAhEVTvqVtCwA8qpwjVGwkKIZZsWAeeICR93B9Tcnu3oXqNLpGMlKg6UjdjJaP8V0eyqVa0djjb8LPrIwiCA/9eQ77GhRHnWfu2bZdAStIym2cJe2hy3s15zsFVjT20laC8isYNwLSadBAhW7MuSBmvo7troxQm2Es/Ly3NzuPRjjP6mbAKvQ1p1NuhxaTXukUlgYt1xCa0+PSDzXQinb8Eq5ePXduw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qfmqTZ7DU3ou7aLmEs84Jk7ABXvy/xS3kSHJOsHziwo=;
 b=ZxbMa2Q3W+NaspO7J8/AIxj2VZEnrmZu0WPPctn3ylhrpY8wg0tNaILlM96zNnMBkCb+5kgJdFR44xOpGSMm4nPOZiem8s4pkaVQGtkUg6VKUVq1HUs6zgae5LjaowIEt42/qwESo0usXWwX7tgSehvTvSNS8KyXaePH0J6iFvFrcCaavRA9yQQXOR+Rha5AnHHT+Lh0dz+KFJ6EtlR4W+0oqJ+PwvuvO3dBrr8AH54LQdxPd4ewf5qrBwGB0ekrNAIcP/gQc2D3Ot51zurF/ijF4Q5tJBX9sjRpwnmk0J976eeObsMPnzCUihYiCcCJW+4tTUN+k1FcaePDwbcsHQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:37 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:37 +0000
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
Subject: [PATCH v11 17/20] gpu: nova-core: Add BAR1 aperture type and size
 constant
Date: Wed, 15 Apr 2026 17:05:44 -0400
Message-Id: <20260415210548.3776595-17-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR22CA0068.namprd22.prod.outlook.com
 (2603:10b6:930:80::11) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: e1fe64eb-7e8e-4719-2966-08de9b32e0e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: zKlYW9MpoUqeoznGl+bcrBCv02C5xSBcvTDweN3IdZOHx5vDf8FP8c0IFMXh3VCppmnLMQbj97w/xaYFNvmBIlJ+Lp56aF6DpG1X2c4l4MMU5xAr85t68VevfL3U7SBSFPyXX2d+2KE64U52X70MgNIZkRcvQA4p64/Gh6zVJbtL4IIVWycWBbyrnw2akjalxsahS3v0G1bopSaSrOSW8o59DWw6BCHyKYWfZXFXKNQINH8busZ+ErmcHqo6cdyb7hYspqgK/FFNvAUaJ/10q9gvoMcrJfU2NAII1Vo9HpjkYwrYU6uYxUIBXZwbSoNkfF9eqjRzP6TDYAUdTdZQNQvGOp1iLjY+MDPOlI9AIEzky1JD/tOtUR3CU7Q1KgqfTHHImzKNN8LwkGPwew76PkpknhbvQnzxyT4XgyAeRizi2sgxuNsQts0Z0SDx3Rts5NUozv1t9OiiVmehJDfFl1NT6LfUrXC/Z5GXM+PtJZDmHuC0r2fQtAuyuXVEGvv85vfYh7yfj1YT8QZRN8C9vgG9A9Wxdkbh5x9NQjxdDXiijXrZ3ZFFmEGQSXPunOY9BSHQeRgD1VYcIZ5me/GkA6QcwnLI8Gqg+hMu2OPI4yHhK/+JMag4i1NX/KlMYdOlzjGUFCxFu/6hnmE1axNhrK40vLGN0mUKj5nbticUgjK9NxhMOUTv+Fa9+FpN2nz/ya8DB+8/cTHtVYFb2uqJxvBo33SkGxX83neXu2Z13EA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M9oGHPXK0BrP+rj/I8FN/7BxsWReztcsprQT2H9Hs5rQsbFR5yjocf1KrE3i?=
 =?us-ascii?Q?T/69K1Tv4rDnotXqyNLJkqS9W8xcAOO6pvAyHiN1azKRndsrm0a2Ec2Ewahi?=
 =?us-ascii?Q?QwsOcJ+Z0qSuYSFOh48GRMEK5Pg2BsNn4RUbC502BWtR+TNIsRSkGXyDjbyW?=
 =?us-ascii?Q?3N4FKIrM9jrv6IyRtE2lqoorb6FOcBnw8yry2CqlvvTWS0LKe3XjnFjcvep3?=
 =?us-ascii?Q?dG1loUudrMI0qh1/6t2cFcR+e5asW7n1eZDQaw9TTr0igR29Mfiv/oFOA6s0?=
 =?us-ascii?Q?xZG9X+NdwbbXmlVW8trysAQUEFCGUSE3F01og5kTE5MJ0IUVv2NbeLXhbP0G?=
 =?us-ascii?Q?S87svvTPsOr5YDQEdFfnVhihAXmBjDWpSepMdoXzTkydXxT+B6ab5FvSnpL2?=
 =?us-ascii?Q?GLIT9FZ9gsXwP4x4dyOUD9eHEVRHVgG7yJVfV+f2PAYO6gxaUlV4VqbcDQj9?=
 =?us-ascii?Q?Uu0BgHmiTP0LgmBBIRUeQ+xM/TdrcWSSGVdmSSTgJ74HwDm+T8pfTQV65sW3?=
 =?us-ascii?Q?nrS45XqnqmyVDUBS5GXPhJH4CpktMSGvNEllgFMreTlEiq6U76QS5mALNAHV?=
 =?us-ascii?Q?BRRDIAROHybA4H+rVac/76woJ7yvxQbvQBxJNmDEEdLz61EEnirQ4/Shw7sH?=
 =?us-ascii?Q?/7Q5tDk4RZca3z0U2A7l96P2WdkmD29hzbGX8I/M1/lsE5N+FFov2BqUA35W?=
 =?us-ascii?Q?n3egpuoLaXCZOAIPTp7d1geJnI8E80x75q3pvNqU+XEPD/swzGR6crwOyzLV?=
 =?us-ascii?Q?tsTvUasDA4qszzizj4RdrXLJlTJFPe0ejn0m0ham5qiOm2p1wM535aSoswib?=
 =?us-ascii?Q?Ei3X1ulVpc1H2kODctOOFymlRufYdGV78LhTntRmHhdTLsdv0XO1FbzSPxar?=
 =?us-ascii?Q?VUzdf9IIsT0dta85Kp3O0nDQv3rN0Vwu+XWLQhEoQPm33R7hqZBISR/LWoUB?=
 =?us-ascii?Q?xmr0VMf7w7KbovbccCUfl0IH82uXStjj7WbK5gOmgZ0QjNCoI7fGYvK1ouL8?=
 =?us-ascii?Q?UsPVfIAW65tFf5SxejxEYbu33uhw7caXPIlwNr240aHyN94y8J+t/K04Z/6K?=
 =?us-ascii?Q?w9e/m++lnRj0XOgKN6QQFwS00xGWSHpFFqf1uX+/sZorYXTeXuHUucAdeu8P?=
 =?us-ascii?Q?o1Xl4YzV+cq+sPMmkk3HrLqfPLBX+1YPyNuv8/2uM390MDWDshtQ8oWREGub?=
 =?us-ascii?Q?J9q+o/m5ok7OhjoFIiy/tT7eEPBoRB/+F1S6SU4KmE6T0Hj9xuzZZ0U48C03?=
 =?us-ascii?Q?krfKBFus7IoIj23QjKA1Y7+YaaxKM1Bz6XI4LJxHRpUz9lTlxwtVzD+gw4JS?=
 =?us-ascii?Q?o1haLRUvLayGKN3mVTvj7pqNkbqQVtxmS+7PmBLvmIHlFXQ+6LIjm8wxeYAQ?=
 =?us-ascii?Q?qevPOwxR/OMSf3AUp7szQyyBhFod0Rus0ZEC6U1UJYsHDOu5QiPl2IMjmhtl?=
 =?us-ascii?Q?PSNYB6y/YIpz0kJa14JeZkF0mb2r4wKMuOX/HL3TQFZbeFLHqz9gMhqrVGit?=
 =?us-ascii?Q?/nAmWgMZTu5sUGm3ntFwduuCerOzvWApUBV2s3u2NlYFHfIXgA/1fNfiCWIU?=
 =?us-ascii?Q?JvrslyYkoKFiAESl27XupbvM6SJvlo36TpfdF+tZBCFHW8eLSdxOGGAIL8Lv?=
 =?us-ascii?Q?UfpwQbogrvlNIEyIxprSjD8wFkTUPnYbRXM1oChbgejsWg6N2m+9KuTPk5ij?=
 =?us-ascii?Q?JM5EEwciQ0I7NLKIaWRiO1FDavG9YIdmtl20EPl3FnkQYkb9ICFFIuYI9eB+?=
 =?us-ascii?Q?uc8BI2YQmw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1fe64eb-7e8e-4719-2966-08de9b32e0e0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:35.7852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SAlbq0k440vay6YCM5UKnQya4zD7cDPi+bkpOc/SnDonuPOVxENCuX3QO5oc8LWTJBDk0mRjwwlriuFuGK8Rog==
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
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 571CC407F64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add BAR1_SIZE constant and Bar1 type alias for the 256MB BAR1 aperture.
These are prerequisites for BAR1 memory access functionality.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Co-developed-by: Zhi Wang <zhiw@nvidia.com>
Signed-off-by: Zhi Wang <zhiw@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs          | 2 ++
 drivers/gpu/nova-core/gsp/commands.rs    | 4 ++++
 drivers/gpu/nova-core/gsp/fw/commands.rs | 8 ++++++++
 3 files changed, 14 insertions(+)

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 84b0e1703150..597343d5da54 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -47,6 +47,8 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
+#[expect(dead_code)]
+pub(crate) type Bar1 = pci::Bar;
 
 kernel::pci_device_table!(
     PCI_TABLE,
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index eeecf81a0ffd..9bf0d32c6a7f 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -193,6 +193,9 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 /// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// BAR1 Page Directory Entry base address.
+    #[expect(dead_code)]
+    pub(crate) bar1_pde_base: u64,
     /// Usable FB (VRAM) region for driver memory allocation.
     pub(crate) usable_fb_region: Range<u64>,
     /// End of VRAM.
@@ -212,6 +215,7 @@ fn read(
 
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            bar1_pde_base: msg.bar1_pde_base(),
             usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
             total_fb_end,
         })
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index f2d59aa3131f..ded6470df214 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -127,6 +127,14 @@ impl GspStaticConfigInfo {
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
     /// Returns an iterator over valid FB regions from GSP firmware data.
     fn fb_regions(
         &self,
-- 
2.34.1

