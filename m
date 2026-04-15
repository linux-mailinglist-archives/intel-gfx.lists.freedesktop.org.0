Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CvZNc3932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87581407EBA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A7110E77C;
	Wed, 15 Apr 2026 21:06:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ou4i+QHl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012063.outbound.protection.outlook.com [52.101.53.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307D510E774;
 Wed, 15 Apr 2026 21:06:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BpxQ3IV4j8EcuzeD5S0B96AtAeVTzX2hLpfC67h49zOmB4Gp6KSTNYobqLVHZ4prF3LrXO2gZ68A4gyBPb1B4LC99VEwVnwFo9yXCIjHEFWMBad3w4VT1ITWnpZLhCN3LmuVukVt6la3SzVHILc1BTHmhk25U6nixbzRlxSTLoA3P4q7310eVDdXszPkX3NRJJEkt68B7MvwdFc8LGqCJCqIapSi+Z/qj2pqoqdmWdwwRyR8oSiH7eRStswfyNHK2CJdfNM3RCaPM4O8PmyZ1wGHFIPBiDm6NP+eSSnE4xQtT3jgy/wXleO+oxbSIRWo0AQKQflsm3gNzwGZskgL2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3dKnxstqu03e5TINnK7xgnLIrFGPYtieYZ3hjzzNM4w=;
 b=Uq96N2tEf2q164ZzcKE4hBlgUcfvhytMifNxMk+Bv4Ig4rWIvI4mHKL/BKlfaj452fED7I03YDvvhroUVPzfa2CZZtaw8qwtOSmlyntpCRq9SsRAjbg1cM7wqHfvoZLisnFibQltcEcbleWv7NM2suu3mL6xrhLcy10f/pJyXhQ8E+Ehz0OcKzH/KFQGKwIWwIQ1SoyPKleevrqJLBG1UYrY/wel+rD5BGN+W6IZ3XBGBpJDO3W4MRKv4heLtEWVIyqCZP+ndBOaqCPaKD+bUnzvqYbXn26D24MIvKBT5Owa1kbH4XNm6is7Znz9MD0MG/h/NqDtocKNdRcSdA2y2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dKnxstqu03e5TINnK7xgnLIrFGPYtieYZ3hjzzNM4w=;
 b=ou4i+QHlpGjZHr8Ms5Npyx2rguPKcWMIiO71Hj95/rZllgSXjyfAeLQ7ezKKAsUDJvxoXVbqF/oR98iyshIXTTYs6JmNKM6iP6nSYr7twjimnRzZbIrbU5DYkwrElmb07hwk52T8/T/vW8HxRjGF7TaQ09fPhnQEKtZd022YE7aJeQp2rycW1BesjIxeUPige5HdLaPg8zBlPzJshlb6Kw5mineZ4T3YFfG/fGdi7tfx2Txu3dVTNPoHsJtFzYTinQnMCbQ4AJ8k5HLSrZoOa2hB4I8KCkkJEGQVYUv9DE2k4Tx4wxZsxqbblBJ+2LhtNX8Xdb+n9ocdCYlK8vhsOQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:10 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:09 +0000
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
Subject: [PATCH v11 06/20] gpu: nova-core: mm: Add common memory management
 types
Date: Wed, 15 Apr 2026 17:05:33 -0400
Message-Id: <20260415210548.3776595-6-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR20CA0001.namprd20.prod.outlook.com
 (2603:10b6:930:3::10) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: e6e14661-03f9-478a-2173-08de9b32d139
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: wXD3VDlpDiG8RqvBCNgO/YsNk1Z1wZBPrhJbpXV1aSjtmDFlOX0v8fJTdOmIMXfLmjPmwe49BTUdbR+5/68XWExJs/3o++wdI+WSunjmJibXZrhbanhEnLSerrGiD86DisytPqFEYd202s6wxLmKIbehg/Y1X0a7GheEIQGWj6OQKdD4lAltuQxDCau0KzxTxYOWKqv6cR/YVNKxYfL0/xCKfH4ya1ekoMAQdaClRp5HYBVlyb1wOcLobgY0xyVhqgvnmOvE3h86JkiOE0HGbGFOQhKAf8pLNEkUjzohWMXOsRvyhTz8BAiw3xjL7+oFShNTVqAN4ThAlofdaZMhC/g2MKYyEmidG9FKd9U31/WSEALG9FNnclzfpBQfw3H+Je0GZAgcJfkvr7opjCzBGM+DUZbNAaWNH8UfPindh8K3qlOOZXVs6PdvVbJAnI+abP67/Q6V7WYSH8IwY1MeN0GMPLvjDeI6ITbiPvHFotq1XMV2KJBWcHbYmZU0Iyl/r4rFMp8ktc1hJ+PyIGMfVg9FZrLJtp/KO37LvzABeimOckHVIIvMcqMRgAsn8pGFEI3GF90Nh6rKRuIOrLOv2liBG4xVXaSpvrRRwnLACB6pUR/ezqJ23z3ZCEerygDNg0Hv5wht+xnU8SrFW9jd4mjOH0Wgh++qAE/7sjcXieE5aXulHM5B4wcFpuqvgAH4gaOkk8ZeUdGxklFgKhChas2LEZMKX+kMAHRTJN1uxnY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Rg9SrKki63F4ayA5acA/2pM5jK/l7tRxJFBiTHNYLia1a9/SsdBpC7Ht0Jym?=
 =?us-ascii?Q?Eyab9eaLyWCx3Y947K2JA+LFSUdRllpiACanRXt+5pVUUmEXxFsl9es7V3nE?=
 =?us-ascii?Q?FAbr50R463zZF0IJMe0+XKbc9Pu2l46VmvBvy0MrVWnnN3v/i7EVO5SkFb9a?=
 =?us-ascii?Q?5W+B0spsS/uA+7RqkBLeJqtGvSknHIai5U9Mb19KAFLH5qN/x4AARyVEkdW3?=
 =?us-ascii?Q?VHoXdVn06jTHDKgvDFVEMvsQEFeNv8sYjsdXuiQ9IfulzfTTOKhyV4SuZWZ0?=
 =?us-ascii?Q?S58MKH4NJDF/j/KpbgZy0yPDNiqjRpAEgnFXVJ77KanmLq900q2wyLQ5emOD?=
 =?us-ascii?Q?IGT2reTVP7YhRe5xPpTBsZ8l6IdiOoCr4J97ry5iFnXPi4FnNmmHMWKZHrhK?=
 =?us-ascii?Q?+MDQEgssdZM+vkbfZ7eaaSxh1xk+DbaMwzrp++ZsOCba+28zALIYGM+l1Kph?=
 =?us-ascii?Q?DfGrE4X41DgEugGBuzIXlAIuY9Riv1VtAB4CKxqiTeY2LaBnBm1goSW0GDHa?=
 =?us-ascii?Q?4rPXxk+RZl2ld2psX1TRq09I8BEjkOOjznCykelGZzyuS7slcInaeMUIfwpW?=
 =?us-ascii?Q?gN+J1pf8TR09QNUH652xicZ8G4HY+0F27ZbrAgfy0PbW/Aj9uvqFMxo8U4Vh?=
 =?us-ascii?Q?l5VTJkKTXFSJODMnzQMRQeY2JQh72WekMOiG1MIgR8vKmrB4Td+pTawvnpg0?=
 =?us-ascii?Q?9qzmlZFhTscTkJ/igJLCHAWLCBahwqA5ve97cbEzIhNso2taG7Kol8Z03d8s?=
 =?us-ascii?Q?k+JSZkzL9mdRrI9nn2glsz6nlAWLFC3ZM0d3gWm3tfwaJhCHS9PMdPp3Junq?=
 =?us-ascii?Q?JuQyoPU91yto0+bOyesRFm7rL0uRukwrhl7GgccQyn4GRPqOTr3Twzm1W91E?=
 =?us-ascii?Q?AFoxDJCrp0tKSKqufXPpWt9gFHVWQCuUGGtIo+djYtzF95HUibGBau5ids8B?=
 =?us-ascii?Q?DCFG8G6YPBIwwCPcHBdl2Auj0NF0G6AogVJTKl0h/z/R4fGRIkFGJzV1vJUR?=
 =?us-ascii?Q?Ihb7R9cC1ZZP7TvMhyEcyNJSSlY3fJnpGG900V/MtEIGxkd40WxqCABYN3ky?=
 =?us-ascii?Q?1iAtesLqasOvpIGHmQsoPxR9cfxcKcNkCEfDBvzCrNyocLAOqoHXPKJjnTv+?=
 =?us-ascii?Q?GHAA1oI8U0iZcN8VTH5Z16VBQIZF8Tq8A8VsqU3V7bMHPshkTyFudz8F3uzS?=
 =?us-ascii?Q?cwvEP3AJFfzMyI4P5FmU98AjIx0ue8DJZgLDETYILDlnx2ZBcGtZK5c3jypV?=
 =?us-ascii?Q?T8WrgJCyRADhTceDallFjiJZ9ubzB7qsyHy6n8Zja11df+jGGEfxG7Z3TGe0?=
 =?us-ascii?Q?WCdar34a+gpdSmsMt+43mz/aCCaL/z1e09kMXBor6/G2wZ4U27gHkGtdxkTl?=
 =?us-ascii?Q?H3Hz2jY1ozjG+pOaIAE+ITra2mZrm0fY0b4eBLjPqhEtsWRfknwrf5VgaBsi?=
 =?us-ascii?Q?oxkd8I5r3vOKAXpQ+wbcFllHfafdg+5PCizv+sJm3ch5XyfGJi5mGgrYeCgS?=
 =?us-ascii?Q?AUE4h5leqHJL7/KEIYcdt819MsbHVAgZpPxkeWrZpDfA6/a+FEjSq30Jim5P?=
 =?us-ascii?Q?u8sklfkRPOs2VOaQkTm0PKCTGL0CX+zxiLp/8wD9yclgLqGIUmzIy4iAXloF?=
 =?us-ascii?Q?2lIidvq3XxVBUi0P908ay0crRRYLvUeJa1L40bOVeNWI9zocmi9BH1TZ2pDl?=
 =?us-ascii?Q?ghZm0cD/mamS13oMrTP11kUc7lMC+8PUOcS50YdhuFlwH+P70r9tX3a14rF1?=
 =?us-ascii?Q?fhDuJJjq7Q=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6e14661-03f9-478a-2173-08de9b32d139
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:09.5382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pcVXCF6gpPcpmJ+ABiyhcnilWM2c7aZxMXa6iq+RKxwT0vZ9KV5IfLOsBzjpOXInXCVozPhpJWrBNgdQCf5Hag==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 87581407EBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add foundational types for GPU memory management. These types are used
throughout the nova memory management subsystem for page table
operations, address translation, and memory allocation.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs | 196 ++++++++++++++++++++++++++++++++++++
 1 file changed, 196 insertions(+)

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 7a5dd4220c67..fa29f525f282 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -2,4 +2,200 @@
 
 //! Memory management subsystems for nova-core.
 
+#![expect(dead_code)]
+
+/// Implements `From` conversions between [`Pfn`] and `Bounded<u64, N>` for bitfield interop.
+///
+/// Each MMU version module should invoke this for the specific bit widths used by that version's
+/// PTE/PDE bitfield definitions.
+macro_rules! impl_pfn_bounded {
+    ($bits:literal) => {
+        impl From<Bounded<u64, $bits>> for Pfn {
+            fn from(val: Bounded<u64, $bits>) -> Self {
+                Self::new(val.get())
+            }
+        }
+
+        impl From<Pfn> for Bounded<u64, $bits> {
+            fn from(pfn: Pfn) -> Self {
+                Bounded::from_expr(pfn.raw() & ::kernel::bits::genmask_u64(0..=($bits - 1)))
+            }
+        }
+    };
+}
+
 pub(crate) mod pramin;
+
+use kernel::{
+    bitfield,
+    num::Bounded,
+    prelude::*,
+    sizes::SZ_4K, //
+};
+
+use crate::num::u64_as_usize;
+
+/// Page size in bytes (4 KiB).
+pub(crate) const PAGE_SIZE: usize = SZ_4K;
+
+bitfield! {
+    /// Physical VRAM address in GPU video memory.
+    pub(crate) struct VramAddress(u64) {
+        /// Offset within 4KB page.
+        11:0    offset;
+        /// Physical frame number.
+        63:12   frame_number => Pfn;
+    }
+}
+
+impl VramAddress {
+    /// Create a new VRAM address from a raw value.
+    pub(crate) const fn new(addr: u64) -> Self {
+        Self::from_raw(addr)
+    }
+
+    /// Get the raw address value as `usize` (useful for MMIO offsets).
+    pub(crate) const fn raw(&self) -> usize {
+        u64_as_usize(self.into_raw())
+    }
+
+    /// Get the raw address value as `u64`.
+    pub(crate) const fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+impl PartialOrd for VramAddress {
+    fn partial_cmp(&self, other: &Self) -> Option<core::cmp::Ordering> {
+        Some(self.cmp(other))
+    }
+}
+
+impl Ord for VramAddress {
+    fn cmp(&self, other: &Self) -> core::cmp::Ordering {
+        self.into_raw().cmp(&other.into_raw())
+    }
+}
+
+impl From<Pfn> for VramAddress {
+    fn from(pfn: Pfn) -> Self {
+        Self::zeroed().with_frame_number(pfn)
+    }
+}
+
+bitfield! {
+    /// Virtual address in GPU address space.
+    pub(crate) struct VirtualAddress(u64) {
+        /// Offset within 4KB page.
+        11:0    offset;
+        /// Virtual frame number.
+        63:12   frame_number => Vfn;
+    }
+}
+
+impl VirtualAddress {
+    /// Create a new virtual address from a raw value.
+    #[expect(dead_code)]
+    pub(crate) const fn new(addr: u64) -> Self {
+        Self::from_raw(addr)
+    }
+
+    /// Get the raw address value as `u64`.
+    pub(crate) const fn raw_u64(&self) -> u64 {
+        self.into_raw()
+    }
+}
+
+impl From<Vfn> for VirtualAddress {
+    fn from(vfn: Vfn) -> Self {
+        Self::zeroed().with_frame_number(vfn)
+    }
+}
+
+/// Physical Frame Number.
+///
+/// Represents a physical page in VRAM.
+#[repr(transparent)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(crate) struct Pfn(u64);
+
+impl Pfn {
+    /// Create a new PFN from a frame number.
+    pub(crate) const fn new(frame_number: u64) -> Self {
+        Self(frame_number)
+    }
+
+    /// Get the raw frame number.
+    pub(crate) const fn raw(self) -> u64 {
+        self.0
+    }
+}
+
+impl From<VramAddress> for Pfn {
+    fn from(addr: VramAddress) -> Self {
+        addr.frame_number()
+    }
+}
+
+impl From<u64> for Pfn {
+    fn from(val: u64) -> Self {
+        Self(val)
+    }
+}
+
+impl From<Pfn> for u64 {
+    fn from(pfn: Pfn) -> Self {
+        pfn.0
+    }
+}
+
+impl_pfn_bounded!(52);
+
+/// Virtual Frame Number.
+///
+/// Represents a virtual page in GPU address space.
+#[repr(transparent)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(crate) struct Vfn(u64);
+
+impl Vfn {
+    /// Create a new VFN from a frame number.
+    pub(crate) const fn new(frame_number: u64) -> Self {
+        Self(frame_number)
+    }
+
+    /// Get the raw frame number.
+    pub(crate) const fn raw(self) -> u64 {
+        self.0
+    }
+}
+
+impl From<VirtualAddress> for Vfn {
+    fn from(addr: VirtualAddress) -> Self {
+        addr.frame_number()
+    }
+}
+
+impl From<u64> for Vfn {
+    fn from(val: u64) -> Self {
+        Self(val)
+    }
+}
+
+impl From<Vfn> for u64 {
+    fn from(vfn: Vfn) -> Self {
+        vfn.0
+    }
+}
+
+impl From<Bounded<u64, 52>> for Vfn {
+    fn from(val: Bounded<u64, 52>) -> Self {
+        Self(val.get())
+    }
+}
+
+impl From<Vfn> for Bounded<u64, 52> {
+    fn from(vfn: Vfn) -> Self {
+        Bounded::from_expr(vfn.0 & ::kernel::bits::genmask_u64(0..=51))
+    }
+}
-- 
2.34.1

