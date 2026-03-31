Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Np8Ht46zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2912D3719C9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958C010EBB6;
	Tue, 31 Mar 2026 21:21:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="UiD0jfhx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012021.outbound.protection.outlook.com [52.101.48.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EEE10EBB2;
 Tue, 31 Mar 2026 21:21:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oPkPdkUa6FJ3s89gSRajM/ITvMPuQEGKLQnqOr1V1UIyj6t1LDnT3h56PAHlrnrXZaHx6pxa7kfGnRa0clxCmbkWyKxG5uL5qwPO3syNtVmA91/vNMA6NoJxfkJ4i7ToT6Es06PTuRvrKEIv6LOjjl6dPlBRyHYtfdvQb9gcHwB5rzgEPmtcv+HU44fybjf2esmXWkJezLkEuRNXjDY0v7Ey+ty0D6youdNZXoHCeZjpyPrSTYoBH1WU8Sr5E3Nf08OnAaBE7byKLhuzuQng0YiJQs/hsS/3biwjIaqMMnuhFJEWcjRk/bDtb+XACBW1qVsg3ux6kbwVShkwZx29nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPh6Xihqgkb/zfk9ZZ+U6isIDfn4GRNOr/yvh7uD7Yw=;
 b=wWugsO/RmeesoOXIF9qrvdBPEbaJTiI2c+9m9+vmB1fOOsqVLM9JNlpv+Q1NezbFskqnzVTQy5jEPSp9ihAIWkL5vDfeh4OTmFP/2eKoDQnh4YRosS5xXEXyWaeiHXCbbNjfDFU/1vYMx7i+g8uUVvkbC3/CcznxGflADomRVWqcITMzkWgsQbjZkBJ7qFx5b0Z4jdGbqPMoPRUVYl4v6uucJcg3QKTsHNZodCN5qY4lUmh7QSqsvserQ+lvkuuOyUUJ0EnWv+X7iy9wxUXpN+OPWH9I+Y9V3Gusjl7bcglq/J2rKHRJ79R7+HLMVezUccNGxWgFYwwkbMs8mwoeVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPh6Xihqgkb/zfk9ZZ+U6isIDfn4GRNOr/yvh7uD7Yw=;
 b=UiD0jfhxJlOUZBnz7HL3SrlIe+HIH1knODry35PL2msJ2Xy0ggJ5Bl03yvg5vRdaxRBnZFhZIz4N18EEB2jFpzNg709Mr7HDUPaGY6E3ELtijWtDFCFGyqizHYYF2Q7wLGpOn6dUD8yG/4Hxdd45vQsNWig32oAdQDl4LuI1ws/juw8bMm7Rhoqo691N+mVvozF8dv7doFm5CNUOhjWZZhAd74++6pkIZYH8pBSE01ZgrnAXVRYIC4W26+0rrjsPN1cYWE64PwRJowFEl0yrCJtiAYqzMvcTCET2rkl/XAQ0CUe2zqA7mJzRWNz4mVGC7CWtUkC+/ICWoWHYE/W6aA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:26 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:26 +0000
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
Subject: [PATCH v10 11/21] gpu: nova-core: mm: Add MMU v3 page table types
Date: Tue, 31 Mar 2026 17:20:38 -0400
Message-Id: <20260331212048.2229260-12-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0320.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 21773a83-a69e-4499-df74-08de8f6b7760
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 24UPrU3aGn6umh17MdY+E64S/2HFIUel2vXg6sY/SNYrWIKa6iK1qRFIkCh5ooPP7jm5f84uziZ+KbCNektKZt5rW1ISsk57w5rdNRS5deYCuEHtPPmiF/R+DQbBmVaa18EVyDaeFnw/JNnLsUpiMCEaBa3YlmOlY6HE1i8llGKX4aAsS2/UYfJBXyI4L/UOnsXvyCNHmvB36bgKAHDsOz8ewPUru+AoccLEHx4+fDMU45GDhGXFirtgjaN9+S5zyJtIClvFki0o1ysvPrQBaO7vZfUcgSGbsZvs1uB8xaEG0qDT0E0KTQ9psYg+apRkr22K/vScmTuzYALw7mWfk3lE311dSUCaMF35IhjM3KwaLfTNrXUwdU3U0ujaMvjRukEGaWMnUTrOBpKV5NboC9tHFZOhHFuBt1xsw7lK7s67z0oqajS1fTZJ0+Kb2lNXedy4HiSQK8ZAEKH8amYbOm4Qe4wUyu9cm+9I+CbNhXrZ1QpCcep8DDxZ3K1yQvOl+gmTw3jUNEiPuYZiDW1XeAtvYR3sY+drWfXflc1a1psZ4JfdS1KHRqXwWmqjHdA3M2T/D7Y/C4HMcPRDS6ptHHMqCwKGiWjz1s0tNsgqUiEKUDri+/m8ss9dYQucNAm0RVmI6i7c21Ctk8y+K1OGPyxA+AI+v6S2yBqpV28r75wVj/DlD+WPhB+JfwSkfFXrN01GU34bhAupDr4868T0jHv8Wfpo2yGkjcjaplMtQQM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x4CEjt9sQqip4OGD7sMzYZDyVgfDCH0N37DrrkPmtGF3piJP7oFIdXkypOZs?=
 =?us-ascii?Q?NeywWCBp+vFIQ4PKsL5CNZZ7ccpdQBFYLKwYeyFLp4JU0eqyp9G7REIGmGGP?=
 =?us-ascii?Q?QG1Fn7FPWcxf/k3BXKCvvnbScw99lHNpWD1k6Tk30uKWQrW8DtwZduG7YJJ/?=
 =?us-ascii?Q?6HICsgS4iEIZu3DB1XXWQUZyP4QsdNb6+7kBhgYQHuTIbJFaaQt9eUFQqlX5?=
 =?us-ascii?Q?JbydL9rDlsmJxBzjwykiPDq4TGE+xbZdQCiwbi2O+8pltZvrTRyNl+5YznV7?=
 =?us-ascii?Q?eFhhRCoGloiNU4URnqzmKgRgvfHaZ3X3swsmHL2HkEIzosRHZFXxgy0EoBdt?=
 =?us-ascii?Q?5WqDHVXRSQEuFRZU9iYfCOALF4DDJfiabx0rxgeM20tvTYagmfZfNJw8H1z1?=
 =?us-ascii?Q?2k2sHx/xv4ZQzo90WNyfE7flJOl76d4cnDVOgniYqfk84+F7xJImpFEIYERr?=
 =?us-ascii?Q?Isi4k1QhwfZzavviYc2/eh3Zu/8M5aNzMRGi2bvAyRqE/D6aAZyqWBleqWCT?=
 =?us-ascii?Q?fUjFNhpBYheAoZ5BLfgwccV7Cyl4sc7nGbeNAMrMK/IXiMZmGVxBO/H6uJun?=
 =?us-ascii?Q?TNAmLkp8TlCUECnIw7Vg/T6sMFY3A+XWRB1BAHveoWr7JWXB0ulP9Sdd7SK2?=
 =?us-ascii?Q?pB1P/kFDJfVNsKRXVJ2h+DOXEJHIAReQrZ86siP6TulqzNmd+9hBqn5QzwJ0?=
 =?us-ascii?Q?yPQO73MC0agz92vJYNVYR/RYLjgr+fdLWOvhjLvylbDEZOq1NfnE+l0CIOPL?=
 =?us-ascii?Q?DxD6yUOBIZKx/05gtM88xP97Jc3pulFHU7tpo7BSL2MIC+wcuRHsPKwd6wJZ?=
 =?us-ascii?Q?JTICtYk8DzIBfkQVVoQgExOEAb5Ds3fdRqD3+l+XQI5jNSVn6ZaTqDz12xzf?=
 =?us-ascii?Q?WH1lp0ITvFai9XncwsjMvcP58ZKCLTdLjgETW891s1uRiAH46RcO/HXIXGrJ?=
 =?us-ascii?Q?a4aZ8So9aQwWaFZ0HWaBnpnEyjjCz1LPMCZPOaKDdw1JngcSqmwIJb0BXbFv?=
 =?us-ascii?Q?KKHzPstvDV9mdoYtGDCejrcVYtjkoZjd6IQBalw8lAY+oc7d8iesS6m4aKlj?=
 =?us-ascii?Q?G3vFAqgQTEx3SdwAGrDs27UulMTUtfVnaO8OjG4PskKzNXTjGYQBARFo5rix?=
 =?us-ascii?Q?i1NVG01K/AeGwrf3npqrj2Dnlgscw3QxmNa64Ud5p/sCulHdQIQuVW5nSz9H?=
 =?us-ascii?Q?P62yPVZkCGQPCKfw/dzgmYlAXWnBdR2/OpEKLNxsHtVpH28XKx5htMm7KQW0?=
 =?us-ascii?Q?GjZypKVQBN4XLkfozE1PkTwEcHY9bo8xxWIt/ipmf1BnvxcW8iIaWf4ApHYe?=
 =?us-ascii?Q?YHlly2LN1y9emI1NuKUcz2tAsS2AnLkouCCXdqELE7zVDjykPZf0h4rkDTPk?=
 =?us-ascii?Q?bxChMRy04/x3jsO6kEU0P7enwtIPs4MJqXZhKrvvGTghK6rH1nQAd04QY7Ho?=
 =?us-ascii?Q?IBR0RLt9kvZfMyDzG/AUL8j27jcB5ktv3VjiXgD47Y65eIiwM8Sc1F3iglrs?=
 =?us-ascii?Q?CFM8TeOl7+7wBaU/PFYrvhH+kUmoYo93BJz61jjZ6JgGXjqFl7M1/MvWjeH0?=
 =?us-ascii?Q?7t4hvLbjmXd0EF57kEDVMQJpnCfad5qUaMJTRXsmb+wPqNyjhgYyuCvUhDF6?=
 =?us-ascii?Q?7XJ/d4jG8noVVBKa89TCUBHZR6QH7Ec1ievtcNaShKsbZV5pm2gKetizXRng?=
 =?us-ascii?Q?053dFFVu4RWId2IvyOJxxBqDmX9NrO4Wg16145GneJBRudyVhj68V5vxvdDy?=
 =?us-ascii?Q?ll5KKatHLw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21773a83-a69e-4499-df74-08de8f6b7760
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:26.2622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ktVq1uKUxU1PVSSG6qhcx0xUe9be1t+kfO/N9g9T1tCSHyaceoYFlZe/64QbNQgUq2EDN9jnZNFoByoGNHmBA==
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
X-Rspamd-Queue-Id: 2912D3719C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add page table entry and directory structures for MMU version 3
used by Hopper and later GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   1 +
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 337 +++++++++++++++++++++
 2 files changed, 338 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 38d88f8f09a9..6e01a1af5222 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -9,6 +9,7 @@
 #![expect(dead_code)]
 
 pub(crate) mod ver2;
