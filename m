Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGPdDvg6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:22:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0048371A6D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1603C10EC00;
	Tue, 31 Mar 2026 21:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="UFTYO7mt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013067.outbound.protection.outlook.com
 [40.93.201.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D784910EBC6;
 Tue, 31 Mar 2026 21:21:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EMsX2DtXByUhctNCASCGzCFdjykvDRKkNjz0fjoKMppkkXutYa2Xd59LDYNpE00dPfOCPmxR3dCveGdHfBaMFUJ09TfQ1K9wKuzPxlaO1n7T3sLvGETgHDDAqnq7lOpEHwexVr2MFnliZIAUZ7XV0QXhMbrGG/UyrIGhbXJfYhUCVXj0UX8Kqg7brMwCuJblCiRUOw1cfZ4484MIul65nSyIUtgtpq6RX2Qu/zQXob4Tz4rSytuHHqkqIolqzyI9BoV+OitgijJvOHaBHqG6/RTS3gVLpRVXHI6lv4NEN51qX6yjFAGjdjW56mjx3Of3d4S4ICviT9UhIKa7o7M9/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ih3ZqxXNkVqKJd3fuTC8YCZdKq2pkXUBKfDLn8kouQM=;
 b=kJttFD5HzQIvXm1mog8SuUit2ULpavVVkEQ8ebYnfQ81BTihmpTgn1uBgUE5CoDW1etO1NWVeQs6X54cy6rUtFqGbAPvGsAiOG/eX7zm9E3GjD5nTOGY+4v7DzEShl4UY+IdNkSiNEqqu/htrEqTZ4wIUsEMjG+1GipL4BE3O6vXoEklVYJ0NNBuv6o9rgXg0uTXDlvFDnksIdNXIjljt5WsC5T7o2gutnS4o4A20QXwjtghVfsubtqSWs3+SYv6gFIfxi3bWlTcsCbrnhBC0aMjMA4Oe0Zi2ozr9oLB8+A1GKZl8IJ2diTC23adKLmVHKHtCdA0YFETM1VuR7eIlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ih3ZqxXNkVqKJd3fuTC8YCZdKq2pkXUBKfDLn8kouQM=;
 b=UFTYO7mtStKj1xxD5QvQ3+VbMQJnY6z7q5REE5OSZ8EYlHxqdKf5Q7rTPvG9JYxoProhXhLW++hsBbCzlT7dVuP+R+vujMlPzOxzDj6MqvcFgA+iWOmsh2GbTL85XnaaYtp523WMgSW4GBfgM6TOG4pjnDANPm80Yltgx2SX7uSWXEfRBcP4QVT1ZdK0DgEKRkDB2kdH9ADKObToEU7LjidrFDm3IlK6faebznbxcnzFly9p1VMBvBE45+hw7U6oVIcCF4wrzPmoPzd5uwWSjidWn47tmzGktV9p56NAsMSwxZcg5youFUp2J6mQmzqpuR1lrHyEIoGQbvnaZPtJKg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:38 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:38 +0000
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
Subject: [PATCH v10 17/21] gpu: nova-core: Add BAR1 aperture type and size
 constant
Date: Tue, 31 Mar 2026 17:20:44 -0400
Message-Id: <20260331212048.2229260-18-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0027.namprd13.prod.outlook.com
 (2603:10b6:208:256::32) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: fe3ede1a-c525-4998-3102-08de8f6b7ecd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: my+p7bQqsWRi+S1vhdzS6XBbqMRqqoHeTzJJb5ynjEzPgGQsCXKzySBpGYaLAPsw8Tdlhe3rBflJncO6akTD4O3LcEhzCJaOhUuEWuTqeGXhszhEhI4qyviScwgCVpE7DSJQ7IEeYBakORDLLv6SfTUOMJA3qcI2hDnOHp9vVuNI7Zvu5smmXvsy/ko0Sy1ETK0drg+bk1etE98py69bPX68Eal77LwKtzCSVbt+AEWwDQG58G6EoWBVInZzawDkguILI6/l0ww/OwcmawLmy+W77ww+eXmT3ab2ZUfhJtzDt9I7FRqc0lxkweT7DiklwltWipS3acKfWRGlQWJO0ForqDxk1pjhVzTOFVnSL9JEeGP/hphNKxGPVf1Sj97ZWgYh7c3IbqG1W5eAEh0DVX/fRaHdKsA+xm/jQo0cwChhwY+aY0q6ufuRefTHc1wNR9hHwi16TL/fO4rnNNPZoO7D/lt+Cs9m1Deq+FPwO8VFgWu+5gA0fybslQnYXQIDijBD/+r8Czvgt8Oy0SQkdn8zworFVegXuNAlA64M+RfBw+CjgfmwmV3Tcb9kPKk3mswi83C9VmQThXJeCmirdOXAwbQoZefGaQwaE/9v9fIfYICuIy4PEg0kvOxUEiV7EWFM0BwnmtZ8408MpW1Zku0UZsD0mXGCcDZinP3kYNBTLyN3Dey/TL/tE7p9AjuTLxMMTPVywxt4gC2XoXm1fRmKLqx0bE7setie48yxVs4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QBWH234r3M34aSpfDstOVYMxFZPxmI9o9XBEb9GQMm64U18I0tQpcvLqlsr3?=
 =?us-ascii?Q?fYv7z+kTjRQToC05hX2FpchUJiHwARmJZQbJWFx3fD26A1AUZJD3CadKgiDV?=
 =?us-ascii?Q?lLp60OaBEe++nJWnmGKA3Bu+p/jJYK8hgvUnWMEZ5spAtXfyp9zVGE1/W94s?=
 =?us-ascii?Q?upZZ3KADn3mDjPGAuTU6F8YfiJYIcCmisUGzpVsa1DZbsbVzEP2hEpOfH+hA?=
 =?us-ascii?Q?fkxnyGFHlS3TQYJIQTBbUbDtTLKl8++JqISjXoGUItimU6BRrYj+H9KbqCmX?=
 =?us-ascii?Q?OPqV7YBF6IeD57IAws29qJF5ae0dEKUMhIQnt0YZdyTscz/gS6IUyQebANHW?=
 =?us-ascii?Q?6jWa/B/e1rIniYeiWTZSZJ3gyQqgtwLbmFujrAaq7HFjuK5MXIe1zWnhIcF2?=
 =?us-ascii?Q?d/fbxJtKOyDDoOaXLfbs8nAP17z+aMR9g7b0JUK6CIcGIH8QV+mT+xjWER95?=
 =?us-ascii?Q?nq/phfNpDduff190c7XZFA5VknDEzll4rQVb8YyP5XJDBXARdvqijU3G0jgT?=
 =?us-ascii?Q?RJRi1sb74uQPIXm5WuA/jI3j69X/z5m2VwL5SRvWLuIITCQTf/UvOjFoQz4m?=
 =?us-ascii?Q?ySorrzn1FOaCCW1rKvnQZqkpfQNGEBjPAO/HBVoyCe86r1jwPlFC51bX7wTt?=
 =?us-ascii?Q?d3xBFFCIqDS5eeo9j0xZXDDWX16S6qA3Wsv4qTGvS9jelIErFFGzGDvAHWbj?=
 =?us-ascii?Q?7bP0f962jKukZnClX50JgbB3jHqWf4qyEwJw33bP+XV95ItOE1ncUSlal8OX?=
 =?us-ascii?Q?CSaIpc7/ggBnT9qstFfXcZDJje5m0BZtyxPh/1BpuWyBWY4cGCSoQQIlLZDA?=
 =?us-ascii?Q?PWFFs+zGLQIz2RvQv3/nL1Y1blE19CFEkVd/NuIXffl6hcybW6saiaMRlWgl?=
 =?us-ascii?Q?c69729VBgHez4OfGk1hltg3RPWgkaN8D1HwuwNou1hhXLE+q7ABH2NX1fQbv?=
 =?us-ascii?Q?m6gu6hT0sWvfm868mojTh6iTA7ZVbLE0VzOEOHZtgEbimOIquSkcC/WcIfq/?=
 =?us-ascii?Q?L5kKMbUqyIHgl/7S3GdTT25Uy/aCveMMaRjr9Vf3/hiG5lKpEgN6utOCunME?=
 =?us-ascii?Q?evIlc2Tp3OigsEclkqSmr1B8C2fd/oblmk4cY1/ZxTnOsZOBzvcO5E215Lec?=
 =?us-ascii?Q?8XqcMFH4+fxYXZ44+b2SoPuIgFMkXozBU2LYMCYZo+9AxH53lKN1EvBBEbJu?=
 =?us-ascii?Q?FAyeOdjdBnANQiAskrSHLUQXYA7UVZUeTV3rXB5bii6fWMn6bRU1Heu06KFO?=
 =?us-ascii?Q?pBTYAXuXeNtgXQiJODXARl+KJJWboP36B7JCesKwW0DD2cdwTI1tW6sdczRe?=
 =?us-ascii?Q?Q/oMyTb+x5r+DgQf8sxZt1lhpXTVtXxrgnwvl64luCAolRJxnSys4DjpKiN9?=
 =?us-ascii?Q?RltNxgdzBt61L4Lt7XNCsey2VY8KWq8LOokVm4VlgFJmBHDffej+nqhyz/+9?=
 =?us-ascii?Q?zUUyvIRl+8QXpi5x2zO03Jg7eXY4Pm9qs8JSIabIdo+lnBTCpC46YD7ZnYKH?=
 =?us-ascii?Q?kovNTYuLtlO/fPc04bkDq4/eoZ/3dWgQwOgcsE+eIGTBM20sK5oLi9ubE2B/?=
 =?us-ascii?Q?jq66lLa+ncV/BREgppBH97/AaEqBTm2RF4nBOalaXSYL1/52WIEeOgk8ByT3?=
 =?us-ascii?Q?gqStb4/uA5QYTFijdf0+y6p8e6hq6Nbujjz6Iv4WHIxBlK+WRiBeBFbA0iZV?=
 =?us-ascii?Q?kxZROE7Z/K0E1wTvke8yYwpHAh4Ylki54NqmUwz85SYXYY/lL4R+eysf/L3B?=
 =?us-ascii?Q?0bxd2f3Lrg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe3ede1a-c525-4998-3102-08de8f6b7ecd
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:38.6307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A6+H6UaR89wD+epO54+WTTPLQI0ZJ9HMNBG93CGMKfrNr8RChjCGtAz3Zd87V44ePFlxP4mR80/5gip2QBQuRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8809
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: E0048371A6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add BAR1_SIZE constant and Bar1 type alias for the 256MB BAR1 aperture.
These are prerequisites for BAR1 memory access functionality.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/driver.rs          | 8 +++++++-
 drivers/gpu/nova-core/gsp/commands.rs    | 4 ++++
 drivers/gpu/nova-core/gsp/fw/commands.rs | 8 ++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 84b0e1703150..b4311adf4cef 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -13,7 +13,10 @@
         Vendor, //
     },
     prelude::*,
