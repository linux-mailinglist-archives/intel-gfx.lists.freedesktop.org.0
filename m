Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD6FFsP932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E656D407E70
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0E510E763;
	Wed, 15 Apr 2026 21:06:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="l6B98k3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011005.outbound.protection.outlook.com [52.101.62.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB48D10E75E;
 Wed, 15 Apr 2026 21:06:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MoOdKN6PpE6F4nQGSr7k8XuWHXuzdwDWkhAC3V2KH+RyGPn4LDFfqpUpyJPWCQ0C3aYmXUtdDAnuO0OvD2UtYH6s/JrvIJlgM2JQGd7wJJIELUIAvKFxN/QeNlQ4UblDtF21oPnIsg7SxGse8zlenjFUUoH1bJK/6jkt4oDHVpk+s1+3F2av7ZjLN6MAYf5kVwV0PH1KqIksnIBimF67l8JXNqLO8wM6kc168T35Fp9TyTu7wW34qEUXcS71INYgQ3jALLkbINsxWYCOZLMeBUY5oUdOECjOk286c7lkg5pLy+XQaSw2o8J14vfmhDaWLmVkyO7fduVTvgur/ZCYpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtoDJ6er/k2G53jxIosChbmXmrmiFKgC1O+HW2zAtcY=;
 b=YB7HrUu3dSHtP9C8IcIby83iBl/BWw0yJvYPe37Z8T2Yrkw6vwwqJ+5d1slxC9lc4ATP2zoSKVeFwBcMyQDY4gDzfBrd4paYCQFUTLGKj9axxW+jZcHZ3FpT+Bw1P/mseutTuKuRxqyyLHXLXHdGJufYLV1mDzmz9j61aNF8etztycD83KJlSHKoDs6GV9JoxS1jDayU/D0bf87bU3sUyKdRL9gfGP23pETPOS/qwzNchXBz56OdbVkM7Wap7d4fLFaTU27Tk/Qadv06Qpf2PS/5eKTKe8BBrGanbVZ9NqmojFI+QyjXsa7ceeYbO6mdXm7AGNxO787gcqZXf9uatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FtoDJ6er/k2G53jxIosChbmXmrmiFKgC1O+HW2zAtcY=;
 b=l6B98k3MNFpijX3fd4BBLN4LXi1bYXxfQ4/7JpCXt4xfLZ+2K4CvpOSaGJt6yjGAuq8dYQnCpi6rZPjDYdvqFr6XfCqB5p1sg+cfE/2ITP1oqySoM2cwe3FI+uEj34eNvQSBWXR1t0bSi5s1J8+Ip2lSYJtRXqvdFMwikoXHQq/sGiUista6YIJ3wCX79SuFqufh9KIczx+AB785x8NKUrbylJZq3Xfy9oJrLRsAWsLve2uQHW8XzQck9sT/x2FYgzVmNl3UKyMNN71SyqYZyrphFPbs5Sj+XT6cjGhS6dW/cNjDi0+fKBwOxVVn6S8rAiPy2wj6Z1Txh6Y0FzJrzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:05:58 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:05:57 +0000
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
Subject: [PATCH v11 01/20] gpu: nova-core: gsp: Return GspStaticInfo from
 boot()
