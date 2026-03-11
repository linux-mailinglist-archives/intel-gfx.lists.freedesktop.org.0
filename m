Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDYbFSO6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00387259F7F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2424610E7DA;
	Wed, 11 Mar 2026 00:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="oh6wwh6O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011055.outbound.protection.outlook.com
 [40.93.194.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120A610E801;
 Wed, 11 Mar 2026 00:41:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=atzHcpjfkVXqouRu2gLXy9hI1nInJljR+Ii3A5+vISQrRkg8mTHEe8T7tXtDwkX0JENFdvJD3v2P7l6tB2HLdZ+M81XM1CmMU5cJwSFt/u3j3Q85K9mUGHHwIuFxOA3TABvR+qZI1qyljLNd0SMtXUfw00ffgXOHZNPioKwO0yqq3+VXQXYw2lJCMIPC9hSZjeplbFtJ4r2o2IxB3isXC5+UPFPMlymvUt99RRo8ke/lpmmaPrGZ95k4gNDrPUlvrcZZfIgpo6h5wHU73ox9mk8IpFP+lI+IovAGBgfqyKeyfJRZJPIChkaXVl96oWjdL+TZc15Ksm+dzScMCQClZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7D9QwBSigzdTXmi9ToGr7HTwvx7NgPULr/cTPH3BtU=;
 b=s8P+V3VDxMhaqy189ZBjip1BvT6qDYfZA2jkIDvOCrfLEM6DrRHHznFJ/NHbjPeXLG0fqQrMbaxxGb8ARrz2umnOddPhd6CfFrp5dkfRnYnl3cQRbjU01S3heA8aEQkr16Yxi3ELzFYG4b3RbkgqBORQUEenpKH5tQbSJ5E2kXGeCuJE/dCsRp9FLDb77TnQQxBGKQqW/GmX4mw/IpdV9uDtktTM+PFu/YrOoFqIzxFPe9jOMkJVmWkGnHooEGzMb3Ms6qcDFP9blOFIcWWEBadrDUpDYxsdVaiPRDFCdZW4FrqGa+OVFyMu5v0IfCzpcWRnx+wwbuDZpbc8OUjHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7D9QwBSigzdTXmi9ToGr7HTwvx7NgPULr/cTPH3BtU=;
 b=oh6wwh6OTYrHRQw7mLfTytaLKAVaA1KcouDl9LjK1RpmAaDShBnASxbT/ZTfQ5QdwNscQkRWHcJ0Sz4DENI2HR7++ZKBobcwtYCV/S04F6g1pNF59CfC4+xmqcoAaNvarKMITVcJNtaNQIq5os3304jN4EnZwZfpt6wqHZb6LTmXcXfGKp4ogFE1JXU4oUlNCUAlmG0VvbDTLTIBoriNkCLHOfMZZmbTKt1x1LQOteHM4avykT5MelSy6xMQVXEnhIbo2aXAmUQmyEuF+l8ywM+vA1ny/x6dnBX9zSxlTOYJfPFnP60cSWHOGJjfw6qlpMvoEhx6GQEubNGdNcWF0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:55 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:55 +0000
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
Subject: [PATCH v9 17/23] gpu: nova-core: mm: Add virtual address range
 tracking to VMM
Date: Tue, 10 Mar 2026 20:40:02 -0400
Message-Id: <20260311004008.2208806-18-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR14CA0003.namprd14.prod.outlook.com
 (2603:10b6:208:23e::8) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 5008e937-5886-4566-3eb4-08de7f06da8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: cPNnBup+xFV4ndIvJ7oM+SCV7viRpwwundRlMJ3OEXbIVHXF4inuH11SsmNtJSgeartpbs/xK3ULF4qf6UORwkZpLtZW4kb5ZZWo+gebPazjrAK3xnP1vl4e7Y4UkB6ONTZPmokHS6NoiKH2VaoMxPyF6nBr/x7ZFCJyRm98lcdslC19eC0myWbVVj88rZXt22JGlo4vrgK+orMnuhcGNKqcBKCp9/EkB0yJKQCTxH4GUaCFl7qIFlVkp09pCAPgzFrnuFSjO8BVBUvxlIgOvqRIDJC/W40p2QUU4XAoKb7+7Pk6ljVFUWGHJ9FK/AGObb4zxGKfN8v0O6EeznUgFOA7d9e7c+XjDFUdimOe05MkpKPDCwOd37pRFwfFv3z5egxIpft2U5lzwcHzLjsCmbPKJFv6KIpgBEy5FLxNu8AKIYwoBxea9lka0IkSCL7gwnWS/oYT2ZQrgzEBeZ/YTwY0zvOoqUPVcOP1mNbVTnxMxPESeFdvS8dntC6Kqt6D8tOPYyGopBPN0s4kaUIMCZq/2PnZoPXnyNbLtHUHt0UBx1BVdC1e1xEPjxnQiNjonPHqMujE/S4JslDtDlnvIzazYlDIeaEzcz6iqdfl0wb77xTMH+WxF/qIdtcjc+PrbCt6o6KWLhS2+bLUQ70lRgMNbiaQghP3r9ZFLux1u9kz/H3K683EuGdiRLFXFf1RwNA46B/xnKpvqg1aMzl1hO8CzQis2f5zun4Jq9bPEdA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9pyXArsBwqGMN+D97wJs4u6HZ6QzOTlP8LOePrdxB3O5RCGd995f537n+h7F?=
 =?us-ascii?Q?HrDz9S5J6MMOK+gvNPMXiK2aVxxZ9af2UCDCC2/BH7ppRP64LMasmMV/JKoi?=
 =?us-ascii?Q?a8HNx+xwKC92I/f14io2Bs/ABKudHFynxiNsSoFm7GMhZmfP49EGSIrJv0PQ?=
 =?us-ascii?Q?FIwbFeD/5fx6SqLcQoxDGTr+AWAdDtE/YFNFuLrbDT9c32C3RKNAv9s05h+/?=
 =?us-ascii?Q?uLn95xeWmMBfw8GeVPmGk8JJdL0COm3Fo9sUIjfcifmJhS0fTxZJr1wXffNv?=
 =?us-ascii?Q?/vjk58WDQ5uCU67wV1+9EssbkLaBVc+lsdX11diEyxVg0KkB6FpVZfO6jh3X?=
 =?us-ascii?Q?3UD3TLBNqU9UdX4vInoS0GxYNaHIPeZlAb2EPtNW4c0GfdqEafgAqBBryWrf?=
 =?us-ascii?Q?hRJBHQSFm5unPW6BAJ9E+afd5pc9nSCZxGV+Crhto7Ps9bDow2VTKFXuW6yV?=
 =?us-ascii?Q?SMuiJtJOEaCb6FxzmH5kNfFPV4CmOd/Ibpb72KOtCxjmCaFUrXabAo3Mi/HC?=
 =?us-ascii?Q?8mldSFy+DLaPV3P4b4Vnf5ZLKc62QbXd7rxG2PGvLhEggDsfhwtbTkXNcVFr?=
 =?us-ascii?Q?JdRzmAiWg7lv7DvFibiKWMmi7wvEZrFNRpWNgI2806HJnq8ipfkfRNV8NGFZ?=
 =?us-ascii?Q?J/YUfeHmSMY+FQcikpEMA8S1yXr+2S57yoWLIOWCHnMa6i53zXegc08Np2nL?=
 =?us-ascii?Q?3Z6bioe+/UkOD+VXmsQynfpsGHa+Nmq4VzJ63IF5HAVcXVp3yziAMWinBRqR?=
 =?us-ascii?Q?/psnBFb6GO9m+XS1r0LN74JepCH/0osTGzFER3+46oFwKSOAd+l5Ktbg23IB?=
 =?us-ascii?Q?ghK2BJ3KK39k6epv7rqbnA6uezrX3+9XZx5Ea7get0QfrEptrkLAAQhjvq71?=
 =?us-ascii?Q?5c6UlXHSjTIzwPLme39CUbFN9G3MOXkIn1TtskUWQMOZFF+qwaD4a+U9dV+r?=
 =?us-ascii?Q?CK0postG31jWd9d4gkMCRxWgSlUfBwns76wjDGmgNnoSsbfm00iBU5vsfFEu?=
 =?us-ascii?Q?iUcSo86vguFzQcr1ISe0MzBmngDAzlVjTpsB8KYaBkzMoC5Udq/oweal+WSa?=
 =?us-ascii?Q?ZfokilQPnQDYshF8ag0PrSP5fnHEyC9aqxjDCAsgX86DxK7CupbAU6ElUdqJ?=
 =?us-ascii?Q?pB2iVhv+FDeRnO2ZfpZSR3pO0U6mzF8L6gKqgD9qrCjg0Qtf4g4290WxrmCz?=
 =?us-ascii?Q?3PfqNvHPixPLNmbCZR6aWgdbS2op721XpWk8eCvr+F7s1PlDkHgvN7mpL4gO?=
 =?us-ascii?Q?+2uC5Mgyz0Fi1jkaTibLOklMviRpeJ6WpXZI+QGQqVaAbZhsNv86UpyIK876?=
 =?us-ascii?Q?tMcX3dDA39VbUkED7OaIeAfayogIfiR9P5/oy57YsbH4WN+Jeilv2NstjUP1?=
 =?us-ascii?Q?FPX2yGkgQJqpAjOJCa9fcjSdzz8RO4PPG2vNw+YQvUJrRcDds5CxlkjOm07y?=
 =?us-ascii?Q?UoYD/uByM/C683zUV4HpfJQDrSQit77pRLOGzlN/qkCNSycSCogOJQFhSZql?=
 =?us-ascii?Q?+t7z59iumDEJV7Ew/Xn5nMFUlW22OU9XO9mlG1WrcRGCC1BT3vUbVIglXk7A?=
 =?us-ascii?Q?igSfOE0meP1lgY8hm5zJ2060D9fdHI0OqYdY6auwaHVj5/ygAcNALK7OxoYS?=
 =?us-ascii?Q?ULqBV1gsI+P3fc/FfeJeP7dpslOR6aFfkq8zM9a6BLel0YxUcMtnI8yS9GgR?=
 =?us-ascii?Q?IoltmyiiwmYRGbFscsFU8qkzHO3XiG9q+AFiKldUxWAVbgSNM35yAU9QCSV4?=
 =?us-ascii?Q?/i0Ha96MgA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5008e937-5886-4566-3eb4-08de7f06da8c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:54.9291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4jOwahHPC3mh4eklt93EBEGQEKdF8hpmGgzL1XVQPyU40QVvtjZQJ6A/GUY/Ja6T+UnTABrX9WHqkskUhN+Sw==
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
X-Rspamd-Queue-Id: 00387259F7F
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

Add virtual address range tracking to the VMM using a buddy allocator.
This enables contiguous virtual address range allocation for mappings.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/vmm.rs | 99 +++++++++++++++++++++++++++++----
 1 file changed, 88 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index f0e6ffbe2b7a..78e614d8829d 100644
--- a/drivers/gpu/nova-core/mm/vmm.rs
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -7,19 +7,35 @@
 //! and handles TLB flushing after modifications.
 
 use kernel::{
-    gpu::buddy::AllocatedBlocks,
-    prelude::*, //
+    gpu::buddy::{
+        AllocatedBlocks,
+        GpuBuddy,
+        GpuBuddyAllocFlag,
+        GpuBuddyAllocMode,
+        GpuBuddyParams, //
+    },
+    prelude::*,
+    ptr::Alignment,
+    sizes::SZ_4K, //
 };
 
-use crate::mm::{
-    pagetable::{
-        walk::{PtWalk, WalkResult},
-        MmuVersion, //
+use core::ops::Range;
+
+use crate::{
+    mm::{
+        pagetable::{
+            walk::{PtWalk, WalkResult},
+            MmuVersion, //
+        },
+        GpuMm,
+        Pfn,
+        Vfn,
+        VramAddress,
+        PAGE_SIZE, //
+    },
+    num::{
+        IntoSafeCast, //
     },
-    GpuMm,
-    Pfn,
-    Vfn,
-    VramAddress, //
 };
 
 /// Virtual Memory Manager for a GPU address space.
@@ -32,23 +48,84 @@ pub(crate) struct Vmm {
     pub(crate) mmu_version: MmuVersion,
     /// Page table allocations required for mappings.
     page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
+    /// Buddy allocator for virtual address range tracking.
+    virt_buddy: GpuBuddy,
 }
 
 impl Vmm {
     /// Create a new [`Vmm`] for the given Page Directory Base address.
-    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Result<Self> {
+    ///
+    /// The [`Vmm`] will manage a virtual address space of `va_size` bytes.
+    pub(crate) fn new(
+        pdb_addr: VramAddress,
+        mmu_version: MmuVersion,
+        va_size: u64,
+    ) -> Result<Self> {
         // Only MMU v2 is supported for now.
         if mmu_version != MmuVersion::V2 {
             return Err(ENOTSUPP);
         }
 
+        let virt_buddy = GpuBuddy::new(GpuBuddyParams {
+            base_offset: 0,
+            physical_memory_size: va_size,
+            chunk_size: SZ_4K,
+        })?;
+
         Ok(Self {
             pdb_addr,
             mmu_version,
             page_table_allocs: KVec::new(),
+            virt_buddy,
         })
     }
 
+    /// Allocate a contiguous virtual frame number range.
+    ///
+    /// # Arguments
+    ///
+    /// - `num_pages`: Number of pages to allocate.
+    /// - `va_range`: `None` = allocate anywhere, `Some(range)` = constrain allocation to the given
+    ///   range.
+    pub(crate) fn alloc_vfn_range(
+        &self,
+        num_pages: usize,
+        va_range: Option<Range<u64>>,
+    ) -> Result<(Vfn, Pin<KBox<AllocatedBlocks>>)> {
+        let size = num_pages.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+
+        let mode = match va_range {
+            Some(r) => {
+                let range_size = r.end.checked_sub(r.start).ok_or(EOVERFLOW)?;
+                if range_size != size.into_safe_cast() {
+                    return Err(EINVAL);
+                }
+                GpuBuddyAllocMode::Range {
+                    start: r.start,
+                    end: r.end,
+                }
+            }
+            None => GpuBuddyAllocMode::Simple,
+        };
+
+        let alloc = KBox::pin_init(
+            self.virt_buddy.alloc_blocks(
+                mode,
+                size,
+                Alignment::new::<SZ_4K>(),
+                GpuBuddyAllocFlag::Contiguous,
+            ),
+            GFP_KERNEL,
+        )?;
+
+        // Get the starting offset of the first block (only block as range is contiguous).
+        let offset = alloc.iter().next().ok_or(ENOMEM)?.offset();
+        let page_size: u64 = PAGE_SIZE.into_safe_cast();
+        let vfn = Vfn::new(offset / page_size);
+
+        Ok((vfn, alloc))
+    }
+
     /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
     pub(crate) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
         let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
-- 
2.34.1

