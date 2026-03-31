Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DO3A9A6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DC371946
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437A110EB2F;
	Tue, 31 Mar 2026 21:21:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="J+W042GZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010068.outbound.protection.outlook.com [52.101.201.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5607310EB2F;
 Tue, 31 Mar 2026 21:21:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BfKrUoogQv9/lCcbp5xm80QRLV3eWP7Y5xdL8geNr4SADGSoCbCejnvuAObbL62EWeSU2kqgc8Zr56dfpv5B/2yu9iEYsVj2yPC37PmD/Ay55Iah8/MS7OS7Wr9txFZj4rAbgsVy2ua34CjKmTTY2kCbSJl8xN9Epvg3RimrGxc3DoBe9yIvmfhvOWYfg6H86RhQ2Bd3lrIJArhkRlukSNVm67tSxzesv9aFi6nHW8hu6kTINhnyWbrYrL5u22VMkW0SWEY/GkPipVRLBv2truKEtCXuoEw8QL5iHfnEvZQz8CDuhfkJW9UeISCD9F8YUOWN/b2KHTsA1w0JQ4kUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zvH557EJWVztvAoKA1/+58hXMn3FwAd38dY8oFHG6sQ=;
 b=ondcdBKWn0eJQe+wfseqB3RkjPlRGZI/z0eIXMI36jf7DE+RMTGvRC/KUaR7vIdwffiT+/wXM4YGPQ/8R0RaxjflROB/PJwozTrHcCt2n3ezj6WV4QhsbvK/+vmmXJX/S2fUET9wGy/PxmC7P3z2IerVRvjqsN4+IOrlmZ5gaKTYMUQMjp/T3id9AGXDyOYCxhqmEuS2nNBRufWfcX2anTdP2B7UTYKhvvHNWnQMWgfsexwqv3A05VLYWL8tJCSMAdHl5vBcspnda0OlYMhgHKRQzse/PQZjL77SqL1oxlCVD/r11kPwH0lS4J+WULlUzrzpp/uPqk6JFQ/3/CDMXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvH557EJWVztvAoKA1/+58hXMn3FwAd38dY8oFHG6sQ=;
 b=J+W042GZfblOtPltXBVw9EgeJ4QPZ2tQeh2t6mv1Qt4/JrCQs/TK+ot+8LtYDe1IQ30m/VFSKGHKWhbamHB/kIZ6yUgYEU5/3WUQMDL54/2lVwmfcUY2O1TfsBnWL6hDTyD7FSUJUIVjWfGw/gFTs+t0Y4dB6iOFnGuzqXGptGLHfomVyEU/RjM7AD9Bw+DfvpkW3pFixZmBztkLwGYr77pAHzzC3xKUIv68dRe2XcYSUsWjiqD4H6Yk8ADAMCi306xouQnL0expoNIWcTf0fqzeparqvtnvH9lMVv/WFJTHmL1z5f4JByZjEh6lHk/OekpmQNajDdMeXbfnovATig==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:09 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:09 +0000
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
Subject: [PATCH v10 03/21] gpu: nova-core: gsp: Expose total physical VRAM end
 from FB region info
