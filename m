Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHJeC/T932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D92407FA2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFF510E7B7;
	Wed, 15 Apr 2026 21:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="HNmlkeCw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F277B10E7A7;
 Wed, 15 Apr 2026 21:06:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P9Lra4VGDEfDnCZmcpuWiQgpt9hvpRqbM84p0WPUpV31Erz1R7SpznPDjnI1HyCP6+nlp8Z2IKc2efdqy7jXPwXNo+KANKT8tWgOrotbfiYnFnqxAhq3mjGYgc9NPvffGpSnNoET9gSg6jOVqinMb2oVNxfGn9b0/pNYTREN45fsFAhKZdbob+VrPj/HndguLjgVBP3p9bNo8jSsnoZlydxg06DJLtve16idT/eKcD1aJX8sECUgmeejWwAEuantOLRwgf8E+U9QV8LXNTTLAir9M3Yd01O9JVQYLExzouwpkLRTUY3vZJ1+BnRWLiwy0nuoq1J4J7sJ1yB38LJx2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rpf25XxLMuHWgfWof1AU+wWp7ahBDypXDQ8+39vJlNk=;
 b=uL0fRI860NT8sP46cjYbQHg6vh05BL4xWWTp+TMoJAkeZ14S1NJV3ExGZPf6H4kKltE7gUVcm3gG1RFSVG/+qMohQp/3KNtrKudO4RquHuxV1wzX7cwFruabABrKZNPFDMNkWqoZSAroqALnSWmXPS/s2tqQK+hA0ccPbS3Wv1p4B5jYeAIVEDX7kPwdi49pI0gXoR7Fb4C+NiL3V6ZVwM32Qmyw96I3zoffWEX47uQ/50gzGD3bkOU9+rzj0nXNc5fW/wznX5eaPh+qiSuLrQegt9tNwqWxIKAFLAvBBuKz0WuijcSuFCmG9ofsqocZpig7ri3+eF10+Xu0UlxCDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpf25XxLMuHWgfWof1AU+wWp7ahBDypXDQ8+39vJlNk=;
 b=HNmlkeCw/Lu1uPg7yXJ/g2+jyPF4p9goDH7eXKDrP+UHIf8+WbvHxf+3wlAEXMpi3M0GnfW+hprE2TfAiSS1wYokoi6YzK3TYNZhnfLZQE5IpmKkDmqL92JRzm5UppeHSi8qdWOfqvjkgtWZT4kZo2QGhpmQDA6K14TGKnWG793hyDGo4o8Fj5MbFbKdJcznRNEOdFoTsGDR2a5GFf8m0HqgS8iRBnJAtwV8MSeuHW9ycsMSu8kGeq8MPAywuFELXnAhLqVNzoyqZw8GH4PTwSWZLsOMK31yd0mS2OIv0b/C+RsQWw7ky2Z38XmXZyEKv2P523OcofNjSWXvzPuWZg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:38 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:38 +0000
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
Subject: [PATCH v11 18/20] gpu: nova-core: mm: Add BAR1 user interface
Date: Wed, 15 Apr 2026 17:05:45 -0400
Message-Id: <20260415210548.3776595-18-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR14CA0002.namprd14.prod.outlook.com
 (2603:10b6:930:8f::8) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: a4ba6e46-009a-463b-74a3-08de9b32e25b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: CPD3/lrQWYc2sunTsnYq1ljeY8HpwmEFYygwMzh3kE9NKbW0lEmGzgDHvBEuD+LyhmWByWz5Il4ZCP/9fnN3+LD6M9nmX4GECdFEU+Rk+WGYru0mIs3pVhFjZnN+WuXFNvs5NWY0f2TB7rTklROvlSGCU72jsaq//DbJ859F7nU5FdLuS74z1A0usyYvCrZntvceCWETp8gX3KUoqrTY4bu3DQbJIVB8+Mysr4ZvpQHAzpV0g7WOeHWJrCEzV9lho3B+H+xEsdJOM2L2vuTtLGZA0P16rj4ACnTItIX7XyC42qOjOgB78PPerf0VOO0D1VHGOvBe7H5gTXJ5UjCjHKBxVQMitigzSM1eZyihXrlHuL8nqrbrFYZ65ZTBUqOUDDTzZRFQFLiqrevca7/rUuVLBhZEDtZ5/T6CfJuOqwMEvgvBGUAZRTWvhLvNJcex7JvnPItcqTNJBOelvbk/bA1E7LMnetddaP9CP5QZLspVxIH4Ia4hDWlb8ecTiPiIjqHi50Ux6gLXXNzVm+6Hgxyfb92eRwg4/erdpjV8bUoBbufnFWtkC/t+eO0SOHnvTBCDRUw79NMNUNbgZACsZXPgBXon8Ur+LotmU6OK/O+R1Y/N68f/iNA4+SAge+pGFBWPR4QBsCFOxZqy0WXPq735OPHM1NlgIYaAAfTTydz4dk67Pv2boaMvJmkKneATlanrs/JlH1m8jzrZrVCQYrEQN+U0Tuv02a6Tf+ATMEQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rL/LMl5bIHpwOqa4k1s5wagPuGlTycKJjROwX5GPaabRj7twzRAT3GRglk6J?=
 =?us-ascii?Q?YqmfWHpcV+ZtM5hac6jU7IctVKU3sH7KQ7wrmOc5lp/2ajjKo9zA7UKkENGE?=
 =?us-ascii?Q?6ueGOFTXW0n2W3jru6BzEyBuOFGthitwl6KUMg/6GrLuUFq0WQz5LVBALtWH?=
 =?us-ascii?Q?iWL4AlLGtDPmNYqDNCiWl8SI6y9amwkmaPnkJ1u2S2n4XODh9gykhKWzigys?=
 =?us-ascii?Q?O4ac/pDzTRgRJ/sAscu9o2V2iPHVnJ4WhFr5iAwHo/M5pOFLMgimwO07V3ob?=
 =?us-ascii?Q?ojeqS2z68VU1lJdZfIopv91HTtEAjrx0kknRCzSKB5bJ6i+0wg6duI71Xxzp?=
 =?us-ascii?Q?AF0zLuvuCmo7LM9Vi6ljaBU5FsIqpg+3iTHqnxYaUfdrEkQYWj7odgc+IYtL?=
 =?us-ascii?Q?YW/lio3wnirmgDDLrSPBd1/wlou9GSTPhkzEzwI/uU9JAzfzrgN0krpxpDZS?=
 =?us-ascii?Q?LYawuvyk19GBs4j2k5JRssTTKq6vj3oaUFx6TnvtVqoJ2mmo9YteHGrmUuwR?=
 =?us-ascii?Q?Amh1puixU5yRMgqOFdOn/akh2pC3qa3uJDnLS/Of4vukdHCkdo+oE0jvNmKl?=
 =?us-ascii?Q?b9vsZEdWMREGuH7leHhP3RK4xdwHCzCRDuchGjQstXu68ZMOPlD7MkkNUANA?=
 =?us-ascii?Q?t7yATKtBiHW15nsOHA6HwJpEmQDlXHMUEvVLqKN3X8mWWJNcib4vaB6YeylM?=
 =?us-ascii?Q?EfTdMH7gEt4afs9RMpM23TLUXfzRTd82w+Vbw9nKhHJwyJJT7JXXlDKluZXA?=
 =?us-ascii?Q?gh93aLMgNstg/JBeyLSP7VAYwkB8HRRAIKTbA1VmtD7TBbJTbmmv3o0UU8Uq?=
 =?us-ascii?Q?g2YZiyZvor82jh81xFNUyEg+FVLCKvW/gEmduS9z4gqaa4/RW7HU67RBqNQG?=
 =?us-ascii?Q?RGvzpe9+toTMyyzZOUvPcvISrQzdjUTLRYm/gibpGgRoqj8vUw/Rr0MIkxel?=
 =?us-ascii?Q?fNYVKh322klvMtSLLCtsLfCYJv9utFRuaHZl6sPMhCx3Iop+6Y8Nt7hASq67?=
 =?us-ascii?Q?Z4r7Qf/EknGuZGGL6FNeY69iKFMyQgg2KJE/pyO83cFpmWLHTCeTsKO3kWTZ?=
 =?us-ascii?Q?o2hVb3xtnN3zlC4rEr64b21VJRbzS7jTldhsHhhHrzKCFbcGLtGc9cz9zIeR?=
 =?us-ascii?Q?pAcTb434VD3AJ9tqu4exRYy4P5D4D/Jy7+kuPJ4jejmUrl6RxPT9JOugVhJK?=
 =?us-ascii?Q?5mlFWdJKoRmc8x7JLjf6iiuZLxJ/mOAH2qXAdx7DrhkXF0qQmNzmlcMULyC+?=
 =?us-ascii?Q?lJHeLrMAjnhZxyENrPoUy9hTqN278T8AneBNdXM61Q/L5E2jRw2woOVxrIRr?=
 =?us-ascii?Q?i44SBnnd9k/U28u6wVM0AkB+t/Hb8jjPWG9oyJCYGb3+Lvv2NRCjFTs75BPH?=
 =?us-ascii?Q?n0rghdep7BmN0a5gPgzFycJ2TGuJ2JVbVFv4Vu+CJGxkGGOJn0CQC2eax3Yg?=
 =?us-ascii?Q?eLotn5w6dGBa/l8IpmydtjaGNjlVrLoqw7z34ri7XUrpvdWDz9uLeGKMmVDH?=
 =?us-ascii?Q?cbYez059rD/BkFgjDvRyB4E4jp626EgLJJ39tM4Xhi4q/ynFSeisVFyFglO0?=
 =?us-ascii?Q?CT0GQGvaqR2A4PibIy+Yhodb03ougO85+MgB/QxXyNwi2k2XTsMmrBK45ucR?=
 =?us-ascii?Q?1y03FK8TEKYNEwVIg4ccDfsu7JHTMZUDq5zTXbzrngT6mTOcSOleIzVCIBhV?=
 =?us-ascii?Q?S2GGLW9NvjyOintCddqJJ269c6UFEmJCCVs8XgrVbLraKx2wIEYTP50eUhqC?=
 =?us-ascii?Q?J9bylRLssg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ba6e46-009a-463b-74a3-08de9b32e25b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:38.2738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j1k7HWTAtdgXHVap61iN/TvndgiolC7yLWzwm7hGf+nSwfVBApkeKwaSwTU3fUHxD6VJnpBB9OjWRP8kydG5fw==
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
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D1D92407FA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the BAR1 user interface for CPU access to GPU virtual memory through
the BAR1 aperture.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs       |   1 -
 drivers/gpu/nova-core/gpu.rs          |  21 +++-
 drivers/gpu/nova-core/gsp/commands.rs |   1 -
 drivers/gpu/nova-core/mm.rs           |   1 +
 drivers/gpu/nova-core/mm/bar_user.rs  | 152 ++++++++++++++++++++++++++
 5 files changed, 173 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/nova-core/mm/bar_user.rs

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 597343d5da54..e78a682a7f2a 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -47,7 +47,6 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
-#[expect(dead_code)]
 pub(crate) type Bar1 = pci::Bar;
 
 kernel::pci_device_table!(
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index c49fa9c380b8..1cd0f147994b 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -28,7 +28,12 @@
         commands::GetGspStaticInfoReply,
         Gsp, //
     },
