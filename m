Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJdbC8P932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BE6407E79
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C4A10E76B;
	Wed, 15 Apr 2026 21:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="oBNjk5jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012033.outbound.protection.outlook.com [52.101.48.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC8910E767;
 Wed, 15 Apr 2026 21:06:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KFT3PBHbp5jnvy6VgVNm6cP818//kyZF7XCqONeHapAz/tLrsZCYNScZRSKNNsmUsj1nZpogRrrOIw3SVFc0+OSJog01LGMTIUzm95nbwj8a/SMTTJdH/2tEuSWzupgMxusWf5ZGBTpIhVUep/SiL3GsxeQc0HWSQfR3gB8PXv+Q/IudJmKREbvRp2eXi1JjdQepQjlUvym4DHGcw7sXVv9pf6bqMge2CB+bblZSis7JbD9cmWr5CQngpHOkq0hHOumgAtgdale6oSiqS+l+B8bz7vLifU3uYeXmBQRsiAyN5rmY5z0elIiu+btrN5+wy6w6vO21kvm7kJ2jqZ+tfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jbkv6deyFA8VUp/Xclb3wW4+57BApH83wi0d4//6qI0=;
 b=wBVOxhm5vm2LBfknm3cDMv0RrDz+9YPGxsdDfYYooWBHa1fbHA0g7DWSZVXVa/X8cs/a6DHhPzPXtmKliqFwZjK16ZlFLyyebMk6bUPntZ2dhIVURpDHk3mxf5GyB0CaAuT385Gqmqy6F1HXjsrsnTde8fsJeDiRWi0lEw/ngl/A9v7V7Spj2WRo4LD52egCLwj0S9Zf9VkzG/QFZrq3L26AbrNoHJ6sMMYVNFtd/AjC2pTlkMnJ/eRwKgveUYPWpdhbGKqUSkmcy8dn4cUEu2NE7uw63fAmra6vGo8PMKF9sq8JtH3YKWVNPL/c45H7OXsJYR8KGp+chR5YQ7WMeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jbkv6deyFA8VUp/Xclb3wW4+57BApH83wi0d4//6qI0=;
 b=oBNjk5jdM0Asl1r198i8FzYT50vDIdV+waHFjgPxzAGd2CuDrm23SmayD3HZpygT6QSUxk/fAjOJn7iCJvq4gZjIJSqRy9GyFpos4x0Zfv3hS06iuGHVMOqwJJA2S27KARZ23Gl/e9ZbjDpSgy+EHQER5V1KXSx33f9nwlNf1AfFCLBjnU0qraTCcRuQ01IJe4IPFGxNCyHPRYDqLKwccoTTifKe7vh2e/S2kcqnsc5F+zlPL9ceHpwrYzzTwRTkZj/7dt3Q0mE7DxkrS854tKm3ds1GezBSaypeeEBRT9Gmly6IpOPhzv8qyaKNjcbPpAAVY2z2bVmYQPAoXB1c5g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:00 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:00 +0000
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
Subject: [PATCH v11 02/20] gpu: nova-core: gsp: Extract usable FB region from
 GSP
