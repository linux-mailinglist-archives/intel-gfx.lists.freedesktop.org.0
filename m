Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEPUOM3932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCD1407E9E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EB010E76F;
	Wed, 15 Apr 2026 21:06:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="aMb64ZDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011023.outbound.protection.outlook.com [52.101.62.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6F710E76C;
 Wed, 15 Apr 2026 21:06:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8dDkFTMVPJAPIT4VobD9jCRecnDJ/vQRVBLQnao/uFEo+DuQ8bn5ethW3SZFu0/E8P4orJ0yFEv6X6dSJaqGk+Pp9y+aUzrcK+7Fu6rbIvIJtY8NE94kdJsAsTp1sG7EGPjRAf6bslaqLk84NWKgoBd32klIVHgnEPNBM+bTqks6ywfqg3Fug4wcLK9Un2MxEmFOD2cwYk7EJcZ9I90hZyiMPrmxUFswtR1G7Y9a6iBKaOwsyOqRWTmH6Sb5aiJL0p+fCWUIdlMSWELW8blcRd9aGnxuYHP7aGQDafxd45bX+qsI4I6tDzEghRGzoMAto4i/mZtCPU8MC1FFfZegA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jm2eQZVxn+9vxbpNpR4SSwBuG9mTPoY7cqYU2TKfQUQ=;
 b=H9vhDZF0+3+6SDw8LHNBKGhew+QOD40RBFXh33iL+WBMX2agupQjXHsJ1Rz2H4Akv18ebhdazIVNrX0h66b+6dRic2Gw+n8qSoh0WEzitWbNYQekAdn1VxajX8egk/MZ1IJwymuonqvXYjq8/nNAFtnH9JF6MCLdAj/B60hxusY5S5lFMZHcwh88cxEEG6iJ42wWn6UEqklC26RJuVdgSwShITN1xFoFRH53RvYu7WLw2LheKtkWKrrmlaOvjMSjfGXp/aPJ3v2yFzRmtlUyHwbpR8tT79YSeiop8k+CIX/VgtSgJior0iUjccQgB1u+MaMwgMV+bBKV4zON3dCmBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jm2eQZVxn+9vxbpNpR4SSwBuG9mTPoY7cqYU2TKfQUQ=;
 b=aMb64ZDXUgDA5XLyUmGPXhRV3IBgSwPZOJwIe97ZEK/5oh50muN+/LH8zlDAQw9u5YBknbTZtUoIj4wWcEZwtYTb9Zrxbcnq5su8SxwwrCR+XnmaxLsavEShFbd9YlXMtQ+RIY8xwySzo/ZwiARi1vAbnOokl4ERU5IwWpWj1HFihcF7j+8Ohj4OsLoI8qlW5JnNMWyYK6PWOByiVBFE6zDPDW1Io1tU8qG4Nswwev9PX1dm0fTQLlwr9UfxD4qi+ZBLJGY9T9xZom9JxHTS5MGulLMqbYhOu2I0jzCEgGyqaTNkJ46n2sje8n/FWDsPJ9BMd0yCz+F0SaaW/76uxw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:05 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:05 +0000
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
Subject: [PATCH v11 04/20] gpu: nova-core: mm: Add support to use PRAMIN
 windows to write to VRAM
Date: Wed, 15 Apr 2026 17:05:31 -0400
Message-Id: <20260415210548.3776595-4-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL0PR02CA0135.namprd02.prod.outlook.com
 (2603:10b6:208:35::40) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 9988d79f-1aa5-4cfe-3539-08de9b32ce7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|11006099003|56012099003;