-    mm::GpuMm,
+    mm::{
+        bar_user::BarUser,
+        pagetable::MmuVersion,
+        GpuMm,
+        VramAddress, //
+    },
     regs,
 };
 
@@ -122,6 +127,11 @@ pub(crate) const fn arch(self) -> Architecture {
     pub(crate) const fn needs_fwsec_bootloader(self) -> bool {
         matches!(self.arch(), Architecture::Turing) || matches!(self, Self::GA100)
     }
+
+    /// Returns the MMU version for this chipset.
+    pub(crate) fn mmu_version(self) -> MmuVersion {
+        MmuVersion::from(self.arch())
+    }
 }
 
 // TODO
@@ -250,6 +260,8 @@ pub(crate) struct Gpu {
     gsp: Gsp,
     /// Static GPU information from GSP.
     gsp_static_info: GetGspStaticInfoReply,
+    /// BAR1 user interface for CPU access to GPU virtual memory.
+    bar_user: BarUser,
 }
 
 impl Gpu {
@@ -308,6 +320,13 @@ pub(crate) fn new<'a>(
                 }, pramin_vram_region)?
             },
 
+            // Create BAR1 user interface for CPU access to GPU virtual memory.
+            bar_user: {
+                let pdb_addr = VramAddress::new(gsp_static_info.bar1_pde_base);
+                let bar1_size = pdev.resource_len(1)?;
+                BarUser::new(pdb_addr, spec.chipset, bar1_size)?
+            },
+
             bar: devres_bar,
         })
     }
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 9bf0d32c6a7f..32df0fe4b9c2 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -194,7 +194,6 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
     /// BAR1 Page Directory Entry base address.
