Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE74Lvg6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:22:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52621371A74
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9EC10EC03;
	Tue, 31 Mar 2026 21:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Vpecmf2+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012014.outbound.protection.outlook.com [52.101.48.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE6310EBFB;
 Tue, 31 Mar 2026 21:21:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYOB8gkZZqWiieNTulZ3kusZr8khR2HNfKkP33RJsAI7okx7LYvITbvevo9XjZujsJqPg9hu/Os42Zv6d1GxMb6DWFtmmVJ6Fcgw+FBd57WepJjgQpSPVaWrQ+crVa2qN2gUhw/GdmKmFKcXNC2MeYpqkPy665JsC3LmIP3EWKp9rBEWyKjKSb1amhPiJ96EBYR+1FYAphHg2JkiKmgh4W/2gXwvQVtH7B6vWplDXpWCw3Y7aZcOhvPZf+Dj3x2srtOx8HrNJ/SBSxbeUGp3JI1eD/9RhvzPU0p/1lQHCeyjpYM324zdGy8wIYycPvUyxW1j8hXx7VvKDadlsFHuSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3b4E6YK4Fl3oVUOlZggSG2msp4Jd3eMAx+OkaddcqU0=;
 b=QYQCMqDrBjTclePFx9anjdWwMVktogOzl3GP4sDvaIfswX5+r1fA5hy63FNHgo2fub6QRVA77g26C0K8CwyschzsfEopvY7ytMX3YKbTQxMZOxrnX97y2zO0pgLACiWOFHFyliAoHpzvifhBWfgYbEvKyLgokW/U/PPZFTdyhLR2W849Fdxj1Ab8V/bxm7Jtq0YgP6WRBk+5KgQiA7cKGjVkR8Vr/wuehl+u29k8UOpsKwQ3d9W7iUrzRuxn98X/ZN6Hu+2ZJMQanfhjEvHqCdWWnVNvwqfmESD6FZtDlPRHK37yP5BI9L7bHVjhFMnhd5LSKYKLcQP+9QO1cOGLgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3b4E6YK4Fl3oVUOlZggSG2msp4Jd3eMAx+OkaddcqU0=;
 b=Vpecmf2+4dqRCOQtURVpdtOHnUGghXQ6HJW+tUaNPQn/wHuYg8Al7BUumVQ+KjMCwi0bvQD9ig9apJ5eU6B0EhkmLgsWlESMWdRY97OE7S94RqSF++mq3oSQs8DER7LCPleAFZTpGRkvqRGTvsFlsO3KKHkW7Boxhz6l+dlg/i8mwnLXy019xAdulsd8vjT8svi7H9cCgh6ABbACKY0sn6hPlq1Cf6Oc4MMqxW63uO/tebSiigUkT6gxnlrZytnqP0KbJXfwL2Wikctbn6nATfQw19Qgc5jsS9fpjGWaPGYFZiGSmA5LPBYW7XRSz9SA3+u8wA8v5C0OmDiNg+O4UA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:46 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:46 +0000
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
Subject: [PATCH v10 21/21] gpu: nova-core: Use runtime BAR1 size instead of
 hardcoded 256MB
Date: Tue, 31 Mar 2026 17:20:48 -0400
Message-Id: <20260331212048.2229260-22-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR18CA0002.namprd18.prod.outlook.com
 (2603:10b6:208:23c::7) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ddc318c-fac6-45d4-c1d1-08de8f6b8394
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: jiaPLOQCxcYbf67t0pLYUQ55wje9SnfpqK9Qdh4sCQt1cL+qTx0K/DXj7KrIXXieQzCaqiAqVeB2TYhQlWeTex+hLWQJ3oyIYzOQ7IJPIrJC9PNG0RFLZKeXxMCeg43ox/K7RN7tIv2SUcTCDSrmH59e84i3KJFFTUe5HuZMc75EymMBNv39TOqa0KC2Yfi2e0Lhnlk37Y3YbWbYD1feUnZCJly0DF/OzjhQr5niEJnD1WRbcALtYZAvcBce8PuzQlVqfVbTX9SiFT2sos8PxGfK0kLRL1HGX9OcRxw2XV9QAJQkCjj2+XENr+aWYcO+DISmkL6h2BJ6Kxq/46i6PlLehCknLKHxms4T9kZT4VZNOy2OiI46kiPz7szozj41LyeEs2t35zEa2UxxPTTWz5J3y/vtIcJamTk7zsDc9ruZ1642DIFWIvXY45usFdh2xSOecJy9kBNbHbv9yTfeLoxPnhnukE+Ax/79BH7aDInLKIrzRztlKf5ECAbkmrn9a3RIF6VQZykoB9JMZ7ec6gg6g+jPrutnOV2J3i8IFCgFSXoYUm9awb5u0tPmyo4cq8BH0ImIY+BYzcj8BnN6CRf0esye56p4wwPy3JX5yGgeUPNeY4oyzZcd5fmkU3eNC2gWA4SoMGxVvSrBZOQ9xm0K85dxMCXo1MQkzg/ssNaXOn05Ff3fIKImVUPQcILG5k3Up+q1bI3x/c2DOeiIfBnPz63OFyU4P3QdGMGAwoU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BjA5aB6DVdtTrHuBl9AA9ZJjmn2qZ8iFK/r4mjjZ6LjZ0v3VUeJA4x8VSg1b?=
 =?us-ascii?Q?HA6V2W5RlOlNwMMs5ajvat0G7pDr1mjzqBxBj1oc0vbOPEWsKMvPZFSkLjU4?=
 =?us-ascii?Q?7nSf1Qg6IJbgWT2eBRklbvI7F9ZVjuK3upILFxiDPXz68I7sVuKAcNdtkoBU?=
 =?us-ascii?Q?OTPY/w6Mn2zn/4Xg+EXgdB8pwYUj/LmdlPCiZTusMqbQxzOLsnySQbwloeXO?=
 =?us-ascii?Q?Lq2hINtOLh3jlObK77SrtDSZtlJEIn+gm/RtSdDiq6JQFP7cuXvvCIe4wXxg?=
 =?us-ascii?Q?4621C3G88s2quB5uY4rkltJ55Ly+uNeMVX2cmOEv12Swq1DmIIQgBfZR8qzL?=
 =?us-ascii?Q?A1KYaPvmb3pcKGuSI0dz9iDU7ua5rWgHBmJLA7qxQ23zoIZ1RTbT2+gD3b6x?=
 =?us-ascii?Q?D04FygeT8cgEWR/HZ1NM2rwG9eLqbSDQbr5alimwLkQHOXUiSEr9Ys3m/D8f?=
 =?us-ascii?Q?UoWg2R2OY38987U9+LizoOjuTY0fFXAl+EwCE+obrcZu9XZc73vV7ixP3V1q?=
 =?us-ascii?Q?qF4aJYvh/l+cuaQzuWq6ItVrLQ9glWFq2qsR5q/KzPY1fhT3P71tduuLcYCm?=
 =?us-ascii?Q?5yqHL8E9cnq9isbwmSJIxLuGSNuUurC82QipHNHURh+kX3M4gGSuNZWG5PTT?=
 =?us-ascii?Q?9tzbASxYDm8mR4aRYcG4yj+TURhX2Pdc8zeUt5Zn/+AfWcXvi6Mgivb1+9Sz?=
 =?us-ascii?Q?mirbuxfGoLVjfhwbbAYw3CdwoRLO4eZTmQrDo0SwPpo7qJ+KrL4aIop65qcP?=
 =?us-ascii?Q?6pTzSMnp2mSo+baR2ZmXcgbCsYToIsnGWxxyHfgxFYHsxTMcY55jGjhngm1n?=
 =?us-ascii?Q?Bc954cqvqsnXsokolzKl9v7ZJ4exVnAhp934pjHTzPIt/2xCqirp11LnVntK?=
 =?us-ascii?Q?WZpi56q0BjKeIuwb6bfNnVFAwpq8l/+8jWnCGpm/x6j4Q8G40fV+y0WlDybL?=
 =?us-ascii?Q?GEA9oL0B2c/dWapMeis8IE8DZvwsPkGJa9KQJUnbtBec22jA/RmO+pfw2QzV?=
 =?us-ascii?Q?P8lgGXrYuqTkKITeblfV9ArqBCODlau4TIecNUrWU2YTuuWgd/DR2n2b6DnB?=
 =?us-ascii?Q?FHJj4AIoAhWDpeB6f5w5j7wp6f54TyqS+/El038233tib1T9sljDnpH8GmFd?=
 =?us-ascii?Q?+hOc/wbbfM7o83YkFSQVE6Mw23Gj0fA5wfwJxo2NOuefTK0h0FqE9ssp+ong?=
 =?us-ascii?Q?rloOoA37ydtOqyFJwBzpa7hwDVdDxjaK7JzajRMGIamYP/3fUhd9utXAqJt0?=
 =?us-ascii?Q?VgA4K7ryPM8E5GBA+VkJYcdL2WWdWGAFd2Y0Y7cmVLCRYGuG1qTG04zKcbGB?=
 =?us-ascii?Q?L75Ihjt4bSWTfvIyLtvGoMEpGgyO3dmUI1K6KtiZ5fAE//lScD4+hPy+EGGj?=
 =?us-ascii?Q?nP+F2CkabPx4+k7NWmRybaA1f2LvIp3PIbIZan7FjSubm0sxzn9FZpW3Ge7u?=
 =?us-ascii?Q?K1QFKVD3NMWyaLo2Kinlzt0L6jTO2Qim0gnvklcMFr9Xe4FBFfeAERbhqy7I?=
 =?us-ascii?Q?T234FzHoX/o12w2GPIP80c5B92w2iHiw6a8M72tJdIv3R64yrn5cONRLtQC0?=
 =?us-ascii?Q?Z/zkCSV07PT7vij6FadcRQVH6tdnbBlvr0XDQPiEnJMW/I3TuuaLK//wn0Zs?=
 =?us-ascii?Q?pIRDJHJDAvhqADkdHYwp76o6scSjoS3ik1GYUVMHpBOl5QJD2dNpM5Kdjq7l?=
 =?us-ascii?Q?70Ncq44qQ5hQn/YB0aU+T0RsOq088KivePPZwOwfYit2b2HNCKSHIu/MHbZi?=
 =?us-ascii?Q?B80D3GaEoA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ddc318c-fac6-45d4-c1d1-08de8f6b8394
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:46.6730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ajAiiW9XyyDsnqlue18QCV6kQI7aJqklagaJNGjWuWPOKLmTHJJ56YjKJPTjgysfpxLjzLb8upP8FnNa0wA9Mg==
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
X-Rspamd-Queue-Id: 52621371A74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Zhi Wang <zhiw@nvidia.com>

Remove the hardcoded BAR1_SIZE = SZ_256M constant. On GPUs like L40 the
BAR1 aperture is larger than 256MB; using a hardcoded size prevents large
BAR1 from working and mapping it would fail.

Signed-off-by: Zhi Wang <zhiw@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs | 8 ++------
 drivers/gpu/nova-core/gpu.rs    | 7 +------
 2 files changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index b1aafaff0cee..6f95f8672158 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -13,10 +13,7 @@
         Vendor, //
     },
     prelude::*,
