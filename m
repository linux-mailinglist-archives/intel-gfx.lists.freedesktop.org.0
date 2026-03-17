Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCo3KOHPuWmMOAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DFC2B2E8C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AAF10E5A9;
	Tue, 17 Mar 2026 22:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="VVK741u9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012045.outbound.protection.outlook.com
 [40.107.200.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BBA10E434;
 Tue, 17 Mar 2026 22:04:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l+RBJe83K37eueBnMxauCZYGrWSZUgn9SeGgmY5GYR86bH2Kwj+rj8gQmZSkRgHNxsozhfzxMiusSVdsQBOTN10By/e4ZWvZbUSQJ6LwQvANXjNLPHnR0ipz3xedI+wq9SB7BWh2hDeRLOiJu5fSxVYvpVgP95eUdXn9E73Upw8ZzrL1kM5KBQJSGQcleWPtBfppxJ9tbbkRKR7Ni4bDd2hWa5dzoIW36aOAvFcv5Mi8K5BpydzjeI36b7/z3AQATwrkyIKV9n2WRyqme5qxdRbXdluLlDHE56tDMYT3gmZfR6DAHRqXzceH0/bHuX87KoRR3FETrdXEXIg3JF/lBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8mu+hppfAii2Oy+pp+HkPKMm0NDU7Xfm+XwQ8L+2hk=;
 b=FRKcmTMR9AWrbKKwfuSaYfNOvt2Dk3Q1VQthP63i1mOZ/5bmhWdINU6qXRQfPZ6IcT8EZDXdBhOpoHDP6inhJBN2lJEF4FIrnQKEiWFQyzYZySUf1ZhpocLpZ3CA6ruYPXMDHypOYTkRWvvXsKWWZjirtdvpngKCM3cSnhp5VkSb7i77gKFFT8EfQ5OtNjhKkXToNlGpLAkbGoVnvD7oOAErz+E9RoQGLtjM5Egiq6QqnAkJ3f45a+MPD7enRxlvyNYEJq7VXp+b/HQTE8IOpvGUZMyxzASb7cTk3VwzhKe1GEPMEnzUdjubXE+qgyiOeChxEGi23LO4KvpsHIOKDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8mu+hppfAii2Oy+pp+HkPKMm0NDU7Xfm+XwQ8L+2hk=;
 b=VVK741u9vbrH2AIec5kHbmkBpx0BsbTIQ0MvqYIup91/7BU/7IFF5iJuvOjJlRwQEvWJqS9TTeGWF9bROit7CPtMTCe+PcEM2aFXdHh3AyQdHgtmc1vMHyte3YDLhuKYQzLMBMW58VYIALk5hsIn9YqQyATEUPEq/weUxwhmv5QkbC+wyuTahC0rvejkm7t/RT3ucnSO2tvrcqNmJtA34tLbyR61jGJEVCu7oSMC/egAK48GKq8a9gqcTAtEQXc8Tqaf1HvaZBHLJTnYlMlhx+IslkfipyD7W4svnO/8RrUZkWaTIO0AvPJHGtOoVkXu55RNLCpSTXMfW5ZTp5ZA7g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DM4PR12MB9735.namprd12.prod.outlook.com (2603:10b6:8:225::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Tue, 17 Mar 2026 22:04:04 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 22:04:03 +0000
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
Subject: [PATCH v13 2/2] MAINTAINERS: gpu: buddy: Update reviewer
Date: Tue, 17 Mar 2026 18:03:23 -0400
Message-Id: <20260317220323.1909618-3-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317220323.1909618-1-joelagnelf@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:208:36e::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DM4PR12MB9735:EE_
X-MS-Office365-Filtering-Correlation-Id: f36ac0ae-0627-429b-53f3-08de84711a03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: /3LDqVoJYF8AzuYLJAAhtY4hfACmwotpsx3blWKjh6eZ7M8pDyR9olYyBYCTtTFxuf5cF1jx0PUrJfNA3TWAUtsBpb2Gl3I2LYPvGFLp15OH8RvSl8gtOFyEqexSvBl6+S0Uxw1Xp9IKGVSrNtH7HZLjSJKl/pyOxgJ0VYwG5a8aM+FCAcoqFhoCIw4QS7b5O7mZGyLaPV9oBSpzVgawC5TV/bQxAgijud7EzdfTizJz4EjGSYJf/4Jztnnt7Gk87Yt6qzzm/t5UXv9XXEclhnAhQwZRPdM2PVYFkFEt4gGzH3yd/C6VhQ1ssCy2I2O7E/3/SvYgd7i2suml8h1as2TW0JlfIQr7395ZKxzZ2yjnJbfiZ4G3epbendNPX/V0CuuE/ag4lfTPaZ5iY7vBKodn8PI9oFGwc4kH0zstlxFeRRYSXqLvwsVtKtEr/xwW17R41gl3LQ3wPeNKTlIP71LVXlWBtQ0qvpTPWBvMQ5QgyytX+VfskOWY5rsiVAILpwji1zyG195NIEZweyHAP2UqNXpHKvRi/sNcmJy7wQAYwnU39+PheMmo8K+V3i8yizNwyDi0zCQ6DlwmhtY4CgIuS72gvXetKdOeU9yMxIYh9GNEoR7enQLiWK0f3t+qwnX2pQD5zEIr2z8mbYypcFqAg68ea2vxckwO/LyX3EZ1Kcd5ulJWwVSZZu0E5OPTx5HrwQYfkv9/moAjr3OmbJxEXQCT8vSsj8QV8aK2Az4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RXdjM9Ohq/YAkbu0uEtAK+90GPTANg3Lr+NBjmTZZYgMBWpaFowWzWucv9Qz?=
 =?us-ascii?Q?FIe5zs2kH1TjyYszMpodhQtdc5hPpjSqU+AO0Oosous1+knmbwSf48oZ2/4K?=
 =?us-ascii?Q?S3krXu/I7gXwHahq1Z4YI9W6eTV2LDStWCB/2xpc8jlz1w1C9SvvRA4Tw7dZ?=
 =?us-ascii?Q?MMS9jbde7zP4+rN5IMx3IlULXJDlHsVuOV6YczBvOP1iourQA1td1chcDy8d?=
 =?us-ascii?Q?M/dYLdTuiKtT/jJs62RvuFGs4gicHTCEmvRzb4cpn8q2QuLr76BAx/mSdQzR?=
 =?us-ascii?Q?i1AzLKIcu2fh0prQHAvLBg95CNcE+1x0UUUdS0BbYNRRpE1r0X+xCDbatADt?=
 =?us-ascii?Q?73W5v/X5mRg6snoJ1GmsbFcYBC4RtBoNfpRE+cbJ5CzAlX6QwzjJ632XvNiW?=
 =?us-ascii?Q?HxSMcFdNFuO6o14kWmr4f18TpZraANVbDcR2gZkUBF4xRGV1bYUS/nsVoAU6?=
 =?us-ascii?Q?j/niNBRimi3Fuxe3kVkWKxW6mXgYZ967DN+tec/G/ZxP9LjMCX3mka/AjvdZ?=
 =?us-ascii?Q?IGBnKn4mO0dnK55aBqQ0qfSRz1JX2ce1N4Ek4y5ibB9CN85RVN9xZfTXbsjB?=
 =?us-ascii?Q?h/LonZDZkvILOIQ30dTgKFBu1JcINhnLiHGeJTOx+HQ82PbAiT0BldRVh7Sa?=
 =?us-ascii?Q?7RvRp9wvagHMMu6nEnhydAZ88RRKjFjg5XUL9mr4+8W+0y5bbRiIH45zt9Wo?=
 =?us-ascii?Q?UHI4QgXltmtCWzh/8O1JuLufYbFZxwZdKCZkKnLkAlWq4wxriDHEPuGgUUR6?=
 =?us-ascii?Q?TtTCeRmj7RwgyiYveh5/2hMPffY9XMp6YyJsq/156pdFiiu9VzNU4HNkCgzX?=
 =?us-ascii?Q?bM+O4oihYZQSRga4ozI2ddGbqdZTKA+2mQLXvfVUVAmbHSI0zH7OaKyPUln5?=
 =?us-ascii?Q?GlB4NYvxAZYy2rmUIIaSLmeyRmtUVdDg9UYNE7jh9nqOtt0BQ+gWlzKZe8C6?=
 =?us-ascii?Q?r3S7AW2xFBqxmT064nsK+SFWJHKAZukuSEKyXkb9QnEIiVjWq3GY6h43tIhy?=
 =?us-ascii?Q?0Nfyd1E6scyXksykg2oneAjnORRzilozuBgRYfukz7iUd2AlueuREgZc86ck?=
 =?us-ascii?Q?LnncPIcyfxASOgJUFm+uMyITCpYP1BF4PPj3Jov3L47k7tzbn0NvfS4xevfD?=
 =?us-ascii?Q?RETDYM3Tqvtd+C40esFu5ljp+Bx+mV1+JwwLPohIWttZkOqEDtnBukA2QZcO?=
 =?us-ascii?Q?1WHx1YffNwVjJb+xIPo2Dj1YUv+kqcXwGlc+cqG+RZPdGziBHJFA3dBjKWr9?=
 =?us-ascii?Q?j8fLpslImcCQpOXli96AcgNfSU+ZiQ0x0nnP+atcQZL3A3nA45heBHUUe7OM?=
 =?us-ascii?Q?Y8DyXlarGDegYvw6jsXhSZO4S0c860IZQxvbyc2nKDousp52LncMYFvMncWh?=
 =?us-ascii?Q?DxUfYlvClGM6EOgTwwE6nqOUDIkOpR5ce76qXFhrbuiVd3z4JDwqJWMKfOYI?=
 =?us-ascii?Q?Bf0pWqAGpfJsMrtiVY6UqZpx8E2JCVb7pTnQwbBRNI83ckRMJh/I1S/d3Cry?=
 =?us-ascii?Q?kLKRRxsXZsu9r8rHce4317mm6oYvovOaFSSPk+ZfI1LhLXnrudewuaBSCXY/?=
 =?us-ascii?Q?LdXW09eybTMIs3+teT6KLDv32cmd7DW1r6MuCcYMp7HXPuUhT+k1S0HglFCk?=
 =?us-ascii?Q?JUSdcJW+K2qtBkg7q4F6dSZuH7Nc3oogWLBQ5J8a/NJIC9oXAodT6MOsZq5u?=
 =?us-ascii?Q?EcBgL8L92i1zGTjfVq8QzBqfjliJ2UVi0iqavWOwX+8MgWUE2bz/jEgegsQQ?=
 =?us-ascii?Q?MkeQig4Z9Q=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f36ac0ae-0627-429b-53f3-08de84711a03
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 22:04:03.7162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/WCzwM9tTHdDiF7BvK10GghhrV4w/WartqsI0c1SHabl0Au126dRH4DoccSaokzIEAoBjJddLGf2XB7ft2Vkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB9735
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,intel.com:email,nvidia.com:email,nvidia.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 06DFC2B2E8C
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

