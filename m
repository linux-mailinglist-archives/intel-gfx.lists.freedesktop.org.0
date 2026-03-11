Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GuILC26sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654AB25A00C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 655FE10E801;
	Wed, 11 Mar 2026 00:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="EIW1IXl0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011030.outbound.protection.outlook.com [52.101.62.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AA810E7EB;
 Wed, 11 Mar 2026 00:41:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WrivExvtqZNbikx0jBi1zsWgsPcbHMPMNbGq/lHsRWjuMMI0wjdVdzhzwQ22qIgW7uCR13qTcsKD+y0Uhgftv9NZZ2gii1Kl4ExBVMuQh1TcrUFDMMdQAjCgAZ1O18vhvhuELt6rhpVTuXnlBkmdS7Px7gQJqYC7OMRRJkh4mcdX1drBU6hXJawlEdR8LbGmBozmKCzzC2IG3A8H0cIE3Oo0Ta0PM+2rZgkeK+Z2qOg8U5KY46BtGU1zWhM5UY76L0swuJh7BF/pj80CSKctnCWBC5GoVdhK1u4ccQTJPntpSKgZTTv9kXH6DdsvHQun6FY0LckT5n2LzUjYRqrAkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5Nnde1YDlESctK6TOwQLBv4HU893uSt1FRsAXlEQ1s=;
 b=WaaDoK9L5999k91c4h5Luof5D3Zgj/nr8/UElducJJ3DcidVWc5gwdEMpoSXzZ2SyEJPA0tUjqoSq6F2QeKkI16s0UEWIK0zXP0JySNC5xw2cSXxdLqqUyv8LrLQ/BjPu5nT59QHhSTa28GO5cn7ZCud2QKRlB7HnXwn+QBSqHWFBZdsly/7CFqepySmOe5vHPhykhTzVUI+1kKm0njunCtzHF7kGrfslh0IuJ5WQq5Jjf71VTHB+D0GqWOc76UHTMrY//06a+FhdVKC96wC4pitlA+buFxk8V2E9p+jJJk23zDuJsDSoormpfE3yk7WjbYZxtGMJ5MPCt6C/YciXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x5Nnde1YDlESctK6TOwQLBv4HU893uSt1FRsAXlEQ1s=;
 b=EIW1IXl0FrZYBrdXrQOJIc6BzJNrJX2gqSADj97IHWRTOQpPr2fB5kZaOp7lOOXzL7dTAE5B9Hc1zgZZxJ0YGel3ZA9ODSRU3XbRcb4c6Zc5zoiOMwmNQJrUJMaDspIXIjPXZJ/zSz9hhhKf4uSW4pfqs9BfSg4kGD4jfh6EBRzJs4KUo/8mNrVxUQprdDBO6hYqoO55cUATkmNhXkMzuzk+HIElihkDYzV9gcsHtDZLgn5bYRB1eBoHlraOVfmZAEs/6MWRK8e4NB1y9Q0vW8hiYQXbZAQqRa6/kD1NSL1T0FfbTtBVvS4pO3UKC7Alx0mhyQtGQ1053OlVWPXumw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPF62A0C9A68.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6d2)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 00:41:05 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:41:05 +0000
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
Subject: [PATCH v9 22/23] gpu: nova-core: mm: Add PRAMIN aperture self-tests
Date: Tue, 10 Mar 2026 20:40:07 -0400
Message-Id: <20260311004008.2208806-23-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR19CA0034.namprd19.prod.outlook.com
 (2603:10b6:208:178::47) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPF62A0C9A68:EE_
