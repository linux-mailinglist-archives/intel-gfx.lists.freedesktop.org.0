Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE+vG906zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6833719C2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A32110EBB4;
	Tue, 31 Mar 2026 21:21:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="FcR2N9D7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012014.outbound.protection.outlook.com [40.107.209.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB00810EBA2;
 Tue, 31 Mar 2026 21:21:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XgathUIUDPWCWBP6/PeUliJBXTHyDKs1i4ituNB4UrrvRy74VPMLGS8NwM3OQrnAzwkmCUBDLLB0ofdPJJE0fqwhVVmqpHoCkKhZl0DsFB4BFcYyZcjrKQSnBVSYmt6T3r+wn3tN/pKhfwwTJLT4B61OF1+hyRZytiev7kRvEV0EKyz6vSTPQYCmadNznka8WTFETE47eIRCtU7Rhf4SkeAbFYLjhVruqrL/nRcVRqPF/6kc9sHp6QgS7oj9/ZQAQ1Es3mf9EiwC3kU1NfXFs95wzKhyfUeOxQ4DZnxz/8Ng2uVPedMMPD5n0OOfB/fJKJ3duWWC9WNUDzbqgEeApg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVrPMfDQ50MQiBsDwJUZCslEx18M/9c4bfgwlqdwwIM=;
 b=S8ktiAySRJkXrHbgpRYt8sMDxE47g5G+a4NlWIzo/GXVtvf3VS4Xd50Bf29/2kBZfN+4SJ+/X0c417wSMMzB7fVZ3I5dl1aQcIkHYECyNj15YFS0KDRw4099jAi/MIWphLjzW6/PKWsXhusMTz8bOwC7vflnSFCFvuRSWwGczomMgXIVXAINhmw1uHHBGTDMbH7EIYAXKi1s6S+hfcFSSsyxnkGiQU0iB2UfFarp2XgpSLe/PFVgqHLUVxsvq9wHteoyuHG58V507yPCOQSU21khif4cJqjoybocz+4RMvvkZoSaxSPYUQPesWv12gJLQAe6iOsydx0ETSrOK9p17g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XVrPMfDQ50MQiBsDwJUZCslEx18M/9c4bfgwlqdwwIM=;
 b=FcR2N9D7fsP5zH857Ie7P/O1C5r2WxanAGMTgPDcl9qSoM/ZzW+/cDzp5syaUXk2GFFNTcL5Gg3RFhtwiJoMhwO68j5B1dHG5uujUmuW8Ygkg1ef2ykhMoqJwC1/F4ZKrntAyAmHitm+f1aGRZSlybn1Odn0/9r1eVaUW/s4tODgyeijxjoSrn+lidHcg5OXGlxDMisvqwNDYpwEPIfosjx0vIWb9wIw27cNxsmyNioSeL1WJVWJtZeVh+vE6gKJQa2wTas8CIbV6pRDFZt7KnUAXoHd2Gd/+yqLZgArWVmMbtGk3ig1YJAA3w3NYpndfzlYy33ShozBUDcMa0sW3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:24 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:24 +0000
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
Subject: [PATCH v10 10/21] gpu: nova-core: mm: Add MMU v2 page table types
Date: Tue, 31 Mar 2026 17:20:37 -0400
Message-Id: <20260331212048.2229260-11-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR01CA0064.prod.exchangelabs.com (2603:10b6:208:23f::33)
 To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 13473880-2e44-498c-0914-08de8f6b75d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: ef5cJyGxSDGWfBTd22nOuCAz28ZJNyBxwGlJ0qVfzj3QI2wBcbxPwygirZwNAhhp1BopdHRego/ls+ELZKgtaQtqtCbgVmNGH2PdhyMJz/tWNB/qqoqmX7b82M7jCqEIcpp+zzrbH4Pf85pATOXHk9kqUnrkr1/ONL0CYZc6cos22sPaSkM0nEz09Mm3uCAgzX37HpteanmyOJfvSaJCSCdcGPKnv4qHVDN5TsbTq0bZUV5dEYA5l2ntdv0C1eBiLruJlQyMcGRROxZXvebK2C6uh2jMyJrjflZtirkb6I0V6gRcnmJOH4ByCwGOheJZXo52gRdC886crYzmzq5Df86uSvVEtmU/Y2BaDAZow5oIXEslryWrfAINbmGI41qzbddZDfhfrudkr6M9l6cfDrzs80+wKtsxV/2EgwhaJ0cSvbj34/LjK3jsnqSD1UBODLiKUNb/9RApzSVC/EJYe7G9Dd/vK6fpOYTNFdzCCYYCkYrIh1y5u5ZyGKfkEBuOIRnLLH73Az7dkyBd+o0zxVvKDjyEhQTmNU3NaqdVq2k/S7YaLqE9ZTsgf9a1dYCogr2+G0mMINdhlel8Lc022RBzNXoiPcxRkVbC1WqXrkwvufpknVaSvlwojPH9l3X+pjgDvIIuIazF40ZfRt1JkdPFeOjv8PnPCWd2KtopIMHkiULG7oFt+63DZInXSNNcjWydhHttnYwIlojA5En+3FqtfhiNMCi3yofAxu82hVk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dk8ldznHdrm2QMDKFZgKjd8r7M/sehF3KNIYBpoCj0DNa6HguehwxMQvvMWq?=
 =?us-ascii?Q?kCRTF7QViMz7hVp7CI80PRg3mH6Zp0PfKAC8v8Imnzx+7AGhrmoX/BQI5BdH?=
 =?us-ascii?Q?5V2u+qmT1PK3Zpf1OcEyvzhgxNlEjVnPVxcYaaQZuBp4oQ5EMpWuV4LS197S?=
 =?us-ascii?Q?vw5CI0vFFhkpTkqdegqq6fOdYdj/37m5/YC/VPZPGnpCX17GLu35tGi3XnjA?=
 =?us-ascii?Q?2fNvIVyyMfP7deoAp4s0NrfaKrKC6nwJj2dAA+V4Ey8F/Cv9Ikofi/rSBJCL?=
 =?us-ascii?Q?jlGubxvUOianOWFo5jcmYCofD1hhcN97FnI2SwdwIS/xCBrrM3Pw2n/dH2UP?=
 =?us-ascii?Q?4cAAhYwNqq+nmT0rqmu8YR+I59n3J9sPN+FYKyb6ocfPyIV+Q5M6lUE6qM44?=
 =?us-ascii?Q?UyvmsYN0p5nBQqtjGs+afW1Xt3JJYtAkJ1qURM7St/cHK6k9SxlnI51zqbwj?=
 =?us-ascii?Q?SuusWi66UyJ35mcRL0c2AQIHdWqf1TuxkTVyERQseDxnqbN/9fsVRkLym5JQ?=
 =?us-ascii?Q?x/ETbvxgb2W5pLpdIw+vLbmMwchhftperG3AcRIUn4ZVUlVc88Cb1Q8koFul?=
 =?us-ascii?Q?wiHZ1C4njo0lRY7Nfldw0UAZf1pCP9AdoS0fv8mJiGyYkJHL1qXPaqiY1DaR?=
 =?us-ascii?Q?/hJp122wY8YE9pXgIHMLkeRQbBekNZRt9g3wMfEY7RlT+VlIMeV0MZjggnnp?=
 =?us-ascii?Q?JSirJSbD2BESirrDGptWuVox+TtxbgspQpzTPVGjVT1YxADSGuuElIw0XZiq?=
 =?us-ascii?Q?ow3ZYyPN+/MOgbDHyX8Lcnv4HR95zHCaMBDxqXABLUxSKiqSqN/kG9n5lhY9?=
 =?us-ascii?Q?egYRtw5mx9fF3MNdCRWrPmNlJ9ZUMSb/O/gHZB8PVhnWbLSUEZC5XS9nPwmC?=
 =?us-ascii?Q?SzXFUDQqXS9LTiL8JIHiq8AilvSSv7QoDgWJlCD653wAIwl6X8zHvz0wn71i?=
 =?us-ascii?Q?dhBdfyVeq+AxzUun9kS5EA89TggV91RGJWak7teu3seONrNqqNAnGiRAIr+L?=
 =?us-ascii?Q?dAL6T8I0VbtbqCufaRfqohyRcGqe4UdnWcyqoWqHLKG0UYibqBw6AeCTUg/7?=
 =?us-ascii?Q?r0PUfdU4UMyZMlKuYZ52TsJDwJPFC0p8/3/zKpApwV5qo4JdR0CYQ6BtzJ9O?=
 =?us-ascii?Q?Dffx+KCF8ZswEuOqqLdzIpDvA3ACnNHzsKir/uruSB/rJKY/f0qn9uwLL/lc?=
 =?us-ascii?Q?UbGqJRCRvTbip0HmHAkvAZp8h3RDBdSGlvgSaYIPDo8kf8lO9h0y5TPBrXlM?=
 =?us-ascii?Q?igPNDiQguyQarA+ZI4yEx4l5x4N2GkELuCLQbGnf5hCPxRQwcemi6lGqwuQA?=
 =?us-ascii?Q?V21E6mSE5rAF08ozfN6fyvzbXonVWlvSZC8y+inGAuv3L+tND+dD2pLvRdtA?=
 =?us-ascii?Q?JZ7xKtRHlY7uCJT/wO/gmoBtHIfC9MA2l+8OyTB27Ux8FINTwKJecKV3vubp?=
 =?us-ascii?Q?sRRTHQoAB1jXHbbVqnPWhn30uoprB164LyjWijj+IFrcnkumiMALNs97gW38?=
 =?us-ascii?Q?8cI661yyYYPRqXvaPRPh8ihcZ2SHBVWC6PMimpt1pKcCrMYnhj6JL2Df0UZR?=
 =?us-ascii?Q?l2IF0+IN2k9Ur7o1yCUHbazNBemGcUbDEsN7apZ9B2Dx60KrNqlkgOIJLr2A?=
 =?us-ascii?Q?pESUSHWdYlFxB+aSL4RjUFM5Yu4jkhRBSzMBkzBOYluTL99lnefw+axXtKJJ?=
 =?us-ascii?Q?qnesZHXMSuH7N+75Itw1QdeqZdwHPk51jVnbRQgHNNou8ajef59jXf0Yfmh2?=
 =?us-ascii?Q?mVNHAySS1w=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13473880-2e44-498c-0914-08de8f6b75d2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:23.8771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WV7c28AayHm1F9XoHSvyqwuownvs/1sGkGuwtB+8o9y0RfN7sgQNEeydIacVDzgIGLn2jovONHk08dg+BQYZHQ==
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
X-Rspamd-Queue-Id: 1D6833719C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add page table entry and directory structures for MMU version 2
used by Turing/Ampere/Ada GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   2 +
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 +++++++++++++++++++++
 2 files changed, 234 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 50b76d5e5aaf..38d88f8f09a9 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -8,6 +8,8 @@
 
 #![expect(dead_code)]
 
