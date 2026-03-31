Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAhaFeM6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F633719E6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A0410EBC7;
	Tue, 31 Mar 2026 21:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="eU2wYL61";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010043.outbound.protection.outlook.com [52.101.46.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2704E10EBBE;
 Tue, 31 Mar 2026 21:21:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p5ptjELf9HUKrApc0TBels70f8BJXktO3CwM9M6EQ5coKAP8+A7eAKdTQX7OhsxXY9gLCdy+LGrKPTZP9MgDN5moZJ1YG7DFGZ4rcXGkErSNjm9vFd6I15I2lV5EG856w6OMRoZJ1kzKy7bf2phe5ukFkecs7+FpazxxLwuSG/Dz+hmuViY3fMjd/VWtczojj14hFKUdHIfVZt15lBAM6T/u9Q8Yj43kZc4J4nWF8mI+hGS0XRkG9ue+KY2sMUBXE5eoFZXHwBo1hXRasbU3TEdbYXd0+4aaNVCAJKbPxvfJSpxRPFJuxOxf000b6cZ5m0KRqo9TiajhSi0PU/1eLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BN43aptrn6yJUWf/s2jDo6WYyujbc1LC6/qt2Mr4LMQ=;
 b=vqXcvUgYaOvL6/d5m9ZudLo0oA059oqWmulqAoPL+1iTP9xH1075XjPxjw0kD+K1fVXfbOwETW2B42Y0b/X+TH/pindIjnwHzvf54zJItgmO1zdzkae31ILKzo1yEFUT6hfuLld6q94ne94ZpqFXQvmRQxaW6us+5DO3Uz/5QReBlt9kN9Rnay8Kw3fl5fBaz2w4jRqKbh7rzFESXocdbtRzGxsiVYwJ16igo4AqrgmEpK5x1Os7shGzYcfpuchPDxGi7zJLP2Qe70ef8lcUdnJdRq4F07/HIaIoZEhPriE1KGJT8iWWIHP67vkewn0mRuHBHQtnl4dxOFjCqfeKjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BN43aptrn6yJUWf/s2jDo6WYyujbc1LC6/qt2Mr4LMQ=;
 b=eU2wYL61mwjoLXtTw15YFTwqTJr6JN3LrqBlO1U6e0Lnrx75dj+ARcwOHmujFcxRG4yxLlHErEEkelu9vaVXLAB7ytWMcew6rQKcy3OVDQPMJOkw3e2DmlICMc1GHIsXwDqT+rGQRzJBJIixiNv1YZasDRYVCjCxp8q+NakePY9doircVIUhVjHFVR3JT5N2qmEKQUrDrKzNDZFo+HG+H+gvNSUUXD2ckxgRQ4ONo1GX8pQszAXhi74k+W8Wq9Q4m9kVktqT7oHxp7JYG2bhAwc4UczFZnVsoTEPZ5XpPs+456j7XEC4WWhCjPdICid9ictmbXYozH7snvh6F8VI3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:29 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:29 +0000
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
Subject: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table entry
 wrapper enums
Date: Tue, 31 Mar 2026 17:20:39 -0400
Message-Id: <20260331212048.2229260-13-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN0PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:208:52c::8) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d1633b6-e05c-4155-087d-08de8f6b78b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: t4vm5R9aPg8pDFEGRtlbFG2jGbA2oDMatnr32X8aGndJNQ9CTPf9z17N5F2GyibBvY0mVTVni+IVzFm0ftqfhw4keKNzJod3skyRDBK0cRH1qbcxQcICJGWKSOTbu39cXSMvFXxvKZRII2AbmWhnoF6Po/bp2JdLfD5lzNpgKBP768l5WPcW+G4K8lMccHmsRPVPggMTM4VvZwmSUgksPCTGl1eqBaTCkINDowgYmk3cIRBW3GGABUqWuog6fywjPx1bupgdW1hyI2b3wDOyjFaemcPV0QJ4mlmwLheedctcDD9ab5c9P28b8EtC6fwKvUc5PZGS2w52jc3u6zkmThIc5aZimfTxC3LRt1WQFk3icBEJjx1Q3SqKJEONL1/uYFoUoRYwxALec/7rvbWr+TJCHb/Qi1IxgBLUSNCSgBPl7Mr1P0KH0zlI13e0wqZ27PjgLmCQo3ENiHKbmeOlcSPnp5dYYHZQP/jFS6TZ+pGqxxY9KYF+gBbQTO5bwjjzppW5nKNk/muzvQnh0LrWw1Z7nmAavArB2yhN8LgeK+mHQJ+x9gOe2U5/tQqa8DtPQ2P2Fc7up+SxiUyh5hFVNAb/BrqOuQsxhNeEjvsJa/Sx8SIwRL+U8cEfVdRBuyDPuHBFPXKuy9eaAEo8RNaJgMw4GnOBeNdHg17hnvdGO457BSB+v+9esxKYa9YMPCCsW4FZypGoRrmdRQA2sUAK4Y/8fa4b2aa6rD+14ElQLBM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9sPuYkZeKokFya9r6SFrRL4QvVXvuVk4iplBw31sHo4xgywYzTZa65qklk02?=
 =?us-ascii?Q?wSK0Z6TTUWWHf2Uo7JmGX5dObrAiZjhjP2tqmDW+20YEQbF2j5mnUppQtDod?=
 =?us-ascii?Q?mA0tPn5phVjJr2P6+vWXRBEoSGY/RST2cTRYce4Cc1aJQ+aVLsqmuTIxvXEp?=
 =?us-ascii?Q?h8l+I2hDeFCgNYvUGbvL2Yqej78+mcNvSvP+YfE0vdNBXVLprTWrD5Ns0Ui8?=
 =?us-ascii?Q?eslP9U9gtInQvZwi1hHmxVJfXMSf0VqqdEvH+eZoRKFuNgARVZOKMjckFXWD?=
 =?us-ascii?Q?vEXm1JFuwCmLXd197P05A8e5+tmJqA/6UtL5p611vu9pAG9kcNYCB+V/gUQT?=
 =?us-ascii?Q?hzBVm5a+7jtifK8yr4L5a3CwGe49kR/qAJe2D6EFcO+eXigbTv0eQKAVbLx4?=
 =?us-ascii?Q?uX8loJGu7xj18S6jaFLOF8Uo9IhejhE1e+zfegZKNGIFTzMkbOrsyKxBeupD?=
 =?us-ascii?Q?ZXBMyLLVsZkHNjvBWbtLPWcbKJVBqxA79JatbCY23QCTntKDGa9oN/n9RH0s?=
 =?us-ascii?Q?ljPxdJAw8UMA4GuCa5PUmfV2teWxw6OErciMn1/hi4to9ZbgFa9iaGJRs1ak?=
 =?us-ascii?Q?0acqmIr8SGVqSfL2kLLgv8/PlrByI3NQ/aAFHqBVeI28cJg4Ktn/c50Fz72C?=
 =?us-ascii?Q?LM33gbyLPpjj0p0RVgyic+R6kFKe7Vp4QodknYyI44kr2zuMlem78J5B4Kyh?=
 =?us-ascii?Q?MwDN1Ghd3dhHXyAr1rXxmXx9OkL4NF9qS7718YxpnK9DMkgkBHCbr8bGkB4F?=
 =?us-ascii?Q?m7yWe8VKheavwT6mGCVHMphwIJ/A7I+CMmHvVCM2idwBH9W4rU7OtcXDVzBv?=
 =?us-ascii?Q?gzvVZK1KFVkodWbMCrBGzMjBUusDiFv5RWI0rL5KBZBoJhG2MXAhEUKnZVPM?=
 =?us-ascii?Q?6itc9hpm1F1TsPQDLX55h45cveFGPsTdmmQakaQDBr2frQRP4s8XqwB/+Y0U?=
 =?us-ascii?Q?DLdzTgv7evZhf2hxU0OeLKsssQOGoid9DJQKgxogOogbkT6Pf+pi2hJKRXka?=
 =?us-ascii?Q?m8+irUEFU7w2aZWvOQFaZzZBRPETb0QvUh2e1yNxMjaqCpUcLrjbw1nyrASN?=
 =?us-ascii?Q?DfQRWVNvv2dGqL1ffnLMR7q5Y7k1yF49dqHXuCv/TVKi5euxV0Qgjo96UURx?=
 =?us-ascii?Q?RDdI1hHqJFQxxraUpT9Q8uescEKce/VWRUv8bxVBAB0yYCrYrYb2IPrLHLAI?=
 =?us-ascii?Q?FX66EAxGzKyPO2t1IltvlVGgtGQ5bXk82iAT4WVqqPu+Ex7eT1F73EYlF24p?=
 =?us-ascii?Q?b6xAsD/I3ABNNahi4Qmk8Q7Fr+l3V0aykkQYpEKtCVDczbHGie84RCzlSHJM?=
 =?us-ascii?Q?k9NG+o+W6vGHZUEW9hdABZtmkpnRT6mUPbB3XomUqmpF9gPq8DAsATbFSxMJ?=
 =?us-ascii?Q?W8FvEJjpew+M8G21O2LVBC6L7MrNbWWtZtYbMZliu+CBOFgF5K6Ka888j0ip?=
 =?us-ascii?Q?EHSCX0bMOuJP4rSpz95dWnvRM2BKJ0fx1r3jmmJia6wBQifUIn7uaiEcZQ7y?=
 =?us-ascii?Q?PpFWIk9VmBLhf/2gwwLky71AXh7+8+l1b0KmJmprDz8iWuAcS51WE+tU+gcG?=
 =?us-ascii?Q?cAStmrgA6ix3s6q0rhx7u4lCilxqSE3pa1jc/VsbMLSIWY4ggjjv2o2eJIBh?=
 =?us-ascii?Q?J+LeMcLn4HieJ1ls9ZiY1N7NaHPK6FLq685KJNIBulvBm4kAoelq99q0W0hM?=
 =?us-ascii?Q?CosU8vPBv/UrvpBzjcYs4sy8tnUYsN6rGX8OtKLIpOvid6a4PeGEUzyVMv98?=
 =?us-ascii?Q?3XDwUReq7A=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d1633b6-e05c-4155-087d-08de8f6b78b7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:28.4681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4+7MUlz5M3aGn+3gCjiELuYsFWK7w90wLF7T0doxwl5s52Rji227BxueGdXX3Y1DnC7mtq9MLcWNU1X79Zm/NA==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 00F633719E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add unified Pte, Pde, and DualPde wrapper enums that abstract over
