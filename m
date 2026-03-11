Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHovFQa6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05871259DFC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0981410E7AB;
	Wed, 11 Mar 2026 00:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="sdCOTqYr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010024.outbound.protection.outlook.com
 [52.101.193.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75B910E7A4;
 Wed, 11 Mar 2026 00:40:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMt6JSlEMT+78RKpcYMMXtorJOsDn8+htmrmXj9nmtsLuBxd6r+otD5UPQr38Andx1Y24bp+UL+h5HFOTxciR5g1aeLR4qx6OWh5gCxdNujd57J684h4Ol9vOv3RIN2jsm60ilIHRjuCTUMZ4W9DYOwGiuJfATng7HgXthLLYFXtS50WauUtI/1UChD0K2vROSc9apm1M0AyG1Yy7aH4bEP3n0CCnuXfaeCBWnSuSmB14Q+RIwtPg8SbzqBpvv8kx/Or/RtY1y01xhqCCHVeOLds2tIOn91DsrXW7ShTKmpHcDAEcbKAUhNk4yRI1vehSTxIhWQgZH8QY+CcQvOBmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qvpdrm76j/rruwd513m55r8Mm6CetKUvFZvY18nLG00=;
 b=kb/EInO665lHhHYd8dHSah2JMh4dx0zhJHE7XoJOtGB9IZc+JxED/92voPUw71u0Z32oPW5DKx3M+UjOoQ9s1uygKRrbWtqoLBFGMZcRqbWEvGXj0upBRSCHJXTWrnJR8vVIQQMvZfW+5FAaOka/2pR7ezdrHcA3lW/v2gD4Y/hl69vS5TJpnKAbedfqyX32OaL8DK+8sIAaktkYqYMWqD4KXe7lSpBQGMpjGx/GwVZXiRWG7hu4SVmGiS/VWwV8Mg/DPyRiE49xH8ldWnFMLWBip++O6b8bXuR1MWMjY7HElle0Wwr7g6MiDNlhvfYG5Aw5anoa8sQuaHLb63tq/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qvpdrm76j/rruwd513m55r8Mm6CetKUvFZvY18nLG00=;
 b=sdCOTqYrs/Wdi74XyOL5SmaK6xxGHpqHIN2zda1I4RFH6VEIH2RvNCQpNwTMkLLcF8H3ob23sRMr3OgNGXCMFmGDiVQEe3e/3+zZjzkdQxpXYqDcwbOUUer9ba+ctp5bukaxz2YimXqONWB1Yh+hI3wuvn2it87EdjnbFBCnwoq5+ew9x37qgG2ZqJw/66cUUViasWyJtrVWwWgrS5/f2Li79yDrWK9ykBd42yfjR559xV6tYrgJkPVA8W0AVZz2Cqfzx0bTvJia/a0SbvmvcnIyEQLurlIMSXBryYNKCGBV63cGJNevPSY8dwtKhvM+WGcnpk7qfKkFoKuFsePUcA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:25 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:25 +0000
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
Subject: [PATCH v9 03/23] gpu: nova-core: gsp: Return GspStaticInfo from boot()
Date: Tue, 10 Mar 2026 20:39:48 -0400
Message-Id: <20260311004008.2208806-4-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN0P221CA0010.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:52a::23) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d77d5f9-a6ed-44b8-ea7d-08de7f06c8ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: kKaBAnbyViMqQlJy6WPRqb8a4l3LQE7mbd+k+rG2ZK3dxtb2jtnGKyJjkhy1NARrz7WrK6ermUhbVySYfS1tcCjUlw8b/RJ8mr9I4JfJbecuVSV4ELGt1CwH0ptRBXXxqngNO3oYjmXPUBQmJpsDvpTC3Id14c4ili5JJdoaiwa+xbdTRCqnsTOplDOhNWGlSt55ZPAg/oHXLd33id1LerVd5c9m4R4oJoG0nK6Yizz1ELc0FdaRUEE1Kj44PCDTJdFu/7W0cG7c5T3qrGXy6cc3bS403+XRDM3CKEFErNvMW7w42FzWmMDheevS7aGrvY1qKsae+TNb1bHGoCvo0J+wwZW+6Qd6nK6Rqxgg9Z0fBjwj61Bg/n9voBHZA3TWH3G5KykbF8zEYmaUnng1U/qJYxMFt+ai6wfYElsU6ZMNLCm0EOyMYX13YhFILyrWV/pCBry1kRVGI9Iu4Ep5yCiXbG2VzrgZbFXxIgI//EiIT3aihSQxbzjR5UPkYIgxBDXaOLTsN9ozbl2BYzzWj6z5Zi/tPY1Tm+I2XfMSNNKYf09Opu2yr0GrRGWELk82Xgh5L4cut+6tnb4e+LvDSMxox9TrC0UG6S427EfKIr08BAvTKW3uBi2dZb6lqAVal0jTleC/KgY+obmiyHk13WMHtsC/gk+5OTuYX+5R02k1MEyEtQ0Byb5EWw75bAXN9P7l4IJRoy0DjPvAoqv4KNw5iTJNQ6fKTNGTqJdI0Yw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p+/aoA3lI4kH3x0zCmyIqLcxA/FbpjGMoU0mjoBPMVWrrf3gmoEhGZwnumcr?=
 =?us-ascii?Q?vBKeefdc/8I5ud09FgUmRqT0hSkp9Org+7ki1ADSrShbGEvQKRKZaxuAZty1?=
 =?us-ascii?Q?kT6PIz63Zul4rDGN9o1Yjys2d3EqJcaS6hZhGGULCjKqC7cHUPtooqv8IwIA?=
 =?us-ascii?Q?T84MvBP5fMqgj4M2zPtKBlb89klFxslXDHJBNvhBMYi5sLjc6IVFjWqJKBaI?=
 =?us-ascii?Q?oV/u+JtlU0FZDzVOx0X873juGEfeNx2AvR7k+t3Ktwl1B16DObkgST1YUVLJ?=
 =?us-ascii?Q?lgFV9x09TGiXvgNlAblwuWWWmIjQVEE2dGuumcjHrwVHqG7Q26kaiGQB5ss5?=
 =?us-ascii?Q?ejOjlSHQzS4PT0juqxzraq2v2b4PSQcQkgeBIJ634cU2bKPbNaNrPSIlXZBW?=
 =?us-ascii?Q?qlA00C9odX3OvLPCHXeYwNRHhNy9fuy2+U8mLsAlVxCCkvXDz4Msek444Ibv?=
 =?us-ascii?Q?kLejW8rEAlpY9lG0fJhAHJXoK9bPoKMcJE7dvBgCeenAqd9wIG+ff1DCMhZk?=
 =?us-ascii?Q?OrWT1gwD0pyPkA3zqg9jzKtSdvvU0mmtN1boqL2U+YkGXf4F5jdjsI+Jd+ND?=
 =?us-ascii?Q?nnu3ac9Rt3sljl6Rm76DfeHElPdRPeishcyigrllZ21s44MlAHxCLbE4T8yd?=
 =?us-ascii?Q?JJPnegv5i7gtdBmcD37kDoWuZyuAPlPwTEVVMZ83D02sBTwzWQzUpJKThLzR?=
 =?us-ascii?Q?MUbXLoHrqcwHPBxaCSe6SmVOolCO1gZpD8QCj4tMqMZiAwWc9QBLWDTViwsh?=
 =?us-ascii?Q?HK6/lireMpf2BrJePGajh8sSKiSA3um/4drSYSzDBYE9urjsWb3Ormefoswj?=
 =?us-ascii?Q?afzMTj7PfrNm5kpLjeSycghi+lyb6PkudxfX/enGtgfMZ36ry8KGVF/2UjJU?=
 =?us-ascii?Q?TNDqULuoEt8Qis3WIZ80rYiOHp6qm3MK+flp0Krt4L0RGSyNdCX9dZ3hLAKA?=
 =?us-ascii?Q?7h6xTVORulKdG/yyKKZ3+fV5CpUKwacDVE5tTytAHUnBUhxXr9zj/H8+FHLG?=
 =?us-ascii?Q?qZnw2LGpAs71+yS7TZ47cbj+Lhc1h7pCWnmwk0+R98gyvQT6D4mqKsK4U6ps?=
 =?us-ascii?Q?06n891ilVoCcux5WySCkOYgsUF1x5EUKaBrxjnvinYYm37KRf2+BzSrer6RH?=
 =?us-ascii?Q?cJW/RWbql7bPejrXk+yntTbPlQrp5KHJYm75+Xgl6CXBPEpTQ5I/kkGoAZot?=
 =?us-ascii?Q?fUs+kA0VlSz6RO8z0l0wuOkLLit4reVmi9+rYTPUDC55IcVt4aVbc1Qxs+eF?=
 =?us-ascii?Q?9RV2XH6Te71TwbJDxWkm6hThcgn8Og6AMp8KEzdX7/azR02OaEDXWSTBa4Zn?=
 =?us-ascii?Q?wWkf9K0TlaL+P2GSXBxQEDejAuAl8/F/UhSzvkMvL20eLlvFGG0GYWdAx0rN?=
 =?us-ascii?Q?vmVXWypFCLmyw4hudmc0PN5bmNAFos8AfQ0a9ZqLgkEQ/eUHOKseEYrEdgAb?=
 =?us-ascii?Q?FXQA/yNN6kyfoffY4Ld30xulV7QBOf2nOHuXuexecyGcG/Jn/9FTaAF+7D5Z?=
 =?us-ascii?Q?XvRunZ6Rm0+5VXRHPqf/gVntMpw44xkiz6M7iFOje2z5xth2rfIvjW3bfJwh?=
 =?us-ascii?Q?kpDy7DJShFPcK0IrNwuCvdxyEnGfyo18+8rBnEGepQ0KSXa8A1MHh0HoFPrf?=
 =?us-ascii?Q?imGczsGWdPCRWdxj13b3TIwuslV4mV4WyO91uvYws4T7pHKBM1ehr6wjCfP0?=
 =?us-ascii?Q?KtkhEC4MXzMJN4rqKf38Azn503XDZdHvU5JZ9MquQnI6seiSZk4XwkwrvcZv?=
 =?us-ascii?Q?r+Nm2KNrCg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d77d5f9-a6ed-44b8-ea7d-08de7f06c8ec
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:25.2384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nMztGIMHZKne5bx2fwjXW7xZ6J4uGzV8k+CWslMVaE1dsTSJxXdDR4YBITwqLnhWDU60veifn4ukMlahEWQbFA==
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
X-Rspamd-Queue-Id: 05871259DFC
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

