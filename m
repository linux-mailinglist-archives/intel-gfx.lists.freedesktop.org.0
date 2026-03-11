Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJiyBxm6sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE34259EEB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BE110E7DD;
	Wed, 11 Mar 2026 00:40:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Pnyt3+Nr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010049.outbound.protection.outlook.com [52.101.46.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C389E10E7CC;
 Wed, 11 Mar 2026 00:40:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EvqTvEaQCRePjOaEbVffNCg7tNxPdPy+m4UsadtymWC7p/T7N7dmfSMG0dzjoAJ05EVkd9vIIOnv6YVY2YPNF+hZIaje/Mdq4cun2lorCTYUOYad6HxtIHVXK1qf4U7EHcEmYw8w/PCExhmNMsMh1aaca3Y+QjoaUekxvZDCfBUP69rob68yu742g5j8wnBEe0FUqIp4br7Ypwx5L9R+bageoSR4ZH7keLwPgbfjs7bluUtUzr11WKhwgdD74CTtJcJ+cDDfK8GHOcaZwWL/otYCSXfRCY9h3qeS6ncRY6WWpA1Q2bU+A7UYfsXwrIGhWx33ox03TdkZD3N4RcGdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Khu7wSucRYHzXSqhJANNPqfbDh4XtSwrg/MzJoQn8wg=;
 b=y1bOhAgaMpAlhqiPX1D49UGNWEaQr6HrYZqElKi+NyzxIv9/QhBgCnpy5glV3okDpoyoLdXzPv1bdjYXl6lVNPwuV/qXr97lIELWe7DvmEGhhmZ4L6ajBs1Xi2+GvXUIaUBONVfAQRWl/o1NhdFdEHnCviFhgzUSzWWcE5BGg3JlB1VK98sE+G+25TIRflMyY0/V1Xn+C9o5a3uN5m3ql8mhCMYsIR+LGOvjNDTXYqXJb3FFK56EQTW1EYtfeB+OOVSz5ZtBAtmw9I/HPuOTJo7WPb3HVj/UDRGQOE/pCUQK4LY8PJhAl5lS7MIM+pXb3OfC9amaXsnNlB9pbUC+vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Khu7wSucRYHzXSqhJANNPqfbDh4XtSwrg/MzJoQn8wg=;
 b=Pnyt3+Nrv8O5wWYe31xt4u50ZnGpL7lA00ccoWy0ERfzHEKwS941Ht/Y4q85S8JwCqZeMiEmyezxPmFwVeND36NpO73quvAD4QN02yHzAvUo6hAZbWt5K//fw4H6blJ1HRg5wG/ZffjoAEmazqOJk9GJHYqo/YmPE8hyWzQf5+lt9EfRMi6sWMXjxyj4qBohzDlVfeC8nMQr2wbCXW3+4UXdnK78WmXGF2bBAullpsPLG4F9cJVDvLI53IZw82Y6XLEaTySlnQxmDrmK22ZJtL5gJRyIE+U1q8BdGOcP6xvb3VxWRna8/w9/FfFrAlVVSW7Ar1YoPnVE0wmlHSlwPA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BY5PR12MB4051.namprd12.prod.outlook.com (2603:10b6:a03:20c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Wed, 11 Mar 2026 00:40:44 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:44 +0000
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
Subject: [PATCH v9 12/23] gpu: nova-core: mm: Add MMU v2 page table types
Date: Tue, 10 Mar 2026 20:39:57 -0400
Message-Id: <20260311004008.2208806-13-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BLAPR03CA0077.namprd03.prod.outlook.com
 (2603:10b6:208:329::22) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BY5PR12MB4051:EE_
X-MS-Office365-Filtering-Correlation-Id: 78bf1af1-20bd-45a2-6dd5-08de7f06d459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: E5oNLTkPwbncTU2+S/Xg5JvnjuVlas35CiSQXBkAW0W21dA8mZYYPlVI7s6Ems1fpEqLJ1pHGEgfPcINA74PH2KkRom2J/DInSaSMfGyNnyIEtX91vaW37Xz4Q2hXXE+OSc61AODwQ8V2B4CBNQRT0VJ2s7WSkru8wqNEsuohCQVz6nD8FF0Y+08ENJA/5ycHMA2a1EqHFiL2Cb6dEEYc7X75/dlpJ9RbhXuVQytlUv6XGsbDar3v7EhAnZz6UDYZBttO3JTp3azVLElurx8hC79G7RBVMSlMTHsRYvgtfMI0BVG1lOnolLJKV4rbfV9BiMMMpq6TJkEu6zsAZT/wlaRcm+Zak90rQz7G0GpUzUdqfVAfj6yW0WOx2XSUNiynXNTcvKJrqDYc7harcp6Wv0yNWVWZAXUfXnV4sklClE3aVu6E61srWbC6J4qYr0tmorCb4Wg/HRgOzqvxKeM1pMeG5DaPM+WneKUmJz1bhxALKw/LMuvTRxRhiVLZE17VdgdxuDVyr93ozjnmwtjZ32/382b/0/gnigbmDTbvTJ4z16p2iusTE+hA4cRFtP6fWqC6yEem6mCOOqXi+iJ08UKBz5aq6f6WmMwAOUc5xXfg9AtwZSyMk9eGbPccbyevnJ39RbW9EM+4ExLcCOmttlS7ZxYIiGs2JmB9ns53xfoe72RYU72Tf1gRzbUHuSZ2MlvFj+b32TYA7V1rNsgI1SrxDKhX4UmtZZIlANFo+E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rTxirV7m/ZA/lzsx8Fqj+wMCoqpZ/OuU4VyxA6IAUC7vGF0/mPgF9PRdux1a?=
 =?us-ascii?Q?ahNcTCKfi7COklULutOnyVKAo1NI4NVwoczeS8ER2mB3cteamgxjMXNnI/wg?=
 =?us-ascii?Q?IVg19I32MWThEbDHskL0wuX/fKjLI6Q0NBBTs6MD8opPvUAOd+xetZx6Ea4D?=
 =?us-ascii?Q?QN0M7nyArRfUvmqTfZcoYxoMHRE10+vrJ9GbHgwK46DCfvftzqT5SDXSuvQz?=
 =?us-ascii?Q?Ah4Vh6f4WTS9PQNClBBq3Qpc4dC61ClpSaiLBvi9864wLY8qam+/hBaVmr9c?=
 =?us-ascii?Q?z131rBKeH6Vn0/MrzlGJe/p23iXVhFX4mb/RQJtXUNpVeJZGdVREcJ27q78F?=
 =?us-ascii?Q?Hy2Iz/IJK+eTN6kE6owGnOoxgkUv3yx5E+0J1Nwqr/pk4tAkzEGDxQ238YZF?=
 =?us-ascii?Q?0oUlR+TOc7zb4xpPxGVLlrrCDP2BjrhUQSIjtdsmbZYCFlGa8MDWddZS3FsX?=
 =?us-ascii?Q?uYdH9/SgUjg2+KtikpzHHWXyZQ+U5qG2LAQfEKVJAZNsUZL2BBzJp3ln3OVU?=
 =?us-ascii?Q?IXg8duOw1o1KVfUFSnPCo1RtZjgjQvQf+ZZxcxD8KJikJLX8aWH7nyMFMsUw?=
 =?us-ascii?Q?PTX1qmqWEDt7uWtivXr0TXAo9/RRSl56JuXwWEkZ7xfpEpM9g4mx373mnY6S?=
 =?us-ascii?Q?4LSMbcC+cYQjONCX7dCv91RFe32SWyWAhMz+R1jToSIigqD+4FcfvLJbyPm2?=
 =?us-ascii?Q?fYAqfMjqdXwjCddk1KTl526AOKvbDNGXInb3Quem1nLNlT2zpa1oEqiApxgA?=
 =?us-ascii?Q?DNLBnkIibuWsjc8o9mniSEi1JaQrRlql6CtIUnitMtdRA9NCv/2yiHdYfzZd?=
 =?us-ascii?Q?5FKqRL7sFQIg2+arLgtQpchCTH9jMvN9zjsn3h+ZM5nO4VtKXLnSWzVrnB+S?=
 =?us-ascii?Q?oHDbJfI4WuLCGsp+zPgH57Zv1xXIVLOkjVwGOtp3mFKqc+ddvJaxX7oJZ1qH?=
 =?us-ascii?Q?HTepPcelrIf6c7DYlPuYwCwKwcQcuSOVk4z3arWUDilqYOYp3IvgQLRwj6C6?=
 =?us-ascii?Q?9eW44bwCyUaVw66+dNF+0jK2IcwV4WEqE4GPJoq5FPoAL9/SD0lfcL1mjhU9?=
 =?us-ascii?Q?sXgqIJBl82wTGShephy4JudjSXvFG01HTJRIuU72dJx9teZq5ecs/bstUNAU?=
 =?us-ascii?Q?6erG/HcszI4oheHqUmAVwPIXnktxCSohnje2jY0vMcIUCAcjZQe6f0fVu3wA?=
 =?us-ascii?Q?p9adkNhvfz+rnAbrbROF6sia+X+cOb8vKV5YC9bCnUieFQpPDpJ+MXEaLlHw?=
 =?us-ascii?Q?Mau+qe6Ur9/9Tj8cKW6Is+F+18Fvhe6GyZFFsF6txGUe0eV7cCBWqxiUEX7L?=
 =?us-ascii?Q?+AJpWYk1eMlxxaW0F3mPBvNuTh5DID50VEiFrZh0pRkdMFi6jsynIOzD5rvS?=
 =?us-ascii?Q?ZakAPNqLP8hgopjQ9cDQU4vna+UhQ8yy9wZ80ca724gwLry4PFJSJC87vGVs?=
 =?us-ascii?Q?ds3LhjQoN2HYQpwAJXRK+otT+khWDkB07dwhs6R4B5hcksJu4sJIEeHjlKmO?=
 =?us-ascii?Q?TeWU017lS0XLQaOn4TfI4BmgCsCbvMNxHCqesuXSPqP47RVkMYkgQ49baM3W?=
 =?us-ascii?Q?D05VGyeEz0olUo90aMIN42pSH8D5C3RkgBSo8qkkBNiLOyEYGA9li8DrfsJf?=
 =?us-ascii?Q?dq0JJ/7b6ty46RyBiVr2+NcqAe+rN6nM0wXI2Zk6GYSzBLc/tOTP7ipKUxWn?=
 =?us-ascii?Q?XINOeyDBjUuteT3+L6DkvChTrB0x/0v5lrgSYh2uVhaw/FP/zdlAf2J0gsd+?=
 =?us-ascii?Q?fdll1wu7aA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78bf1af1-20bd-45a2-6dd5-08de7f06d459
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:44.3794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3QBmcGk8OZsaaJ3reOi+cX2Cy6d/LeJgt5cm/Ts6yl0+p+LMVmhfmyU8WgrDAQAJFf02W8LoOnPZPEwsqvkF5Q==
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
X-Rspamd-Queue-Id: BFE34259EEB
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

Add page table entry and directory structures for MMU version 2
used by Turing/Ampere/Ada GPUs.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs      |   2 +
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 +++++++++++++++++++++
 2 files changed, 234 insertions(+)
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 3946ce2f50a5..2dcd559cc692 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -8,6 +8,8 @@
 
 #![expect(dead_code)]
 
+pub(crate) mod ver2;
+
 use crate::gpu::Architecture;
 
 /// Extracts the page table index at a given level from a virtual address.
diff --git a/drivers/gpu/nova-core/mm/pagetable/ver2.rs b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
new file mode 100644
index 000000000000..6e617846c57b
--- /dev/null
+++ b/drivers/gpu/nova-core/mm/pagetable/ver2.rs
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! MMU v2 page table types for Turing and Ampere GPUs.
+//!
+//! This module defines MMU version 2 specific types (Turing, Ampere and Ada GPUs).
+//!
+//! Bit field layouts derived from the NVIDIA OpenRM documentation:
+//! `open-gpu-kernel-modules/src/common/inc/swref/published/turing/tu102/dev_mmu.h`
+
+#![expect(dead_code)]
+
+use super::{
+    AperturePde,
+    AperturePte,
+    PageTableLevel,
+    VaLevelIndex, //
+};
+use crate::mm::{
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+
+bitfield! {
+    pub(crate) struct VirtualAddressV2(u64), "MMU v2 49-bit virtual address layout" {
+        11:0    offset   as u64, "Page offset [11:0]";
+        20:12   pt_idx   as u64, "PT index [20:12]";
+        28:21   pde0_idx as u64, "PDE0 index [28:21]";
+        37:29   pde1_idx as u64, "PDE1 index [37:29]";
+        46:38   pde2_idx as u64, "PDE2 index [46:38]";
+        48:47   pde3_idx as u64, "PDE3 index [48:47]";
+    }
+}
+
+impl VirtualAddressV2 {
+    /// Create a [`VirtualAddressV2`] from a [`VirtualAddress`].
+    pub(crate) fn new(va: VirtualAddress) -> Self {
+        Self(va.raw_u64())
+    }
+}
+
+impl VaLevelIndex for VirtualAddressV2 {
+    fn level_index(&self, level: u64) -> u64 {
+        match level {
+            0 => self.pde3_idx(),
+            1 => self.pde2_idx(),
+            2 => self.pde1_idx(),
+            3 => self.pde0_idx(),
+            4 => self.pt_idx(),
+            _ => 0,
+        }
+    }
+}
+
+/// PDE levels for MMU v2 (5-level hierarchy: PDB -> L1 -> L2 -> L3 -> L4).
+pub(crate) const PDE_LEVELS: &[PageTableLevel] = &[
+    PageTableLevel::Pdb,
+    PageTableLevel::L1,
+    PageTableLevel::L2,
+    PageTableLevel::L3,
+];
+
+/// PTE level for MMU v2.
+pub(crate) const PTE_LEVEL: PageTableLevel = PageTableLevel::L4;
+
+/// Dual PDE level for MMU v2 (128-bit entries).
+pub(crate) const DUAL_PDE_LEVEL: PageTableLevel = PageTableLevel::L3;
+
+// Page Table Entry (PTE) for MMU v2 - 64-bit entry at level 4.
+bitfield! {
+    pub(crate) struct Pte(u64), "Page Table Entry for MMU v2" {
+        0:0     valid               as bool, "Entry is valid";
+        2:1     aperture            as u8 => AperturePte, "Memory aperture type";
+        3:3     volatile            as bool, "Volatile (bypass L2 cache)";
+        4:4     encrypted           as bool, "Encryption enabled (Confidential Computing)";
+        5:5     privilege           as bool, "Privileged access only";
+        6:6     read_only           as bool, "Write protection";
+        7:7     atomic_disable      as bool, "Atomic operations disabled";
+        53:8    frame_number_sys    as u64 => Pfn, "Frame number for system memory";
+        32:8    frame_number_vid    as u64 => Pfn, "Frame number for video memory";
+        35:33   peer_id             as u8, "Peer GPU ID for peer memory (0-7)";
+        53:36   comptagline         as u32, "Compression tag line bits";
+        63:56   kind                as u8, "Surface kind/format";
+    }
+}
+
+impl Pte {
+    /// Create a PTE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PTE for video memory.
+    pub(crate) fn new_vram(pfn: Pfn, writable: bool) -> Self {
+        Self::default()
+            .set_valid(true)
+            .set_aperture(AperturePte::VideoMemory)
+            .set_frame_number_vid(pfn)
+            .set_read_only(!writable)
+    }
+
+    /// Create an invalid PTE.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+    }
+
+    /// Get the frame number based on aperture type.
+    pub(crate) fn frame_number(&self) -> Pfn {
+        match self.aperture() {
+            AperturePte::VideoMemory => self.frame_number_vid(),
+            _ => self.frame_number_sys(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+// Page Directory Entry (PDE) for MMU v2 - 64-bit entry at levels 0-2.
+bitfield! {
+    pub(crate) struct Pde(u64), "Page Directory Entry for MMU v2" {
+        0:0     valid_inverted      as bool, "Valid bit (inverted logic)";
+        2:1     aperture            as u8 => AperturePde, "Memory aperture type";
+        3:3     volatile            as bool, "Volatile (bypass L2 cache)";
+        5:5     no_ats              as bool, "Disable Address Translation Services";
+        53:8    table_frame_sys     as u64 => Pfn, "Table frame number for system memory";
+        32:8    table_frame_vid     as u64 => Pfn, "Table frame number for video memory";
+        35:33   peer_id             as u8, "Peer GPU ID (0-7)";
+    }
+}
+
+impl Pde {
+    /// Create a PDE from a `u64` value.
+    pub(crate) fn new(val: u64) -> Self {
+        Self(val)
+    }
+
+    /// Create a valid PDE pointing to a page table in video memory.
+    pub(crate) fn new_vram(table_pfn: Pfn) -> Self {
+        Self::default()
+            .set_valid_inverted(false) // 0 = valid
+            .set_aperture(AperturePde::VideoMemory)
+            .set_table_frame_vid(table_pfn)
+    }
+
+    /// Create an invalid PDE.
+    pub(crate) fn invalid() -> Self {
+        Self::default()
+            .set_valid_inverted(true)
+            .set_aperture(AperturePde::Invalid)
+    }
+
+    /// Check if this PDE is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        !self.valid_inverted() && self.aperture() != AperturePde::Invalid
+    }
+
+    /// Get the table frame number based on aperture type.
+    pub(crate) fn table_frame(&self) -> Pfn {
+        match self.aperture() {
+            AperturePde::VideoMemory => self.table_frame_vid(),
+            _ => self.table_frame_sys(),
+        }
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        debug_assert!(
+            self.aperture() == AperturePde::VideoMemory,
+            "table_vram_address called on non-VRAM PDE (aperture: {:?})",
+            self.aperture()
+        );
+        VramAddress::from(self.table_frame_vid())
+    }
+
+    /// Get the raw `u64` value of the PDE.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        self.0
+    }
+}
+
+/// Dual PDE at Level 3 - 128-bit entry of Large/Small Page Table pointers.
+///
+/// The dual PDE supports both large (64KB) and small (4KB) page tables.
+#[repr(C)]
+#[derive(Debug, Clone, Copy, Default)]
+pub(crate) struct DualPde {
+    /// Large/Big Page Table pointer (lower 64 bits).
+    pub(crate) big: Pde,
+    /// Small Page Table pointer (upper 64 bits).
+    pub(crate) small: Pde,
+}
+
+impl DualPde {
+    /// Create a dual PDE from raw 128-bit value (two `u64`s).
+    pub(crate) fn new(big: u64, small: u64) -> Self {
+        Self {
+            big: Pde::new(big),
+            small: Pde::new(small),
+        }
+    }
+
+    /// Create a dual PDE with only the small page table pointer set.
+    ///
+    /// Note: The big (LPT) portion is set to 0, not `Pde::invalid()`.
+    /// According to hardware documentation, clearing bit 0 of the 128-bit
+    /// entry makes the PDE behave as a "normal" PDE. Using `Pde::invalid()`
+    /// would set bit 0 (valid_inverted), which breaks page table walking.
+    pub(crate) fn new_small(table_pfn: Pfn) -> Self {
+        Self {
+            big: Pde::new(0),
+            small: Pde::new_vram(table_pfn),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(crate) fn has_small(&self) -> bool {
+        self.small.is_valid()
+    }
+
+    /// Check if the big page table pointer is valid.
+    pub(crate) fn has_big(&self) -> bool {
+        self.big.is_valid()
+    }
+
+    /// Get the small page table PFN.
+    pub(crate) fn small_pfn(&self) -> Pfn {
+        self.small.table_frame()
+    }
+}
-- 
2.34.1

