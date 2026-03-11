Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMJpAAS6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3190259DE1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCFA10E7A0;
	Wed, 11 Mar 2026 00:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="k3GzwhZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010004.outbound.protection.outlook.com
 [40.93.198.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919EF10E79A;
 Wed, 11 Mar 2026 00:40:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hckqOI20/XEsi360yvLqQ0NpUXpjCOCKGu5APWbVyfoJT8CJZHA0fBlo7KS1sN8siwHQje3AENpZ5gqBVF95lW/Jjck+ioKBvrV6n8j8T0LsFj1Lx1zKbY2nBMQyLdfxcclapq51dS8mO6o9HsrBhGRLwmSe+HhoUYMttr3bdAU/WWVBhG8u5UcVD/Xp7KCA5+g4GDc67liAieFNWrLJ0e5dYlMHHdv7ZmrLmyXFVdIKT+QqZOAPv0/vfGDt7+nNbQVJT9JIcCTQRuf0u63rEDEPriRjsT9s+hG8/oEjRTZJ8SlMZMVOtSJRBDJDilFLM7QMnaBeataM9apaSKLy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxuC+zfhLe5Q7zewzUbI0fSaDTYjR+lExDd5j90/3Gw=;
 b=i+KxCerYVH0tzOuiQpeM1fRJ/QfMN6qojaU5aGu41rY/13TypiAHbHAxN9oqYgDMmyxcnkEgAt3pJbyMAfLRGtNJgiKYglvjjOKqPCy4Rg6pouA3CYHvsgtqYfjNtU8Hg8EcKZmfT1koJ8TJ44lk1dWNcvFI6UHS5g1ObEWKUhf4CrBsQL7ukwXFXT9dNBL3Vuk+ATbVf9cFaCIMe6bwFs3K/NQhbF0jTFyYfSTa7GoUyBospo2mWHiWa2YvCdXcG4xNXd7C3dToamjKavxplZqKcPOS6/qDBsTTISb4uOeR46auvSrNzS6GSQMezfPOzzBiSS83aG/kw0S5fRn+Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxuC+zfhLe5Q7zewzUbI0fSaDTYjR+lExDd5j90/3Gw=;
 b=k3GzwhZ1r8P8ZugPp0tVg2SAki/sDXhtnUgocVytA3hEMtP9ZKRlR024mfTIT4sqI1HJQJxzL4TB2sj4IO2MhLu5Fufs0tn8oHOaLLmz13VPthf3VhgpQylvJCbmov2sWwv4cUs2lfUnjN70KCWYbIWxM0pHIsKbUG8Y1JPn2C7pFvuH8lgBnfy9kyOvPc1WMUIHf0yAHdE98JU32RbSal8kBT1nhQn54dq9EQmIPxcGssiiN2w0SqV78wivMtV39DUmtb/SribFPrLpbVmp23UqushLxbAwxb0vKdP4blwetNFYM60DKBs6wPgppqqH07u1/nzGadaSkiWyq3H0pg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:23 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:23 +0000
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
Subject: [PATCH v9 02/23] gpu: nova-core: Kconfig: Sort select statements
 alphabetically
Date: Tue, 10 Mar 2026 20:39:47 -0400
Message-Id: <20260311004008.2208806-3-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR11CA0020.namprd11.prod.outlook.com
 (2603:10b6:208:23b::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 3334a87b-a9e1-425b-17f2-08de7f06c7b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: CqSe19ykCwfxaXVexTaSyNmFarZdgb16nVBFtz1MTMdVpTOo7WSsy71LcENKr+E594fEe6Wv1bwXfAV4LEKMs7+yMSKnVqOI1t6+m6V+bZbn0k4UDuBYBnW6jX1JBBfHqpmBRR53GE1Wtta0NTTLrtheZ114Eyf2m2eE8BCzteoH80+089JmZmyNvQCRdIH9D3JcOejMdJkhHFCWcLCxk/5vPmxpvljr4TeGfMMDXY3HWpi9hY/NAycWIZhytl5DjSco+vRcaYRxlfYtE6g+StUXlRm88Z/d2vJbPz87jn2Xabxo4TMQ1fwfc4m8mw5jO5zLWMYQGma46OTG7n/3UMBxY24CGK9OVR7WaRvWFs9t8MSzFhchIuvvO4XYqnWK9F5575HM0wZGx90B0NqyW1c08zrPdQdcFCikgxRRrYNOkkKtB7X+3uCL/F3YW9GRuEwyoLQ8JCbR5IqCoRhDlzEp6gHLX4T+R+Ars99RuAKCqjcLnRozdps3xzgYDR3ByQk4mRDAuzsvDmEtfsYX96aq2WQmGPJNwdigN/rCxIB8cvKU+ulZkN9kc6nx6ZmKzyWh5sul6hE3l0m7/zht1MQythBkTSsLKEjpGDFWsGWAZKsoquud87d2deSSaZG+xpC/nPcE1xd2i1EAxFV+DBlgCWiqGvlvlZ0eskB4OiBdnBGQLlMwzxiu/SJxMKHKREHmYSsTUl8z32DKtvQ+c2Ve/UZwbf6X/keC0dExAGU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9YWWHxvnE4Im5W0Ayc4t33kIAimSCkAkJuMs20P27ovUxmKRT8+R3dcP4d98?=
 =?us-ascii?Q?nNQpv/Ci35Gw91lC4uE9E06Tuop88zVvEkImrnhnDNrEUtjftVmW4VjhyaXb?=
 =?us-ascii?Q?bxvn5EgN0S0z5Nq299R6HTMgtdyVEWxjQONRAIg7teXPeowuyHyQleNIRghc?=
 =?us-ascii?Q?yksC2b7Pkak/hOEH0GDx8fxcYjgSvtCb1fO2gUbFk/efvA5jyJZfImilGqe0?=
 =?us-ascii?Q?4GnJRdh+6Us47+Krgdv67/EarJJB+zCGKFxRb+0hOrNu5gT8sx7/+G3/QZm5?=
 =?us-ascii?Q?QTj80zFH+ybXW3Wi17hu2d6tTMPi0Z4cfcAR/9EOr9/UjET+zw2ABws8/Qaw?=
 =?us-ascii?Q?OolofFDS6XeGmZwCpjvWg9C8MK3Qk2CBTd7jQiWJ9XAL6KwYZYByo4n3yif4?=
 =?us-ascii?Q?gPXIuvar687amu0qJKkUx41Baczde5y2kY8SbV3o55xZ4Dg47SGZwCBw34tM?=
 =?us-ascii?Q?hR1hNHOzGMY0QVB0lc9NOKY04BJ0maXs7j0GB3qsWYBZpOQ/fajWEQx0Bz8M?=
 =?us-ascii?Q?Mj+QVtCqNZjB2GxM3QGosLy98I5p7RxrzF7LmnwO9wfn+OMpfSw3id5JW8IV?=
 =?us-ascii?Q?c8CqffDvZwPjVLElo6NTdTToe3mqqQo2OJ+P3P3wIvoDw8WbuilO+X4s0CHu?=
 =?us-ascii?Q?6qQLzFBSMX+eE1tGHkLwXc0euSdQOZvpA7V6WGdjX0Cr5q/yN+KFebnRg8P3?=
 =?us-ascii?Q?2Q1Fj8DJ0iDpyNOce+6KgHkfMdAqfL4sSe/fOo7A+nCwOe7E7pGjW5PLlbSE?=
 =?us-ascii?Q?3AYhbkvGzFZFfs26hjj90yUVBI4AHP0UFe1eoN5eSIkdPiZLt0iuGe0Y6Vbk?=
 =?us-ascii?Q?PutcdgKQ+N/BTf/b9RpHpx3BkxIUqsPogHjU5Q8oWDJAwuu7tFhtjYa5JEK2?=
 =?us-ascii?Q?Cj5KN0DaDD6I5KMxbViEB37UjrD3vNruTgFycMXl6VJCuHHHZ9bL68Zd+OEN?=
 =?us-ascii?Q?HgNrS2mAtX3FSY9xMUG1UdUx/Q0dlgSWbBX6EFKZI51OlRj/Dumf9LJsXKzh?=
 =?us-ascii?Q?kF/xgZ6k7Yn+So6qOuOedH5f9xmbKrgAnDQbJq8r0vC2xqKJeSCMBBH/oa6B?=
 =?us-ascii?Q?00n8T4TC+YwWyKFIs2lEiOpsitX6+6Y/cp5wcikjrDosmvx3hpucky2mcGjZ?=
 =?us-ascii?Q?Exah4qzll1ldeIkXHc7zqdg9TMI8UH29Uaat53O06msyiIUCDFDECcMV9i98?=
 =?us-ascii?Q?ihGobZb1ImuewesjMmN4PQFeqMnbLdCsBAxMSbtth0+vL1z10Wd9fBiP1b1q?=
 =?us-ascii?Q?u1uZfL8jPJXnZDajif/dhLbRuYEr9ULfqftOiQPmLoec2wH5UgsilcftIHtI?=
 =?us-ascii?Q?tRXzWGq61PO9jtrDMsKYIF1ZGjuIuPDBmdV7UXlgDmwn6UkQWs/jDYIeKex1?=
 =?us-ascii?Q?Yzimg1jrCYWzQ3jfkvHm0Tn3cHELIoznGHuYVADlxachJFYotf2CSqEPWzo1?=
 =?us-ascii?Q?NL7mCcoY4LsbDHlvIPfMTxU3I45LC2pQR7vowNKnT6gNs8Rlb6EmYD+vNuKD?=
 =?us-ascii?Q?e+KVAtPSXGJc/ltDnRsky6zAaotJrffoo/RTrFLANhI1woZUp+uGpK08TEgf?=
 =?us-ascii?Q?wTAdf7LscVYBKZS/eZ0e4LvjWgG4tK+daWaQJ0w/VaDvmBDNFhxkgRRxLNva?=
 =?us-ascii?Q?KOLOKi9TMsxSGeCuHRNzFfqxFLqGS3pEFbHXrvqBLq2UJ41kD9d+A/CS15/v?=
 =?us-ascii?Q?rMBQ8tK3vGEw772LS4hNEHermFi5nZaGomy4dSmKnwjzK/7Xl/FYrvlKZLQX?=
 =?us-ascii?Q?7Hp2Pc0ETg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3334a87b-a9e1-425b-17f2-08de7f06c7b9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:23.2768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eL/u/xjaGFVXQrxzOOt1Tw+1c8cFh54gIiV89ICw0BjpA1Qo7s7J/WKRVkOQWiqcsfwoheSjrPeVlp/o8OYWIQ==
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
X-Rspamd-Queue-Id: A3190259DE1
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim]
X-Rspamd-Action: no action

Reorder the select statements in NOVA_CORE Kconfig to be in
alphabetical order.

Suggested-by: Danilo Krummrich <dakr@kernel.org>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index 809485167aff..6513007bf66f 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -3,9 +3,9 @@ config NOVA_CORE
 	depends on 64BIT
 	depends on PCI
 	depends on RUST
-	select RUST_FW_LOADER_ABSTRACTIONS
 	select AUXILIARY_BUS
 	select GPU_BUDDY
+	select RUST_FW_LOADER_ABSTRACTIONS
 	default n
 	help
 	  Choose this if you want to build the Nova Core driver for Nvidia
-- 
2.34.1