Date: Tue, 31 Mar 2026 17:20:30 -0400
Message-Id: <20260331212048.2229260-4-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR07CA0023.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::33) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c08d940-7742-4fbe-809c-08de8f6b6d11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: Vf6MRNm+JXXAImKmKmeH8Rb0TFX2N25421DLGEfLFKpCP5FSclSKBN0aoa6ht9TFltmFF+6e/R8Ympd64drdw4DA51I9HxLEXAvK2bVQp9OuCVZWehXMMCsGHZ7FnALdVxBFyN2zy2Y/mYavAITUmAeGl5XjBfEwD2Crmtj1kn3kaoGci++mCn7YnndGMqEHDE56KNBpvn2EVhRKht2tJtt0gLJ3UkNikbG/V+kbx1pZmTSiGdmJHyeTPknDxDIsxcE4YQ2bSyF0535/Cq+gOmjyhI1SDvrQnz7DLaLIKHMdmyIbGBfX0lbgNf0v/jTFZpdqx8/lPs/iweJoe+ZEebA6EpY7UV/mt30bl8tzoRWOCk1k70b4B3TAMfLjGaPpq5fuOHaf3T0i7HZL5fSdevyl1KIP5e8ghLm/6kbbDjiWaGgK5W7GHoQ79nwWPejk0Di+ucbCeKR2drVpWJNmzd2IyxBa7Ilm2gx4vhEknhcqIhM0p8nzjjqR23PX0IwpDB8cNHkNLcJlvE/2FFIw48CMgUb6eK5mg2su7SVfKfshgFdZeXRuEgLylzdYTKJXg9rNUQs23nYs46Qqv7MVHTChye+ElZsN8UtIi6dMVtzpM68yYtQUkEJ10j7U+Pnn5ByILaUbznluuQk9bM1uY3rREYttocMzAv4HVla1+uOmPdzBs7yiI7KoEr3YnWf+Y3wxEQF0q627mpmbX7PXWgeaQELOr4cC93VyC/ZPFQs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BybjNZnUXrSGhrKQKLibl8Hpc+4g+bouaP78GBwxMYGmfSNr+Nn2Q9u+7QyY?=
 =?us-ascii?Q?5B5ZxR5FMXgG8trElt/5J1RdBWB3+ThRtlY57Frk4HTA5hrM9kjucJls4P88?=
 =?us-ascii?Q?YaF/2P2EzilD2WzSiuNFo9j+sZHN8TDcvdmqErzVv2J3n88qy0FwTS+6pGhN?=
 =?us-ascii?Q?+KfvhcI1XpDVseqlA6ETBgQiVP0ja3x3vdstflvrhJA0aq3YYnQe167dsE29?=
 =?us-ascii?Q?1GtzSBIp0lUifSBFoL0JPhI5NM38CW2BOoEb1+v0Tj6NK14UFaTWfm+Jupa9?=
 =?us-ascii?Q?+Ijt6vNTyCaUadZQ+r/R/V8NCksCz+lhEPLCMrwNMmDeBbzKnX6OKWHft8Cx?=
 =?us-ascii?Q?spkOfbFCYFkUd86TEMTmIPma6VDGxkX508llwu82krOyEuVJ9NNx5hVQwopg?=
 =?us-ascii?Q?IjErPlb6hEHydfj6XkMCuwE1FKVMuZBEucahGqUif+vARC6JdIQnpYoLhho+?=
 =?us-ascii?Q?R/WbPo0/aU7zZuyc8alCYm8IcyFJS6x8CisEE52C8DeZoVGr692PdOHAlGeA?=
 =?us-ascii?Q?3dzbEj0Zdaa2RDAUl4cZ9UMI35CoXtg14ev9jV9pN02Tb64/IHqRNOD1zj52?=
 =?us-ascii?Q?HLZGbiZIk384ibKqQ4HBogDGN3j2iWH2WSo3atmqWawgo6D7w2+IsWPyBIdv?=
 =?us-ascii?Q?LoiIJBMsIX7sRc5iIEvuZQbcnBoudHxdRhO3faZWSaCp9K/ibS/AuucvZTXl?=
 =?us-ascii?Q?kP4nrOrqtrbLIcENnM7zRue9PvXReMNrnv/Sn73qYzAquDqFdvRq4VBaV0LD?=
 =?us-ascii?Q?A4WCORT45+SEq9LLRG5rNv24750OKBN9Z7k8J1ud3BJC8Gwhn3mxizmHwcoC?=
 =?us-ascii?Q?LEkRY9bLKCN4oj7pmiHs6NzmspeBBNpeYTqjfApwJmVp57OsJH9uKBanSYlx?=
 =?us-ascii?Q?h98E92rvujYLgnJR1UCVerkIseOt+u/i7RyJIWh3ZoWaSuignO1q64kTvYkw?=
 =?us-ascii?Q?d2YVhs03z3q2uJgGFrH/s6fLaKaf9C2TPG8VT/GpRicQiDfLE7bqew6TFzAu?=
 =?us-ascii?Q?niAQDWbUUAWQ7yjw3j7GnADHEMQIYWDgiHtx2qX8nVEsjAY1u0YOtX7gaMVk?=
 =?us-ascii?Q?54wqu35rMaUAq1kR5wB8CrPYxuQv0zeYEqtegXysQ+O1r0b9eSKT2kToX0CP?=
 =?us-ascii?Q?uFCVBqImCgGKc5K0UJHmPhSixZEoN9xTclqM143rRJS6IiOKF67Lb32Ijfnn?=
 =?us-ascii?Q?Kh/9yelm/5ylYkvE4myyW0F9SzSAO2fIL8UtNqcR+EpyW9Tum5++oLBH5b/N?=
 =?us-ascii?Q?4F/oziMUMV2K0s0IMNGQJKNO/nf5oKWrxmSciQqqLsKGL40cRkbSm6A0GY//?=
 =?us-ascii?Q?edG4JwQRu5n40qeDcuArRAeo7n+Q06L8/Kw/P+jMFi/eyPaUH+MDNB+hPhcm?=
 =?us-ascii?Q?/8t28B3SRdIS6tsAFEOOJ8qhaI3J4td/dlpzwL3uKGFTqf3ioP0lQQndh4tQ?=
 =?us-ascii?Q?njhY1sy7pgxKdtNKVORV7a1B4tMxQke4GLcyBFoH1RKtuX1RWh6OI/U0Nz2N?=
 =?us-ascii?Q?uOT+o8FiibqTuGTPo+PgKnA3j3ixPWIajF96zfWfGoH2GoBWElGl9z8wKI60?=
 =?us-ascii?Q?mXmUbNZ9rjTsJVPon6Cn8UiW2iStl5QpjbhqLc/oQertfdsB8CPWVKrmwn2d?=
 =?us-ascii?Q?FLFsvgqg9KhfU51QCw2a/rGx7ea5zzZpP2B35fWVtdKf9Lb/fl9agD/aRpGS?=
 =?us-ascii?Q?J0CTiwOOOJW6f7ryK+dNfaStrLcMD9nWxUoxM4LKJozryBO7YtUKYtJ0vY4t?=
 =?us-ascii?Q?HmBUTPKdeg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c08d940-7742-4fbe-809c-08de8f6b6d11
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:08.9428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QHwqLLNu8v3ZHatpnPnnHYMr+OYGUGY9J4e3n1wH/ayNkG182JLq/9BZSsEpoT1DqyhfUflccyqwcA5QDc5+Rg==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: B11DC371946
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add `total_fb_end()` to `GspStaticConfigInfo` that computes the
exclusive end address of the highest valid FB region covering both
usable and GSP-reserved areas.

