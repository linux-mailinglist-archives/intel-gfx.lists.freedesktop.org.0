Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJAfAhy6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB886259F20
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4187310E7CD;
	Wed, 11 Mar 2026 00:40:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="W4btArO4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012045.outbound.protection.outlook.com [52.101.43.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81A410E7CD;
 Wed, 11 Mar 2026 00:40:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gM2zXaHXmIkRiwfYUYTJu0sUhIEDKnR9LjN4XLEvKQSuTIZo2AZ1vwL9aw0TrdKyrxRxA6DlFMu2VGoTg5hBzTjVhi+xAXdyR0hCgcDF+983ol1R0OSQ0erpUE1Eks42QRrT1jsfQAkEI+QaIgN2LjMCloWX3noUOr24BroRmqGO9ChNkH8ZWoM4grzloE8c6cWAvfs4kEOxH6AaZ9JYZ8O5BeKkBfRjqSXjYFJzRWnNeSHtli9sbetygI+mf+e3vvQq6tKUy5sKLa6kCEaXzCh1V7AF/ldkt6vpagTR11+oecW0IrSPdU1QzsMyNrBozT46ilFFPVicI8nel2PxhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfM12GgcodAI2kiML00d1buqWmTzLGiaLD/6KXrD2XU=;
 b=ksbl7ILsml7jg6Ywpq/3n+9IviR02u/MtxnQhg5t4zk+UJfit3oaIG2dkolEJjwF3ZvTbJfTZopwcVm6bvldZqyDmfLMIycM3LxY2H2MhvaRzZkEBsKSrDlgYymqFz1HN1OY22xA288qZS9k7wNFZnwccogTvuEscDe2vaDXRtbeENjnR347TFCABGuiRnj4gm2i2a/GArc5ec7+59Zp9AF5iM3n3TJNKtLBRgxY7LIIaz+9ZKkZcF7J+0mXtyY16gLuJyyCKGtki7C586BODdxmAMOBFzlsZ8QAfk2U4Y4YWCbheuvLjgvJBfdJmI+1+ofE03rZhbSspTio3I9CYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfM12GgcodAI2kiML00d1buqWmTzLGiaLD/6KXrD2XU=;
 b=W4btArO4Sn9XAfL+XuY8pwhpAnM2kd9lrY6rEv8R2mHvIvSTs0lzf94roVRGAfWfhlyP8Z6PckkNwACqRr7sVADck0vMuQFRvQF0LzrpgTo5NHcdI6hJC/40p+UtC3YAkFDOKW/uST1Gi4L/MoHKU7SIG1yiEDMh1nJ8AzVCbDuFOfNJxvhXLXHMDnUnvPbMtfFbnn+qpne5zCJZ902VB36tZPwOu9n2iv193lIzIhLBjAltow71pvgGgFInaXyO74FWDhVkO1OO7EGTGRbxZk1T7KWBwQJf1qrLAHuSh1272Lt4FXcGE9aI1MI0FDfFv8ue8sddUYE21X6wouV2MA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:50 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:50 +0000
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
Subject: [PATCH v9 15/23] gpu: nova-core: mm: Add page table walker for MMU
 v2/v3
