Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKVIOBS6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EA2259EB0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8861710E7D9;
	Wed, 11 Mar 2026 00:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="mWwAFDNW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010026.outbound.protection.outlook.com [52.101.61.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB9610E7DB;
 Wed, 11 Mar 2026 00:40:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gocqJVsQSUTIrdvewga3T4S3LTGXjlqWfw1OjQU7OHn/5i3G0FSFwDPtvvyC6f8cicv2NqJdwmbOacj7d1ozKl6KAjg+iD3TvFslgzx1ibZDtWltuiROVXFiZ8Hvi3qjWs0nfHJngbfUdapsAfVov3qJ0A8rLQu62cLui4h0fdLAF/oURvkheIXEGOAi3JBdYFfBkwroDtzJ+f59U4pm9yluufreFUzZC+5xKFwcQEXyallRXfeOGDQe/pYU9YMUKa2QUEuO+j/hzVVsJNTZAPlOY6+KSMl4fItYdORjOa5cv1yBmTDrbbVDXjw/C5hEV0uzL4w1wtMX5DVZZ64DMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WT68gHtJ/T345InYJdJ0pdmp3l/MLJ87jcz8T6XoOs=;
 b=XVRedmSVO87FsMFvRCGGizIUPYkQwmHcOQhevYkOSwHNM+Z7KsSvEcFXf0jfmrfp63KWBSgrc0QIsrBNyD6uvDoI1Ezt0TKP9slefae19MOHGix4xlQ204JfId7HxaZzooGmFMSqErNtvuQB+b6/ACqcaJ6EJlaTEK+zNe5Wq5pHXFlTum7ow2hAdV64k9Ec5BqEpLUZ6Wwn7mWetp09PH6NRVA2w9rSzYnPkv77967kdFmRNK40B4ibDdKbKVw9XrHjWiUPcHQy/Uirez40ysJ6iRb0HRqJ8tSU1uVycn7L/BYhkj+iZ7ereYrqdyv73umxMvs27hFqnnahiEA/XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WT68gHtJ/T345InYJdJ0pdmp3l/MLJ87jcz8T6XoOs=;
 b=mWwAFDNWbv7v+IJ3iflcrgoR3/cFTPPFuBj3vAreoR4kdl1j013zLJo/b6XfPs6LHrxnrC6p61WwhOl2NzJ9saIh8n/0DB4V9jmsh615C85MWl6rgtPz3lGRQLSuUOtzoMHPlh6A86Xj5q69FOeTNuYubjQNWjsqtYdfVtEYp1y/0mkn26rTl70U3Gr08gfuu+YUH09pX2Fe22A8Q5N77PWTqteQGVJKWhuGXuapKywpNAypxDm/z0ltaw2S+JD12L7tNKf+q7yPdQKcrIfs+Fjy2lmYRddvUMpFirDnGpFVvTjFR6EeAgDHOd3skK0Px3j8kNeqvfyYupKP9PvyNQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:38 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:38 +0000
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
Subject: [PATCH v9 09/23] gpu: nova-core: mm: Add TLB flush support
Date: Tue, 10 Mar 2026 20:39:54 -0400
Message-Id: <20260311004008.2208806-10-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0231.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f913503-4941-48c8-1bc8-08de7f06d0e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: tPxQm52xO86EpUYgTLtJAAaVY4l5uuKVYq0AFlHWJPEvFx5agEzwoqVSq7Qp7aWPvMLN5HFA3Z8GXHDQBIZKZua5wOj0527EYyb8tuy9BOFuvGlF/UlR0u9/5RuademVRH+rODhTu55keDP1TuSQLhzA4uUd+M2PEDj+mPiHVowE6CyGtxNxwcceItuTqcF44yekoQ7Uwn7StF5Q5eUTeiAL2YAHeVNBGxetRCKHzCwW4EkANTMmi2VcT0YMQPxC6rjd4ruOhrjeSomJsNfrKhrXHn3M4GruV8d0g6bgR5iIl7yNvOdwLbDyqbnwjStmbjikVzZZRg5Fs9K89D1kK46zw9lVgBEX4PRJTcxpXK5Gt77IOEZu29BqS09+LZkAdGFGimBUfkthoHLe7BB++PI8on77DZLOtY54CnBhJ9vZgy8/P0yo2WPMaLeoZ7dcqGeiIKVTS7C6CVKSR4WBWiXpjjBj5117qpmC0ZWknT9Sa5vJTWqu/Nv6R9VjEJpz9wxOIpPKspC3gPTplfB2Hw7jiH+IeOSk6XnV3eN397x0g3EgdprmAvWomaIKMgzcuQkbpzL6cYHqrcUKqNY+VlwPDaOOCDi+I8HlscW2Xju6x31+LuBUUfuX90bkwrIkb45B2ooRXDejy4oVAMu/gDvi2hpw7iczfMeF51wymQ7Yn/ogS52ZTG74r19lpuL2ifFI3Puc/lQ6vBlWM5PB1aIR5dvYtkWx3JoRo2/lMGg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QCK1NoqhmbbACIGWBxmPO5LSz8wU1bImTwETHElcxz+ALtFMa3mrVqyjrZgK?=
 =?us-ascii?Q?94K3Ug8I/dIy8PUflsUuB85XdRe5xmOLV9FXBuy14OnVEfRFB+2zr6j8sDz9?=
 =?us-ascii?Q?631kbc3mdiVctQS53zdiOdVKyJHLR8nQuCTQMdoSqjXOw3jRhdodf/A+OFnE?=
 =?us-ascii?Q?YoFVxlxKpsyGrwghhXAdMQJ8iXqYjkaC9Fb4reDc4LCyWr8DZyDM5IZIBA46?=
 =?us-ascii?Q?bQe92RyTVp5D60R/Alp+Ak9Zk8LAaf0Y88A+N5Peo3hbraXRY15GvwNDjqCX?=
 =?us-ascii?Q?txaCyWpksO8PcspTlh3LBAoITkkEo7haOo1xKnoaZs5wnkg4vfrjNe3zWVMx?=
 =?us-ascii?Q?/HVWJPxk8g7hlQtBtUGnZ0e5M8KJe+27TFxMPcDLwPGHg//GTE2vFX+4U0XY?=
 =?us-ascii?Q?LEKctXao5lCqJ0+7AA/cSUv5YU+kK4Kq/7IzobErKYU+kq/UO0RqXPEIgaZu?=
 =?us-ascii?Q?XK8Qq0i7HExNnjTjvqvrXx6auPpF9yqI2x5yQjf7dZctsV1aCxla+atBICQa?=
 =?us-ascii?Q?BTIQBwOyYGvv9MityLfaNQ4lDWrDb47hX794GcCAuj+o76GwnPrjBfs8iU62?=
 =?us-ascii?Q?WyNPfkGeJ6sZ0+Go+ejZ5bU+++uVQTevfkFr0URtXFp0Uu/+jyB0eILe9E3G?=
 =?us-ascii?Q?sVFBe52GnT5dYBsEeF+Y7TOSmQGuURvTCo+pPhCnRHSItTIIHSGY6Rlq50P/?=
 =?us-ascii?Q?NVOwrjUVLjYOgmPAm2dIlQNAj773zUEJd6fhPhzlSm6GcAJ2EQjHxw9bt3E8?=
 =?us-ascii?Q?XXYyCvNm6sHEQyaGI+k5Hu4eO5aQPxLiUfzgB7s/zUYUIeMNJMR2X+6RBBT4?=
 =?us-ascii?Q?HIFnnu7mgGF/qsefZ1rEeYjTaxIzIiqTnNFaLTPqkfHo+UgDzLscaCH0AsJL?=
 =?us-ascii?Q?G+rtgZ5lcHPjoVjiHDPvoD9/4kMWMdEvedn051cJPbI1etG6ajbdlctxxt2T?=
 =?us-ascii?Q?aSJ5GwugEwVndirRBJzKBBAPeHKKX++w9z74UWjly64kMwD+k20JcL20mEds?=
 =?us-ascii?Q?RbGrH/5uVOsKH+7PdNwx44Cf99L0Q1C8aLwNXgsmpcqWdcSp//1TwT7GNezn?=
 =?us-ascii?Q?bLL/pHNefjKxG8sRfWN+Mi54I63HfrWUuf5cQkWThfVJvu3jZbRhl5v8Xbxm?=
 =?us-ascii?Q?LAQBYIpvfgK5aDPeQuGlz9ekPOH6giGh1Sdy2AybqELrUon+L22WWZJatESn?=
 =?us-ascii?Q?H2jnWkduDJYLWq1XRgKBKSimouo/W9j3fEv+HqwWahK7+iT5Ng9OEHZ8UzFx?=
 =?us-ascii?Q?Ddd7J/NUnIdm+YCvzsFAwQlYiohIpvTdiBxs7SoOleoGqVpJskX0tLtEywon?=
 =?us-ascii?Q?Z2dt4utHjYJ2F/weYcdKbRfxdpLsIZgx/lToR1g1OcapzvTdN3wFWpFT4pz9?=
 =?us-ascii?Q?Zj7/tJVFJrLubeS+umQck7wNuVyJLSdcYksBochnby8laclgBiSiJq3qhaFT?=
 =?us-ascii?Q?iYE8hVXOcpAR8W21LE1xy6kj/ytJYwkwUe7Tz4LqzXbmhiQLDFqADe3hMAj1?=
 =?us-ascii?Q?3D8sdyekj1EnqBOjamFB7OQqfJVZzofZUzCUn6Q8BrUadvDc4pQvbJ/CekaM?=
 =?us-ascii?Q?o548go6cwQyvsoCBjOXSB4dds5nt1sLSZVgOiBWENVW1nCV+lyN94kj1GF8e?=
 =?us-ascii?Q?mpVvPTEXZlpOKIf9VUOzjxW/7/8xViWwS65vKHeGYlvNU6024LzLggFbCc1O?=
 =?us-ascii?Q?kPofwEejyMluOjMUvAhSUrw7T1Lbavi/bAeiNEkI2Li/XTAaGOMJCwRqA99i?=
 =?us-ascii?Q?D9+0SQADSg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f913503-4941-48c8-1bc8-08de7f06d0e0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:38.5118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PeU71Xfa2KAMIxihq4SBjoOMxTUOtpjBTppM80fsw8sDfEwBxuA5uI04iOqXMU96duzFfpDAxR7CM0WUNpjKNA==
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
X-Rspamd-Queue-Id: 90EA2259EB0
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

Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.