X-MS-Office365-Filtering-Correlation-Id: 51b82695-b685-4ad5-8804-08de7f06e0e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: POdOl+ZX6Z+aNKXDqY9s6kmRPHQp4W3gttBSiEapMPp4FgWMyUYuxFU59cp6RPUoUAeJW7vTr+WD0eVoCoMo5tFfXPtnusyY0Ha7wn7+JaMLe0Y05uoinvXRkuNVuSRk5xr7YPig3rXC3eP3WucdNE9oSHKx+VW+PvvpcLlHuAGdycwR4PnzIgFbGo0v1FvwrsCIpvlXMo6kzTZX4aq8tcxvRnk1OPrcl14AdVpX7hqRwUjcLTWbeHIfw6fWp+prvGkX6Lj2MpGN30KFvcZKXIRDIB18j6hXk1s0IFOEF8HTxnyuNrw5TieHfHMrtPo2JTqVShM/ajJpADtWuTPpfgxKKI4OXdpBzF1ZQ1EWvHeLZ9Q4g0FlvuYiOoq6PBU8tEqVl9VOf8RBhSvZ5zBAw/68q/WKAJWnZBUtSgHIzzve3NPuk6zKfgnoVl5ybocCXXsDufExpvIgy6JPxNEohRMqWydbVNNMRjHeIwdEvTIVpPk58e+PzACYi/nj4SXikQOFUPoNwEry10OSVBKhOcA2rt29OoFTGL+/n7GwDE6B8ztMyl+hUwu2rjeOL7gyAOMExBtJtxmkblihl5CORDfnyXE2zWWRP5C5Y+GFjAsqwjFDRnybjwXV5r2Oe8bTBrNYrNeaWt1ZiDsRQZ/x0gbcJrsEwEiVeh05jn+0XdlP0VBxHkvq9jT/Tb38EqP5P3ds2GFCaSoEnh67J4iUzFEWUN177zKd1ryhlfGwJRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zr1FOQD4Z/+rOeoMGM4Rj+DS7wPeFnZOM1zZcyJHPigXwnjVtGULNzXG7cfj?=
 =?us-ascii?Q?moPPEinsov0ysWl7CGf/rk9bGWm9TRNU50mSQKyDsito7fjgJp/0icknvvWP?=
 =?us-ascii?Q?4EAVbKzxGoEzOBG6t6woSt97b49P9iI+W/wvCDsBlDlNL1ziUzBazMlP0fo3?=
 =?us-ascii?Q?W9IYAhR6QhL5Lxs54+ahT5NcLB+fI41asfoaShVlx0qoHzYTyxVbfcO8lpK+?=
 =?us-ascii?Q?NY9NK5XOo1Be3WOdPBAQ1Xyo/2s29CbF4mVBYABSkESMgDlhzFcBkA5CQZY0?=
 =?us-ascii?Q?Bxi8kpXHVvr8yDes/6JgeC1YNhmehJS4oX/3cXJ1cyhDv3D/I7fdK6QzSw3Y?=
 =?us-ascii?Q?HIE6NuQCx5NZkOLbdMOYXkANYdGj6QS9LrWStrzgh4zn/VeKuBnxCyLZzFPE?=
 =?us-ascii?Q?o3HwxYDuLf2spFCV72dbegzKK9oRx+jroQjImppHT834A1z6Jizh0vCkydQH?=
 =?us-ascii?Q?/rxMFVSu3DvukC42xjaChnz/IJ279HziFF1v5dtt2F5i7M11iFmO9zQU0R73?=
 =?us-ascii?Q?J7fKW+9RNGD9bCc9mR13EBCZwl+PE+cOpVeLMf9+yR/yRcS7IKjn+omMEcwY?=
 =?us-ascii?Q?HLmj5nLfxEEqwK9+AinNNo6QPczv4AY593sIbOqWGLPrVwMhsLgRMk4fdMt8?=
 =?us-ascii?Q?avYEzCGIqyUablPe0y02XJsoLrVgkdsQG0kv4EpQ+wIp6csf7byoRRVbou/c?=
 =?us-ascii?Q?Qq+u4klJC5HoIL/P3tgWtZKRRR2qyIXqSiGjjM/dsMCh4myQz1fWLDvimqwu?=
 =?us-ascii?Q?llArEyU0sduoHnJ2SJo74mJWLgd1OKjbnFc9sLtfgeNXe3tKlg5uXFMXWX7K?=
 =?us-ascii?Q?LMddLn2/BvwoGQqPf6+txNUbVpgiUezFVAjDyFjduxCFoFZC9+u+Kkvdplzp?=
 =?us-ascii?Q?UYuBS35DwVRVFf7eBXYfL5J3+fjLHSAdcu7Ub7JCfkNGFWFIAxRC5pMWp9Sm?=
 =?us-ascii?Q?+GklL3ReUjD3vkuhiA6byAPGeXDsTwLjnNsHW97NFUUBajbFMtiDl02LegNQ?=
 =?us-ascii?Q?TdL8vQFDBPwsVtMibQDAQeS018icvmexJYpl5hTaxt36px6cbJ/hbHesB4W5?=
 =?us-ascii?Q?wSV00lJjdtDE6UC8CYKzbfCIjb1vpINMnMq/aGqpjfIOwD1mz8D4kWMgDjvq?=
 =?us-ascii?Q?5hxuQ6VnJlhJkrzITPj0xSz3PvEz9XUg68CSfhw+o+rWXgP9+eH1tNcVO0Ha?=
 =?us-ascii?Q?jR8ugd4B/4HJKBUJB4ygH18NjeOrxxSEgTFkwRqQMUjyt4u/VIOjMfQdtUzZ?=
 =?us-ascii?Q?UMFgVyu6PKLzYhZLlJarBOXA1AcQhcUbI7nh1hiob3OQUUvXAEvS7QWjn0g6?=
 =?us-ascii?Q?cLEsS4nTXVPq3Syd/bWXbcAP0GdOfYLVbjWOlSHAEwM43qddwknwiABrnBvZ?=
 =?us-ascii?Q?Y4Dr+8Kt8F6kJLe1+qeraMg1aF4htQYwO1Ujv8Ad8drf0YfzZFFCCcoEaMNk?=
 =?us-ascii?Q?9X464Fg3EsoqU4lk3D6sc04mHRZy/iDTUTE2Tv6CQw8ygskKZDyVCPQsTiw5?=
 =?us-ascii?Q?mx/5ZNum63MCSRi5ckmBEYE/Uza8jCjzDNYQbNna209X7GOZq4akJeng5bSg?=
 =?us-ascii?Q?p1ORk42+r7LA/6mtp1yp5ZRJH+jIefO28ZESMcnxR9iEgW5BHDyGXijS18nx?=
 =?us-ascii?Q?BR3V+I/nfmdkLn63IAA6sHq6eKIgA/5y1rivuYiByGfKyMSOk1RGQGpNnmAd?=
 =?us-ascii?Q?hqgcRKq6vqnh+b96mr6MLRa0GCshNzCgtCXP6CxgXcyWSeAG+FxK/w6rmX0a?=
 =?us-ascii?Q?wGwBzCUkmw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51b82695-b685-4ad5-8804-08de7f06e0e1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:41:05.6052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: treJn99xkjWwOUKPhOg8TX5hBj9d0V7/HeVleu/ri5sUbz191FigrlBYV77RzL6mOb96J5XgXYpXOuw0LS7ewA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF62A0C9A68
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
X-Rspamd-Queue-Id: 654AB25A00C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim]
X-Rspamd-Action: no action