Date: Tue, 10 Mar 2026 20:40:00 -0400
Message-Id: <20260311004008.2208806-16-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0292.namprd13.prod.outlook.com
 (2603:10b6:208:2bc::27) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 748aed58-0fbd-4423-d2a6-08de7f06d7dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: r4aSc/5+kKmVkve1MH3xlSb8m2Jqu4fX5ussAWr4oINNJTHwywZGrKJBFA3xhNWpYzFgFqT4CbimCpprRRXYUPorp0FC1yc2C5IwQmNRtFmRtOzxq5cb4EPQ5AalbrkxFjvnQfyQqE2nhfVYJJszzvyNkKANzPst1xRjPKO/2/aQxPCSAMTzl/GiKM/uMvePlT2iC8j2H73xjemqCLKZv+/FYzD4GWigV1NukKSr4XaRfcNKuQgllC/lNfJrWJWW7XW3UIQDtSeF+zJbAs5glj2fLJrQK/tbvHAKW1T1PcNBgZ2v+gv/p4stH/WTXgFoBjJ6nVC/sPVj6A5UyjRz9q0XNUhZ17I69RrCkZU73cTZF+mNt7bzPNFhiN0jPEOA0kXr8pQCMKhSSnA36w2jPLuNN5XbVdcbcdXnj2VZr9py0uOuEI4IDZwwTXSYHUM6SKTfr5V8nnae8uel0JF2RjumJRv7ZecKzXhZzjuF1/8OFor3f+Crh4cP6+SGcfbioKnWAjy985rY8TMvM5ZTQduoXLeesRNdzrvcExuXNmacKnhQ7lU43Fy4ig2Gs2mWZXlzvOrZI68DFc0UidI/oTFqVYl+uzeMqkmKd8tckJ1ZbLh1gYuUcsEtmizC3KA0iEM8A+gH4pM9IMlA5UNLHlrEt6rbXlmKToihpyfCcwit6Etac1psE5+P232RGkoCHp2OzvF5usWn3zqjzgs5yzTrScSmAiWSSBqjny0QDq8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9ogbL3s/vgodDKRwnkedvDajCnkpDltCj9XxWCZ5W5Uj4tN6Oec191rb+YE1?=
 =?us-ascii?Q?3MVQN33ziTYNXef+Ns0YoFqeWDl7cwO3PQuSuKX2ide1skmd/1gpLJxD5rW/?=
 =?us-ascii?Q?vMTj5kTZ6HDB2st5yh7Pe9KxUEuxT+UZ1OpqiKsguNnT+9MBDbhB4Bod/qBi?=
 =?us-ascii?Q?sN7w4MqgeJypx3ETVA/iOl3DnOIYmRTajhpdNWsWKoF3itIJOzbXY1uSLIh6?=
 =?us-ascii?Q?EA18lUBIrYZguBOdIt8MG5UDxTc8DT4ZchQX8RvpHQmsTwB+TX+r7RfcXhhi?=
 =?us-ascii?Q?QhEFoLC5XoECN5FgdgJy39XR0/FzT6XAtg5hl9JnZGhRrE3zmaY+H3b2Jedb?=
 =?us-ascii?Q?Z+PqyEEVpDpnl8gbtZQ56iHRbtVOHhO7bSWlZUFh7wbEmXDdxnsARHA6Vtec?=
 =?us-ascii?Q?IQHvg990vpW1pYeFWo0uRkqzGIILqYrvxGZDxHDw75HBpQ6xqn5HqzCDyJKh?=
 =?us-ascii?Q?rwXKrD7LQJ/KAaht+x/sbuYb3IzsCe4YyolzRnYeohuXWfnNgxv7UFV4qFyO?=
 =?us-ascii?Q?AnaX8HoTQ0X1jCz/YWyJS0/3xTd3V18O7X6XqkGaHMxJHjghUQnlx1eihqQB?=
 =?us-ascii?Q?2Bszlr5YA5KcZaOUNChOL2PgVFgPvtwv/nYOF3DPHb+7hTJCSK6qiTFBvBbR?=
 =?us-ascii?Q?wWmZvTg+vrwha0Z+BlivmgGD+hPZrF7YQDZJQAncXRLmsAQvbAodNue0Cdnh?=
 =?us-ascii?Q?Yn0JKuaBjM6ziZl297hY+iDo+chYuZVIgi6ArPYbMDnM9jfpkiidOYwIcEMz?=
 =?us-ascii?Q?ojqn6mMpkBuxR26aWsYKVOgUA4PSl9NTwOR01xLstis+MeMwE/X53nndPs2G?=
 =?us-ascii?Q?CMXa/ax3ziGCH8zLsvAB7jmclZQIgwZXG8fWTS4JJBQR3drIrH+klB+O+zEL?=
 =?us-ascii?Q?HGrNG9Am1SMMwsxIKgsABg0B3K+jal83Y7fnNDZkQMSn+XfdbGRzrTlT4LyP?=
 =?us-ascii?Q?+mmYUo3PVesAGykElcQno2rdh65tvt9Nzt/aFSpsGo7P8wHUfF6LkA7Lp/nJ?=
 =?us-ascii?Q?ElAVI+ZqpsdfzXIvglbaAsfNDn20phN69MiMk0KQs+N6DbzZLTL2br85AkW4?=
 =?us-ascii?Q?yE8rLZMA9S2i4Q4IA4TmJ6SWYTuS9m4W/jCvYFNJJzwDsEkCfCICJRJMGPP6?=
 =?us-ascii?Q?DvmkJnDSicDYXHZxmpnSH7EnBruiGunAxeRB2tU56ZcMhNOb9GG0xINMalL0?=
 =?us-ascii?Q?ODiFI59OjtsJbOAP8/SGghJDMGYpOIaSSzM+v+A5Kvzi7of6zKOF7BpRyylN?=
 =?us-ascii?Q?JR5dyio0OSytjIzPm8xVLCNP79hDixaH2/4o8eUZevhgLSCwwQhc30BQPLFA?=
 =?us-ascii?Q?thiH6U3uA13MPN1Dbmjww9gd5pN468WeA12mAekvk+eIIvdV978/YhS1M51O?=
 =?us-ascii?Q?MXNajQWeLs392Lc8HiPYoURgWa1ha5V+QinRBohU3glMsUj/ZcAdsinWwW7H?=
 =?us-ascii?Q?MfMwIiVDlmF342KuuxL/sHVfGY8T53Qtn3FNe4QJha8H7hvYmC+v7vo5szvA?=
 =?us-ascii?Q?ZVvr61l2knCSeaqEAknvdjHzuurICsUriaU3kw2cuupLcrq9o2nlU5QBAabs?=
 =?us-ascii?Q?qiKbdLys72Kjykll8OEFwmca4nLyMlO01jgwQhxvKnY//QBFlXfEYYjj2de0?=
 =?us-ascii?Q?RLSCxMuVJsaq7ccZLqUVdWGu+uboIJZXgxuxtLD0zJkwZreNz7Xtius8pXVA?=
 =?us-ascii?Q?T5Gl8Yz48sqyLPGeUQulOrdLF/AYXR2/YSRYayQ6DiHMA2lSRYhUiOx330YM?=
 =?us-ascii?Q?3ICPlnBqhw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 748aed58-0fbd-4423-d2a6-08de7f06d7dd
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:50.3023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uD40Z+280AcS/BjQ7DatCFIJJvAMxpj2XhBy6w2pMBIDNjuYcc9NFPC4aiBxesFvaP3LczaeHBhrnB/m6CzEKA==
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
X-Rspamd-Queue-Id: AB886259F20
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

