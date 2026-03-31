Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LabE9w6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0483719B4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F2310EBB3;
	Tue, 31 Mar 2026 21:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="hp6MZ/4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012057.outbound.protection.outlook.com [40.107.209.57])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEE310EBA7;
 Tue, 31 Mar 2026 21:21:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AtWWnIoNpRRcL5nNVmkT5QO2mRyXJHL7T9vFZuOm+3U/G+dTr9L5Q/l/SOo/3bWhKvn44acSqUxfzrN5myKnNFIaNWblh7vZY6wBLR2nM3JNFXOWaXo7LfmMMBIR8Ha7wvJD1D+ebMSJDByGfXoPnhq6w41CnA4jjCElonvY48ZzeaKzXmI6LYMfElUxYF8Cswgq//aQO//zot56JzqhGpAYc3mSOwFDMS5FupX5EXDI06CgzHeWB6mJ3vrZXEVttCeRY6dZ32ent6dap5ojuSLMW+pKAn+GZHjgqf1w/P2q/QhlyQcjPXNVb5DBPwydpc9GITNUI7Y0r6UILhuafw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fWGt3r56J6sMvXi1lF3h+KXTZZCZll5j/4J7uzn+ekk=;
 b=qljTg14Ew9I+SOOFSGfSv7Xk6cdElH9FDXLBP0+gTF85BLe0ClKMdovWj0YvDQCZgx3d5xSccUO2sy6fWWAsYEK/EWXggnxI2d5XudmiSVEmtPOxSSYu1QkCutTRxgjsrEeKEwDcko7AVG9o5ZKVt+G0QTHN6ZmefSJx8x83/wq0E4usNZ0RQ9+5lymHrgdXb0DmxxAc+KNfbxzN8aUfYgnh4TrJPWYYTD6sDxCFriqWo0uKa6AQQ29OMrQkXP5peJUT/7nnoewqXPUPKP19NoL425DFcylp5RMrQj7f60HbFGO7xHSBswX0msBno1LSRoMJOxk5Y18TVro31wELiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fWGt3r56J6sMvXi1lF3h+KXTZZCZll5j/4J7uzn+ekk=;
 b=hp6MZ/4MetguZQ7/9PdfjONyoEZdxNVm+FwLeo/iOceKIJsgHGGyd+YDEj5tVx8aX3OW1UBkRFAd3rWCwz62hFMXERm/av1nCY3Ue36a6D8v2LrKHgnGTSRm7gCIpbIz01hBstHufC84SHfWF33fp+Q++Kvca42SFIhLDc/LAn8VuGxjjMPvIPZaEYQtknx0juxDxj8VNQM1g1HO4Rpgsy0Fk/Wz/ca44IMfok415m1xLn14fJABsjyNMAELSHtPszBo9LUXZoLFEgF02LX3hh4bGPsDSPUyHZk0dRbDrrF0BIz5SZAbW4eDDwV5H/U2figRYSyQxAP2SiojHM1l+g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:21 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:21 +0000
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
Subject: [PATCH v10 09/21] gpu: nova-core: mm: Add common types for all page
 table formats
