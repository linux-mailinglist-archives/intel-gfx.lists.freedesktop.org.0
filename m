Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJwSOeE6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9515E3719D9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C684210EBC5;
	Tue, 31 Mar 2026 21:21:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="R+OsTSpI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012010.outbound.protection.outlook.com [40.107.209.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C418B10EBBE;
 Tue, 31 Mar 2026 21:21:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jxjhWHB6bbs2pOYnpwMK6tq8vODmrXMVSPccTZAXsXcj2BIIHQUKxKQ7bLHuHbiW2bmQruO2Cl/6qNFnp2J0YRLkdoaxGH3bApoJ1nVfo0khKqxJ9jGpCDcPqk9nvY8QYfWtfpxgKKLYqNUJlbFa141m6K2ZVgaSCz74MBfQ6KbRfrETFl3Z5miU1evzDoO46603EHqvgdUW0bIrb2kKxBG15a9APsMJtQ64Ite4AwpNA4vmcFpiqumIMTc+ug4DI/pDIOQck/yFBon505tmusqEPALN2bhxAp184eM9h1RUlK3lQc9pPCZCbUVRelQOdTfL+B5+N+AsFEM0h47FgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSl1EiURGiPZeBdSjkeUjjuop2bLvfdRtK/wIVA+LVc=;
 b=wabI+Ew1ke38YDoK27XT33dV57QBI3w4p+T6DC/UT0Z1BVIXIhMi0OTTqIg8FFwFn3lOCSFCIJJ/Xav+QOIIuNqvT5uUL3vZGtOw0YJ3dLPpeuysdb8CU98hefTj3BJAwhIiOBEXyNIhEYKgkCXJiyIl/jHL1RNXF/V8YfgpMe6qvyWGeE3jWiuKsY9MOJkYxN+WMZ8h2/JpB8w2DxftvxtfdfoM+FHOxqvz7fkfZHW3fujPcFJKxC2k68JbrEeZjzxnThUY1sRPdaVsEPwWljsHHrCrlRk5U3IqhbUOZaOA6NOSUGuaGP7FmfN9Vds0fnfQ7iQut0cvjZe5pT4Qww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fSl1EiURGiPZeBdSjkeUjjuop2bLvfdRtK/wIVA+LVc=;
 b=R+OsTSpIrGhpWxXb4ygKqI3Za996kIYYo8/OpzwqWYbKeyvk9nfSU82xl6wVekuEjc6yZyukq3flyLq3NI7UietEoZHE/BebdpD2HDz978Cm595JUrBiE2HMzqDz07T6sAbenVnk4x4vjFN0THDTX1HBJIasHeTqDFOaRJ4XMBl+U1KeUegmHIVcxj8GCaxt8PQEAJ4WZOuZhhCVDYk5uXQDjtHMsJku19EMCLt3fKCcOiiJs7AveujbGnNhIjxNbuMghzyqY9VnOJVWBEr2OonZJKJxbCN2vY5xlQunZlIJPQuaAtEVOz92Bh2HdB6dMz3QjQfOOGW2iNjd9oFOQw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:30 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:30 +0000
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
Subject: [PATCH v10 13/21] gpu: nova-core: mm: Add page table walker for MMU
 v2/v3
