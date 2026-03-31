Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPHQEds6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72213719A0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B424210EBAD;
	Tue, 31 Mar 2026 21:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="gBenRlsQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012031.outbound.protection.outlook.com
 [40.93.195.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9852210EBA7;
 Tue, 31 Mar 2026 21:21:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eJBsqQ8x6lRVailimDyS2c+EKjpjnl6NbPr50d4XruKpSBFWisC1fZTzlUuzVLd9lb8G0RZ0sucO5ejuxLQE67woWuE8yScyxjWe6xM1/6Q3/oiF3SxO3j3aqBGY8YYIkPaOHq4MZx3lLUNhOgaHoAio+CM6/inW3Qy28NIXtReBWYQM0GEGxP0Uzlp4yDxwXAXwpwqxPiROIyYZ/c82JbJ03ATDGiuOhdqZhCO2ZtRSqZgVWjwUjrE30Hf2DaZWvGR9BV4ngKYyfSwgTx2sWkee4avhIShUUasEhisWBvAT6ovvWrkthEN0De6exU+RQp/NNxlgm5xkptvXjh7/Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuAa5U7st4OOczNjUcqLrv8H3LWTyY5Ihe49zlsfSFY=;
 b=EPHi+E3QCIFRNX8q/YsdLaMCDDx9LVDun1MVnRb49Q2eQTcS0SlEpKQjui94gKvai82m9g0Cm+7pIKpu5rKPT0Min8dGrG3JTF6kNozBGjtnf3T1fASKGoRw/nNdVovG15gzylZd8SqXDMTVN9kVT2yDWJWoDn9i0UEP8M3QxcOdPIE+RgeIlRoJGC9sjk25o/bqPLc4KlUlHgx3B+LevVLslZxl/XbdEwzijc2fVJqkot66gH3FJdZPmSzal92iLh4jhNOaJaBkRoeDsnCQtpJ8K47wUfsPqC7jhZGBQru5TBABevtccK0/cs8B8FXsOCU5RlfxJMhNTaaJlh4ATA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuAa5U7st4OOczNjUcqLrv8H3LWTyY5Ihe49zlsfSFY=;
 b=gBenRlsQrhTLC0uGjDxGrE4iYHyTr6W85Yu1x1AvMQZG44bskt5TX8FRD+ScUJoVl00sH1WKoSMFrnQk+g7DezcFGcabXekLlxg2zlJRPOFVIUms9RCtMNWyiYDbmUCgYJPJGXhdYNil8pA7TfEB2DK+ZxgoD2rtv7IuDZreLGLEESE5nSUyhjSBdq7QcAnzfIOu7phcV765rc4CP74+gB2hgkEdM+D87dGLeAFtiEOCReEELb2LNHSYPoq1iXQLzKczEpxJmFi+ltXgYtge7erEHCRcU2noaw4ctDRygjZPhqQtIOHVl5YiAZ0KPeXxnYxVIamcx0jpsR6q8SHQjA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:19 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:19 +0000
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
Subject: [PATCH v10 08/21] gpu: nova-core: mm: Add GpuMm centralized memory
 manager
Date: Tue, 31 Mar 2026 17:20:35 -0400
Message-Id: <20260331212048.2229260-9-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR02CA0034.namprd02.prod.outlook.com
 (2603:10b6:208:fc::47) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 9644af29-dbd8-4119-a588-08de8f6b7334
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: ii6hWWkWjQLhTgLy7qNXFDZKnpj8L+HwpZr3fWXbTmD93GA1dQ54ZcYrk2jMrwYPIJ4V9T7fKuqHdZVeq9dRUWsHpRx1iiDisV4Ex56qzTQmx8u9FDm2A2gIHrAUTz6SdsIaAeCqNN+OFOM/ark4D4WPg1W2dfCzHqPlo5dPxW0c7ErUM3nqPVADb+wHqPHtGP6SxyL6/0m5tw2LnW6WDCPNY1micbsykb0V3KdyI3tdLKmsN/vc/DeHOhDFTxsqjI2dpH++WYw/RPiVoh6LirF6n7mOqFl8D3pBxcPrZXH2QIGRWqLAtWvbikwBXnLMU/q2vMWTxeBFxNiMIndUzbpv7s+dzrRQtWO207WlzKeC86wjV+ics+1lD2SZ8knQ7jquEALdMN/a+C0KWQIFlGeiYxp8aAP7TZ/UEx2Nt+DFcinHse7evp5SM5VRtUHzyBASStfbYxjcGuSD18EB3zRu2b2Mav1XHvn1sqYKDmiFKp2VKg4USqr2vMysAxEyccCsc8OQUndKa0U6zKWOXAJdCPNQmXUizjSOTyiKYl9izaypfPJLlPChTRHvQqx9dF+0lSxbm73EIJhDqYG6R2erEtYxrrvsvEYKF28Xb5DC66+IPiGyNvS1fdMkMEc/Afap0wHrnTl6xBaHQaubgoH7BNKD9fdKjtVCdxPHG98UXBi+kPQZ0XSUwVGmHZ7IkfEHalla2zFqn6E0snMYV2b5LAKZ+QVEYoQVe9z0eeI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8RCphkWLWOjZOSl11BkiwD1ys1kWXy1zulMEzxwSAbR/ceTVeepEyOIo4JRX?=
 =?us-ascii?Q?tz8mnWAI2hdGSOXSOvlYSjeAx4bmIHpezBiE3VAosntPhfwcZWBVTZ48mnaM?=
 =?us-ascii?Q?zPNnfH1fAgVEVNFRbv+Z7brO7bLmGXNVXJdPWxY9GXsaJY6c2WZ/OjHt4UTh?=
 =?us-ascii?Q?/41e4TvgGy9V3xAWBA2Q9eYNYV1HgkuxZ8C+Lv7P+GMobH65dZUfvudYfjxB?=
 =?us-ascii?Q?Y3yTeKs8iB9Djp9QWiKKXxH/txy2/aecEtvu95JsCXlMHubYKWHK/TtdLdBY?=
 =?us-ascii?Q?lN6DnpwsdQu5DjOEnwiVMPujYwcQhBzI6f8G7QOdg+bbhL8tYC0Zx1hR3fkj?=
 =?us-ascii?Q?Cvf2YXm84znohjzzn6TuQPoNLjyWe5SsTgDGswkoyOxzqlnYW4yuPZKmPstN?=
 =?us-ascii?Q?EXAi3qaQq+D6rrLhsMbeLUEr+Tt7pO8q5aX1EzqYB3kzrgij9RS00A5+l+71?=
 =?us-ascii?Q?UHDfZdqyi/xzD9H60wDsN9E4LoU87Cyy38R+thNTPAoHGnnElhWYPZ3k3Ey5?=
 =?us-ascii?Q?XxITrjkEY9LrT4giMu2Pcqm+VG3KLlnMO1hhMDMYLBcGrl0lYgIOb2mA/oJb?=
 =?us-ascii?Q?ZQMfJpSwGSuav1p0jKYZPpuJdkLZWV5lRbGsjsD08OdAu/KwPT6yjO/Uk0Yy?=
 =?us-ascii?Q?UHqOFeEA0At4aVQ1CDxIqWEFplz3CHddZHqWJJLTlC1ggUsFSztzMcMke8OS?=
 =?us-ascii?Q?Ts56gSGaZWTIFRtz8VxCWGJPu7+jScYj3+e7yLy3GvVYD5BygW6Fyohn+xM6?=
 =?us-ascii?Q?aGiXMmiP+iHUpRmgvMll9wX9H07baHdXXaoD7tyHFUUg7qqlL3fVLdthXYkZ?=
 =?us-ascii?Q?O4n4Ht6ToD2HPAA0ncO/w1cqP82sRuQmknsw6i0363dVYWv+1orAVeXdv+1v?=
 =?us-ascii?Q?jfKTeRcdhDTpA/zaK4DaUJk0IGYbdBq3YJ6atyxuuJp8ZrYiboJQd0+XqZYU?=
 =?us-ascii?Q?/cJ5KpSOPCl23wrvkcIzQFNTIKPcB3nkbSPUzWDL8cp/4Cc6RhfA9jTSLGD5?=
 =?us-ascii?Q?+BmGTTiyDUbc7emCWdi78IzqnshtrEtPfPyvrI752BvNqnNxj5TXPPH9HxrQ?=
 =?us-ascii?Q?UF2UZkiv5sQDtvPx2a1rZQelQrWhw77YWy9vwLFFbyRlfNFDoP8wPJCsalfr?=
 =?us-ascii?Q?IxfYJyKFekq4LRR6x5Vpj4vd//HXLNT/yJEq8ZeT8jH9rRID9bIIryGZG3kP?=
 =?us-ascii?Q?N8WZnt/6UQ1Yd6vBWJlRCjIIncRtiOYkrXD882JFvXgd4oJ52Ak5AcaimF+a?=
 =?us-ascii?Q?oHU/+dGGvC5JiyNQWWokrG8YjMwEk/BMoDiFPFbHgMBPB5bAGscuTmSb4Cvx?=
 =?us-ascii?Q?7CBbPuE2GlNlqpFYSz/MvDoGMZQBlI7or+nvQHXRQCJpdSlb5kpoXIRfUuYj?=
 =?us-ascii?Q?vgLwxUHvFmolbc6H152U2Edpl+8o15M2zSwjTFjjTx+Foq1QoiObYskzItzL?=
 =?us-ascii?Q?Ih2VObb+eYrXGKaxPqAQHiRgl2Uzoend7piaYtDQHTmHZhR2jEQ71ggnIJlj?=
 =?us-ascii?Q?JN1CgxgjW6BadtH1ubL9O7m+TXZLLlvbmxRzz49WOwsgx1Welu7avKUXc81h?=
 =?us-ascii?Q?5UqM+2NOY+S/yCjuVariG+indPW4/cXFZuYbR9HNgeuGdNNzNb0x+muzar6d?=
 =?us-ascii?Q?VBz9D4TMfBkLHkJsrNBLlqoE84wSOfDlECQbVyCV63lxU2XuWIomk3SjPUTb?=
 =?us-ascii?Q?jmIh30e62gbJEJLiMLYnTmhoqP297iRU2ROUWPQzSYQI+0DM/GHtJCkCTaoN?=
 =?us-ascii?Q?zSETZlAeKQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9644af29-dbd8-4119-a588-08de8f6b7334
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:19.2223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 32JIBrMPksusXteMrm78cMa12TkUDgGmvEUfO3h24YGF7X/wKT5Gynv6JL1LeRo3oEkONGmenY0MbIg+GbyvCA==
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
X-Rspamd-Queue-Id: E72213719A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce GpuMm as the centralized GPU memory manager that owns:
- Buddy allocator for VRAM allocation.
- PRAMIN window for direct VRAM access.
- TLB manager for translation buffer operations.

This provides clean ownership model where GpuMm provides accessor
methods for its components that can be used for memory management
operations.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig         |  1 +
 drivers/gpu/nova-core/gpu.rs          | 34 ++++++++++++-
 drivers/gpu/nova-core/gsp/commands.rs |  2 -
 drivers/gpu/nova-core/mm.rs           | 70 ++++++++++++++++++++++++++-
 4 files changed, 102 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index a4f2380654e2..6513007bf66f 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -4,6 +4,7 @@ config NOVA_CORE
 	depends on PCI
 	depends on RUST
 	select AUXILIARY_BUS
+	select GPU_BUDDY
 	select RUST_FW_LOADER_ABSTRACTIONS
 	default n
 	help
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index b4da4a1ae156..c49fa9c380b8 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -4,10 +4,13 @@
     device,
     devres::Devres,
     fmt,
+    gpu::buddy::GpuBuddyParams,
     io::Io,
     num::Bounded,
     pci,
     prelude::*,
+    ptr::Alignment,
+    sizes::SZ_4K,
     sync::Arc, //
 };
 
