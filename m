Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHlgOto6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB6637199F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7963B10EBA7;
	Tue, 31 Mar 2026 21:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="SrX9DxR4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012031.outbound.protection.outlook.com
 [40.93.195.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684FC10EB9E;
 Tue, 31 Mar 2026 21:21:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lN1GMNXUkQuG+qL+NZs6vkW8LdCV2s0hk9F/XTiM/dMp46Khl9DgutO7Ml22/dtjaUBIgmSG1pgelQfTrc/O6A0dgCgArPb+nOsgvjA47pxCzCSR3ygrTB/4fpq2t2kej186jkKYaTtX9dGJMDXVDUW16XbAW0KRxFUD29fyIXYitOW/fPjDSsncg8JtiI2a1ZSYvVV6icysFyAl21FJ2pnDsRly2JbHsp47bXJLnKageXtM4vnpYiKl5uCZnfRVNIJmiBCjuU5vz5Pj6h4+pb1er7E872+LmbVb7w8sP26hbu/zXOoZhupn+fS6WBhw6j79rVAompgJ1aN6uuQYyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtosooqljZKLDQaVIhWoLVYqKr6QkTg1lcEVcJHlVGw=;
 b=Kvl4wfJyxIPjoaD1deWDjLs+hiWG4wTr87MtbqFxcUjF2qGejXy0BCDH4QGNy8emiXOZhOsjmt2rEryV2SomJ4246AJCzplA7CtiFIezWoABl3TtEhYsroVrneg+wyrsdNyuPckZzWZpazc/t4sNX6klVknS+SURLQrV79ehZSCE+bSL9XrLK9f6cPdzwwFgZXsdsPz2CC1SSHpB5Hk2WrNyJcVM3BDUhA/meWImnJhubPK4uaqtxNnUB5vXP5Pb1mNKGXkA+ex21twwwx6QMVn9pleEDmZtuMqClKpywXfzJC76izpd3dICwhQ4sibg9vW+lfdL1Q1sPoYTFJrC0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtosooqljZKLDQaVIhWoLVYqKr6QkTg1lcEVcJHlVGw=;
 b=SrX9DxR4t/mt4BvbunkS5a5fj04jNRMrbNbl7DwFLmmmDObYrSUkArQS3bHgycACXWuKpeRkHcztSMHmKR3XiUSu0AuHGQqXKylFX3ExgHE945esx3NYh/N+BRFpKjm4D/8MO5Fspr8KuPSZIwqkCkegwe8GvDRheoAXzb5Ea0tQSWQUkgOy/ejLBETethzSN/9talAzjK1ZHXF7HM1DnHLWsvOLiuzUOMXdnXSEavJcPOAU5AugMshDVXeRezpxUmCXQ5GDLw2jgG5qi2M5X4y/+WUxDI3JFF/C9tnBB4ow50pdUibRG2AFOVswBrFSwihnaxmqk2v03yqSpe+9fw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:19 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:17 +0000
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
Subject: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
Date: Tue, 31 Mar 2026 17:20:34 -0400
Message-Id: <20260331212048.2229260-8-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0077.namprd03.prod.outlook.com
 (2603:10b6:208:329::22) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 51a2589a-93a6-48fc-27f8-08de8f6b71cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: nDus8K5mhooyzqkbYmIa1I2phFfs7yvn1uuoLwuS/6CdBdUFCjPnRoDO39ARvUCJBoAi2Oc6sBs5fMb3h3vZZHi+mkvSQ0BDbK08WDZdLNJQoJYE11SiTS/Hi3rAlXZmA1CzoFgMahFEy/ajo7ZS8Sxqk2Bf7tjA4+6AcOb/ymLNd2h9W/70QLtJMm+3yBH0H1kjsElIHyWR1AcGKsfeKVfzUQ/4IpPgf9bwcSrvDLX96lOgCFu9CJVEywnhhC5J/8uItZ+ac+6xhwwa2BLHV3pFyPqCxkiY8V10QjbJIKMKw28lGXFHzZHVZ+JuJtqgVkdeBrxCiJQUWb0ai128XqLgIZgKFWGKgBV0csSlhbAREGzaLTqUndylCkeqIeBU3mqNToDeZJb9qKgK+KbmVX7xjo88KyNZZpI7aug+3Enywwxskt3MkT4NIxxJjE2eLWJyKGoSN81V6FL6voP8pLrjmZl8izJgPysAKWIxA2MMW3ilTX2zQvQ+WQ5f5aO6o9iPgDa1jR1N7ktUpPDDcfa0+Ip/S0mvW1bhwrEYN3Rwc1e4QW9s8eDsXOSBXenI9hq5cFFX4JXwJkaBYFAW4OKagqqiW1GAevJvjTA4dy9sPXdJnmtDbK3dql9urzonp/U6DZTNHykxfCuySaVzay0UnF8Cbs55nFh3E7wpEzjW0IOicsjo/shIys/QalhoT7NVHHuPgRTbIFoCgXV6dvrLXrlVJuZtwyYDgC5lxow=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WA6cg5qMNkwGEwLB4pQyw/xDKtQCIjT7NnLaT/hs4cMWEQGH19x+OKhk+BZY?=
 =?us-ascii?Q?zt+3ebu/8G1VJYS3K66gLe+M85/zKbuguk96xBUYCgLAVMA2NwxC4IiKAXh6?=
 =?us-ascii?Q?oe9E6NLB4+AGweUxHfjh+Hro8JqTWdsXW2SKli8XDc7+XzAUNTAfuUhOcZX9?=
 =?us-ascii?Q?XIaphEjLrUwlWib0axoF8aWfAsqyRtRPETI2w8st7xO08obFHWgXGiVuFSSf?=
 =?us-ascii?Q?tUlirgPzvs2ONC2boRj/NAZP4ccVFhz590zyfEmlUJuPMEoDYqrwZATwP5O7?=
 =?us-ascii?Q?ENcOj/LfS0hACiMMPcOhG4CKtvWKr2UqwtMsIC/nRfrNw+FWy5wBcWJg5mj/?=
 =?us-ascii?Q?FtRpA/Dl8llpLASuUSF1eweGHGEXkGmr/yfvj0KsQPI2A41sk3kMWOuvNo4a?=
 =?us-ascii?Q?nyVgF76+ES3Ye4h931IXg5OC2O5pcXxMQW57bIL+9QOGQIGMzBI6LyJLt90h?=
 =?us-ascii?Q?z4uS4OxYnxeHQnkk+6lLOiSg4EOwPRjI2WRqceicMuY4qScArtPLff/q1HCB?=
 =?us-ascii?Q?pek/tuBqRoct73BhS7KS5qIX8XGmYmQm71hHXdcQtNxz2hIaaHqAdW3MjEP6?=
 =?us-ascii?Q?i86Nyq+3pdM74K3SdtrjhyXkmxnM01ADWonqhIQPDiIASMOhGeJR8kElazZH?=
 =?us-ascii?Q?VagvZOaE8y3mTwY82mK6nuf4hEHUQbVhEGzq1qlsIjSPgtifsQxrGUhQZblE?=
 =?us-ascii?Q?M+hLIArZ2EbbmFlLfOhDZtKIUGIkyVnCt6GnTakkf+QdErjpcObSkYgfp1bh?=
 =?us-ascii?Q?sU7xvH0gMHcVC5zkiA/pdrdQ+uYVUA5gu/lACP/NGNnfwQBa/0GZOggKba5/?=
 =?us-ascii?Q?emdmkU4Qo9XeajurCEOyoqONryLsWBjgrGu9hMU2HlzXbJc/wTA16RDfNX8Q?=
 =?us-ascii?Q?r2THwvHnwzFLHsG75VCIYe0TONDb/KOH2SFCquRVT4MXTV5Eqy91e/Mfb/dj?=
 =?us-ascii?Q?nGbqDXOVuKR94b79jtyqltJvoBEtuhrxqtGLy1GYiv9TaqDYgHOsPjr+T4B0?=
 =?us-ascii?Q?7w/Z2r/PtbG/UUFd0itsdmAD6ICYUqaHrg1HiA+ILNwD+pYeLas51DMfgq/W?=
 =?us-ascii?Q?YXm0oyyc8jeSaP1EpSKIOv9aluy9+05iMVT/O7jjGN0/g32qX42pAFYU8Ga0?=
 =?us-ascii?Q?+R4mCcFT92XQFzsMBuUNd1/Yz+Gac6jzH8EkirKxGfNjpgR1Ai22NKRPQX7K?=
 =?us-ascii?Q?7PLOK9UXnAD9X6WSKdLCwuwdrwb0cfcET8uLbkaiHD250kxa6YYPrMBaah76?=
 =?us-ascii?Q?Ri1HXUBpJd3dysGsamJ/tEwGSdpsOSGZopzlgWBOOmaV+Dn+XyOMwtzn837f?=
 =?us-ascii?Q?KtIFLBoO9/MkSyB9lyTvyVAtAZszyVRUJClzkDr6OVxoNvuLcrTff2kHOlkT?=
 =?us-ascii?Q?4+hrHLcwUu4neoT+mdw7PUwxbN9BmD3JetprcL/CuQf/7yqknp7ePABzVssG?=
 =?us-ascii?Q?b6Y5J1RN2DjPaLPUZty9Y5qF5JdHaoQxEKwA6c5BdtkV3ZFT7fWIr/p83M+1?=
 =?us-ascii?Q?jhgDT1ZRww2w75Ji2ga4HOAtpR26wrJZm1XQjIxe7LR1KhD2DgZTnhJWm/hy?=
 =?us-ascii?Q?0k4cV0gXe52olv7Mu8dscq6ZuY7oaAzcyFB3vXCBQOnuhHExgsdzhMtJhp5E?=
 =?us-ascii?Q?iHqE5Eqyqp8JTVMVpT3zYLYOsoDaKkPa9JWxpCSEGD2EMLyhTwRfZBJjY38b?=
 =?us-ascii?Q?niIczYV5/Owf8ADejWxXwGTl2/CnqdptDnidqZDF7K33OISI5BXMSq1Kxcre?=
 =?us-ascii?Q?M8IQjLmWwA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a2589a-93a6-48fc-27f8-08de8f6b71cb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:16.9098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eRqbXsYNCROYC+7NT/oQRoVvMRKZwFXF/hzsAG2CQ+C3MoinYSJJE5bsFCt6CrIRXVBBmNwuGR706u1MJisAUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8809
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9CB6637199F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.

After modifying page table entries, the GPU's TLB must be invalidated
to ensure the new mappings take effect. The Tlb struct provides flush
functionality through BAR0 registers.

The flush operation writes the page directory base address and triggers
an invalidation, polling for completion with a 2 second timeout matching
the Nouveau driver.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs     |  1 +
 drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
 drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
 3 files changed, 138 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 8f3089a5fa88..cfe9cbe11d57 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -5,6 +5,7 @@
 #![expect(dead_code)]
 
 pub(crate) mod pramin;
+pub(crate) mod tlb;
 
 use kernel::sizes::SZ_4K;
 
diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
new file mode 100644
index 000000000000..cd3cbcf4c739
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/tlb.rs
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
+//!
+//! After modifying page table entries, the GPU's TLB must be flushed to
+//! ensure the new mappings take effect. This module provides TLB flush
+//! functionality for virtual memory managers.
+//!
+//! # Example
+//!
+//! ```ignore
+//! use crate::mm::tlb::Tlb;
+//!
+//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
+//!     // ... modify page tables ...
+//!
+//!     // Flush TLB to make changes visible (polls for completion).
+//!     tlb.flush(pdb_addr)?;
+//!
+//!     Ok(())
+//! }
+//! ```
+
+use kernel::{
+    devres::Devres,
+    io::poll::read_poll_timeout,
+    io::Io,
+    new_mutex,
+    prelude::*,
+    sync::{
+        Arc,
+        Mutex, //
+    },
+    time::Delta, //
+};
+
+use crate::{
+    driver::Bar0,
+    mm::VramAddress,
+    regs, //
+};
+
+/// TLB manager for GPU translation buffer operations.
+#[pin_data]
+pub(crate) struct Tlb {
+    bar: Arc<Devres<Bar0>>,
+    /// TLB flush serialization lock: This lock is acquired during the
+    /// DMA fence signalling critical path. It must NEVER be held across any
+    /// reclaimable CPU memory allocations because the memory reclaim path can
+    /// call `dma_fence_wait()`, which would deadlock with this lock held.
+    #[pin]
+    lock: Mutex<()>,
+}
+
+impl Tlb {
+    /// Create a new TLB manager.
+    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
+        pin_init!(Self {
+            bar,
+            lock <- new_mutex!((), "tlb_flush"),
+        })
+    }
+
+    /// Flush the GPU TLB for a specific page directory base.
+    ///
+    /// This invalidates all TLB entries associated with the given PDB address.
+    /// Must be called after modifying page table entries to ensure the GPU sees
+    /// the updated mappings.
+    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
+        let _guard = self.lock.lock();
+
+        let bar = self.bar.try_access().ok_or(ENODEV)?;
+
+        // Write PDB address.
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
+        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
+
+        // Trigger flush: invalidate all pages and enable.
+        bar.write_reg(
+            regs::NV_TLB_FLUSH_CTRL::zeroed()
+                .with_page_all(true)
+                .with_enable(true),
+        );
+
+        // Poll for completion - enable bit clears when flush is done.
+        read_poll_timeout(
+            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
+            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
+            Delta::ZERO,
+            Delta::from_secs(2),
+        )?;
+
+        Ok(())
+    }
+}
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index a3ca02345e20..5e3f5933a55c 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -548,3 +548,45 @@ pub(crate) mod ga100 {
         }
     }
 }