Add self-tests for the PRAMIN aperture mechanism to verify correct
operation during GPU probe. The tests validate various alignment
requirements and corner cases.

The tests are default disabled and behind CONFIG_NOVA_MM_SELFTESTS.
When enabled, tests run after GSP boot during probe.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs       |   3 +
 drivers/gpu/nova-core/mm/pramin.rs | 209 +++++++++++++++++++++++++++++
 2 files changed, 212 insertions(+)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 022b156de0da..5f4199e41d16 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -365,6 +365,9 @@ fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) ->
 
         let mmu_version = MmuVersion::from(self.spec.chipset.arch());
 
+        // PRAMIN aperture self-tests.
+        crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin(), self.spec.chipset)?;
+
         // BAR1 self-tests.
         let bar1 = Arc::pin_init(
             pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
index 707794f49add..bf87eb84805f 100644
--- a/drivers/gpu/nova-core/mm/pramin.rs
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -195,6 +195,11 @@ pub(crate) fn new(
         }))
     }
 
+    /// Returns the valid VRAM region for this PRAMIN instance.
+    pub(crate) fn vram_region(&self) -> &Range<u64> {
+        &self.vram_region
+    }
+
     /// Acquire exclusive PRAMIN access.
     ///
     /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
@@ -291,3 +296,207 @@ fn compute_window(
     define_pramin_write!(try_write32, u32);
     define_pramin_write!(try_write64, u64);
 }
