Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJfsH+Q6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4E93719EE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BDD10EBC4;
	Tue, 31 Mar 2026 21:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="V6whOd3l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010046.outbound.protection.outlook.com [52.101.61.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F67F10EBC6;
 Tue, 31 Mar 2026 21:21:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yG/2G/FmG6tDPcvYIHTV0N0SvZFb9vYOv0aot6HLKrxGTzPQDfj3nUIUFmu1G24+YT/udDRNrsw4ilYJCTp8TnDSgzFQ4/SCXHmmhTIg1ICgKl7LTRZei1RHuxAXzF1RyYCOmLmgZyi6lA+e/Qu0AM+wvehMzvd9RcpoLbEu4EK/aLDmy9T0CHiSvmBoYg+JRzp9ldAy2nUyz1vis6/aJG+U1Tfi8SJMZ53vwNh9DXNUQuyb6OpaWHQ+71x/4M2gOwDEnkfbQeqFk812O98W5ZbaE2fb7p5t+GU6YfxvFFwC4DQ7EWgz4NQdP7Le0wsiHa0wAhdJ4IakX8fCQmXhdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7oMyTv2thW5qZDQHheeqtiDjvwyPdCdvGO9nUOoIm4=;
 b=w3JB3jdXASH1SrVaFoD3XAEP6a25nde+31luVoEc1Ne/E4asoviI973wsZVAlbh5YrmFEBX2mV0As7U5EwIFePnM3y8Km0tkmEn2CfP8V9Cap2mC+dAoPJebvP6agAtwINsRZT8TScO8YEAPunZWjiLLWpfmPeea+6/aeNZzzYsSGf6ieFm8y2xvBaeSu7y8KFjMv/VCrfnyXvm0CZFwKJly/XxlCi4G4PvTj7KSBSQwFQCNzLEuu3J53QgTSLAFDlqoHrdQO0E6jUl41sDQdPk7BUev+jTwniW+XQ8b2+EUaF1ZsKMuf47JqTTl/OtQUruJSAwEhCEQRa/AdXZOhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s7oMyTv2thW5qZDQHheeqtiDjvwyPdCdvGO9nUOoIm4=;
 b=V6whOd3l8yJvhPcj2/MfzSoCJnW45WK3cmCgJmShNmynqst2/ysC0+ORZ+LKMH8FZd0yR6ekhgyOfjOBl5vkf6O3GL0U5PdXqMiSASxCq6Feq+LD74bQ4doCTBsxynbx6dD/3AN89bhUh26kKXbenkZrmR4WJHJtIPhWRcFjMXhjJDo7F5yw+F8NnUmOeKS/mh3qPiIDoFQnvJqhWd95NDvjXLUDFa66MuHdU1Qyp6V7EtG8pYg0szF703wZOz1L+ClvWai36YLpDVDZzx4HuAGhiC75JPXEoPNEX7WyIcZ4RsvoPEVq7CfyPRxWriJZVUW2M4JMmr1bwCXfudFSBA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:32 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:32 +0000
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
Subject: [PATCH v10 14/21] gpu: nova-core: mm: Add Virtual Memory Manager
Date: Tue, 31 Mar 2026 17:20:41 -0400
Message-Id: <20260331212048.2229260-15-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0176.namprd13.prod.outlook.com
 (2603:10b6:208:2bd::31) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 0134912d-79d8-432f-2829-08de8f6b7b13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: VxSYZuC45k69Sy0AJjKcOaWBCW2ZjtZYE4cDkyyJPOd277B3jami9j6iZMl2YjbgFTUtCSqWC/NI2azASbezZ+yHomERhhCYDY0uvpctdCpB7XpV0xHLWPdHJBrYST2hj37d8d+nkYRUmsRgK5/3FHHY4zCtwgqkq+fafQw/DnKEvUtFGRam4kQbQ+VzeWXY5WTxgfy/mzT4h5YVUP1zlPb/WD8FvqoybmNxcDZwA80y9WeLU7P/vuCYkzQ++z+hx7Ec2pivO7vUJ2uBxnB9hJwzPfMiw3kvUjmh9i4I6fhj/8/NaZUt0gyysbdQ2YRDnaRK0V/TjRTecc8tjUc9F56wXNsuULQj+L/VjZ4RECwfT7ms83XxAqpiefv80lFB3nv22aVBAQDGd7Usq9qNJJwOl5Bllc/VSIGCMiCezdOAp1TGcIOQcM2d3a3X4dsFPnUpW1JaJgg/L8MWDUXMtSFQmBbraFRhLCYgfnn9KMrjmRaEkGkTKy/azXSS11o75chO0Xlg60VYIwkRJ7p0044CIPM3jvrglF00/Y9RU1ULWNyYp4la+yrAzZapo/+/I4Mv8Kf41fiOZ/3QxB+APBpcfNUN8apMjXEkE5XRWUKfLqCZV2v8BXvqBSv4RB/E6Dx9KH0lzepmSdRxNXvJKj9A9kvPrrodfk5NEwdN07/JhzF3VECOt0kSrGp/Hztgv9mh5UD89aC2gXLQnEMyvZ967i2wGYD8UDwdVQefLAg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gD4HuxMADtSgf+NX/IENaIPNt+TSwL2BVuKoyt+Wzur091ji5XoYY3AF6JBy?=
 =?us-ascii?Q?kaG932Nd98080FMH+UYB5U+SQP+wyFi2MLvsPnTb1ErtlJItVDuo5w253p8a?=
 =?us-ascii?Q?ZyyDjL2n4B1khdTnAw3iPCwuVkvtgdjEuV3lL2eZ9aN8A3TKed6nr6aaIK8q?=
 =?us-ascii?Q?69bJGhedQbhnXCn3+TbfYCmgDvYydWjOUigOEbAOvPAhBvCZUuDKctq20jum?=
 =?us-ascii?Q?dOxqyHTEjwOjgIfvgaTIRrHGRZoT4FTXIc/3mzhiaRORs8f6eNMKB9zQ0mEb?=
 =?us-ascii?Q?FTDyc+eLes/jpfH88vLRde3ry7/kU9iTg1ANSlFbXpZ6W3ZtSkKFLliTQJ84?=
 =?us-ascii?Q?Ps40uAG0FFGKIQk7/rgD3bQ2VZzB0L9J1RWY2a99wJBEr/t/Tj/kQtWD0r4q?=
 =?us-ascii?Q?OeI5oTfI7aJJSMKJYdApajXkNU88QqZyanYHMOXXHizHgcCC2eR2k9sYfivc?=
 =?us-ascii?Q?jwGlPo7IOb6bkm4LHfD4YqiTY8voPneIWQCHFx52HuXZxLrL3C9YeS/j0xHj?=
 =?us-ascii?Q?Scn6WYuL4J/PsZIqup1UHMUAECHjoqR1Ls4hTmtKSuWEjVNfIRiSvh0c5Hxl?=
 =?us-ascii?Q?0vJ++f+1G8vhRDvt4nlUNKQL4CZweUpaZyNF5ECKsuzBMf/0J5dp8pSbYsoJ?=
 =?us-ascii?Q?/LEOPYhU/nSxj49fgK2LsNQuVmWSOIpGh0sdFGnMwlcPn3bQRBQqhJUyn4as?=
 =?us-ascii?Q?Y+4s3TupBxDaqCXVcZrfw9PfWft5+wBDdl1kXgk0NLvhMYD4MRn7e2IuxEcD?=
 =?us-ascii?Q?5qpSNRLZfuvNWRGnTz7TImAVxZDBEgl/6uDQRWTF1ijuK/XHBiqoYRRcN+2W?=
 =?us-ascii?Q?suF0V231u2/hCBGo+FVae+0Pn5bRKeNOkEoGXjrmGj95tnSBw/uu/INYFioJ?=
 =?us-ascii?Q?Tyb4jmUvZO/RZR26J1KTVsKzEJJmqNkCKCUsWMrXjML10ANjVjp4F5tNnvbR?=
 =?us-ascii?Q?Tu1tbFfPl8hfYL8933LGo1tPYNn7ol7fE/UfyxWAit53RY88Ocl+8M7+f1ub?=
 =?us-ascii?Q?mT6Uneg3BpEx922zHtEHOHQYiFuWjYteLWAeFjFLJ5wSUXFwtPM8JtANKwF6?=
 =?us-ascii?Q?4X7oR2Bk8aVLHxwjw4q6BUx2ENnOqWLxls+J3LPbyWX8Yphhk98YDnKxlTAO?=
 =?us-ascii?Q?GfzRJeJRKVKktCs0yheGLeX0axftXgYehgQRWngBnfEnO2hEpfLKQXUyF5N2?=
 =?us-ascii?Q?O7SZ1TdaAZONV8Kgjq+ee8pbexXiD2dgO1BrPNuTTC6cjhD2K6WRRPy7rvrp?=
 =?us-ascii?Q?7dxAvkkrDHg5i1FQJA82H5UiP788K4SOhlaU2ivNqCy49/g4xCcefGNW7ju3?=
 =?us-ascii?Q?MwCZiIsOxq/DUAepVIyxBN3Mzk4TncDbiJDyDjZOKbTpbtPK64YCFtdNSWjm?=
 =?us-ascii?Q?OtVwe+ZLKz9AkU0OAI+se5TrgpRF+/tU2QvKr+hLSYsw434q4qALJyg7fQwC?=
 =?us-ascii?Q?laAUYA3CPL+5r1IDKd8ybu0tg0HDfwVyZ3UCMuc5dJBobIgZ7I47vf89a0+9?=
 =?us-ascii?Q?JpvIzx5YU82Ri7+kqnG1E96gnRziRYdh9/RP+mJIfTjumuIUONJA/roPYB38?=
 =?us-ascii?Q?jk05bBHKzWBapeycEt1Er1l1+llxcf7MbHf020RYrb2db87JqTH68T4PYZja?=
 =?us-ascii?Q?TuOPZiRJ0ldvzcTZjpUFzonPTamHj6mf3fCwC1fk5W5PuFqqfVRak85ORii6?=
 =?us-ascii?Q?WJsxzuG2T6zick2PYacrRP+OIA62HeFmKZi1JC+5kL1nBf5eGDQozemofdqu?=
 =?us-ascii?Q?cIz7Q2XgrQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0134912d-79d8-432f-2829-08de8f6b7b13
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:32.3988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mWbIRY/niyzwfH5ZPiMsp80TSyLZG13NAHvn+zT6+Cr+PBXEIJp3AcoHjxilgEeMXnt4exk9Z+CWPKBb/Z/JMg==
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
X-Rspamd-Queue-Id: 2D4E93719EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the Virtual Memory Manager (VMM) infrastructure for GPU address
space management. Each Vmm instance manages a single address space
identified by its Page Directory Base (PDB) address, used for Channel,
BAR1 and BAR2 mappings.