After modifying page table entries, the GPU's TLB must be invalidated
to ensure the new mappings take effect. The Tlb struct provides flush
functionality through BAR0 registers.

The flush operation writes the page directory base address and triggers
an invalidation, polling for completion with a 2 second timeout matching
the Nouveau driver.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm.rs     |  1 +
 drivers/gpu/nova-core/mm/tlb.rs | 90 +++++++++++++++++++++++++++++++++
 drivers/gpu/nova-core/regs.rs   | 33 ++++++++++++
 3 files changed, 124 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs

diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
index b2cb245b38b7..b02dc265a2c8 100644
--- a/drivers/gpu/nova-core/mm.rs
+++ b/drivers/gpu/nova-core/mm.rs
@@ -5,6 +5,7 @@
 #![expect(dead_code)]
 
 pub(crate) mod pramin;
+pub(crate) mod tlb;
 
 use kernel::sizes::SZ_4K;
 
diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
new file mode 100644
index 000000000000..23458395511d
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/tlb.rs
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
+//!
+//! After modifying page table entries, the GPU's TLB must be flushed to
+//! ensure the new mappings take effect. This module provides TLB flush
+//! functionality for virtual memory managers.
+//!
+//! # Example
+//!
+//! ```ignore
+//! use crate::mm::tlb::Tlb;
+//!
+//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
+//!     // ... modify page tables ...
+//!
+//!     // Flush TLB to make changes visible (polls for completion).
+//!     tlb.flush(pdb_addr)?;
+//!
+//!     Ok(())
+//! }
+//! ```
+
+use kernel::{
+    devres::Devres,
+    io::poll::read_poll_timeout,
+    new_mutex,
+    prelude::*,
+    sync::{Arc, Mutex},
+    time::Delta, //
+};
+
+use crate::{
+    driver::Bar0,
+    mm::VramAddress,
+    regs, //
+};
+
+/// TLB manager for GPU translation buffer operations.
+#[pin_data]
+pub(crate) struct Tlb {
+    bar: Arc<Devres<Bar0>>,
+    /// TLB flush serialization lock: This lock is acquired during the
+    /// DMA fence signalling critical path. It must NEVER be held across any
+    /// reclaimable CPU memory allocations because the memory reclaim path can
+    /// call `dma_fence_wait()`, which would deadlock with this lock held.
+    #[pin]
+    lock: Mutex<()>,
+}
+
+impl Tlb {
+    /// Create a new TLB manager.
+    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
+        pin_init!(Self {
+            bar,
+            lock <- new_mutex!((), "tlb_flush"),
+        })
+    }
+
+    /// Flush the GPU TLB for a specific page directory base.
+    ///
+    /// This invalidates all TLB entries associated with the given PDB address.
+    /// Must be called after modifying page table entries to ensure the GPU sees
+    /// the updated mappings.
+    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
+        let _guard = self.lock.lock();
+
+        let bar = self.bar.try_access().ok_or(ENODEV)?;
+
+        // Write PDB address.
+        regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()).write(&*bar);
+        regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()).write(&*bar);
+
+        // Trigger flush: invalidate all pages and enable.
+        regs::NV_TLB_FLUSH_CTRL::default()
+            .set_page_all(true)
+            .set_enable(true)
+            .write(&*bar);
+
+        // Poll for completion - enable bit clears when flush is done.
+        read_poll_timeout(
+            || Ok(regs::NV_TLB_FLUSH_CTRL::read(&*bar)),
+            |ctrl| !ctrl.enable(),
+            Delta::ZERO,
+            Delta::from_secs(2),
+        )?;
+
+        Ok(())
+    }
+}
diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
index 8ec35b8c4b28..ff6faa9a7c5c 100644
--- a/drivers/gpu/nova-core/regs.rs
+++ b/drivers/gpu/nova-core/regs.rs
@@ -455,3 +455,36 @@ pub(crate) mod ga100 {
         0:0     display_disabled as bool;
     });
 }
