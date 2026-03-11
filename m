Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJbHDRK6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B22259E8D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34AA410E7B2;
	Wed, 11 Mar 2026 00:40:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="qhU6P5KL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010057.outbound.protection.outlook.com [52.101.56.57])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFB110E7C2;
 Wed, 11 Mar 2026 00:40:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QfLvlaT1rAUyRZmIC8L5isgmeGa58w87Asrp64Q/HXpI9usT8DZt3s9rgy37zcJQEWq1Ac05bxjXnMxsjCbpi+4SfjbfBRVy7Fjel+HS/QiyTtIDWk0zfBQkL36C0uGLhjp1uvxbIxQcEyYwdCG26eQx7vh7Z1bFYsLH+cTx80io1JdrlThAPWK+gBTBXYNoxga51gYG1MnQ7LEFUN95imyOptKsZKCvN6kmh8Mzm/mlzsAYKgQjGBEcAdZmTjAU79J3g2jHI7d0WxbKb1u36EId8o+3dFW6vcaOb5pbPQpinv8AhHjCsZzyVckST0dtaHKZ+AiuOb7cKiTxz/Y0CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kIrBwu2vIm7Qv/38/Fon3a8r4O7Lsyzc45gD+zI4ewg=;
 b=pXFM+TdKreRXDQVfh704nKdivIyepoFE6fHWHY6iKohlWjMugETqy9DCDtKaiJ0M7GX7loLksY8WiPzC8FFcrmtplXNLss5eZROF47Kpnz3K5WuZdUySapnEVwXcTGdDtNa54mHb+OiuuN4xmnldBa5L4KMPFFq+n8dPsHUyUOPmGmfLZDXVTiOOEoZRoBmRT9kYfcoWryQv7VcyepL0JkE6ybCPBeAE1o2ypcSDPm6jJDa4Ire+sthANeC+u0xXnKuBIo8+Q5j2sRexa66g0J2uCQ9nDsc+bp6WmRkTnpMcML4m2IM7F71Uz1ZE5vF4ygECvC2/Dn8jTm0M3zsC3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kIrBwu2vIm7Qv/38/Fon3a8r4O7Lsyzc45gD+zI4ewg=;
 b=qhU6P5KLMHAmHXJ/Wme5ImcXuqQm7o3ULJu5Rrwt4NqnBv8CtCyAOaSYQMJq5NLsuSW8LgtNZVCUtyLZerWImc4UrV6/vQjokC+Z5wzowMyicfYcKRmFsdI08yoxYVMdIg7gt4gqVGS7DAZdUcyAsq37rDbeT1yZGlPIJdb+yOR4qJ39wa2OIYa+MdChFBfP4FP+iKdcKlSNJIVEBDKKge3O7Vgbn+RCKGGHq837JRerCicXsNxtyw88BfRFuqJv7CTi9WumFIsugjBCrzbZjfIBs7SDaDrbfp+cFKB4fJ+1gEIQ/MOYtSRxCP9OxpTjDrVt4Y3gDVt3lIRQCgXCBw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:36 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:36 +0000
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
Subject: [PATCH v9 08/23] gpu: nova-core: mm: Add common memory management
 types
