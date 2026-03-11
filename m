Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMGRKR66sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BBE259F39
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E3E910E7EE;
	Wed, 11 Mar 2026 00:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="XrsfTBy4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012045.outbound.protection.outlook.com [52.101.43.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3F810E7BE;
 Wed, 11 Mar 2026 00:40:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SSbVCOv69Jftpvdv2F+oLPNcAg7/57feDUYirzO59n07DlImHvDrBDY9k7O1hPH6+3p2/Bn0uNptTC4ZvhYHudaOoVk0YT2E/aN5GPNi+8QKtzwVNYDS9Bz8CDON+RqyRVT9wTrzndwIz3fXKhTK3Tr2pxlQ22wVn2zhH20lFUJMaj3fq9AKg9qZ0jiipm3Wl+Vl6B/V+OmzblDALTDzp41Bdw2nWkSqrt/sPgWJUjiaEGrDgoGiKqMswoVwvdHRuxPYx6N9y62F/2hcx9DHmnC5+t7R1qsMUC50OeyLPSSKSGSpGphNwF3jU17A/oCO4QUAYvbym2gEKfEFUXx8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bm4wyCBXT4L1Wywq6rF2cQTNiL3euaYZatny2Ls4hs8=;
 b=souTqhql86xSlecMLE6Bs8KxYEC8fYyrcvruBqujz3L5VNF8keFrqUujtEg85/6Z+YvmfxVtz1UzcdTh2pTeop4yqCPL2Zp0xoDtdGjovKU20654YPiIAmTf/AAwn9oej5VyhamA6W8mxDbjnaWOpx03SZWJUTFtGcOd433HdTTbtgKSYUpqmW3IoXIUMVwxeePzldJkImZ3QV0aakQGng/u6L5yp/LpAyzgZ+OHbpdbxTAtkbbZ14qUaodQovO0PgLcIhQrgxZexsA/9D9jdshHZd9IwZoc+e/X904UFCI62IEISzfmb+02bRnIK6JClA310So1h/2TiGb8J8kgvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bm4wyCBXT4L1Wywq6rF2cQTNiL3euaYZatny2Ls4hs8=;
 b=XrsfTBy4TCfbSr2RbbRhyqP/9/xL1tJwR66RjGf49JPPMEDAH+EFFYtzZvoi6PCA8MYLubxwGTYQx2wkzMUzaUF2GyGfzBJhk94j6rFyIfFEwtOiWGTGVn+GfYluL6dHwYT33C7ZtT+1tHuaeFaRMWDiHtuThc9/obZte2g0DctZj2Ru1j+63EThG4ndir0OpWRYAsj8b/yWwmVDu9guknBRAa8mBGsOy1VkF4huvZXP3MaJmWTH4mC68Pc3F4h0nOOnxmuGMOrrs6cNVgNVkz7kLsRQtJR1MIbce8/h+vDHBwmc/BusWlkJdz2/81WRFYxnGTK4yEIj/cWzCTUbdw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:48 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:48 +0000
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
Subject: [PATCH v9 14/23] gpu: nova-core: mm: Add unified page table entry
 wrapper enums
