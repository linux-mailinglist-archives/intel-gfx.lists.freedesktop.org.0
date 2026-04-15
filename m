Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E9AD/b932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85EA407FBE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C63F10E7C0;
	Wed, 15 Apr 2026 21:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="HpnP787q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA80D10E7A7;
 Wed, 15 Apr 2026 21:06:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E73TfZIykqdUOLLnXH9bmvHlgV7nl8wehE9bYnFFF/f1s6e4VA6fCRIbZON1LNvgWNSYpqXAXhgNfkDPdtqgQGzyeCeXb4GyIDMvbsNwpg4L8udHQtV8uBdmsgrI8V4lZdxApAXAx90w0NkPdKuBlUTPKE0rIXp61NwiAd1M8x0yKJMT/G+18juSIDoCDs98xwtu1khLWhLTeMlZiJUTVElt9ySgsNvjxHRla6rt2HYIghreqwMJgnJ/M+fkMLqEBvkOUQtANP2K1OS5NyGf8s/4uRAoT3MPGqqCcWQYpscciuasDq8/j4RO3v2/uttx1RL/Z9A0dLSbu/BbD1YeNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzW3sRfEvZ/BnUK51LC9percO/6kgPPLzPf2ZCR0wrE=;
 b=mUHvDPo14NHoCJjqWYqSXXEM8CaUvDhBXpoe0WfHmk2TnGgn15kdMj/+csvUG9WPzLFFFwRMOeFIcZ3xAuOXga4JutQTVvH+d3vxjh2gEEMsF/+/34HE7TOigQkP6pLBQHU3XtiTAZKboP3t6hmSdXv1NIPKCW9GJ3MZixqX7sXs8uhqvlvfDQD6gU1HMXbsXAGb/Sv11Gd5XEwsCbPox7tf2atXGgI9kLBUDSyG0V6Cgymf+uxkZZtNl2uN6GFO4NW9wC6wHwoRdkh12cAWlsAVpabNyCf2Rt4EIquKvS22XE5cIeiDXRbNIFAkIV4Y4iUF9Yc3i+P+tCUCT4/8HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzW3sRfEvZ/BnUK51LC9percO/6kgPPLzPf2ZCR0wrE=;
 b=HpnP787quNX0JKKptLbe3c0/i74XKI9zp+MLVZS344nd9Sa9nVJUznB8D6dl/FJaSKZpoVOiTSmrPKgQqGDAnRVYf3WG76CJX8CwEKapqtUfJGVKNAubNL9qPuYwSQkWtadKNclDOnGd98Unx15N86ifl9vkcEEspn1v/f4joY40sA2+RitN+Av0s4RytqCB7kD9788jl1zyfVBmUCIVL4qlUP3nLUIGdkDMPpPH6lZdkjdW13Dyfp3acLEmsf8GZJmyYsMA4cwASMhioWNifhGCa4JADOMLpRSI4SNwznQ/w2o+0LSCmRava+D7i1A4hk5/Xx/dy8x5P+xALkHSpQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:35 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:33 +0000
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
Subject: [PATCH v11 16/20] gpu: nova-core: mm: Add multi-page mapping API to
 VMM