MMU v2 and v3 page table entry formats. These enums allow the page
table walker and VMM to work with both MMU versions.

Each unified type:
- Takes MmuVersion parameter in constructors
- Wraps both ver2 and ver3 variants
- Delegates method calls to the appropriate variant

This enables version-agnostic page table operations while keeping
version-specific implementation details encapsulated in the ver2
and ver3 modules.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/mm/pagetable.rs | 330 ++++++++++++++++++++++++++
 1 file changed, 330 insertions(+)

diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-core/mm/pagetable.rs
index 6e01a1af5222..909df37c3ee8 100644
--- a/drivers/gpu/nova-core/mm/pagetable.rs
+++ b/drivers/gpu/nova-core/mm/pagetable.rs
@@ -12,6 +12,13 @@
 pub(crate) mod ver3;
 
 use crate::gpu::Architecture;
+use crate::mm::{
+    pramin,
+    Pfn,
+    VirtualAddress,
+    VramAddress, //
+};
+use kernel::prelude::*;
 
 /// Extracts the page table index at a given level from a virtual address.
 pub(crate) trait VaLevelIndex {
@@ -84,6 +91,96 @@ pub(crate) const fn as_index(&self) -> u64 {
     }
 }
 
+impl MmuVersion {
+    /// Get the `PDE` levels (excluding PTE level) for page table walking.
+    pub(crate) fn pde_levels(&self) -> &'static [PageTableLevel] {
+        match self {
+            Self::V2 => ver2::PDE_LEVELS,
+            Self::V3 => ver3::PDE_LEVELS,
+        }
+    }
+
+    /// Get the PTE level for this MMU version.
+    pub(crate) fn pte_level(&self) -> PageTableLevel {
+        match self {
+            Self::V2 => ver2::PTE_LEVEL,
+            Self::V3 => ver3::PTE_LEVEL,
+        }
+    }
+
+    /// Get the dual PDE level (128-bit entries) for this MMU version.
+    pub(crate) fn dual_pde_level(&self) -> PageTableLevel {
+        match self {
+            Self::V2 => ver2::DUAL_PDE_LEVEL,
+            Self::V3 => ver3::DUAL_PDE_LEVEL,
+        }
+    }
+
+    /// Get the number of PDE levels for this MMU version.
+    pub(crate) fn pde_level_count(&self) -> usize {
+        self.pde_levels().len()
+    }
+
+    /// Get the entry size in bytes for a given level.
+    pub(crate) fn entry_size(&self, level: PageTableLevel) -> usize {
+        if level == self.dual_pde_level() {
+            16 // 128-bit dual PDE
+        } else {
+            8 // 64-bit PDE/PTE
+        }
+    }
+
+    /// Get the number of entries per page table page for a given level.
+    pub(crate) fn entries_per_page(&self, level: PageTableLevel) -> usize {
+        match self {
+            Self::V2 => match level {
+                // TODO: Calculate these values from the bitfield dynamically
+                // instead of hardcoding them.
+                PageTableLevel::Pdb => 4, // PD3 root: bits [48:47] = 2 bits
+                PageTableLevel::L3 => 256, // PD0 dual: bits [28:21] = 8 bits
+                _ => 512,                 // PD2, PD1, PT: 9 bits each
+            },
+            Self::V3 => match level {
+                PageTableLevel::Pdb => 2,  // PDE4 root: bit [56] = 1 bit, 2 entries
+                PageTableLevel::L4 => 256, // PDE0 dual: bits [28:21] = 8 bits
+                _ => 512,                  // PDE3, PDE2, PDE1, PT: 9 bits each
+            },
+        }
+    }
+
+    /// Extract the page table index at `level` from `va` for this MMU version.
+    pub(crate) fn level_index(&self, va: VirtualAddress, level: u64) -> u64 {
+        match self {
+            Self::V2 => ver2::VirtualAddressV2::new(va).level_index(level),
+            Self::V3 => ver3::VirtualAddressV3::new(va).level_index(level),
+        }
+    }
+
+    /// Compute upper bound on page table pages needed for `num_virt_pages`.
+    ///
+    /// Walks from PTE level up through PDE levels, accumulating the tree.
+    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> usize {
+        let mut total = 0;
+
+        // PTE pages at the leaf level.
+        let pte_epp = self.entries_per_page(self.pte_level());
+        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
+        total += pages_at_level;
+
+        // Walk PDE levels bottom-up (reverse of pde_levels()).
+        for &level in self.pde_levels().iter().rev() {
+            let epp = self.entries_per_page(level);
+
+            // How many pages at this level do we need to point to
+            // the previous pages_at_level?
+            pages_at_level = pages_at_level.div_ceil(epp);
+            total += pages_at_level;
+        }
+
+        total
+    }
+}
+
 /// Memory aperture for Page Table Entries (`PTE`s).
 ///
 /// Determines which memory region the `PTE` points to.
