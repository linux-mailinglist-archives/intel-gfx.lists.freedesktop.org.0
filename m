Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOLRLtQ6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF37371962
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB0210EB83;
	Tue, 31 Mar 2026 21:21:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="XjyIUeRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010016.outbound.protection.outlook.com [52.101.56.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1E910EB83;
 Tue, 31 Mar 2026 21:21:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UT1z/Pt4hl3MLsgblxJWLxj4Qvail3kT/x8wpMT8Itco5DeWdE7O0LzihQXEYok8ne2sZ3XHAxyWFaFHNTkrq3dFmGqnI4p2HLYPrWaiGRbu2m69TlZNEFRaahfefdAN5c4Ly1VedEYESQXKUWdEIvhnVvcxQ3P4p2i2wTgzqPppVB+aLK3Wegc51I0tU60f6dDVBM0lP5p3CYreaTDuG1qwDaokMUzNy0wa19F4imzRoz4ahsyc8caQ8BvWkY8Wq78car5z3B49QBXMjw5bKCUldaZWrXFD4oiL/bHerPJBah+DGafI0vWkawBLoyt7NIiDN1MPNR9kBPwsIEj96A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=srN2KlMHr4c8Z+h8B5MRWKinNj3/cgxOXYhBZV3419Y=;
 b=IfJp1IixOwET1ESxa0FPDI54ejaHkjaweDiO7xJLd+OQmQA8mqmQV06dp1Nh1jjTuMYMSkpXKhmDPcTFUy2TwqDRUOh8e6LIQTaBpp9xxeSkTbwfbqTlSSe5opYGYYTvAGXTe+D/n2K+muxi1y0g3IWSeVa+WasBFYgthBRVh0tNhn2/pHRORaBYnXNJ1jWIwpWVkbanaBZK4FFMhYW5jc6gZbHEQpdaUmGtlMmDXnNABGEG56G6hjylS9Wx92DOsZ/JAU0EwdG34lt+6e3DZu8dLbKwMB8y21Ayz4xO5cCnm+pMqffIjHmVs3U3j2JqN1HkiYldlnKehDWyadeJ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=srN2KlMHr4c8Z+h8B5MRWKinNj3/cgxOXYhBZV3419Y=;
 b=XjyIUeRm+9zt6kvzHyywlwXyA6wgQVZmYRljSi512bW7W5P3TYO8sC1q2jE2yTJhtztGtS/XzmofevGGhKLH+R2Re13EoD0XPpZRgfj0zqN4/8baCkT5Ej+NY1w5EvhsHO2998eMDyGa+hKl4NB5eYNNGOtA/sElDEoSCKedP7U/7qu+nzzB2NgUXbbk0Ma1SrMxFkYHROO47knWofBC3IvFiNN/hoZleCzUu+MyrEBFdQYNyMCcL5kczRrpfIM3HaG8OuT1qLdLUQWHfcktCSi9moarHldv7eXHl/z4y5/au/Opu/H7rA0ynnEfvyfoxnWr3sacwg87ACovnnMAMw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:15 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:14 +0000
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
Subject: [PATCH v10 06/21] gpu: nova-core: mm: Add common memory management
 types