Add the page table walker implementation that traverses the page table
hierarchy for both MMU v2 (5-level) and MMU v3 (6-level) to resolve
virtual addresses to physical addresses or find PTE locations.

Currently only v2 has been tested (nova-core currently boots pre-hopper)
with some initial prepatory work done for v3.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   1 +
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 218 +++++++++++++++++++++
 2 files changed, 219 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 8cc5f72ead11..f9996dcac7c6 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -10,6 +10,7 @@
 
 pub(crate) mod ver2;
 pub(crate) mod ver3;
+pub(crate) mod walk;
 
 use crate::gpu::Architecture;
 use crate::mm::{
diff --git a/drivers/gpu/nova-core/mm/pagetable/walk.rs b/drivers/gpu/nova-core/mm/pagetable/walk.rs
new file mode 100644
index 000000000000..c68eb226b9b1
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/walk.rs
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Page table walker implementation for NVIDIA GPUs.
+//!
+//! This module provides page table walking functionality for MMU v2 and v3.
+//! The walker traverses the page table hierarchy to resolve virtual addresses
+//! to physical addresses or to find PTE locations.
+//!
+//! # Page Table Hierarchy
+//!
+//! ## MMU v2 (Turing/Ampere/Ada) - 5 levels
+//!
+//! ```text
+//!     +-------+     +-------+     +-------+     +---------+     +-------+
+//!     | PDB   |---->|  L1   |---->|  L2   |---->| L3 Dual |---->|  L4   |
+//!     | (L0)  |     |       |     |       |     | PDE     |     | (PTE) |
+//!     +-------+     +-------+     +-------+     +---------+     +-------+
+//!       64-bit        64-bit        64-bit        128-bit         64-bit
+//!        PDE           PDE           PDE        (big+small)        PTE
+//! ```
+//!
+//! ## MMU v3 (Hopper+) - 6 levels
+//!
+//! ```text
+//!     +-------+     +-------+     +-------+     +-------+     +---------+     +-------+
+//!     | PDB   |---->|  L1   |---->|  L2   |---->|  L3   |---->| L4 Dual |---->|  L5   |
+//!     | (L0)  |     |       |     |       |     |       |     | PDE     |     | (PTE) |
+//!     +-------+     +-------+     +-------+     +-------+     +---------+     +-------+
+//!       64-bit        64-bit        64-bit        64-bit        128-bit         64-bit
+//!        PDE           PDE           PDE           PDE        (big+small)        PTE
+//! ```
+//!
+//! # Result of a page table walk
+//!
+//! The walker returns a [`WalkResult`] indicating the outcome.
+
+use kernel::prelude::*;
+
+use super::{
+    DualPde,
+    MmuVersion,
+    PageTableLevel,
+    Pde,
+    Pte, //
+};
+use crate::{
+    mm::{
+        pramin,
+        GpuMm,
+        Pfn,
+        Vfn,
+        VirtualAddress,
+        VramAddress, //
+    },
+    num::{
+        IntoSafeCast, //
+    },
+};
+
+/// Result of walking to a PTE.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum WalkResult {
+    /// Intermediate page tables are missing (only returned in lookup mode).
+    PageTableMissing,
+    /// PTE exists but is invalid (page not mapped).
+    Unmapped { pte_addr: VramAddress },
+    /// PTE exists and is valid (page is mapped).
+    Mapped { pte_addr: VramAddress, pfn: Pfn },
+}
+
+/// Result of walking PDE levels only.
+///
+/// Returned by [`PtWalk::walk_pde_levels()`] to indicate whether all PDE levels
+/// resolved or a PDE is missing.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum WalkPdeResult {
+    /// All PDE levels resolved -- returns PTE page table address.
+    Complete {
+        /// VRAM address of the PTE-level page table.
+        pte_table: VramAddress,
+    },
+    /// A PDE is missing and no prepared page was provided by the closure.
+    Missing {
+        /// PDE slot address in the parent page table (where to install).
+        install_addr: VramAddress,
+        /// The page table level that is missing.
+        level: PageTableLevel,
+    },
+}
+
+/// Page table walker for NVIDIA GPUs.
+///
+/// Walks the page table hierarchy (5 levels for v2, 6 for v3) to find PTE
+/// locations or resolve virtual addresses.
+pub(crate) struct PtWalk {
+    pdb_addr: VramAddress,
+    mmu_version: MmuVersion,
+}
+
+impl PtWalk {
+    /// Calculate the VRAM address of an entry within a page table.
+    fn entry_addr(
+        table: VramAddress,
+        mmu_version: MmuVersion,
+        level: PageTableLevel,
+        index: u64,
+    ) -> VramAddress {
+        let entry_size: u64 = mmu_version.entry_size(level).into_safe_cast();
+        VramAddress::new(table.raw_u64() + index * entry_size)
+    }
+
+    /// Create a new page table walker.
+    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Self {
+        Self {
+            pdb_addr,
+            mmu_version,
+        }
+    }
+
+    /// Walk PDE levels with closure-based resolution for missing PDEs.
+    ///
+    /// Traverses all PDE levels for the MMU version. At each level, reads the PDE.
+    /// If valid, extracts the child table address and continues. If missing, calls
+    /// `resolve_prepared(install_addr)` to resolve the missing PDE.
+    pub(crate) fn walk_pde_levels(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+        resolve_prepared: impl Fn(VramAddress) -> Option<VramAddress>,
+    ) -> Result<WalkPdeResult> {
+        let va = VirtualAddress::from(vfn);
+        let mut cur_table = self.pdb_addr;
+
+        for &level in self.mmu_version.pde_levels() {
+            let idx = self.mmu_version.level_index(va, level.as_index());
+            let install_addr = Self::entry_addr(cur_table, self.mmu_version, level, idx);
+
+            if level == self.mmu_version.dual_pde_level() {
+                // 128-bit dual PDE with big+small page table pointers.
+                let dpde = DualPde::read(window, install_addr, self.mmu_version)?;
+                if dpde.has_small() {
+                    cur_table = dpde.small_vram_address();
+                    continue;
+                }
+            } else {
+                // Regular 64-bit PDE.
+                let pde = Pde::read(window, install_addr, self.mmu_version)?;
+                if pde.is_valid() {
+                    cur_table = pde.table_vram_address();
+                    continue;
+                }
+            }
+
+            // PDE missing in HW. Ask caller for resolution.
+            if let Some(prepared_addr) = resolve_prepared(install_addr) {
+                cur_table = prepared_addr;
+                continue;
+            }
+
+            return Ok(WalkPdeResult::Missing {
+                install_addr,
+                level,
+            });
+        }
+
+        Ok(WalkPdeResult::Complete {
+            pte_table: cur_table,
+        })
+    }
+
+    /// Walk to PTE for lookup only (no allocation).
+    ///
+    /// Returns [`WalkResult::PageTableMissing`] if intermediate tables don't exist.
+    pub(crate) fn walk_to_pte_lookup(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
+        let mut window = mm.pramin().window()?;
+        self.walk_to_pte_lookup_with_window(&mut window, vfn)
+    }
+
+    /// Walk to PTE using a caller-provided PRAMIN window (lookup only).
+    ///
+    /// Uses [`PtWalk::walk_pde_levels()`] for the PDE traversal, then reads the PTE at
+    /// the leaf level. Useful when called for multiple VFNs with single PRAMIN window
+    /// acquisition. Used by [`Vmm::execute_map()`] and [`Vmm::unmap_pages()`].
+    pub(crate) fn walk_to_pte_lookup_with_window(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+    ) -> Result<WalkResult> {
+        match self.walk_pde_levels(window, vfn, |_| None)? {
+            WalkPdeResult::Complete { pte_table } => {
+                Self::read_pte_at_level(window, vfn, pte_table, self.mmu_version)
+            }
+            WalkPdeResult::Missing { .. } => Ok(WalkResult::PageTableMissing),
+        }
+    }
+
+    /// Read the PTE at the PTE level given the PTE table address.
+    fn read_pte_at_level(
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+        pte_table: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<WalkResult> {
+        let va = VirtualAddress::from(vfn);
+        let pte_level = mmu_version.pte_level();
+        let pte_idx = mmu_version.level_index(va, pte_level.as_index());
+        let pte_addr = Self::entry_addr(pte_table, mmu_version, pte_level, pte_idx);
+        let pte = Pte::read(window, pte_addr, mmu_version)?;
+
+        if pte.is_valid() {
+            return Ok(WalkResult::Mapped {
+                pte_addr,
+                pfn: pte.frame_number(),
+            });
+        }
+        Ok(WalkResult::Unmapped { pte_addr })
+    }
+}
-- 
2.34.1