Refactor the GSP boot function to return only the GspStaticInfo,
removing the FbLayout from the return tuple.

This enables access required for memory management initialization to:
- bar1_pde_base: BAR1 page directory base.
- bar2_pde_base: BAR2 page directory base.
- usable memory regions in vidmem.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs      |  9 +++++++--
 drivers/gpu/nova-core/gsp/boot.rs | 12 ++++++++----
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 60c85fffaeaf..c324d96bd0c6 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -18,7 +18,10 @@
     },
     fb::SysmemFlush,
     gfw,
-    gsp::Gsp,
+    gsp::{
+        commands::GetGspStaticInfoReply,
+        Gsp, //
+    },
     regs,
 };
 
@@ -252,6 +255,8 @@ pub(crate) struct Gpu {
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
+    /// Static GPU information from GSP.
+    gsp_static_info: GetGspStaticInfoReply,
 }
 
 impl Gpu {
@@ -283,7 +288,7 @@ pub(crate) fn new<'a>(
 
             gsp <- Gsp::new(pdev),
 
-            _: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
+            gsp_static_info: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/boot.rs b/drivers/gpu/nova-core/gsp/boot.rs
index c56029f444cb..73a711f03044 100644
--- a/drivers/gpu/nova-core/gsp/boot.rs
+++ b/drivers/gpu/nova-core/gsp/boot.rs
@@ -32,7 +32,10 @@
     },
     gpu::Chipset,
     gsp::{
-        commands,
+        commands::{
+            self,
+            GetGspStaticInfoReply, //
+        },
         sequencer::{
             GspSequencer,
             GspSequencerParams, //
@@ -126,7 +129,8 @@ fn run_fwsec_frts(
     /// user-space, patching them with signatures, and building firmware-specific intricate data
     /// structures that the GSP will use at runtime.
     ///
-    /// Upon return, the GSP is up and running, and its runtime object given as return value.
+    /// Upon return, the GSP is up and running, and static GPU information is returned.
+    ///
     pub(crate) fn boot(
         mut self: Pin<&mut Self>,
         pdev: &pci::Device<device::Bound>,
@@ -134,7 +138,7 @@ pub(crate) fn boot(
         chipset: Chipset,
         gsp_falcon: &Falcon<Gsp>,
         sec2_falcon: &Falcon<Sec2>,
-    ) -> Result {
+    ) -> Result<GetGspStaticInfoReply> {
         let dev = pdev.as_ref();
 
         let bios = Vbios::new(dev, bar)?;
@@ -225,6 +229,6 @@ pub(crate) fn boot(
             Err(e) => dev_warn!(pdev, "GPU name unavailable: {:?}\n", e),
         }
 
-        Ok(())
+        Ok(info)
     }
 }
-- 
2.34.1