Date: Wed, 15 Apr 2026 17:05:28 -0400
Message-Id: <20260415210548.3776595-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR19CA0039.namprd19.prod.outlook.com
 (2603:10b6:930:1a::29) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 45ccdad8-0b9f-4694-7ef0-08de9b32ca35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: TTctzZ88b27E0Mex5M5ktlOPT38CasE/TVsLQQm6P0ZxqaFsBcsc+UgHOR22ku0JppRg9hl/vvxT9UwH7tdDnLnYaHAMx5JTEmcw0dW3UsRyJHV8Q3ywEFRXc7OCvRSbarW6fmrxdhlS2GDdKA1kiA8uvZpfQ00PkRLFZfk74+Ir6ki2u9vyXtPqYkJBV327iY3TLmsqlFrZLCSWxVIpXPEuWaJSp6q/iCcJcbUA/oCZTUUG4Ciw8KATtJrRgZAxehDNLuOBWtrgZfXXe1JJF88BUFWot8aiJ+55Fcdpo76LlE53WBJJjZpGG/edCyzoBssbSoJHwlFKF408HeeXLFBpTWFQQETu1ImFwFQWEfPAUdMw6VQQD7frymMusr+LuS4dbMm7hYlSYwX2dwiOCQjk2/RsgibBDrWOPUKlyI1XCGTJso3QY+vrhY3zlsy3IBzwKkycUKna//TXP/KHPC8JrDQzo1EeunyqlPh/DbBGoKf4I7uQm/xcU5B5XV/nJvBXKqFEgahnA9Y/mmviWAQnT8hLmQxlVB8xVW8RjZQncPPjJf15HalLJQUOHMeIsnRKkv0RA9OjSuBT1tZxm47vk6SuSImvq51rbZCW94VBdVa8j/f2xpB/7lN2yO1xjOeLwILn0W7KbvPSEK9nMMZO7mbyhG2ILKvaM/5gwYWtBf/R2pqy2ns+cPCKn4vTZ+XBD8/q4e4eRpE96xkKvkVRU5I73DJB4KjZ2ZEuwBs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?py/7ueszEtZM5LK2gZG5aVKnt56sQqzni/Qedt+zUAt2kwTdSSLf6/2eHFdS?=
 =?us-ascii?Q?Jb2ECe5XW5juuMLD3Nh+RgKSEsUcxw9MVN3v3MXMp/yH2YR02KKCeX/K7YIJ?=
 =?us-ascii?Q?e+MhYs5jjHlzMeaJjxR9mgKIdTU76XWuybKXrMj1ShGQ9FB9mRQQBbD6K/4T?=
 =?us-ascii?Q?Gbj8ZMNfBhxV+5yJ5to0pa9Qd4/YPVSI9iK/J37eW/HaXiE83AMGxMP/pcAF?=
 =?us-ascii?Q?KDlYPNbzLnSRr+LZyJsYUuTTeylkRMuLhLdtpCi5x5UBYO5gPMkYCBal8G9m?=
 =?us-ascii?Q?WODcUohMGj3wKkBrfcLI5RsR8fSeNXN03MuY5+iScvsCn9VcaiHMaZqx5nso?=
 =?us-ascii?Q?9ttkYUHO24l7BrI+ykEe78A7KAUaiFsGcvFuLh8PkqYFRwirBbLdZMAZhP6w?=
 =?us-ascii?Q?yo8ukezRj7yFKWv7HR4+Dnl7RUOZMwzqyhpiR9G5KX+JmkvPL7aCkv/oiqJl?=
 =?us-ascii?Q?1f5BBUCYDaCYtjbCuDfl0f21OmLaGOs3yRsGLhmC6ZXlB08EPRN8YJzQcBiG?=
 =?us-ascii?Q?zCjDgI6DL3gB1Tt3Ib1mBsAc9kE507nv7+fqXha3bPfIBvp1ZUmAtGG868hk?=
 =?us-ascii?Q?N3HQNHRQu0/ds+PPuWQ1FZ/G3uI/zRCaQVopekcLLe2RP5lMdSXPen4DzxY1?=
 =?us-ascii?Q?jG9xBsUEeheY4Vm9YnmyxDOKfdE58dFSS6efCA94ZuCLkupOvDBPKd8sqWVo?=
 =?us-ascii?Q?Yk3Fr2bKW3Hckms5Xl7O2wTVGe3/0+MkJ+DBylRfkAn+0fFCN0/uJZP4mwM4?=
 =?us-ascii?Q?woJ0ojj6G8k/fcpMMhmCxWrAwjATJa0LQwtGiFB5mvUozHU5Tyo4pChLZcDd?=
 =?us-ascii?Q?mvLPonZuj8CSxx2XmA2rK9X5F4ahcdiZcv4NQ+cUnvSnr03sbRBrhevwI+fA?=
 =?us-ascii?Q?xWTrE7BQbYz70x7WSW1DjL6hFqM9YXyHCnZhbLIMbRcpiVkih3Z2LTRjNsab?=
 =?us-ascii?Q?RsjHvYXoD+TTfM7bthUxtx7+TaWAjHNTDE8PJwdLNKeEClVbzPH78nOqBBzk?=
 =?us-ascii?Q?4PHQ5WrJjma2rhe2Z8u3gDOqythdSpr7urN8mHaqBFiwGFNeqGKhkLcI2WLI?=
 =?us-ascii?Q?qJ+2fE7UqJh2GtBUFTJrvDZcKFiMugN9b+PQgCTvq3BOX8RCcXYYSslDV47C?=
 =?us-ascii?Q?5KXZsV03TVJ4fmReiI3XLmJNncvq+YZBYmaG8j6Oo1tedwEcHJF+iaoipz/J?=
 =?us-ascii?Q?xpzyi/um3Vpk+SnfvNDIxpKvfZVVg6ifxiemKzOtJ0BYPtdWrS5toxm/Ez53?=
 =?us-ascii?Q?DPqVn7j0d/n6x/TEskq/RQrBpcCPacPuESCQvgeV2kHIuNvFYKcKz/5E6OwM?=
 =?us-ascii?Q?VkjrWV/qRoBCP1nXmMvkHEkzcxt2Ki5QpisOTqumZVL9SMcZKQh6neqIYRvx?=
 =?us-ascii?Q?4gtr8BzXyZBNNEikT6U35LQJntZhmOkncI2EED2Z4WhUMmYILRfBcArDQKX3?=
 =?us-ascii?Q?6Yp++RxncmZH3aKQ0oRSu3bD2YDzclCMYHlLtE6fvRX+PWnTiQ5a7L3tpzfi?=
 =?us-ascii?Q?CmnRZg2Zmc7aYN39I45xpVmBk8TjVYOYVljf9I3xmswemgeB3hSZ5JKQZ3fD?=
 =?us-ascii?Q?TGtcra7RUEU8+ESB9aybWR8pmvoMAynVFnvedKd2xVByQK9dk/SfR7vmRCEK?=
 =?us-ascii?Q?bpcECBDljY4sNqasYVASe53W3DJUYrbfAnkzX/x4bW4OUwnlQMwiVTOoCGhZ?=
 =?us-ascii?Q?rqd53VR1Itj1OB5IKpgRWU/YLsuLdhFm2D4R5Vvy5HOszcRexk+sdKvdzsnk?=
 =?us-ascii?Q?8skRiI3+SQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ccdad8-0b9f-4694-7ef0-08de9b32ca35
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:05:57.8015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dOpd+OUQJX/JH5WX6rDdHoiDkHPxiVqfCb5ix3gsaGMkHGq7rxENiH8LVn4VH9HCodw58VotfSlavpap82ZmHA==
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
	NEURAL_HAM(-0.00)[-0.988];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E656D407E70
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Refactor the GSP boot function to return GetGspStaticInfoReply.