@@ -25,6 +28,7 @@
         commands::GetGspStaticInfoReply,
         Gsp, //
     },
+    mm::GpuMm,
     regs,
 };
 
@@ -238,6 +242,9 @@ pub(crate) struct Gpu {
     gsp_falcon: Falcon<GspFalcon>,
     /// SEC2 falcon instance, used for GSP boot up and cleanup.
     sec2_falcon: Falcon<Sec2Falcon>,
+    /// GPU memory manager owning memory management resources.
+    #[pin]
+    mm: GpuMm,
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
@@ -274,7 +281,32 @@ pub(crate) fn new<'a>(
 
             gsp <- Gsp::new(pdev),
 
-            gsp_static_info: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
+            gsp_static_info: {
+                let info = gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)?;
+
+                dev_info!(
+                    pdev.as_ref(),
+                    "Using FB region: {:#x}..{:#x}\n",
+                    info.usable_fb_region.start,
+                    info.usable_fb_region.end
+                );
+
+                info
+            },
+
+            // Create GPU memory manager owning memory management resources.
+            mm <- {
+                let usable_vram = &gsp_static_info.usable_fb_region;
+
+                // PRAMIN covers all physical VRAM (including GSP-reserved areas
+                // above the usable region, e.g. the BAR1 page directory).
+                let pramin_vram_region = 0..gsp_static_info.total_fb_end;
+                GpuMm::new(devres_bar.clone(), GpuBuddyParams {
+                    base_offset: usable_vram.start,
+                    size: usable_vram.end - usable_vram.start,
+                    chunk_size: Alignment::new::<SZ_4K>(),
+                }, pramin_vram_region)?
+            },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 5e0649024637..ec03bf94b34e 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -194,10 +194,8 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
     /// Usable FB (VRAM) region for driver memory allocation.
