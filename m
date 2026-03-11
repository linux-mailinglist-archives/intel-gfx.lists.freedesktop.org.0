Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOhSMQ66sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 749E3259E60
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56AF10E7A1;
	Wed, 11 Mar 2026 00:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="je4qHM1p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010033.outbound.protection.outlook.com [52.101.56.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559A410E7BC;
 Wed, 11 Mar 2026 00:40:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V40reofsZt49FN1pB1gDnF0w/hkDkEg7SUABmiMbnZZlA0IIy4KiQVD3AyNONvz432nj/v4bDVqIijbh1oBQLIiMyxtolUMmNt+G3yyQJ6ywGqaBEuEXa/Zw3p7YrbDJyDfgrS52Ao2CzQY62K2b80qAWRbqrk9YjfEjwAG84NPvfMf9ODifLY5uF7/IxmqbeJRiX2uusDfnqFPH3652q2uVuT2B0F5uXOlzUyTULIbr8T3QO4Ds0cmEOyr+XmoWzwiBUUYHw0bwruLl8n/zxeRaHWN+cYyDBUxbTtFHC8k3w9bpNBMLMVOd3xS9ZmHIEll+7fGjU2n/8sXzlPBlaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzjK1HE2+xYmFzXGBq9almiPZ4AI7Ok3/kgxvaSjwhw=;
 b=A9SwPrHWaDUgjlUHKrW+wi5CWDRFHtM16iSKU0brbInEygM/flAK+YgaPrw+2erENJPpv7hKnf0GviWwSsDxdw9+FW/DDA+vhXe8dSGJE/ZOkmpLtUoHcrR7FAJhYUc7W8oqh54UUD+355/Jaa91IHTQ++XVKAIJRHOsVz2q7vD7ZwghTjIelOnrU6Wd/JwCt+ZJsNQFOOiB0FLojnZL3+Nuw4LrhDD3CJdIeFvH9AkU4ESKrq/xfAyrVmR1k59B0vOcoUwL2/W/aoZy3EZaCJS//xcSfk/kLTQSsnBPmrE2h4oiKOxaoj4hEr8vYpHWjGHkTJJbddSDCitPj5vgdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GzjK1HE2+xYmFzXGBq9almiPZ4AI7Ok3/kgxvaSjwhw=;
 b=je4qHM1ppKhotnhCfAssl0JsGZSTA1k/9vDXqrgmzH/CQfFXoyYslqkNOAHHboHWIPcOsEjRNEzb9qcCc8k9CtkB7oirxiV3vXV+GmSTZoINhrOL8h/oyQxjVoWUvnxB4wAd9kp/W4P4ZjbAFOe/YScEjbx4Ak5yLFMwf7gTEw/I/TezSl+jDM15/UX3sgWI8ALraS8/n95YArPrXnsW0Z+gKLYyzzsuG+HGxtZedXYDLqK17w5muN7rmPPCR/UbGNpRLK0aJ1Dr2bcnCJbYpM3JawYurJ43xm2wTZWPB/5rUQXE6d1cdPW3V80kQ/WkxxgdXArWWba/ynequYqn1w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:32 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:32 +0000
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
Subject: [PATCH v9 06/23] gpu: nova-core: mm: Add support to use PRAMIN
 windows to write to VRAM
