Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHSLH8w6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310D3371938
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC4D10EA72;
	Tue, 31 Mar 2026 21:21:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="gZL2OqXP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011053.outbound.protection.outlook.com [52.101.57.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A2B10E311;
 Tue, 31 Mar 2026 21:21:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zSN56u6HSXjz7AeDUzB5tVXdJrsdS/3v6OwvGqnvDdtXorQ24zo+1nsolfgaN8DZ7L+/7J2knhMHA37J1RQTb3+Bm/xd/oKIMX/p6+R+/OnvAqK9CdXc8DFb9g20p8OCBLPcGvBzzTTppeAnsAMhpse+dMZdUHEy95+pWQw5MetoeCAgPAvimEG9gYBTxbP7ZmzSc5e05xonxXopXggAF4VC8T6gYjuRwEwvtqyiO7+FIkggPMaI8w4JeZjcHJ1DnAnAHBi5DzAHgMVrmv+bQeP1f8nVV2VgcS9Y8Klql4MlHaXzoyXLlHOdPfv6Tc642FogR7+7YfY1JLK4HubITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ksNMVdt86VxK9lxFgVYp9e/n7k0l7TcBrWVDAQlt+Ws=;
 b=cbjNLQ9i2HGZBjmrruIQ4WePFojNRpWyV2Uz9YoLsH1pwxJk6j0NRjN44Tz7u8nfmgHjtAmS6+FiaqEoq9vZe3i9o20xiw2CBNJWheYmvbycBuaceEFLgl+GI1dFhykwpDfyySvVq5wYXF8QqaSbqpS7QyRzg6+/ywzO/HGzXhcFbjkrG/5jDFxMCjkue/JIHSLu+5fXd+uer/W7eeWPB6mwzMGARWpYm7oSug0RP9RiLOWJVvJvjmOMOm4Cjas2qBrEADrtN49dm8IA9z8+81ozleLCMl/GHYkpMHqhElNFt4pGr/NqFBUKQXXA66pbE6S8oNUiBh03//4o6XoEtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ksNMVdt86VxK9lxFgVYp9e/n7k0l7TcBrWVDAQlt+Ws=;
 b=gZL2OqXP/cPAhlPrODrdPB5sUUnF32Dz8YKpZdtX3uiOIUJoYHVv1k54g37ZaCkbtRwrGLQBKwSnANfPxwDjOeL/lfhsx5ZSRXSoLGrhKxBbKuTKrcaL1I1IKTGaknuErCaC3wYBwYEofW/PPA62ZwUniQxae40/YbnK1SOLcEG1m0aKytUAw8FFQLDZdwBz/TzqStboDs+iiJKfNdikojWmx6d0eu8zK/MIHxJ+4kYcjsAPm3xh62MXX7KmkB1eaz5f0GtoHZPJYjnaIyDnWKvJMYvFgtDqNOy0A1w6s+NdWjB53yPAhD1oPQzKOXRJQNf/S2VkkcA5p5Y3S6maDQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:04 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:04 +0000
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
Subject: [PATCH v10 01/21] gpu: nova-core: gsp: Return GspStaticInfo from
 boot()
