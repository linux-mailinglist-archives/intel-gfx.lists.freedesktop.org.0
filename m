Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2O2xD9M6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85EE371954
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A4510E9C3;
	Tue, 31 Mar 2026 21:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Odq6RBep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011027.outbound.protection.outlook.com [52.101.57.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8B310EB80;
 Tue, 31 Mar 2026 21:21:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z32cwQEQ7hTS3cJmIjLjLeK2tjBP+nI/9IydaMg+fJmB5AOCj/qxFoJlGiA0ZJkoaj1pMH6ZdOHgBoal03najwSQeQLf9eOXL2hSxbDhlBkuxzbEGZZYQZjjoQCCY8E2mOSamoAtZV7axmY+iXJ1cxJomF6qudeSTd5vdAgOIECBbIRlt/Jy1+P04p0tARvqgc8nrDVbj+749C3R0mFtxff4uQ8of9BEiGkzuI6cIKJu7ojVqwu4LvDenBfhT47a4jvRgnlq4k4c6npjffdEisYTXpBHsT13/7bf0DJxaw1Um7T59roPs28HxEkxQrW9CO/tp7Nz4yXcwwOo5Q/H9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H33nm66InsEMrisLhY04OyeLYVU6n0M/5qc1OO9Emgk=;
 b=Q34UPw0EHoVp50cfxbRxbS3jmxJh+xCkm3zXGIh4X0ho/fQzW4mInEQSwiQSQGApgVzwuUQWjyr1wwUmdKSvOzSykY9o5ZDqss3JkXTnGYElpS0PGQtJT1fPMqynSOtQiZHcSs6t9lN2WpVVrp1TH6QgHNN7r2w25qorFi0nuhHG5PhsL1tLNAm0EMrP5JLldliqgKGETB/f2q/IUbvzi6EZFLdFsMSVI62uIHLqwEnNwAh+jDSpl4PjH9+8NsYskXlG8fhBPc5/94jhkNSU3IVMnr0DVVPzTnrzjm8eYIEqnTevep+PgjEbz1AzirlNPuov1N7NUObaM4ooxmoQeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H33nm66InsEMrisLhY04OyeLYVU6n0M/5qc1OO9Emgk=;
 b=Odq6RBep/YiZaOTanNlwAP+9QM5XzSSjEhONZ+KMhTi6zIJ/J+r2DRaaxWs8k/9Jef28oJlRcIVXY3HE8j+NQonFLFErMTX0ZjKoXKOzAvXVKwfXCbTNgmgpct1xDcmn5UGxcEDNXDPBdaneeot4Lr8w8cq3MEGkGv6d5TaCco5F4fFbwOHqMHERSR9koh5yn5OPqrg6RBJIfYviWYMmPgZ8s+vyLIwEo6hvIgwtJmQKE8uUEL7IC3D3THv0csPwnIeewjBipnjG/hh6h2FF/3Wux9hY9cAq6snubtQjzaI4FA00XuIzOCyAwdtTX9YWRo+sgBwItJr1kkYE1hIaAA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:13 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:13 +0000
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
 Matthew Brost <matthew.brost@intel.com>,
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
Subject: [PATCH v10 05/21] docs: gpu: nova-core: Document the PRAMIN aperture
 mechanism
Date: Tue, 31 Mar 2026 17:20:32 -0400
Message-Id: <20260331212048.2229260-6-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:208:52c::11) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e4397e4-ece1-4ad5-7b12-08de8f6b6f73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: ueJve5RZ2mn2pCQF7F855S68xPTAZV9jb6EHmEnH8TPdubZUSgMi5OhiLT5bnalUELNcryJXKLFVs8jiZ+aBTAfCWd8mSXuehgSmYpYhKp+XUlqRq4PE4PaSZveHl4GIDrnex77/2K+8ng4hb9EwKuJrfQ+CoiX6w+78wKgUyYjporCho293H/6iBAzm9vZQ5HgJR2HeIfMrBBKkyzqrtroZ+B8eQD1NquznGOj//B/CH2XuErbLc3AyDGbQbZREBUsIUQOZgzCMG723XREPP5ZkIngC3B9mDAvvRXQa8o6avX3rzHHo2B8sjmcGCPEQZyK7r8BWhA8MshtYUEgSpb5/db6hYq74QHRnh/QYPdb5HBIGIsrb/30zO4wTKnURBkKWfPFlvElxBK1vFYf2ocXXrz9bkeASKmUW3LQavxUJm+JnoSsBHKE5Jga5/lZJ4vsRIB/+4Xqk6Zfxbn/m3yg7Sg2n/D1BXf6Edp8JIinUekVr8htlZb+njPp0A924eB00It2AxHLHVBtN2K5I9H2QAEu88GpNZQzpc/QakzX6I3U6OfZ35oLP0iaSoDjXk7Fvi3LY6Q69O7jFzoHBDCq/jWrlB4o30j3Ab6/iuM58JTsw224k6WNy4cLeu+n9St8Ba9uULd191sWr0BmLr2iumua11vhsi29sWaJ/7a2u5wxHgCHxA/Sox5wPFc3dMWHP9ZFX3MRps1nvvRQBRVa4dQNkWyrHIE0GkuBz/Qc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cQIrrTSqkkLtHIlP369ubS1rv8OEw9o/MgJpP57wyvzE/ZbSWBCTnGeJM8q0?=
 =?us-ascii?Q?cTdhFY7/BWnpRjsirk4BS4MEI3rOsSjCyrqFFc/9p/79Xk+qtDi9CA+PfRbN?=
 =?us-ascii?Q?BqY9VEkavu69f/+qpPyJCzPauvkcR5Awx7kMMADyps2ZyDGDvtoIkRvMVB55?=
 =?us-ascii?Q?WRt3gLf3GGaSWKZAwmfMM8W1BnULx3paWETWr3VKKHiB4rlZZtZP9O8uIIqy?=
 =?us-ascii?Q?mKmigyTrjsKsLUFsFHtpmi30ugkhpXnMHlukZEDu7Dn0eI74rikh8+tjSsGd?=
 =?us-ascii?Q?5aCxEenYOt4uCuqaBdNEQobnYoXW6E8RDMQLsf/5KI9BWjnyrRiJAVHQU+BO?=
 =?us-ascii?Q?FtAIiuBg93XMNtbXMofkelW4pciXRztR1R95tEhY4jbuwQ5ZRu7tgao3zNN6?=
 =?us-ascii?Q?uqDO/dMWsW4Zgg3NvT9TcJLb5E3Ev1a7WXvD9LtdtloKQZNVVCiJAFTA8APx?=
 =?us-ascii?Q?coFTu1DxdtNDi7LynGbAkIgXQyxy4MAf28COGE5bWjC5c0Rw9WEjy8Nh94MS?=
 =?us-ascii?Q?gDgkPEjmhxH5yo0RBKTzhRndiO5Nf/P1VHhEyUgj5KbI1yG16WmieQp/qErH?=
 =?us-ascii?Q?pNQYNsPj1pMZZz9jDers53gMj5JW811DRi12tb/lRehqF+SHOxZ/5o/SffWx?=
 =?us-ascii?Q?u38td7d34j0nmt0uc3z/gZbm0r83/w2vE/0r/ddNmqXflQJs6s7UjFvVZUvd?=
 =?us-ascii?Q?Gxgr8cX04DHHby0ocJq7Am4LgU8pruPx8OZUZjDh1v4IBZ9XWmEKVo6jTyNf?=
 =?us-ascii?Q?pCJYepylS8Yen2UYXJs3dB1uH3ahNEjlucgQGaZkM35uYQo2lC4xJ2fUT0hT?=
 =?us-ascii?Q?Z3bKJqxOnG3rkGtjDdOaO8kDMZd3mN+xT1jLRS8jsRR6Xd5sRBUWov6UnF9D?=
 =?us-ascii?Q?mEZ1S4Wp0KGPPl5qGiL5RZkXLvYUbx/kX9HtZMGHMkEqK4bsNGIBkYY3XmAe?=
 =?us-ascii?Q?z6cqRSoeA3D7SFBPQPrai1NWJshsm7hZJ9fdp6rZBdQGRHt8rGdDQMauVTvt?=
 =?us-ascii?Q?KwBLug8gyXhI/L+V3zRX0vZHub378JLAeYdnyiO5QyKOiC+bYgPB4Geq7ibF?=
 =?us-ascii?Q?SxQ3fkf/3KDWyETu6HG+LZanzyKfzQbskivPvfXyku53HqaUcw676GbhTv6j?=
 =?us-ascii?Q?OZO0OixdAWEs1fwzmRNzAKaVlFk3TdiIiwaASf6p7+qvH3BZ5ucxwrZ5zkT9?=
 =?us-ascii?Q?AgdoI4pewKIm9C8t0SEdHUa+XI/ubQ6dHstV+SbOouoBsDIBdqXDeFrup4tc?=
 =?us-ascii?Q?HJibYZv5Yn0KAsJvadvFkxqT2SMlKssg0y5t/4rM2lLScK1kTLYowh0KdUs+?=
 =?us-ascii?Q?zixxeIelmS4WTgzJ3r2XWYwyc3LKUXkB9yo/i2Y7Wd9JhpOiudlxGV8pPpva?=
 =?us-ascii?Q?ixYpkZIMyQUxQMAG9mS0Qtp9vATo3nkpWex3aDGrcVdEh3BfKGevV5wWNOIv?=
 =?us-ascii?Q?o1/9J7/LDbWSVOZyg0eOuokwUlaw6DF8aqnJg7UWkaROW2Et00WDa6j6Griu?=
 =?us-ascii?Q?TemjSwCXEGtBGm90UCtOD97/KIiVo6Yk3T9lU4ikWGuyCYKnwjiIZ33GKwCs?=
 =?us-ascii?Q?9pXyueX2FKW8PG9ao2NqL4LTcrg196/9JSRBGzXp2tSVZJ/kE5+f9Oz+wp50?=
 =?us-ascii?Q?ehryaGe9zOcPjXn2TlQ/mYH2yGrVeidxb9JpHSXJIS20E15yTpSKTHeRtT4E?=
 =?us-ascii?Q?P0NZ6NDFJuNjcMYWF1uA3Jy9q/veE/3YDbSV8qRgm7fOPBT12/Ilam+W0YkZ?=
 =?us-ascii?Q?860T0+GFHg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e4397e4-ece1-4ad5-7b12-08de8f6b6f73
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:12.9364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +kDhjKQ8wBF5Vgt3XX2BydCDD9Kl8CvaSxbgq5UuSn5lLmIcmKbheHemXS22IrBuyvTqYYi9wJMYrXZ3HUWoog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5849
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: C85EE371954
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add documentation for the PRAMIN aperture mechanism used by nova-core
for direct VRAM access.