Date: Tue, 31 Mar 2026 17:20:40 -0400
Message-Id: <20260331212048.2229260-14-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR01CA0021.prod.exchangelabs.com (2603:10b6:208:10c::34)
 To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: c2c17de7-da12-4e94-fa30-08de8f6b79fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 7MXyIEAs8DFmH7Q7wCOE6+0i8LSszQPH8c2dLr/l5MWqcp28flGtO7GeCtY3j1LYbUQVxoXJY4jWsIczw1lfu7qpmeqvOoN6c0oX12acL5CY55SO/0pfrkE+7Tbm+Q6gIAcPgYxjK4oXWxgQ43kq1O5q854yCz8/TgZrDGiC4/20JXQ/N8Crp6TUo2V0f7QjXs1Kk6hG984gR8YrNbCuPxl8hmWSgaPp2Gc05Kii6kFdgIHSUg8z+qeXK6PT4c9tjLTFT4XYuPhzX++8hPUPyUmdFI0khUoF6PZTvRzf+2gmJHBWdyy5pttOpJ8OKwf0OXjPGHimp91/OjNj44FBDExPUUwlgfzbIIqNuH0cis+qEOSVSXxsW+fzpBX8U83abXUu/jwBWDuBEPaGIfHi4QqvKFqkizheh7+XHaLNj5Ufv0jB7Zt/+CVgRhVShGwK3vaYG889QlvZBExq6nOvNZBXFcIawXPPnzuS/AitTWcDptJSUN40F570CXODhmCQ+WKTk1n6bSzBJIweoDlXf5/EJIX40X/OZu7Shnf/h4c5XU9xI3joZjk4xnv0dbKPH53hcomkRj973bUoK0PEgvkyxIKgNoEijmBKFtR/6/kwMo74YckbC6jlE+LKJN48c3dlrzOdW0xDMeeWB87aLM0v2Xe0CAZ91iWbymGDlLAEzOR0CzstM3zsbpd0PMaovOopUXbkmGBPpPGM2qjFKe61nWnZPjV/W9QwpiOiRJM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?itJgwLsxoELWsvRzlJHP/nO4AB1oI5gfwxeEZYHr/lboWlEzBywBgRH81pdI?=
 =?us-ascii?Q?dfpax00kMc3RvKejz+VSJc81FeHlm098zSEvjKa4jbaDWnORVBSs6oWBr613?=
 =?us-ascii?Q?XLnOy12WdCpdWu/000oTET94K9yyYZdSVNX7ENyTM/kwK3Qru7+tgi4pVs/D?=
 =?us-ascii?Q?vVSQq/VQ66CdNcAipWxPKgQxGq/+wExNp4BYubEDvCyn5oCSdEb4bpgr7mMY?=
 =?us-ascii?Q?ZlhDWn6wWqjE4rrTPFyu9LWbn9gNyhxM4i4TMC3iYQ7V4bt8IFRejZ9eOSPq?=
 =?us-ascii?Q?hwwsP5lJr+DBQeFmHxof/z6V6rHVU+mxXqb+tRQnqCahUizSWW4DG+eyoCgf?=
 =?us-ascii?Q?8z/s9AMeWoh20V9ZTt/2Q3X5BY3p5m8iG9UeVjRYp+v+YX2SQi2IqdLAKhyK?=
 =?us-ascii?Q?3lxTIqFkuL5Z1y+nhq0Yp3marzoTz6e/6jnIdIF5e8IAqiEa/BSmhF8WHoU7?=
 =?us-ascii?Q?btZdCxXy6dUziMNSEivkOonzpDP2CXPN4JfYXc3hFp8jMSqEcn36L8YvOcld?=
 =?us-ascii?Q?JJO0LY37UX6hFenhdZqfkL0G0HkgPrVqulOISDTE0BToFIgMJzz8JHbiFQNy?=
 =?us-ascii?Q?CEPl9t7lVm3DIdMlTWE3jn2NZBF1dilFSX3pHHIyciHf4ascy05cTEyrXUZe?=
 =?us-ascii?Q?6YNrQIH+NnJM4XnYyLHsSiZvItd3IBvzsRYiW1YSY8wj4xjpWh5vit5SJGoS?=
 =?us-ascii?Q?8DcoM2WYs/jp9bRJ6tofgB9S0GEyv3yOQKXu3nmiyiHhzBI1MOwe/p4jRY8k?=
 =?us-ascii?Q?hegKEXARsZvrWJMNlOpdUNuabY1nMUiCeQ/QLQZ6P5mEklmXFbsLFizldEsI?=
 =?us-ascii?Q?8pCMM2L6m/R9DvasM+Ob9pS9zX/7awg/MJazUVGAxpTA+41PHOwgKqW+H82e?=
 =?us-ascii?Q?zDBgo1X6ybKboeKwna4b/TOmFHhjsDQo7NR69/E1EMxlDAxyKAf8ZJ9m0NSM?=
 =?us-ascii?Q?goIGqnkaGSVuqsRbb3DuXA634t1QKgJJK37oD2rAflpHkxNZJDFQezYQjvob?=
 =?us-ascii?Q?pm9Bd0sPiAVdr3vLhnlD/Pbu5zaYkOTeIirQ4RQjCTAuQf+Sxf1iZ0otCjVR?=
 =?us-ascii?Q?iqJfkrithQ345FL4qJFnvyCaa+btkqbA3TF436y0DWEq8S9zcuQ8UZNqx7Gu?=
 =?us-ascii?Q?F0YE7/OyDbWtl0AqoJ6N7S0mJmO5G/+sHmrohl0LS4cNeIkmtZqH5D4pTmoi?=
 =?us-ascii?Q?L12wzikyranxM0kKpeEeAzQ4dE3wr2/ds9si6HhCzX8zle1RGPu5valZ+Ewq?=
 =?us-ascii?Q?ud9FNM7LcUsEs2b6NKERNTmO+iAru5Q8oSSpysxTgMAt2g97K1KIA7iJaYc2?=
 =?us-ascii?Q?R2FYAsuXWMW8KbCvPsFqJJBKooHzCU98W2k9hWqhfmXR2jCamusuchZAH8zQ?=
 =?us-ascii?Q?IT/PEI112b8ogTIwqqy2OKrMzQOwm3z4mB5nvTLxa22mjIWp5uQwUTG7SDcH?=
 =?us-ascii?Q?ELMC8SggU/w2wDyFxT1B+w54WPm1HzHViS6bOstMY00xs9e+AjMPgn5VDDNQ?=
 =?us-ascii?Q?viil57FxHQ8aWEH5CEgazHmIlOOcOVUI5N/bBXnBVhPG/2EHFLWoIBypRBks?=
 =?us-ascii?Q?SxsiKNHLcPxaJVKv8VsxqurFLfKaj1PdOjm26sAhONZgzKRPkTCn1B3txgvW?=
 =?us-ascii?Q?iVM8WQqHql9LXh97hw1BHLf109BWSnm5izUTAVPvb3fexsoZcM4CLEPyR8SJ?=
 =?us-ascii?Q?ByRVo2CwLI395rTm7YQBpdXzDFDwkaNcyok+OEVxnIiTrazq7ZGelFXrMfXf?=
 =?us-ascii?Q?k3wCulFe3g=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c17de7-da12-4e94-fa30-08de8f6b79fb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:30.5974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B9XzYMA9lZURlZGPTnqId9SMIUmZ/iDiGTN3Nk6Y29b2DtHaTMP+HsCvRIUpa0MTqk3i5I6z6hQT6NRAV5j+qg==
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
X-Rspamd-Queue-Id: 9515E3719D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the page table walker implementation that traverses the page table
hierarchy for both MMU v2 (5-level) and MMU v3 (6-level) to resolve
virtual addresses to physical addresses or find PTE locations.

