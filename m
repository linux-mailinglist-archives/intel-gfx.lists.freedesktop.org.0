Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHuZJ73TvGmr3QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F06B2D5D4E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 05:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B4810E87B;
	Fri, 20 Mar 2026 04:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="U+3zs/jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010067.outbound.protection.outlook.com
 [40.93.198.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DB010E878;
 Fri, 20 Mar 2026 04:57:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PRPi3rSJzr5cl0EpBJ14JMFGm0r72GEsy/X4pcPt21GG+C6r7r4NaBBV1xwqt1PAJJo3FhwIWgF5msxTSWx+Vuhb12KtyLdT4Lbzpk+Mt3h05i/ZkbTA5p7oHw4GHLBGl9FdXhfZ+8w4MEWalVl3/Zrj7bAMBztXl4nNj+e42i6DKT9ukeV0M3sN+FVzNvDCTsBZtbCDHXjTwENjLHCgguw20Bv4bOr01g7ts38en2gwuszlkAK4DvI/jwmIQ8XP+gPTCGZ5hX4gz9UVW3X86L57sEkPCtGCXyWkkte//qcUXL8DElfukRSvWw3KOlseEc3zGINj8IDIQaUjpxRBpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8mu+hppfAii2Oy+pp+HkPKMm0NDU7Xfm+XwQ8L+2hk=;
 b=nG8TZRw3aF4PYfC4673lqZaU/G0kL38cQ3hlva7DC4QZbC/xyVkEq00xVIn3d/a7jmIvc2ejeVnTdoBPEt7XR8/c/xtxXtjVx8JwTmclGCJ5i4JE7CKLTuRksvreQ/Bn8aop0rBn5OFzl3SDiCcV6RsYoTdSbWHDLsWtzhrn8uTC6yE5DWsaweethgCbApEe++AfF1y0ooTasXyt9HREGG+KI2lwCbbkNEXMc8GRlyN9sFpOfFlbSQYWBWDgYr06GNOGKoixz0aHa0Tz7/qcG1NNN5wk25POlS0wmh4kx9+1USS1ENwy/1Qu6G9Md9hSJG1wFJgsx6rpAZOW/rjehQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8mu+hppfAii2Oy+pp+HkPKMm0NDU7Xfm+XwQ8L+2hk=;
 b=U+3zs/jddwjXCQOWR644T0hBKRPk5MWTOW/6n/Hnu3hkOMZ9K8JUMJyQM0hy+d5wKAPHvJv47jlJ4Ggfc2NAS0GsfRQO6pWhPJVl+C4rfkcOgdSMeik2zzKVNEe9ew0C8UTol/331ZsWi9tMqt1jfJTh2vJ0RyfgwMsvYbC/998R6YSESRCbfYGnAeTyP/ANgErNBUdWSTcq0rGHyuRNcZYyf0RN+Stnf0SQJm5bLTuOB4E5RNC80yqFm+y39LtgQyny91yXQqjYD8SDrYtXOp7asvMLpxd4coDCJlWsEX9Ds81LNP1Zz9tAguMKmbz68uCn3JpnpxFKz2NC6NoSow==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW4PR12MB7310.namprd12.prod.outlook.com (2603:10b6:303:22c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 04:57:22 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 04:57:22 +0000
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
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
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
Subject: [PATCH v14 2/2] MAINTAINERS: gpu: buddy: Update reviewer
Date: Fri, 20 Mar 2026 00:57:11 -0400
Message-Id: <20260320045711.43494-3-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260320045711.43494-1-joelagnelf@nvidia.com>
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYXPR02CA0041.namprd02.prod.outlook.com
 (2603:10b6:930:cc::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW4PR12MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: e9485529-7850-495f-1737-08de863d2bbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 5NRv5SlTofTouvo8muntGYxwRnIsMZymESPpNt+OY7HxGb6YOxN92EdSg9IDedMuw8uvX5IiLtygalXgsG4pKkjzvBHbsADVGPIWWeFnRifTPnMu+g57qVPQKLcJ85Adu1BLN1bvNvBLTIaeBXXGUaWcjvetniXDiUEBQUcV0SAy1s+VUi5nFVD2cORnlGKmiTghVkOCZn8rskAVFOYexfrsCKgA0hy8/YxslA4ceAmJCbMo1n7sfZHRHV67HANuRb3/ZdKSjNJRgb0a/dHfUwWXsUoI+P6lIMgeWeqSdRIui0AyLZ9L0DKJRIbhQF+GHIaZRavI84pX4CLVoCoz9oHdKYfOGyyNvTkRvbuOCqi4Rt0Fq4EO46SqnaAwKz1S4mfkV/HLH07hXu0IDF8WpU6h4/sVZCm3mqyNMCSP77xgcCMUV6w0d4UIxfoxSEnRuKbnXAWZaoQJjQXfdIG0CrURfAkYENwLlc6i+9Ca3VFTlUWLovKdZDoPj5vZcSaHIoPGiAxjoG6F7hAcIOaJHdZyz6JOsZzQv41FH3VEiLOtGozpA3Onsy+CffqR7q8gKC2AFyxf8lSBkP3H46mstbDEDOKEhdYOBxXZZdD28cl6rXuoI7aO6S3eDXjpdi9Hd+SwcK7bt/P/+Bdo8o7C/BNvSu70K0MInCS+Koq3EjqhG8AhItXi6Wvmspf+pKdlG4wpCG+1ho98FzVe4zwB2/4yyztgPMINLqOLv9+nZBPWFN+aeQpEX8X5PGfgTgUz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R9t/lRGLwrIKX/hnCRZifh7IQLBUJSy4nRPa7l4hdppTEyAKOVHdSYfbVxp3?=
 =?us-ascii?Q?0bxFmpoWT7V4wS02g2hFzb7JDPGuDeDTaBnHjU2mMm6oNEKi9zjH3elnp7LV?=
 =?us-ascii?Q?3RQ+d4OjhkIvp2KStoKFCiXycEaEGW2RTz735PbpVtb25wtEcQX04LgyxMbP?=
 =?us-ascii?Q?DfVe9jYTY6veg0/R/IPj8l9f5CPhtljOxqjVcrWdIq+9idv4yOjucogyFt59?=
 =?us-ascii?Q?bo7wxn1mWlUfVF+sHnxd2bGIPkauIYRmMEokTcCzC3jpcQXcC1eIro9y9e/O?=
 =?us-ascii?Q?qyJpOEgo0tFkYROBXxfsJr47qdBX5KCUBBIYuA/hV4uG87AJVNeKlzHhf5Ry?=
 =?us-ascii?Q?U7dNTbjMbiSv5lLO4K75W0K1AK7HT0MSqG8aDQIDN/wiWYSEhjuVz/XZMjLX?=
 =?us-ascii?Q?VqhTWetRHTecDOb062njZJsbWY1kb9NolwqdakhZQWCpIk9E1eG32x09nacX?=
 =?us-ascii?Q?ryeIrnxaXqfPz9FfZet88LK1pDwhROJ3nHTbacqJjKHMdKuq63N9VXUiGmyd?=
 =?us-ascii?Q?nnOUrLmlRWuZ5DBpoNDawp4CmpZ41A/4CC9HmaVAQzGnFd8a2LzNPOfvcIyt?=
 =?us-ascii?Q?TYwaZSKcxhpvbZJxJJAiOA9RxhqPu/vqTOqx3nMucc+oEbz0YN29BcppGDmF?=
 =?us-ascii?Q?mWiBHB7QCm4r3xU+m1mmGUMCvxqCx1jVYWO/J0psWIL1xy0WEahiSwb7RWtp?=
 =?us-ascii?Q?FqcdQRcHc+otDV2gQMOjrP1lRDcaIp0hnrizejrkDNVm4B45hytBIWTt846c?=
 =?us-ascii?Q?XQZrD2BI1DjTpD9tGYYyhkwgM8DUvMtls7kiitOvWYo3DcJprjFBcqOijw6H?=
 =?us-ascii?Q?yeocttQab4NgFOqtd3bPVmTS0ppPoBmubSxpQkBrkiOV2MkeA6Ef/hnR8Wk/?=
 =?us-ascii?Q?rAFmttrGEC1lIPKfrrBenJA16kLXlKBFzaJmMaxR3QZVcRtbrvSPzWp12oOq?=
 =?us-ascii?Q?5I+hdXHsowbAcEK9jR1vhNuZJcwHMvkcjidqV68s4+eqHgY17LlKfDN/wzQ1?=
 =?us-ascii?Q?urDifIZc6tDluUtSLYdw7lZJozt3jDHeUNZ6Sa1FZJastCvKD8ntJScfxsWf?=
 =?us-ascii?Q?IwynoR2vJ0vgPojd6RD2gwkEzFdICKXL4D2nb77heUaApkZ16qRHTv04BcuO?=
 =?us-ascii?Q?456TZ7+xN7+nwtQnsL/oL5A2q3pBWULBofMBIRvPGtJch4+3J8jFI1nOmVQR?=
 =?us-ascii?Q?Wl5b7Ms6gMPaFGOulYwncxmnsOlY3igMDMoCkvO/LkSu0sjNcJ4xW/8wmYWG?=
 =?us-ascii?Q?PNWoOQ5cKku2SShc6wckFFvQsPjBtvkzyX9oyNzrs59AYQq6d5+w4+jOGA6Y?=
 =?us-ascii?Q?VWIi1tAa7+nGkLMCOdZq3wk0SOl32HijqQC+EGNVzNsBg+LRKEdfZYdGBBJy?=
 =?us-ascii?Q?FcEUv+qnha2mZOhztdzCVBYhNPt5Bj/98fSHcFmbSv0fBY2Vq7sp+qeFZG3s?=
 =?us-ascii?Q?kn2c9nxNzT+kG+IBMI9m3iUUpblZvCQT+2M6C9y6YpbJaq1o0KqKJIL4CuV5?=
 =?us-ascii?Q?Rn2NlRhlUdTbPisojYGifvem/mEP/lv/vuS1Z/npR4cRbaIH/AmExRQFypAp?=
 =?us-ascii?Q?2XRDuhWVYHfEY//KoAIrsmcYY3iurPIFJhdlXwsv0XQ/gWtJli7nS3DHka4D?=
 =?us-ascii?Q?fn8yD1BNJuN+cRUk3DxqzSJUBT1wh0cRR2CtmgXySjbrDYx5NK5enymtON1b?=
 =?us-ascii?Q?lW+FQrZPqjpcB18MiAD7qW7NtsTKkhH61+8b6t3/0wK3D93UCKWN+wSt0r4z?=
 =?us-ascii?Q?k1ySq5qTuA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9485529-7850-495f-1737-08de863d2bbf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 04:57:22.0007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g7H+0Tye3VgnGs8DfSXkof5Jd0+yj4cJYAeHcnfXtdjG8rRMzfk0xpGFkRrZrydBjyDzkOLlUXYajtZwbaB+rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7310
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
	NEURAL_HAM(-0.00)[-0.949];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email,intel.com:email,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 4F06B2D5D4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Christian Koenig mentioned he'd like to step down from the reviewer
role for the GPU buddy allocator. Joel Fernandes is stepping in as
reviewer with agreement from Matthew Auld and Arun Pravin.

Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index cd9505d3be60..3353cbf98be1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8946,7 +8946,7 @@ F:	include/drm/ttm/
 GPU BUDDY ALLOCATOR
 M:	Matthew Auld <matthew.auld@intel.com>
 M:	Arun Pravin <arunpravin.paneerselvam@amd.com>
-R:	Christian Koenig <christian.koenig@amd.com>
+R:	Joel Fernandes <joelagnelf@nvidia.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
-- 
2.34.1