Date: Tue, 31 Mar 2026 17:20:28 -0400
Message-Id: <20260331212048.2229260-2-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:208:335::21) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: 440df9ad-ab7e-4f60-bab5-08de8f6b6a5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: +esCYq0VyXIXAN6TzPyXUVMrXjAv7h9WMntentE1f9/yrYmh2w14/hjsAoMOC1CDd2ETgbFJynlJDIV2z2BtfXLSx39qpezxL96IbNMxoaNHjL3H8oB0dIWuvb4B1MNb2a6Kj/qJXbnk3x2//nXSVpignu5SKtcvRwgrOBNGRcMosZplmC5C760mXJMN/ybUsNcSUQx0m072hJ6zoB73fy11hBjGiLfO58YytMnORYwUJQPUj/oph2REN4OciqjjfP1btr+qb8eDTYUdTscGZsheu3sKI/e/WO6RLk7/0/B+P5N7P1pVEavH+wuVOLWyJWGWgTOcpwjpKYifVLbXM70eTsGkNCARdf6Vi0eM+rImZpN2A7TqGmnwUvAT1+AMvqC499Oa/BL2BWc5GzdOFqdcJvqnxeU4mHaAt063YxpzDyBretedXnhKVhIKkSDqpwH0a65qXfiN05E9NljIIXej9ncdVA+3ZEJVz+jh/IcwOhaCrG07MEWA7/l31USI/PZNbNHGNyZcR6IxuW39N+Fde1qD39P5Sm770OsN93j/6IBLeRom18iN72jx+mittD5v0M3CrCChUNGvkVHIQnhglbpJ9HF6zpXtgBRDMA772A6NdQS1Y7fh/kd9VGaasK0rqCBZkCliK0qaDrrFpaJkyq0+F8Ab18yxe1X+QD8BErzCFhNoDyJ+axgxnIA296Wq/jmhjEgPZm3njSN77XTaLx48BwPye/HSmU0/Cqg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C4zR5/4p4ue72unctLslcuYuuQkM0TqIpFJrZLtKc49ULggN0Fj+yMwrHYec?=
 =?us-ascii?Q?rKa9WXX+y2MHxxhwxFOpam+ybSx2h1SECBPyANludm3kU6kUzvF0uhonl8B1?=
 =?us-ascii?Q?mayWJiJVbyqBYwt1l4EUADihUlPxLLbHlTYjESst9O8hhtCnOtshdE+CIDb+?=
 =?us-ascii?Q?mu+UUAIWSEsI1Z5BbsaCQOS0/YIFSVOdzjbj1TF/aeR5ajvkO4TNeO83QXEr?=
 =?us-ascii?Q?hA0IHmX4lkblEbAcvut13iUj5UtwZE5yVoV5HWREWLL72IOTjHYbkeWXb73I?=
 =?us-ascii?Q?GldqAt5mIxBkkcxXF1d3957kYpPkEJyh9v0bTr5KcKxVWUya8Ue0P8KsYx1T?=
 =?us-ascii?Q?AWmusTbnkJZHXHX5Nn/2fuSeI+Iy2Gkx8VJm9DCqMUN9IcheMooAVmnG1MZk?=
 =?us-ascii?Q?fq1xUaDHP0LrpQ392pIWcxp+C1XWlaB4aUSpGem3mAWrIbcq623n7Nsb5zEo?=
 =?us-ascii?Q?3wh8i9Cpl4ozCH+H5uIX6IWHSUuRtWTbUS5qBZSHkyZbKSiwvT9Y1G6vEZ28?=
 =?us-ascii?Q?Qx0eTzve+L8jcvePH0K2gO7EBpcjLsxCMfec8BPWsJM8KajOKkqD+mdDXzec?=
 =?us-ascii?Q?/6PBx2Q8eW8YdR7RByJ7HBufIOxJZzRL/4+FsnEs9O3mA9hjcGYvoxQI8nE8?=
 =?us-ascii?Q?MjkWD2RR4nWgdR5VesZmhpZPkAr/vutsq/UCOFctJJqY3RXNWVjxN+8Fihk2?=
 =?us-ascii?Q?68Wa+AcmyNoyN5OA5BWcmb35UYpYYz5fVP/xm1cBwpH7Rng8jyy6k8hsq/rc?=
 =?us-ascii?Q?9vWvG3soNjHPCC8FS2oG/+ofMVyJT+/Wb+T8d0WuPxzxoVDFtuhKSyM8UqkJ?=
 =?us-ascii?Q?pdTWDG+vSxFhzC9y0TMIxj3r7BsBwvLisM5TSaYj5dG6zRsgo/Qu01Vassw6?=
 =?us-ascii?Q?73zUkmG22QNJTnIRS/j+G1Elg5hwjDbhzZXsMAy+1w8lr7vJmyg3kD+eE+oV?=
 =?us-ascii?Q?x2fjIAp2oQlazL1lgsrlyXGvuz9wvg35DCxNW9nK3FXhCeUN6NrET3KRVfNb?=
 =?us-ascii?Q?S5XIDSRkVOnQuGBKVNjCNCfDtmaRgVhtu5olnJL/55wRPqtOh7strIpEqKmQ?=
 =?us-ascii?Q?tEFn8Q4plaqJwvC8E5oSU9e7I/AP1Qj6OuFxmSKJ2V2GjuJoAHoo9AhEOTPH?=
 =?us-ascii?Q?vNDorpLo+RevJcxfoT834NEapmzk09fnXXfaC+cKp0Og/eEoMTTJGOiVv4bn?=
 =?us-ascii?Q?HK2ivjEzSZphMZdimZ2Tiag4gAXoYsLCRiByv+u0fxjJFeOPaxZ/q7ElqdsX?=
 =?us-ascii?Q?p0JpDhT4R/i39kmrO06+YQxi4dt5X6FrgSWAqZFrPPqrLcPQtrPEo6eMDSAt?=
 =?us-ascii?Q?KvYtlF6cg6w9JajbMTmcKRMgEqEViSnjWfYAFeaHFc1Qfo9VLDHV03PxmcCU?=
 =?us-ascii?Q?yW1OigO1zy9x3j6oZ844jNfdsEqVcGRrB7cJzPb5lfG2AvbxSH5EAnXsVPIf?=
 =?us-ascii?Q?ZQ6lsXqKtDcKTi9HpiX0HXL3FLGql9QjHkqofYiHrZcmJWeoChBcVSLN4Vyo?=
 =?us-ascii?Q?lCHTtOcybDI3DwPxzfC0u8MNJ7OM3cs7iZTsJhqESrT5Xy+EnOuumghmyL2K?=
 =?us-ascii?Q?Bve4jJui6q7yxBfboXYagZCEsT0H2dIGYZLwOjQU3bCBgJBujkgAXEg5jT1H?=
 =?us-ascii?Q?QeGPrs/HE10s70io72qB620LOfcWpscFd1FijniUn3z45dmI6q2r0qqLVeDW?=
 =?us-ascii?Q?x4cBHj1I+xQ7NTPrnuFbxUUmMPGtxVabaQUj3HmgekA0LQ/VOLVTs/uvW6NI?=
 =?us-ascii?Q?PB12zzREjA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 440df9ad-ab7e-4f60-bab5-08de8f6b6a5a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:04.3550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ndZqa/dF3uMCx/IAAF7y4XX7DrDsmBDmVEN5Yue4prth5Pv20artcs1PAyQ/FIYwdd7wkkNcgSRkbsx2y8CJHQ==
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
X-Rspamd-Queue-Id: 310D3371938
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Refactor the GSP boot function to return only the GspStaticInfo,
removing the FbLayout from the return tuple.

