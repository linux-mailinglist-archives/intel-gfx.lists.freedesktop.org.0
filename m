Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HSQNyi6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3CA259FDB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DFB10E7C7;
	Wed, 11 Mar 2026 00:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="H1rvx1es";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011002.outbound.protection.outlook.com [52.101.62.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EFB10E825;
 Wed, 11 Mar 2026 00:41:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4kJ5jUUfmaQkPkJoMZwuS3Kne2n+BRMv6bv3OmIZVDSfy7q30TpKcUcxAz1owkt/+T5FN5tUY4z+qv8Ltkv1G2Nz1MOGHaa6bA8vsdp3m5x7s+1o5wBGwgIlX4RnLuxwlV62vauGg5okXdn0wkhHajD9NY7NLVlIaP4xM/6fE1hKRNltQ4SYmv6zlUzUVCLHTky/80J9hjtNcXbIuIxqi8aDGD6kIFariQI+O7yUMmTA7wpouBhA4szAISvpP3++GOb8eLlOgylw8z5hFKOTpcD2fdlf/NpK8jyFexmiGwtJmbc+7Yldo6/hEt77zs1ORPRhDAJg2Bov3UdKqYkTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYoJb2+lhbNuSrPzYkYIe8mKhqhfb+hP39OA/zUCiBI=;
 b=wFxFh7W0GP2WiaEQXCEjxPqYU1IAIjBKa4Tcvl2NYgPGP5qaOZum9o/+bJ6VMGMnOw/EHCK/r0CPdRwrvm0XA3jT/2ijRHadEwAa0wNMrY4mYYfdA3c71/aaBk76NOa1XGIeWezfl/DqUhmKIs0nCa3pUhIKvyGOPxbyFpSnUd6dQxutGdONE1XH8VUdQ2KxCculjFDWHPD9orzSITW6N8mCTnh02kbZB0EhLomBUOq1jnFvTf3uYTSlMBHZZQ9Um0J1XTBbtFBwNpkSTWFK8JKrlImTXR1WawUNX/xmhRQ2zCjLqFNmwQYP0aFkuT67aZrLfJbuGw1nu2fp+ZgWHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZYoJb2+lhbNuSrPzYkYIe8mKhqhfb+hP39OA/zUCiBI=;
 b=H1rvx1esjl66MCf2kR9Lh+9x64KM4G9NPq7S3RPfR+4acGS3gRHO6NVe5PiEiyaehRyjfiNVqSVJNrm8vHRMBtmLhxj6bh/JFBkZtTOm+fPz6fMvG/4cW6wIu8dUjSkElz7V4/313eSZvOb++1Dtqud8Ohi3FcaKLJQMK2NasEPDaUgeWNWwlD6sFlzas+K8A0QQMoiJSiX/Hi0H+r8hL2AD6g46jwOcmGnGlLgJV4dLG5H13u9lHB8czReNvjNLb6oftsdy2jp5BkWv+5UPugyiyblOz+IZVrP3IbJVPRUc9ldEJudies03spVkRp8CoFDrE5EgfvIGNkqB58z0Rw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPF62A0C9A68.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6d2)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 00:41:01 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:41:01 +0000
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
Subject: [PATCH v9 20/23] gpu: nova-core: mm: Add BAR1 user interface
Date: Tue, 10 Mar 2026 20:40:05 -0400
Message-Id: <20260311004008.2208806-21-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0085.namprd03.prod.outlook.com
 (2603:10b6:208:329::30) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPF62A0C9A68:EE_