Date: Tue, 31 Mar 2026 17:20:36 -0400
Message-Id: <20260331212048.2229260-10-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR01CA0056.prod.exchangelabs.com (2603:10b6:208:23f::25)
 To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: b8ef9cbf-1e38-4b51-7aea-08de8f6b7469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: yNwgNnsfjNLf48jZEjBG6fH8mLR6YPOXZnFgw5D/n6oxueOUWQKdOpNkYggu6YVhlpiml8TEOTjVKnNU2vId/NmKmo7KyYIi3QeYOHLAVFhHtyyuoBHgn//VgLaV7eDGSEzhu4caDKDdbFQueI5FyqOwV/p7LCdBWAoxMX3PCtEpK4unm8RaeiwYqulkUHGi04IrxTF0tQTNvhw3WUY8wQRG6gTvBCVk9EPdPPj5/L5vsM+kCqx/TKpJ6VX6e8BT5ABNGeOnipU4flXoUIS0ORF4vNIg9Ee9GphI1UgcjAJhyyxnxi+zDvY9m6ejijZwHwX9a93ETgdqlGfnzFugar0fr1tBgg+yg7tkzYi9F+l97Z3f6gXx/WdBctpNmC9s9sU0ARDPlwMqOo8PjaczNoE7+oxmdVv1+QQRe9EMLuP4EBYA8VoRvy+DuLNBKwC779/Xh+TNY4Epklk92DwDwM3Yj5vJK3nRs0BUJLOB7/2Z/UYsxQtQ/3aKCAPsxblgYUl4sOWDX6/pWzt7T+9/21wiCYahZ5sWt5PSSm3o4Yib9hqAQ5/YIaVdTxD2UovHIaUq8eJvPrC/1MTB3dj0yYdX159mGVFxWq3vSOs+/1NffhCLniY+XdnfohHKe/2XzfZQpDjotN0N4EkM06LYuH5RF5+CSF72dkikAS4BjTocCE44pV7eYi3IdFUMpR3xT0vQoiSoHZLuYukLtNBQh3q898R9tm0dqd0Ot115wxU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bFLsMrWFRfLWsdF05MZF+3c/HI2Iy/rNjSj0pbuhi/Hn1F5dOPdkmCvsAKCz?=
 =?us-ascii?Q?R6qb6ArB26YBtAQYnOdaivac/SfBVt2MNUbMbWwd/ni71dEbyPMsgebIigAl?=
 =?us-ascii?Q?CGZaS72q82iqIRd9WUq9kgIIJhdAZMrj3Q8BMqhk3A4NUI2Z+L1JMN9Nmfmv?=
 =?us-ascii?Q?UxEtIlSsq/dFApVZBF+NkuDvah04e1wyXWH4h27ocOUsEDDFynuBokZnJAr8?=
 =?us-ascii?Q?oq/ybo7j65oE0rvu1WKGL7R8sNCTIGFdzHQk5Aie3MM57YRkaOT7TwN+Wj3j?=
 =?us-ascii?Q?8/GUEJJ1ZX8NI4HdIBL9pH8GBH0a+V+fxELjaXSOA+ne3/KmvF2RMc4dwlJ5?=
 =?us-ascii?Q?/txo4aHTpQHcn2nJJPWUnCqoNhGeeFZKSNm3Sg7gJwvSoxrIch4SV1SWdNYe?=
 =?us-ascii?Q?Fne9pHDcBsdzEzuuFIZkLA33oLwUJxxN5V8+IKXDEzakxWFCg98mA9lcyebO?=
 =?us-ascii?Q?VS5nXRtQ5vTxHOtzZa4C84JKoHXiVEButOY/9EKpy4ouoAaFCR5fTuQnprNb?=
 =?us-ascii?Q?dCK0jAGHdmelJyLXquedW+k3MDF918jszCBg62bCfaMSF5Q3cBxjM3rKlNMK?=
 =?us-ascii?Q?pMpAmMCbMpZf1z6m1LN7equIIYpoTApJ5D589jXx5CpXzN3lBUoKBQtRO92P?=
 =?us-ascii?Q?QWUTJGGEAEX+dcjAij2ZrZLF9Tzn3xreTX1S50KhDjBtjhuVN3IcQqJQr155?=
 =?us-ascii?Q?EtYNh3IcQQns1ajaoxuCas/IMlFgtJXVCc7YopwwBIH0V17vKkX6EkWrCVQu?=
 =?us-ascii?Q?bf3IBmrB0Bo46vx3bSvL29YzBEWQrsjJz35IuWzk1Vkteehpw2IoaBRB6b+F?=
 =?us-ascii?Q?j71zoB6CVbOlBmutC7l1Jm3AL4Gw2u5RJKl6Q4Nn9zsEb/hgMVfcd7dyFX/M?=
 =?us-ascii?Q?ccWw1QLFdOxO9NvBfKncoegN+ADjbRrvsQz0SWsGoWbxA0QE90stfg5Z5EPx?=
 =?us-ascii?Q?yx4agYw/bv/rJRQi/hlB/hKybuxoqLhe6sU/sQwqZZRObWoaqwmIyNZdi2Vy?=
 =?us-ascii?Q?MB6AIb6aHjdydSCEl1JwaD6gCL/f3au03cSVLZ3OKfE8jtnXm5A8v1WWHS8N?=
 =?us-ascii?Q?zysvTwT4rFzXgopSyOI7yK3oRqU+yLaG3dPgHMeuKIIDIoKQJOan2XTTSU3w?=
 =?us-ascii?Q?UXkK78BUYsqwsYJU+/Mh/N5I5YZNqyKXPKmhR48r/kX4jWgPA+7flIrMYw4s?=
 =?us-ascii?Q?Lj1IJUrXk4cun3BWiS0J463wgbyPCAvr3xSXg0yrajjL3fyaIT+ZvOrN5if3?=
 =?us-ascii?Q?FaIS4xhSZObeRhW7LzPAuJ+eAbYl9t2/q/1cJRx5M8oQkrBZq0/BwUQbbC+M?=
 =?us-ascii?Q?k3Oim6g48ZnfIuFXFzwkEUihJLdxmEshDbBmETt/k9fIBlUa/mqVF8t4hJUX?=
 =?us-ascii?Q?AqulfUfM8sp8MycnnawzkQUgIRS3hMTAtevq5/wgsfKuMJnYiEtSyChmigL0?=
 =?us-ascii?Q?qq6knUPgLCZcrZcyWaqcHxH4yv0a0yuMzVuSWeE2Lrzb20QRpUsbouvlSz3R?=
 =?us-ascii?Q?xtQuTwCE6ASHVGloIgYVdS9d5CHpLc0rP5Y84ot4d6vnz5gDGA9hP4dyPMIM?=
 =?us-ascii?Q?75gPZaSM1U0TvFL4B9KoB0+U5t+uJI1PdWczN3Fd6uzdpF5Wcr2X1nzqd9AU?=
 =?us-ascii?Q?LtUXeZrCP2o2Xj7wARbpZi0Cz4GwivGOnDmE5L46peXBh5uO9xVPhNH0jEQz?=
 =?us-ascii?Q?9wNMSAwPNzq7moPRjaLVL88y946XRC7chMR0KbIr3n+X8NPGMz70S5Wa40No?=
 =?us-ascii?Q?Qz5XxBPlKQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8ef9cbf-1e38-4b51-7aea-08de8f6b7469
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:21.3717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: je7rAURn2OpbCNCaV4W7V6k6hbgFJvoFIy6v0RsNrGieahH/f6D5dDwuZ7+W4gBZB+QT8cz0MuAh3gNX58Zvfw==
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
X-Rspamd-Queue-Id: EF0483719B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add common page table types shared between MMU v2 and v3. These types
are hardware-agnostic and used by both MMU versions.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs           |   1 +
 drivers/gpu/nova-core/mm/pagetable.rs | 155 ++++++++++++++++++++++++++
 2 files changed, 156 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 3c34d7f05555..151b9add67d8 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -4,6 +4,7 @@
 
 #![expect(dead_code)]
 