Date: Tue, 10 Mar 2026 20:39:59 -0400
Message-Id: <20260311004008.2208806-15-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:208:329::10) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 8aeca5c3-8948-43aa-1dbf-08de7f06d6b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 5cZ+pPRaZynjGJTw3jqWlvYfPxttPGiGNAgsKIyjCN3f6vSVqqZ94RJLJZnOnC1jkszcSKJkM6mIK5+ze3K9MUNPN0xWW2W48O4lzAI8Rv/bI1hz+Qr2DA00dB9LBqBbWUn8/baR95EN6QsR2qvuS/0RVAdwaZ7RJuqNfoyxeSCCyllgsXainkwmP9buaBSUfSIR6IXeRDyvF3xkdFfEQGDOr76urEYmsNjxs2GwR2L+QPnurZ+N54YEDhx4w/eE9839qKQH9lMm7xxsDqovVq68KcUnIiZF3smQDEuALW9gh3a6kD04Sxf6rP6R6vSb8qewpEqCRYa0gSXcguDsLsWaYNXLSJD2dg+TwaxobWeA8A68QjSXhKvPVDPyVJC8zaxAJ3FowQP34p5J7caiGh1tc6MPuQRfomW97JijcLcH4GMaXJRhjEMrT1mVGJwVUja4qH+Asz1sxUMUWIxEsjQygVHSmpz6VsvKeKNo2Z2YJhuyQQlXP+HgGtkMDQPJlEJTj3Gt54lPBm63geE9rAoCdZvPONhe99zmc09Jn5HyYJZqwlyDus8ieqoT+UqTCR3pam8nYYQvaMCivthML/bc1bMX96JlFiSP+Iyb67fba8EtY1RYQ4UmGZ5Gn53rwNaVTzNJb/QWrqpSlC+FWHMeBXW3zxX1Y5C61mW47kliZpzv9CpBYluGSa2tJIOGd08z/wqdJIVYCw+0RdHWe+JstfDGwQJt7mj0ZdTzcw8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eJDFJ0fmBr+2HA4AsQOJy371n7kWQ3cM4UeqFk1u1iIDvKXDGJEWQPvc64Za?=
 =?us-ascii?Q?/491fZt+mWXCfcP8mB1QCf0jvg6g+C6+zSHGFzHsxw3l/6WtfpORmgMYgvkw?=
 =?us-ascii?Q?2OLbXmar+9eZGN5DPI0orixP9khzbfUBpfRz4coVD/E/0qykg5vDZgvUwsUb?=
 =?us-ascii?Q?W5v1wsq2tdB/iE/aCxSriGnsvzkv9u/SNoldcDnNwAw1nmeAxPbCYg1YHLlM?=
 =?us-ascii?Q?Elzc0ZfTP7NKXfZEBcr9s78uDFgRAvnle6Demy/eJpCkhtTx1jlujx2Uwwau?=
 =?us-ascii?Q?LQwKvdMzpBAy/UrFBRwNVktwq+NCcFU3JGl1TCI2bsWKf57KW//hbrDMVce9?=
 =?us-ascii?Q?Lz6ITTz/Ai8vZ/cDIHp6HTtYmgVL/qf8b5sV4YOiYN96sb50EnAnMRHPgSCC?=
 =?us-ascii?Q?oeJzFKOVC4gjUmZ49qmdZvVORFDlvegeJ8l6m3AWIj1h3EpgAK+rq7mAcyWq?=
 =?us-ascii?Q?Tdq0qiebBiOsWPycLEBhzEmiPOAY1CoSCrIVTD6VCt166nnUSG8WNo8PzwiA?=
 =?us-ascii?Q?be8a5lU/ryol9jDUIhyeWD+W7z3JI48V16sd34CNco14WnXQa4ET46JjTNdp?=
 =?us-ascii?Q?xQ7iVYYWz+4KYtm/3llr0IFXW9fEqXojXSjVqh+ov1Knj2DNhP/ULQcl1Z0Z?=
 =?us-ascii?Q?oUyUWUKZpXsYPTovhq/YwCtK7t5VTZnYedZsjDLbw8AesQ1h9vAXrWBzhR0v?=
 =?us-ascii?Q?IqlsztvkW0w3ji/JOX3TdWsNP7LnrtclREthyGwFhEsd8o70jOj+4STip5e7?=
 =?us-ascii?Q?H5ibQFsLHPZwtjWOvJ/0ymITBtk7ddErtyASsl7lwM7rQG+MQyz03vkIxn7f?=
 =?us-ascii?Q?7OBXQI9m0giZuz06efD+JE5rIcA+GIfXSIBmUedqyA4VA+Qu9H3rk1NwVygR?=
 =?us-ascii?Q?vUieiFetxHHSoXj2H9R2BJhjY4ydeaB6Rpq3r+toqfzzkNTX8bzvPRSGWOoo?=
 =?us-ascii?Q?QEzEpTBfqUdUrlPSXrFUL1mBQy2rBsd5YW49tDcer0UvXsXkITPdnSpLgzwW?=
 =?us-ascii?Q?wZ5Wtpo1PbKTu0OH467ODHXZ30/pfXvaOZiAEqN6jTmpa3NidyyW4/OfM845?=
 =?us-ascii?Q?xoh1LiuU/wqXkgzHkQFGmCmhNeN2ta3mPTmV03p9qSD/PrczIE8i158TtddD?=
 =?us-ascii?Q?hrxcHeM001QDHuJ4KV7MCWNdpqxF1TY5e9bOs6ba9yCfYw9DhgT9JR6koaj7?=
 =?us-ascii?Q?ncyL3uw5uRxJ/0OkhA4gjUmWMWmqUR+hDcBnvqtf5kQpHYL1TwBMdy60l0Hy?=
 =?us-ascii?Q?tE2rYwPVX3DegGV3HnZ047RJL1KhLVg+qjRPQmYPZf10FOs5Eo5Zu1QitGoD?=
 =?us-ascii?Q?Ekd/g5J0OjWBqG1nx43ccn7n9EXDMHy9oppowtCEoTo3mI0Uq5R8V2N8XXSG?=
 =?us-ascii?Q?MMHT3tSDn4x1Z5i29bSwNTOJx6ThuZYVvUN5xts3eDSLwkO4Ij8yL+oAfNHH?=
 =?us-ascii?Q?RDQ3fcwN/9uk3Mo46Gjdmmf9+jYxbsW8C2Co9OMn41loRWJTCTElCMO3aL8v?=
 =?us-ascii?Q?RpuD9zUnX6wTq/3csjCi2BgY+bmtioj0p7f/JmbDN6+779hfiK2HNOPO0dql?=
 =?us-ascii?Q?2UkUakUgfI4chAX8nYcTKjSNMWjz5rVCMC9drnyJTb7q5po1HzeZQCMN7FnV?=
 =?us-ascii?Q?RtuyOSrXBvkHFEoeYRW0/oQH6SR2sZxLPEy8tszbVbhEjCU8CUAlhbasagYT?=
 =?us-ascii?Q?IlLnI3yUiJFlqEMSoel4k/eqW6iVXYYOaiE2xP2aN4WwQS2+8l6fVhOIxNSC?=
 =?us-ascii?Q?pR0MUGeB9Q=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aeca5c3-8948-43aa-1dbf-08de7f06d6b4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:48.3266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4h3OiM+MBbmU3TVAg5N6DpOjjZR37XahndK2xuTnczs1LD4fGwhYKvclu4kyLjqH8fWzHH48RfVx3YUfTmMlAg==
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
X-Rspamd-Queue-Id: 52BBE259F39
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