X-Microsoft-Antispam-Message-Info: Yq9UEBs6w5nZgokMMQtPzgZoEc0Qp47bAbjMiPXEjVxZYWNL3h1J5q/71uEO42K8d/XXUVnxh/vwvvPKMAcPaQJKa2PvIu037RwilaKrVJV13Uz/0Fu3rQZFyLmynv0EWYETcHSq7Fyi95mHnkXNgZZwrPy44W5zGYtRnHDx8vC3X2fipwSoHsDaRNAnyAzFnpCxtMxscos9wbuDXDXPDtnZvRkuXxrLNUbCkRucElSykYly98LKSamqMtZ1WolkDLnIMVIIV6ScLb5nY17oMUxxrCXOmxXzQnndmH01eOULqvMO6RLQD2P4aaImwGSo1Mk52boMURAswdg4qEpDKnHaboxY1x8XbNN4XV6eNG+PVbLwR7JZzIDTX8KVj/M7c/V3dd8z+Efq4ztsFK3uPydpBvcoRd7ihrhu8HwYz/CgIZPmD6+VDqoQ3cvzxuSiiT4IsmjzCVQJ8LSlpAC7GBlob8WIuYX2XxFoKeygjbSD9TaP3ND05j0FDCTMZyJ0sYXx+l4WxaZILKcl9td8OUjsk+9DxQkJmUQaimNQXrD2V9Ct5DuwQuz+9sFVnZBciHpvKpb1ZuWwvVQMisPqAGL6aZyVqEsvYToddgJMbWs6f28UrCCIQJT2GL8p4apTa/1oCcWRygagHlk0m1JfGl5meWtgNmr5RVLGobM6oTsBB6jfzyBW2qGj1XdubUKLCm7BDznR49nLQBPgEoVbRcm+qAEtPR0yr83Ggmx1Krk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(11006099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yaRASBwkJlM4pa9g/RX3d707e+YnaXh/Hxf40hV1elsDafKjEmHQWw7IpY09?=
 =?us-ascii?Q?XrxSQipmCsSaO9NVGu6IGGygZcSBTiprL8CA+ox0ffhBacq93fg5+Ozmi+nD?=
 =?us-ascii?Q?zzLgVnGvebM3VUOY8qch+z8MzASQ8Ls+4Aj/rnL97V/6W1ZlsG0iwPyyzjHo?=
 =?us-ascii?Q?SLTKSbep9Vq7U6Wjq/SMN8h5LXQYMb9AVZUHLViI36DcVglMlZfWOq5giVZI?=
 =?us-ascii?Q?lJgHOPCBAwMVXOIN94+noJi05YtMyM+0KBBlVZPYR6Nl6j0VnTVA3vbUMbqn?=
 =?us-ascii?Q?1ypPO5N155wDQFH5+9sWpuX9RLA8UZ3OBcvXJLe+oLg/Y96MEle/UZdnw1YS?=
 =?us-ascii?Q?srEyTMrEMfsCv3SkSQPgyennBgUnpTzeMsmVPBgr6mMl8Lk6uq4+0pHZUCdD?=
 =?us-ascii?Q?+Jiw0O3gK4rQ6jpOmOrSWbtHepbza1PZTr1mLvhM9b80vKMchO00uC4HO31+?=
 =?us-ascii?Q?wjnetzHO76m1MvJZBvHGfJ+G2+5KjT8/s0n9BNe0jzevImj92AmjFf4bqB2e?=
 =?us-ascii?Q?ydDyNW6PXdAROtwTCx3v4BLw4D2VtC4kxHUnpiL7Q/yArO/Zlny2FmbzesjE?=
 =?us-ascii?Q?Os3kAKzmCH67xFj6VQWefLrx4T3mv+KxqUHh4qNrF1BnJVklfeNqjJ2Mnek/?=
 =?us-ascii?Q?ohldzjmHR85/M1OyjiO/HuvYY5sTs2QwaQpSCoffVgWQopq7Abri48mmZm4S?=
 =?us-ascii?Q?QkX0enkkAaeLyBb3uqNOKtmJIkAs4hVrv5LvU8pmgKl+N2hAkNlYlYg6c/pz?=
 =?us-ascii?Q?sCuwgWxE4F/k0xihiCtxTuftuAJMjy6VLX6XVo9BzG0MCg8CMTvkLzbHIh/p?=
 =?us-ascii?Q?XPFBUabLoXiJNwvR+1Ew1P3Vq79ojHlsQugD+4scygLLUQNQSrgOLUVVZgdH?=
 =?us-ascii?Q?IGS9CyVLn44KyFPC6IS9Xq7WxQlFX7Orf07ZDDVOuwzBiv4xldyZ5xADwKaF?=
 =?us-ascii?Q?Ia/eb5e1BC/eYpUl4uxkr2Y6EYFsrCcNpECLXlgY/ZOkXPDnXlpRYEujBfZ+?=
 =?us-ascii?Q?R8luyzvR0Pw7Yaz55mXmQKtpbtkVfTHJqD7E5TTyVm4TMYHRfldJLnrul8F8?=
 =?us-ascii?Q?GeoqMYZ5SRkvV7mMKvCPPhKbtPNi7AA+pjIn8E2Ir8u/014LsVOtQsFgYh1Z?=
 =?us-ascii?Q?JbSZgc93l3TspDFpsZI4rzr5rPw+uxXmb2vnj9y9IWdCM9YJDBOEP17lmDaU?=
 =?us-ascii?Q?3qcGEulW6l7eCfTQ8n4PrsI2Sp/sAGx224I4YiSBI2K4DxzCVfyuxXLj1KO9?=
 =?us-ascii?Q?wvObwglyDZbZeSX60VKA7sZ2FRt/oATbAl03nLGNScRUgAAv5JeNrggBUWk/?=
 =?us-ascii?Q?m5/KmL93DEfr7d1v3JjKa4HH5zHVCSJvne40HrVg8LfTVnWoVinK+ZtW+b1T?=
 =?us-ascii?Q?Uiz97syrsUqUcSvnolTw4WI+RUoJQfqcgA78qGSSRkEtULA9fHQlCH1KMWH1?=
 =?us-ascii?Q?jHfbeMuAznOkeGxoHlyeskY9UyJgaw8dL2idBQlL/StO8iuEE667V4WeJxi3?=
 =?us-ascii?Q?IMjTF3bRN8azGiwJNLDPIh2Uf9GuzU7a5bPlpa7QtKBuS5j+p9918VbW+0e9?=
 =?us-ascii?Q?5lL45q0LQvzuOEGZg7/bbzYwLai9/r2fGusbm4Yn+dT4peLEbrubP6i+AuAs?=
 =?us-ascii?Q?A6Pq3W4rHmwjgx6vyfEY/1GOu87mbhguE8d4I/UVRQjrShFIsck5AD1CRaxH?=
 =?us-ascii?Q?GVylyad+BQJc+0eObsnYsJbMQk/xBFfO2uoDYPy7YqRpoGFJNvcnnFtaK6u1?=
 =?us-ascii?Q?83p7qojalA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9988d79f-1aa5-4cfe-3539-08de9b32ce7a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:04.9805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jMcI4gxZOOL5TMLZczpGAATUBS7FB9ZvMcpykYBKPebJOlGNFh8Dr289fQFK0wGLwDdXVJkmX7bFmQh1e89rlA==
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
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7BCD1407E9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PRAMIN apertures are a crucial mechanism to direct read/write to VRAM.
Add support for the same.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs        |   5 +
 drivers/gpu/nova-core/mm/pramin.rs | 280 +++++++++++++++++++++++++++++
 drivers/gpu/nova-core/nova_core.rs |   1 +
 drivers/gpu/nova-core/regs.rs      |  10 ++
 4 files changed, 296 insertions(+)
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
index 000000000000..91a0957b2f92
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -0,0 +1,280 @@
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
+//! The PRAMIN aperture is a 1MB region at a fixed offset from BAR0. The window base is
+//! controlled by an architecture-specific register and is 64KB aligned.
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
+//!     let mut window = pramin.get_window()?;
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
+//!     let mut window = pramin.get_window()?;
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
+    bounded_enum,
+    driver::Bar0,
+    num::IntoSafeCast,
+    regs, //
+};
+
+use kernel::{
+    devres::Devres,
+    io::Io,
+    new_mutex,
+    num::Bounded,
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
+bounded_enum! {
+    /// Target memory type for the BAR0 window register.
+    ///
+    /// Only VRAM is supported; Hopper+ GPUs do not support other targets.
+    #[derive(Debug)]
+    pub(crate) enum Bar0WindowTarget with TryFrom<Bounded<u32, 2>> {
+        /// Video RAM (GPU framebuffer memory).
+        Vram = 0,
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
+                Self::write_window_base(&self.bar, base)?;
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
+                Self::write_window_base(&self.bar, base)?;
+                *self.state = base;
+            }
+            self.bar.$name(value, bar_offset)
+        }
+    };
+}
+
+/// PRAMIN aperture manager.
+///
+/// Call [`Pramin::get_window()`] to acquire exclusive PRAMIN access.
+#[pin_data]
+pub(crate) struct Pramin {
+    bar: Arc<Devres<Bar0>>,
+    /// Valid VRAM region. Accesses outside this range are rejected.
+    vram_region: Range<u64>,
+    /// PRAMIN aperture state, protected by a mutex.
+    ///
+    /// # Invariants
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
+    pub(crate) fn get_window(&self) -> Result<PraminWindow<'_>> {
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
+        let reg = bar.read(regs::NV_PBUS_BAR0_WINDOW);
+
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
+    fn write_window_base(bar: &Bar0, base: u64) -> Result {
+        // CAST: After >> 16, a VRAM address fits in u32.
+        let window_base = (base >> 16) as u32;
+        bar.write_reg(
+            regs::NV_PBUS_BAR0_WINDOW::zeroed()
+                .with_target(Bar0WindowTarget::Vram)
+                .try_with_window_base(window_base)?,
+        );
+        Ok(())
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
index 3a0c45481a92..d087354f03b9 100644
--- a/drivers/gpu/nova-core/nova_core.rs
+++ b/drivers/gpu/nova-core/nova_core.rs
@@ -17,6 +17,7 @@
 mod gfw;
 mod gpu;
 mod gsp;
+mod mm;
 #[macro_use]
 mod num;
 mod regs;
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index 2f171a4ff9ba..a3ca02345e20 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -30,6 +30,7 @@
         Architecture,
         Chipset, //
     },
+    mm::pramin::Bar0WindowTarget,
     num::FromSafeCast,
 };
 
@@ -115,6 +116,15 @@ fn fmt(&self, f: &mut kernel::fmt::Formatter<'_>) -> kernel::fmt::Result {
     }
 }
 
+register! {
+    /// BAR0 window control for PRAMIN access.
+    pub(crate) NV_PBUS_BAR0_WINDOW(u32) @ 0x00001700 {
+        25:24   target ?=> Bar0WindowTarget;
+        /// Window base address (bits 39:16 of FB addr).
+        23:0    window_base;
+    }
+}
+
 // PFB
 
 register! {
-- 
2.34.1