Date: Wed, 15 Apr 2026 17:05:29 -0400
Message-Id: <20260415210548.3776595-2-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY8PR11CA0044.namprd11.prod.outlook.com
 (2603:10b6:930:4a::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 8258ee3e-c01b-4b34-26c6-08de9b32cb94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: jM9LYpE0i9Qnj8tCdeC9y0FLUocCEt3Zn9frXqPtATy86DmOaJOtAFAqvlO0Il2UPXR43Uxf0KQQeTJkCbt8qDvuKKAj9gzcYB1ws+MtKy9Y62l3cFc8LqTPzHwmpGZVT6UXqzlLTBxPJhOBY+3eTUhb6UDlzHuz9YMaasMkhAm9ftedn5H7EXunh3XBKacmK5kdW18WowU1x7uCdXT8g2QksgHKdRU6JM3EDI0YlBMOZTHW0kArA8Ytwu/ROGCloPnaTiWN2tT976ucT8LN3RqbCkLGo9qGm4SHfV6MYf5vUx59g4QI1vGaQMy1y3D8jOPa8UBlUNscEg4tyBMiwFwKMkc/UsqXothHYt2Q07+cMQ/mepD+Utac9TjvrxCcLNPQ15zyTYZithg7vF94qCIhVXTK9e5NiK/Km0xsF+umXrqJ1+wE6N0nkM1fnWjqYwAQASO1nZXAPJaqzrWO45ncPyJTT6hDC2ShJS4peAQO//xKmuZOZVzU0s3utHXybPsaYYiYLGUwq3KYydgThEXrCJRfVYXZ6IIUDQLbmlJUOXlF10jqt8kJHJiZ6CYKpw3GO4Bk5MrZiJ5hOt6D24uusDEaKLr9/4qnotWJBPlfnvCikMJ6YBx2usi90qBjisJXRs+ikHHsgqApOw3F7D1Zvw+pKHCK6WVPlJuCrNvXYHsbtfX9OWpuDHYuh3+BoesvsvWWx3akPVM6IqdTlfeCJtE2/gy6x15Az6fYu2I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ge+cRBzYXWV7tVuWdmdyOfnpokxUbPGRGtSQ0ovO75VoT+VqMjzcCnfbcHPE?=
 =?us-ascii?Q?tmvFd4f0IwoYq5bUSnzqJ4ETk/3gcUs95o8X7R6pziGQvbnrJ/K3vUWMhWI3?=
 =?us-ascii?Q?1VbjhQosd/kmpL9Hcu0wRNlj9wcRWuIGOWj1o4sdQRroWqs397nhQ3i9Tfyn?=
 =?us-ascii?Q?+i3LLLv/Q7S3MGCHLnjEff3T2ja0w4wac2PTc/7OhlsvCCAaTw67zbHwUlRc?=
 =?us-ascii?Q?e/NDsmsLO8jUjNYH5qEmNRx9GYtrl8/Rt2LPoq3pxT8u7yvZ6XvZBYJJPEze?=
 =?us-ascii?Q?RWqiQeRik27NNqwjxocskEVZgnSf0t8trHYIGbhC9f7sY5Y1uFwjuMZDjK0S?=
 =?us-ascii?Q?4W5/HBJ5W0FbfXIBSdeAJz7QiLGflvbR5cIj2RCv01/jazhIlUoCMHAgrm/h?=
 =?us-ascii?Q?eQD24ZJq+CIK6jiV92DM9sofAlQq0jmLBpFA53ngqL4do1Xu9cu/mV2hekHw?=
 =?us-ascii?Q?9mA9w5rxZFed+h+VXY3zaFhp4xuGNuLTX0tDLQmEvDohrduW1j9dT+BgcG8a?=
 =?us-ascii?Q?flGY8ydBF/XJOIew9eEOIVV9VAVndzNmhVIVWtnEdO/Z/Wmxqge4H7jXK4yr?=
 =?us-ascii?Q?OCdbvqBabGlncdyzSYw8efnfoAXCeakIOgiaqGkmfM5oLSjur0Qk2ivCJfK3?=
 =?us-ascii?Q?2+VBrS63j5I7m8G1zgVLN4Vqgw6zq73VMu9p4QNcBY5+d5rrZ1XcCcBRZWtA?=
 =?us-ascii?Q?5vqRFOZPsFkydi/GKE3Q714oRaJneXDMXgZah+ZNGWS7NyFnmsgLxlMeI0C4?=
 =?us-ascii?Q?8Zb1Dg3KE/MFQvyYFMHgh0tCsFFBd98vsP7iuRhiqsPTqxKu1lvD12aQs/Iw?=
 =?us-ascii?Q?CRTS5v7fsrQZRQL/fLE/Yw6tjwslWzRgkPc4fG2gEJxAUkEMkt3qWAR3FfkD?=
 =?us-ascii?Q?mNqxaD6jSKJP+2DH0n1Cv9laPqzqGnF7DufiPY5uhoJpV0vWzc9OauTO5aNZ?=
 =?us-ascii?Q?OSrdlZE8EaSsx1s1KkWh5eK7Uq5ST6fitCkl7TXd8PD3ttz0AKNocbM1UfVO?=
 =?us-ascii?Q?uG9tcpPzfX3EkLh+l4V/rGv63+TqhJg6TSNodXWwPVDh5qKIjppL6EzFso68?=
 =?us-ascii?Q?iVM37ln1OYfCKhZuCiyRj4GsRZXbrSRXPpXPq695Fe7D+ilpth4pqk4bi8CC?=
 =?us-ascii?Q?6VcxSVgyh5TnOlv0pL81X7ECmPwc8EMaEIGuTV0T5sLpA7m+ckHCc7ETSM67?=
 =?us-ascii?Q?DSekpaEClhTyDwlpqT7bMSYkygbWBBibGhXei5g99hJ3j5XNzEXcO5XGW5Rj?=
 =?us-ascii?Q?DoT3exAb5oHDX5B9IZGZezax3ob8zOw7Kb+x0IwuGE7IBdLuvSoEr7W1KHYF?=
 =?us-ascii?Q?CsMno3wSWrrBxnBoZjodDuSq4DJVWFfwZ7qT1b8RFcTNanBLCp7wt19bFDq+?=
 =?us-ascii?Q?oZYN9VThKTqjVVeaGoXr6md/B3SEbkp5UB/T1BpTNVY3nMf6g8hYFBO3+JuD?=
 =?us-ascii?Q?BRyDQ9A2wYl6hQHLnlD6zf1q+AHoqt3VS+v/uBTCKXYkMOZsKOsGI0HAmwj9?=
 =?us-ascii?Q?QKIuc2rTqhZ1G33Epl7tUAgzcUdnz7y37rwyVOVWroszmH/E7IGNIUDJyWXR?=
 =?us-ascii?Q?SzfTiDFshq9pNOzTSKgjWWEBUk2rxw013ur2NWX491u971NpQchyGxP1TxqH?=
 =?us-ascii?Q?dTv6oaassbHq+TPPv055AJJRzCzjOXG9NuLu8CEY/AzYCO8xdIy7OHMfUDm2?=
 =?us-ascii?Q?poh0F/Ag33QI16yQShyybzSI/Zz4/NV3vEQHM2ja0Rnsm/Qg1R2S9Q8r/8M4?=
 =?us-ascii?Q?/MQ1t/pw3A=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8258ee3e-c01b-4b34-26c6-08de9b32cb94
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:00.1604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psGvM8rP1ASf7WhwvuCzKj2oLW7dtzNO/YJ9ipMCYEkMW57hB+ybqxfwyQg35AS0EgIEM0vF9ptiDAOpCoE5xA==
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
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reg.limit:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D2BE6407E79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
usable FB region from GSP's fbRegionInfoParams. Usable regions are those
that are not reserved or protected.

The extracted region is stored in GetGspStaticInfoReply and exposed as
usable_fb_region field for use by the memory subsystem.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++--
 drivers/gpu/nova-core/gsp/fw/commands.rs | 45 +++++++++++++++++++++++-
 2 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index c89c7b57a751..d18abd8b5f04 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -4,6 +4,7 @@
     array,
     convert::Infallible,
     ffi::FromBytesUntilNulError,
+    ops::Range,
     str::Utf8Error, //
 };
 