Date: Tue, 10 Mar 2026 20:39:53 -0400
Message-Id: <20260311004008.2208806-9-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0422.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::7) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: f5ad797a-f882-48d8-e36c-08de7f06cf88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: yM8CUwHgz0IZzoV78BZpWn/8tpemjshhve9BnvWqblwPajYV+BUbfBlnzg9nFCFMK5S5aT00lG5ISX2o5x26pVsnqi2h3lhmi+cAQAGX/csaIpfOsOsew8HVgrldCi1jFixiD0Sr1leynVHrVibp7dko7n/FKTQQdST+5DuDTz58KEJYnzkYWK9s5QZ3Q/B3CP+sLnK0X+6gdOCmJtv6wShSIUhg2ccnc4YoVOw0M7008OJne/xhQweLiuAc8JsKtDygWCeRLtI7TduQ+BYuhBGYtS41VDXSRgs7w1vEg+sQ3CGibMpcWQ8rRiQJObRLUOk6gGWeubet++xwPuUuhY3Zxtjycqrfl9JT+Qp+DtMelxftdZTJEWRzw1Bzh20zteRg0nw8WfF9PBvJI08b2lIV4n1lHpuW8jJSMuXwaUPFH2FoGj3BJm6JEXmsIM4CXLeLiv4DC+AjNUBaFvrI1QI2g/uidJF6o/p3azsaKZvWJSICHvHAegHii4IQ20KlWaNWE4HqkEZ4tkyfP8fLR4osXjk6ymOLBtdsYgoXJ23IjbDB5Tcf741Ruv7IZWimi18CQD05UbrI63KbEgWJZ5KlhgnOT+0KpR2jrZxeCMe+tQ/JgbWa0yUfB6OB5OLSfxV3G9i++bEV/pC2jQPazHAgI3h/hYrhCBYYm3D1R/pFECAh+3NBbm5ov/yQR5eZYvnh1fNZbG/li6a+6bjJPwGqjVcmwJScr5s8usmDJrM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vDPHH650vblnWOnXP0nrTiiVuGhPIcEGasUCUnVjT7TbobYRcASni+jUbl5x?=
 =?us-ascii?Q?rkl0ODovHY5aQY4z8MJjfI3vlwQ9C2hqGFq3dFAJw6TlbwhuW+/m00RY0d8a?=
 =?us-ascii?Q?jz80fsxnM/D7a8HOe3Lyj4ecJb54jMbLPM/HRP4rXf+ecz52kFcNGvMEpkaV?=
 =?us-ascii?Q?p3heV6XyyIFP9GycgAd6FpoQ6CHkNV1YlDyo/APgjz5TMYsoOy9BBs+C4ZwG?=
 =?us-ascii?Q?kDTr/eIwljq5MieA21NkkOVlpLwvN88ptubKwHXXw9SrB4X1sdzBujriqKRS?=
 =?us-ascii?Q?PCx/ja9QAby33570b8XktjkeAdDJ7E5koe35RAHl8vjw3whaIzO3/hd238qQ?=
 =?us-ascii?Q?wqWpMWwHQRJtjsHX9WJbnVvCeXD/+QHk0QXZpsut64KinuLlD+DDLQNXv6hU?=
 =?us-ascii?Q?0JXwezIriIGoBn+ljJDJUMrEkAX44NXHD+tYPkx7BFOCCil54SYWO4dlQ4Ol?=
 =?us-ascii?Q?dxIMZ5pqbpSxHNySy1NnqqUOmdHOai7s8hncEZqscBA8kx5R/E8UG7hx1mtB?=
 =?us-ascii?Q?pq8xhxho/YwhlGxJxOn8CYVZ5yBcJhSH5qa/YIbiWTbjxBRRTYxZobY3gsFC?=
 =?us-ascii?Q?v5Q0TUDVNP/p66vSlQp1bszFFwRlip+1gnnpoWDimrEHa3rWfIVhd6yTRGGL?=
 =?us-ascii?Q?NKVb7rF/zKLNR3KQ+P8ZvH6MqljQwfJcdzALi5A6AmSeDdkI3k/58O6dl/VZ?=
 =?us-ascii?Q?3KfYgCvr7uAGZjgNjAaNVis2WeQaC4b4uxhBbsUontrKo1ou4kW5TrVnTOYV?=
 =?us-ascii?Q?TAi1LuOJ3yDNKyXoOKkmyOUjxKv0WVNGLc57se5u8E2hhgwOvy9EuQkQCDOM?=
 =?us-ascii?Q?PmRXsmjBP0sm+jTE+iB5wO953Hea/sTDKuJW46fqTfmMq+3eP1JFVjUVeSsI?=
 =?us-ascii?Q?pYYLLJUjJ8KOs02EzZIHfJLWRTEZ0SezJvfdHznPzl0xJ8ExWuQWzyx85jGt?=
 =?us-ascii?Q?j5GEEZmAFOt2mQD6qoZtZFSIGreI1NeymG1fLEC4XJaDE4QJm9j1dTINiuBr?=
 =?us-ascii?Q?N9bgVrZ+VDT548kTuM8rK5btMRDTtc4J/w1jCBzLaYZ5McUW6WjE4DcWLPti?=
 =?us-ascii?Q?8B4KLiFfZhGgYk8T2c78kcneM8jT4UgHZmLLmVqi7dhW8Fh3i97MC4CkdtHi?=
 =?us-ascii?Q?2gxOSjkOVXZFKj+Ilky18mqmoxht9vzcP/lVioVk09ZZN4FuTsWZTVttRO6E?=
 =?us-ascii?Q?aRsbu1cp5UbAQZZ11atZuM9DKwH3Z7bDFCEUiHN9XR0IAEZqO3pd34YLFcKY?=
 =?us-ascii?Q?Gx7ujua0krRDqKZz11v7cUiHUr19lm5o8af5/4NXMVeoSI+P8xrxHe/Gn81X?=
 =?us-ascii?Q?c+FaPDlENQ45jMe9C+PRcmA8JEscRnijFrmfTbN3o/EfPDl4BJa0CKSDLr4l?=
 =?us-ascii?Q?XeqjpMaYYQzx8fELpWsKOfQI27bslNgE0WUkISvS0augTj7pvozNU2i278Pr?=
 =?us-ascii?Q?m1R/MX+krCvYgHCTKOJNWaG/2cnvV3uoimzW3u1vNmZJLo76aEd8qvj+J9ca?=
 =?us-ascii?Q?B6UkWM9MfbD1999KcwgJDL5cGw72d5cEneiNaEcKKkj+hBhd/reoLxZjlrXR?=
 =?us-ascii?Q?KicLEHqhjjFLzX0LNv6anx/HIk2zHfUxdbgN/iqknX211BKajQ1bQqvPk27D?=
 =?us-ascii?Q?PrJvvYbzVUH5Xp4ef2hu+U+YR0WoCooxJXbukI69/6tb4/cbuKq4ydErSR9U?=
 =?us-ascii?Q?4gwMdrVtrQt+odq9NSNcCIrweGQidCM5DNzTdUz6IplOR+QZCvlkBMnjO3xM?=
 =?us-ascii?Q?mHiHi7BrvA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ad797a-f882-48d8-e36c-08de7f06cf88
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:36.2819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0rWYnqhV+BUiYeILDeaUMoS6AaGOHkdnoLfiJhpf/0/q9o02U5T1Klxdj7d/q1+O2d7K31FFQENU58NFhkWZ/w==
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
X-Rspamd-Queue-Id: C2B22259E8D
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Add foundational types for GPU memory management. These types are used
throughout the nova memory management subsystem for page table
operations, address translation, and memory allocation.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs | 160 ++++++++++++++++++++++++++++++++++++
 1 file changed, 160 insertions(+)

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 7a5dd4220c67..b2cb245b38b7 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -2,4 +2,164 @@
 
 //! Memory management subsystems for nova-core.
 
