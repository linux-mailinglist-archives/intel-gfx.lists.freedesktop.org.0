Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNKtFBu6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F14BD259F11
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871A710E7D7;
	Wed, 11 Mar 2026 00:40:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="igvsyc5h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013048.outbound.protection.outlook.com
 [40.93.201.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF3710E7CB;
 Wed, 11 Mar 2026 00:40:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X7fh4NwnqRL4DViEAS1IR8+V46i5wSAPLmJCuogPoXQ4sJfrz6v/HYSnpiF0GQVLTGcSxzXoo7JibzDOLrf0rSOx/WLLCvtYeZNi6LqDL8lNBc4vSHD3B0jcTzRPkUP7kk1az/fc+ihwiR7cCbSBF1Z/Ugi4Jb2At8IltQv1oEMaoC8sK1rzOlRC9G2HjpZANj42lBaIDf4nGn4pk3MZ5IjeaHNAP/Qx5bJNwO1Coce1+YdlzbYbgyLE25X3GyS004Ldt1W0v625xkkU5C0ui0FLfyZBxr7cmURDgwuk+Tcncc2cei5O0smztHkc2WcT4hcCAZXEAo/Ex87nmql1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VAePXL363e8KHNLqwkl9m4br/gKwyI4qTgBOWHDXS4A=;
 b=aJgqolbgwjD0WQ9X6CqcV8zvdCDcspFeeXDrPZyE5QyBu+cmpFegnFZnGQ4xy5yLuOgB/gfKflvJjQZgkrRvO18f9XMu+2Y9nwjvV/a9V91SYmqGNybiy0ufZQ9iPE/UdvRo9+hmJ4U8bIfRHfq8F9mAXj1RzDbA+yG995E9OQ3v/RaudtCgCJJf5vYUPcD/QNjvisPyK1YCvJ9GaLIFDMIVdHuRPLuGVvWBEKq/LUMJOAcrIMj9CywvcjnsYfvsgkdRoETX3857H6E/2opd1oWc8xU5+l1IT9I+NmA2EYdCl9lRFeNTz1x3dWe4X9Y8GbtwTueo+QiM4vECqa/B7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VAePXL363e8KHNLqwkl9m4br/gKwyI4qTgBOWHDXS4A=;
 b=igvsyc5htCmY3A1LbMw4k25UaOwqRihtnHhhmq+G7ep4hBz7PsZeCPLo8p1Ku5taNOABgNBePVBQPzjrU/I2+HNUdWBuJBFJ5NtbHvUrZ9W+OmdwE9igsIg/HOZY+0Q2LvhyIMEKq5vfR0aukaxD7wgs1vbFPNmqiBWJQij1j6Yi3m5O5KKSa6BqtTXUJ7DZ4toeHWzd9AL/XBqR3roCet7GCn4kReYNEHvfHt1j8X0DxRxsQ1MGiov4eIHJoG0+B+2UM9lbRXLPNp2jotvMtnJ5Z0BlEinPlQlgD1cox+kOxqhBEQgoFlIq6yzx61GE/c1+R7X2CRFToubu4w2mmQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:46 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:46 +0000
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
Subject: [PATCH v9 13/23] gpu: nova-core: mm: Add MMU v3 page table types
Date: Tue, 10 Mar 2026 20:39:58 -0400
Message-Id: <20260311004008.2208806-14-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:208:329::24) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ea22ee0-21b8-44da-a3ce-08de7f06d583
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: /ZoRw82wducsNUbB96V5l3/VYY4TA1zFjov0fBgJhpGYbmGJ090znlyADRf8YePTdi8cCcvt0TKBQ109MbdAbNg83klrEtxIVdlPK8YwNp2nd84dOU7cF1d9XfQl5LswX0rHohsWlyJvcIoQWfgwEfK8QCdH6u4+9YgXAaAPrDmoo6Pa9dJ+rFw9dTMj5h4aH4Xrfi/8IIzzkGC49WcdKV9v8etED9XIhFOprn/14JVTPP2BFoXVME5UqJ50pK10Oti1VsH86jfhPWw1qPJ48FdHRKiWEhAr/BpHTwUPYDBMjpJXdUJZO4xYC9LgYkLQctZw9Kag/FN/aZNuSBN5QgSsUy3xi3xCjQOYUG7mNQZbchNvW7cpCUx2J2l8J2E9C8LvU1ksegUf8m8Rc46W4FopThz5a3EJ8SZs8Zgk9D39zwVFSdXccGlJonuBV9Rn1uZrUWbBtWu/V5mV5HypvMDH9T/E3HhYjlfCg0vrUl+9fyTw06oexn1DfNvKkutE9sttl36R1chSKkLv3Lcxwl4W13pGbQx5tcTCwQHSzdKF/+fcxwVQ0GoVpR3+IVwqJDgu1ZhOLWPtcHX3Ay+UlkGsZZMUSXqD0zhMoKsXnFX6aZRSgc5YcRugPGM+R/OE2fzzuLHEVmnjFMKqDw6KORSIMEDjchk+nvRtuWrta/5RLFprH5KSAb3Pe4/Jn2m7n3uGAR11UfgTKx7e3T3ED3gdIU3dZ+bRMazbzp4xgPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+T+6ZCRuaJ5/vRaZ/kARcQM1Or5Qxl0I45RhROgDlbNacHtowPTTh4XGRYYf?=
 =?us-ascii?Q?o1r7XpSLfWILLWnSxbk3QM2H9Emxy7o67Si6O1NwVghjgO6BHBBldx/duJBL?=
 =?us-ascii?Q?xX0NiiR4XKVg3i1UKWlLsFzkyb2BirhsIk1gi3veyyPIJJWZlHU+i3rD8GaM?=
 =?us-ascii?Q?ZIhQ4ppVZ8y2ZhTMqpiZSEjBBgZ3mMr8FAHn/XpYuAPSq29IkMIVQnuC2OQo?=
 =?us-ascii?Q?czutVjoo8tOt1MxZFEzAP7Fc9H6KyAtWDVGgTLyaV3FiEYfnDLmISEL6WbSz?=
 =?us-ascii?Q?xBQR+cLyjjJkY0nlbZ4Mfl3ILCyUTIDdMTJ2Dlzdlgzdsqz17FdHYUcIpQ2c?=
 =?us-ascii?Q?tI6nMK6ic8Lb5bMiIEHlTsokBNpOcqynqE7JUtu8bb8KmZpRDeG0XdeIEQJ2?=
 =?us-ascii?Q?3T9RHlsDiAcG6P5V9lhCh5YMfphQ4pWpoeoTJZgcEwQaGq7L5BcYsU6JShLF?=
 =?us-ascii?Q?Lm3ymTq4oEb6C5Omx+Hm0ub+/3yiMoLIUQkffo2FnJASZsBzu2Wdc0BVMRyD?=
 =?us-ascii?Q?uP16EkKtr+rwVmxJEpsD+OA1gZV9tNtvJbegn2plhhzSSXUkM1wc1W9VLCMv?=
 =?us-ascii?Q?MO8uegukNs97WVed/w4uFq60riNsUiqz2TdVjWgI1R4CR0VvxyTq6bLc7M0V?=
 =?us-ascii?Q?35zAmMXqZMLKfLcnv9QNKRnsXqM8pe7nRiWV5LwA/WoqyuGisRm8PXzYwNpo?=
 =?us-ascii?Q?wGfSYcNZBqeNZeYmMZcdw52INT/yVd9NwB0LbZHv+cAmGSSjMd0L+Bd0R+Gs?=
 =?us-ascii?Q?Yy3tAeB2dXtni83dHK7el0iIlXFWwJ1ZoXaqp2aGjrNz8fbO02qo6St5LpxY?=
 =?us-ascii?Q?w3BOPsII6eUfmzXZ8/TziRnabJV7trn1u7vI7lOc0aMRHXzA0a0JGtGxpopM?=
 =?us-ascii?Q?YMMgdWRTMrNucq/d6CwqzV5ENLwIKD2CCNMuSqmnJ0ejgeQd8c02Is95eCW5?=
 =?us-ascii?Q?50VOLAj90CK6xupJGBfYAmZBVE67sBwzcrkBxTH6KMR2RhBJUgvuSt+HJR5M?=
 =?us-ascii?Q?MluR4D2DCBqW1u5Tdup+dRQxkslZFVolhEA/lZyg/1eZ7vUU0xgj6Tto7IA/?=
 =?us-ascii?Q?yy8pvNMG6EZX3gPN9rDlV80EAR4YgkQE/SGljMfZ4/czmJOycbhMsPLK9SW2?=
 =?us-ascii?Q?1K5ncKwPZWjVYIS5wyKWEYSVM6mBwX80x4t1adF9KecWDf4FfOlZjPLux8MS?=
 =?us-ascii?Q?hYdjdNk8Xxho+6Ij+iDEcoX0GqHKZ/1mQLmCwSrJaH4Na/StStOXj9RPoGIF?=
 =?us-ascii?Q?zLPVjHUu/9K6QU/rsliidOpU56MP6TfEo+JeZzOZUSkEDe2BsdlJzLPAznZp?=
 =?us-ascii?Q?Dt7OyJ8X7TrUv7B3PvgpcFzrEgDbxQ/Ol+EhREmXal0L9x/hGOINTKRqZYYD?=
 =?us-ascii?Q?eAQk5JTKFIxAitzv1kJim+/ifZjJDJ7yeEPHFjENBIBBNCEu/QR9B483lx2S?=
 =?us-ascii?Q?0QQGoq4hk6ViFbYCpW4KhrtVgKQKv1JFFG+TvXYqcupieMwg7QEj8cOX6rDo?=
 =?us-ascii?Q?4wmQCnbz30E41TDpdJqY7dxNf2a6uBJw4r6POjGi9UZXS4r/LwnfcfKqxPWP?=
 =?us-ascii?Q?XiG+X5KXtQKtG/w4NaRQ4CjNZ87K5w4U5ZZ2rwm1vvLkkkKDRymPwV29b8SW?=
 =?us-ascii?Q?F/eOPn+lIqbXFzyf4ZqBBtLtTx/iM15HeFRXFJyvKdxihNg679AEwZS1FFb7?=
 =?us-ascii?Q?AEFD2OSuHmAc1AoOYUokeVcBxMNe1Pp5pfzvRcEDRO9yVjq4iO+7c7lSqPGA?=
 =?us-ascii?Q?2S4oSLEGfA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea22ee0-21b8-44da-a3ce-08de7f06d583
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:46.3227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SOlVVyG6SMXPb3Zp+yuC+2whUOSba6gbAOOhGgMzKrdCY//B1p2/4ORfBNYOmQdNWJt1os4bQXLxk8IhTnAQOg==
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
X-Rspamd-Queue-Id: F14BD259F11
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Action: no action