+
+/// Offset within the VRAM region to use as the self-test area.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+const SELFTEST_REGION_OFFSET: usize = 0x1000;
+
+/// Test read/write at byte-aligned locations.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_byte_readwrite(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    for i in 0u8..4 {
+        let offset = base + 1 + usize::from(i);
+        let val = 0xA0 + i;
+        win.try_write8(offset, val)?;
+        let read_val = win.try_read8(offset)?;
+        if read_val != val {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: wrote {:#x}, read {:#x}\n",
+                offset,
+                val,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test writing a `u32` and reading back as individual `u8`s.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_u32_as_bytes(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset = base + 0x10;
+    let val: u32 = 0xDEADBEEF;
+    win.try_write32(offset, val)?;
+
+    // Read back as individual bytes (little-endian: EF BE AD DE).
+    let expected_bytes: [u8; 4] = [0xEF, 0xBE, 0xAD, 0xDE];
+    for (i, &expected) in expected_bytes.iter().enumerate() {
+        let read_val = win.try_read8(offset + i)?;
+        if read_val != expected {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+                offset + i,
+                expected,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test window repositioning across 1MB boundaries.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_window_reposition(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset_a: usize = base;
+    let offset_b: usize = base + 0x200000; // base + 2MB (different 1MB region).
+    let val_a: u32 = 0x11111111;
+    let val_b: u32 = 0x22222222;
+
+    win.try_write32(offset_a, val_a)?;
+    win.try_write32(offset_b, val_b)?;
+
+    let read_b = win.try_read32(offset_b)?;
+    if read_b != val_b {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_b,
+            val_b,
+            read_b
+        );
+        return Err(EIO);
+    }
+
+    let read_a = win.try_read32(offset_a)?;
+    if read_a != val_a {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_a,
+            val_a,
+            read_a
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that offsets outside the VRAM region are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_invalid_offset(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    vram_end: u64,
+) -> Result {
+    let invalid_offset: usize = vram_end.into_safe_cast();
+    let result = win.try_read32(invalid_offset);
+    if result.is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - read at invalid offset {:#x} should have failed\n",
+            invalid_offset
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that misaligned multi-byte accesses are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_misaligned_access(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    // `u16` at odd offset (not 2-byte aligned).
+    let offset_u16 = base + 0x21;
+    if win.try_write16(offset_u16, 0xABCD).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u16 write at {:#x} should have failed\n",
+            offset_u16
+        );
+        return Err(EIO);
+    }
+
+    // `u32` at 2-byte-aligned (not 4-byte-aligned) offset.
+    let offset_u32 = base + 0x32;
+    if win.try_write32(offset_u32, 0x12345678).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u32 write at {:#x} should have failed\n",
+            offset_u32
+        );
+        return Err(EIO);
+    }
+
+    // `u64` read at 4-byte-aligned (not 8-byte-aligned) offset.
+    let offset_u64 = base + 0x44;
+    if win.try_read64(offset_u64).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u64 read at {:#x} should have failed\n",
+            offset_u64
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Run PRAMIN self-tests during boot if self-tests are enabled.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    pramin: &Pramin,
+    chipset: crate::gpu::Chipset,
+) -> Result {
+    use crate::gpu::Architecture;
+
+    // PRAMIN uses NV_PBUS_BAR0_WINDOW which is only available on pre-Hopper GPUs.
+    // Hopper+ uses NV_XAL_EP_BAR0_WINDOW instead, requiring a separate HAL that
+    // has not been implemented yet.
+    if !matches!(
+        chipset.arch(),
+        Architecture::Turing | Architecture::Ampere | Architecture::Ada
+    ) {
+        dev_info!(
+            dev,
+            "PRAMIN: Skipping self-tests for {:?} (only pre-Hopper supported)\n",
+            chipset
+        );
+        return Ok(());
+    }
+
+    dev_info!(dev, "PRAMIN: Starting self-test...\n");
+
+    let vram_region = pramin.vram_region();
+    let base: usize = vram_region.start.into_safe_cast();
+    let base = base + SELFTEST_REGION_OFFSET;
+    let vram_end = vram_region.end;
+    let mut win = pramin.window()?;
+
+    test_byte_readwrite(dev, &mut win, base)?;
+    test_u32_as_bytes(dev, &mut win, base)?;
+    test_window_reposition(dev, &mut win, base)?;
+    test_invalid_offset(dev, &mut win, vram_end)?;
+    test_misaligned_access(dev, &mut win, base)?;
+
+    dev_info!(dev, "PRAMIN: All self-tests PASSED\n");
+    Ok(())
+}
-- 
2.34.1

