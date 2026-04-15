Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIOEI9/932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB3407F37
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D42B10E799;
	Wed, 15 Apr 2026 21:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="KfD9eFDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012024.outbound.protection.outlook.com
 [40.107.200.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C6310E796;
 Wed, 15 Apr 2026 21:06:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNDcVoUNby6Rh/DxPrNtxZRKDN301+BKEIThC3vCmtVVH5AFrK3ZGioDmwHUDhqb30PSzgB+pocNGah8KNjfHomoVcGwi1aksDcJy+5G+EntsWpFJGJbDIFKh5pUmhacVs4mCZBta1NhLl+jurX6TfQ2A0JK6hGKbPQgXB+jHGh5ZV+Xt1ZzWTYKG3E/NPR7cSC/O4ol/edDkUSqt69d4w3OjGovafKXxl88j3OXTOA+8w+Co1ci+LYD+Xo5DCGtCJRfBXMFIjMMPrKfj/e5VAtV6PzHlpwastvOsOvvwBa8q6OOHHXCGU5skjgs0g2DPegXZj8gBLVQpKwaG4bDDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0girfY8roY1tmF9uoRFIrOzPvrx07Ble3TyNkFvNgc=;
 b=Kbncq22rjc+3lYtUOxzSAG1gbX/4WkUBKLrpweuAsNtia+vbMv79yV8DOMWiYIPLlNzhcJhMhJ4N+UQAZf3qReo9u1MLrr6zEIp5Q/EU+McdG2Kxbaz+jRMn+RQxZnzw6QMdFS79TYUWfOR4AZpwJ4y94zHLbGQ85hYNwNo+Q84F7bwg4fmu96Y1oBJlGEp6BknrkJwiuFw/I7jSu7qNr8GB9zXd2kHuaflJsWhJoTEtsbS5b16KPeravsS0PdLMK3jkh+dNock5/+L/pneae1SIgu198WrHCAIJxN7nCDHsVt4+N+XgGE3ichvRJx3DH6BHcl5t61NIj2WypnQkwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m0girfY8roY1tmF9uoRFIrOzPvrx07Ble3TyNkFvNgc=;
 b=KfD9eFDXKgih9qFpnf8SPjFPYicgQ2FQjxwI+l7OIW1Npeh+Gy/h3lMpOMp24HJr3PevRTsdmt44OboO96oznz9wENEf8WDnEDpsyLEE6t8pUOCjKqDBCDRBmBsR9h0wQuvYzNvPzlUba3UaTf9p5Ejrb8QDnUMXzmLRiLVy+2+aYdnrWpQnKkieKhlTaomUoMIAQP515lad9kTe/53GA/maOMpNGGqd3M6cN8lX2v64ItcDNESrXRqSaMPCi23AZ5l6vh6TO/Yfd2I7DcmNeC7MIZCq4rc6uGByPOIFC7mlD8mnUWanf29I5n/5mI1BDknx0Yx39D4/QSnmmqevhg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:23 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:23 +0000
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
Subject: [PATCH v11 12/20] gpu: nova-core: mm: Add unified page table entry
 wrapper enums
Date: Wed, 15 Apr 2026 17:05:39 -0400
Message-Id: <20260415210548.3776595-12-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR02CA0001.namprd02.prod.outlook.com
 (2603:10b6:930:a1::20) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: de40acc2-0c87-4b45-e72a-08de9b32d9a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 3J8P9Q9EgxDVodtT+vm67kw8qTuPUh4l5n/9lFS3jWfeED3dlL+LAL2a3rkPJ+bnd8q052j2uBG/7qLwYYo4DoxHDnBLO8Q7+SPpJ2Ct0X05WX2yWEW8wYN1kicKAqLTHpEx3pUrRdyLDbQFFimthoxYWTAC4+iU/9/SJNokRbSgd6xWejSP3a4q8ZCklhDkNg0VfvTjWiIStLPozQHsDXoHUTQGFS86mZfUjBlgt8rxn2xWkCStVtmA3LtCZJ1zoWOoIqsU2lqCOiMIKbmq7qyhzPr/dFdP65xnGdbQdKCYS51g3yxp7UzzZQa8hpohWuJ9+Qx/j+pagSNysEzA+5i2BTKfpGSSSAbxS8B9iH57+Vb9VgKamdxiX30rIXubYAj6VXoR4aDUm2spEs3BSLSI4f8wrMMXyyR7SIaGuc6NRcD2JZfHRk0BakiYcuhxiM6tKLYE9QSRi7f8Wi9yD/ZINXWl60/IAj6j4jJXMBxYO2zGZugrBqRDmS37U7XOkSLpq0CBqO2Jldn5NbdWSPa7kA1fnn1eF4B2Fax9CYyeDFGh/KK/Wfqg6crrlYDWbNPsNS/IDUERRvV3bzqfMeArI5rWDorTgxXQwpJ19cC5TVim+FSd5W8uAmp357fA1eSb4YYQT+GpIGsWTIDcSJDti3I/Pwys4JRsOdYrcacg9v4dGPI9gl+L/kcZnYjd6499lHFeTX0lfGwBSuwbBLaWXNvDJEojdZbQ77D2VDE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b28DCGSC4bjXVk+/HiAKKAEE0+xClZUYqICPhdQK73C9mbFmNVOJjKNTu/aI?=
 =?us-ascii?Q?CKeRplmipsgAs+cxqxdMFNWFgYQrl9H4hRHNcX22IzpDJVlME/7FjDqALJBR?=
 =?us-ascii?Q?or/LjcTt567+bSgVmx7zgEz0iXFqJUjBmy61ASpDU7N6PGsmobN5dpsKuMx6?=
 =?us-ascii?Q?MDG8I5RjhgJDaybqn538xTDBgEjKJ4M8ljqh+yPzRMxHcNNP8c8ns9TQlaQd?=
 =?us-ascii?Q?vH1dyVXtTEQSbYwEn6EJ5w4TUi7B00bxiGk9GJ1mCx7vmuH0RFIsRU9AdN5S?=
 =?us-ascii?Q?uz4sB+qHSlKaMpGVY0Y3815M6mfovdQH8pZl8kZ4GQVD5HGGuo/WJfVuXEkB?=
 =?us-ascii?Q?TccyhSLlR6Ovj0sOJUprFzSTkK1tyZ81s5CJ8WH/lZubNAkXHYQUqTZZMmQP?=
 =?us-ascii?Q?lm/Qu+n4WDycitn2mksNEVqDoZoSiiKs8I5dwtLixr1vzjGXHZt/+55lsyKH?=
 =?us-ascii?Q?kZWWl4YoteEINzpJYUy9t82IHumR3iWKqHvWXfJfrzOP2E2hgsp/UKxQkazf?=
 =?us-ascii?Q?8bfKj/3nWlvV7n0WyDhqxlyw4tmEe6GTCDCP7rtYr1s4Z7onZZUSStPZLASS?=
 =?us-ascii?Q?OyyedNpXazJQmcFZCqPw29INoqxLW4Fak3C1HvrnQzhzcD8MTT0sR6IuViU4?=
 =?us-ascii?Q?ONcNhW+JjY/khHU6M5Zq+lBIwVgltmtsCxp83mMb8sihKWKrM/rFd8ZfWi5u?=
 =?us-ascii?Q?UEl3PToW9l5cSvtiC8LUeiQrAf+opZPAFV3fLBX4jE7C9aNeyFxlFccOUd6W?=
 =?us-ascii?Q?b/2ouGWWfoDnzwjVblf1R7rsO8g3XQjdLw7V2gzfT6E67X99yNncGMIHXaPu?=
 =?us-ascii?Q?7jiZiWIvPHeFTrT2Ww6BTRqaOxkXWZKROwSxk/xcCN5awNwl8LcvHLnqiCvM?=
 =?us-ascii?Q?i8dBg4Z+2XEY/9F0SdxP/QEZF4cPxIln/3pPz/iD9OjjK99hm7020Y2fYSbg?=
 =?us-ascii?Q?zhbfzg1AbsPOGEM7OuuB+kwz15MoXzndRX7PMvdVu/cm2/t+JuMoI9r1JoLR?=
 =?us-ascii?Q?o+o8agOQJ6xIWt8LRXgo0LGFnKnJjRvONryColcK7ikyVckjRCvVeRAf3L9I?=
 =?us-ascii?Q?BQage3YgfyNnrpISYgBFhJtOB21GD6jOAG9NSX/IeiuBoNE9B0v22kAxGKy/?=
 =?us-ascii?Q?ycm2nna1uUNhfF3yJdXT43qut27/mMlehgqjap0ntGNkNTMx53Sbrzijp4wf?=
 =?us-ascii?Q?ge2EVOI/S+YO08+1BxVt6uzaUaRvMLsHY5nFOoSal4qax0QzCtrhASdW+UFQ?=
 =?us-ascii?Q?FPUWG/mlrcxSCbmsTtgJC54mVj2NcJLXBH37Lr8xzQgVI8g2ubAtkHM0Jcex?=
 =?us-ascii?Q?7vJq0Oa1eugSndamEFLnToudD3KhKgqerbYqpES4/fq6gdAzxo4Qalymevwm?=
 =?us-ascii?Q?w4a7GHdXjYMZFGaFUyK++NW/H+VY3vtEncY55/GflRNtp9/HThfrpl0l8Tyx?=
 =?us-ascii?Q?pdZIYDJE95Dmep+GbHalRhlRR7+ohbWDWHOC1gjIJiJ7bhsYiNULumsC8q8s?=
 =?us-ascii?Q?cNAJpY0wsEJHsDtDnEQpiu/xOwN/Gf5N4wOhxcCkQ+q0l3y5YC//DfKxSokK?=
 =?us-ascii?Q?b9SBmCuA76sJESti5K6Uzm2ce5qCQ6HkViV8YlB+SQcHdwIMfcz7qJQZOB4V?=
 =?us-ascii?Q?T/tFRX32ZSGSNGkBn0zZKesZCJIiNgLwaWszcizcBXKswwk78Ys8MuyAJPT9?=
 =?us-ascii?Q?n697EOMLh4IqExZSLN0EGFHB9Xe7hA+S6k2w6pz9Jckzg1eOqVmI129zRVvP?=
 =?us-ascii?Q?LpbqpFb6Mw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de40acc2-0c87-4b45-e72a-08de9b32d9a0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:23.7328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ISTyqajsZifoHu4bkdFtQ+y9K69pMvx3crE6JHjGD1MpmVyFbW0clJdQJ9ITGgiz8iWDIjssuFWVmoCl/CdtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8993
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
	RCPT_COUNT_GT_50(0.00)[55];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3ECB3407F37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add unified Pte, Pde, and DualPde wrapper enums that abstract over
MMU v2 and v3 page table entry formats. These enums allow the page
table walker and VMM to work with both MMU versions.

Each unified type:
- Takes MmuVersion parameter in constructors
- Wraps both ver2 and ver3 variants
- Delegates method calls to the appropriate variant

This enables version-agnostic page table operations while keeping
version-specific implementation details encapsulated in the ver2
and ver3 modules.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      | 223 +++++++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 150 ++++++++------
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 120 +++++++----
 3 files changed, 396 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 9897818b3b07..764b9e71ae41 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -14,6 +14,13 @@
 use kernel::num::Bounded;
 
 use crate::gpu::Architecture;
+use crate::mm::{
+    pramin,
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+use kernel::prelude::*;
 
 /// Extracts the page table index at a given level from a virtual address.
 pub(super) trait VaLevelIndex {
@@ -86,6 +93,222 @@ pub(super) const fn as_index(&self) -> u64 {
     }
 }
 
+// Trait abstractions for page table operations.
+
+/// Operations on Page Table Entries (`PTE`s).
+pub(super) trait PteOps: Copy + core::fmt::Debug {
+    /// Create a `PTE` from a raw `u64` value.
+    fn new(val: u64) -> Self;
+
+    /// Create an invalid `PTE`.
+    fn invalid() -> Self;
+
+    /// Create a valid `PTE` for video memory.
+    fn new_vram(pfn: Pfn, writable: bool) -> Self;
+
+    /// Check if this `PTE` is valid.
+    fn is_valid(&self) -> bool;
+
+    /// Get the physical frame number.
+    fn frame_number(&self) -> Pfn;
+
+    /// Get the raw `u64` value.
+    fn raw_u64(&self) -> u64;
+
+    /// Read a `PTE` from VRAM.
+    fn read(window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(val))
+    }
+
+    /// Write this `PTE` to VRAM.
+    fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+}
+
+/// Operations on Page Directory Entries (`PDE`s).
+pub(super) trait PdeOps: Copy + core::fmt::Debug {
+    /// Create a `PDE` from a raw `u64` value.
+    fn new(val: u64) -> Self;
+
+    /// Create a valid `PDE` pointing to a page table in video memory.
+    fn new_vram(table_pfn: Pfn) -> Self;
+
+    /// Create an invalid `PDE`.
+    fn invalid() -> Self;
+
+    /// Check if this `PDE` is valid.
+    fn is_valid(&self) -> bool;
+
+    /// Get the memory aperture of this `PDE`.
+    fn aperture(&self) -> AperturePde;
+
+    /// Get the VRAM address of the page table.
+    fn table_vram_address(&self) -> VramAddress;
+
+    /// Get the raw `u64` value.
+    fn raw_u64(&self) -> u64;
+
+    /// Read a `PDE` from VRAM.
+    fn read(window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(val))
+    }
+
+    /// Write this `PDE` to VRAM.
+    fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+
+    /// Check if this `PDE` is valid and points to video memory.
+    fn is_valid_vram(&self) -> bool {
+        self.is_valid() && self.aperture() == AperturePde::VideoMemory
+    }
+}
+
+/// Operations on Dual Page Directory Entries (128-bit `DualPde`s).
+pub(super) trait DualPdeOps: Copy + core::fmt::Debug {
+    /// Create a `DualPde` from raw 128-bit value (two `u64`s).
+    fn new(big: u64, small: u64) -> Self;
+
+    /// Create a `DualPde` with only the small page table pointer set.
+    fn new_small(table_pfn: Pfn) -> Self;
+
+    /// Check if the small page table pointer is valid.
+    fn has_small(&self) -> bool;
+
+    /// Get the small page table VRAM address.
+    fn small_vram_address(&self) -> VramAddress;
+
+    /// Get the raw `u64` value of the big PDE.
+    fn big_raw_u64(&self) -> u64;
+
+    /// Get the raw `u64` value of the small PDE.
+    fn small_raw_u64(&self) -> u64;
+
+    /// Read a dual PDE (128-bit) from VRAM.
+    fn read(window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result<Self> {
+        let lo = window.try_read64(addr.raw())?;
+        let hi = window.try_read64(addr.raw() + 8)?;
+        Ok(Self::new(lo, hi))
+    }
+
+    /// Write this dual PDE (128-bit) to VRAM.
+    fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.big_raw_u64())?;
+        window.try_write64(addr.raw() + 8, self.small_raw_u64())
+    }
+}
+
+/// MMU configuration trait -- encodes version-specific constants and types.
+pub(super) trait MmuConfig: 'static {
+    /// Page Table Entry type.
+    type Pte: PteOps;
+    /// Page Directory Entry type.
+    type Pde: PdeOps;
+    /// Dual Page Directory Entry type (128-bit).
+    type DualPde: DualPdeOps;
+
+    /// PDE levels (excluding PTE level) for page table walking.
+    const PDE_LEVELS: &'static [PageTableLevel];
+    /// PTE level for this MMU version.
+    const PTE_LEVEL: PageTableLevel;
+    /// Dual PDE level (128-bit entries) for this MMU version.
+    const DUAL_PDE_LEVEL: PageTableLevel;
+
+    /// Get the number of entries per page table page for a given level.
+    fn entries_per_page(level: PageTableLevel) -> usize;
+
+    /// Extract the page table index at `level` from `va`.
+    fn level_index(va: VirtualAddress, level: u64) -> u64;
+
+    /// Get the entry size in bytes for a given level.
+    fn entry_size(level: PageTableLevel) -> usize {
+        if level == Self::DUAL_PDE_LEVEL {
+            16 // 128-bit dual PDE
+        } else {
+            8 // 64-bit PDE/PTE
+        }
+    }
+
+    /// Compute upper bound on page table pages needed for `num_virt_pages`.
+    ///
+    /// Walks from PTE level up through PDE levels, accumulating the tree.
+    fn pt_pages_upper_bound(num_virt_pages: usize) -> usize {
+        let mut total = 0;
+
+        // PTE pages at the leaf level.
+        let pte_epp = Self::entries_per_page(Self::PTE_LEVEL);
+        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
+        total += pages_at_level;
+
+        // Walk PDE levels bottom-up (reverse of PDE_LEVELS).
+        for &level in Self::PDE_LEVELS.iter().rev() {
+            let epp = Self::entries_per_page(level);
+
+            // How many pages at this level do we need to point to
+            // the previous pages_at_level?
+            pages_at_level = pages_at_level.div_ceil(epp);
+            total += pages_at_level;
+        }
+
+        total
+    }
+}
+
+/// Marker struct for MMU v2 (Turing/Ampere/Ada).
+pub(super) struct MmuV2;
+
+impl MmuConfig for MmuV2 {
+    type Pte = ver2::Pte;
+    type Pde = ver2::Pde;
+    type DualPde = ver2::DualPde;
+
+    const PDE_LEVELS: &'static [PageTableLevel] = ver2::PDE_LEVELS;
+    const PTE_LEVEL: PageTableLevel = ver2::PTE_LEVEL;
+    const DUAL_PDE_LEVEL: PageTableLevel = ver2::DUAL_PDE_LEVEL;
+
+    fn entries_per_page(level: PageTableLevel) -> usize {
+        // TODO: Calculate these values from the bitfield dynamically
+        // instead of hardcoding them.
+        match level {
+            PageTableLevel::Pdb => 4,  // PD3 root: bits [48:47] = 2 bits
+            PageTableLevel::L3 => 256, // PD0 dual: bits [28:21] = 8 bits
+            _ => 512,                  // PD2, PD1, PT: 9 bits each
+        }
+    }
+
+    fn level_index(va: VirtualAddress, level: u64) -> u64 {
+        ver2::VirtualAddressV2::new(va).level_index(level)
+    }
+}
+
+/// Marker struct for MMU v3 (Hopper and later).
+pub(super) struct MmuV3;
+
+impl MmuConfig for MmuV3 {
+    type Pte = ver3::Pte;
+    type Pde = ver3::Pde;
+    type DualPde = ver3::DualPde;
+
+    const PDE_LEVELS: &'static [PageTableLevel] = ver3::PDE_LEVELS;
+    const PTE_LEVEL: PageTableLevel = ver3::PTE_LEVEL;
+    const DUAL_PDE_LEVEL: PageTableLevel = ver3::DUAL_PDE_LEVEL;
+
+    fn entries_per_page(level: PageTableLevel) -> usize {
+        match level {
+            PageTableLevel::Pdb => 2,  // PDE4 root: bit [56] = 1 bit, 2 entries
+            PageTableLevel::L4 => 256, // PDE0 dual: bits [28:21] = 8 bits
+            _ => 512,                  // PDE3, PDE2, PDE1, PT: 9 bits each
+        }
+    }
+
+    fn level_index(va: VirtualAddress, level: u64) -> u64 {
+        ver3::VirtualAddressV3::new(va).level_index(level)
+    }
+}
+
 /// Memory aperture for Page Table Entries (`PTE`s).
 ///
 /// Determines which memory region the `PTE` points to.
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver2.rs b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
index 37066688b5f1..b4ee91766a4f 100644
--- a/drivers/gpu/nova-core/mm/pagetable/ver2.rs
+++ b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
@@ -16,7 +16,10 @@
 use super::{
     AperturePde,
     AperturePte,
+    DualPdeOps,
     PageTableLevel,
+    PdeOps,
+    PteOps,
     VaLevelIndex, //
 };
 use crate::mm::{
@@ -116,12 +119,12 @@ pub(in crate::mm) struct Pte(u64) {
 
 impl Pte {
     /// Create a `PTE` from a `u64` value.
-    pub(super) fn new(val: u64) -> Self {
+    pub(super) fn new_raw(val: u64) -> Self {
         Self::from_raw(val)
     }
 
     /// Create a valid `PTE` for video memory.
-    pub(super) fn new_vram(pfn: Pfn, writable: bool) -> Self {
+    fn new_vram_inner(pfn: Pfn, writable: bool) -> Self {
         Self::zeroed()
             .with_valid(true)
             .with_aperture(AperturePte::VideoMemory)
@@ -129,21 +132,37 @@ pub(super) fn new_vram(pfn: Pfn, writable: bool) -> Self {
             .with_read_only(!writable)
     }
 
-    /// Create an invalid `PTE`.
-    pub(super) fn invalid() -> Self {
-        Self::zeroed()
-    }
-
     /// Get the frame number based on aperture type.
-    pub(super) fn frame_number(&self) -> Pfn {
+    fn frame_number_by_aperture(&self) -> Pfn {
         match self.aperture() {
             AperturePte::VideoMemory => self.frame_number_vid(),
             _ => self.frame_number_sys(),
         }
     }
+}
 
-    /// Get the raw `u64` value.
-    pub(super) fn raw_u64(&self) -> u64 {
+impl PteOps for Pte {
+    fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    fn invalid() -> Self {
+        Self::zeroed()
+    }
+
+    fn new_vram(pfn: Pfn, writable: bool) -> Self {
+        Self::new_vram_inner(pfn, writable)
+    }
+
+    fn is_valid(&self) -> bool {
+        self.valid().into_bool()
+    }
+
+    fn frame_number(&self) -> Pfn {
+        self.frame_number_by_aperture()
+    }
+
+    fn raw_u64(&self) -> u64 {
         self.into_raw()
     }
 }
@@ -171,30 +190,18 @@ pub(in crate::mm) struct Pde(u64) {
 
 impl Pde {
     /// Create a `PDE` from a `u64` value.
-    pub(super) fn new(val: u64) -> Self {
+    pub(super) fn new_raw(val: u64) -> Self {
         Self::from_raw(val)
     }
 
     /// Create a valid `PDE` pointing to a page table in video memory.
-    pub(super) fn new_vram(table_pfn: Pfn) -> Self {
+    fn new_vram_inner(table_pfn: Pfn) -> Self {
         Self::zeroed()
             .with_valid_inverted(false) // 0 = valid
             .with_aperture(AperturePde::VideoMemory)
             .with_table_frame_vid(table_pfn)
     }
 
-    /// Create an invalid `PDE`.
-    pub(super) fn invalid() -> Self {
-        Self::zeroed()
-            .with_valid_inverted(true)
-            .with_aperture(AperturePde::Invalid)
-    }
-
-    /// Check if this `PDE` is valid.
-    pub(super) fn is_valid(&self) -> bool {
-        !self.valid_inverted().into_bool() && self.aperture() != AperturePde::Invalid
-    }
-
     /// Get the table frame number based on aperture type.
     fn table_frame(&self) -> Pfn {
         match self.aperture() {
@@ -202,19 +209,42 @@ fn table_frame(&self) -> Pfn {
             _ => self.table_frame_sys(),
         }
     }
+}
 
-    /// Get the `VRAM` address of the page table.
-    pub(super) fn table_vram_address(&self) -> VramAddress {
+impl PdeOps for Pde {
+    fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    fn new_vram(table_pfn: Pfn) -> Self {
+        Self::new_vram_inner(table_pfn)
+    }
+
+    fn invalid() -> Self {
+        Self::zeroed()
+            .with_valid_inverted(true)
+            .with_aperture(AperturePde::Invalid)
+    }
+
+    fn is_valid(&self) -> bool {
+        !self.valid_inverted().into_bool() && self.aperture() != AperturePde::Invalid
+    }
+
+    fn aperture(&self) -> AperturePde {
+        // Delegate to bitfield getter (takes self by value, Copy).
+        Pde::aperture(*self)
+    }
+
+    fn table_vram_address(&self) -> VramAddress {
         debug_assert!(
-            self.aperture() == AperturePde::VideoMemory,
+            Pde::aperture(*self) == AperturePde::VideoMemory,
             "table_vram_address called on non-VRAM PDE (aperture: {:?})",
-            self.aperture()
+            Pde::aperture(*self)
         );
         VramAddress::from(self.table_frame_vid())
     }
 
-    /// Get the raw `u64` value of the `PDE`.
-    pub(super) fn raw_u64(&self) -> u64 {
+    fn raw_u64(&self) -> u64 {
         self.into_raw()
     }
 }
@@ -233,35 +263,9 @@ pub(in crate::mm) struct DualPde {
 
 
 impl DualPde {
-    /// Create a dual `PDE` from raw 128-bit value (two `u64`s).
-    pub(super) fn new(big: u64, small: u64) -> Self {
-        Self {
-            big: Pde::new(big),
-            small: Pde::new(small),
-        }
-    }
-
-    /// Create a dual `PDE` with only the small page table pointer set.
-    ///
-    /// Note: The big (LPT) portion is set to 0, not `Pde::invalid()`.
-    /// According to hardware documentation, clearing bit 0 of the 128-bit
-    /// entry makes the PDE behave as a "normal" PDE. Using `Pde::invalid()`
-    /// would set bit 0 (valid_inverted), which breaks page table walking.
-    pub(super) fn new_small(table_pfn: Pfn) -> Self {
-        Self {
-            big: Pde::new(0),
-            small: Pde::new_vram(table_pfn),
-        }
-    }
-
-    /// Check if the small page table pointer is valid.
-    pub(super) fn has_small(&self) -> bool {
-        self.small.is_valid()
-    }
-
     /// Check if the big page table pointer is valid.
     fn has_big(&self) -> bool {
-        self.big.is_valid()
+        PdeOps::is_valid(&self.big)
     }
 
     /// Get the small page table `Pfn`.
@@ -269,3 +273,35 @@ fn small_pfn(&self) -> Pfn {
         self.small.table_frame()
     }
 }
+
+impl DualPdeOps for DualPde {
+    fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: PdeOps::new(big),
+            small: PdeOps::new(small),
+        }
+    }
+
+    fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: PdeOps::new(0),
+            small: PdeOps::new_vram(table_pfn),
+        }
+    }
+
+    fn has_small(&self) -> bool {
+        PdeOps::is_valid(&self.small)
+    }
+
+    fn small_vram_address(&self) -> VramAddress {
+        PdeOps::table_vram_address(&self.small)
+    }
+
+    fn big_raw_u64(&self) -> u64 {
+        PdeOps::raw_u64(&self.big)
+    }
+
+    fn small_raw_u64(&self) -> u64 {
+        PdeOps::raw_u64(&self.small)
+    }
+}
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver3.rs b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
index 2f9e762c4667..1c52013e498d 100644
--- a/drivers/gpu/nova-core/mm/pagetable/ver3.rs
+++ b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
@@ -25,7 +25,10 @@
 use super::{
     AperturePde,
     AperturePte,
+    DualPdeOps,
     PageTableLevel,
+    PdeOps,
+    PteOps,
     VaLevelIndex, //
 };
 use crate::mm::{
@@ -194,12 +197,12 @@ pub(in crate::mm) struct Pte(u64) {
 
 impl Pte {
     /// Create a PTE from a `u64` value.
-    pub(super) fn new(val: u64) -> Self {
+    pub(super) fn new_raw(val: u64) -> Self {
         Self::from_raw(val)
     }
 
     /// Create a valid PTE for video memory.
-    pub(super) fn new_vram(frame: Pfn, writable: bool) -> Self {
+    fn new_vram_inner(frame: Pfn, writable: bool) -> Self {
         let pcf = if writable { PtePcf::rw() } else { PtePcf::ro() };
         Self::zeroed()
             .with_valid(true)
@@ -207,14 +210,30 @@ pub(super) fn new_vram(frame: Pfn, writable: bool) -> Self {
             .with_pcf(pcf)
             .with_frame_number(frame)
     }
+}
 
-    /// Create an invalid PTE.
-    pub(super) fn invalid() -> Self {
+impl PteOps for Pte {
+    fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    fn invalid() -> Self {
         Self::zeroed()
     }
 
-    /// Get the raw `u64` value.
-    pub(super) fn raw_u64(&self) -> u64 {
+    fn new_vram(pfn: Pfn, writable: bool) -> Self {
+        Self::new_vram_inner(pfn, writable)
+    }
+
+    fn is_valid(&self) -> bool {
+        self.valid().into_bool()
+    }
+
+    fn frame_number(&self) -> Pfn {
+        Pte::frame_number(*self)
+    }
+
+    fn raw_u64(&self) -> u64 {
         self.into_raw()
     }
 }
@@ -237,40 +256,50 @@ pub(in crate::mm) struct Pde(u64) {
 
 impl Pde {
     /// Create a PDE from a `u64` value.
-    pub(super) fn new(val: u64) -> Self {
+    pub(super) fn new_raw(val: u64) -> Self {
         Self::from_raw(val)
     }
 
     /// Create a valid PDE pointing to a page table in video memory.
-    pub(super) fn new_vram(table_pfn: Pfn) -> Self {
+    fn new_vram_inner(table_pfn: Pfn) -> Self {
         Self::zeroed()
             .with_is_pte(false)
             .with_aperture(AperturePde::VideoMemory)
             .with_table_frame(table_pfn)
     }
+}
 
-    /// Create an invalid PDE.
-    pub(super) fn invalid() -> Self {
+impl PdeOps for Pde {
+    fn new(val: u64) -> Self {
+        Self::from_raw(val)
+    }
+
+    fn new_vram(table_pfn: Pfn) -> Self {
+        Self::new_vram_inner(table_pfn)
+    }
+
+    fn invalid() -> Self {
         Self::zeroed().with_aperture(AperturePde::Invalid)
     }
 
-    /// Check if this PDE is valid.
-    pub(super) fn is_valid(&self) -> bool {
-        self.aperture() != AperturePde::Invalid
+    fn is_valid(&self) -> bool {
+        Pde::aperture(*self) != AperturePde::Invalid
     }
 
-    /// Get the VRAM address of the page table.
-    pub(super) fn table_vram_address(&self) -> VramAddress {
+    fn aperture(&self) -> AperturePde {
+        Pde::aperture(*self)
+    }
+
+    fn table_vram_address(&self) -> VramAddress {
         debug_assert!(
-            self.aperture() == AperturePde::VideoMemory,
+            Pde::aperture(*self) == AperturePde::VideoMemory,
             "table_vram_address called on non-VRAM PDE (aperture: {:?})",
-            self.aperture()
+            Pde::aperture(*self)
         );
         VramAddress::from(self.table_frame())
     }
 
-    /// Get the raw `u64` value.
-    pub(super) fn raw_u64(&self) -> u64 {
+    fn raw_u64(&self) -> u64 {
         self.into_raw()
     }
 }
@@ -363,29 +392,40 @@ pub(in crate::mm) struct DualPde {
 unsafe impl Zeroable for DualPde {}
 
 impl DualPde {
-    /// Create a dual PDE from raw 128-bit value (two `u64`s).
-    pub(super) fn new(big: u64, small: u64) -> Self {
-        Self {
-            big: DualPdeBig::new(big),
-            small: Pde::new(small),
-        }
-    }
-
-    /// Create a dual PDE with only the small page table pointer set.
-    pub(super) fn new_small(table_pfn: Pfn) -> Self {
-        Self {
-            big: DualPdeBig::invalid(),
-            small: Pde::new_vram(table_pfn),
-        }
-    }
-
-    /// Check if the small page table pointer is valid.
-    pub(super) fn has_small(&self) -> bool {
-        self.small.is_valid()
-    }
-
     /// Check if the big page table pointer is valid.
     fn has_big(&self) -> bool {
         self.big.is_valid()
     }
 }
+
+impl DualPdeOps for DualPde {
+    fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: DualPdeBig::new(big),
+            small: PdeOps::new(small),
+        }
+    }
+
+    fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: DualPdeBig::invalid(),
+            small: PdeOps::new_vram(table_pfn),
+        }
+    }
+
+    fn has_small(&self) -> bool {
+        PdeOps::is_valid(&self.small)
+    }
+
+    fn small_vram_address(&self) -> VramAddress {
+        PdeOps::table_vram_address(&self.small)
+    }
+
+    fn big_raw_u64(&self) -> u64 {
+        self.big.raw_u64()
+    }
+
+    fn small_raw_u64(&self) -> u64 {
+        PdeOps::raw_u64(&self.small)
+    }
+}
-- 
2.34.1