-    sizes::{
-        SZ_16M,
-        SZ_256M, //
-    },
+    sizes::SZ_16M,
     sync::{
         atomic::{
             Atomic,
@@ -40,7 +37,6 @@ pub(crate) struct NovaCore {
 }
 
 const BAR0_SIZE: usize = SZ_16M;
-pub(crate) const BAR1_SIZE: usize = SZ_256M;
 
 // For now we only support Ampere which can use up to 47-bit DMA addresses.
 //
@@ -51,7 +47,7 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
-pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
+pub(crate) type Bar1 = pci::Bar;
 
 kernel::pci_device_table!(
     PCI_TABLE,
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 8206ec015b26..ba6f1f6f0485 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -353,16 +353,11 @@ pub(crate) fn run_selftests(
 
     #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
     fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
-        use crate::driver::BAR1_SIZE;
-
         // PRAMIN aperture self-tests.
         crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin(), self.spec.chipset)?;
 
         // BAR1 self-tests.
-        let bar1 = Arc::pin_init(
-            pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
-            GFP_KERNEL,
-        )?;
+        let bar1 = Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1"), GFP_KERNEL)?;
         let bar1_access = bar1.access(pdev.as_ref())?;
 
         crate::mm::bar_user::run_self_test(
-- 
2.34.1