@@ -156,3 +253,236 @@ fn from(val: AperturePde) -> Self {
         val as u8
     }
 }
+
+/// Unified Page Table Entry wrapper for both MMU v2 and v3 `PTE`
+/// types, allowing the walker to work with either format.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum Pte {
+    /// MMU v2 `PTE` (Turing/Ampere/Ada).
+    V2(ver2::Pte),
+    /// MMU v3 `PTE` (Hopper+).
+    V3(ver3::Pte),
+}
+
+impl Pte {
+    /// Create a `PTE` from a raw `u64` value for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, val: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::new(val)),
+            MmuVersion::V3 => Self::V3(ver3::Pte::new(val)),
+        }
+    }
+
+    /// Create an invalid `PTE` for the given MMU version.
+    pub(crate) fn invalid(version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::invalid()),
+            MmuVersion::V3 => Self::V3(ver3::Pte::invalid()),
+        }
+    }
+
+    /// Create a valid `PTE` for video memory.
+    pub(crate) fn new_vram(version: MmuVersion, pfn: Pfn, writable: bool) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pte::new_vram(pfn, writable)),
+            MmuVersion::V3 => Self::V3(ver3::Pte::new_vram(pfn, writable)),
+        }
+    }
+
+    /// Check if this `PTE` is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        match self {
+            Self::V2(p) => p.valid(),
+            Self::V3(p) => p.valid(),
+        }
+    }
+
+    /// Get the physical frame number.
+    pub(crate) fn frame_number(&self) -> Pfn {
+        match self {
+            Self::V2(p) => p.frame_number(),
+            Self::V3(p) => p.frame_number(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(p) => p.raw_u64(),
+            Self::V3(p) => p.raw_u64(),
+        }
+    }
+
+    /// Read a `PTE` from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(mmu_version, val))
+    }
+
+    /// Write this `PTE` to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+}
+
+/// Unified Page Directory Entry wrapper for both MMU v2 and v3 `PDE`.
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum Pde {
+    /// MMU v2 `PDE` (Turing/Ampere/Ada).
+    V2(ver2::Pde),
+    /// MMU v3 `PDE` (Hopper+).
+    V3(ver3::Pde),
+}
+
+impl Pde {
+    /// Create a `PDE` from a raw `u64` value for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, val: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::new(val)),
+            MmuVersion::V3 => Self::V3(ver3::Pde::new(val)),
+        }
+    }
+
+    /// Create a valid `PDE` pointing to a page table in video memory.
+    pub(crate) fn new_vram(version: MmuVersion, table_pfn: Pfn) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::new_vram(table_pfn)),
+            MmuVersion::V3 => Self::V3(ver3::Pde::new_vram(table_pfn)),
+        }
+    }
+
+    /// Create an invalid `PDE` for the given MMU version.
+    pub(crate) fn invalid(version: MmuVersion) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::Pde::invalid()),
+            MmuVersion::V3 => Self::V3(ver3::Pde::invalid()),
+        }
+    }
+
+    /// Check if this `PDE` is valid.
+    pub(crate) fn is_valid(&self) -> bool {
+        match self {
+            Self::V2(p) => p.is_valid(),
+            Self::V3(p) => p.is_valid(),
+        }
+    }
+
+    /// Get the memory aperture of this `PDE`.
+    pub(crate) fn aperture(&self) -> AperturePde {
+        match self {
+            Self::V2(p) => p.aperture(),
+            Self::V3(p) => p.aperture(),
+        }
+    }
+
+    /// Get the VRAM address of the page table.
+    pub(crate) fn table_vram_address(&self) -> VramAddress {
+        match self {
+            Self::V2(p) => p.table_vram_address(),
+            Self::V3(p) => p.table_vram_address(),
+        }
+    }
+
+    /// Get the raw `u64` value.
+    pub(crate) fn raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(p) => p.raw_u64(),
+            Self::V3(p) => p.raw_u64(),
+        }
+    }
+
+    /// Read a `PDE` from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let val = window.try_read64(addr.raw())?;
+        Ok(Self::new(mmu_version, val))
+    }
+
+    /// Write this `PDE` to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.raw_u64())
+    }
+}
+
+/// Unified Dual Page Directory Entry wrapper for both MMU v2 and v3 [`DualPde`].
+#[derive(Debug, Clone, Copy)]
+pub(crate) enum DualPde {
+    /// MMU v2 [`DualPde`] (Turing/Ampere/Ada).
+    V2(ver2::DualPde),
+    /// MMU v3 [`DualPde`] (Hopper+).
+    V3(ver3::DualPde),
+}
+
+impl DualPde {
+    /// Create a [`DualPde`] from raw 128-bit value (two `u64`s) for the given MMU version.
+    pub(crate) fn new(version: MmuVersion, big: u64, small: u64) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::DualPde::new(big, small)),
+            MmuVersion::V3 => Self::V3(ver3::DualPde::new(big, small)),
+        }
+    }
+
+    /// Create a [`DualPde`] with only the small page table pointer set.
+    pub(crate) fn new_small(version: MmuVersion, table_pfn: Pfn) -> Self {
+        match version {
+            MmuVersion::V2 => Self::V2(ver2::DualPde::new_small(table_pfn)),
+            MmuVersion::V3 => Self::V3(ver3::DualPde::new_small(table_pfn)),
+        }
+    }
+
+    /// Check if the small page table pointer is valid.
+    pub(crate) fn has_small(&self) -> bool {
+        match self {
+            Self::V2(d) => d.has_small(),
+            Self::V3(d) => d.has_small(),
+        }
+    }
+
+    /// Get the small page table VRAM address.
+    pub(crate) fn small_vram_address(&self) -> VramAddress {
+        match self {
+            Self::V2(d) => d.small.table_vram_address(),
+            Self::V3(d) => d.small.table_vram_address(),
+        }
+    }
+
+    /// Get the raw `u64` value of the big PDE.
+    pub(crate) fn big_raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(d) => d.big.raw_u64(),
+            Self::V3(d) => d.big.raw_u64(),
+        }
+    }
+
+    /// Get the raw `u64` value of the small PDE.
+    pub(crate) fn small_raw_u64(&self) -> u64 {
+        match self {
+            Self::V2(d) => d.small.raw_u64(),
+            Self::V3(d) => d.small.raw_u64(),
+        }
+    }
+
+    /// Read a dual PDE (128-bit) from VRAM.
+    pub(crate) fn read(
+        window: &mut pramin::PraminWindow<'_>,
+        addr: VramAddress,
+        mmu_version: MmuVersion,
+    ) -> Result<Self> {
+        let lo = window.try_read64(addr.raw())?;
+        let hi = window.try_read64(addr.raw() + 8)?;
+        Ok(Self::new(mmu_version, lo, hi))
+    }
+
+    /// Write this dual PDE (128-bit) to VRAM.
+    pub(crate) fn write(&self, window: &mut pramin::PraminWindow<'_>, addr: VramAddress) -> Result {
+        window.try_write64(addr.raw(), self.big_raw_u64())?;
+        window.try_write64(addr.raw() + 8, self.small_raw_u64())
+    }
+}
-- 
2.34.1