Nova only uses TARGET=VRAM for VRAM access. The SYS_MEM target values
are documented for completeness but not used by the driver.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 Documentation/gpu/nova/core/pramin.rst | 123 +++++++++++++++++++++++++
 Documentation/gpu/nova/index.rst       |   1 +
 2 files changed, 124 insertions(+)
 create mode 100644 Documentation/gpu/nova/core/pramin.rst

diff --git a/Documentation/gpu/nova/core/pramin.rst b/Documentation/gpu/nova/core/pramin.rst
new file mode 100644
index 000000000000..bcedb6e06d33
--- /dev/null
+++ b/Documentation/gpu/nova/core/pramin.rst
@@ -0,0 +1,123 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=========================
+PRAMIN aperture mechanism
+=========================
+
+.. note::
+   The following description is approximate and current as of the Ampere family.
+   It may change for future generations and is intended to assist in understanding
+   the driver code.
+
+Introduction
+============
+
+PRAMIN is a hardware aperture mechanism that provides CPU access to GPU Video RAM (VRAM) before
+the GPU's Memory Management Unit (MMU) and page tables are initialized. This 1MB sliding window,
+located at a fixed offset within BAR0, is essential for setting up page tables and other critical
+GPU data structures without relying on the GPU's MMU.
+
+Architecture Overview
+=====================
+
+The PRAMIN aperture mechanism is logically implemented by the GPU's PBUS (PCIe Bus Controller Unit)
+and provides a CPU-accessible window into VRAM through the PCIe interface::
+
+    +-----------------+    PCIe     +------------------------------+
+    |      CPU        |<----------->|           GPU                |
+    +-----------------+             |                              |
+                                    |  +----------------------+    |
+                                    |  |       PBUS           |    |
+                                    |  |  (Bus Controller)    |    |
+                                    |  |                      |    |
+                                    |  |  +--------------+<------------ (window starts at
+                                    |  |  |   PRAMIN     |    |    |     BAR0 + 0x700000)
+                                    |  |  |   Window     |    |    |
+                                    |  |  |   (1MB)      |    |    |
+                                    |  |  +--------------+    |    |
+                                    |  |         |            |    |
+                                    |  +---------|------------+    |
+                                    |            |                 |
+                                    |            v                 |
+                                    |  +----------------------+<------------ (Program PRAMIN to any
+                                    |  |       VRAM           |    |    64KB-aligned VRAM boundary)
+                                    |  |    (Several GBs)     |    |
+                                    |  |                      |    |
+                                    |  |  FB[0x000000000000]  |    |
+                                    |  |          ...         |    |
+                                    |  |  FB[0x7FFFFFFFFFF]   |    |
+                                    |  +----------------------+    |
+                                    +------------------------------+
+
+PBUS (PCIe Bus Controller) is responsible for, among other things, handling MMIO
+accesses to the BAR registers.
+
+PRAMIN Window Operation
+=======================
+
+The PRAMIN window provides a 1MB sliding aperture that can be repositioned over
+the entire VRAM address space using the ``NV_PBUS_BAR0_WINDOW`` register.
+
+Window Control Mechanism
+-------------------------
+
+::
+
+    NV_PBUS_BAR0_WINDOW Register (0x1700):
+    +-------+--------+--------------------------------------+
+    | 31:26 | 25:24  |               23:0                   |
+    | RSVD  | TARGET |            BASE_ADDR                 |
+    |       |        |        (bits 39:16 of VRAM address)  |
+    +-------+--------+--------------------------------------+
+
+    The 24-bit BASE_ADDR field encodes bits [39:16] of the target VRAM address,
+    providing 40-bit (1TB) address space coverage with 64KB alignment.
+
+    TARGET field (bits 25:24):
+    - 0x0: VRAM (Video Memory)
+    - 0x1: SYS_MEM_COH (Coherent System Memory)
+    - 0x2: SYS_MEM_NONCOH (Non-coherent System Memory)
+    - 0x3: Reserved
+
+    .. note::
+       Nova only uses TARGET=VRAM (0x0) for video memory access. The SYS_MEM
+       target values are documented here for hardware completeness but are
+       not used by the driver.
+
+64KB Alignment Requirement
+---------------------------
+
+The PRAMIN window must be aligned to 64KB boundaries in VRAM. This is enforced
+by the ``BASE_ADDR`` field representing bits [39:16] of the target address::
+
+    VRAM Address Calculation:
+    actual_vram_addr = (BASE_ADDR << 16) + pramin_offset
+    Where:
+    - BASE_ADDR: 24-bit value from NV_PBUS_BAR0_WINDOW[23:0]
+    - pramin_offset: 20-bit offset within the PRAMIN window [0x00000-0xFFFFF]
+
+    Example Window Positioning:
+    +---------------------------------------------------------+
+    |                    VRAM Space                           |
+    |                                                         |
+    |  0x000000000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x0000FFFFF  +-----------------+                       |
+    |                                                         |
+    |       |              ^                                  |
+    |       |              | Window can slide                 |
+    |       v              | to any 64KB-aligned boundary     |
+    |                                                         |
+    |  0x123400000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x1234FFFFF  +-----------------+                       |
+    |                                                         |
+    |                       ...                               |
+    |                                                         |
+    |  0x7FFFF0000  +-----------------+ <-- 64KB aligned      |
+    |               | PRAMIN Window   |                       |
+    |               |    (1MB)        |                       |
+    |  0x7FFFFFFFF  +-----------------+                       |
+    +---------------------------------------------------------+
diff --git a/Documentation/gpu/nova/index.rst b/Documentation/gpu/nova/index.rst
index e39cb3163581..b8254b1ffe2a 100644
--- a/Documentation/gpu/nova/index.rst
+++ b/Documentation/gpu/nova/index.rst
@@ -32,3 +32,4 @@ vGPU manager VFIO driver and the nova-drm driver.
    core/devinit
    core/fwsec
    core/falcon
+   core/pramin
-- 
2.34.1