+pub(crate) mod ver2;
+
 use crate::gpu::Architecture;
 
 /// Extracts the page table index at a given level from a virtual address.
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver2.rs b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
new file mode 100644
index 000000000000..f418632764d1
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! MMU v2 page table types for Turing and Ampere GPUs.
+//!
+//! This module defines MMU version 2 specific types (Turing, Ampere and Ada GPUs).
+//!
+//! Bit field layouts derived from the NVIDIA OpenRM documentation:
+//! `open-gpu-kernel-modules/src/common/inc/swref/published/turing/tu102/dev_mmu.h`
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
+
+bitfield! {
+    pub(crate) struct VirtualAddressV2(u64), "MMU v2 49-bit virtual address layout" {
+        11:0    offset   as u64, "Page offset [11:0]";
+        20:12   pt_idx   as u64, "PT index [20:12]";
+        28:21   pde0_idx as u64, "PDE0 index [28:21]";
+        37:29   pde1_idx as u64, "PDE1 index [37:29]";
+        46:38   pde2_idx as u64, "PDE2 index [46:38]";
+        48:47   pde3_idx as u64, "PDE3 index [48:47]";
+    }
+}
+
+impl VirtualAddressV2 {
+    /// Create a [`VirtualAddressV2`] from a [`VirtualAddress`].
+    pub(crate) fn new(va: VirtualAddress) -> Self {
+        Self(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV2 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde3_idx(),
+            1 => self.pde2_idx(),
+            2 => self.pde1_idx(),
+            3 => self.pde0_idx(),
+            4 => self.pt_idx(),
+            _ => 0,
+        }
+    }
+}
+
+/// `PDE` levels for MMU v2 (5-level hierarchy: `PDB` -> `L1` -> `L2` -> `L3` -> `L4`).
+pub(crate) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+];
+
+/// `PTE` level for MMU v2.
+pub(crate) const PTE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+/// Dual `PDE` level for MMU v2 (128-bit entries).
+pub(crate) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L3;
+
+// Page Table Entry (PTE) for MMU v2 - 64-bit entry at level 4.
+bitfield! {
+    pub(crate) struct Pte(u64), "Page Table Entry for MMU v2" {
+        0:0     valid               as bool, "Entry is valid";
+        2:1     aperture            as u8 => AperturePte, "Memory aperture type";
+        3:3     volatile            as bool, "Volatile (bypass L2 cache)";
+        4:4     encrypted           as bool, "Encryption enabled (Confidential Computing)";
+        5:5     privilege           as bool, "Privileged access only";
+        6:6     read_only           as bool, "Write protection";
+        7:7     atomic_disable      as bool, "Atomic operations disabled";
+        53:8    frame_number_sys    as u64 => Pfn, "Frame number for system memory";
+        32:8    frame_number_vid    as u64 => Pfn, "Frame number for video memory";
+        35:33   peer_id             as u8, "Peer GPU ID for peer memory (0-7)";
+        53:36   comptagline         as u32, "Compression tag line bits";
+        63:56   kind                as u8, "Surface kind/format";
+    }
+}
+
+impl Pte {
+    /// Create a `PTE` from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid `PTE` for video memory.
+    pub(crate) fn new_vram(pfn: Pfn, writable: bool) -> Self {
+        Self::default()
+            .set_valid(true)
+            .set_aperture(AperturePte::VideoMemory)
+            .set_frame_number_vid(pfn)
+            .set_read_only(!writable)
+    }
+
+    /// Create an invalid `PTE`.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+    }
+
+    /// Get the frame number based on aperture type.
+    pub(crate) fn frame_number(&self) -> Pfn {
+        match self.aperture() {
+            AperturePte::VideoMemory => self.frame_number_vid(),
+            _ => self.frame_number_sys(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Page Directory Entry (PDE) for MMU v2 - 64-bit entry at levels 0-2.
+bitfield! {
+    pub(crate) struct Pde(u64), "Page Directory Entry for MMU v2" {
+        0:0     valid_inverted      as bool, "Valid bit (inverted logic)";
+        2:1     aperture            as u8 => AperturePde, "Memory aperture type";
+        3:3     volatile            as bool, "Volatile (bypass L2 cache)";
+        5:5     no_ats              as bool, "Disable Address Translation Services";
+        53:8    table_frame_sys     as u64 => Pfn, "Table frame number for system memory";
+        32:8    table_frame_vid     as u64 => Pfn, "Table frame number for video memory";
+        35:33   peer_id             as u8, "Peer GPU ID (0-7)";
+    }
+}
+
+impl Pde {
+    /// Create a `PDE` from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid `PDE` pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::default()
+            .set_valid_inverted(false) // 0 = valid
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame_vid(table_pfn)
+    }
+
+    /// Create an invalid `PDE`.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+            .set_valid_inverted(true)
+            .set_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this `PDE` is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        !self.valid_inverted() && self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the table frame number based on aperture type.
+    pub(crate) fn table_frame(&self) -> Pfn {
+        match self.aperture() {
+            AperturePde::VideoMemory => self.table_frame_vid(),
+            _ => self.table_frame_sys(),
+        }
+    }
+
+    /// Get the `VRAM` address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame_vid())
+    }
+
+    /// Get the raw `u64` value of the `PDE`.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+/// Dual `PDE` at Level 3 - 128-bit entry of Large/Small Page Table pointers.
+///
+/// The dual `PDE` supports both large (64KB) and small (4KB) page tables.
+#[repr(C)]
+#[derive(Debug, Clone, Copy, Default)]
+pub(crate) struct DualPde {
+    /// Large/Big Page Table pointer (lower 64 bits).
+    pub(crate) big: Pde,
+    /// Small Page Table pointer (upper 64 bits).
+    pub(crate) small: Pde,
+}
+
+impl DualPde {
+    /// Create a dual `PDE` from raw 128-bit value (two `u64`s).
+    pub(crate) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: Pde::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual `PDE` with only the small page table pointer set.
+    ///
+    /// Note: The big (LPT) portion is set to 0, not `Pde::invalid()`.
+    /// According to hardware documentation, clearing bit 0 of the 128-bit
+    /// entry makes the PDE behave as a "normal" PDE. Using `Pde::invalid()`
+    /// would set bit 0 (valid_inverted), which breaks page table walking.
+    pub(crate) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: Pde::new(0),
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
+
+    /// Get the small page table `Pfn`.
+    pub(crate) fn small_pfn(&self) -> Pfn {
+        self.small.table_frame()
+    }
+}
-- 
2.34.1