X-MS-Office365-Filtering-Correlation-Id: 32638861-af75-4596-1019-08de7f06de8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 16724QOuySkm8TeGVwG6zc2mWotnYIwFaDXVlnDvg9+Ku949CqRkDnfv0tEGAyDC9RoXASR0rG0ah/ozXxJhOf823wPVfOGOyHCdwMp6486rTy03o9qCMJrqI1AtFAjak9yHdgtkIGQz8aoqew52k1u2mhXhTabZEEF9gsDKw9M7yuUuEiFL5RPyc5nGHmZqoTJuB5tcEJfkEOVHDqh9vQ+cueVQW3BmtYUQaDToIMBnDx0LFbzKC+Sp/N9T5j1frzinJW721plsWWUyo0YRjSRDXf56TDZbKQGB/uR8DGU44fHP3StiHvuYyunwirmst2/YI7l/a8pAb4NFrqwLAm7VfN8R7eV0+kuw8YmiwDybAytWm17ZaLH71XF7dzPFngbddzJNWiM4LZ5uCvd2HpdOwT5L6hlCmlRYu/OQZaNK2a1wTkONLtk/dYY33EI39V1Qfao8taL0GqGCOR2CHyMfd41CzZZ/cdDPwcsQkvI4DirApr27btr07tIYJ0BGLhDprNCMoF2Zv6sT1v3n9OVfh+rCVRJav7Lmr1AQclqwwxivWTUPGSNFpZ7PcpScxvXphX8KwGamR9ar6KbO+M42J083+drR5hfA/GOvMl7lcr4KNtxth1KQi/NSzZFQimBO+Cqnlo/53jh73AuV07fKG4pdtr9nbtkR6uGY34QFId1qoS/AZWfnNwO+/OVaEPDAiYucYIETzYFQWQXo8VZr1h2A/opfbct6o4HMbUE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nVGzoZw3CSUfghQWP/K+PnCmZ/SGpgW5XZk/Be3rJe84H5c65McGmGz6soZ/?=
 =?us-ascii?Q?mbzxXDfM4KHiX57y1SGVPRxR/uh8SQUs3DJf2BwtdGKifrQjCq2GrjnWDrqq?=
 =?us-ascii?Q?4OJJkyDQCzseEdTHFQ3/tdzL5h0nhvwDOlV8vcw245QgAon5GIiP3TXi7qcL?=
 =?us-ascii?Q?0AXOajkejbeaWIOhxdyoNigOW8v39dLAebEeoZRfrwYOlSB85ce+O1HwPuWh?=
 =?us-ascii?Q?KT9xdfYjrq4SqOv7jfLYbitXP9kCxiMdudGMnnqDN+KauGhNneWGsUdTWbFO?=
 =?us-ascii?Q?jYNj1mxFaigYm1IItRPTir4UXobBYu51yvwI2APB8T1fQEqcPdXJcUNp4Qjn?=
 =?us-ascii?Q?PtdamLUDJZkzzoy79TpQBt/vSFxfw42RpcWNS22kEZkq5SMCK2WdTdoNXnzw?=
 =?us-ascii?Q?QjCotngC4J3DiSMzeIQNbq6gi2YD1jHzAyts2KY7ChMOo+SlYsAZBGbXtfD4?=
 =?us-ascii?Q?mwrlFjvG8iKpdmBDr6O7UiT5i65TePeLNjJG722Lhb+oljTTCi9F71/vRxkT?=
 =?us-ascii?Q?Epl+WzdcX82OKbuyxgAhdIwzntuZLb/qvJ3W9r+AsupzIktd6N1sO3RMgvp4?=
 =?us-ascii?Q?0fFa5zeWOu2BgudH/XWa8AHoKsWyosowj3YGhUZbWziF8GLT3CvLuzXQNZbD?=
 =?us-ascii?Q?TdMDwZFjUQcro2yvE0hjP8N0jl/MO4W8rKGA1NqfYcTHy85sAOAGdGMYDnwY?=
 =?us-ascii?Q?JBVM4rCMZkN9VK08iG45KyoCnWvYzJ6MIhUcUVh7HIUSoZTvZikOCauAjkg2?=
 =?us-ascii?Q?eSxDnBYkvHCy38JwfJIrR38jQCXNlHwSe27AH9OqeRz8vdC6u9MVyY9yX3Jw?=
 =?us-ascii?Q?6G0PFTYCGEAKFEFWq+0L5fF8r5qlSz4efH+CTNDaJ5x+PqhYk3tLy54toRDI?=
 =?us-ascii?Q?rsJCxZ0ceCMagfIqfFet0IdHwmwhE7p7xzJ3rb6SXaG+wLumq9sHMZKdD7Nv?=
 =?us-ascii?Q?kgJ3DF0ctrZSBl/UKG3E2PeBq/tZmF7Ucuc247P4O+PWu05Gdcu8JaZ19dmm?=
 =?us-ascii?Q?y6ZlfIN75dFqGOC7xhIkpfQktBdQP1fs3/iRpNnPPoueEmjhWs7WAgeUWS3U?=
 =?us-ascii?Q?fI266HhNjlsZNZMSwqZnDlegOZYGEChNX4+WY42QFJOTsrGsxdqJoiENGp7n?=
 =?us-ascii?Q?rJliWeO04hgAkJICRVFFwp0ANbcU8r0ogZvOOQXKtBzMznybJHkCq9cdqTGF?=
 =?us-ascii?Q?TSIYngMXkvHmvk7Sw0rd5FI5noobxUiIlcoP3ydT4PkQhxF9cfggbaQU+EEZ?=
 =?us-ascii?Q?Xq8pwXlgr1K0gNFIvYNyMWTQ9zjpw0GUkSmjKLZSFsAmx/0RiNVXrxrwQxit?=
 =?us-ascii?Q?mdBDc/ZTGAVACj6to96PuAg4/lHEoOLb+y5PKme2GVc/jkVnQCb+Yk74N5pv?=
 =?us-ascii?Q?fYzDVgm0bz7IElY9Eo+CDD4x0nVV8sD/oFIXg83+787faU4dHym6h+FYHvO5?=
 =?us-ascii?Q?6xkQQrpz9Dn5PvV2F1XVG0iFgKTn00sENIfUSUV53AzlNT9wgcMaZrsD/bx8?=
 =?us-ascii?Q?lUv/qeUq/dfnLxnq0N5NdlUK7gjIzZjuBU73/uuOgnWZobL6cTaH6PvK84Bl?=
 =?us-ascii?Q?UtiBKpQm9ijm2mEmJmK4pWyv5kUu0/e4uXW01pBZU2YuDRueIyDzxGzoyoQd?=
 =?us-ascii?Q?DNv5tJ0rIjkhooYFSWoxTDDams9z0eyNBUsKOUsBIavSTHvFEdAF7+xbc/K8?=
 =?us-ascii?Q?cBGx3ptBh3UjCquRftXLbkmQeZZzPZvCIyX/p50XVMaUQ8gWL6ckqZ0XmuSC?=
 =?us-ascii?Q?7g+2L9XBCA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32638861-af75-4596-1019-08de7f06de8c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:41:01.5776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JYPb8ks4tF02ye2Gyy8YnVw6XsTZcl+UqYzXEm7eSMjN4tFOm3nWbcJA+DR2M0VjTAXp9QP/JqrkrdzfkjKpFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF62A0C9A68
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
X-Rspamd-Queue-Id: 8E3CA259FDB
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

