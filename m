Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMPlFAe6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB8F259E03
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD6A10E7AE;
	Wed, 11 Mar 2026 00:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="DlxC8Sdc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013026.outbound.protection.outlook.com
 [40.93.201.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3193A10E7AC;
 Wed, 11 Mar 2026 00:40:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bLJSFN+7vfggYu5soX297SPe+SGyX4lmffjzfZ3FDxyEDV8dhwAHR2beFPcdYAzE9VOXPIDrXRNUXx22m7A0ql4zlhvyT4LenDjTGGPdHN4NptvId7a0ygxO4IqnC/cTao0+zTMjZv6Q1G5YokISWeMU5hH37T6ovEclS+hx99LZmLMUpsJEKuleYQs2noJ4fDWQu3caJsd4Ua8WxbP2+ukgYsTHWbgouRpXE2+SdD3nY+t3eC6L9xJ44HjA1UU9KeO7u6yefdpTe4iqNj8hHFo0CPHtNkrM8Bq0RA7CshMsIw/BovVgdhMwF8pzMalTh+X9Ap8ny6c8SOvEhLRsIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzIbsM9pyWntQl76KvoHuFP9qqGFV8O/WtwlJYb4Phs=;
 b=mnaV0l8RPFUyVODKI5vuecSHVMfy86VGdqPA7dxxrnyKAUphMMIDS5pfU3HiQapdox1knWyM6GEOCSxUNjYchbEKZeGWZRfoZwFSrh1JJSiriBbviqV91HYyOmVURhodeON1BcIzy1H5tCOOP61FYczBeiterNn2W1sKVDYO99m2veEvmmg6lTYY5v+v+P43rw/8xIDlNRlXmur8OAfBOF494DbyvdEyV7PnwZu2OWOUkwWxTiWANhi59k97ac0Gaicjnr0Z0Xys0u7gLQP2cNhcH4StOk8LSYF2SdH8XGR9ISgOKiGLPV6B5zNPKGJe+DnM6+6sN9f8ogO9VaGJjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzIbsM9pyWntQl76KvoHuFP9qqGFV8O/WtwlJYb4Phs=;
 b=DlxC8Sdczaxlk72LHfsl0sqWFPxYUCn6O5JLDnBZtP8X/F/BnLdlYmpS75COi4qcMEGm7E1kQPiSsRuZVYaZz1aAufWnjNTb503/q0Hi8W0btmFXCwZGHdysVuINL40Ug0AseqMzKkwlDqw/ykK6E6ifgMmNamMxdKkIdza6q+3nH3oV/csPUaFq/4O9VeNlqRsKjsiEgD1Verisryr9Kwo4OCMl242uBFxTc0PWftIY27eRqnZjLi+e3FJ6/CS/d2iTZ7QeSWJdMupDIOhGtpA4mgPFRHV5nhPismPqBUWkJ46jK+sjgrpQoe8IKJvKwYqARkcsVc/M1nuad3yKmw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:27 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:27 +0000
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
Subject: [PATCH v9 04/23] gpu: nova-core: gsp: Extract usable FB region from
 GSP
Date: Tue, 10 Mar 2026 20:39:49 -0400
Message-Id: <20260311004008.2208806-5-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN0P221CA0024.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:52a::24) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: f78ef237-e218-4085-b6b7-08de7f06ca2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: CfiRdGXJgQ7knFHIsZpUZyOiCF6F+l8CZvixw3S4ivNqfLGpaVNy+AzNqw5Dqo7V1erK4gFAlJFbLSzneU12A24i3uo7Vs7pwwRAFxQzv2pt8q6fwXfeGWJwC5ASDOjgQv7+3vyN+KvF/xZaY8Bh6LRDPrNRn1J5yy34dPZ+AREyxZZ4y4qpmr4IsLPr7x1PBwBcIXRd0bchhnEJ2ic+DyIt6rCzlglf0CR4SucDfSpyikHKETBis/VFVDRAzHvKiWGUIoDVT8eWeutkn2OUt9PfOdaa5ZJCnEObrkGKQBUMR1NgppRLINF4lstUDzbUw6DILdmqRIJqShpb29YJ8n3Z1NkIseQ6U8c7z+GzJAmR4EopQPEM+rAVCWDwsAD9W7LV1lkmoTO1n/TXdkFfQTi4B/KJ0ZJ6+Pp4CfY2rq4ZTggNhjRM2ltIsz+Cdb/10FfRqOgr8EWsST5kPg9xBem+nJh0wvX0peGQtI4vmUkEdqrNWEGmYyHvs4zEC2ZJEoDIAfVYSMUIzEj41KHJ10vxRKvzmIPB+MZHNuXittrs0c5gwDWKbLGrc3qKlrKLEWmHPVmysQUYo/eVENpR1nSdpXO5vO60r+GOrMkyf+n6MouCWydcMju7oq3OXvm2lb1VTKJHXQkzvKBZGZq/+NXSAmtPRtAVpZhuiy7Jmvvnha9x8nhn9w3awZA8BNs0WZ/DAaa5tNfOop9zIiBThjkcsH2qKi6DWyW58li8M5c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jug5KOQODaigLrUlUF9RW/DId7l3YH0G58xoQMnsPg6s751MOrAKMt4WGQ2c?=
 =?us-ascii?Q?Z/qcuEcuOOsDPEHaRV405YufXNYpBgDHRPXF/8WGC/9pZUozOLMjQZjouMFo?=
 =?us-ascii?Q?xUSm985uMiql7OKKFTRKvR/kgq1DwcfLhoRjDPDTp3o09HXWEYVxFjHD9a46?=
 =?us-ascii?Q?LV4IKTvlyqEF+Q5/hUI6iwyUx6ifa3g1jQFSRQ5/ZvNzCIhbA1T7HO23nsVe?=
 =?us-ascii?Q?w2qB+XQjd3YhtDbDOrc13eZowgtftxeInRfCLT6VZwuvcr3CeDGxkNPU/LRW?=
 =?us-ascii?Q?GMwii9vON/Erhicv8na/nxK0Z1Pt/nRHdlcv+1PvumamMoGF2Gb/Z8R++XqD?=
 =?us-ascii?Q?VLuXCczTcLi3KO2cWvNjmu251ey9pSyYJP3LwEx0ma04RXkNnA+Gioc0dZF3?=
 =?us-ascii?Q?FA1ZSdumjB+ziEZUvK8O5oHqk+nl0blUPHhRJauvmmXYNE6aM0pLFbvI64e+?=
 =?us-ascii?Q?7Skzj6tsvz8nDq3ZqvaGoJ+UhbEpMYPykZZnN5oqJYv2voiJcny3z4EFzJA6?=
 =?us-ascii?Q?MisYUnRIrcKyUjfNVHGk0nQZKr8VOtlTgU0bwWxA7eKudIi3HyLyTSaS5RMY?=
 =?us-ascii?Q?e5zqH6EXAuhfgCWa9NmtveVxf2udpv/d38RBeP6MCeHQ8D8eaSl/y6ztW2XY?=
 =?us-ascii?Q?CFelfpVBjoJnidR9YYUzPVeuMnu42mOXdNpRbzTJsXZ+rgz/sY7cFaCSu5SI?=
 =?us-ascii?Q?kDhE1f2d8Ixef55H6q7bLIPduvazP4vB/ZQKKyQ18ndjJpkAFkZA/0GiU44U?=
 =?us-ascii?Q?epqd227ic8vqdbkOfVWOprLuW6uVuu7Al8Dt2y85S+5/e0J9HXIB4RQatqZn?=
 =?us-ascii?Q?/C0nwNLE03jXQ9RUHLH5MqkALNSdzhBRK80tRDwSyZ8UsbQgsOtt4VkazHe1?=
 =?us-ascii?Q?Shwk4fqchmnrj2qgzwcgdguhEK3qfgjL0Z1SukBgHfdT+qyaSQUlGyx+nnLr?=
 =?us-ascii?Q?DMvFIOgAJDLxcMcdJCLsoDxeWYbiN4SHO+URaluQ0BjfdkQGqDVbm+68VsPf?=
 =?us-ascii?Q?du70jIBQVtR8VTrEBlLb1ipLVHGL5MNadruBZVQandq/yqc6ja+GisN/1trm?=
 =?us-ascii?Q?ZjRtFfjaXJ1QFe8kxdf1CXA+F/Il0LXvcruNaA6nXvUR60DiVPp5BWsUnvLk?=
 =?us-ascii?Q?XrUmznGgvEChadbQ6hbK4fLyii8pgAsoUK7s/y9Jaig18RDsBPdXZA6UgAsU?=
 =?us-ascii?Q?mTCM75MI5Cf6F8WEgNHDzkliNSW+Dnaj7WhEzyefjfM5G8ej+BNVtVNNVhxF?=
 =?us-ascii?Q?FOUI2RWnbVBFHCu/mACf3g1F52fq/mso7CKaQwMxZwlW4BFuVMTNorBAQIUA?=
 =?us-ascii?Q?qafwiR78gQrMF6AlHASOZkjJGoG+sAhCAYAuPds6Oa76NG+THKnwKKRTIB/+?=
 =?us-ascii?Q?e18G0bC9DaMuXWdWHUnlFaJZ41i/9jvnHdfN+hYDtE9j9NbNqhzKSBpLr84X?=
 =?us-ascii?Q?XFULy9G7QQ2m5+EgloJQvdRdN7cvMzFhM171Yi0OIIXZlXOo3PkiEbnBsglc?=
 =?us-ascii?Q?lFNG/a+Xex3317QJKn5E2IYrdE4lCCi2b/1FmGh2ICZ12XD58Lb3MFkPkR+R?=
 =?us-ascii?Q?8bO2E7Xvu/vaTSJ5pLSSwNhAZ5OJPhGvvZTx/SMuWa9JDpctO1SNB9Wdz7Ot?=
 =?us-ascii?Q?QBZ8u6dM8ILijaRs0yiWQFov37jvLGqhDIDtkSZx69RpGNOZ5TdYCmWmaEqC?=
 =?us-ascii?Q?k6tW5G3QFPUWCjiN3Wi2TiPZkQYR4/pLJ/cb1vxSjb/ELuTpkDyOt41YgvbE?=
 =?us-ascii?Q?gum09ksmdQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f78ef237-e218-4085-b6b7-08de7f06ca2b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:27.3487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J6Pox2MtdfADfBxTSBSBhSe8LTZ0JpEWJdv2ms61S8JG5/npYN4IATJUfxwHIx2Ls4QytoTxWSsUBWo/TDJj3w==
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
X-Rspamd-Queue-Id: BCB8F259E03
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

Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
usable FB region from GSP's fbRegionInfoParams. Usable regions are those
that are not reserved or protected.