Date: Tue, 10 Mar 2026 20:39:51 -0400
Message-Id: <20260311004008.2208806-7-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL0PR0102CA0066.prod.exchangelabs.com
 (2603:10b6:208:25::43) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 11a6cd9a-af45-4096-e5ed-08de7f06ccd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: bSixwsuiwfkppodUi5qO2lAUHAHRA59VbxUfTh2AlVjgzBW8mziNEVbaRaUgW+EOFyfAEGBUbUM+ipfIxuqKBIaVIU47wc7WFRmaUAduBxKzLhduPxwB69tImBLE5AA4xTgRV6qk4Q4wV7OhjdsBYY4K3LvOI1l5brRwRvCLO66wifNs9X0XPx4CS2RmdHHwS4iW6uSwbgPWtOw5VrKANeZtpWjZdYsju+JfAWGhjetGxNeKqxxH8YNc4vgyt1qf7KnRAvSRV0pO8fOUc9YVnS2KgerGaFaXm1G/++w02PHlNtAOQzAj2DXYKTFM71E3j+LkqJc2tCxYQzoNafFWA3TvEpAy8cLk5NJjxvUOAtZmc1BL32sQ59fkm/356yvHaFvGy1GUxD70aHpGosDpM/Tsqkj/EaxnhECtHu6LiMhIhQgQ/fjhva1LwQTGvtF8YlLTz0Bm4i3ANwNuox0wW0RCtaBwr5INtfgvJIQdRqPyiGb0Sen4lPDF2iCXkZnUUsk+cvBhBq/6FkPB4qjPfUQ68HvflLUrluyn4LuuLnCZOnyg5xd7h5B4fRyPDR3sruCaINzdnYE9zXwXXWp/jHRDPL1ApR2BN4OrXUzXMyp4XymEMtQPR36/TTesunFHOwLesKFENOC+RoFaiacZGXCYp3p+pCjNMO4SKThclD228SeRBUdeZLymB9U6MkoTOlcuMH6rJV4trN5XXzTL3wvxlMfUV17U6mfsE0tZlVk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8ILNR3wxmt/rhXy/E8iTwuycKBlCwgLMmr8mGjBzZqgYmtabesaqldiYkuNM?=
 =?us-ascii?Q?Ubasft6B1N86+Qb5y7nwzH8BzDd/5ZmpexqsGfTCdnLeDQ6Gdk7y4c2J/1pq?=
 =?us-ascii?Q?RokhzlZOS37SHGhzw3JPlS40RcwJSYRgIMh01YliBXsngvmqRBMKmyyqSQxl?=
 =?us-ascii?Q?nGQnsJc1I9dAf45KfUrstm4Z8UFH8h3G09q7le1dnSWWARCNtTJUwCag2YGi?=
 =?us-ascii?Q?Lj1BQSg0a4CAVR1JDvBH5jlP+dLfIao5rzlD7KMSS0YKp8hmViTO+L0KfOl1?=
 =?us-ascii?Q?4CRASA+tKLBce2t3rV+jsnjftAtTAXhmgF+WCx1ExO+DK/r5JQ4PQxVO5EJi?=
 =?us-ascii?Q?9ic3acB+VxddtE8AVMhdOXgL3gS++DIN7Gbm7NOqr/uyaMjlGCQ6lvetWfGO?=
 =?us-ascii?Q?NfaQXZvxDuz7VA4urGmUaF/KYp3/AOxn8WCMux4/JQoX55JAaiR/Fz2bLMCp?=
 =?us-ascii?Q?xnoibAYddCpKzWgjkDL486+3fotUtTXKJKIiik/RXnkMl20KlkzciGw2VKmM?=
 =?us-ascii?Q?BhbgxqOXRJvHrw3QoA6gN8FiK1wRoaopwgG0ADnaerrYOkDkLB37kKNyvArx?=
 =?us-ascii?Q?dv9PvLRqz89FNmOA0b34booL6FDT2M2N1BfywPnefMXoXmNtdD7Wr9itChBy?=
 =?us-ascii?Q?TroqAKzejvw5GPengY4upqHWOBE+DyCgOPG3Od+btz1HmjsASR6qAJCLPpOf?=
 =?us-ascii?Q?OGKn9fUm5hqzmUfAlLYIXmu3CSOw/kpfXl1TqOHWsvtay5oklalTTwBxQB5Z?=
 =?us-ascii?Q?O9qrBoHsGWre+DmqUkSFHHZt2IBAjZlLaM4FQ/3fMiSCULNucNV5Rv8iV3s8?=
 =?us-ascii?Q?Q/YMjJqR3g+WLFUKEynQKIcceOo+N5UrPvYoYn3FP6DMuSQ0GTuRv+fX3G0g?=
 =?us-ascii?Q?JuyrybDnUFDcyR2dSFEdGI1ntEvyOjt9IP3ReEoMz7RkAmSVxqPz7i5W9bAw?=
 =?us-ascii?Q?YX0R3/x/2OoqjtzIl7YcdiYMrtFnRkcIq+PntfksBuC5eAPkLSJFT5Mwj7oA?=
 =?us-ascii?Q?dlqasAuTCoRx1h0X1UFBi7MXRW9EeWSoPeyElDYPAARGpUETz4T+1O5SDl4s?=
 =?us-ascii?Q?uDc6H2yAH47bYUrX3RrYm9pDq6Oz7J5LYZAc4EYhIcceVWb+vVmLsyBwXR8w?=
 =?us-ascii?Q?w/IhaQ2kGiX9YeIsi+tCKMzRVzF6mzvAIcynBoCEZLvQAhJDSEzqzFrjJosq?=
 =?us-ascii?Q?cPkH6Fi9hXMZAlOEtS1HKQr5J6RohT3HBsii2ehoFWpK+sz8LU5nhAeeOZDi?=
 =?us-ascii?Q?BK4hYRF8/kGRpY5I4H983Ra2804CNJJH/pG+XkEDsPoH2xa1AZOA0OFpCciq?=
 =?us-ascii?Q?Z7U5hNFc6JvgVW9UrRaQ6PYcxbFRCrxh8kKDdWgUh+DrQBH+asVAYSp0iCW+?=
 =?us-ascii?Q?0V6c89/4d7V2ajKxVHOc1D/cvxazm6mOord57bwiVzHaf5WUAc2/211E/u3r?=
 =?us-ascii?Q?rE9NAB93nzjglXRIkNiaYKOFNZ8U/F2HBDyFDBMakd1Ruux3LPXYubyQ2aiR?=
 =?us-ascii?Q?Vit2kTu3A0aWafDTP5vXINOFndFrJD8x1ZvDsnD69bIhp/7dEv47cQWYh83S?=
 =?us-ascii?Q?QZB8ujhLSzn/cXmpHsx8v8T+fkH7o0x2TEU2CPeikjrxim9n6uKSn2/V+Jok?=
 =?us-ascii?Q?WVL4vH7Go7+hjw3MDeJis9l/JDTB/NBhJLl7Mu5DMfNIsSL7b8/tRNYWYAMO?=
 =?us-ascii?Q?n3bZ281Dy7qoWimBcQwwEfPtfS6pVdyYDTJgdGThH2o1+LfTH7rRrQ1SIc1w?=
 =?us-ascii?Q?i7SmCZK9PQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a6cd9a-af45-4096-e5ed-08de7f06ccd6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:31.8897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gtzt6FqGR/2Nv9DDgx6kWZZN11Ya+2fsQT4F5R4Av2ToptBvKBABROeYZ01YH/8K+cJL06wLzVvqDBZFt7OMyQ==
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
X-Rspamd-Queue-Id: 749E3259E60
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