-    #[expect(dead_code)]
     pub(crate) bar1_pde_base: u64,
     /// Usable FB (VRAM) region for driver memory allocation.
     pub(crate) usable_fb_region: Range<u64>,
diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 87fd6f0b956e..033e365aa4e1 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -24,6 +24,7 @@ fn from(pfn: Pfn) -> Self {
     };
 }
 
+pub(crate) mod bar_user;
 pub(super) mod pagetable;
 pub(crate) mod pramin;
 pub(super) mod tlb;
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
new file mode 100644
index 000000000000..5f7c0e9e51f9
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -0,0 +1,152 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! BAR1 user interface for CPU access to GPU virtual memory. Used for USERD
+//! for GPU work submission, and applications to access GPU buffers via mmap().
+
+use kernel::{
+    io::Io,
+    prelude::*, //
+};
+
+use crate::{
+    driver::Bar1,
+    gpu::Chipset,
+    mm::{
+        vmm::{
+            MappedRange,
+            Vmm, //
+        },
+        GpuMm,
+        Pfn,
+        Vfn,
+        VirtualAddress,
+        VramAddress,
+        PAGE_SIZE, //
+    },
+    num::IntoSafeCast,
+};
+
+/// BAR1 user interface for virtual memory mappings.
+///
+/// Owns a [`Vmm`] instance with virtual address tracking and provides
+/// BAR1-specific mapping and cleanup operations.
+pub(crate) struct BarUser {
+    vmm: Vmm,
+}
+
+impl BarUser {
+    /// Create a new [`BarUser`] with virtual address tracking.
+    pub(crate) fn new(pdb_addr: VramAddress, chipset: Chipset, va_size: u64) -> Result<Self> {
+        Ok(Self {
+            vmm: Vmm::new(pdb_addr, chipset.mmu_version(), va_size)?,
+        })
+    }
+
+    /// Map physical pages to a contiguous BAR1 virtual range.
+    pub(crate) fn map<'a>(
+        &'a mut self,
+        mm: &'a GpuMm,
+        bar: &'a Bar1,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result<BarAccess<'a>> {
+        if pfns.is_empty() {
+            return Err(EINVAL);
+        }
+
+        let mapped = self.vmm.map_pages(mm, pfns, None, writable)?;
+
+        Ok(BarAccess {
+            vmm: &mut self.vmm,
+            mm,
+            bar,
+            mapped: Some(mapped),
+        })
+    }
+}
+
+/// Access object for a mapped BAR1 region.
+///
+/// Wraps a [`MappedRange`] and provides BAR1 access. When dropped,
+/// unmaps pages and releases the VA range (by passing the range to
+/// [`Vmm::unmap_pages()`], which consumes it).
+pub(crate) struct BarAccess<'a> {
+    vmm: &'a mut Vmm,
+    mm: &'a GpuMm,
+    bar: &'a Bar1,
+    /// Needs to be an `Option` so that we can `take()` it and call `Drop`
+    /// on it in [`Vmm::unmap_pages()`].
+    mapped: Option<MappedRange>,
+}
+
+impl<'a> BarAccess<'a> {
+    /// Returns the active mapping.
+    fn mapped(&self) -> &MappedRange {
+        // `mapped` is only `None` after `take()` in `Drop`; accessors are
+        // never called from within `Drop`, so `unwrap()` never panics.
+        self.mapped.as_ref().unwrap()
+    }
+
+    /// Get the base virtual address of this mapping.
+    pub(crate) fn base(&self) -> VirtualAddress {
+        VirtualAddress::from(self.mapped().vfn_start)
+    }
+
+    /// Get the total size of the mapped region in bytes.
+    pub(crate) fn size(&self) -> usize {
+        self.mapped().num_pages * PAGE_SIZE
+    }
+
+    /// Get the starting virtual frame number.
+    pub(crate) fn vfn_start(&self) -> Vfn {
+        self.mapped().vfn_start
+    }
+
+    /// Get the number of pages in this mapping.
+    pub(crate) fn num_pages(&self) -> usize {
+        self.mapped().num_pages
+    }
+
+    /// Translate an offset within this mapping to a BAR1 aperture offset.
+    fn bar_offset(&self, offset: usize) -> Result<usize> {
+        if offset >= self.size() {
+            return Err(EINVAL);
+        }
+
+        let base_vfn: usize = self.mapped().vfn_start.raw().into_safe_cast();
+        let base = base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+        base.checked_add(offset).ok_or(EOVERFLOW)
+    }
+
+    // Fallible accessors with runtime bounds checking.
+
+    /// Read a 32-bit value at the given offset.
+    pub(crate) fn try_read32(&self, offset: usize) -> Result<u32> {
+        self.bar.try_read32(self.bar_offset(offset)?)
+    }
+
+    /// Write a 32-bit value at the given offset.
+    pub(crate) fn try_write32(&self, value: u32, offset: usize) -> Result {
+        self.bar.try_write32(value, self.bar_offset(offset)?)
+    }
+
+    /// Read a 64-bit value at the given offset.
+    pub(crate) fn try_read64(&self, offset: usize) -> Result<u64> {
+        self.bar.try_read64(self.bar_offset(offset)?)
+    }
+
+    /// Write a 64-bit value at the given offset.
+    pub(crate) fn try_write64(&self, value: u64, offset: usize) -> Result {
+        self.bar.try_write64(value, self.bar_offset(offset)?)
+    }
+}
+
+impl Drop for BarAccess<'_> {
+    fn drop(&mut self) {
+        if let Some(mapped) = self.mapped.take() {
+            if self.vmm.unmap_pages(self.mm, mapped).is_err() {
+                kernel::pr_warn_once!("BarAccess: unmap_pages failed.\n");
+            }
+        }
+    }
+}
-- 
2.34.1