+#![expect(dead_code)]
+
 pub(crate) mod pramin;
+
+use kernel::sizes::SZ_4K;
+
+use crate::num::u64_as_usize;
+
+/// Page size in bytes (4 KiB).
+pub(crate) const PAGE_SIZE: usize = SZ_4K;
+
+bitfield! {
+    pub(crate) struct VramAddress(u64), "Physical VRAM address in GPU video memory" {
+        11:0    offset          as u64, "Offset within 4KB page";
+        63:12   frame_number    as u64 => Pfn, "Physical frame number";
+    }
+}
+
+impl VramAddress {
+    /// Create a new VRAM address from a raw value.
+    pub(crate) const fn new(addr: u64) -> Self {
+        Self(addr)
+    }
+
+    /// Get the raw address value as `usize` (useful for MMIO offsets).
+    pub(crate) const fn raw(&self) -> usize {
+        u64_as_usize(self.0)
+    }
+
+    /// Get the raw address value as `u64`.
+    pub(crate) const fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+impl PartialEq for VramAddress {
+    fn eq(&self, other: &Self) -> bool {
+        self.0 == other.0
+    }
+}
+
+impl Eq for VramAddress {}
+
+impl PartialOrd for VramAddress {
+    fn partial_cmp(&self, other: &Self) -> Option<core::cmp::Ordering> {
+        Some(self.cmp(other))
+    }
+}
+
+impl Ord for VramAddress {
+    fn cmp(&self, other: &Self) -> core::cmp::Ordering {
+        self.0.cmp(&other.0)
+    }
+}
+
+impl From<Pfn> for VramAddress {
+    fn from(pfn: Pfn) -> Self {
+        Self::default().set_frame_number(pfn)
+    }
+}
+
+// GPU virtual address.
+bitfield! {
+    pub(crate) struct VirtualAddress(u64), "Virtual address in GPU address space" {
+        11:0    offset          as u64, "Offset within 4KB page";
+        63:12   frame_number    as u64 => Vfn, "Virtual frame number";
+    }
+}
+
+impl VirtualAddress {
+    /// Create a new virtual address from a raw value.
+    #[expect(dead_code)]
+    pub(crate) const fn new(addr: u64) -> Self {
+        Self(addr)
+    }
+
+    /// Get the raw address value as `u64`.
+    pub(crate) const fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+impl From<Vfn> for VirtualAddress {
+    fn from(vfn: Vfn) -> Self {
+        Self::default().set_frame_number(vfn)
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
-- 
2.34.1