+pub(crate) mod pagetable;
 pub(crate) mod pramin;
 pub(crate) mod tlb;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
new file mode 100644
index 000000000000..50b76d5e5aaf
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Common page table types shared between MMU v2 and v3.
+//!
+//! This module provides foundational types used by both MMU versions:
+//! - Page table level hierarchy
+//! - Memory aperture types for PDEs and PTEs
+
+#![expect(dead_code)]
+
+use crate::gpu::Architecture;
+
+/// Extracts the page table index at a given level from a virtual address.
+pub(crate) trait VaLevelIndex {
+    /// Return the page table index at `level` for this virtual address.
+    fn level_index(&self, level: u64) -> u64;
+}
+
+/// MMU version enumeration.
+#[derive(Debug, Clone, Copy, PartialEq, Eq)]
+pub(crate) enum MmuVersion {
+    /// MMU v2 for Turing/Ampere/Ada.
+    V2,
+    /// MMU v3 for Hopper and later.
+    V3,
+}
+
+impl From<Architecture> for MmuVersion {
+    fn from(arch: Architecture) -> Self {
+        match arch {
+            Architecture::Turing | Architecture::Ampere | Architecture::Ada => Self::V2,
+            // In the future, uncomment the following to support V3.
+            // _ => Self::V3,
+        }
+    }
+}
+
+/// Page Table Level hierarchy for MMU v2/v3.
+#[derive(Debug, Clone, Copy, PartialEq, Eq)]
+pub(crate) enum PageTableLevel {
+    /// Level 0 - Page Directory Base (root).
+    Pdb,
+    /// Level 1 - Intermediate page directory.
+    L1,
+    /// Level 2 - Intermediate page directory.
+    L2,
+    /// Level 3 - Intermediate page directory or dual PDE (version-dependent).
+    L3,
+    /// Level 4 - PTE level for v2, intermediate page directory for v3.
+    L4,
+    /// Level 5 - PTE level used for MMU v3 only.
+    L5,
+}
+
+impl PageTableLevel {
+    /// Number of entries per page table (512 for 4KB pages).
+    pub(crate) const ENTRIES_PER_TABLE: usize = 512;
+
+    /// Get the next level in the hierarchy.
+    pub(crate) const fn next(&self) -> Option<PageTableLevel> {
+        match self {
+            Self::Pdb => Some(Self::L1),
+            Self::L1 => Some(Self::L2),
+            Self::L2 => Some(Self::L3),
+            Self::L3 => Some(Self::L4),
+            Self::L4 => Some(Self::L5),
+            Self::L5 => None,
+        }
+    }
+
+    /// Convert level to index.
+    pub(crate) const fn as_index(&self) -> u64 {
+        match self {
+            Self::Pdb => 0,
+            Self::L1 => 1,
+            Self::L2 => 2,
+            Self::L3 => 3,
+            Self::L4 => 4,
+            Self::L5 => 5,
+        }
+    }
+}
+
+/// Memory aperture for Page Table Entries (`PTE`s).
+///
+/// Determines which memory region the `PTE` points to.
+#[repr(u8)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(crate) enum AperturePte {
+    /// Local video memory (VRAM).
+    #[default]
+    VideoMemory = 0,
+    /// Peer GPU's video memory.
+    PeerMemory = 1,
+    /// System memory with cache coherence.
+    SystemCoherent = 2,
+    /// System memory without cache coherence.
+    SystemNonCoherent = 3,
+}
+
+// TODO[FPRI]: Replace with `#[derive(FromPrimitive)]` when available.
+impl From<u8> for AperturePte {
+    fn from(val: u8) -> Self {
+        match val {
+            0 => Self::VideoMemory,
+            1 => Self::PeerMemory,
+            2 => Self::SystemCoherent,
+            3 => Self::SystemNonCoherent,
+            _ => Self::VideoMemory,
+        }
+    }
+}
+
+// TODO[FPRI]: Replace with `#[derive(ToPrimitive)]` when available.
+impl From<AperturePte> for u8 {
+    fn from(val: AperturePte) -> Self {
+        val as u8
+    }
+}
+
+/// Memory aperture for Page Directory Entries (`PDE`s).
+///
+/// Note: For `PDE`s, `Invalid` (0) means the entry is not valid.
+#[repr(u8)]
+#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
+pub(crate) enum AperturePde {
+    /// Invalid/unused entry.
+    #[default]
+    Invalid = 0,
+    /// Page table is in video memory.
+    VideoMemory = 1,
+    /// Page table is in system memory with coherence.
+    SystemCoherent = 2,
+    /// Page table is in system memory without coherence.
+    SystemNonCoherent = 3,
+}
+
+// TODO[FPRI]: Replace with `#[derive(FromPrimitive)]` when available.
+impl From<u8> for AperturePde {
+    fn from(val: u8) -> Self {
+        match val {
+            1 => Self::VideoMemory,
+            2 => Self::SystemCoherent,
+            3 => Self::SystemNonCoherent,
+            _ => Self::Invalid,
+        }
+    }
+}
+
+// TODO[FPRI]: Replace with `#[derive(ToPrimitive)]` when available.
+impl From<AperturePde> for u8 {
+    fn from(val: AperturePde) -> Self {
+        val as u8
+    }
+}
-- 
2.34.1