PRAMIN apertures are a crucial mechanism to direct read/write to VRAM.
Add support for the same.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs        |   5 +
 drivers/gpu/nova-core/mm/pramin.rs | 293 +++++++++++++++++++++++++++++
 drivers/gpu/nova-core/nova_core.rs |   1 +
 drivers/gpu/nova-core/regs.rs      |   6 +
 4 files changed, 305 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm.rs
 create mode 100644 drivers/gpu/nova-core/mm/pramin.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
new file mode 100644
index 000000000000..7a5dd4220c67
--- /dev/null
+++ b/drivers/gpu/nova-core/mm.rs
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Memory management subsystems for nova-core.
+
+pub(crate) mod pramin;
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
new file mode 100644
index 000000000000..707794f49add
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Direct VRAM access through the PRAMIN aperture.
+//!
+//! PRAMIN provides a 1MB sliding window into VRAM through BAR0, allowing the CPU to access
+//! video memory directly. Access is managed through a two-level API:
+//!
+//! - [`Pramin`]: The parent object that owns the BAR0 reference and synchronization lock.
+//! - [`PraminWindow`]: A guard object that holds exclusive PRAMIN access for its lifetime.
+//!
+//! The PRAMIN aperture is a 1MB region at BAR0 + 0x700000 for all GPUs. The window base is
+//! controlled by the `NV_PBUS_BAR0_WINDOW` register and is 64KB aligned.
+//!
+//! # Examples
+//!
+//! ## Basic read/write
+//!
+//! ```no_run
+//! use crate::driver::Bar0;
+//! use crate::mm::pramin;
+//! use kernel::devres::Devres;
+//! use kernel::prelude::*;
+//! use kernel::sync::Arc;
+//!
+//! fn example(devres_bar: Arc<Devres<Bar0>>, vram_region: core::ops::Range<u64>) -> Result<()> {
+//!     let pramin = Arc::pin_init(pramin::Pramin::new(devres_bar, vram_region)?, GFP_KERNEL)?;
+//!     let mut window = pramin.window()?;
+//!
+//!     // Write and read back.
+//!     window.try_write32(0x100, 0xDEADBEEF)?;
+//!     let val = window.try_read32(0x100)?;
+//!     assert_eq!(val, 0xDEADBEEF);
+//!
+//!     Ok(())
+//! }
+//! ```
+//!
+//! ## Auto-repositioning across VRAM regions
+//!
+//! ```no_run
+//! use crate::driver::Bar0;
+//! use crate::mm::pramin;
+//! use kernel::devres::Devres;
+//! use kernel::prelude::*;
+//! use kernel::sync::Arc;
+//!
+//! fn example(devres_bar: Arc<Devres<Bar0>>, vram_region: core::ops::Range<u64>) -> Result<()> {
+//!     let pramin = Arc::pin_init(pramin::Pramin::new(devres_bar, vram_region)?, GFP_KERNEL)?;
+//!     let mut window = pramin.window()?;
+//!
+//!     // Access first 1MB region.
+//!     window.try_write32(0x100, 0x11111111)?;
+//!
+//!     // Access at 2MB - window auto-repositions.
+//!     window.try_write32(0x200000, 0x22222222)?;
+//!
+//!     // Back to first region - window repositions again.
+//!     let val = window.try_read32(0x100)?;
+//!     assert_eq!(val, 0x11111111);
+//!
+//!     Ok(())
+//! }
+//! ```
+
+#![expect(unused)]
+
+use core::ops::Range;
+
+use crate::{
+    driver::Bar0,
+    num::IntoSafeCast,
+    regs, //
+};
+
+use kernel::{
+    devres::Devres,
+    io::Io,
+    new_mutex,
+    prelude::*,
+    revocable::RevocableGuard,
+    sizes::{
+        SZ_1M,
+        SZ_64K, //
+    },
+    sync::{
+        lock::mutex::MutexGuard,
+        Arc,
+        Mutex, //
+    },
+};
+
+/// Target memory type for the BAR0 window register.
+///
+/// Only VRAM is supported; Hopper+ GPUs do not support other targets.
+#[repr(u8)]
+#[derive(Debug, Default)]
+pub(crate) enum Bar0WindowTarget {
+    /// Video RAM (GPU framebuffer memory).
+    #[default]
+    Vram = 0,
+}
+
+impl From<Bar0WindowTarget> for u8 {
+    fn from(value: Bar0WindowTarget) -> Self {
+        value as u8
+    }
+}
+
+impl TryFrom<u8> for Bar0WindowTarget {
+    type Error = Error;
+
+    fn try_from(value: u8) -> Result<Self> {
+        match value {
+            0 => Ok(Self::Vram),
+            _ => Err(EINVAL),
+        }
+    }
+}
+
+/// PRAMIN aperture base offset in BAR0.
+const PRAMIN_BASE: usize = 0x700000;
+
+/// PRAMIN aperture size (1MB).
+const PRAMIN_SIZE: usize = SZ_1M;
+
+/// Generate a PRAMIN read accessor.
+macro_rules! define_pramin_read {
+    ($name:ident, $ty:ty) => {
+        #[doc = concat!("Read a `", stringify!($ty), "` from VRAM at the given offset.")]
+        pub(crate) fn $name(&mut self, vram_offset: usize) -> Result<$ty> {
+            let (bar_offset, new_base) =
+                self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
+
+            if let Some(base) = new_base {
+                Self::write_window_base(&self.bar, base);
+                *self.state = base;
+            }
+            self.bar.$name(bar_offset)
+        }
+    };
+}
+
+/// Generate a PRAMIN write accessor.
+macro_rules! define_pramin_write {
+    ($name:ident, $ty:ty) => {
+        #[doc = concat!("Write a `", stringify!($ty), "` to VRAM at the given offset.")]
+        pub(crate) fn $name(&mut self, vram_offset: usize, value: $ty) -> Result {
+            let (bar_offset, new_base) =
+                self.compute_window(vram_offset, ::core::mem::size_of::<$ty>())?;
+
+            if let Some(base) = new_base {
+                Self::write_window_base(&self.bar, base);
+                *self.state = base;
+            }
+            self.bar.$name(value, bar_offset)
+        }
+    };
+}
+
+/// PRAMIN aperture manager.
+///
+/// Call [`Pramin::window()`] to acquire exclusive PRAMIN access.
+#[pin_data]
+pub(crate) struct Pramin {
+    bar: Arc<Devres<Bar0>>,
+    /// Valid VRAM region. Accesses outside this range are rejected.
+    vram_region: Range<u64>,
+    /// PRAMIN aperture state, protected by a mutex.
+    ///
+    /// # Safety
+    ///
+    /// This lock is acquired during the DMA fence signaling critical path.
+    /// It must NEVER be held across any reclaimable CPU memory / allocations
+    /// (`GFP_KERNEL`), because the memory reclaim path can call
+    /// `dma_fence_wait()`, which would deadlock with this lock held.
+    #[pin]
+    state: Mutex<u64>,
+}
+
+impl Pramin {
+    /// Create a pin-initializer for PRAMIN.
+    ///
+    /// `vram_region` specifies the valid VRAM address range.
+    pub(crate) fn new(
+        bar: Arc<Devres<Bar0>>,
+        vram_region: Range<u64>,
+    ) -> Result<impl PinInit<Self>> {
+        let bar_access = bar.try_access().ok_or(ENODEV)?;
+        let current_base = Self::read_window_base(&bar_access);
+
+        Ok(pin_init!(Self {
+            bar,
+            vram_region,
+            state <- new_mutex!(current_base, "pramin_state"),
+        }))
+    }
+
+    /// Acquire exclusive PRAMIN access.
+    ///
+    /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
+    /// The [`PraminWindow`] is exclusive and only one can exist at a time.
+    pub(crate) fn window(&self) -> Result<PraminWindow<'_>> {
+        let bar = self.bar.try_access().ok_or(ENODEV)?;
+        let state = self.state.lock();
+        Ok(PraminWindow {
+            bar,
+            vram_region: self.vram_region.clone(),
+            state,
+        })
+    }
+
+    /// Read the current window base from the BAR0_WINDOW register.
+    fn read_window_base(bar: &Bar0) -> u64 {
+        let reg = regs::NV_PBUS_BAR0_WINDOW::read(bar);
+        // TODO: Convert to Bounded<u64, 40> when available.
+        u64::from(reg.window_base()) << 16
+    }
+}
+
+/// PRAMIN window guard for direct VRAM access.
+///
+/// This guard holds exclusive access to the PRAMIN aperture. The window auto-repositions
+/// when accessing VRAM offsets outside the current 1MB range.
+///
+/// Only one [`PraminWindow`] can exist at a time per [`Pramin`] instance (enforced by the
+/// internal `MutexGuard`).
+pub(crate) struct PraminWindow<'a> {
+    bar: RevocableGuard<'a, Bar0>,
+    vram_region: Range<u64>,
+    state: MutexGuard<'a, u64>,
+}
+
+impl PraminWindow<'_> {
+    /// Write a new window base to the BAR0_WINDOW register.
+    fn write_window_base(bar: &Bar0, base: u64) {
+        // CAST: The caller (compute_window) validates that base is within the
+        // VRAM region which is always <= 40 bits. After >> 16, a 40-bit base
+        // becomes 24 bits, which fits in u32.
+        regs::NV_PBUS_BAR0_WINDOW::default()
+            .set_target(Bar0WindowTarget::Vram)
+            .set_window_base((base >> 16) as u32)
+            .write(bar);
+    }
+
+    /// Compute window parameters for a VRAM access.
+    ///
+    /// Returns (`bar_offset`, `new_base`) where:
+    /// - `bar_offset`: The BAR0 offset to use for the access.
+    /// - `new_base`: `Some(base)` if window needs repositioning, `None` otherwise.
+    fn compute_window(
+        &self,
+        vram_offset: usize,
+        access_size: usize,
+    ) -> Result<(usize, Option<u64>)> {
+        // Validate VRAM offset is within the valid VRAM region.
+        let vram_addr = vram_offset as u64;
+        let end_addr = vram_addr.checked_add(access_size as u64).ok_or(EINVAL)?;
+        if vram_addr < self.vram_region.start || end_addr > self.vram_region.end {
+            return Err(EINVAL);
+        }
+
+        // Check if access fits within the current 1MB window.
+        let current_base = *self.state;
+        if vram_addr >= current_base {
+            let offset_in_window: usize = (vram_addr - current_base).into_safe_cast();
+            if offset_in_window + access_size <= PRAMIN_SIZE {
+                return Ok((PRAMIN_BASE + offset_in_window, None));
+            }
+        }
+
+        // Access doesn't fit in current window - reposition.
+        // Hardware requires 64KB alignment for the window base register.
+        let needed_base = vram_addr & !(SZ_64K as u64 - 1);
+        let offset_in_window: usize = (vram_addr - needed_base).into_safe_cast();
+
+        // Verify access fits in the 1MB window from the new base.
+        if offset_in_window + access_size > PRAMIN_SIZE {
+            return Err(EINVAL);
+        }
+
+        Ok((PRAMIN_BASE + offset_in_window, Some(needed_base)))
+    }
+
+    define_pramin_read!(try_read8, u8);
+    define_pramin_read!(try_read16, u16);
+    define_pramin_read!(try_read32, u32);
+    define_pramin_read!(try_read64, u64);
+
+    define_pramin_write!(try_write8, u8);
+    define_pramin_write!(try_write16, u16);
+    define_pramin_write!(try_write32, u32);
+    define_pramin_write!(try_write64, u64);
+}
diff --git a/drivers/gpu/nova-core/nova_core.rs b/drivers/gpu/nova-core/nova_core.rs
index b5caf1044697..c5a78d6388e5 100644
--- a/drivers/gpu/nova-core/nova_core.rs
+++ b/drivers/gpu/nova-core/nova_core.rs
@@ -13,6 +13,7 @@
 mod gfw;
 mod gpu;
 mod gsp;
+mod mm;
 mod num;
 mod regs;
 mod sbuffer;
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index ea0d32f5396c..8ec35b8c4b28 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -32,6 +32,7 @@
         Architecture,
         Chipset, //
     },
+    mm::pramin::Bar0WindowTarget,
     num::FromSafeCast,
 };
 
@@ -102,6 +103,11 @@ fn fmt(&self, f: &mut kernel::fmt::Formatter<'_>) -> kernel::fmt::Result {
     31:16   frts_err_code as u16;
 });
 
+register!(NV_PBUS_BAR0_WINDOW @ 0x00001700, "BAR0 window control for PRAMIN access" {
+    25:24   target as u8 ?=> Bar0WindowTarget;
+    23:0    window_base as u32, "Window base address (bits 39:16 of FB addr)";
+});
+
 // PFB
 
 // The following two registers together hold the physical system memory address that is used by the
-- 
2.34.1