Mapping APIs and virtual address range tracking are added in later
commits.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs     |  1 +
 drivers/gpu/nova-core/mm/vmm.rs | 63 +++++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 151b9add67d8..1594279dea20 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -7,6 +7,7 @@
 pub(crate) mod pagetable;
 pub(crate) mod pramin;
 pub(crate) mod tlb;
+pub(crate) mod vmm;
 
 use kernel::{
     devres::Devres,
diff --git a/drivers/gpu/nova-core/mm/vmm.rs b/drivers/gpu/nova-core/mm/vmm.rs
new file mode 100644
index 000000000000..a22d4c506ea6
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/vmm.rs
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Virtual Memory Manager for NVIDIA GPU page table management.
+//!
+//! The [`Vmm`] provides high-level page mapping and unmapping operations for GPU
+//! virtual address spaces (Channels, BAR1, BAR2). It wraps the page table walker
+//! and handles TLB flushing after modifications.
+
+use kernel::{
+    gpu::buddy::AllocatedBlocks,
+    prelude::*, //
+};
+
+use crate::mm::{
+    pagetable::{
+        walk::{PtWalk, WalkResult},
+        MmuVersion, //
+    },
+    GpuMm,
+    Pfn,
+    Vfn,
+    VramAddress, //
+};
+
+/// Virtual Memory Manager for a GPU address space.
+///
+/// Each [`Vmm`] instance manages a single address space identified by its Page
+/// Directory Base (`PDB`) address. The [`Vmm`] is used for Channel, BAR1 and
+/// BAR2 mappings.
+pub(crate) struct Vmm {
+    /// Page Directory Base address for this address space.
+    pub(crate) pdb_addr: VramAddress,
+    /// MMU version used for page table layout.
+    pub(crate) mmu_version: MmuVersion,
+    /// Page table allocations required for mappings.
+    page_table_allocs: KVec<Pin<KBox<AllocatedBlocks>>>,
+}
+
+impl Vmm {
+    /// Create a new [`Vmm`] for the given Page Directory Base address.
+    pub(crate) fn new(pdb_addr: VramAddress, mmu_version: MmuVersion) -> Result<Self> {
+        // Only MMU v2 is supported for now.
+        if mmu_version != MmuVersion::V2 {
+            return Err(ENOTSUPP);
+        }
+
+        Ok(Self {
+            pdb_addr,
+            mmu_version,
+            page_table_allocs: KVec::new(),
+        })
+    }
+
+    /// Read the [`Pfn`] for a mapped [`Vfn`] if one is mapped.
+    pub(crate) fn read_mapping(&self, mm: &GpuMm, vfn: Vfn) -> Result<Option<Pfn>> {
+        let walker = PtWalk::new(self.pdb_addr, self.mmu_version);
+
+        match walker.walk_to_pte_lookup(mm, vfn)? {
+            WalkResult::Mapped { pfn, .. } => Ok(Some(pfn)),
+            WalkResult::Unmapped { .. } | WalkResult::PageTableMissing => Ok(None),
+        }
+    }
+}
-- 
2.34.1

