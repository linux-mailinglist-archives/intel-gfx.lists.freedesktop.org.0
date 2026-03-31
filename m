Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJZ+APk6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:22:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A89371A75
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899DD10EC07;
	Tue, 31 Mar 2026 21:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BkVooKN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013042.outbound.protection.outlook.com
 [40.93.201.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8614810EBDC;
 Tue, 31 Mar 2026 21:21:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e1s+ZuQ3RktXwcVITscSsyOw7ejrsxu+dIlovwy+Zog3Bhb0zcwZ71N6PvtBva9Pf6K85OobtZoGmwEQGCt7FNMSZNtVJk2BzTXmUKFroPFJsXuRmhOEC5xmcl1staPqKe2aEkt1T1Xdc6SOt+4uOvKTkiI9l5Jo1/1i4l1+7iDyYxgvlEgykSQtsi1Gw/UPxdk6N3NYjCu4wl7lZZGbBLrFXoQqHwaXGDJLI3kZn5HwSHkr6DXNt2FzcuqHrXTPl46HWArrzqpotIdUvUnDPJMgML4RCpRQZWaDpNMBsuAFRCxcj3Ft0NsB7GRUyJWqR7bxuUJcEtZ5tS8lECbspg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n2dtCVXPXTQ9QJ4HdSvVIqnPbRV2Gry0sOAFPNQMyyk=;
 b=cbg0nHCQLb1J4g1xUWg/ddrlaTLwTxoq3TJhdDbnnLiWdPHCqLZjEAv9KcnfqcJG3ZLJsn0EMRe77N6DN8WxzUHnFfHMb3mAihN2YLKzcD4excY61demG7YMDZnHPziF1BnVllmqEY96cJutvJfVDpLR1BBgtvy364onNRF78UDTFJ+jZB9sZM6ngtV8ShCWpDM8i6BiNWLMAYC9nFLBwyzcQrrCCxVUQBeunhBQ3HTd1nq72sqZpHtUXq85xfJ5+B6t6nJHcbm3VFBCbiUsmUMLtOfUIQOqIoQ8/CS6dXmb5+1ywJh/bTFegBzvkAP/GCiyo/b4Tv/z/+djXpMn8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2dtCVXPXTQ9QJ4HdSvVIqnPbRV2Gry0sOAFPNQMyyk=;
 b=BkVooKN6DmMgNzLtcKywnQUt/gkcxT6flOXd1ltcNIKvJHOOBWodJqOtWhzCmeQQlKByuznV6KbWoNvGaA0Y79jCSJzDV60gOZsFHg9r0ILu0IuuFGa4ctEmq+UdUpGiVecYnM4pUu54k1lb3f0u2NM9CXm4Ew2vUcG9+ILmjo8uNRNG7QzuhlUR2GoNWyluLhP7MC6hwoIC1WAG4ypQEuDYP69E1ovisX1WB9yYU83noAn7+D3Z92U+hxJbeL96WcWgH2D3hE9X35yTOSbakj1yW0Q4Kg2ec+kFvvcRjJ/pJwEZl3S7IsII88FdZhHQaBn/DCtH0k3vg0V2Bn367w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:40 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:40 +0000
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
Subject: [PATCH v10 18/21] gpu: nova-core: mm: Add BAR1 user interface
Date: Tue, 31 Mar 2026 17:20:45 -0400
Message-Id: <20260331212048.2229260-19-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:208:91::12) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: f57c8a71-ddbd-4c9f-022e-08de8f6b7fe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: B3rd0cpkS//NRpv+JfJZQWhymsWlon+9oxMUSEoul7UIc8HhWP30mtSUEZocWstrAW/dvDFKcl+ZIWoxxJEzr8nPf0zSBDi2wSJwnp/CFlMoOiUxvo7fH/LUAZQtAQLDluly9iK6dWnRWpkXOsFMmsUT35x/RLQvmBv3SfJIqDtDkg4zimFI5SRE5CjUDivIImZzE8UZ2uwOesnOq3ltIUhj9dVxnq3wvWPO1/CEKTvNP/iJxUwCNgh8Kgxxz3XdA+P4SVAxTJLLeA8OhwZHnY7HckxXrgGKq5JEHGhQhkoXg3zVWcyXH4VePv0JthuSS0IaaRzx9VrOHdrRHuzbOM9UcYP3WNiZH9r3hxQFDVAPLFPCVjrMEL3Ly43bEbNCCH5q5vkkvFzXnKPgSD1MqILIxP6hrbWxlfS4NsbJojBx23Mvny85l7Zx1plFGJVykTC1cXQHyzfjEm8mqvwEQU0wiCiRxz0WCqdYYedpAR4vlv4GUElnUN/WCQJ7G2+AVvs5lzaUWEyrh24A6DkoNP7cqwHNP6d1t3BtvjE6Eues7mZH8c4M25NjiqM0560IkTK+4dyg992wGQeygLWi6NTbyGySei+Dn9/2XE6qp2EOUOU7d9V9hzOxB2ViQe+LSeE0rKsAADroJSkF5ppC3lqJ/ESjcTqUS1kfgpwWve+d7sNM/JHCP1TCrTtGFPqRs8BAE48qOHzFan+dgLpbbOuxXnqEkfm+CICs0h7DV40=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zywnJR9/kADz9i6DqPtHYtZZGfsU2pRhjgOxyuIlr0cm59D3TiD3zm4vjgH2?=
 =?us-ascii?Q?dr+i/s/kyWgOoAIdGo+ILH8B7sypcDnZEuaMFVkoWv40TxrMNVeKqhCajGNG?=
 =?us-ascii?Q?KksNX1Df/dOUEM5k6dhcK8ufhhsE1YwST8Ks7pFZqJiYENKAVKm8f3ZxDZT4?=
 =?us-ascii?Q?cpZ6aiXak0kzYZf1319EqxPZHz00myYkp2ZHzTaRqJp4sixOWcaDRGEqx2ik?=
 =?us-ascii?Q?VHUflReDB4lgZASGEpVM8Qx4jyjoBd+cJcpYNM1s0ZdFXTWcbKbiJY4SlOwC?=
 =?us-ascii?Q?CSGISzPftGVWGhKZ6yvBNwygG+huRrGUwP1KW8PqwuxM9MvDD3GSFZapYn/h?=
 =?us-ascii?Q?2jpwGOdnpBudJlD4PEnGkq+KHZ1ln6xWRxEwKwKVk57y6c0qS901L5oUOKmd?=
 =?us-ascii?Q?NNc1ylhde8kZ+J9uDP8X7i98iIFKE33giM2HHSpM9RpJr5lvnXdpvKFKa7BW?=
 =?us-ascii?Q?m/Ge0YkY7l1qPIHEZ7N3C8MWTq+KC4l8mCmy2PHmRPL8P8uUsozbxQmyvOHO?=
 =?us-ascii?Q?LMisv/vJ71KdHeta96br17vK2XNRiD1TCH8cbMv+78q29vgFK814dmbZgoIG?=
 =?us-ascii?Q?ue8uoVi4fu84EfRGB3BSrqCN6EZ34a2cP1JijoAVyLbsWACCNOu92vCudDJb?=
 =?us-ascii?Q?y0wgbKQX45kYrGlSvDK0Pj7Ac+E9ftCWIgobkVxmvnvTlWUA5g80pshrsgu+?=
 =?us-ascii?Q?9cOoqObtEv3ek1vq1wVJHK1s9ePUQV45vJS9Q57zmjc50XAs7F6oZ9KRWhCk?=
 =?us-ascii?Q?nVn34OWhbzZICvww/J8wCZ+nWnBty7WmJOYFNLvNOF1Cs5oSitqCNv9sBj9m?=
 =?us-ascii?Q?qNuO9W/1Zp3UsXk6GhGxsovDR5DMOHdXo+KpP0Ui1M3sNZFfzXtC6SkgVX56?=
 =?us-ascii?Q?zHV157H1BF2VglT/g4SNoc9FUOn/0jj9xHNDtwSN+LnhApkbpf2mXKsDS+Xm?=
 =?us-ascii?Q?ztBHcAC1uYb2IFZy6gp/QqZXny+caWYRE33JZIWc4PK8mqD2Y1Ypy3fn9dnt?=
 =?us-ascii?Q?psJ6MEwkReUxlALMOKaXaoUdNQMxToK5RFWCVSgbErI01ziiODXvEKbN5WWK?=
 =?us-ascii?Q?RjXvIEgL4dWNPwrxWiy2R2H63VbPCX6qgOxExUoAZ4QsaRInPyANCVs6Qe7X?=
 =?us-ascii?Q?uUgRcHF3fkvWbB5Ve/65SebaG16t3hSa94d6M6SY623NWWp3tpPJuq9BK+cw?=
 =?us-ascii?Q?EXonim2DxO2A/IUzUDFqaYwoGeCo5Np3UPcOFEydHGS94VJnogN6nCQ2zCUh?=
 =?us-ascii?Q?iZLJ8hgUWHOxDI3v8aG3CbkDtAryZwBlANfh7xiaCjdTMa5Elg7vKbH3gtDz?=
 =?us-ascii?Q?j0btvtue9wNS9N3kZ5Z/Yjtz0ByGpYoAFDEWuXT3Ka5G5Ml+zTSw1e+KjUOZ?=
 =?us-ascii?Q?UODredmH4GUOm+FTePqkTt987+ebLS3k4tS6iT7nX7BAJSs4nZc3vDIOq2Aq?=
 =?us-ascii?Q?Au9tse+5PvkG56B1JWH5IyXGTtCDPXA5iQ4q0nIucWljPY9/cToBBe6qW5Fn?=
 =?us-ascii?Q?ebuCbqdBrOoPQKYHer1GoPsXbKQpfz1ttTbYnDW3u/11PQuEXrMbRu9KDsQw?=
 =?us-ascii?Q?qnGwa+icUQBqLCFH1SgncBLXJV0OyXP6NQ9UwpREUuNdc6pR6eAGGQchXloP?=
 =?us-ascii?Q?6PW+u7wmdSBbvqgEVx8+m7NhQePtlm+Br2/uHBxNYwzOWvT6c01p/0/sy5BB?=
 =?us-ascii?Q?eHDCnTiLqvTcPlBN0z7u1HNXcPR/hMLlIHMGH0rc6+xYUNXN4s2tk1yxq5Jf?=
 =?us-ascii?Q?LGyjjlQOOw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f57c8a71-ddbd-4c9f-022e-08de8f6b7fe7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:40.5143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CL4KiyurfxfSCEt0m3ukFkTDGAcQ78hXIUn4PF7oyEjtXj/4cJ49oJgA/BlJz/WA33Zaf+lH8eqidCQLmnAwxQ==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: A2A89371A75
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
index b4311adf4cef..3bc264a099de 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -51,7 +51,6 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
-#[expect(dead_code)]
 pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
 
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
index 5a85478f2ba3..f549c28172ab 100644
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
index 1594279dea20..9a38eeab53a6 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -4,6 +4,7 @@
 
 #![expect(dead_code)]
 
+pub(crate) mod bar_user;
 pub(crate) mod pagetable;
 pub(crate) mod pramin;
 pub(crate) mod tlb;
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