Date: Wed, 15 Apr 2026 17:05:43 -0400
Message-Id: <20260415210548.3776595-16-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR19CA0017.namprd19.prod.outlook.com
 (2603:10b6:930:8e::20) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 3211916e-5bf2-46bd-4cc5-08de9b32df3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: +4VMXW+QlAJcLNp/+CfvCL2YhlsvixruqHcD7KrvdVcVoej7RkdG1MJhccBan8XVu/jkZlDs1enE4OsjsRhUjIVvMeQ9en69yKIy0eDyKy6Y+wy2xXjRxyE3u+n8YsTWlbaM5p6Ji9Li73KJaTVoLjCMlU3yWU6KJHdv+QXPWdB4KMoJcQh9M0LXA7Yul6onNQj5ix361OtDthtG5KHQfY5MOsxfiq9qkzoG5x3sx/QO/si/B4yTqCg8Gnlf5yZjWz+wkzwVlJrQNfnQ4JlH3A05YFpXxvYhHlmT0zBbJfjc4DoZ3GdxjOG450mwDToNIY6lBbvK9hnsYJZYCeEgh1lYnDPwKrgnQqZ6cMl2QSrPcFAdXCsN4XuXbv3kT+oE2PGEKrhnmN3wPl3HTKcxzPX/fBk/6oOCrfu9vhEbNL6Sm5cDQcE+fZQcybr5hAeCxhEkTS1zoVB16IohXjkztejpGdzb9QlCHT/j2FhljU2rr5xrg6puXysKmAgRXsqyVpz5Os+UwKxDNgBZhu7FPuLdMmAlKogAtOH6MPz4H2O6unebk5Gz6J7Y0x+5Q5Wa/HE1BpSPMNtQ6ocFC8vNUmHUQG/JgsrgBc2L/uKWlTzARhvOroqhQw/K1/xRCiu1BZF98f1fhAY/G1LFJcOS2bvc0vjpNmySc6fd0nDqeqcI2lZDjh/21Chcg2ZU+Lb0ygPLAs8F+Ia1M+a3kaoNvMPvJfhxPXJGtr9PlhhFReU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lZwyg1EjVIi/jA5HbmXl7r6qaAMsh/oeJABakVM3xsbgily6/HBhBcJDdcJk?=
 =?us-ascii?Q?TMZV6UpmjqW1SxubpbnAgE3aKGPLPKmzY3JWRU4PBJ4ek/k5K1j1IZfXk3iR?=
 =?us-ascii?Q?OwivbrTYO+V4Ack+LYysHE/awGrIuBYvtrtVUiNrQhgxs5MwyLS7jUa4ZzRR?=
 =?us-ascii?Q?jSTIgrrhlxdxUdj2vU24xbOnAL0gHzpgbINVuAZ7bRO026BABb+w4x/aWV6E?=
 =?us-ascii?Q?FmjFmglSUqmuXxkjf5SmgtTI5TWDtjwgaWnt1WEfCmvbzq6jYszivYvsOoQG?=
 =?us-ascii?Q?gGPvbZfJdAYg5ZNF+vG3d0mivAWXIlFU6w3AejWZRqBNVVgzWi7c0yW5xquq?=
 =?us-ascii?Q?+szyJZuCw7d3nmxrYBx2r2gFdW8r9iBqbR771EOgufIgNLiAoWt1vGAckrFf?=
 =?us-ascii?Q?QBWhhnHEDNAmhAJPFQEe58pY3wDgqgkvRq+fSHsGjHMVcWWmNDEXcSbnM6Bv?=
 =?us-ascii?Q?e8Ideob1jWj+7X5cPKtg28HoH7BavnKaujI1BK8PGccw+W3FcVxcoTkxXqxH?=
 =?us-ascii?Q?V6bi+Nh1J161IKl8hKqKMDxuUfNOmUfd+MLpnx0v4KZPtKKy3Rx4wYpvz81y?=
 =?us-ascii?Q?QTJR3jouCaSm84JKq8B3c0btcNSh4Px/m7NFrSTOEGeRHCYA5zvy/tStwnaa?=
 =?us-ascii?Q?usqt7FTf0HkxRZgGICIbiMZKasG7p/FUiY2y93bvOqXhUA+NAQPA1HYra9OL?=
 =?us-ascii?Q?dovqlCmgbqDEb9EbFM4e5S13HD9F36lRQCyamtsaaw8vfhWjBi2120wV9gtQ?=
 =?us-ascii?Q?74dS8vFNs9vpPMRDFDMSSwL+plk59rvjV1RmKSfOxvs+7XmYKz4dN2slaseA?=
 =?us-ascii?Q?XxubQf6aJoypW2+QcISGXl1/Ud3r8DeTXgTfTW1YdAn6HbdoM0XG2csjbrRD?=
 =?us-ascii?Q?OnAikz8vd3nXPMraS3TOxuUSrfBDZEMJqte4XTxebXjtIRDMz688awbyMSK7?=
 =?us-ascii?Q?RDq+VNgcz3OuRWM89OLL+NTaWsiTNRn+RbgnVw4/jZK2IIXL5/RdeYiqrscr?=
 =?us-ascii?Q?j2XiryZidR9kl+AAaxF1nfvg7rRGdckbXqaTiArLi1NwvNQ8riZfdKZoiuZI?=
 =?us-ascii?Q?1FwmUcTEJekBvnwTPUu8Iffo9rphF6LUgmE/KB3CgvTtPuFla+9fUcdli3uY?=
 =?us-ascii?Q?xt0MbA0ZoY5jEH4IiBWnl2md4urtGu9PPYVsuysn/1hxaYC4URvpAGe91LnV?=
 =?us-ascii?Q?r9gyMD3Tzxr4BtlGu//XY/Mc0bh5wA1WWKD/UTrFUyDDEjIKe77XYxseMYPb?=
 =?us-ascii?Q?eGq9GxAWpM7duFz82SbaDX0TI+LP2sPtpwaT+D1FXfjXjF1JsMlr74QL2yFA?=
 =?us-ascii?Q?VpuK5WsTmG6ceWhGDqP0JiT/x1RG2PJugD5MJoPNK9GHpAQZsz+8TYXOK63E?=
 =?us-ascii?Q?ll5mY03S/clh7nmIww5qxUDLCKiByktVMaVDpjSqF9iC7pl54rw6e9GqoMTY?=
 =?us-ascii?Q?/enAIbe9r5LCRlwn2K+WBl+V9NmUFy11E0O6/oC4SVDFe3OBLeysxpvMN+zC?=
 =?us-ascii?Q?Ykqd1fxIQ9e8uO5zWpMDME1HeobCSsAcUAX2/sAluuvOy7et8FTnF9q0guSq?=
 =?us-ascii?Q?lyJAwCT6gBdSwCXW0tXZ2czWl9MyX1sI2cx1ATOv7a+8jhoxXYJOSw4fQq2k?=
 =?us-ascii?Q?rH32rOsgwuOlg0EtuNm41qGczcbsQjLx1qY/NPHyJ75WRqV3zDc6aArW6rzS?=
 =?us-ascii?Q?UABgOwAINRiARz0yi3h+7eIqKXoZ/aDmy39jVEzqfyF5WnC+Fc+2AB0DO13c?=
 =?us-ascii?Q?8/to9qp+bg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3211916e-5bf2-46bd-4cc5-08de9b32df3d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:33.2179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0VMLzshMi8QOXM1ReGctzosVXhWk/+MSFW2EhaFEHbtzjU3W+cpZHXYWZHTN4l6xzXEND6W1Aez6gTDGlKt4uA==
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
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: D85EA407FBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the page table mapping and unmapping API to the Virtual Memory
Manager, implementing a two-phase prepare/execute model suitable for
use both inside and outside the DMA fence signalling critical path.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs     |   1 +
 drivers/gpu/nova-core/mm/pagetable/map.rs | 338 ++++++++++++++++++++++
 drivers/gpu/nova-core/mm/vmm.rs           | 217 ++++++++++++--
 3 files changed, 537 insertions(+), 19 deletions(-)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/map.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index b7e0e8e02905..4070070922a4 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -8,6 +8,7 @@
 
 #![expect(dead_code)]
 