The extracted region is stored in GetGspStaticInfoReply and exposed via
usable_fb_region() API for use by the memory subsystem.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++++--
 drivers/gpu/nova-core/gsp/fw/commands.rs | 32 ++++++++++++++++++++++++
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 8f270eca33be..8d5780d9cace 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -4,6 +4,7 @@
     array,
     convert::Infallible,
     ffi::FromBytesUntilNulError,
+    ops::Range,
     str::Utf8Error, //
 };
 
@@ -186,22 +187,28 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
     }
 }
 
-/// The reply from the GSP to the [`GetGspInfo`] command.
+/// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// Usable FB (VRAM) region for driver memory allocation.
+    #[expect(dead_code)]
+    pub(crate) usable_fb_region: Range<u64>,
 }
 
 impl MessageFromGsp for GetGspStaticInfoReply {
     const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
     type Message = GspStaticConfigInfo;
-    type InitError = Infallible;
+    type InitError = Error;
 
     fn read(
         msg: &Self::Message,
         _sbuffer: &mut SBufferIter<array::IntoIter<&[u8], 2>>,
     ) -> Result<Self, Self::InitError> {
+        let (base, size) = msg.first_usable_fb_region().ok_or(ENODEV)?;
+
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            usable_fb_region: base..base.saturating_add(size),
         })
     }
 }
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index 67f44421fcc3..cef86cab8a12 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -5,6 +5,7 @@
 use kernel::{device, pci};
 
 use crate::gsp::GSP_PAGE_SIZE;
