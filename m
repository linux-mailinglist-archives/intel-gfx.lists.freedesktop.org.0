Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NKBKRW6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57967259EB8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E6510E7E4;
	Wed, 11 Mar 2026 00:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BmeylC7C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011065.outbound.protection.outlook.com [52.101.62.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9BF10E7A8;
 Wed, 11 Mar 2026 00:40:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qCBHySP+amVp5fJxrfRxt/4LONNSFtfZJQYPNXNHFhYEY0nmx4Cvj3eH8oBGJYxHf4kHsIEckA0COx4V3kT9PNKS5NfK1guqZhBD8NNFE6422MLnRRKt7ZcvQm8ayIaKTYdVscotVJfcIeu9tibMt7OOituOuFlBOjFOaA4PAryrNJUYAdQ49EXS53p1FI6YhmXJE9t3DfLKLJNJyY/0kk4q50YLjTIGQfQ782vLrWHJpYmSLL21EbKmvVTAaAdbDLXsIFZCY6kqQdQZEl+CW9sm2My05FfLgFbQEJt4Hl0EyPf4OVZ+INAHeLprDnQTaINECO1G4VFgJa3FPYK2mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDDKdahD0WLulwq2RXGXGYX93ZqdDCekH3Wo8k9j+Jc=;
 b=QkUYBCexEzr1KPTVJnYFYQqXHL4UeoEkV7ow11geo5bIcxT9QC1ksrtgR6zc3g9qEN0yeFGTlAl5ZBcquRzz8xZRHHRxHmZnM+qUI7HkLgBjypGZiBuwBYxF5OVkBwI1Oq1DdWKiWMiSy+Anytql+Hcr06U8EIMA06GdzBxdRTPIRxojc6rlzJ4w++PN74PbY4/xyvOmk1Q92+viwPyGIFTpJiembpZ2F39OS0Jz0vZoCa3BtX9EcO0uoeoBg5K+A7iluCkowSFMISAevSmbHs4C82ujq7wa+QSG9+suXAw/cQg5VlQ0G0xel6zWflLGAVADR9vCiEagBO1eTP5MHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDDKdahD0WLulwq2RXGXGYX93ZqdDCekH3Wo8k9j+Jc=;
 b=BmeylC7CrfddyhKG1XIiEDsBeDjsr5GUOexOThbQ5OnjsvPwO9lPfWJX3+2t6BPgi91jkRt70rIeAWhkwu2RJRLXRvv/WkRoMrvSdtmQYki+8zknILSS3fr8cZYkiwNH43G0hKEUOIVqza2mxmRoqA55Y+wTKzBNcxmKOAWJ9JGgFKx6tHECSqTqP1jSUy+IiQhLOIcPIFKqJMcxEFxhsXxLWJU0QFiy+P3dmy+aRHbIrjZ1dyN+JR9IvmiT0dgLjPy4YTHKpJJW4tmvo5fw2itr8CbRMr8Gw2r9vXNJh1Bv7ZpJ+BEo1DqFFg6c4MlLmFq5rXJY/CKjKyE1TyOxlw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:40 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:40 +0000
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
Subject: [PATCH v9 10/23] gpu: nova-core: mm: Add GpuMm centralized memory
 manager
Date: Tue, 10 Mar 2026 20:39:55 -0400
Message-Id: <20260311004008.2208806-11-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: IA4P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:558::14) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: f45d9b8c-ba5b-442e-eef9-08de7f06d1f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: B5DpnQLB7mwfDNtlNjPkkmdF+77c0UdAP2kNlUdf12l22K+m1uOM/umb9sSRG/wPBnUN+ZktwAkPYS3EVkYASw+uM9uvJpp7hJqJU0MfURG/ChP22XS8nuuaGxHpfOxgRvd0ZSmttvxgSnNviWYmuSMUu3INOUBh8rHG/PfS1zw2wOCJJd14ZHK99OpVxMGdoigQH6dmNi3dYj26s6YAfKltCu76Cpa8C+eC6mmzXofZwsCNuCmyKofEvCUUGtmAPwtfphkzfQUt59qEi8ZKaA4nKCMeJjqFDOS3cuqZYpz41pPxZycBH1S76X1fYBOJ5JLX5AE48opLTcgB8CmU91UVkdQG33YCPECld/Z4Nj/LoYOSOySx+xUvEAcaUVXanOUn+5VGHXKGjPtKUlvPqrLWDmVw/sx6grlxypUw3AlaTdUKZUQnwp2y25c/FTV46OQp+sQOmGMGPPsNU8r1yv3koPCqiyBsnGx8mJw+xzVG11w3EgVc35g/EdjwKnXxYQImjEUqydqnwZymDVTx6f+T4y100bn5oBWOhSA8glpke/+CJMWw3iwpzfXdSRXpt/aMj4mLAqMFkj7U9/CvOV44B9gzFdOrPUw3qkR2yisuHfW2D30k7Q2gth4hc0qy72fsob//Iiofj0aTk8ZnKDCGbuvmpQdbk0C6XwKFwTPg8974CR3o741UYBZPzfZznw/izlGbz5ojhFPNURN2RJf3MsagEBMuBSkeo1R2mDY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mHyAx39bgseubUDySbw+V80X9UgeB1KZXaBoIv6aFSBs2jhwi/Spk1CI/Q+V?=
 =?us-ascii?Q?3g0vS/1+UIc+vw6mRZY9qmWJ+AF7ax7u6BWBBnWXgx6Lx5pHByWJwugrOTVV?=
 =?us-ascii?Q?EZrynrV2PrIj905MubvQgSk3XSXtdY0qLsg7ZCNTAJKVpQiY/N+aGq4RibUB?=
 =?us-ascii?Q?ojOma1783TbOqBUTCqs2SUCbdURs994IymhaJoL0lCU1WICDQinl07JlSYch?=
 =?us-ascii?Q?yjv84MUhZ91W9B8d1PV3OrUfLu/kPntepUZaN5J755Uyq6xJlaIYl5czKXZo?=
 =?us-ascii?Q?iFQkpxM8jZFeA5Tq+SJE5S64BDHLfeQqhkCd4YwEgXRB+DOjhtmnM2Uesrou?=
 =?us-ascii?Q?ci8TEvejraZyXlf2VwGRE48OM26H4ihgZdlQaO2FnXF0oWsxIkD24RH7no22?=
 =?us-ascii?Q?F+YsxmI6ytfjXesnIBgxbA1VMQtruzM6Z260kTf5ai4Evc8kbWKUV4jS8s7l?=
 =?us-ascii?Q?6C8MKqinQQpzBOjpdLanixxAlqVAHknYTcRgOazBEwvO8BQbXnFh97GLR7aZ?=
 =?us-ascii?Q?2puvETIC83d78YPy9Gm0WTxg2Q8bK4mDW4gWMLIMf27HxYvk3DCOe2ceFm3K?=
 =?us-ascii?Q?D5qxo2uDy56Izb/Pgt00NP4eqexdfFbI5k0f7bmSVZIVqCxXqq19DCiKA7+Z?=
 =?us-ascii?Q?+3dbCCt4iooOijM2C1AzBKOA2klkaUwS9q6J701hw7UIQP6BpdZ/LOLNzOAq?=
 =?us-ascii?Q?XBrZ3V7T7ECHs1Lin69+vZ+Vf2c33u6fALuBT+CotdLGo54mb6GuU5ExPXNV?=
 =?us-ascii?Q?pf8BHLKJwPO2ePklcH30lJ0ZtWIlvzcrMxyEValGFgf6sAh+Vo7sPgxapao4?=
 =?us-ascii?Q?DHtt/a5Mv50g9cfsLQl8eTBBIELY7CADyeQ6NwxZbi/y/fHXIRMaNSs3WEKr?=
 =?us-ascii?Q?TYBtYT/89eGxYCn6Fiv/z9eB9ufc1JZ4I1IIdS0/AXK4XJrQKJfilc4RnS9/?=
 =?us-ascii?Q?H6BG3zUvBO0gfLm2E+oeZNo8YQlrxT/YPcdG7SS3azSZFE7YYryCB12u0Y31?=
 =?us-ascii?Q?/tv6Mxy/QandBSIFCELJ/EHIh/H3i1R4fgIvh5Hs7g+XOI/CJfu+CbTawtRY?=
 =?us-ascii?Q?yshMOddABiEsXw6cbxhdQv865v0KSskv4VTdv0rANmQytIuUdJsgn1XHChpo?=
 =?us-ascii?Q?Zs7O1NVmOtkXGjArC4LD2NaZF6NjwfofhUpvX+Qyby8uKz2Fs/ejrN/qYo4W?=
 =?us-ascii?Q?L9UZmcXJSoYXyZMOrKFFyATkbr2NcMvQP8RwXF3UNaDPCFnAlPzNlWUcIyQv?=
 =?us-ascii?Q?aL2d7EGtTUkD4CgldUdgl4+yRrGWAvyb6ZZzyui9VzgZ/3ZNBlEUzuLW5pCz?=
 =?us-ascii?Q?Bv0HbLRkLEwgFfdRnFEXuE19Vb/blM2KEmJHynbcgHoUUtjW3NHay1oxZqSz?=
 =?us-ascii?Q?ygrOdSMEyJermVcusGF6SPTuk3rUmiSkvkzvlsvnhqdfZkO99B1UDf1NIzib?=
 =?us-ascii?Q?qfA7VCkSR2AwIakcLbN7p/EGS87AL+BQDH0WUowOTawFLFYaEZweKUwh1CrL?=
 =?us-ascii?Q?iunSYv4b5IIQNiRAScrKuCUeay9NaiWETNZ295UDlLwlMhxUgZ88GhbeE/nR?=
 =?us-ascii?Q?mS8jd+zDtesJqs0CVLAYsIYgbtFyJ1BjZ1+EckrIDaVmlZNKY3s9qztX0f5b?=
 =?us-ascii?Q?Rr3xGxDmKBV2fYKyS0HavPQQTOIIgL3hY+hjEUaj6XaVqC1mwtyd7TW2ZAPc?=
 =?us-ascii?Q?0NcpZyXsw5j1CQOyqk6SzMu3c/AH1QueoZSIAbLzm6Brv1Ckp3QukTLG+/8g?=
 =?us-ascii?Q?lyQjtu21qA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f45d9b8c-ba5b-442e-eef9-08de7f06d1f6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:40.3605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xk6nY6Q/Y95duDgbZtqE9lHcdCHaUSYeFWjE+BraOn/PxGCNQskAms6jD9tOWmZHKn5m55HuFEmblIc9hyPn+A==
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
X-Rspamd-Queue-Id: 57967259EB8
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
 drivers/gpu/nova-core/gpu.rs          | 32 +++++++++++-
 drivers/gpu/nova-core/gsp/commands.rs |  2 -
 drivers/gpu/nova-core/mm.rs           | 70 ++++++++++++++++++++++++++-
 3 files changed, 99 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index c324d96bd0c6..32266480bb0f 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -4,8 +4,10 @@
     device,
     devres::Devres,
     fmt,
