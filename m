Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIpXJd7932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44391407F2F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A7210E796;
	Wed, 15 Apr 2026 21:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="QwBoPhKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011003.outbound.protection.outlook.com
 [40.93.194.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC5710E78D;
 Wed, 15 Apr 2026 21:06:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f8YKQU81qg66DvX9tngby+TZBweetOS4/oSuOjsmQkrlZMIxFe71MR2ffHZCOuvdxzL1ezwqIZaBABRK30Tob4SWJ8t2l1W1yKEVawqs4FDgFB58k4ni5L0y7ZHhlTSpHNy04Sy2tP0SwhlX3IeAxkQSS4TODqM57ChX2ubS3FmN2M+/cPV9sNDNvP+xmR/MEp9eZUq0sl7miRZTyNKxM1Ofkg6MSB1rMtM7jVHJoXpVdWQg5X4QrOHXoHwQDC+hApjNcibPpf5nB7ZBRxXyhQ9UaxE6qRnUWpLTFzVZmkfwh+8JUB0wTWEfFrPAGWccnIf4/2864vKJNtxe3c4luA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FocpeXCg9O0BdSKiKx0Gsqh/CzAHo0Z2knro84MKX0A=;
 b=YVUysLChXL/7DWx9HAg5fwHuU3++EIsXf0cndusXyMe+a0QPkXvQKpNWoOgXY+0Ge31lRqqDt2N9ko1PjHLXnvlPdxEw5Irhv9gvidbB68c2yO/hwSkvVijo+Cy3xUDJ6JTDUAEymTsJya2UrBemP6sh0F0qbnF38C2nCQbdXQC6edeuL2ZouvH0x1qunycWDEe2tOV2Sr1dA66fQnwBd7vhNEWqjIGQBdr93gOtWxjgOig1k4QXyFEPztUeWhPvofRUMP1o8m1HfsgfYFrrOGSYk9fHX+kA+UCYL0QdG5sblwRktANUIKfSRIUZawTJrfjbGy3GSiykyQD2okRfvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FocpeXCg9O0BdSKiKx0Gsqh/CzAHo0Z2knro84MKX0A=;
 b=QwBoPhKXoCrYYSKHKTc7gxGMJaco1dOlAp7e37p03jVsb7aWbLHAICdjl6UDju2xT5GDWXMFWJKyFI4T+ntYSrEr5c/IJgBGilc4j7wBgv7OQ54zaoOZtARtmpqNfSnJHesfMTDEIuqRzXIjFfl6YWnctAncLN0ol730gfnFZN1Pr17zDbAQOxCXB8FTSZMpVCZBxAp09iNerywoTf2Ws4w0aawIKhG3uyF4Fr9UzsFqNROSEXE3nD5GMDhYeaJWnaa7dxDlNMPE4Gvxutes2CSBltKiT+t8syD1xV7yLjDcwF1PTBJiLYizfHeKoWT7UbY4/8GD/C0COnHLFlxsaA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:22 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:21 +0000
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
Subject: [PATCH v11 11/20] gpu: nova-core: mm: Add MMU v3 page table types
Date: Wed, 15 Apr 2026 17:05:38 -0400
Message-Id: <20260415210548.3776595-11-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR02CA0024.namprd02.prod.outlook.com
 (2603:10b6:930:a1::13) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: fbe3f70b-303b-4f4c-7938-08de9b32d835
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: MRAZipTWVjN5vE6Nyzaa2iGYWHCZtxkQu8b4jsN+9PwzMSF52AotWEyFyP2ORH/gCxHh18YvVoxADpf0ooWuAF1+AqQsdO2gS/TBkCd1LqQe9lTKEDEmbw1hOnTllfdqAvNVxYN+BqBCha9zY0DWvG8YtY2N5PWIM9h2MM7hHP7cu2AkcpczMIQknp394rnnVBWJ600RWj8DpcRaYLCj5+T0MaQhWOffHpAH+Nu4jCWGuX0kmnirmbycIWsCZBld+QTaZnIxgmCs9pmOSF9CRdcOsWB303xqm59uES54GnYF/t3RrJ60z7qQrNC7hGgnI9UW4mPjLDSxU31gCsafZ/XLX7uHqsz7IgXVmDtB2No6hhf+4DXIOzy/jOw7VBFEeZ/pvDWwyKPYvVPpxBOXj6o4vOI4ryMTBJopmvSLzpQsFFMuDkJc9IrDXmpQ7G4mc+l3JeR7Q02m3KQsUOW3ojmnFq8Nu3ag4lGq5Y48B3si2lWO5RkR0GHVKaGKbBoIDyQQGgrmlhhe0knGrAYLNKu2prBnw8+FdJxwm2IokHvdEbPY2wryapLH4XYUNl6sLL5KjTL7493nmF31JhMCqnJTRkW5Et2BJI2HPIWNP/zh5z2flRkDJPlvacsMQJYwqdJNv+bEtN0jUn/vOQ/1dqzilDNvU3K+aCPD4a1txgJFz7F1go7h9DqfZzeSaAw3mPuXHd5URY319Dzk3hrrme2s27giLc97cuEEwHf8eQs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?89GvY0iZUBARFA/KIvGR0BkCLkTCLKx6QzgQAuYL+LKcKE/7QHOQgz+3e1Lo?=
 =?us-ascii?Q?mpyY/R/4GsBBCVBAyqP+1aa3dug8KE9QTt5U2iz3cAoFi7iRc3/y2ZN+V8rO?=
 =?us-ascii?Q?njuHvglfBM2F9Llb5NnF2LXKP7U5zNJ+S2BE5B1aUSSC2ZaxVR6j9UeKDxkt?=
 =?us-ascii?Q?eeDsdrAn30iYcdYsbzYqrKdlB1DVYEYhTUO5cGzKaxLh5eg8kI24JyVNRw+x?=
 =?us-ascii?Q?LucAVM1hLvENtq4frau/oh7Q4CIGXT60IwsGKv3jtVc0n/N9glkj5ftpvOOU?=
 =?us-ascii?Q?C54vnMOmh4gSms5BQnXYgyAxHX9X4oZNpNnHWKX1z104Y00HD/EHBSGjGgv+?=
 =?us-ascii?Q?4OANcu8PtmuGTvjsCYb3FJ+n7qNo5NbTFxS2gydl53deUTG6hScrEtrDbWIy?=
 =?us-ascii?Q?/btDqV4/vySlhimpWG6srdEFrqJPY4jR+4teb75uE0RyOoQpoqab4nYKpXtE?=
 =?us-ascii?Q?zz1Q++2l4Tq62I1bcj06nqZBsXQv/UAelU2rTWfDWCrh8B35ioAi2MEFoSCn?=
 =?us-ascii?Q?iowoXvu50Fsr0wcwtx9Cgk/Hw7PVXLn5WEwFs+k9WRp8ADl8jMQkD3s8Vc5j?=
 =?us-ascii?Q?YyVjhcLATkdk+S0P3u+7cY4+oWeUpt//THdbbfp0IO9RQOcBgpWJsEpNkgUE?=
 =?us-ascii?Q?xk26BZyvx5sT+i+gWvxV9hHkzSr45n85pM3EsobEKHU9XTGgsVvvL48MJmXN?=
 =?us-ascii?Q?/uecW0o/OORG9wMUnF1tXPdC4SoGPBrfmBqcMl+dgCC3/+xvLrmdfxThrhMJ?=
 =?us-ascii?Q?uivcwqCwlYwrIJsbvCXpddwtH0Yo1ujTTi0NucTwzouSdy3+/k5xXuF0IQo4?=
 =?us-ascii?Q?i3A3RRIW25yJp/jC+Nc0n9ai8lwGPwKcH6DNSKn4YW5RHCfV6VcsSlqQ/Vtm?=
 =?us-ascii?Q?2O1EPJyxkhMcurfPMb4JUkTxFw+i3ZmBWkjNNy9DAodSQVh489YlWrk62SXH?=
 =?us-ascii?Q?A9+S6jDipYTTwbFugCB6logoImRFfy7DAYRz8PZ2EkUESoAH0KKK+LIAlbTg?=
 =?us-ascii?Q?51phHE0lGaUdg1pfFhgUd2fEqM1atUmfnl4WHn6VxKZFumBW5Wsxu6FmClRW?=
 =?us-ascii?Q?mnLY8a+yEJk5zER9YqcmgcukQ9tMqBfWgGDzB/io8PP9imJ8CU+cLKRTMibR?=
 =?us-ascii?Q?2hOk+AM/0yZdn/P52zTgwpvBplpabidjC8NgM13S10+WVUpxPSxRSr9pt0VK?=
 =?us-ascii?Q?x5cUPdhx3WcnMUTJleSFoT4mfrBFiafSAynZZOFMZFRBpj1Ia3ABro4n8tyn?=
 =?us-ascii?Q?3tySLUGy0sdeqXG5btbMzoIfMZg0n7+I8MH7J3kQ7oMJ48PYPVu84z9bBMNm?=
 =?us-ascii?Q?e0/2MnU/RVJRLRSkse6M/IH7ReBWi0t4iRsvmICq5YGzcnYVsMWjZN+M97i5?=
 =?us-ascii?Q?jfQHtJmNOfnW8QzZX2rtV9PG7UE6sLRMNSFgz8VhzwK8Drv3nrop9PdUv2c4?=
 =?us-ascii?Q?vP9urYACr5t5SRVP9gPEniAtMEWE/gHmO7juRWV3yi3Q0LkEaxdDQNLilkHy?=
 =?us-ascii?Q?IRfZGOc63GP0DN06hvCsmfEvKAeid79rryXZk6HqmKo+96RIdioxVPKVSDCp?=
 =?us-ascii?Q?F89fWlW/X8bs6oZNBtx+ujMmTtp/k+TQE1XmX78lEZUHH9yOu4vks8FHG24f?=
 =?us-ascii?Q?FSX1whSUeFhP+Khy/CnZz8DhaopAecwQToLRT/qtQDCEb2LdQm+QAGgYarAt?=
 =?us-ascii?Q?xNzRn9cUtRkDxDQ/7lGPY7vcl6hLfdMaOiEmYxexEZC3y98P3kBgXakqJjUp?=
 =?us-ascii?Q?bSiL7eQd2g=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbe3f70b-303b-4f4c-7938-08de9b32d835
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:21.3357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZlXMLFRo5imETOKqJ7sW9OP18Rhz6XvDXXJtroMdvnp5WbzFZrq5KCWzPDvq/hmbnTHG5mvEeXUSLgt+GknbSQ==
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
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 44391407F2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add page table entry and directory structures for MMU version 3
used by Hopper and later GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   1 +
 drivers/gpu/nova-core/mm/pagetable/ver2.rs |  10 +-
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 391 +++++++++++++++++++++
 3 files changed, 397 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index f6b184c9b8c8..9897818b3b07 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -9,6 +9,7 @@
 #![expect(dead_code)]
 
 pub(super) mod ver2;
+pub(super) mod ver3;
 
 use kernel::num::Bounded;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver2.rs b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
index 8086f1e5abd8..37066688b5f1 100644
--- a/drivers/gpu/nova-core/mm/pagetable/ver2.rs
+++ b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
@@ -59,11 +59,11 @@ pub(super) fn new(va: VirtualAddress) -> Self {
 impl VaLevelIndex for VirtualAddressV2 {
     fn level_index(&self, level: u64) -> u64 {
         match level {
-            0 => self.pde3_idx(),
-            1 => self.pde2_idx(),
-            2 => self.pde1_idx(),
-            3 => self.pde0_idx(),
-            4 => self.pt_idx(),
+            0 => self.pde3_idx().get(),
+            1 => self.pde2_idx().get(),
+            2 => self.pde1_idx().get(),
+            3 => self.pde0_idx().get(),
+            4 => self.pt_idx().get(),
             _ => 0,
         }
     }
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver3.rs b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
new file mode 100644
index 000000000000..2f9e762c4667
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
@@ -0,0 +1,391 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! MMU v3 page table types for Hopper and later GPUs.
+//!
+//! This module defines MMU version 3 specific types (Hopper and later GPUs).
+//!
+//! Key differences from MMU v2:
+//! - Unified 40-bit address field for all apertures (v2 had separate sys/vid fields).
+//! - PCF (Page Classification Field) replaces separate privilege/RO/atomic/cache bits.
+//! - KIND field is 4 bits (not 8).
+//! - IS_PTE bit in PDE to support large pages directly.
+//! - No COMPTAGLINE field (compression handled differently in v3).
+//! - No separate ENCRYPTED bit.
+//!
+//! Bit field layouts derived from the NVIDIA OpenRM documentation:
+//! `open-gpu-kernel-modules/src/common/inc/swref/published/hopper/gh100/dev_mmu.h`
+
+#![expect(dead_code)]
+
+use kernel::bitfield;
+use kernel::num::Bounded;
+use kernel::prelude::*;
+use pin_init::Zeroable;
+
+use super::{
+    AperturePde,
+    AperturePte,
+    PageTableLevel,
+    VaLevelIndex, //
+};
+use crate::mm::{
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+
+// Bounded to version 3 Pfn conversion.
+impl_pfn_bounded!(40);
+
+bitfield! {
+    /// MMU v3 57-bit virtual address layout.
+    pub(super) struct VirtualAddressV3(u64) {
+        /// Page offset [11:0].
+        11:0    offset;
+        /// PT index [20:12].
+        20:12   pt_idx;
+        /// PDE0 index [28:21].
+        28:21   pde0_idx;
+        /// PDE1 index [37:29].
+        37:29   pde1_idx;
+        /// PDE2 index [46:38].
+        46:38   pde2_idx;
+        /// PDE3 index [55:47].
+        55:47   pde3_idx;
+        /// PDE4 index [56].
+        56:56   pde4_idx;
+    }
+}
+
+impl VirtualAddressV3 {
+    /// Create a [`VirtualAddressV3`] from a [`VirtualAddress`].
+    pub(super) fn new(va: VirtualAddress) -> Self {
+        Self::from_raw(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV3 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde4_idx().get(),
+            1 => self.pde3_idx().get(),
+            2 => self.pde2_idx().get(),
+            3 => self.pde1_idx().get(),
+            4 => self.pde0_idx().get(),
+            5 => self.pt_idx().get(),
+            _ => 0,
+        }
+    }
+}
+
+/// PDE levels for MMU v3 (6-level hierarchy).
+pub(super) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+    PageTableLevel::L4,
+];
+
+/// PTE level for MMU v3.
+pub(super) const PTE_LEVEL: PageTableLevel = PageTableLevel::L5;
+
+/// Dual PDE level for MMU v3 (128-bit entries).
+pub(super) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+bitfield! {
+    /// Page Classification Field for PTEs (5 bits) in MMU v3.
+    pub(in crate::mm) struct PtePcf(u8) {
+        /// Bypass L2 cache (0=cached, 1=bypass).
+        0:0     uncached;
+        /// Access counting disabled (0=enabled, 1=disabled).
+        1:1     acd;
+        /// Read-only access (0=read-write, 1=read-only).
+        2:2     read_only;
+        /// Atomics disabled (0=enabled, 1=disabled).
+        3:3     no_atomic;
+        /// Privileged access only (0=regular, 1=privileged).
+        4:4     privileged;
+    }
+}
+
+impl PtePcf {
+    /// Create PCF for read-write mapping (cached, no atomics, regular mode).
+    fn rw() -> Self {
+        Self::zeroed().with_no_atomic(true)
+    }
+
+    /// Create PCF for read-only mapping (cached, no atomics, regular mode).
+    fn ro() -> Self {
+        Self::zeroed().with_read_only(true).with_no_atomic(true)
+    }
+
+    /// Get the raw `u8` value.
+    fn raw_u8(&self) -> u8 {
+        self.into_raw()
+    }
+}
+
+impl From<Bounded<u64, 5>> for PtePcf {
+    fn from(val: Bounded<u64, 5>) -> Self {
+        Self::from_raw(u8::from(val))
+    }
+}
+
+impl From<PtePcf> for Bounded<u64, 5> {
+    fn from(pcf: PtePcf) -> Self {
+        Bounded::from_expr(u64::from(pcf.into_raw()) & 0x1F)
+    }
+}
+
+bitfield! {
+    /// Page Classification Field for PDEs (3 bits) in MMU v3.
+    ///
+    /// Controls Address Translation Services (ATS) and caching.
+    pub(in crate::mm) struct PdePcf(u8) {
+        /// Bypass L2 cache (0=cached, 1=bypass).
+        0:0     uncached;
+        /// ATS disabled (0=enabled, 1=disabled).
+        1:1     no_ats;
+    }
+}
+
+impl PdePcf {
+    /// Create PCF for cached mapping with ATS enabled (default).
+    fn cached() -> Self {
+        Self::zeroed()
+    }
+
+    /// Get the raw `u8` value.
+    fn raw_u8(&self) -> u8 {
+        self.into_raw()
+    }
+}
+
+impl From<Bounded<u64, 3>> for PdePcf {
+    fn from(val: Bounded<u64, 3>) -> Self {
+        Self::from_raw(u8::from(val))
+    }
+}
+
+impl From<PdePcf> for Bounded<u64, 3> {
+    fn from(pcf: PdePcf) -> Self {
+        Bounded::from_expr(u64::from(pcf.into_raw()) & 0x7)
+    }
+}
+
+bitfield! {
+    /// Page Table Entry for MMU v3.
+    pub(in crate::mm) struct Pte(u64) {
+        /// Entry is valid.
+        0:0     valid;
+        /// Memory aperture type.
+        2:1     aperture => AperturePte;
+        /// Page Classification Field.
+        7:3     pcf => PtePcf;
+        /// Surface kind (4 bits, 0x0=pitch, 0xF=invalid).
+        11:8    kind;
+        /// Physical frame number (for all apertures).
+        51:12   frame_number => Pfn;
+        /// Peer GPU ID for peer memory (0-7).
+        63:61   peer_id;
+    }
+}
+
+impl Pte {
+    /// Create a PTE from a `u64` value.
+    pub(super) fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    /// Create a valid PTE for video memory.
+    pub(super) fn new_vram(frame: Pfn, writable: bool) -> Self {
+        let pcf = if writable { PtePcf::rw() } else { PtePcf::ro() };
+        Self::zeroed()
+            .with_valid(true)
+            .with_aperture(AperturePte::VideoMemory)
+            .with_pcf(pcf)
+            .with_frame_number(frame)
+    }
+
+    /// Create an invalid PTE.
+    pub(super) fn invalid() -> Self {
+        Self::zeroed()
+    }
+
+    /// Get the raw `u64` value.
+    pub(super) fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+bitfield! {
+    /// Page Directory Entry for MMU v3 (Hopper+).
+    ///
+    /// Note: v3 uses a unified 40-bit address field (v2 had separate sys/vid address fields).
+    pub(in crate::mm) struct Pde(u64) {
+        /// Entry is a PTE (0=PDE, 1=large page PTE).
+        0:0     is_pte;
+        /// Memory aperture type.
+        2:1     aperture => AperturePde;
+        /// Page Classification Field (3 bits for PDE).
+        5:3     pcf => PdePcf;
+        /// Table frame number (40-bit unified address).
+        51:12   table_frame => Pfn;
+    }
+}
+
+impl Pde {
+    /// Create a PDE from a `u64` value.
+    pub(super) fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    /// Create a valid PDE pointing to a page table in video memory.
+    pub(super) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::zeroed()
+            .with_is_pte(false)
+            .with_aperture(AperturePde::VideoMemory)
+            .with_table_frame(table_pfn)
+    }
+
+    /// Create an invalid PDE.
+    pub(super) fn invalid() -> Self {
+        Self::zeroed().with_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this PDE is valid.
+    pub(super) fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(super) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame())
+    }
+
+    /// Get the raw `u64` value.
+    pub(super) fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+bitfield! {
+    /// Big Page Table pointer in Dual PDE (MMU v3).
+    ///
+    /// 64-bit lower word of the 128-bit Dual PDE.
+    pub(super) struct DualPdeBig(u64) {
+        /// Entry is a PTE (for large pages).
+        0:0     is_pte;
+        /// Memory aperture type.
+        2:1     aperture => AperturePde;
+        /// Page Classification Field.
+        5:3     pcf => PdePcf;
+        /// Table frame (table address 256-byte aligned).
+        51:8    table_frame;
+    }
+}
+
+impl DualPdeBig {
+    /// Create a big page table pointer from a `u64` value.
+    fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    /// Create an invalid big page table pointer.
+    fn invalid() -> Self {
+        Self::zeroed().with_aperture(AperturePde::Invalid)
+    }
+
+    /// Create a valid big PDE pointing to a page table in video memory.
+    fn new_vram(table_addr: VramAddress) -> Result<Self> {
+        // Big page table addresses must be 256-byte aligned (shift 8).
+        if table_addr.raw_u64() & 0xFF != 0 {
+            return Err(EINVAL);
+        }
+
+        let table_frame = Bounded::from_expr(table_addr.raw_u64() >> 8);
+        Ok(Self::zeroed()
+            .with_is_pte(false)
+            .with_aperture(AperturePde::VideoMemory)
+            .with_table_frame(table_frame))
+    }
+
+    /// Check if this big PDE is valid.
+    fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the big page table.
+    fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM DualPdeBig (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::new(self.table_frame().get() << 8)
+    }
+
+    /// Get the raw `u64` value.
+    pub(super) fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+/// Dual PDE at Level 4 for MMU v3 - 128-bit entry.
+///
+/// Contains both big (64KB) and small (4KB) page table pointers:
+/// - Lower 64 bits: Big Page Table pointer.
+/// - Upper 64 bits: Small Page Table pointer.
+///
+/// ## Note
+///
+/// The big and small page table pointers have different address layouts:
+/// - Big address = field value << 8 (256-byte alignment).
+/// - Small address = field value << 12 (4KB alignment).
+///
+/// This is why `DualPdeBig` is a separate type from `Pde`.
+#[repr(C)]
+#[derive(Debug, Clone, Copy)]
+pub(in crate::mm) struct DualPde {
+    /// Big Page Table pointer.
+    pub(super) big: DualPdeBig,
+    /// Small Page Table pointer.
+    pub(super) small: Pde,
+}
+
+// SAFETY: Both `DualPdeBig` and `Pde` fields are `Zeroable` (bitfield types are Zeroable).
+unsafe impl Zeroable for DualPde {}
+
+impl DualPde {
+    /// Create a dual PDE from raw 128-bit value (two `u64`s).
+    pub(super) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: DualPdeBig::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual PDE with only the small page table pointer set.
+    pub(super) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: DualPdeBig::invalid(),
+            small: Pde::new_vram(table_pfn),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(super) fn has_small(&self) -> bool {
+        self.small.is_valid()
+    }
+
+    /// Check if the big page table pointer is valid.
+    fn has_big(&self) -> bool {
+        self.big.is_valid()
+    }
+}
-- 
2.34.1