This enables access required for memory management initialization to:
- bar1_pde_base: BAR1 page directory base.
- bar2_pde_base: BAR2 page directory base.
- usable memory regions in video memory.

Reviewed-by: Eliot Courtney <ecourtney@nvidia.com>
Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs      | 9 +++++++--
 drivers/gpu/nova-core/gsp/boot.rs | 9 ++++++---
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 0f6fe9a1b955..b4da4a1ae156 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -21,7 +21,10 @@
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
 
@@ -238,6 +241,8 @@ pub(crate) struct Gpu {
     /// GSP runtime data. Temporarily an empty placeholder.
     #[pin]
     gsp: Gsp,
+    /// Static GPU information from GSP.
+    gsp_static_info: GetGspStaticInfoReply,
 }
 
 impl Gpu {
@@ -269,7 +274,7 @@ pub(crate) fn new<'a>(
 
             gsp <- Gsp::new(pdev),
 
-            _: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
+            gsp_static_info: { gsp.boot(pdev, bar, spec.chipset, gsp_falcon, sec2_falcon)? },
 
             bar: devres_bar,
         })
diff --git a/drivers/gpu/nova-core/gsp/boot.rs b/drivers/gpu/nova-core/gsp/boot.rs
index 6f707b3d1a54..d42637db06dd 100644
--- a/drivers/gpu/nova-core/gsp/boot.rs
+++ b/drivers/gpu/nova-core/gsp/boot.rs
@@ -33,7 +33,10 @@
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
@@ -145,7 +148,7 @@ pub(crate) fn boot(
         chipset: Chipset,
         gsp_falcon: &Falcon<Gsp>,
         sec2_falcon: &Falcon<Sec2>,
-    ) -> Result {
+    ) -> Result<GetGspStaticInfoReply> {
         let dev = pdev.as_ref();
 
         let bios = Vbios::new(dev, bar)?;
@@ -235,6 +238,6 @@ pub(crate) fn boot(
             Err(e) => dev_warn!(pdev, "GPU name unavailable: {:?}\n", e),
         }
 
-        Ok(())
+        Ok(info)
     }
 }
-- 
2.34.1