Add unified Pte, Pde, and DualPde wrapper enums that abstract over
MMU v2 and v3 page table entry formats. These enums allow the page
table walker and VMM to work with both MMU versions.

Each unified type:
- Takes MmuVersion parameter in constructors
- Wraps both ver2 and ver3 variants
- Delegates method calls to the appropriate variant

This enables version-agnostic page table operations while keeping
version-specific implementation details encapsulated in the ver2
and ver3 modules.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs | 322 ++++++++++++++++++++++++++
 1 file changed, 322 insertions(+)

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 5c6ae78506af..8cc5f72ead11 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -12,6 +12,13 @@
 pub(crate) mod ver3;
 
 use crate::gpu::Architecture;
+use crate::mm::{
+    pramin,
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+use kernel::prelude::*;
 
 /// Extracts the page table index at a given level from a virtual address.
 pub(crate) trait VaLevelIndex {
@@ -84,6 +91,96 @@ pub(crate) const fn as_index(&self) -> u64 {
     }
 }
 
+impl MmuVersion {
+    /// Get the `PDE` levels (excluding PTE level) for page table walking.
+    pub(crate) fn pde_levels(&self) -> &'static [PageTableLevel] {
+        match self {
+            Self::V2 => ver2::PDE_LEVELS,
+            Self::V3 => ver3::PDE_LEVELS,
+        }
+    }
+
+    /// Get the PTE level for this MMU version.
+    pub(crate) fn pte_level(&self) -> PageTableLevel {
+        match self {
+            Self::V2 => ver2::PTE_LEVEL,
+            Self::V3 => ver3::PTE_LEVEL,
+        }
+    }
+
+    /// Get the dual PDE level (128-bit entries) for this MMU version.
+    pub(crate) fn dual_pde_level(&self) -> PageTableLevel {
+        match self {
+            Self::V2 => ver2::DUAL_PDE_LEVEL,
+            Self::V3 => ver3::DUAL_PDE_LEVEL,
+        }
+    }
+
+    /// Get the number of PDE levels for this MMU version.
+    pub(crate) fn pde_level_count(&self) -> usize {
+        self.pde_levels().len()
+    }
+
+    /// Get the entry size in bytes for a given level.
+    pub(crate) fn entry_size(&self, level: PageTableLevel) -> usize {
+        if level == self.dual_pde_level() {
+            16 // 128-bit dual PDE
+        } else {
+            8 // 64-bit PDE/PTE
+        }
+    }
+
+    /// Get the number of entries per page table page for a given level.
+    pub(crate) fn entries_per_page(&self, level: PageTableLevel) -> usize {
+        match self {
+            Self::V2 => match level {
+                // TODO: Calculate these values from the bitfield dynamically
+                // instead of hardcoding them.
+                PageTableLevel::Pdb => 4,  // PD3 root: bits [48:47] = 2 bits
+                PageTableLevel::L3 => 256, // PD0 dual: bits [28:21] = 8 bits
+                _ => 512,                  // PD2, PD1, PT: 9 bits each
+            },
+            Self::V3 => match level {
+                PageTableLevel::Pdb => 2,  // PDE4 root: bit [56] = 1 bit, 2 entries
+                PageTableLevel::L4 => 256, // PDE0 dual: bits [28:21] = 8 bits
+                _ => 512,                  // PDE3, PDE2, PDE1, PT: 9 bits each
+            },
+        }
+    }
+
+    /// Extract the page table index at `level` from `va` for this MMU version.
+    pub(crate) fn level_index(&self, va: VirtualAddress, level: u64) -> u64 {
+        match self {
+            Self::V2 => ver2::VirtualAddressV2::new(va).level_index(level),
+            Self::V3 => ver3::VirtualAddressV3::new(va).level_index(level),
+        }
+    }
+
+    /// Compute upper bound on page table pages needed for `num_virt_pages`.
+    ///
+    /// Walks from PTE level up through PDE levels, accumulating the tree.
+    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> usize {
+        let mut total = 0;
+
+        // PTE pages at the leaf level.
+        let pte_epp = self.entries_per_page(self.pte_level());
+        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
+        total += pages_at_level;
+
+        // Walk PDE levels bottom-up (reverse of pde_levels()).
+        for &level in self.pde_levels().iter().rev() {
+            let epp = self.entries_per_page(level);
+
+            // How many pages at this level do we need to point to
+            // the previous pages_at_level?
+            pages_at_level = pages_at_level.div_ceil(epp);
+            total += pages_at_level;
+        }
+
+        total
+    }
+}
+
 /// Memory aperture for Page Table Entries (`PTE`s).
 ///
 /// Determines which memory region the `PTE` points to.
