Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JDpM+DPuWmMOAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 765E82B2E7F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539C510E215;
	Tue, 17 Mar 2026 22:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="sM9rUq2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012045.outbound.protection.outlook.com
 [40.107.200.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9140410E215;
 Tue, 17 Mar 2026 22:04:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O3EFgHhGAgOIiwDEtShHDDQVWgiW1XwUTnphupJeC+9VmQrth2CW9dbODXlASVP9r4SH3UWZPpoLXXPJMO3epjrajhsSqCKRA9fHt6wEanKy08lJ867zfMEikUsOeTTd0q9u8bvvVjWspTsi4iHWoVipOB/pOOrbKrMxL7Aa86EgKvYO+wM05bQeqgTM/srVxNpLFyIqd1mlFq+8ycC2422HjawKyCKUD13ZzmTJR433ZSD/jridNa7wQpx9IKZTGG48pwaC9sWWgQNNXWUVy1zs2jIUBWPWqqcoOhuGJ3bcTNB1tCTssJrhdKvnJgotHkociUg4YcEZuB6NTtA4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4cC4zbmXg9Q6JsU7V0RmVEkLBC+umFayt/cbHpb2wI=;
 b=dv1/s8Ms70j8HgiAn+pEi2Zye7myHwlhWtt049EwgLR+6Y19NiBcc9SvIfFHjLQ8rrHjBL2q8OfAL511ob0ZV0EJfSs7qy2dty3yKwi1sNfHDebE7MtP9z0MrrYHIs4D33aAHh9gCw6hLt04Uq55F21T2f4gKwAJ6xqfWRQK7qNDQm88/e8nFKj2wNV6ioWq4UnaygyFdAsar+cH3RN4JG+di5R9fJ7le5FxsOMjSbDMmjqBMnHODH/WLKuGQ32vFit71eTRKk0bs3/yskCI+M5c2oK/dsvF58DP159X/SJqgalDghDCxvPegIIq/XVBc9c3P59ZM8eBuQMPI3xRwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o4cC4zbmXg9Q6JsU7V0RmVEkLBC+umFayt/cbHpb2wI=;
 b=sM9rUq2kFC41yCGW5Kp9BRdzJ3OqbkliaLOzekp+89XYgDs/DibYUtnaGb+b7qfGd6zahvFn0QdgDN2iNUTNmBn7WW2GYmaRBhDIbL6HZM1+LnZmNInY6WJp31EvIccUZtCVYLlLzgA0XZO93KxucLP49/KEpUsqF+lEvwlX03wJb1N3f/0E9aUSnhF4H/YNgAYCmSzTbhDM1SoNUwcQHj/lQj422Lic9r8PZGQPGAmndVRntNr+nYoY/Ag3TXu02nsUcbbtaiS576xRpXEc351OnaBIUEr+605Jn/qbzHu80tgmn8b9VrS0y1Nouaj54ZhaevWINseg9BjaU4YuUg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DM4PR12MB9735.namprd12.prod.outlook.com (2603:10b6:8:225::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Tue, 17 Mar 2026 22:04:02 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 22:04:02 +0000
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
Subject: [PATCH v13 1/2] rust: gpu: Add GPU buddy allocator bindings
Date: Tue, 17 Mar 2026 18:03:22 -0400
Message-Id: <20260317220323.1909618-2-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317220323.1909618-1-joelagnelf@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:208:36e::20) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DM4PR12MB9735:EE_
X-MS-Office365-Filtering-Correlation-Id: 86ae3b23-014d-4836-f81e-08de8471192a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: klCF7Vkt9ky5HhvLmU4Y4ReXzblKdkv4sA37yKExNZq6rci4JA017Qv7N0g46P5tUcjdF5/8410ym2bsH9YOuMxXJmQ3RVgT1S4jVjm0mUkoAVJ2zKqhImejpLjgHrNXUZ4mnfNz1408RqteiTJ+NfamNBhRpJ7bpkYiuP3kuqeefE6NmBtiAwcsUbPgjRaCJ9mQkO0eGHeOzlr3+yRWyLHoIzwGncHNHxDBxgVO77d0kFMKUueWT3UjILszaQik+YBgkCCm3MD5lmLa9bFhs0HvK5HGSMA32XrXWTrXs/xso2ZA/bSwYlB4i0HuiZUybVok5SjQUY34x024jFL/2A1HUHWJV2CW0OlaYzx2kPqAl4e8hsiFnsaYku6uZ45jU3RzPt3Anfw0IKzEK7wUBxvWVZgwgkJkPmWuzKKFJXTndPW3HlCkUgbMwA1sV47MduQGPnpCi5A3/Y5E6q0H9ApGKpL0FvKi7gbdAPneZ+9GngT5V5ZU8qxPtYwUx9sQSm+jzTqJB7L9qP42hjZt7oOdWyfLOf58uKdIOV+Fe9uy5qtKQLeEubzo5B7IzgLWOgduFeaIDRVJbbJj9bg/AwKhGf2DvGkX19p1zAYN7qVDCCrLcElW8DTnISYz3RNIOjbXDcC30G/DL1/rSpoa21mgkvwlrRqXQ1qvt16Muwc2hdB3wSa9L1TE62ni/MiyQDp++VU8CNUKgy7G77Qnu7w6xQ9OUOzG3NN0zvpGoyY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?soNCTJCju8g17MCjxdESWmq4m4qPUfxyxzVN4UEDGE/BlNSzIP/8bQt2Lc9J?=
 =?us-ascii?Q?+befQGWPpuIL7KN+cpMY3fYi3NhI6zZ5pk5qUKz721k3WmPunCK/Ogua9ttL?=
 =?us-ascii?Q?sByg/lsw4N6wzfxWbJ+dBHOxqvDzD3Nb613owN4kTO2MHpBdoH1ShYypVPBV?=
 =?us-ascii?Q?V2GGp5FviakzcyB5rIKp1Cygj0LfBtNB1a3SCs1rTv+RBKbYSledF0m02dJB?=
 =?us-ascii?Q?a/nlCMh3/FBH47Tq62Af62o8H/1kSoTD564JdfQ2J/8wrMpuZ/NOY80hOdi3?=
 =?us-ascii?Q?bFNGcXTFlMCxnsZgRp6Q/L6MaRNIBaHc7B3b5pLgOgO4OVqjloXX4j+M0vtN?=
 =?us-ascii?Q?rgy5dYd+0Zkg7y94BA60iZ3u51S1YjW2oksYfbrapnGK7qPyqcSfbLQy9Yus?=
 =?us-ascii?Q?LQJSaz/6/zkAnMM/Sv1E+9Kfo+OjQNyXwHBHL1ukUWk9JtCxZ0vBi90i6fdO?=
 =?us-ascii?Q?I0slCq53OZNoCP8ARdQfTXKhaL+EoCac+kJVGTORC2/R9lMlKDAF2XObq56x?=
 =?us-ascii?Q?pU2zxa+woHPHsJZuDv6MvLE4Q+bbCPPWP1U/ZUS4d5YbSy7BT0fCFFXgDHRk?=
 =?us-ascii?Q?jhMCosMa/i+VTjq3j9jflw7/ciAw2lxcUfVbncoGKMGKGut3rfCOsG6hA3UR?=
 =?us-ascii?Q?mQakpSeOi7SU/FRcNZzkHJrksUjuu2abGtziCNTjuy3ijpua16j3EehLfSkn?=
 =?us-ascii?Q?7F90BZYjuwHq/pn3GrBsvZTtA1W76v+XCkvP4CxMZzhqYetp6dka76o4YeMn?=
 =?us-ascii?Q?WzksEZBj6EGjtIVkM3hE2jqkaBxndb8FMaGp+WA+Bc8MEsMUK4zlodQqV/Gp?=
 =?us-ascii?Q?jg4qcu7Lc/loVsysctL4hrakygemwaJ+XOBJI8tV4qNP4sks73dyFlgIR4iR?=
 =?us-ascii?Q?Go72r5BF6QWVB6SfsfRdYEtu9wjwtCLToGor9rEPBcuEExjZy8DAJFnzRBkB?=
 =?us-ascii?Q?lQ4H1EohoLNnPJYsXPa2Vr3mN8rA6ZSZiWMZbAfgufGeNgVm3uRVW9KjKdXA?=
 =?us-ascii?Q?GmWPctV58pDfzCBjsAK8dOga4OFKKmV7rjnttosJtwBDcWOYKiVIZxxc/YBP?=
 =?us-ascii?Q?kfyy3QDEUC3uJhQ4kNCV1oomd2y/2FAI23Bjb3snxzI64FLlr7rwfk5em1/M?=
 =?us-ascii?Q?g4xpn1ndUs1VrCSbBL51dZZmA7tZqdAeeV2L3mZikpPgJqRYSzXLeF/wplGF?=
 =?us-ascii?Q?XXvNyuvl9svv+0RKQZufmffKAmKDC8muGjxcN4ZTAdMkdFy2Cd71oZPZ/5RA?=
 =?us-ascii?Q?xvXrs08gaPdKhwlQM5nBNhNUvGr0FLY49V2hk6L8vQa3hddTD887IW9ec/vA?=
 =?us-ascii?Q?j/Qu7rk9Czla+Q9RFWoxmE/eYL2Dl8GYCpHU+utXByyeAunTGlqeYf5JWoXy?=
 =?us-ascii?Q?KI4KHL97DnLhYBNVWOgdwk3x2tRgKwBw90Yz4WIn9783Scd1Jkgf5uCX3u5z?=
 =?us-ascii?Q?DY6junb4ahjHeBWc/ySTUIdSfnpZtp/l/xCEnCstTPoYtH+427BHTGP12ecc?=
 =?us-ascii?Q?NqQgpocurRbRVPRoC1g9dJ4hTf22bUWw/zNyMM/QS4ZF57FliGsCLjYfc/yf?=
 =?us-ascii?Q?UQgh76LKUQtnIr8ot5PPuUt99S+H3V1TyqcMzcysZsV0s2IHaqla3XSRhfXj?=
 =?us-ascii?Q?rv9snhGwcVVHFNy0FZJXizad/Pl6AATHzURn/eDs4id8rsToSOdkkUpcvKYb?=
 =?us-ascii?Q?Fb+oSXhNqBbm1/63pXuwZ0o1tOg6DVryVzND1psoOg3Ddwr+Uqzdx8dZ7cpo?=
 =?us-ascii?Q?eis+hWxJCA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ae3b23-014d-4836-f81e-08de8471192a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 22:04:02.4188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f+TuuDcnatm/BgRTcKLHuALExf0yTaS+zI/SNxEu6clF2HR02LpukftOi6AthwNHvFTN01LOfgYA57G8a8mzXw==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 765E82B2E7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add safe Rust abstractions over the Linux kernel's GPU buddy
allocator for physical memory management. The GPU buddy allocator
implements a binary buddy system useful for GPU physical memory
allocation. nova-core will use it for physical memory allocation.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 MAINTAINERS                     |   6 +
 rust/bindings/bindings_helper.h |  11 +
 rust/helpers/gpu.c              |  23 ++
 rust/helpers/helpers.c          |   1 +
 rust/kernel/gpu.rs              |   6 +
 rust/kernel/gpu/buddy.rs        | 622 ++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs              |   2 +
 7 files changed, 671 insertions(+)
 create mode 100644 rust/helpers/gpu.c
 create mode 100644 rust/kernel/gpu.rs
 create mode 100644 rust/kernel/gpu/buddy.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index e847099efcc2..cd9505d3be60 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8531,7 +8531,10 @@ T:	git https://gitlab.freedesktop.org/drm/rust/kernel.git
 F:	drivers/gpu/drm/nova/
 F:	drivers/gpu/drm/tyr/
 F:	drivers/gpu/nova-core/
+F:	rust/helpers/gpu.c
 F:	rust/kernel/drm/
+F:	rust/kernel/gpu.rs
+F:	rust/kernel/gpu/
 
 DRM DRIVERS FOR ALLWINNER A10
 M:	Chen-Yu Tsai <wens@kernel.org>
@@ -8952,6 +8955,9 @@ F:	drivers/gpu/drm/drm_buddy.c
 F:	drivers/gpu/tests/gpu_buddy_test.c
 F:	include/drm/drm_buddy.h
 F:	include/linux/gpu_buddy.h
+F:	rust/helpers/gpu.c
+F:	rust/kernel/gpu.rs
+F:	rust/kernel/gpu/
 
 DRM AUTOMATED TESTING
 M:	Helen Koike <helen.fornazier@gmail.com>
diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index 083cc44aa952..dbb765a9fdbd 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -29,6 +29,7 @@
 #include <linux/hrtimer_types.h>
 
 #include <linux/acpi.h>
+#include <linux/gpu_buddy.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
@@ -146,6 +147,16 @@ const vm_flags_t RUST_CONST_HELPER_VM_MIXEDMAP = VM_MIXEDMAP;
 const vm_flags_t RUST_CONST_HELPER_VM_HUGEPAGE = VM_HUGEPAGE;
 const vm_flags_t RUST_CONST_HELPER_VM_NOHUGEPAGE = VM_NOHUGEPAGE;
 
+#if IS_ENABLED(CONFIG_GPU_BUDDY)
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_RANGE_ALLOCATION = GPU_BUDDY_RANGE_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TOPDOWN_ALLOCATION = GPU_BUDDY_TOPDOWN_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CONTIGUOUS_ALLOCATION =
+								GPU_BUDDY_CONTIGUOUS_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEAR_ALLOCATION = GPU_BUDDY_CLEAR_ALLOCATION;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEARED = GPU_BUDDY_CLEARED;
+const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TRIM_DISABLE = GPU_BUDDY_TRIM_DISABLE;
+#endif
+
 #if IS_ENABLED(CONFIG_ANDROID_BINDER_IPC_RUST)
 #include "../../drivers/android/binder/rust_binder.h"
 #include "../../drivers/android/binder/rust_binder_events.h"
diff --git a/rust/helpers/gpu.c b/rust/helpers/gpu.c
new file mode 100644
index 000000000000..38b1a4e6bef8
--- /dev/null
+++ b/rust/helpers/gpu.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/gpu_buddy.h>
+
+#ifdef CONFIG_GPU_BUDDY
+
+__rust_helper u64 rust_helper_gpu_buddy_block_offset(const struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_offset(block);
+}
+
+__rust_helper unsigned int rust_helper_gpu_buddy_block_order(struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_order(block);
+}
+
+__rust_helper u64 rust_helper_gpu_buddy_block_size(struct gpu_buddy *mm,
+						   struct gpu_buddy_block *block)
+{
+	return gpu_buddy_block_size(mm, block);
+}
+
+#endif /* CONFIG_GPU_BUDDY */
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index 724fcb8240ac..a53929ce52a3 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -32,6 +32,7 @@
 #include "err.c"
 #include "irq.c"
 #include "fs.c"
+#include "gpu.c"
 #include "io.c"
 #include "jump_label.c"
 #include "kunit.c"
diff --git a/rust/kernel/gpu.rs b/rust/kernel/gpu.rs
new file mode 100644
index 000000000000..1dc5d0c8c09d
--- /dev/null
+++ b/rust/kernel/gpu.rs
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! GPU subsystem abstractions.
+
+#[cfg(CONFIG_GPU_BUDDY = "y")]
+pub mod buddy;
diff --git a/rust/kernel/gpu/buddy.rs b/rust/kernel/gpu/buddy.rs
new file mode 100644
index 000000000000..af99d66832fd
--- /dev/null
+++ b/rust/kernel/gpu/buddy.rs
@@ -0,0 +1,622 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! GPU buddy allocator bindings.
+//!
+//! C header: [`include/linux/gpu_buddy.h`](srctree/include/linux/gpu_buddy.h)
+//!
+//! This module provides Rust abstractions over the Linux kernel's GPU buddy
+//! allocator, which implements a binary buddy memory allocator.
+//!
+//! The buddy allocator manages a contiguous address space and allocates blocks
+//! in power-of-two sizes, useful for GPU physical memory management.
+//!
+//! # Examples
+//!
+//! Create a buddy allocator and perform a basic range allocation:
+//!
+//! ```
+//! use kernel::{
+//!     gpu::buddy::{
+//!         GpuBuddy,
+//!         GpuBuddyAllocFlags,
+//!         GpuBuddyAllocMode,
+//!         GpuBuddyParams, //
+//!     },
+//!     prelude::*,
+//!     ptr::Alignment,
+//!     sizes::*, //
+//! };
+//!
+//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
+//! let buddy = GpuBuddy::new(GpuBuddyParams {
+//!     base_offset: 0,
+//!     physical_memory_size: SZ_1G as u64,
+//!     chunk_size: Alignment::new::<SZ_4K>(),
+//! })?;
+//!
+//! assert_eq!(buddy.size(), SZ_1G as u64);
+//! assert_eq!(buddy.chunk_size(), Alignment::new::<SZ_4K>());
+//! let initial_free = buddy.free_memory();
+//!
+//! // Allocate 16MB. Block lands at the top of the address range.
+//! let allocated = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Simple,
+//!         SZ_16M as u64,
+//!         Alignment::new::<SZ_16M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
+//!
+//! let block = allocated.iter().next().expect("expected one block");
+//! assert_eq!(block.offset(), (SZ_1G - SZ_16M) as u64);
+//! assert_eq!(block.order(), 12); // 2^12 pages = 16MB
+//! assert_eq!(block.size(), SZ_16M as u64);
+//! assert_eq!(allocated.iter().count(), 1);
+//!
+//! // Dropping the allocation returns the range to the buddy allocator.
+//! drop(allocated);
+//! assert_eq!(buddy.free_memory(), initial_free);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Top-down allocation allocates from the highest addresses:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{GpuBuddy, GpuBuddyAllocMode, GpuBuddyAllocFlags, GpuBuddyParams},
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! # let buddy = GpuBuddy::new(GpuBuddyParams {
+//! #     base_offset: 0,
+//! #     physical_memory_size: SZ_1G as u64,
+//! #     chunk_size: Alignment::new::<SZ_4K>(),
+//! # })?;
+//! # let initial_free = buddy.free_memory();
+//! let topdown = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::TopDown,
+//!         SZ_16M as u64,
+//!         Alignment::new::<SZ_16M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
+//!
+//! let block = topdown.iter().next().expect("expected one block");
+//! assert_eq!(block.offset(), (SZ_1G - SZ_16M) as u64);
+//! assert_eq!(block.order(), 12);
+//! assert_eq!(block.size(), SZ_16M as u64);
+//!
+//! // Dropping the allocation returns the range to the buddy allocator.
+//! drop(topdown);
+//! assert_eq!(buddy.free_memory(), initial_free);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Non-contiguous allocation can fill fragmented memory by returning multiple
+//! blocks:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{
+//! #         GpuBuddy, GpuBuddyAllocFlags, GpuBuddyAllocMode, GpuBuddyParams,
+//! #     },
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! # let buddy = GpuBuddy::new(GpuBuddyParams {
+//! #     base_offset: 0,
+//! #     physical_memory_size: SZ_1G as u64,
+//! #     chunk_size: Alignment::new::<SZ_4K>(),
+//! # })?;
+//! # let initial_free = buddy.free_memory();
+//! // Create fragmentation by allocating 4MB blocks at [0,4M) and [8M,12M).
+//! let frag1 = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_4M as u64 },
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.free_memory(), initial_free - SZ_4M as u64);
+//!
+//! let frag2 = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range {
+//!             start: SZ_8M as u64,
+//!             end: (SZ_8M + SZ_4M) as u64,
+//!         },
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.free_memory(), initial_free - SZ_8M as u64);
+//!
+//! // Allocate 8MB, this returns 2 blocks from the holes.
+//! let fragmented = KBox::pin_init(
+//!     buddy.alloc_blocks(
+//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_16M as u64 },
+//!         SZ_8M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//! assert_eq!(buddy.free_memory(), initial_free - SZ_16M as u64);
+//!
+//! let (mut count, mut total) = (0u32, 0u64);
+//! for block in fragmented.iter() {
+//!     assert_eq!(block.size(), SZ_4M as u64);
+//!     total += block.size();
+//!     count += 1;
+//! }
+//! assert_eq!(total, SZ_8M as u64);
+//! assert_eq!(count, 2);
+//! # Ok::<(), Error>(())
+//! ```
+//!
+//! Contiguous allocation fails when only fragmented space is available:
+//!
+//! ```
+//! # use kernel::{
+//! #     gpu::buddy::{
+//! #         GpuBuddy, GpuBuddyAllocFlag, GpuBuddyAllocFlags, GpuBuddyAllocMode, GpuBuddyParams,
+//! #     },
+//! #     prelude::*,
+//! #     ptr::Alignment,
+//! #     sizes::*, //
+//! # };
+//! // Create a small 16MB buddy allocator with fragmented memory.
+//! let small = GpuBuddy::new(GpuBuddyParams {
+//!     base_offset: 0,
+//!     physical_memory_size: SZ_16M as u64,
+//!     chunk_size: Alignment::new::<SZ_4K>(),
+//! })?;
+//!
+//! let _hole1 = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Range { start: 0, end: SZ_4M as u64 },
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//!
+//! let _hole2 = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Range {
+//!             start: SZ_8M as u64,
+//!             end: (SZ_8M + SZ_4M) as u64,
+//!         },
+//!         SZ_4M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlags::default(),
+//!     ),
+//!     GFP_KERNEL,
+//! )?;
+//!
+//! // 8MB contiguous should fail, only two non-contiguous 4MB holes exist.
+//! let result = KBox::pin_init(
+//!     small.alloc_blocks(
+//!         GpuBuddyAllocMode::Simple,
+//!         SZ_8M as u64,
+//!         Alignment::new::<SZ_4M>(),
+//!         GpuBuddyAllocFlag::Contiguous,
+//!     ),
+//!     GFP_KERNEL,
+//! );
+//! assert!(result.is_err());
+//! # Ok::<(), Error>(())
+//! ```
+
+use crate::{
+    bindings,
+    clist_create,
+    error::to_result,
+    interop::list::CListHead,
+    new_mutex,
+    prelude::*,
+    ptr::Alignment,
+    sync::{
+        lock::mutex::MutexGuard,
+        Arc,
+        Mutex, //
+    },
+    types::Opaque, //
+};
+
+/// Allocation mode for the GPU buddy allocator.
+///
+/// The mode determines the primary allocation strategy. Modes are mutually
+/// exclusive: an allocation is either simple, range-constrained, or top-down.
+///
+/// Orthogonal modifier flags (e.g., contiguous, clear) are specified separately
+/// via [`GpuBuddyAllocFlags`].
+#[derive(Copy, Clone, Debug, PartialEq, Eq)]
+pub enum GpuBuddyAllocMode {
+    /// Simple allocation without constraints.
+    Simple,
+    /// Range-based allocation between `start` and `end` addresses.
+    Range {
+        /// Start of the allocation range.
+        start: u64,
+        /// End of the allocation range.
+        end: u64,
+    },
+    /// Allocate from top of address space downward.
+    TopDown,
+}
+
+impl GpuBuddyAllocMode {
+    // Returns the C flags corresponding to the allocation mode.
+    fn into_flags(self) -> usize {
+        match self {
+            Self::Simple => 0,
+            Self::Range { .. } => bindings::GPU_BUDDY_RANGE_ALLOCATION,
+            Self::TopDown => bindings::GPU_BUDDY_TOPDOWN_ALLOCATION,
+        }
+    }
+
+    // Extracts the range start/end, defaulting to (0, 0) for non-range modes.
+    fn range(self) -> (u64, u64) {
+        match self {
+            Self::Range { start, end } => (start, end),
+            _ => (0, 0),
+        }
+    }
+}
+
+crate::impl_flags!(
+    /// Modifier flags for GPU buddy allocation.
+    ///
+    /// These flags can be combined with any [`GpuBuddyAllocMode`] to control
+    /// additional allocation behavior.
+    #[derive(Clone, Copy, Default, PartialEq, Eq)]
+    pub struct GpuBuddyAllocFlags(u32);
+
+    /// Individual modifier flag for GPU buddy allocation.
+    #[derive(Clone, Copy, PartialEq, Eq)]
+    pub enum GpuBuddyAllocFlag {
+        /// Allocate physically contiguous blocks.
+        Contiguous = bindings::GPU_BUDDY_CONTIGUOUS_ALLOCATION as u32,
+
+        /// Request allocation from cleared (zeroed) memory.
+        Clear = bindings::GPU_BUDDY_CLEAR_ALLOCATION as u32,
+
+        /// Disable trimming of partially used blocks.
+        TrimDisable = bindings::GPU_BUDDY_TRIM_DISABLE as u32,
+    }
+);
+
+/// Parameters for creating a GPU buddy allocator.
+pub struct GpuBuddyParams {
+    /// Base offset (in bytes) where the managed memory region starts.
+    /// Allocations will be offset by this value.
+    pub base_offset: u64,
+    /// Total physical memory size (in bytes) managed by the allocator.
+    pub physical_memory_size: u64,
+    /// Minimum allocation unit / chunk size, must be >= 4KB.
+    pub chunk_size: Alignment,
+}
+
+/// Inner structure holding the actual buddy allocator.
+///
+/// # Synchronization
+///
+/// The C `gpu_buddy` API requires synchronization (see `include/linux/gpu_buddy.h`).
+/// Internal locking ensures all allocator and free operations are properly
+/// synchronized, preventing races between concurrent allocations and the
+/// freeing that occurs when [`AllocatedBlocks`] is dropped.
+///
+/// # Invariants
+///
+/// The inner [`Opaque`] contains an initialized buddy allocator.
+#[pin_data(PinnedDrop)]
+struct GpuBuddyInner {
+    #[pin]
+    inner: Opaque<bindings::gpu_buddy>,
+
+    // TODO: Replace `Mutex<()>` with `Mutex<Opaque<..>>` once `Mutex::new()`
+    // accepts `impl PinInit<T>`.
+    #[pin]
+    lock: Mutex<()>,
+    /// Cached creation parameters (do not change after init).
+    params: GpuBuddyParams,
+}
+
+impl GpuBuddyInner {
+    /// Create a pin-initializer for the buddy allocator.
+    fn new(params: GpuBuddyParams) -> impl PinInit<Self, Error> {
+        let size = params.physical_memory_size;
+        let chunk_size = params.chunk_size;
+
+        // INVARIANT: `gpu_buddy_init` returns 0 on success, at which point the
+        // `gpu_buddy` structure is initialized and ready for use with all
+        // `gpu_buddy_*` APIs. `try_pin_init!` only completes if all fields succeed,
+        // so the invariant holds when construction finishes.
+        try_pin_init!(Self {
+            inner <- Opaque::try_ffi_init(|ptr| {
+                // SAFETY: `ptr` points to valid uninitialized memory from the pin-init
+                // infrastructure. `gpu_buddy_init` will initialize the structure.
+                to_result(unsafe { bindings::gpu_buddy_init(ptr, size, chunk_size.as_usize() as u64) })
+            }),
+            lock <- new_mutex!(()),
+            params,
+        })
+    }
+
+    /// Lock the mutex and return a guard for accessing the allocator.
+    fn lock(&self) -> GpuBuddyGuard<'_> {
+        GpuBuddyGuard {
+            inner: self,
+            _guard: self.lock.lock(),
+        }
+    }
+}
+
+#[pinned_drop]
+impl PinnedDrop for GpuBuddyInner {
+    fn drop(self: Pin<&mut Self>) {
+        let guard = self.lock();
+
+        // SAFETY: Per the type invariant, `inner` contains an initialized
+        // allocator. `guard` provides exclusive access.
+        unsafe {
+            bindings::gpu_buddy_fini(guard.as_raw());
+        }
+    }
+}
+
+// SAFETY: `GpuBuddyInner` can be sent between threads.
+unsafe impl Send for GpuBuddyInner {}
+
+// SAFETY: `GpuBuddyInner` is `Sync` because `GpuBuddyInner::lock`
+// serializes all access to the C allocator, preventing data races.
+unsafe impl Sync for GpuBuddyInner {}
+
+// Guard that proves the lock is held, enabling access to the allocator.
+// The `_guard` holds the lock for the duration of this guard's lifetime.
+struct GpuBuddyGuard<'a> {
+    inner: &'a GpuBuddyInner,
+    _guard: MutexGuard<'a, ()>,
+}
+
+impl GpuBuddyGuard<'_> {
+    /// Get a raw pointer to the underlying C `gpu_buddy` structure.
+    fn as_raw(&self) -> *mut bindings::gpu_buddy {
+        self.inner.inner.get()
+    }
+}
+
+/// GPU buddy allocator instance.
+///
+/// This structure wraps the C `gpu_buddy` allocator using reference counting.
+/// The allocator is automatically cleaned up when all references are dropped.
+///
+/// Refer to the module-level documentation for usage examples.
+pub struct GpuBuddy(Arc<GpuBuddyInner>);
+
+impl GpuBuddy {
+    /// Create a new buddy allocator.
+    ///
+    /// Creates a buddy allocator that manages a contiguous address space of the given
+    /// size, with the specified minimum allocation unit (chunk_size must be at least 4KB).
+    pub fn new(params: GpuBuddyParams) -> Result<Self> {
+        Arc::pin_init(GpuBuddyInner::new(params), GFP_KERNEL).map(Self)
+    }
+
+    /// Get the base offset for allocations.
+    pub fn base_offset(&self) -> u64 {
+        self.0.params.base_offset
+    }
+
+    /// Get the chunk size (minimum allocation unit).
+    pub fn chunk_size(&self) -> Alignment {
+        self.0.params.chunk_size
+    }
+
+    /// Get the total managed size.
+    pub fn size(&self) -> u64 {
+        self.0.params.physical_memory_size
+    }
+
+    /// Get the available (free) memory in bytes.
+    pub fn free_memory(&self) -> u64 {
+        let guard = self.0.lock();
+
+        // SAFETY: Per the type invariant, `inner` contains an initialized allocator.
+        // `guard` provides exclusive access.
+        unsafe { (*guard.as_raw()).avail }
+    }
+
+    /// Allocate blocks from the buddy allocator.
+    ///
+    /// Returns a pin-initializer for [`AllocatedBlocks`].
+    pub fn alloc_blocks(
+        &self,
+        mode: GpuBuddyAllocMode,
+        size: u64,
+        min_block_size: Alignment,
+        flags: impl Into<GpuBuddyAllocFlags>,
+    ) -> impl PinInit<AllocatedBlocks, Error> {
+        let buddy_arc = Arc::clone(&self.0);
+        let (start, end) = mode.range();
+        let mode_flags = mode.into_flags();
+        let modifier_flags = u32::from(flags.into()) as usize;
+
+        // Create pin-initializer that initializes list and allocates blocks.
+        try_pin_init!(AllocatedBlocks {
+            buddy: buddy_arc,
+            list <- CListHead::new(),
+            _: {
+                // Reject zero-sized or inverted ranges.
+                if let GpuBuddyAllocMode::Range { start, end } = mode {
+                    if end <= start {
+                        Err::<(), Error>(EINVAL)?;
+                    }
+                }
+
+                // Lock while allocating to serialize with concurrent frees.
+                let guard = buddy.lock();
+
+                // SAFETY: Per the type invariant, `inner` contains an initialized
+                // allocator. `guard` provides exclusive access.
+                to_result(unsafe {
+                    bindings::gpu_buddy_alloc_blocks(
+                        guard.as_raw(),
+                        start,
+                        end,
+                        size,
+                        min_block_size.as_usize() as u64,
+                        list.as_raw(),
+                        mode_flags | modifier_flags,
+                    )
+                })?
+            }
+        })
+    }
+}
+
+/// Allocated blocks from the buddy allocator with automatic cleanup.
+///
+/// This structure owns a list of allocated blocks and ensures they are
+/// automatically freed when dropped. Use `iter()` to iterate over all
+/// allocated blocks.
+///
+/// # Invariants
+///
+/// - `list` is an initialized, valid list head containing allocated blocks.
+#[pin_data(PinnedDrop)]
+pub struct AllocatedBlocks {
+    #[pin]
+    list: CListHead,
+    buddy: Arc<GpuBuddyInner>,
+}
+
+impl AllocatedBlocks {
+    /// Check if the block list is empty.
+    pub fn is_empty(&self) -> bool {
+        // An empty list head points to itself.
+        !self.list.is_linked()
+    }
+
+    /// Iterate over allocated blocks.
+    ///
+    /// Returns an iterator yielding [`AllocatedBlock`] values. Each [`AllocatedBlock`]
+    /// borrows `self` and is only valid for the duration of that borrow.
+    pub fn iter(&self) -> impl Iterator<Item = AllocatedBlock<'_>> + '_ {
+        // SAFETY:
+        // - Per the type invariant, `list` is an initialized sentinel `list_head`
+        //   and is not concurrently modified (we hold a `&self` borrow).
+        // - The list contains `gpu_buddy_block` items linked via
+        //   `__bindgen_anon_1.link`.
+        // - `Block` is `#[repr(transparent)]` over `gpu_buddy_block`.
+        let head = self.list.as_raw();
+        let clist = clist_create!(unsafe {
+            head,
+            Block,
+            bindings::gpu_buddy_block,
+            __bindgen_anon_1.link
+        });
+
+        clist
+            .iter()
+            .map(|this| AllocatedBlock { this, blocks: self })
+    }
+}
+
+#[pinned_drop]
+impl PinnedDrop for AllocatedBlocks {
+    fn drop(self: Pin<&mut Self>) {
+        let guard = self.buddy.lock();
+
+        // SAFETY:
+        // - list is valid per the type's invariants.
+        // - guard provides exclusive access to the allocator.
+        unsafe {
+            bindings::gpu_buddy_free_list(guard.as_raw(), self.list.as_raw(), 0);
+        }
+    }
+}
+
+/// A GPU buddy block.
+///
+/// Transparent wrapper over C `gpu_buddy_block` structure. This type is returned
+/// as references during iteration over [`AllocatedBlocks`].
+///
+/// # Invariants
+///
+/// The inner [`Opaque`] contains a valid, allocated `gpu_buddy_block`.
+#[repr(transparent)]
+struct Block(Opaque<bindings::gpu_buddy_block>);
+
+impl Block {
+    /// Get a raw pointer to the underlying C block.
+    fn as_raw(&self) -> *mut bindings::gpu_buddy_block {
+        self.0.get()
+    }
+
+    /// Get the block's raw offset in the buddy address space (without base offset).
+    fn offset(&self) -> u64 {
+        // SAFETY: `self.as_raw()` is valid per the type's invariants.
+        unsafe { bindings::gpu_buddy_block_offset(self.as_raw()) }
+    }
+
+    /// Get the block order.
+    fn order(&self) -> u32 {
+        // SAFETY: `self.as_raw()` is valid per the type's invariants.
+        unsafe { bindings::gpu_buddy_block_order(self.as_raw()) }
+    }
+}
+
+// SAFETY: `Block` is a wrapper around `gpu_buddy_block` which can be
+// sent across threads safely.
+unsafe impl Send for Block {}
+
+// SAFETY: `Block` is only accessed through shared references after
+// allocation, and thus safe to access concurrently across threads.
+unsafe impl Sync for Block {}
+
+/// A buddy block paired with its owning [`AllocatedBlocks`] context.
+///
+/// Unlike a raw block, which only knows its offset within the buddy address
+/// space, an [`AllocatedBlock`] also has access to the allocator's `base_offset`
+/// and `chunk_size`, enabling it to compute absolute offsets and byte sizes.
+///
+/// Returned by [`AllocatedBlocks::iter()`].
+pub struct AllocatedBlock<'a> {
+    this: &'a Block,
+    blocks: &'a AllocatedBlocks,
+}
+
+impl AllocatedBlock<'_> {
+    /// Get the block's offset in the address space.
+    ///
+    /// Returns the absolute offset including the allocator's base offset.
+    /// This is the actual address to use for accessing the allocated memory.
+    pub fn offset(&self) -> u64 {
+        self.blocks.buddy.params.base_offset + self.this.offset()
+    }
+
+    /// Get the block order (size = chunk_size << order).
+    pub fn order(&self) -> u32 {
+        self.this.order()
+    }
+
+    /// Get the block's size in bytes.
+    pub fn size(&self) -> u64 {
+        (self.blocks.buddy.params.chunk_size.as_usize() as u64) << self.this.order()
+    }
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index bdcf632050ee..2652933e585f 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -102,6 +102,8 @@
 pub mod firmware;
 pub mod fmt;
 pub mod fs;
+#[cfg(CONFIG_GPU_BUDDY = "y")]
+pub mod gpu;
 #[cfg(CONFIG_I2C = "y")]
 pub mod i2c;
 pub mod id_pool;
-- 
2.34.1