Add page table entry and directory structures for MMU version 3
used by Hopper and later GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   1 +
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 337 +++++++++++++++++++++
 2 files changed, 338 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 2dcd559cc692..5c6ae78506af 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -9,6 +9,7 @@
 #![expect(dead_code)]
 
 pub(crate) mod ver2;
+pub(crate) mod ver3;
 
 use crate::gpu::Architecture;
 
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver3.rs b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
new file mode 100644
index 000000000000..64b47561ebf9
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver3.rs
@@ -0,0 +1,337 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! MMU v3 page table types for Hopper and later GPUs.
+//!
+//! This module defines MMU version 3 specific types (Hopper and later GPUs).
+//!
+//! Key differences from MMU v2:
+//! - Unified 40-bit address field for all apertures (v2 had separate sys/vid fields).
+//! - PCF (Page Classification Field) replaces separate privilege/RO/atomic/cache bits.
+//! - KIND field is 4 bits (not 8).
+//! - IS_PTE bit in PDE to support large pages directly.
+//! - No COMPTAGLINE field (compression handled differently in v3).
+//! - No separate ENCRYPTED bit.
+//!
+//! Bit field layouts derived from the NVIDIA OpenRM documentation:
+//! `open-gpu-kernel-modules/src/common/inc/swref/published/hopper/gh100/dev_mmu.h`
+
+#![expect(dead_code)]
+
+use super::{
+    AperturePde,
+    AperturePte,
+    PageTableLevel,
+    VaLevelIndex, //
+};
+use crate::mm::{
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+use kernel::prelude::*;
+
+bitfield! {
+    pub(crate) struct VirtualAddressV3(u64), "MMU v3 57-bit virtual address layout" {
+        11:0    offset   as u64, "Page offset [11:0]";
+        20:12   pt_idx   as u64, "PT index [20:12]";
+        28:21   pde0_idx as u64, "PDE0 index [28:21]";
+        37:29   pde1_idx as u64, "PDE1 index [37:29]";
+        46:38   pde2_idx as u64, "PDE2 index [46:38]";
+        55:47   pde3_idx as u64, "PDE3 index [55:47]";
+        56:56   pde4_idx as u64, "PDE4 index [56]";
+    }
+}
+
+impl VirtualAddressV3 {
+    /// Create a [`VirtualAddressV3`] from a [`VirtualAddress`].
+    pub(crate) fn new(va: VirtualAddress) -> Self {
+        Self(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV3 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde4_idx(),
+            1 => self.pde3_idx(),
+            2 => self.pde2_idx(),
+            3 => self.pde1_idx(),
+            4 => self.pde0_idx(),
+            5 => self.pt_idx(),
+            _ => 0,
+        }
+    }
+}
+
+/// PDE levels for MMU v3 (6-level hierarchy).
+pub(crate) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+    PageTableLevel::L4,
+];
+
+/// PTE level for MMU v3.
+pub(crate) const PTE_LEVEL: PageTableLevel = PageTableLevel::L5;
+
+/// Dual PDE level for MMU v3 (128-bit entries).
+pub(crate) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+// Page Classification Field (PCF) - 5 bits for PTEs in MMU v3.
+bitfield! {
+    pub(crate) struct PtePcf(u8), "Page Classification Field for PTEs" {
+        0:0     uncached    as bool, "Bypass L2 cache (0=cached, 1=bypass)";
+        1:1     acd         as bool, "Access counting disabled (0=enabled, 1=disabled)";
+        2:2     read_only   as bool, "Read-only access (0=read-write, 1=read-only)";
+        3:3     no_atomic   as bool, "Atomics disabled (0=enabled, 1=disabled)";
+        4:4     privileged  as bool, "Privileged access only (0=regular, 1=privileged)";
+    }
+}
+
+impl PtePcf {
+    /// Create PCF for read-write mapping (cached, no atomics, regular mode).
+    pub(crate) fn rw() -> Self {
+        Self::default().set_no_atomic(true)
+    }
+
+    /// Create PCF for read-only mapping (cached, no atomics, regular mode).
+    pub(crate) fn ro() -> Self {
+        Self::default().set_read_only(true).set_no_atomic(true)
+    }
+
+    /// Get the raw `u8` value.
+    pub(crate) fn raw_u8(&self) -> u8 {
+        self.0
+    }
+}
+
+impl From<u8> for PtePcf {
+    fn from(val: u8) -> Self {
+        Self(val)
+    }
+}
+
+// Page Classification Field (PCF) - 3 bits for PDEs in MMU v3.
+// Controls Address Translation Services (ATS) and caching.
+bitfield! {
+    pub(crate) struct PdePcf(u8), "Page Classification Field for PDEs" {
+        0:0     uncached    as bool, "Bypass L2 cache (0=cached, 1=bypass)";
+        1:1     no_ats      as bool, "Address Translation Services disabled (0=enabled, 1=disabled)";
+    }
+}
+
+impl PdePcf {
+    /// Create PCF for cached mapping with ATS enabled (default).
+    pub(crate) fn cached() -> Self {
+        Self::default()
+    }
+
+    /// Get the raw `u8` value.
+    pub(crate) fn raw_u8(&self) -> u8 {
+        self.0
+    }
+}
+
+impl From<u8> for PdePcf {
+    fn from(val: u8) -> Self {
+        Self(val)
+    }
+}
+
+// Page Table Entry (PTE) for MMU v3.
+bitfield! {
+    pub(crate) struct Pte(u64), "Page Table Entry for MMU v3" {
+        0:0     valid           as bool, "Entry is valid";
+        2:1     aperture        as u8 => AperturePte, "Memory aperture type";
+        7:3     pcf             as u8 => PtePcf, "Page Classification Field";
+        11:8    kind            as u8, "Surface kind (4 bits, 0x0=pitch, 0xF=invalid)";
+        51:12   frame_number    as u64 => Pfn, "Physical frame number (for all apertures)";
+        63:61   peer_id         as u8, "Peer GPU ID for peer memory (0-7)";
+    }
+}
+
+impl Pte {
+    /// Create a PTE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PTE for video memory.
+    pub(crate) fn new_vram(frame: Pfn, writable: bool) -> Self {
+        let pcf = if writable { PtePcf::rw() } else { PtePcf::ro() };
+        Self::default()
+            .set_valid(true)
+            .set_aperture(AperturePte::VideoMemory)
+            .set_pcf(pcf)
+            .set_frame_number(frame)
+    }
+
+    /// Create an invalid PTE.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Page Directory Entry (PDE) for MMU v3.
+//
+// Note: v3 uses a unified 40-bit address field (v2 had separate sys/vid address fields).
+bitfield! {
+    pub(crate) struct Pde(u64), "Page Directory Entry for MMU v3 (Hopper+)" {
+        0:0     is_pte      as bool, "Entry is a PTE (0=PDE, 1=large page PTE)";
+        2:1     aperture    as u8 => AperturePde, "Memory aperture (0=invalid, 1=vidmem, 2=coherent, 3=non-coherent)";
+        5:3     pcf         as u8 => PdePcf, "Page Classification Field (3 bits for PDE)";
+        51:12   table_frame as u64 => Pfn, "Table frame number (40-bit unified address)";
+    }
+}
+
+impl Pde {
+    /// Create a PDE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PDE pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::default()
+            .set_is_pte(false)
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame(table_pfn)
+    }
+
+    /// Create an invalid PDE.
+    pub(crate) fn invalid() -> Self {
+        Self::default().set_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this PDE is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame())
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Big Page Table pointer for Dual PDE - 64-bit lower word of the 128-bit Dual PDE.
+bitfield! {
+    pub(crate) struct DualPdeBig(u64), "Big Page Table pointer in Dual PDE (MMU v3)" {
+        0:0     is_pte      as bool, "Entry is a PTE (for large pages)";
+        2:1     aperture    as u8 => AperturePde, "Memory aperture type";
+        5:3     pcf         as u8 => PdePcf, "Page Classification Field";
+        51:8    table_frame as u64, "Table frame (table address 256-byte aligned)";
+    }
+}
+
+impl DualPdeBig {
+    /// Create a big page table pointer from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create an invalid big page table pointer.
+    pub(crate) fn invalid() -> Self {
+        Self::default().set_aperture(AperturePde::Invalid)
+    }
+
+    /// Create a valid big PDE pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_addr: VramAddress) -> Result<Self> {
+        // Big page table addresses must be 256-byte aligned (shift 8).
+        if table_addr.raw_u64() & 0xFF != 0 {
+            return Err(EINVAL);
+        }
+
+        let table_frame = table_addr.raw_u64() >> 8;
+        Ok(Self::default()
+            .set_is_pte(false)
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame(table_frame))
+    }
+
+    /// Check if this big PDE is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the VRAM address of the big page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM DualPdeBig (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::new(self.table_frame() << 8)
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+/// Dual PDE at Level 4 for MMU v3 - 128-bit entry.
+///
+/// Contains both big (64KB) and small (4KB) page table pointers:
+/// - Lower 64 bits: Big Page Table pointer.
+/// - Upper 64 bits: Small Page Table pointer.
+///
+/// ## Note
+///
+/// The big and small page table pointers have different address layouts:
+/// - Big address = field value << 8 (256-byte alignment).
+/// - Small address = field value << 12 (4KB alignment).
+///
+/// This is why `DualPdeBig` is a separate type from `Pde`.
+#[repr(C)]
+#[derive(Debug, Clone, Copy, Default)]
+pub(crate) struct DualPde {
+    /// Big Page Table pointer.
+    pub big: DualPdeBig,
+    /// Small Page Table pointer.
+    pub small: Pde,
+}
+
+impl DualPde {
+    /// Create a dual PDE from raw 128-bit value (two `u64`s).
+    pub(crate) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: DualPdeBig::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual PDE with only the small page table pointer set.
+    pub(crate) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: DualPdeBig::invalid(),
+            small: Pde::new_vram(table_pfn),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(crate) fn has_small(&self) -> bool {
+        self.small.is_valid()
+    }
+
+    /// Check if the big page table pointer is valid.
+    pub(crate) fn has_big(&self) -> bool {
+        self.big.is_valid()
+    }
+}
-- 
2.34.1