+    gpu::buddy::GpuBuddyParams,
     pci,
     prelude::*,
+    sizes::SZ_4K,
     sync::Arc, //
 };
 
@@ -22,6 +24,7 @@
         commands::GetGspStaticInfoReply,
         Gsp, //
     },
+    mm::GpuMm,
     regs,
 };
 
@@ -252,6 +255,9 @@ pub(crate) struct Gpu {
     gsp_falcon: Falcon<GspFalcon>,
     /// SEC2 falcon instance, used for GSP boot up and cleanup.
     sec2_falcon: Falcon<Sec2Falcon>,
+    /// GPU memory manager owning memory management resources.
+    #[pin]
+    mm: GpuMm,
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
@@ -288,7 +294,31 @@ pub(crate) fn new<'a>(
 
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
+                // PRAMIN covers all physical VRAM (including GSP-reserved areas
+                // above the usable region, e.g. the BAR1 page directory).
+                let pramin_vram_region = 0..gsp_static_info.total_fb_end;
+                GpuMm::new(devres_bar.clone(), GpuBuddyParams {
+                    base_offset: usable_vram.start,
+                    physical_memory_size: usable_vram.end - usable_vram.start,
+                    chunk_size: SZ_4K,
+                }, pramin_vram_region)?
+            },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 389d215098c6..18dd86a38d46 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -191,10 +191,8 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
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
index b02dc265a2c8..dd15175c841d 100644
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