Add the BAR1 user interface for CPU access to GPU video memory through
the BAR1 aperture.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs       |   1 -
 drivers/gpu/nova-core/gpu.rs          |  17 ++-
 drivers/gpu/nova-core/gsp/commands.rs |   1 -
 drivers/gpu/nova-core/mm.rs           |   1 +
 drivers/gpu/nova-core/mm/bar_user.rs  | 156 ++++++++++++++++++++++++++
 5 files changed, 173 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/nova-core/mm/bar_user.rs

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index b4311adf4cef..3bc264a099de 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -51,7 +51,6 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
-#[expect(dead_code)]
 pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
 
 kernel::pci_device_table!(
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 32266480bb0f..efff76313b89 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -24,7 +24,12 @@
         commands::GetGspStaticInfoReply,
         Gsp, //
     },
-    mm::GpuMm,
+    mm::{
+        bar_user::BarUser,
+        pagetable::MmuVersion,
+        GpuMm,
+        VramAddress, //
+    },
     regs,
 };
 
@@ -263,6 +268,8 @@ pub(crate) struct Gpu {
     gsp: Gsp,
     /// Static GPU information from GSP.
     gsp_static_info: GetGspStaticInfoReply,
+    /// BAR1 user interface for CPU access to GPU virtual memory.
+    bar_user: BarUser,
 }
 
 impl Gpu {
@@ -320,6 +327,14 @@ pub(crate) fn new<'a>(
                 }, pramin_vram_region)?
             },
 
+            // Create BAR1 user interface for CPU access to GPU virtual memory.
+            bar_user: {
+                let pdb_addr = VramAddress::new(gsp_static_info.bar1_pde_base);
+                let mmu_version = MmuVersion::from(spec.chipset.arch());
+                let bar1_size = pdev.resource_len(1)?;
+                BarUser::new(pdb_addr, mmu_version, bar1_size)?
+            },
+
             bar: devres_bar,
         })
     }
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 1901c8928ab8..bfbe7bb05755 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -191,7 +191,6 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
     /// BAR1 Page Directory Entry base address.
-    #[expect(dead_code)]
     pub(crate) bar1_pde_base: u64,
     /// Usable FB (VRAM) region for driver memory allocation.
     pub(crate) usable_fb_region: Range<u64>,
diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index 6e58f597fadd..c053d4f3b26c 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -4,6 +4,7 @@
 
 #![expect(dead_code)]
 