-    #[expect(dead_code)]
     pub(crate) usable_fb_region: Range<u64>,
     /// End of VRAM.
-    #[expect(dead_code)]
     pub(crate) total_fb_end: u64,
 }
 
diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index cfe9cbe11d57..3c34d7f05555 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -7,9 +7,75 @@
 pub(crate) mod pramin;
 pub(crate) mod tlb;
 
-use kernel::sizes::SZ_4K;
+use kernel::{
+    devres::Devres,
+    gpu::buddy::{
+        GpuBuddy,
+        GpuBuddyParams, //
+    },
+    prelude::*,
+    sizes::SZ_4K,
+    sync::Arc, //
+};
 
-use crate::num::u64_as_usize;
+use crate::{
+    driver::Bar0,
+    num::u64_as_usize, //
+};
+
+pub(crate) use tlb::Tlb;
+
+/// GPU Memory Manager - owns all core MM components.
+///
+/// Provides centralized ownership of memory management resources:
+/// - [`GpuBuddy`] allocator for VRAM page table allocation.
+/// - [`pramin::Pramin`] for direct VRAM access.
+/// - [`Tlb`] manager for translation buffer flush operations.
+#[pin_data]
+pub(crate) struct GpuMm {
+    buddy: GpuBuddy,
+    #[pin]
+    pramin: pramin::Pramin,
+    #[pin]
+    tlb: Tlb,
+}
+
+impl GpuMm {
+    /// Create a pin-initializer for `GpuMm`.
+    ///
+    /// `pramin_vram_region` is the full physical VRAM range (including GSP-reserved
+    /// areas). PRAMIN window accesses are validated against this range.
+    pub(crate) fn new(
+        bar: Arc<Devres<Bar0>>,
+        buddy_params: GpuBuddyParams,
+        pramin_vram_region: core::ops::Range<u64>,
+    ) -> Result<impl PinInit<Self>> {
+        let buddy = GpuBuddy::new(buddy_params)?;
+        let tlb_init = Tlb::new(bar.clone());
+        let pramin_init = pramin::Pramin::new(bar, pramin_vram_region)?;
+
+        Ok(pin_init!(Self {
+            buddy,
+            pramin <- pramin_init,
+            tlb <- tlb_init,
+        }))
+    }
+
+    /// Access the [`GpuBuddy`] allocator.
+    pub(crate) fn buddy(&self) -> &GpuBuddy {
+        &self.buddy
+    }
+
+    /// Access the [`pramin::Pramin`].
+    pub(crate) fn pramin(&self) -> &pramin::Pramin {
+        &self.pramin
+    }
+
+    /// Access the [`Tlb`] manager.
+    pub(crate) fn tlb(&self) -> &Tlb {
+        &self.tlb
+    }
+}
 
 /// Page size in bytes (4 KiB).
 pub(crate) const PAGE_SIZE: usize = SZ_4K;
-- 
2.34.1