@@ -156,3 +253,228 @@ fn from(val: AperturePde) -> Self {
         val as u8
     }
 }
+
+/// Unified Page Table Entry wrapper for both MMU v2 and v3 `PTE`
+/// types, allowing the walker to work with either format.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum Pte {
+    /// MMU v2 `PTE` (Turing/Ampere/Ada).
+    V2(ver2::Pte),
+    /// MMU v3 `PTE` (Hopper+).
+    V3(ver3::Pte),
+}
+
+impl Pte {
+    /// Create a `PTE` from a raw `u64` value for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, val: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::new(val)),
+            MmuVersion::V3 => Self::V3(ver3::Pte::new(val)),
+        }
+    }
+
+    /// Create an invalid `PTE` for the given MMU version.
+    pub(crate) fn invalid(version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::invalid()),
+            MmuVersion::V3 => Self::V3(ver3::Pte::invalid()),
+        }
+    }
+
+    /// Create a valid `PTE` for video memory.
+    pub(crate) fn new_vram(version: MmuVersion, pfn: Pfn, writable: bool) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::new_vram(pfn, writable)),
+            MmuVersion::V3 => Self::V3(ver3::Pte::new_vram(pfn, writable)),
+        }
+    }
+
+    /// Check if this `PTE` is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        match self {
+            Self::V2(p) => p.valid(),
+            Self::V3(p) => p.valid(),
+        }
+    }
+
+    /// Get the physical frame number.
+    pub(crate) fn frame_number(&self) -> Pfn {
+        match self {
+            Self::V2(p) => p.frame_number(),
+            Self::V3(p) => p.frame_number(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(p) => p.raw_u64(),
+            Self::V3(p) => p.raw_u64(),
+        }
+    }
+
+    /// Read a `PTE` from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(mmu_version, val))
+    }
+
+    /// Write this `PTE` to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+}
+
+/// Unified Page Directory Entry wrapper for both MMU v2 and v3 `PDE`.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum Pde {
+    /// MMU v2 `PDE` (Turing/Ampere/Ada).
+    V2(ver2::Pde),
+    /// MMU v3 `PDE` (Hopper+).
+    V3(ver3::Pde),
+}
+
+impl Pde {
+    /// Create a `PDE` from a raw `u64` value for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, val: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::new(val)),
+            MmuVersion::V3 => Self::V3(ver3::Pde::new(val)),
+        }
+    }
+
+    /// Create a valid `PDE` pointing to a page table in video memory.
+    pub(crate) fn new_vram(version: MmuVersion, table_pfn: Pfn) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::new_vram(table_pfn)),
+            MmuVersion::V3 => Self::V3(ver3::Pde::new_vram(table_pfn)),
+        }
+    }
+
+    /// Create an invalid `PDE` for the given MMU version.
+    pub(crate) fn invalid(version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::invalid()),
+            MmuVersion::V3 => Self::V3(ver3::Pde::invalid()),
+        }
+    }
+
+    /// Check if this `PDE` is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        match self {
+            Self::V2(p) => p.is_valid(),
+            Self::V3(p) => p.is_valid(),
+        }
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        match self {
+            Self::V2(p) => p.table_vram_address(),
+            Self::V3(p) => p.table_vram_address(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(p) => p.raw_u64(),
+            Self::V3(p) => p.raw_u64(),
+        }
+    }
+
+    /// Read a `PDE` from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(mmu_version, val))
+    }
+
+    /// Write this `PDE` to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+}
+
+/// Unified Dual Page Directory Entry wrapper for both MMU v2 and v3 [`DualPde`].
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum DualPde {
+    /// MMU v2 [`DualPde`] (Turing/Ampere/Ada).
+    V2(ver2::DualPde),
+    /// MMU v3 [`DualPde`] (Hopper+).
+    V3(ver3::DualPde),
+}
+
+impl DualPde {
+    /// Create a [`DualPde`] from raw 128-bit value (two `u64`s) for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, big: u64, small: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::DualPde::new(big, small)),
+            MmuVersion::V3 => Self::V3(ver3::DualPde::new(big, small)),
+        }
+    }
+
+    /// Create a [`DualPde`] with only the small page table pointer set.
+    pub(crate) fn new_small(version: MmuVersion, table_pfn: Pfn) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::DualPde::new_small(table_pfn)),
+            MmuVersion::V3 => Self::V3(ver3::DualPde::new_small(table_pfn)),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(crate) fn has_small(&self) -> bool {
+        match self {
+            Self::V2(d) => d.has_small(),
+            Self::V3(d) => d.has_small(),
+        }
+    }
+
+    /// Get the small page table VRAM address.
+    pub(crate) fn small_vram_address(&self) -> VramAddress {
+        match self {
+            Self::V2(d) => d.small.table_vram_address(),
+            Self::V3(d) => d.small.table_vram_address(),
+        }
+    }
+
+    /// Get the raw `u64` value of the big PDE.
+    pub(crate) fn big_raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(d) => d.big.raw_u64(),
+            Self::V3(d) => d.big.raw_u64(),
+        }
+    }
+
+    /// Get the raw `u64` value of the small PDE.
+    pub(crate) fn small_raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(d) => d.small.raw_u64(),
+            Self::V3(d) => d.small.raw_u64(),
+        }
+    }
+
+    /// Read a dual PDE (128-bit) from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let lo = window.try_read64(addr.raw())?;
+        let hi = window.try_read64(addr.raw() + 8)?;
+        Ok(Self::new(mmu_version, lo, hi))
+    }
+
+    /// Write this dual PDE (128-bit) to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.big_raw_u64())?;
+        window.try_write64(addr.raw() + 8, self.small_raw_u64())
+    }
+}
-- 
2.34.1