@@ -189,15 +190,18 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
     }
 }
 
-/// The reply from the GSP to the [`GetGspInfo`] command.
+/// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// Usable FB (VRAM) region for driver memory allocation.
+    #[expect(dead_code)]
+    pub(crate) usable_fb_region: Range<u64>,
 }
 
 impl MessageFromGsp for GetGspStaticInfoReply {
     const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
     type Message = GspStaticConfigInfo;
-    type InitError = Infallible;
+    type InitError = Error;
 
     fn read(
         msg: &Self::Message,
@@ -205,6 +209,7 @@ fn read(
     ) -> Result<Self, Self::InitError> {
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
         })
     }
 }
@@ -233,7 +238,7 @@ pub(crate) fn gpu_name(&self) -> core::result::Result<&str, GpuNameError> {
     }
 }
 
-/// Send the [`GetGspInfo`] command and awaits for its reply.
+/// Send the [`GetGspStaticInfo`] command and awaits for its reply.
 pub(crate) fn get_gsp_info(cmdq: &Cmdq, bar: &Bar0) -> Result<GetGspStaticInfoReply> {
     cmdq.send_command(bar, GetGspStaticInfo)
 }
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index db46276430be..3d5180e6b1e0 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
+use core::ops::Range;
+
 use kernel::{
     device,
     pci,
@@ -10,7 +12,10 @@
     }, //
 };
 
-use crate::gsp::GSP_PAGE_SIZE;
+use crate::{
+    gsp::GSP_PAGE_SIZE,
+    num::IntoSafeCast, //
+};
 
 use super::bindings;
 
@@ -121,6 +126,44 @@ impl GspStaticConfigInfo {
     pub(crate) fn gpu_name_str(&self) -> [u8; 64] {
         self.0.gpuNameString
     }
+
+    /// Returns an iterator over valid FB regions from GSP firmware data.
+    fn fb_regions(
+        &self,
+    ) -> impl Iterator<Item = &bindings::NV2080_CTRL_CMD_FB_GET_FB_REGION_FB_REGION_INFO> {
+        let fb_info = &self.0.fbRegionInfoParams;
+        fb_info
+            .fbRegion
+            .iter()
+            .take(fb_info.numFBRegions.into_safe_cast())
+            .filter(|reg| reg.limit >= reg.base)
+    }
+
+    /// Extracts the first usable FB region from GSP firmware data.
+    ///
+    /// Returns the first region suitable for driver memory allocation as a [`Range<u64>`].
+    /// Usable regions are those that satisfy all the following properties:
+    /// - Are not reserved for firmware internal use.
+    /// - Are not protected (hardware-enforced access restrictions).
+    /// - Support compression (can use GPU memory compression for bandwidth).
+    /// - Support ISO (isochronous memory for display requiring guaranteed bandwidth).
+    ///
+    /// TODO: Multiple discontinuous usable regions of RAM are possible in
+    /// special cases. We need to support it (to also match Nouveau's behavior).
+    pub(crate) fn first_usable_fb_region(&self) -> Option<Range<u64>> {
+        self.fb_regions().find_map(|reg| {
+            // Filter: not reserved, not protected, supports compression and ISO.
+            if reg.reserved == 0
+                && reg.bProtected == 0
+                && reg.supportCompressed != 0
+                && reg.supportISO != 0
+            {
+                reg.limit.checked_add(1).map(|end| reg.base..end)
+            } else {
+                None
+            }
+        })
+    }
 }
 
 // SAFETY: Padding is explicit and will not contain uninitialized data.
-- 
2.34.1

