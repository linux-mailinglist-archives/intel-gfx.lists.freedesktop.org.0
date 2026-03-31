Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPv/EuU6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BB83719F5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543DD10EBD7;
	Tue, 31 Mar 2026 21:21:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="OmPAQORg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012049.outbound.protection.outlook.com
 [40.107.200.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57DFF10EBC6;
 Tue, 31 Mar 2026 21:21:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xfOYX7/zWcZG3PurWAN4dgHDhaBqY8dXWIIE3upyIy8ipBQc71iUtF6q/G090HWuCBj94SHXmVEwTBENiZ8nf/FKYjhNH5lX5bP01aNWALVvu4oSXhpI5XKc7I7GpD7eLCBOo4+gQNCxMwzeyQ8fLnW5NKcVbiM+CHdVEcG83vuU7ya7QQNwvsW+JBjkbSlDRbiQj/zOrrKSFpJiGmNgeNvVFmjA9rkGri3aVKTcLcLXHg1acT4zQeBff2RtQslIv3bwHnR/lLFMDvJ9HTOODd2Lgndsr6vRAjL9bJvjChfAczhiRnjD+3YEo3xYeV1kfCq/j/vzt413XtS9ZACVZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oECfr94YvGovxS3KV+cx6fKqUXK4wQ8bykqGwrVa3PU=;
 b=m9XS7NvYivvXKRohpWIKASw1j86QPv0A625OFHkDgNqo7xJF1ug/BKwXnyI/6C6ylGV3vXTf4vrzWoxGufm5dzDiYzS0RzZ95/OdZGMj4u2uXwTjLQZ1FzAeEpWCkCWXdrk2QLOWmbfzZF0CSFIiZgPQFE6lVIUwjZS6JA2xoM6fdrPEl8g25sl02AmzkDj64GW/2ZezDE6vnWXAhrAp/560jrZ+JkOA3OTAY1a7r1vKyE5cS/7geyJEtub9UKVRpisw9S6SBoUInJnJQuUyUS/dlAEmapDV79kd24tJMTHThl530hvLVRBzY603r1USMY9Tqt+JoVh64mOk5QcUdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oECfr94YvGovxS3KV+cx6fKqUXK4wQ8bykqGwrVa3PU=;
 b=OmPAQORgF3EMraT5cBYVLtftebAR6lUZ6ASYcdJ4qgf6exZiLfqxzxGExhgb2yEOt6BFVkpthk1pkAlXDGhfAFOrzWIkdTjXejWYp1UmFkWG+ruZ6mo0Z3DKLzhTZOFzFT6P5xVHSK7gJkXLumndmAgGJonwwXfoMqH1zgvpbcbBBZM5OheLATI3esz5Y5de5saFXiSfP2Q3QVxflr9zAJ9tuXiqosItrpI+GPBnPrXY4htJM5Tpg6Qmf+vdpPk/H8mZNAyghK/HF+MplIKYEJnjuKgBQTFKgehd+NYx6/20FHGOmIf2e7aWhmNZjA2/OtVS44sGEKGkQ3eZ3wN0VA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:34 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:34 +0000
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
Subject: [PATCH v10 15/21] gpu: nova-core: mm: Add virtual address range
 tracking to VMM
Date: Tue, 31 Mar 2026 17:20:42 -0400
Message-Id: <20260331212048.2229260-16-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0180.namprd13.prod.outlook.com
 (2603:10b6:208:2bd::35) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: e4672c23-62dd-498e-5b0e-08de8f6b7c1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: M0PUF/I15nSI2cdww45wxJcwffxEhpYV3KE5d/SVTjGhrmjwGUMDFswFGcYxQ103ZLFelTRk8ZvFccItQ4jhCILCE9pEJEjlqZ5blzXopHDivBuXUjAKTEFA/N1/pes1zOLYEONeapSvPvxu3qK+IqRL234YHAppwIeNYGbLuFshpUEa8ROKgirX6nPRapf9VqgBjvbuSKa5mqBw3wpEC154i2vA/kieF0088dUWSzlvUBALsQ+ih4R5U7tGhfgnazXnVgeA1ZteC/6mRS/Om95RS/8tM4C5mQmc/44k06sz4vJEoiwWWBRob8GoS6rve7oeJxRAnhrE9xtkKw8qN3Qy1WY4rJHGIQM/7dIkEnOc8fVdYuhErRI+IEYJR3Am0JvAwyDDX/DdrEd7p9Y4YksWcmCcogodPbF7YQXcDAULQwVZQE3kM62AKibyBmK57bB5CYkvLvyikdpqk5+avsZxXdTveBkkC0v8Y8ULIbIKk94q4e0Ds2U43RSIJaWOZO29XpwuO3TjGAtFWMMk4Ik22d7E3AKfSc8magh5hAi2pTgMssxNDiY/SueOuDnyPXkXcDN5dPHnzHYSiB/PPXjOyar9KaXolsli+HzjMKlFvMWrwhix5K2RFqfZRkcLqj1/4EukqlWK4W2fZ9oYOtoG03IjKqgJaSrff6zeSDot98jWX3aYDFr4uTlICt8Cq94cbwH08DVcwvMsJTpcLvJqWM/xazOKBuS64hqgWFU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lsHFSDFeopT3Mn1bJ7WCyWiGoZ40xCNAgzyXmuS/gGdYpVAO+3SE25JBECu0?=
 =?us-ascii?Q?kaJ1McefSXxZ6UXZ+V+i7cLBHFogAEFjNmFd1KWbrPESgA31kQ2Q8Pu2q49S?=
 =?us-ascii?Q?TS6P9g/a3QljTjRaTO2ipP0Q8/rIlTc0FeUbWAmmHWs6wtdAXL/kUux0cf+l?=
 =?us-ascii?Q?xIywodgf9sPeBOad5P+ma3TqkzAMasuPD5NCEQQTsbXS+t3E3O1iVCmQ7/TP?=
 =?us-ascii?Q?ZLA88bHruRxLtPPd3K01v96qP/0FPeOLk1/RrSN0wrajmPRpsSILQMW3u6Bp?=
 =?us-ascii?Q?V6H3v55sEPvxkKty94IG6zTq/j6YrPfYKdrjI1Ia6da5lZ5q5/+dEDM0oebq?=
 =?us-ascii?Q?iY8e2gnbwpc7LH8UkD2r0Ug8oOZf6PKt2DrAO+hajf0OjPPQGpNub7OaA0At?=
 =?us-ascii?Q?1+WDyg9N2five1RDZa8JYevvb2A6Poq8J+SmJwB63N4c4kTdMGlLJx2xFgDU?=
 =?us-ascii?Q?1CSP9VdV2PCXff7MX+Xkz4k6CqL2+WCJ0rjhtiV7hyGrmcSUVUuwlo8nKa9e?=
 =?us-ascii?Q?sFcjdpiIBlr3rxdleYj1AA5jogU9Ebs5ndstlPnKXJh7ta4Z8mBx5mu0IbDI?=
 =?us-ascii?Q?KOTAHvtwQw0+RJtfWH7Gp8cZv5ZWcJrQdMyHs8Jh4ZgTnkEQGBGzhtqRxXll?=
 =?us-ascii?Q?WnLkjzYI9LThTgkG0ybviQMPPVYYcmSsTQhqLSrpjRyBjvbo4/dui5dbYrb6?=
 =?us-ascii?Q?u/i6GsOQDVJEkgU1nq7l4u7wiOw1CSav7Oa8OrkZPEZtTXVv+knaj+3+j95d?=
 =?us-ascii?Q?i+iAX0B+wUlwYbcWIhSmLivcp9Ci5y+sJN25JQnwprwMTYJK0LN86mJ+gHL/?=
 =?us-ascii?Q?ObyoX0UVniEk5TArl6gTTIrLKCOE2nJuZiO/elLM7cVJ9er/3Pk4dxzArfC3?=
 =?us-ascii?Q?bSnbOJUwN4ljJZCwK8SW0JUOlqUkXA/XJzutLbTgtKiErFyOiGetc5Kdow9m?=
 =?us-ascii?Q?V5Wdb6rhfuaV85ZANu2hTVpgD+7hSXvWNsCtHijMdGd992BtL0H0hiZlrHbU?=
 =?us-ascii?Q?0ZocR4ge/S4bnVxmqJLLPy/MDX8RAfj1At+Pcgc9AXsxgXYzuKIR/m6RCMvK?=
 =?us-ascii?Q?a+vVvd06x3EkpBetzP/3ee/NXs3zVJMOjfD9y9Mh92wZ4ab2q/2UssIWFWzG?=
 =?us-ascii?Q?XvNNVqa5V22JTQyPxNnmRN9lOxL05Yrqf/NZSRBBAfJhpwVav6lbOw0QUtkm?=
 =?us-ascii?Q?F2F7LfpLVZas4/2cCzVsBSmfFO9nfeF4ILt5JAdKDysFyVBFyD20iJeOhM0Y?=
 =?us-ascii?Q?GqMRa6AyMvMjx+Dfn/QKgl8ltIKQcajeYYmc1IkWsrfvKgKnNBZnEzL/uCZk?=
 =?us-ascii?Q?eZ7ZeauCiNP94wKr0Ud5MXJOjTjGGDSyl0HGeMSVHS3G1vNsF8dmLeEu5aU1?=
 =?us-ascii?Q?MHgRcKGfgg6fijN18i7Tq9oMJ2l/0+uvotOliwCjV0uettlGzIL7afzUMAkM?=
 =?us-ascii?Q?38h3P8wcrrC6gDVakEnOn6qVaJ3kq5S/J+G8N9BATm24lL6iRf9tKwb17PJi?=
 =?us-ascii?Q?ekqEkElvck/FmWK8jg7NYrS6A4olgtHw4CpZumyMxbFR/LypxFaCxgiYY+Mp?=
 =?us-ascii?Q?/AUZkhQBVhkAbzKtq4UHCLFBBEOt/bHtLa+BSHHa+m2SAihWOUnA+Yx1OE1n?=
 =?us-ascii?Q?q1I9yHGHVhkfv3ygUDV9yfaGW3x0g3y0kz7fOmKRTpU+UiCg5Emo2d6IukoK?=
 =?us-ascii?Q?ix55WwjCEVrX7UXjLy6uP1++BwTIduHCnrnuHjLTC51bq6cHT6/VQk4/yUav?=
 =?us-ascii?Q?rEiom/8QFA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4672c23-62dd-498e-5b0e-08de8f6b7c1f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:34.1726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2YnU9tDt83zjYKK+FcUOTKmx5epIUSuBpLM3bV/9ne1gXg0oMdQwEqJrrfPktnUmOGXBdsW0HA8IO2EQUAfebw==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: F2BB83719F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add virtual address range tracking to the VMM using a buddy allocator.
This enables contiguous virtual address range allocation for mappings.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/vmm.rs | 98 +++++++++++++++++++++++++++++----
 1 file changed, 87 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
index a22d4c506ea6..2a65ffd73b0d 100644
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
@@ -34,23 +50,83 @@ pub(crate) struct Vmm {
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
+            size: va_size,
+            chunk_size: Alignment::new::<SZ_4K>(),
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
+        let size: u64 = (num_pages as u64)
+            .checked_mul(PAGE_SIZE as u64)
+            .ok_or(EOVERFLOW)?;
+
+        let mode = match va_range {
+            Some(r) => {
+                let range_size = r.end.checked_sub(r.start).ok_or(EOVERFLOW)?;
+                if range_size != size {
+                    return Err(EINVAL);
+                }
+                GpuBuddyAllocMode::Range(r)
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

