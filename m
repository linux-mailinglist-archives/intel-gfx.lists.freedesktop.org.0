Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCNXIsr932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5B1407E9F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FE510E772;
	Wed, 15 Apr 2026 21:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ErYsYKbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010056.outbound.protection.outlook.com [52.101.46.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413EA10E76F;
 Wed, 15 Apr 2026 21:06:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SIC+H06auRgnAVQ5rNYTapbCHGnnc5Nko9z8ldnkchsUlie6Eh/u8vNg+PuzOpWa4siOtJeltbd3KFtbzQrZdgczhurwYVJptylV9D0QtXjExzLRTF5pTJuABSskrGxRmoV+sQF4GiOcE+34a/EZGyr9MxIa1a7u1LVHAb+b5XtNbruayOB/Q2PL191N8jowFYtBHL2yRKR5LEUNfb9PZRGHUoXur9PgGO0tosF94fD3SVAUhEP9iCx/15DtRpBQrPHzLP1hYgRg6a1/voWW+rBJ5l07TzMBLKw1qXlZNUobClQr46wrtcEVqnqgAH05x1/jyT9L2RvsfghxiEuD0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mTsPJpjCt9AO1iOWluO2YR/lmh8ZNCKSqxBURU6tKxU=;
 b=Aihiq/0z0dhqazaiSKr4bOgaJs3hk8uoIDDEs6s71NWZEEHiiN//mXelHFHWxmsPqqB88Tdteo9o7tez6eVbn6aqTLMt3GfCabxEts02gjoiM5Zcee3PKm8fGgLLv4yxMOAedKLsZPYp9eOcVvVVuZkMEDtmuF75Wm2Hpm8uwe66C7UUL3gxZ5Fdu/92kpO6bjPQutyGc76kskn6PCZUtzGSNtIzLWaZKQH2Ag8iy+DlJTHO18e2JQ1B0LOB2jt9cs/QkF9FQNtbBv+4liu2W4knovdQm6IWh3YCDIIBnJmpOVhK7vLabStPEFVMxwSGIz/08OZqAgLQwHczK7ZWsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mTsPJpjCt9AO1iOWluO2YR/lmh8ZNCKSqxBURU6tKxU=;
 b=ErYsYKbUmjwQ44c4E4WSETlOa9/PuGM1sSMf+GcMH9kxg6DoNYcMOn6VI3W8pURjQKyyQ3TTNsabgDczuZ/UCdjo6sLvwQZoQS+qEjJfQQqF/itHrjmsPDKK301nGKkXvK1m1/xOX0aw0L79Md7yzBKLvI1WgAmWUIySznHinTTFwZXCQCoouY0/dCakStgUIm3iq4xt/MqVwt3AlwvJRUMBvvGgt6lai1cnFQzVem2TSRuJCpzAd83Bo9c0J/DhJUhRZl4BM9rm1T0hn9Rr3waGys7wiMJsOXrKvGbWV6JtlusA/3x/dfNsEuVtiEiOIA4CD29QojHCY/NNDRiWWA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:07 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:07 +0000
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
Subject: [PATCH v11 05/20] docs: gpu: nova-core: Document the PRAMIN aperture
 mechanism
Date: Wed, 15 Apr 2026 17:05:32 -0400
Message-Id: <20260415210548.3776595-5-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR20CA0009.namprd20.prod.outlook.com
 (2603:10b6:930:3::22) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ff7a949-00af-4888-4873-08de9b32cfe5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: cYV5Z4aDNjH7nWkkbFKHMXyR0UiDP+lA9E8sKAjFjDpIBtApOit+CjM9tanYxf/42t2AhoqWLatxWLYxX6IsXe3aTAP1Uw1Yov/RmCNSgViyaEdE4eRtGLw9sPNTxF8RbR7zqqVjp0EXPi6VBLeW5nlDIZ7rKVHk2EXHGjzHf9WFA+v7wrW+7ouWwl8XwrkjJFyxpZes4RycvIyKifQ3pOR+UEWhfOQqmIeJ1b68S1EWWPg/Y95njKcPMZLKAx6tTCu8hSThqxWkVXsSIX2dQDfKyjj5Ub2MiUbLwwDT6j1SMsiQ+MEh2vYxQ1dDt3bRmA3vWJKomKx1s4QB9zzbKhusoyAx9yR7FLYtbKm9iMssW01JOAzMbLfasIfdNvJxPCAD9TZeRgOOjl/10ZbET0h+WnyqP5jyuMOefk0tKYWoM3K9nT7drmhftuy9diEiZ/qXKGExL3sjoqDb5pseBrW+i/LKoLNlVtNKOMfq5MSjG2edsDBQlKINuGycON0a/gcInNIEpMeFm6Zctldsp2zmlMDqv4IeVtCd36UTY5yyop4t/qAJZKfYTJW5Zb5By2Vedg/SHPwrgsTFFPQxJ8TKKZguLqAe7WihRk2vpuoctb49xHNgRKblOFmL/spZBFacCZelwty5+49B+EsqfatW5o3XvA3UKEA+oEL/tQxOzjAgMZtLWb0/Kbr09NzP1+O/a8auOT0dwr9K+6exna6XCK6LTRSOP1aZFFmddIg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?As5d8m6zDkNIWwPDZYOGZyBTl05XOB+67jXyNJkunfO8p88uu95glasKouAG?=
 =?us-ascii?Q?3fSwugZOlJESpKuTmj7iBrb2Fg7ub7DyCxFh3rpfvIF3yhYNhyuTsMoBRlc/?=
 =?us-ascii?Q?24gLNi/HaYV1acknZguU2ALrKvU6cyyZje1LI/7Yd2OXKO3op26/ldlltYhT?=
 =?us-ascii?Q?i9gQe6sKZuTDpI7q97avPVGlqbSwTPeFQ1YcbZS5VNV+nODTZi5WfQIptB4p?=
 =?us-ascii?Q?wdbuKB0K0fCo2jmdA6KkdPS+US1AjWQ3Ri4J7YqYYOFT7TQZm8QrGZbM682b?=
 =?us-ascii?Q?HMJ6bSDpj0PqMQJWWsZE0G2Ipg/1jiPIfb565WmnEH8/Zdl31ZMRW8DJGQIv?=
 =?us-ascii?Q?XfzrMIcK7ehFzQquVC9pjPTyB/W1cBd8S37VjeDSbYFhm5VuMGGGs9L19d7Z?=
 =?us-ascii?Q?YLU5CuhuzpoU0FJMHA4eStYceSfPBIxliJkoEL1hN7YJXFsleK4MCyUck7ON?=
 =?us-ascii?Q?ULj3QjE4a8wgnfn8kUZ/fyZ29FTVzQO24nGLZdeevaEtyMai7FH62dgfAQ7O?=
 =?us-ascii?Q?QT/oKPZUukEouAHiK5nrEs+pEUw/fg8RbbIAVrUnBU4XLQMK5fCSoNu6qwOv?=
 =?us-ascii?Q?+sDdDjb6NRccsjFPRPQIhdJBZAXxxJKHSXof7L6HfwqwnXvKxOFr58B0EbOB?=
 =?us-ascii?Q?qQP51zFzrrKhWamgXV1TxvXjvgEfVtn2NPLoPfznFRWt9jYCTFAWicaXVmyW?=
 =?us-ascii?Q?NdCRCxRRF6WTqKOiBi1qByVS5pGXwVglDPeHWRITMYcQBb50Moh4pF+jrEsc?=
 =?us-ascii?Q?z826nplzB9JWGUMAffHHuBZW6zi/zvC6vhLAsdLIADbzWDT6cBW6cIlx0UfL?=
 =?us-ascii?Q?B6jePmj6580mJrQEY7yuTp4kfYIK9y47YjTCC2LbyqkiHKVS2N10ooq4y7mr?=
 =?us-ascii?Q?dasgyJJmpdTK2n9jxz10ubmaTm0ZncS37cP96yDHsdYEq5Fy4HHLpS+L4PeB?=
 =?us-ascii?Q?2JCMWRpsz3J3rKmhGabHORG15pCm3dSX5KyzirSR+/xtq6sIKU5gAzGKY+p9?=
 =?us-ascii?Q?bQlNSeYnBX5e9zgx0jWMh5mqF6yaUcEjgfp/bOae5M6rllBDFbHQUtqfR6nj?=
 =?us-ascii?Q?4howyeqRXjWxsdCmmW92x+C2oQpKfC8vudUvP6GB+3e0cIe6/6G4lEM0sMLM?=
 =?us-ascii?Q?ddkx2Z9s+f2WtJUvc7WxpxAMxaHwCyK/f+uOnu/9Lc6ormOW6YovKozjwhFO?=
 =?us-ascii?Q?28WrySyn4Cu1cPMQkP+DhYJ4kXHBr/VBxG6pcXTEjZUTRh+8wnh19Nwhw9VE?=
 =?us-ascii?Q?H/jK6HY1O6awg6yfUtnfzRD43tZbccZnrorLkqBHLs0o46Qpny76weOsQyKG?=
 =?us-ascii?Q?Ioypr53tOvgu0GtZY3UycnuF/sDmokPTkR78LcB8bEcm9utOUvKjDTEfHP21?=
 =?us-ascii?Q?LaG/p1OPwN0lO+poNlhndVaGNW4+9wM76KL8fDNrp59iAfNzqWAVnl0hzMKf?=
 =?us-ascii?Q?WL//F+0hIiaqKiP4ZrYH0zbM2pBsApXKhKyAbh1SgbZXElzipSf2/eqNWpAF?=
 =?us-ascii?Q?LzqencomF+/w/QXIZurw+bxfUUZPgDr/Cs4aJmtWoU3SPL0mPLju/6B40bUr?=
 =?us-ascii?Q?WedPkPwPyptvDiKtTLgTKJlaTBW5l1/c4p4INg4UF0Fm4bEybjGPF7n+rUBO?=
 =?us-ascii?Q?zaCiMAL1Kwd1r8R2TZL1Jw0bTNX7GwftOhFujS7aDv7EJhjKS4ShMIfrEBN0?=
 =?us-ascii?Q?jWNgK+w6GoDmSkmiYU1wpA6PmQTmRFDlUvbcwvyMcZTU1KWpkc1GsFtjfdhf?=
 =?us-ascii?Q?HM4whob1CA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff7a949-00af-4888-4873-08de9b32cfe5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:07.2951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /yZqkAg5K7dd05ZRnvih871rRpVs7AOjXROkbOzqlMZAMu/t7ofDLI0FY0583LRqJaSdJLvW8mRwSoNuBpm63A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9177
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3B5B1407E9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add documentation for the PRAMIN aperture mechanism used by nova-core
for direct VRAM access.

Nova only uses TARGET=VRAM for VRAM access. The SYS_MEM target values
are documented for completeness but not used by the driver.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 Documentation/gpu/nova/core/pramin.rst | 123 +++++++++++++++++++++++++
 Documentation/gpu/nova/index.rst       |   1 +
 2 files changed, 124 insertions(+)
 create mode 100644 Documentation/gpu/nova/core/pramin.rst

diff --git a/Documentation/gpu/nova/core/pramin.rst b/Documentation/gpu/nova/core/pramin.rst
new file mode 100644
index 000000000000..3e8adbabeb74
--- /dev/null
+++ b/Documentation/gpu/nova/core/pramin.rst
@@ -0,0 +1,123 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=========================
+PRAMIN aperture mechanism
+=========================
+
+.. note::
+   The following description is approximate and current as of the Ampere family.
+   It may change for future generations and is intended to assist in understanding
+   the driver code.
+
+Introduction
+============
+
+PRAMIN is a hardware aperture mechanism that provides CPU access to GPU Video RAM (VRAM) before
+the GPU's Memory Management Unit (MMU) and page tables are initialized. This 1MB sliding window,
+located at a fixed offset within BAR0, is essential for setting up page tables and other critical
+GPU data structures without relying on the GPU's MMU.
+
+Architecture Overview
+=====================
+
+The PRAMIN aperture mechanism is logically implemented by the GPU's PBUS (PCIe Bus Controller Unit)
+and provides a CPU-accessible window into VRAM through the PCIe interface::
+
+    +-----------------+    PCIe     +------------------------------+
+    |      CPU        |<----------->|           GPU                |
+    +-----------------+             |                              |
+                                    |  +----------------------+    |
+                                    |  |       PBUS           |    |
+                                    |  |  (Bus Controller)    |    |
+                                    |  |                      |    |
+                                    |  |  +--------------+<------------ (window starts at
+                                    |  |  |   PRAMIN     |    |    |     BAR0 + 0x700000)
+                                    |  |  |   Window     |    |    |
+                                    |  |  |   (1MB)      |    |    |
+                                    |  |  +--------------+    |    |
+                                    |  |         |            |    |
+                                    |  +---------|------------+    |
+                                    |            |                 |
+                                    |            v                 |
+                                    |  +----------------------+<------------ (Program PRAMIN to any
+                                    |  |       VRAM           |    |    64KB-aligned VRAM boundary)
+                                    |  |    (Several GBs)     |    |
+                                    |  |                      |    |
+                                    |  |  FB[0x000000000000]  |    |
+                                    |  |          ...         |    |
+                                    |  |  FB[0x7FFFFFFFFFF]   |    |
+                                    |  +----------------------+    |
+                                    +------------------------------+
+
+PBUS (PCIe Bus Controller) is responsible for, among other things, handling MMIO
+accesses to the BAR registers.
+
+PRAMIN Window Operation
+=======================
+
+The PRAMIN window provides a 1MB sliding aperture that can be repositioned over
+the entire VRAM address space using the ``NV_PBUS_BAR0_WINDOW`` register.
+
+Window Control Mechanism
+-------------------------
+
+::
+
+    NV_PBUS_BAR0_WINDOW Register (0x1700):
+    +-------+--------+--------------------------------------+
+    | 31:26 | 25:24  |               23:0                   |
+    | RSVD  | TARGET |            BASE_ADDR                 |
+    |       |        |        (bits 39:16 of VRAM address)  |
+    +-------+--------+--------------------------------------+
+
+    The 24-bit BASE_ADDR field encodes bits [39:16] of the target VRAM address,
+    providing 40-bit (1TB) address space coverage with 64KB alignment.
+
+    TARGET field (bits 25:24):
+    - 0x0: VRAM (Video Memory)
+    - 0x1: SYS_MEM_COH (Coherent System Memory)
+    - 0x2: SYS_MEM_NONCOH (Non-coherent System Memory)
+    - 0x3: Reserved
+
+.. note::
+   Nova only uses TARGET=VRAM (0x0) for video memory access. The SYS_MEM
+   target values are documented here for hardware completeness but are
+   not used by the driver.
+
+64KB Alignment Requirement
+---------------------------
+
+The PRAMIN window must be aligned to 64KB boundaries in VRAM. This is enforced
+by the ``BASE_ADDR`` field representing bits [39:16] of the target address::
+
+    VRAM Address Calculation:
+    actual_vram_addr = (BASE_ADDR << 16) + pramin_offset
+    Where:
+    - BASE_ADDR: 24-bit value from NV_PBUS_BAR0_WINDOW[23:0]
+    - pramin_offset: 20-bit offset within the PRAMIN window [0x00000-0xFFFFF]
+
+    Example Window Positioning:
+    +---------------------------------------------------------+
+    |                    VRAM Space                           |
+    |                                                         |
+    |  0x000000000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x0000FFFFF  +-----------------+                       |
+    |                                                         |
+    |       |              ^                                  |
+    |       |              | Window can slide                 |
+    |       v              | to any 64KB-aligned boundary     |
+    |                                                         |
+    |  0x123400000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x1234FFFFF  +-----------------+                       |
+    |                                                         |
+    |                       ...                               |
+    |                                                         |
+    |  0x7FFFF0000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x7FFFFFFFF  +-----------------+                       |
+    +---------------------------------------------------------+
diff --git a/Documentation/gpu/nova/index.rst b/Documentation/gpu/nova/index.rst
index e39cb3163581..b8254b1ffe2a 100644
--- a/Documentation/gpu/nova/index.rst
+++ b/Documentation/gpu/nova/index.rst
@@ -32,3 +32,4 @@ vGPU manager VFIO driver and the nova-drm driver.
    core/devinit
    core/fwsec
    core/falcon
+   core/pramin
-- 
2.34.1