This enables access required for memory management initialization to:
- bar1_pde_base: BAR1 page directory base.
- bar2_pde_base: BAR2 page directory base.
- usable memory regions in vidmem.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs      | 9 +++++++--
 drivers/gpu/nova-core/gsp/boot.rs | 9 ++++++---
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 0f6fe9a1b955..b4da4a1ae156 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -21,7 +21,10 @@
     },
     fb::SysmemFlush,
     gfw,
-    gsp::Gsp,
+    gsp::{
+        commands::GetGspStaticInfoReply,
+        Gsp, //
+    },
     regs,
 };
 
@@ -238,6 +241,8 @@ pub(crate) struct Gpu {
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
+    /// Static GPU information from GSP.
+    gsp_static_info: GetGspStaticInfoReply,
 }
 
 impl Gpu {
@@ -269,7 +274,7 @@ pub(crate) fn new<'a>(
 
             gsp <- Gsp::new(pdev),
 
-            _: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
+            gsp_static_info: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/boot.rs b/drivers/gpu/nova-core/gsp/boot.rs
index 6f707b3d1a54..d42637db06dd 100644
--- a/drivers/gpu/nova-core/gsp/boot.rs
+++ b/drivers/gpu/nova-core/gsp/boot.rs
@@ -33,7 +33,10 @@
     },
     gpu::Chipset,
     gsp::{
-        commands,
+        commands::{
+            self,
+            GetGspStaticInfoReply, //
+        },
         sequencer::{
             GspSequencer,
             GspSequencerParams, //
@@ -145,7 +148,7 @@ pub(crate) fn boot(
         chipset: Chipset,
         gsp_falcon: &Falcon<Gsp>,
         sec2_falcon: &Falcon<Sec2>,
-    ) -> Result {
+    ) -> Result<GetGspStaticInfoReply> {
         let dev = pdev.as_ref();
 
         let bios = Vbios::new(dev, bar)?;
@@ -235,6 +238,6 @@ pub(crate) fn boot(
             Err(e) => dev_warn!(pdev, "GPU name unavailable: {:?}\n", e),
         }
 
-        Ok(())
+        Ok(info)
     }
 }
-- 
2.34.1