-    sizes::SZ_16M,
+    sizes::{
+        SZ_16M,
+        SZ_256M, //
+    },
     sync::{
         atomic::{
             Atomic,
@@ -37,6 +40,7 @@ pub(crate) struct NovaCore {
 }
 
 const BAR0_SIZE: usize = SZ_16M;
+pub(crate) const BAR1_SIZE: usize = SZ_256M;
 
 // For now we only support Ampere which can use up to 47-bit DMA addresses.
 //
@@ -47,6 +51,8 @@ pub(crate) struct NovaCore {
 const GPU_DMA_BITS: u32 = 47;
 
 pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
+#[expect(dead_code)]
+pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
 
 kernel::pci_device_table!(
     PCI_TABLE,
diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index ec03bf94b34e..5a85478f2ba3 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -193,6 +193,9 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
 /// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// BAR1 Page Directory Entry base address.
+    #[expect(dead_code)]
+    pub(crate) bar1_pde_base: u64,
     /// Usable FB (VRAM) region for driver memory allocation.
     pub(crate) usable_fb_region: Range<u64>,
     /// End of VRAM.
@@ -214,6 +217,7 @@ fn read(
 
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            bar1_pde_base: msg.bar1_pde_base(),
             usable_fb_region: base..base.saturating_add(size),
             total_fb_end,
         })
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index 46932d5c8c1d..25f230254d8f 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -125,6 +125,14 @@ impl GspStaticConfigInfo {
         self.0.gpuNameString
     }
 
+    /// Returns the BAR1 Page Directory Entry base address.
+    ///
+    /// This is the root page table address for BAR1 virtual memory,
+    /// set up by GSP-RM firmware.
+    pub(crate) fn bar1_pde_base(&self) -> u64 {
+        self.0.bar1PdeBase
+    }
+
     /// Returns an iterator over valid FB regions from GSP firmware data.
     fn fb_regions(
         &self,
-- 
2.34.1