This allows callers to know the full physical VRAM extent, not just
the allocatable portion.

Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gsp/commands.rs    | 6 ++++++
 drivers/gpu/nova-core/gsp/fw/commands.rs | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index 41742c1633c8..5e0649024637 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -196,6 +196,9 @@ pub(crate) struct GetGspStaticInfoReply {
     /// Usable FB (VRAM) region for driver memory allocation.
     #[expect(dead_code)]
     pub(crate) usable_fb_region: Range<u64>,
+    /// End of VRAM.
+    #[expect(dead_code)]
+    pub(crate) total_fb_end: u64,
 }
 
 impl MessageFromGsp for GetGspStaticInfoReply {
@@ -209,9 +212,12 @@ fn read(
     ) -> Result<Self, Self::InitError> {
         let (base, size) = msg.first_usable_fb_region().ok_or(ENODEV)?;
 
+        let total_fb_end = msg.total_fb_end().ok_or(ENODEV)?;
+
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
             usable_fb_region: base..base.saturating_add(size),
+            total_fb_end,
         })
     }
 }
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index 9fffa74d03f9..46932d5c8c1d 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -163,6 +163,13 @@ pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
             }
         })
     }
+
+    /// Compute the end of physical VRAM from all FB regions.
+    pub(crate) fn total_fb_end(&self) -> Option<u64> {
+        self.fb_regions()
+            .map(|reg| reg.limit.saturating_add(1))
+            .max()
+    }
 }
 
 // SAFETY: Padding is explicit and will not contain uninitialized data.
-- 
2.34.1