+
+// MMU TLB
+
+register!(NV_TLB_FLUSH_PDB_LO @ 0x00b830a0, "TLB flush register: PDB address bits [39:8]" {
+    31:0    pdb_lo as u32, "PDB address bits [39:8]";
+});
+
+impl NV_TLB_FLUSH_PDB_LO {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [39:8] of the address and shifts it right by 8 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::default().set_pdb_lo(((addr >> 8) & 0xFFFF_FFFF) as u32)
+    }
+}
+
+register!(NV_TLB_FLUSH_PDB_HI @ 0x00b830a4, "TLB flush register: PDB address bits [47:40]" {
+    7:0     pdb_hi as u8, "PDB address bits [47:40]";
+});
+
+impl NV_TLB_FLUSH_PDB_HI {
+    /// Create a register value from a PDB address.
+    ///
+    /// Extracts bits [47:40] of the address and shifts it right by 40 bits.
+    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
+        Self::default().set_pdb_hi(((addr >> 40) & 0xFF) as u8)
+    }
+}
+
+register!(NV_TLB_FLUSH_CTRL @ 0x00b830b0, "TLB flush control register" {
+    0:0     page_all as bool, "Invalidate all pages";
+    31:31   enable as bool, "Enable/trigger flush (clears when flush completes)";
+});
-- 
2.34.1