+pub(crate) mod ver3;
 
 use crate::gpu::Architecture;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver3.rs b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
new file mode 100644
index 000000000000..ef517673944e
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
@@ -0,0 +1,337 @@
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
+use kernel::prelude::*;
+
+bitfield! {
+    pub(crate) struct VirtualAddressV3(u64), "MMU v3 57-bit virtual address layout" {
+        11:0    offset   as u64, "Page offset [11:0]";
+        20:12   pt_idx   as u64, "PT index [20:12]";
+        28:21   pde0_idx as u64, "PDE0 index [28:21]";
+        37:29   pde1_idx as u64, "PDE1 index [37:29]";
+        46:38   pde2_idx as u64, "PDE2 index [46:38]";
+        55:47   pde3_idx as u64, "PDE3 index [55:47]";
+        56:56   pde4_idx as u64, "PDE4 index [56]";
+    }
+}
+
+impl VirtualAddressV3 {
+    /// Create a [`VirtualAddressV3`] from a [`VirtualAddress`].
+    pub(crate) fn new(va: VirtualAddress) -> Self {
+        Self(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV3 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde4_idx(),
+            1 => self.pde3_idx(),
+            2 => self.pde2_idx(),
+            3 => self.pde1_idx(),
+            4 => self.pde0_idx(),
+            5 => self.pt_idx(),
+            _ => 0,
+        }
+    }
+}
+
+/// PDE levels for MMU v3 (6-level hierarchy).
+pub(crate) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+    PageTableLevel::L4,
+];
+
+/// PTE level for MMU v3.
+pub(crate) const PTE_LEVEL: PageTableLevel = PageTableLevel::L5;
+
+/// Dual PDE level for MMU v3 (128-bit entries).
+pub(crate) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+// Page Classification Field (PCF) - 5 bits for PTEs in MMU v3.
+bitfield! {
+    pub(crate) struct PtePcf(u8), "Page Classification Field for PTEs" {
+        0:0     uncached    as bool, "Bypass L2 cache (0=cached, 1=bypass)";
+        1:1     acd         as bool, "Access counting disabled (0=enabled, 1=disabled)";
+        2:2     read_only   as bool, "Read-only access (0=read-write, 1=read-only)";
+        3:3     no_atomic   as bool, "Atomics disabled (0=enabled, 1=disabled)";
+        4:4     privileged  as bool, "Privileged access only (0=regular, 1=privileged)";
+    }
+}
+
+impl PtePcf {
+    /// Create PCF for read-write mapping (cached, no atomics, regular mode).
+    pub(crate) fn rw() -> Self {
+        Self::default().set_no_atomic(true)
+    }
+
+    /// Create PCF for read-only mapping (cached, no atomics, regular mode).
+    pub(crate) fn ro() -> Self {
+        Self::default().set_read_only(true).set_no_atomic(true)
+    }
+
+    /// Get the raw `u8` value.
+    pub(crate) fn raw_u8(&self) -> u8 {
+        self.0
+    }
+}
+
+impl From<u8> for PtePcf {
+    fn from(val: u8) -> Self {
+        Self(val)
+    }
+}
+
+// Page Classification Field (PCF) - 3 bits for PDEs in MMU v3.
+// Controls Address Translation Services (ATS) and caching.
+bitfield! {
+    pub(crate) struct PdePcf(u8), "Page Classification Field for PDEs" {
+        0:0     uncached    as bool, "Bypass L2 cache (0=cached, 1=bypass)";
+        1:1     no_ats      as bool, "ATS disabled (0=enabled, 1=disabled)";
+    }
+}
+
+impl PdePcf {
+    /// Create PCF for cached mapping with ATS enabled (default).
+    pub(crate) fn cached() -> Self {
+        Self::default()
+    }
+
+    /// Get the raw `u8` value.
+    pub(crate) fn raw_u8(&self) -> u8 {
+        self.0
+    }
+}
+
+impl From<u8> for PdePcf {
+    fn from(val: u8) -> Self {
+        Self(val)
+    }
+}
+
+// Page Table Entry (PTE) for MMU v3.
+bitfield! {
+    pub(crate) struct Pte(u64), "Page Table Entry for MMU v3" {
+        0:0     valid           as bool, "Entry is valid";
+        2:1     aperture        as u8 => AperturePte, "Memory aperture type";
+        7:3     pcf             as u8 => PtePcf, "Page Classification Field";
+        11:8    kind            as u8, "Surface kind (4 bits, 0x0=pitch, 0xF=invalid)";
+        51:12   frame_number    as u64 => Pfn, "Physical frame number (for all apertures)";
+        63:61   peer_id         as u8, "Peer GPU ID for peer memory (0-7)";
+    }
+}
+
+impl Pte {
+    /// Create a PTE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PTE for video memory.
+    pub(crate) fn new_vram(frame: Pfn, writable: bool) -> Self {
+        let pcf = if writable { PtePcf::rw() } else { PtePcf::ro() };
+        Self::default()
+            .set_valid(true)
+            .set_aperture(AperturePte::VideoMemory)
+            .set_pcf(pcf)
+            .set_frame_number(frame)
+    }
+
+    /// Create an invalid PTE.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Page Directory Entry (PDE) for MMU v3.
+//
+// Note: v3 uses a unified 40-bit address field (v2 had separate sys/vid address fields).
+bitfield! {
+    pub(crate) struct Pde(u64), "Page Directory Entry for MMU v3 (Hopper+)" {
+        0:0     is_pte      as bool, "Entry is a PTE (0=PDE, 1=large page PTE)";
+        2:1     aperture    as u8 => AperturePde, "Memory aperture type";
+        5:3     pcf         as u8 => PdePcf, "Page Classification Field (3 bits for PDE)";
+        51:12   table_frame as u64 => Pfn, "Table frame number (40-bit unified address)";
+    }
+}
+
+impl Pde {
+    /// Create a PDE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PDE pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::default()
+            .set_is_pte(false)
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame(table_pfn)
+    }
+
+    /// Create an invalid PDE.
+    pub(crate) fn invalid() -> Self {
+        Self::default().set_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this PDE is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame())
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Big Page Table pointer for Dual PDE - 64-bit lower word of the 128-bit Dual PDE.
+bitfield! {
+    pub(crate) struct DualPdeBig(u64), "Big Page Table pointer in Dual PDE (MMU v3)" {
+        0:0     is_pte      as bool, "Entry is a PTE (for large pages)";
+        2:1     aperture    as u8 => AperturePde, "Memory aperture type";
+        5:3     pcf         as u8 => PdePcf, "Page Classification Field";
+        51:8    table_frame as u64, "Table frame (table address 256-byte aligned)";
+    }
+}
+
+impl DualPdeBig {
+    /// Create a big page table pointer from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create an invalid big page table pointer.
+    pub(crate) fn invalid() -> Self {
+        Self::default().set_aperture(AperturePde::Invalid)
+    }
+
+    /// Create a valid big PDE pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_addr: VramAddress) -> Result<Self> {
+        // Big page table addresses must be 256-byte aligned (shift 8).
+        if table_addr.raw_u64() & 0xFF != 0 {
+            return Err(EINVAL);
+        }
+
+        let table_frame = table_addr.raw_u64() >> 8;
+        Ok(Self::default()
+            .set_is_pte(false)
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame(table_frame))
+    }
+
+    /// Check if this big PDE is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the big page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM DualPdeBig (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::new(self.table_frame() << 8)
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
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
+#[derive(Debug, Clone, Copy, Default)]
+pub(crate) struct DualPde {
+    /// Big Page Table pointer.
+    pub(crate) big: DualPdeBig,
+    /// Small Page Table pointer.
+    pub(crate) small: Pde,
+}
+
+impl DualPde {
+    /// Create a dual PDE from raw 128-bit value (two `u64`s).
+    pub(crate) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: DualPdeBig::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual PDE with only the small page table pointer set.
+    pub(crate) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: DualPdeBig::invalid(),
+            small: Pde::new_vram(table_pfn),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(crate) fn has_small(&self) -> bool {
+        self.small.is_valid()
+    }
+
+    /// Check if the big page table pointer is valid.
+    pub(crate) fn has_big(&self) -> bool {
+        self.big.is_valid()
+    }
+}
-- 
2.34.1