+use crate::num::IntoSafeCast;
 
 use super::bindings;
 
@@ -115,6 +116,37 @@ impl GspStaticConfigInfo {
     pub(crate) fn gpu_name_str(&self) -> [u8; 64] {
         self.0.gpuNameString
     }
+
+    /// Extract the first usable FB region from GSP firmware data.
+    ///
+    /// Returns the first region suitable for driver memory allocation as a `(base, size)` tuple.
+    /// Usable regions are those that:
+    /// - Are not reserved for firmware internal use.
+    /// - Are not protected (hardware-enforced access restrictions).
+    /// - Support compression (can use GPU memory compression for bandwidth).
+    /// - Support ISO (isochronous memory for display requiring guaranteed bandwidth).
+    pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
+        let fb_info = &self.0.fbRegionInfoParams;
+        for i in 0..fb_info.numFBRegions.into_safe_cast() {
+            if let Some(reg) = fb_info.fbRegion.get(i) {
+                // Skip malformed regions where limit < base.
+                if reg.limit < reg.base {
+                    continue;
+                }
+
+                // Filter: not reserved, not protected, supports compression and ISO.
+                if reg.reserved == 0
+                    && reg.bProtected == 0
+                    && reg.supportCompressed != 0
+                    && reg.supportISO != 0
+                {
+                    let size = reg.limit - reg.base + 1;
+                    return Some((reg.base, size));
+                }
+            }
+        }
+        None
+    }
 }
 
 // SAFETY: Padding is explicit and will not contain uninitialized data.
-- 
2.34.1