+pub(crate) mod bar_user;
 pub(crate) mod pagetable;
 pub(crate) mod pramin;
 pub(crate) mod tlb;
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
new file mode 100644
index 000000000000..0d083f3e72c2
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! BAR1 user interface for CPU access to GPU virtual memory. Used for USERD
+//! for GPU work submission, and applications to access GPU buffers via mmap().
+
+use kernel::{
+    io::Io,
+    prelude::*, //
+};
+
+use crate::{
+    driver::Bar1,
+    mm::{
+        pagetable::MmuVersion,
+        vmm::{
+            MappedRange,
+            Vmm, //
+        },
+        GpuMm,
+        Pfn,
+        Vfn,
+        VirtualAddress,
+        VramAddress,
+        PAGE_SIZE, //
+    },
+    num::IntoSafeCast,
+};
+
+/// BAR1 user interface for virtual memory mappings.
+///
+/// Owns a VMM instance with virtual address tracking and provides
+/// BAR1-specific mapping and cleanup operations.
+pub(crate) struct BarUser {
+    vmm: Vmm,
+}
+
+impl BarUser {
+    /// Create a new [`BarUser`] with virtual address tracking.
+    pub(crate) fn new(
+        pdb_addr: VramAddress,
+        mmu_version: MmuVersion,
+        va_size: u64,
+    ) -> Result<Self> {
+        Ok(Self {
+            vmm: Vmm::new(pdb_addr, mmu_version, va_size)?,
+        })
+    }
+
+    /// Map physical pages to a contiguous BAR1 virtual range.
+    pub(crate) fn map<'a>(
+        &'a mut self,
+        mm: &'a GpuMm,
+        bar: &'a Bar1,
+        pfns: &[Pfn],
+        writable: bool,
+    ) -> Result<BarAccess<'a>> {
+        if pfns.is_empty() {
+            return Err(EINVAL);
+        }
+
+        let mapped = self.vmm.map_pages(mm, pfns, None, writable)?;
+
+        Ok(BarAccess {
+            vmm: &mut self.vmm,
+            mm,
+            bar,
+            mapped: Some(mapped),
+        })
+    }
+}
+
+/// Access object for a mapped BAR1 region.
+///
+/// Wraps a [`MappedRange`] and provides BAR1 access. When dropped,
+/// unmaps pages and releases the VA range (by passing the range to
+/// [`Vmm::unmap_pages()`], which consumes it).
+pub(crate) struct BarAccess<'a> {
+    vmm: &'a mut Vmm,
+    mm: &'a GpuMm,
+    bar: &'a Bar1,
+    /// Needs to be an `Option` so that we can `take()` it and call `Drop`
+    /// on it in [`Vmm::unmap_pages()`].
+    mapped: Option<MappedRange>,
+}
+
+impl<'a> BarAccess<'a> {
+    /// Returns the active mapping.
+    fn mapped(&self) -> &MappedRange {
+        // `mapped` is only `None` after `take()` in `Drop`; accessors are
+        // never called from within `Drop`, so unwrap() never panics.
+        self.mapped.as_ref().unwrap()
+    }
+
+    /// Get the base virtual address of this mapping.
+    pub(crate) fn base(&self) -> VirtualAddress {
+        VirtualAddress::from(self.mapped().vfn_start)
+    }
+
+    /// Get the total size of the mapped region in bytes.
+    pub(crate) fn size(&self) -> usize {
+        self.mapped().num_pages * PAGE_SIZE
+    }
+
+    /// Get the starting virtual frame number.
+    pub(crate) fn vfn_start(&self) -> Vfn {
+        self.mapped().vfn_start
+    }
+
+    /// Get the number of pages in this mapping.
+    pub(crate) fn num_pages(&self) -> usize {
+        self.mapped().num_pages
+    }
+
+    /// Translate an offset within this mapping to a BAR1 aperture offset.
+    fn bar_offset(&self, offset: usize) -> Result<usize> {
+        if offset >= self.size() {
+            return Err(EINVAL);
+        }
+
+        let base_vfn: usize = self.mapped().vfn_start.raw().into_safe_cast();
+        let base = base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+        base.checked_add(offset).ok_or(EOVERFLOW)
+    }
+
+    // Fallible accessors with runtime bounds checking.
+
+    /// Read a 32-bit value at the given offset.
+    pub(crate) fn try_read32(&self, offset: usize) -> Result<u32> {
+        self.bar.try_read32(self.bar_offset(offset)?)
+    }
+
+    /// Write a 32-bit value at the given offset.
+    pub(crate) fn try_write32(&self, value: u32, offset: usize) -> Result {
+        self.bar.try_write32(value, self.bar_offset(offset)?)
+    }
+
+    /// Read a 64-bit value at the given offset.
+    pub(crate) fn try_read64(&self, offset: usize) -> Result<u64> {
+        self.bar.try_read64(self.bar_offset(offset)?)
+    }
+
+    /// Write a 64-bit value at the given offset.
+    pub(crate) fn try_write64(&self, value: u64, offset: usize) -> Result {
+        self.bar.try_write64(value, self.bar_offset(offset)?)
+    }
+}
+
+impl Drop for BarAccess<'_> {
+    fn drop(&mut self) {
+        if let Some(mapped) = self.mapped.take() {
+            if self.vmm.unmap_pages(self.mm, mapped).is_err() {
+                kernel::pr_warn_once!("BarAccess: unmap_pages failed.\n");
+            }
+        }
+    }
+}
-- 
2.34.1