Currently only v2 has been tested (nova-core currently boots pre-hopper)
with some initial preparatory work done for v3.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   1 +
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 218 +++++++++++++++++++++
 2 files changed, 219 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 909df37c3ee8..9acf100798d3 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -10,6 +10,7 @@
 
 pub(crate) mod ver2;
 pub(crate) mod ver3;
+pub(crate) mod walk;
 
 use crate::gpu::Architecture;
 use crate::mm::{
diff --git a/drivers/gpu/nova-core/mm/pagetable/walk.rs b/drivers/gpu/nova-core/mm/pagetable/walk.rs
new file mode 100644
index 000000000000..8bdaba229d34
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/walk.rs
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Page table walker implementation for NVIDIA GPUs.
+//!
+//! This module provides page table walking functionality for MMU v2 and v3.
+//! The walker traverses the page table hierarchy to resolve virtual addresses
+//! to physical addresses or to find PTE locations.
+//!
+//! # Page Table Hierarchy
+//!
+//! ## MMU v2 (Turing/Ampere/Ada) - 5 levels
+//!
+//! ```text
+//!     +-------+     +-------+     +-------+     +---------+     +-------+
+//!     | PDB   |---->|  L1   |---->|  L2   |---->| L3 Dual |---->|  L4   |
+//!     | (L0)  |     |       |     |       |     | PDE     |     | (PTE) |
+//!     +-------+     +-------+     +-------+     +---------+     +-------+
+//!       64-bit        64-bit        64-bit        128-bit         64-bit
+//!        PDE           PDE           PDE        (big+small)        PTE
+//! ```
+//!
+//! ## MMU v3 (Hopper+) - 6 levels
+//!
+//! ```text
+//!     +-------+     +-------+     +-------+     +-------+     +---------+     +-------+
+//!     | PDB   |---->|  L1   |---->|  L2   |---->|  L3   |---->| L4 Dual |---->|  L5   |
+//!     | (L0)  |     |       |     |       |     |       |     | PDE     |     | (PTE) |
+//!     +-------+     +-------+     +-------+     +-------+     +---------+     +-------+
+//!       64-bit        64-bit        64-bit        64-bit        128-bit         64-bit
+//!        PDE           PDE           PDE           PDE        (big+small)        PTE
+//! ```
+//!
+//! # Result of a page table walk
+//!
+//! The walker returns a [`WalkResult`] indicating the outcome.
+
+use kernel::prelude::*;
+
+use super::{
+    DualPde,
+    MmuVersion,
+    PageTableLevel,
+    Pde,
+    Pte, //
+};
+use crate::{
+    mm::{
+        pramin,
+        GpuMm,
+        Pfn,
+        Vfn,
+        VirtualAddress,
+        VramAddress, //
+    },
+    num::{
+        IntoSafeCast, //
+    },
+};
+
+/// Result of walking to a PTE.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum WalkResult {
+    /// Intermediate page tables are missing (only returned in lookup mode).
+    PageTableMissing,
+    /// PTE exists but is invalid (page not mapped).
+    Unmapped { pte_addr: VramAddress },
+    /// PTE exists and is valid (page is mapped).
+    Mapped { pte_addr: VramAddress, pfn: Pfn },
+}
+
+/// Result of walking PDE levels only.
+///
+/// Returned by [`PtWalk::walk_pde_levels()`] to indicate whether all PDE levels
+/// resolved or a PDE is missing.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum WalkPdeResult {
+    /// All PDE levels resolved -- returns PTE page table address.
+    Complete {
+        /// VRAM address of the PTE-level page table.
+        pte_table: VramAddress,
+    },
+    /// A PDE is missing and no prepared page was provided by the closure.
+    Missing {
+        /// PDE slot address in the parent page table (where to install).
+        install_addr: VramAddress,
+        /// The page table level that is missing.
+        level: PageTableLevel,
+    },
+}
+
+/// Page table walker for NVIDIA GPUs.
+///
+/// Walks the page table hierarchy (5 levels for v2, 6 for v3) to find PTE
+/// locations or resolve virtual addresses.
+pub(crate) struct PtWalk {
+    pdb_addr: VramAddress,
+    mmu_version: MmuVersion,
+}
+
+impl PtWalk {
+    /// Calculate the VRAM address of an entry within a page table.
+    fn entry_addr(
+        table: VramAddress,
+        mmu_version: MmuVersion,
+        level: PageTableLevel,
+        index: u64,
+    ) -> VramAddress {
+        let entry_size: u64 = mmu_version.entry_size(level).into_safe_cast();
+        VramAddress::new(table.raw_u64() + index * entry_size)
+    }
+
+    /// Create a new page table walker.
+    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Self {
+        Self {
+            pdb_addr,
+            mmu_version,
+        }
+    }
+
+    /// Walk PDE levels with closure-based resolution for missing PDEs.
+    ///
+    /// Traverses all PDE levels for the MMU version. At each level, reads the PDE.
+    /// If valid, extracts the child table address and continues. If missing, calls
+    /// `resolve_prepared(install_addr)` to resolve the missing PDE.
+    pub(crate) fn walk_pde_levels(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+        resolve_prepared: impl Fn(VramAddress) -> Option<VramAddress>,
+    ) -> Result<WalkPdeResult> {
+        let va = VirtualAddress::from(vfn);
+        let mut cur_table = self.pdb_addr;
+
+        for &level in self.mmu_version.pde_levels() {
+            let idx = self.mmu_version.level_index(va, level.as_index());
+            let install_addr = Self::entry_addr(cur_table, self.mmu_version, level, idx);
+
+            if level == self.mmu_version.dual_pde_level() {
+                // 128-bit dual PDE with big+small page table pointers.
+                let dpde = DualPde::read(window, install_addr, self.mmu_version)?;
+                if dpde.has_small() {
+                    cur_table = dpde.small_vram_address();
+                    continue;
+                }
+            } else {
+                // Regular 64-bit PDE.
+                let pde = Pde::read(window, install_addr, self.mmu_version)?;
+                if pde.is_valid() {
+                    cur_table = pde.table_vram_address();
+                    continue;
+                }
+            }
+
+            // PDE missing in HW. Ask caller for resolution.
+            if let Some(prepared_addr) = resolve_prepared(install_addr) {
+                cur_table = prepared_addr;
+                continue;
+            }
+
+            return Ok(WalkPdeResult::Missing {
+                install_addr,
+                level,
+            });
+        }
+
+        Ok(WalkPdeResult::Complete {
+            pte_table: cur_table,
+        })
+    }
+
+    /// Walk to PTE for lookup only (no allocation).
+    ///
+    /// Returns [`WalkResult::PageTableMissing`] if intermediate tables don't exist.
+    pub(crate) fn walk_to_pte_lookup(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
+        let mut window = mm.pramin().get_window()?;
+        self.walk_to_pte_lookup_with_window(&mut window, vfn)
+    }
+
+    /// Walk to PTE using a caller-provided PRAMIN window (lookup only).
+    ///
+    /// Uses [`PtWalk::walk_pde_levels()`] for the PDE traversal, then reads the PTE at
+    /// the leaf level. Useful when called for multiple VFNs with single PRAMIN window
+    /// acquisition. Used by [`Vmm::execute_map()`] and [`Vmm::unmap_pages()`].
+    pub(crate) fn walk_to_pte_lookup_with_window(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+    ) -> Result<WalkResult> {
+        match self.walk_pde_levels(window, vfn, |_| None)? {
+            WalkPdeResult::Complete { pte_table } => {
+                Self::read_pte_at_level(window, vfn, pte_table, self.mmu_version)
+            }
+            WalkPdeResult::Missing { .. } => Ok(WalkResult::PageTableMissing),
+        }
+    }
+
+    /// Read the PTE at the PTE level given the PTE table address.
+    fn read_pte_at_level(
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+        pte_table: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<WalkResult> {
+        let va = VirtualAddress::from(vfn);
+        let pte_level = mmu_version.pte_level();
+        let pte_idx = mmu_version.level_index(va, pte_level.as_index());
+        let pte_addr = Self::entry_addr(pte_table, mmu_version, pte_level, pte_idx);
+        let pte = Pte::read(window, pte_addr, mmu_version)?;
+
+        if pte.is_valid() {
+            return Ok(WalkResult::Mapped {
+                pte_addr,
+                pfn: pte.frame_number(),
+            });
+        }
+        Ok(WalkResult::Unmapped { pte_addr })
+    }
+}
-- 
2.34.1