+pub(super) mod map;
 pub(super) mod ver2;
 pub(super) mod ver3;
 pub(super) mod walk;
diff --git a/drivers/gpu/nova-core/mm/pagetable/map.rs b/drivers/gpu/nova-core/mm/pagetable/map.rs
new file mode 100644
index 000000000000..a9719580143e
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/map.rs
@@ -0,0 +1,338 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Page table mapping operations for NVIDIA GPUs.
+
+use core::marker::PhantomData;
+
+use kernel::{
+    gpu::buddy::{
+        AllocatedBlocks,
+        GpuBuddyAllocFlags,
+        GpuBuddyAllocMode, //
+    },
+    prelude::*,
+    ptr::Alignment,
+    rbtree::{RBTree, RBTreeNode},
+    sizes::SZ_4K, //
+};
+
+use super::{
+    walk::{
+        PtWalkInner,
+        WalkPdeResult,
+        WalkResult, //
+    },
+    DualPdeOps,
+    MmuConfig,
+    MmuV2,
+    MmuV3,
+    MmuVersion,
+    PageTableLevel,
+    PdeOps,
+    PteOps, //
+};
+use crate::{
+    mm::{
+        GpuMm,
+        Pfn,
+        Vfn,
+        VramAddress,
+        PAGE_SIZE, //
+    },
+    num::{
+        IntoSafeCast, //
+    },
+};
+
+/// A pre-allocated and zeroed page table page.
+///
+/// Created during the mapping prepare phase and consumed during the execute phase.
+/// Stored in an [`RBTree`] keyed by the PDE slot address (`install_addr`).
+pub(in crate::mm) struct PreparedPtPage {
+    /// The allocated and zeroed page table page.
+    pub(in crate::mm) alloc: Pin<KBox<AllocatedBlocks>>,
+    /// Page table level -- needed to determine if this PT page is for a dual PDE.
+    pub(in crate::mm) level: PageTableLevel,
+}
+
+/// Page table mapper.
+pub(in crate::mm) struct PtMapInner<M: MmuConfig> {
+    walker: PtWalkInner<M>,
+    pdb_addr: VramAddress,
+    _phantom: PhantomData<M>,
+}
+
+impl<M: MmuConfig> PtMapInner<M> {
+    /// Create a new [`PtMapInner`].
+    pub(super) fn new(pdb_addr: VramAddress) -> Self {
+        Self {
+            walker: PtWalkInner::<M>::new(pdb_addr),
+            pdb_addr,
+            _phantom: PhantomData,
+        }
+    }
+
+    /// Allocate and zero a physical page table page.
+    fn alloc_and_zero_page(mm: &GpuMm, level: PageTableLevel) -> Result<PreparedPtPage> {
+        let blocks = KBox::pin_init(
+            mm.buddy().alloc_blocks(
+                GpuBuddyAllocMode::Simple,
+                SZ_4K.into_safe_cast(),
+                Alignment::new::<SZ_4K>(),
+                GpuBuddyAllocFlags::default(),
+            ),
+            GFP_KERNEL,
+        )?;
+
+        let page_vram = VramAddress::new(blocks.iter().next().ok_or(ENOMEM)?.offset());
+
+        // Zero via PRAMIN.
+        let mut window = mm.pramin().get_window()?;
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
+    /// Ensure all intermediate page table pages exist for a single VFN.
+    ///
+    /// PRAMIN is released before each allocation and re-acquired after. Memory
+    /// allocations are done outside of holding this lock to prevent deadlocks with
+    /// the fence signalling critical path.
+    fn ensure_single_pte_path(
+        &self,
+        mm: &GpuMm,
+        vfn: Vfn,
+        pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
+    ) -> Result {
+        let max_iter = 2 * M::PDE_LEVELS.len();
+
+        for _ in 0..max_iter {
+            let mut window = mm.pramin().get_window()?;
+
+            let result = self
+                .walker
+                .walk_pde_levels(&mut window, vfn, |install_addr| {
+                    pt_pages
+                        .get(&install_addr)
+                        .and_then(|p| p.alloc.iter().next().map(|b| VramAddress::new(b.offset())))
+                })?;
+
+            match result {
+                WalkPdeResult::Complete { .. } => {
+                    return Ok(());
+                }
+                WalkPdeResult::Missing {
+                    install_addr,
+                    level,
+                } => {
+                    // Drop PRAMIN before allocation.
+                    drop(window);
+                    let page = Self::alloc_and_zero_page(mm, level)?;
+                    let node = RBTreeNode::new(install_addr, page, GFP_KERNEL)?;
+                    let old = pt_pages.insert(node);
+                    if old.is_some() {
+                        kernel::pr_warn_once!(
+                            "VMM: duplicate install_addr in pt_pages (internal consistency error)\n"
+                        );
+                        return Err(EIO);
+                    }
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
+    /// Prepare page table resources for mapping `num_pages` pages starting at `vfn_start`.
+    ///
+    /// Reserves capacity in `page_table_allocs`, then walks the hierarchy
+    /// per-VFN to prepare pages for all missing PDEs.
+    pub(super) fn prepare_map(
+        &self,
+        mm: &GpuMm,
+        vfn_start: Vfn,
+        num_pages: usize,
+        page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
+        pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
+    ) -> Result {
+        // Pre-reserve so install_mappings() can use push_within_capacity (no alloc
+        // in fence signalling critical path).
+        let pt_upper_bound = M::pt_pages_upper_bound(num_pages);
+        page_table_allocs.reserve(pt_upper_bound, GFP_KERNEL)?;
+
+        // Walk the hierarchy per-VFN to prepare pages for all missing PDEs.
+        for i in 0..num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            self.ensure_single_pte_path(mm, vfn, pt_pages)?;
+        }
+        Ok(())
+    }
+
+    /// Install prepared PDEs and write PTEs, then flush TLB.
+    ///
+    /// Drains `pt_pages` and moves allocations into `page_table_allocs`.
+    pub(super) fn install_mappings(
+        &self,
+        mm: &GpuMm,
+        pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
+        page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
+        vfn_start: Vfn,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result {
+        let mut window = mm.pramin().get_window()?;
+
+        // Drain prepared PT pages, install all pending PDEs.
+        let mut cursor = pt_pages.cursor_front_mut();
+        while let Some(c) = cursor {
+            let (next, node) = c.remove_current();
+            let (install_addr, page) = node.to_key_value();
+            let page_vram = VramAddress::new(page.alloc.iter().next().ok_or(ENOMEM)?.offset());
+
+            if page.level == M::DUAL_PDE_LEVEL {
+                let new_dpde = M::DualPde::new_small(Pfn::from(page_vram));
+                new_dpde.write(&mut window, install_addr)?;
+            } else {
+                let new_pde = M::Pde::new_vram(Pfn::from(page_vram));
+                new_pde.write(&mut window, install_addr)?;
+            }
+
+            page_table_allocs
+                .push_within_capacity(page.alloc)
+                .map_err(|_| ENOMEM)?;
+
+            cursor = next;
+        }
+
+        // Write PTEs (all PDEs now installed in HW).
+        for (i, &pfn) in pfns.iter().enumerate() {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            let result = self
+                .walker
+                .walk_to_pte_lookup_with_window(&mut window, vfn)?;
+
+            match result {
+                WalkResult::Unmapped { pte_addr } | WalkResult::Mapped { pte_addr, .. } => {
+                    let pte = M::Pte::new_vram(pfn, writable);
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
+        // Flush TLB.
+        mm.tlb().flush(self.pdb_addr)
+    }
+
+    /// Invalidate PTEs for a range and flush TLB.
+    pub(super) fn invalidate_ptes(&self, mm: &GpuMm, vfn_start: Vfn, num_pages: usize) -> Result {
+        let invalid_pte = M::Pte::invalid();
+
+        let mut window = mm.pramin().get_window()?;
+        for i in 0..num_pages {
+            let i_u64: u64 = i.into_safe_cast();
+            let vfn = Vfn::new(vfn_start.raw() + i_u64);
+            let result = self
+                .walker
+                .walk_to_pte_lookup_with_window(&mut window, vfn)?;
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
+        mm.tlb().flush(self.pdb_addr)
+    }
+}
+
+macro_rules! pt_map_dispatch {
+    ($self:expr, $method:ident ( $($arg:expr),* $(,)? )) => {
+        match $self {
+            PtMap::V2(inner) => inner.$method($($arg),*),
+            PtMap::V3(inner) => inner.$method($($arg),*),
+        }
+    };
+}
+
+/// Page table mapper dispatch.
+pub(in crate::mm) enum PtMap {
+    /// MMU v2 (Turing/Ampere/Ada).
+    V2(PtMapInner<MmuV2>),
+    /// MMU v3 (Hopper+).
+    V3(PtMapInner<MmuV3>),
+}
+
+impl PtMap {
+    /// Create a new page table mapper for the given MMU version.
+    pub(in crate::mm) fn new(pdb_addr: VramAddress, version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(PtMapInner::<MmuV2>::new(pdb_addr)),
+            MmuVersion::V3 => Self::V3(PtMapInner::<MmuV3>::new(pdb_addr)),
+        }
+    }
+
+    /// Prepare page table resources for a mapping.
+    pub(in crate::mm) fn prepare_map(
+        &self,
+        mm: &GpuMm,
+        vfn_start: Vfn,
+        num_pages: usize,
+        page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
+        pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
+    ) -> Result {
+        pt_map_dispatch!(
+            self,
+            prepare_map(mm, vfn_start, num_pages, page_table_allocs, pt_pages)
+        )
+    }
+
+    /// Install prepared PDEs and write PTEs, then flush TLB.
+    pub(in crate::mm) fn install_mappings(
+        &self,
+        mm: &GpuMm,
+        pt_pages: &mut RBTree<VramAddress, PreparedPtPage>,
+        page_table_allocs: &mut KVec<Pin<KBox<AllocatedBlocks>>>,
+        vfn_start: Vfn,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result {
+        pt_map_dispatch!(
+            self,
+            install_mappings(mm, pt_pages, page_table_allocs, vfn_start, pfns, writable)
+        )
+    }
+
+    /// Invalidate PTEs for a range and flush TLB.
+    pub(in crate::mm) fn invalidate_ptes(
+        &self,
+        mm: &GpuMm,
+        vfn_start: Vfn,
+        num_pages: usize,
+    ) -> Result {
+        pt_map_dispatch!(self, invalidate_ptes(mm, vfn_start, num_pages))
+    }
+}
diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index 0ff71119708d..4109d413e1b7 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -3,8 +3,7 @@
 //! Virtual Memory Manager for NVIDIA GPU page table management.
 //!
 //! The [`Vmm`] provides high-level page mapping and unmapping operations for GPU
-//! virtual address spaces (Channels, BAR1, BAR2). It wraps the page table walker
-//! and handles TLB flushing after modifications.
+//! virtual address spaces (Channels, BAR1, BAR2).
 
 use kernel::{
     gpu::buddy::{
@@ -16,15 +15,25 @@
     },
     prelude::*,
     ptr::Alignment,
+    rbtree::RBTree,
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
+            map::{
+                PtMap, //
+            },
+            walk::{
+                PtWalk,
+                WalkResult, //
+            },
             MmuVersion, //
         },
         GpuMm,
@@ -38,20 +47,77 @@
     },
 };
 
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
+    pub(super) vfn_start: Vfn,
+    pub(super) num_pages: usize,
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
+}
+
 /// Virtual Memory Manager for a GPU address space.
 ///
 /// Each [`Vmm`] instance manages a single address space identified by its Page
-/// Directory Base (`PDB`) address. The [`Vmm`] is used for Channel, BAR1 and
-/// BAR2 mappings.
+/// Directory Base (`PDB`) address. Used for Channel, BAR1 and BAR2 mappings.
 pub(crate) struct Vmm {
     /// Page Directory Base address for this address space.
     pdb_addr: VramAddress,
-    /// MMU version used for page table layout.
-    mmu_version: MmuVersion,
+    /// Page table walker for reading existing mappings.
+    pt_walk: PtWalk,
+    /// Page table mapper for prepare/execute operations.
+    pt_map: PtMap,
     /// Page table allocations required for mappings.
     page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
     /// Buddy allocator for virtual address range tracking.
     virt_buddy: GpuBuddy,
+    /// Prepared PT pages pending PDE installation, keyed by `install_addr`.
+    ///
+    /// Populated during prepare phase and drained in execute phase. Shared by all
+    /// pending maps, preventing races on the same PDE slot.
+    pt_pages: RBTree<VramAddress, super::pagetable::map::PreparedPtPage>,
 }
 
 impl Vmm {
@@ -76,19 +142,15 @@ pub(crate) fn new(
 
         Ok(Self {
             pdb_addr,
-            mmu_version,
+            pt_walk: PtWalk::new(pdb_addr, mmu_version),
+            pt_map: PtMap::new(pdb_addr, mmu_version),
             page_table_allocs: KVec::new(),
             virt_buddy,
+            pt_pages: RBTree::new(),
         })
     }
 
     /// Allocate a contiguous virtual frame number range.
-    ///
-    /// # Arguments
-    ///
-    /// - `num_pages`: Number of pages to allocate.
-    /// - `va_range`: `None` = allocate anywhere, `Some(range)` = constrain allocation to the given
-    ///   range.
     fn alloc_vfn_range(
         &self,
         num_pages: usize,
@@ -119,7 +181,6 @@ fn alloc_vfn_range(
             GFP_KERNEL,
         )?;
 
-        // Get the starting offset of the first block (only block as range is contiguous).
         let offset = alloc.iter().next().ok_or(ENOMEM)?.offset();
         let vfn = Vfn::new(offset / page_size);
 
@@ -128,11 +189,129 @@ fn alloc_vfn_range(
 
     /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
     pub(super) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
-        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
-
-        match walker.walk_to_pte_lookup(mm, vfn)? {
+        match self.pt_walk.walk_to_pte(mm, vfn)? {
             WalkResult::Mapped { pfn, .. } => Ok(Some(pfn)),
             WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
         }
     }
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
+        // Allocate contiguous VA range.
+        let (vfn_start, vfn_alloc) = self.alloc_vfn_range(num_pages, va_range)?;
+
+        self.pt_map.prepare_map(
+            mm,
+            vfn_start,
+            num_pages,
+            &mut self.page_table_allocs,
+            &mut self.pt_pages,
+        )?;
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
+    /// Installs all prepared PDEs and writes PTEs into the page table, then flushes TLB.
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
+        self.pt_map.install_mappings(
+            mm,
+            &mut self.pt_pages,
+            &mut self.page_table_allocs,
+            vfn_start,
+            pfns,
+            writable,
+        )?;
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
+    pub(crate) fn unmap_pages(&mut self, mm: &GpuMm, range: MappedRange) -> Result {
+        self.pt_map
+            .invalidate_ptes(mm, range.vfn_start, range.num_pages)?;
+
+        // TODO: Internal page table pages (PDE, PTE pages) are still kept around.
+        // This is by design as repeated maps/unmaps will be fast. As a future TODO,
+        // we can add a reclaimer here to reclaim if VRAM is short. For now, the PT
+        // pages are dropped once the `Vmm` is dropped.
+
+        // Unmap complete, safe to drop `MappedRange`.
+        range._drop_guard.disarm();
+        Ok(())
+    }
 }
-- 
2.34.1

