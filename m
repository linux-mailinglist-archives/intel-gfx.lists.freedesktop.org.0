Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PkfGd/932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1618B407F36
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719C510E797;
	Wed, 15 Apr 2026 21:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="tL+k5Z1y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012024.outbound.protection.outlook.com
 [40.107.200.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C0210E797;
 Wed, 15 Apr 2026 21:06:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e1a9e82Y3FX7/ScEzSl62bBZvRusIKPf7Fhiv3y8TVtprzFgaJQug0Kl3KuzxFZK+skQHhh6uYABfYJeIEFe/Sp/+eEr7JRE8F4MLyCtwTTu8dEI+Grooo8F1bH8TIdQInH9l37FjXVZHX4Jg9ZXbrYJODNZbPkdZOtRefJ7Czl7rg6BJY19ThTd58tI0JyX1Yz1aIqZHamdiY+DUCuXWifMVb1lLI+pxf0AGRMca0YHFiKbXqgEjBvnNcft3eiCCN4nTOK5iJZ6H1iDVXpFQhVmsqN827xruTKLeGu48mfrPd9fDZUlS6KTI02j97GWeLKpeid9ZVwiyVAW0cKoWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0fb1fHffmfRpTJyaPknejN172Q/EhCYf/psGjiH+xQw=;
 b=Rzj+cP+0fFezmzj+cN+DYe33VmTq4Ib0kQS4veh0nZ5QkibuCFTz4q2MCmgCBySc+8Gl6QdIH/JLiZtaMdXzE2I2C6Je/SaNUmYfEKCyJ5mrBaz2BdkEwj51ED0CTLOTiqo2vXzl4BSaoVIgd9LO1jHYsM7HAP3ZRkoDH6hyilKrEGBKMH+cTqFroJBmolIA8D7JKUc7awYvOecOZNTJSmIUiAqkO49k30BwCbUWyXgxEKfgXMfyt6KTRK7w0F/AzICkS3gJgPIwtW2iZIY0+ZrLQ4vZPvoFbXESS0/Zgt7R7q5lW1nl/kY2gF25vf+l13v6ZGDG5/5U1DSIHWThZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0fb1fHffmfRpTJyaPknejN172Q/EhCYf/psGjiH+xQw=;
 b=tL+k5Z1ycBGZIva+p3FXnB3/Ihkla2wvoHtsECuQHVfbk2C1+M8QuCxe2F8LgZOszjNBCv0wZcvChQLwFaBMps3q5xGVaHMCwMP0u8FSqCOcPAMWEmZeRKQ71fTYfoXSiDevn0vHZPwxH6zbOWANB45gtmG7hBbO3JheAUN45bGW0N6otoGx6qiLxzGiR3eaKLq31gHodxAE2/St/tllYuqkmxnz4KYIw9Sd9LjuFjMeg9007OiomNGHELmeVQhfaIG9hP0jkcDODkBMWgfZB5o2G5c3rAXlqViCV9RxZPyi8k1gJRwzDhCKOEamyLKfQqojWlCQ28JlqQ9tP68Uxg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB8993.namprd12.prod.outlook.com (2603:10b6:610:17b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 21:06:26 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:26 +0000
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
Subject: [PATCH v11 13/20] gpu: nova-core: mm: Add page table walker for MMU
 v2/v3
Date: Wed, 15 Apr 2026 17:05:40 -0400
Message-Id: <20260415210548.3776595-13-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR02CA0006.namprd02.prod.outlook.com
 (2603:10b6:930:a1::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 45806981-f6e8-458b-4871-08de9b32db1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 0xNDS1mtT4BM8ZiNshliGgNPQXQkgL+1APVsqt09umsenAfcWucC5b0EmxjG0kNkODnp62ZEvdBnT2wZnsb7yOlIFUYzM+KS0Tk6fnVnzuORRkes82j62bGQ4m4ViNAnMHHT3TxFaiJrf18iB+Km9QG00l7TbFiZPH3ob1c/GThwK021lhSa0HNu96uBwlYb2Bz5QkK04ejGDAZgu4SDvGPp6pQLeK8j4TitU41mKfCgLfFPd4EcfrcaH0MFMUf41h9ZTvdg/VX/jb6X41rx13MznbKny0nFiU+YIszpPGbBI3MUyqzKas2WzOzdo4Ps3b6ro6fuwFeC3Z4ZqXIhtZgSzs4EnTu/4HZAHKAgtxjU74AIdFgE153z7LeeQVxm0QjHHeKxoolyh6FHVxwD1maj6KSWFMVeXOmQWBjoStNKPmFHScKGk58iboByqtY/PQPhEKxLtN+21qTF++2vYEdGRkp6g/q3Mgu4t8DhHZusLwFVJxe7Cd17tw8oBdb5iTCaWW3gIBTf+aiO2GUnkt09+VaDWTc35sJjtZS/gzdRhEo0M/QDfuJE2yYUzOMfWDw9ekwCrGS8wJjKywHhZZ4fto5bfAnF3QBbPt7UnjvuGE91HFqidGCD051ZAsopsaQIhFLbSe1o8QAkv7u2J/ySHDyloAi4Zt3Eo6zVu0KxiHSntCcwkEVDNh5+mO8iyKyOo6cAWuyA8M0nc51nI9Ub3Rbsoq9799kyQHDmvFE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O5t3wvGfGVMi2nKCxeMtZ2kdmSSpqohGOTWG7+crEbUgLvBCWN9/B0J2j0A1?=
 =?us-ascii?Q?JYbRdWt0WYx6GWgZR/shQtK0zfVOySixcwwfUA544rmclhhpWeCL90vtZJz+?=
 =?us-ascii?Q?K7LWA+NPRIeKZnwZVUwkoGwzg0kdAZO9wyzXccuoifJA2c4vmlbzngBOYcXA?=
 =?us-ascii?Q?RTv73WZRWfjQBWinpH6GH7ChYcr/3/nJAa7d4AQ6pnBQwi5JCqLzhV4JFiAx?=
 =?us-ascii?Q?bRr8Iv/0CDndbHs4nJQ+jtJY9XIaotxW5G7J9QTROCiSQWAHEhWTvD5oJl1f?=
 =?us-ascii?Q?DT8khnP/8ICCbPj0sDehoWP9GWYHvMF8Fe0NEUwAxqwc4pkpW6M16umwsqe9?=
 =?us-ascii?Q?sUO/QyS8x0O5bWKjJtZ8Rx0CEbCK0uJ28V/9CHYFVYKhr2xuvd2+oaDjRNF+?=
 =?us-ascii?Q?9juCXtKQKJ/+ZBr9a/V3z2jWeUQrHRPKYGvivTX49KIpj/ntLPYln2Qi31Qt?=
 =?us-ascii?Q?OhZ1HGOjRbfU+q7l0JjbCQRQR+aujkt2DhAO49/qinPDS18pALQY5+jQjlx6?=
 =?us-ascii?Q?c9AMcyb21tTzoQYboHgNU90FCYzgi1Zuxk1U0BEqt4SVAZRpfgw1gJYYXj4B?=
 =?us-ascii?Q?4jqM+U5Jsvgfsy6f/WZFEEEnaX4JpcRTMXnm37iPzsz2/LAdjnbNHiI9ad9v?=
 =?us-ascii?Q?rb0yhVpfZux5y6CirIZRZSUT3E+7s1r8jI+46rTZA1COdgZ8aso6I+ojKxIV?=
 =?us-ascii?Q?YQ0BhIhFqQ55aX29Qm6rVXyhk01Tbyyr9nIekgyVGNYvtWmBMVlFesX5Xi3S?=
 =?us-ascii?Q?Q7C0ZU4TZkc75TTrg18yGqQe2haCcE7D1se5Shq+9hSfg52A+Z+0sYzrbnuW?=
 =?us-ascii?Q?+b6INEt5ANP8IDbWoOtjhIdF2HyGUAY1xpblnMjzU+4EnIHLemLaDJHfx+rk?=
 =?us-ascii?Q?yXla+CNr+Ekin1850/JoTTQynzZT/G3XMoPVnkNkP5eRXF3X6rI9L1+SbcWq?=
 =?us-ascii?Q?TzRaaEuIBQGjZPcve/XP4OCNlO6xuo1mlV+e9+ZVWbqL8prW7aHbggj7yFAY?=
 =?us-ascii?Q?pvw/mnH92u4kad7VxSRtgSuGI0eFWChzbNT8/p5eD2haAahxun9WYWqPm6F7?=
 =?us-ascii?Q?/O62u/tWtKjFj5uvPqEGBrY2nUsioxinIdnbm3haraUM18qc4wzYpUGaAr2h?=
 =?us-ascii?Q?aegda8JpbcAfkgMmj0x6FryrdnQDTsbkJ1KpaoQybIKw+vfLbb2voSnuWafN?=
 =?us-ascii?Q?I/BwdsT+A0d436Jschp+pBXQSKvf9zKNgZ96vVej615H+bXO8/sFrOeyBDaf?=
 =?us-ascii?Q?viYIq4jMAUL8sDhU9vgfSsjBhB+4VhcY4g23aKqCa9ObA12zCUiXi53uaPjR?=
 =?us-ascii?Q?phCoFs427M+w4sUGXYwoV3qVPvAKkHsVrc4hr1lsl/THEX4Gs8s4s/cvRVdy?=
 =?us-ascii?Q?3CtsgjTOsLfoaM7B8rdkcuQfQ9NOURCtOW+hxz6svg8tctXDod6MEo6AILqC?=
 =?us-ascii?Q?0mmZPsejZQz5IkWNW0MfiACXQnMkvRw/7+uviTZClOfX4AqbAAVa0TVItY+S?=
 =?us-ascii?Q?uvwT5lmfVovvXnz119932IqvFuAcrEEJO4JvCcrxDasNOUU3r+hsr3/p2ZbB?=
 =?us-ascii?Q?FveQtVgbKYh6KhdI0Scmkx3nMCnC3N8G/lIpbLVA2olhukw6SN++E2UWGcZU?=
 =?us-ascii?Q?b9p1db2DEqVA8rlCb/ObXq6GtWFH4FgkyYIQND7GsA0r/qly0wQMuSfb4iEI?=
 =?us-ascii?Q?iPJewiTHYqaqbPtXysPRQrtcrgXw3HqUEs9RN/5H4UsNjMN/MbY6tHcQtHxQ?=
 =?us-ascii?Q?NyebQAiKig=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45806981-f6e8-458b-4871-08de9b32db1f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:26.1644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1kcb183op+W9n2x1/Z3SHJ8Zbp2kEx2IKhWCWc+SgSd+5dghOIqOTXhS6oRC2vjmHm44HrfDxk/nnoqIXSlJg==
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
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1618B407F36
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
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 242 +++++++++++++++++++++
 2 files changed, 243 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 764b9e71ae41..b7e0e8e02905 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -10,6 +10,7 @@
 
 pub(super) mod ver2;
 pub(super) mod ver3;
+pub(super) mod walk;
 
 use kernel::num::Bounded;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable/walk.rs b/drivers/gpu/nova-core/mm/pagetable/walk.rs
new file mode 100644
index 000000000000..89d4426bcf14
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/walk.rs
@@ -0,0 +1,242 @@
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
+use core::marker::PhantomData;
+
+use kernel::prelude::*;
+
+use super::{
+    DualPdeOps,
+    MmuConfig,
+    MmuV2,
+    MmuV3,
+    MmuVersion,
+    PageTableLevel,
+    PdeOps,
+    PteOps, //
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
+pub(in crate::mm) enum WalkResult {
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
+/// Returned by [`PtWalkInner::walk_pde_levels()`] to indicate whether all PDE
+/// levels resolved or a PDE is missing.
+#[derive(Debug, Clone, Copy)]
+pub(in crate::mm) enum WalkPdeResult {
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
+/// Page table walker.
+pub(in crate::mm) struct PtWalkInner<M: MmuConfig> {
+    pdb_addr: VramAddress,
+    _phantom: PhantomData<M>,
+}
+
+impl<M: MmuConfig> PtWalkInner<M> {
+    /// Calculate the VRAM address of an entry within a page table.
+    fn entry_addr(table: VramAddress, level: PageTableLevel, index: u64) -> VramAddress {
+        let entry_size: u64 = M::entry_size(level).into_safe_cast();
+        VramAddress::new(table.raw_u64() + index * entry_size)
+    }
+
+    /// Create a new page table walker.
+    pub(super) fn new(pdb_addr: VramAddress) -> Self {
+        Self {
+            pdb_addr,
+            _phantom: PhantomData,
+        }
+    }
+
+    /// Walk PDE levels with closure-based resolution for missing PDEs.
+    ///
+    /// Traverses all PDE levels for the MMU version. At each level, reads the PDE.
+    /// If valid, extracts the child table address and continues. If missing, calls
+    /// `resolve_prepared(install_addr)` to resolve the missing PDE.
+    pub(super) fn walk_pde_levels(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+        resolve_prepared: impl Fn(VramAddress) -> Option<VramAddress>,
+    ) -> Result<WalkPdeResult> {
+        let va = VirtualAddress::from(vfn);
+        let mut cur_table = self.pdb_addr;
+
+        for &level in M::PDE_LEVELS {
+            let idx = M::level_index(va, level.as_index());
+            let install_addr = Self::entry_addr(cur_table, level, idx);
+
+            if level == M::DUAL_PDE_LEVEL {
+                // 128-bit dual PDE with big+small page table pointers.
+                let dpde = M::DualPde::read(window, install_addr)?;
+                if dpde.has_small() {
+                    cur_table = dpde.small_vram_address();
+                    continue;
+                }
+            } else {
+                // Regular 64-bit PDE.
+                let pde = M::Pde::read(window, install_addr)?;
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
+    pub(super) fn walk_to_pte_lookup(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
+        let mut window = mm.pramin().get_window()?;
+        self.walk_to_pte_lookup_with_window(&mut window, vfn)
+    }
+
+    /// Walk to PTE using a caller-provided PRAMIN window (lookup only).
+    pub(super) fn walk_to_pte_lookup_with_window(
+        &self,
+        window: &mut pramin::PraminWindow<'_>,
+        vfn: Vfn,
+    ) -> Result<WalkResult> {
+        match self.walk_pde_levels(window, vfn, |_| None)? {
+            WalkPdeResult::Complete { pte_table } => {
+                Self::read_pte_at_level(window, vfn, pte_table)
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
+    ) -> Result<WalkResult> {
+        let va = VirtualAddress::from(vfn);
+        let pte_level = M::PTE_LEVEL;
+        let pte_idx = M::level_index(va, pte_level.as_index());
+        let pte_addr = Self::entry_addr(pte_table, pte_level, pte_idx);
+        let pte = M::Pte::read(window, pte_addr)?;
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
+
+macro_rules! pt_walk_dispatch {
+    ($self:expr, $method:ident ( $($arg:expr),* $(,)? )) => {
+        match $self {
+            PtWalk::V2(inner) => inner.$method($($arg),*),
+            PtWalk::V3(inner) => inner.$method($($arg),*),
+        }
+    };
+}
+
+/// Page table walker dispatch.
+pub(in crate::mm) enum PtWalk {
+    /// MMU v2 (Turing/Ampere/Ada).
+    V2(PtWalkInner<MmuV2>),
+    /// MMU v3 (Hopper+).
+    V3(PtWalkInner<MmuV3>),
+}
+
+impl PtWalk {
+    /// Create a new page table walker for the given MMU version.
+    pub(in crate::mm) fn new(pdb_addr: VramAddress, version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(PtWalkInner::<MmuV2>::new(pdb_addr)),
+            MmuVersion::V3 => Self::V3(PtWalkInner::<MmuV3>::new(pdb_addr)),
+        }
+    }
+
+    /// Walk to PTE for lookup.
+    pub(in crate::mm) fn walk_to_pte(&self, mm: &GpuMm, vfn: Vfn) -> Result<WalkResult> {
+        pt_walk_dispatch!(self, walk_to_pte_lookup(mm, vfn))
+    }
+}
-- 
2.34.1