Date: Tue, 31 Mar 2026 17:20:33 -0400
Message-Id: <20260331212048.2229260-7-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::17) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: bdce8bf8-404d-4069-ec59-08de8f6b70a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: Kay+aqOsHy4ZX4Nh2JEBLQ9mR0f8gYCH7AqXfmMthjMANs6wjyQztJd9BhjGAZUwPKtTgGWrgTjDEkUPCXTLWJQZQ9MCYn/aGIxVQVRklHOBJuVfr3X5aIBl3EI8BAQ/ih3wd6a5vuLlsM8bJlV11oG4k/lsfXd3RGVhHPAolWlFpABHH47CCZjTynrIhBQlT4gslO8XjeCBastEUJGCrJnzHf3/7wJ/n+6YKmm4fal8rbCDXuSTojuA8u2LDxPn5tPTEDqSHsdAbX/RlSn/ltbT8EeCQcEqwoAMW1QEJrSi8ChvhstU2Rx8Qqf8YrWbJEZv6nuniCqvvFcq3XCHlTk2+uFfJx5kK9wQXmUYb3xTy4MbDm4LPGdAx7ffTdGNGSPzQEBQblhGC9rzorv0/idCEnwAAftOWVPS7/iaqCKZUEJ/1FbCzEXDlYuQJIZaweMAx25xEibjdjDPQPW/+8GmpF7WXrLRn7ItsgBHTFakmba3qbDnrsfR2wY1ok7xAUYibADuqj/opCqyW72j3bSHJfX91IIavFAVb3L7wDw3Mfx35VUIK58qfDRMWtbixXNTvfcTogvWcAmIcHR4nemumx2S5IttcV/wB678RGVz7A+DPNoRXP5rdAVsSJRrV8IbKG7yIORnRfRCG66/o2QSHz6X1lm+rEMoih+ze9oP8+fyBViZdHw2ExQ9WgLOQHdLx4LJTcrzNgz2i5wgAAa3sVxbyF6omAPOeXKjaSE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mQb5Z3c8DIJHYY95YgDd8d6FGCruoqiTivbIKxn8FkKD9P4oWXY/pbEbrl/r?=
 =?us-ascii?Q?dblvPIlL7CNjC36Zw9rQpvbu5GPQET+TPpoCHSIPsISO9+ck7kmH4xH6cOmn?=
 =?us-ascii?Q?0jkPsut4bYX03dokKPIUSwgdpO+sE1C594v1dBgL5de1ERfF6voZJPeUceHG?=
 =?us-ascii?Q?gCNdLWwI0rdG66Cz4IcoQPnDciWwwRSfAbCGeXYrDIdvnw+NXTn+5zoL4C0b?=
 =?us-ascii?Q?0dK0v4cMnvPPvNu37le/wDDco2agjetXLehuFgYYta4vhVFBY/jorxbiuUp2?=
 =?us-ascii?Q?5fGUNLIrkYKq04j99H6DUb7u7ICZL47fB+s0i5Miwv3kW8AyMELlXJvpL8ef?=
 =?us-ascii?Q?tS3XnfKz3tCQNh27nmgLqDcDAwB941GdTUxHbcGaEI0cPDn4uIponhJUJ8Od?=
 =?us-ascii?Q?V9Ed1E0VKD5UyXzUwBnA3NbRgMSKoSrhmjyww1XrxZjKXaI24QpMjjIDVtU3?=
 =?us-ascii?Q?Nm24/uAasKozALXn0Fji6LpWQcpPbx4A75P4rEABBd/gOzT+cJmJrW8nbQ0L?=
 =?us-ascii?Q?jFEH2LesFjgE1+21rZWMzivIa9UvNbTfJ+FgqJXaJWEtY+I/nOkdv0dDDZ70?=
 =?us-ascii?Q?XQYwHcOq3va/ijPmWvw4STvK7KLju7W3pc+A7JT52kZq78y+p4a7A3PnqBa8?=
 =?us-ascii?Q?x65QztbQM53mV93m9Al7IDp2jcNqnids9PGvJBjRoaxKxtnqnpX1e6KlrU5H?=
 =?us-ascii?Q?ooAdffiwRxFIrRljuLAd7ogPj6mWgUX7EMGc1RxeTc1Gq7NNYBA0hbnY9kvG?=
 =?us-ascii?Q?fN4noIHsVZ68l+iZGmqqsHIadMO3I/NGee0jcMprOlWMdTZaxaHQDmeieRgH?=
 =?us-ascii?Q?Y5L48NQax0tQ4RbUr4YZIP8eqhHOMqNV07V5LIDRE88ezxXr6/tYOCT3mSzq?=
 =?us-ascii?Q?kITwdtfAdUXviDm6jiuDzRgZh/0W7pPsrfwh17Ijgsc6wIXv8LA85hfbjKcx?=
 =?us-ascii?Q?RZR954uj/CENlFzmViFGVPtItlAXBWxQsiD0curoBFKYi+3I25hCqUbtWFXs?=
 =?us-ascii?Q?2GVfv6euLgyNQa8c+/IIzjT6vGk4c7tUmdKbyUXCzj2Ujrj3WSscca4qkWDp?=
 =?us-ascii?Q?S5/qFX1dVJRXFM7Cj8Xmcj6THUTbh5IqL+t1ctqTxoWbHKHrt39qBcmlzbaZ?=
 =?us-ascii?Q?dhIkxikmjUcT4R0SY36Za9L7CESZAhvBf9Jl0ZUNA9u1oegEn+iqyohKLLIE?=
 =?us-ascii?Q?HTbROj/p9PF4YAUMlr8HusamO0cJtlPMGo59fwxm2SzeEHcXacAM6Gef7HqL?=
 =?us-ascii?Q?lfYtTpPs6XqzVVFM75gD5suY64LsOXHpEnQo2l5cffvgmTG/FBshEBDo45sI?=
 =?us-ascii?Q?FJ46tP0+pqi3Blj3diuPDYtDKTlJ2DxdG5AnUlI9czodeJROv0DquDYKMUVT?=
 =?us-ascii?Q?sRqrZE8jlpiTSnprwBMisj+LGVbhzOsl4oHpEd+dZ4TaZrn39uIA0xI4/3q/?=
 =?us-ascii?Q?bWXCiabAdIFrpUACLPJ5KxTzodJrYIm8fO657nlV6WR+Auyu3fx6jr856AGK?=
 =?us-ascii?Q?Q2jYVl15c7L2Zg9I3ugodJdnnhYhtIQ06Rsebxsf/AgIPQwKwg92JdKicpOX?=
 =?us-ascii?Q?MqJUhh3AFCXpYgPGqaxKbTFoINCYo9IKWP8F3Ac/Pb+0iyJQ1nz3rOPGEvaC?=
 =?us-ascii?Q?PSbLClpjXkIbR+84LFJJL1wWvqZCVcVkuzw4RhnlinWJPqr8TBEp1tVP1dHo?=
 =?us-ascii?Q?MkDPUODKPvkeqXRC6eEwKzIpcis1y7ZhYGPV9hrJ14nGYzGjR4gjLZEAx5Hc?=
 =?us-ascii?Q?VrhuiH2Wng=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdce8bf8-404d-4069-ec59-08de8f6b70a1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:14.8884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i3SlVF5fcyLHZvwOMsuPcpmaP8p2bpUmW10Ngc94ehOXhWzqSJY4YwwatJYbRJ10NF7EOCG/dG8KWBB1qoK7Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5849
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 6AF37371962
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add foundational types for GPU memory management. These types are used
throughout the nova memory management subsystem for page table
operations, address translation, and memory allocation.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs | 159 ++++++++++++++++++++++++++++++++++++
 1 file changed, 159 insertions(+)

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 7a5dd4220c67..8f3089a5fa88 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -2,4 +2,163 @@
 
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