+
+// MMU TLB
+
+register! {
+    /// TLB flush register: PDB address bits [39:8].
+    pub(crate) NV_TLB_FLUSH_PDB_LO(u32) @ 0x00b830a0 {
+        /// PDB address bits [39:8].
+        31:0    pdb_lo => u32;
+    }
+
+    /// TLB flush register: PDB address bits [47:40].
+    pub(crate) NV_TLB_FLUSH_PDB_HI(u32) @ 0x00b830a4 {
+        /// PDB address bits [47:40].
+        7:0     pdb_hi => u8;
+    }
+
+    /// TLB flush control register.
+    pub(crate) NV_TLB_FLUSH_CTRL(u32) @ 0x00b830b0 {
+        /// Invalidate all pages.
+        0:0     page_all => bool;
+        /// Enable/trigger flush (clears when flush completes).
+        31:31   enable => bool;
+    }
+}
+
+impl NV_TLB_FLUSH_PDB_LO {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [39:8] of the address and shifts it right by 8 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::zeroed().with_pdb_lo(((addr >> 8) & 0xFFFF_FFFF) as u32)
+    }
+}
+
+impl NV_TLB_FLUSH_PDB_HI {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [47:40] of the address and shifts it right by 40 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::zeroed().with_pdb_hi(((addr >> 40) & 0xFF) as u8)
+    }
+}
-- 
2.34.1

