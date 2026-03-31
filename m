Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJo6FMc6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C97371921
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C0510E25E;
	Tue, 31 Mar 2026 21:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="PUhP+3uE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011046.outbound.protection.outlook.com [52.101.57.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F072810E25E;
 Tue, 31 Mar 2026 21:21:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VLGO0+lxgEkJo7mHdMEKMGQ4CoeqiZmvJfYVNdcmLm8j98BYY5ID/Ui10dlcfdVYXEpwas5nu5JL4VxpDKW1EmuYNxSpMcmO4aiLNnjEus5XRAvP0tSpt0HORu2kG+iBRs1cAWjawFEKNDowisdVgP8cKUAEM2kkLb6ku9D0xL2nVuRdqC88ZFJtka0eapG4FdWjY9haPsWhr5WdpShOA66SmERuVCvJ2/QSHN+fLmtHsxXxKEZVYUlLpLGZdGLz0gR9lC4tL3a6Zg+eA/XKPuyDc3RWCFjJlItGqaP91owwLHut/4UpzRu3exeo5izbKv/sF4CDh7vdquhvIDnWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/4Ewwtq1i0RH2pVXx0MBFLaxvDIV74lF3X4sQRMdsBQ=;
 b=GYKPTHWgCncj5HAzx5zYQ7Fti/OawSkpYyrspKaWDUwzD8Smj2hU0NZbIND03wbL5YujyCN6vFlmZM8729uDk+9g+sfneECs1abtd9amUMcSbrSf22p2V4vB5dzvr41/1eUaRjyyMJ8s0vZUTKCw52S/zKmlzFtiGOraTm6ZtjUIFtYjql/yho8+XDZvsHG90QxfrLKDN8AAIvckf5PNtvxn710FhLyZy0wZJvXjrSCHaYep2w3RXPueiR/1WkV1QF4IyyN5v90UhC8yToNDWJgdjiZc3rgua+8jkmMBGpAdhEC/DgBxs7eB6IS3oZeztq/Unf9Blx5sWPnQCXVOBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/4Ewwtq1i0RH2pVXx0MBFLaxvDIV74lF3X4sQRMdsBQ=;
 b=PUhP+3uEOEjPYQIq9O4jXgeoIY3Duj3SXqqO1wXN2Yxm6nTbEBXEIl9Q00D79y1ioC6cZTmuMcgiHnzQqbEfMatAlZ/RGTRJ9Y28pgu3KCDuqIi9re3fT+oz9LS+84seFc+yp5CK7F2tYZ7mg7ioS21BApepWTfbC7s7C2vHfrDGbckMgybByhGO34kqzDfGmj/bj2L6HA/jYS5CUun7yYfwcNzzJzKJDc4xL2oI3geY2LaKIwW1apnwxUwEHCdR/4ooZE08SyuR+/EgZ4TtdUKAFMD1NaYxOVYskRVUWknl1734B5jsD9032982Eze/7qV6S1BRxcwEYM682dSq8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:02 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:02 +0000
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
Subject: [PATCH v10 00/21] gpu: nova-core: Add memory management support
Date: Tue, 31 Mar 2026 17:20:27 -0400
Message-Id: <20260331212048.2229260-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR15CA0056.namprd15.prod.outlook.com
 (2603:10b6:208:237::25) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: c61c8a9b-95a0-4114-33bf-08de8f6b6924
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: l26iC7kUBWbAKYzDHcz1EdZOtjO0woVDZLZ/VsyLkIJEK2YAugtxvfgV1z8t76WnOgjp7najQ1j+9D4Zm5xSVHJ3iK4IiEztdZ8+FVN6SLjLaLZaByxrZTGXr1BKlAcnGI9Jcfb4V3DfHmFl6KNXD0V9qTGNLZ2wZnJFfFU2tY9XGX1Fbe+10mIvSCyY8r0du7pynUy+GzPyLgyzJlDHKj57m4w0IjoDuKt4L4Wg3FZFhogkVsAR205IbpnJAf+RsTH8ypQakbXAkXmZCFaW3QTbl59KSdeB9JdeEWMTl8655NP1092Hqys2PXs1raUUGZRQ/3mfgdRNzlFaBAkj7wlBz2v0Xk4eB//DrQChWBK0dICd4inS/zETPz+iuFamTttjbGCT65UYRXVda86rSSbHiyhGW0U4FQOAKszsNn1RkngHQbLFgNkklTaiAjPIM9NPW5LIuH9XfEH5uvrnTkX36aYbf5pDaqKBmCDLTIekFuEVBf+ABO7YjnsC+UvSRYVX3JsFzNrN60Lk81FPwWN8n7h1Mjg7D8HLqzXd64imjcy9Ts6Rng1diU1imzwUivJZgNVpE8ZzG+qwcg3dhzWMQ6PzlZe4ZL7ocjvctc48ra//6EHRoS3KMQuyXCCaQYKK/Y21b0mblp4FAItc+Wl/Ty9GJRv4TISyYuOp8iSlC6cQK20rQmAB9aE4s5YQPrfQqGAsgzWXR6Gd8At0ptczqpbi0ZJEPEnAYAU8YFQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?idrftnFxfpj+ycGoW/ToTfHESrR8jV3RyEzy40A6O9ZZuMBR7YvPt/G7jAOI?=
 =?us-ascii?Q?Y6D+py1p2zkPRq52aZk8rYFBxDfLKDuAdvliuu0upY6OaSeGiVhDzwDgqmb3?=
 =?us-ascii?Q?yXodBkIDqZiszylrZtrwp2bJn1ROwYuLy3xIKH+cyyPvEH0/Tak+nxhMoVca?=
 =?us-ascii?Q?XyRUxZ5yLycKbnhd11LtogMToKr9ENIbVKYI3FzozI6uobDX0YaKjTGIwFXb?=
 =?us-ascii?Q?47/rRngVAyXb/Eeke2irgj1eXEzPsPFA3E+pafvk3KvJHaLhzBYVTQQhk6m0?=
 =?us-ascii?Q?X/EdQKtICxPuoQOV05afPYo1vV3ScVN7GcLKSXxm54IURm8DVcl5pmr70YmS?=
 =?us-ascii?Q?ZEZfh4loDG8olkOxQKPTWW3EsSzxUFU1IbgR/uJEnWwZnD01mn/fzBF60YOR?=
 =?us-ascii?Q?phkCHbc8zmMIH0oGJn9i72q2y4xIYK2hZCkSm8rdOJZjN6AEtSw1hyGqk3NO?=
 =?us-ascii?Q?R42WqEgndp7NaX+Ot0GbYsE7KNZR13/y7q16emGc3eEv8zUM7hoT9DyhSZVt?=
 =?us-ascii?Q?qORSA0wxYJLB3KH3pwCySthRgjO3Gq4iKZI5KXemjrQHQ9cYR5xveYkAw3xR?=
 =?us-ascii?Q?ui9uZMOXkJ9MT14/4sb5ZTPCK3gX7dvbEpvVUN2C7g+cfhdSogN7PbmstGal?=
 =?us-ascii?Q?1nXOioVwTNs70raeA93A1hZksXGIRrB6UwhJc5AKoQyl+D6Kio78lwOyNeGB?=
 =?us-ascii?Q?LF2Zr72D2KJa1/zPHRRGkWXHIWvSaB1wmZRveGaSEDSik+g38ocL9uvsouWb?=
 =?us-ascii?Q?0IOP4eNArgzi+gFiAY4VEZkC8Tcxr7bK9myk04keanBHhGWEPm+Bqn29uyPu?=
 =?us-ascii?Q?j2bktj1ZmDI896KhyJjVniV+gxfVUwjeAjf+ZMabG85CUxEel9rGZRLtHr3h?=
 =?us-ascii?Q?84sW8+bYjDYcqt3GdJLgrcb8GQfXiM/kJk33Fu+Avg4NMQTgoSsdr62q4DgG?=
 =?us-ascii?Q?6VXhULEGmFch28zkKehEz9836u4sTjtdihZRGcX2cCMlI4MFPU6CgL+OtPQk?=
 =?us-ascii?Q?m97Bewt/UKw981dXkbo05s/k43sqVKwpHiWQSgCez9ddTJxtT6NmX9L0kMpS?=
 =?us-ascii?Q?HI848IQDs4zQjEBPrZ9+K0DeqxNOGXzMZs3nhHbdk/LjjPu7O0Rk4TUd8Bhs?=
 =?us-ascii?Q?g27zYeznR0kLTIor7Arl7uKfiu6jFrqgRc6Gyna0uma2WEGjVi8dMCESq04a?=
 =?us-ascii?Q?fJKcDumKxZHWV3VaNW6+PV0l2WmTlAKu46RJyxWriTcXiY2ODJZFPXvw51qA?=
 =?us-ascii?Q?6MzaZMZtKMKJrzVnS0mSzYR1aZd/9T2upBdAXe8F4Fz4tTAPGn1d/LphTIxC?=
 =?us-ascii?Q?YG7LhIG2wHlqTa0j8KzPJs/eayHRHnH7Wj88KGXuANOKjtYliV7bKrckHJ/M?=
 =?us-ascii?Q?CBF6ETBE5oSzsiL7hCfn/zmlIFNgsd+obDNFYJVJzm4jR0k+q9U4+Qn8VLfS?=
 =?us-ascii?Q?nqkTiZtsz6pNQU9xCZDosuQjqPEFkspSGfEZxgsAG70KxrgsaB2I1JXBQyTN?=
 =?us-ascii?Q?1Xbmbiefwd331Ym3RAzXQ+LfDawPJoL72dbVeX6tFZE59lpoWnyjBVo7w0LQ?=
 =?us-ascii?Q?cGtPodw54MZMNVuE3NXiqRrEZ/EXj4eZX+MFcKKcnDKk4w+SyE65ASZWa8Nj?=
 =?us-ascii?Q?weC7wKOAE2oZ6m/YCMNaXgcwGz4VbRakSmcbmsppHfzXgOzVR2wSy6eiFv/H?=
 =?us-ascii?Q?hKkanJyoILGfM8OtMdx7mbmzwFL0HrTdhqmifd7IYQXHlBtiHKStbGL1MCJw?=
 =?us-ascii?Q?eCePT4KXzQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c61c8a9b-95a0-4114-33bf-08de8f6b6924
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:02.2923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CYjk+sDQLty4LFVdE8PP80kKlvt1EUwzhHZ6NZYew3pgCgwNYRqONCzVnJ3gWxW2QMD38qoQOLOPq9drIARZag==
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: D4C97371921
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for nova-core memory management, including VRAM
allocation, PRAMIN, VMM, page table walking, and BAR 1 read/writes.
These are critical for channel management, vGPU, and all other memory
management uses of nova-core.

The patches are based on drm-rust-next and work on Ampere, and should "just
work on Blackwell" once John's Blackwell patches are merged, however it does
not depend on those patches and can independently go in.

Change log:

Changes from v9 to v10:
- Rebased and dropped patches already merged in to drm-rust-next.
- GPU_BUDDY select folded into GpuMm patch.
- updated code with new register macro API.
- Refactored fb_regions() to use iterator (Alex Courbot).
- Renamed Pramin::window() to get_window() to make it more clear it is 'acquiring a resource'.
- Converted Bar0WindowTarget to bounded_enum! macro, replacing TryFrom. Allows to use `with_*`
  instead of `try_with_*`.

Changes from v8 to v9:
- Added fixes from Zhi Wang for bitfield position changes in virtual address
  and larger BAR1 size on some platforms. Tested and working for vGPU usecase!
- Refactored gsp: boot() to return only GspStaticInfo, removing FbLayout (Alex).
- bar1_pde_base and bar2_pde_base are now accessed via GspStaticInfo directly (Alex).
- Added new patch "gsp: Expose total physical VRAM end from FB region info"
  introducing total_fb_end() to expose VRAM extent (Alex).
- Consolidated usable VRAM and BarUser setup; removed dedicated
  "fb: Add usable_vram field to FbLayout", "mm: Use usable VRAM region for
  buddy allocator", and "mm: Add BarUser to struct Gpu and create at boot".

Changes from v7 to v8:
- Incorporated "Select GPU_BUDDY for VRAM allocation" patch from the
  dependency series (Alex).
- Significant patch reordering for better logical flow (GSP/FB patches
  moved earlier, page table patches, Vmm, Bar1, tests) (Alex).
- Replaced several 'as' usages with into_safe_cast() (Danilo, Alex).
- Updated BAR 1 test cases to include exercising the block size API (Eliot, Danilo).

Changes from v6 to v7:
- Addressed DMA fence signalling usecase per Danilo's feedback.

Pre v6:
- Simplified PRAMIN code (John Hubbard, Alex Courbot).
- Handled different MMU versions: ver2 versus ver3 (John Hubbard).
- Added BAR1 usecase so we have user of DRM Buddy / VMM (John Hubbard).
- Iterating over clist/buddy bindings.

Link to v9: https://lore.kernel.org/all/20260311004008.2208806-1-joelagnelf@nvidia.com/
Link to v8: https://lore.kernel.org/all/20260224225323.3312204-1-joelagnelf@nvidia.com/
Link to v7: https://lore.kernel.org/all/20260218212020.800836-1-joelagnelf@nvidia.com/

Joel Fernandes (20):
  gpu: nova-core: gsp: Return GspStaticInfo from boot()
  gpu: nova-core: gsp: Extract usable FB region from GSP
  gpu: nova-core: gsp: Expose total physical VRAM end from FB region
    info
  gpu: nova-core: mm: Add support to use PRAMIN windows to write to VRAM
  docs: gpu: nova-core: Document the PRAMIN aperture mechanism
  gpu: nova-core: mm: Add common memory management types
  gpu: nova-core: mm: Add TLB flush support
  gpu: nova-core: mm: Add GpuMm centralized memory manager
  gpu: nova-core: mm: Add common types for all page table formats
  gpu: nova-core: mm: Add MMU v2 page table types
  gpu: nova-core: mm: Add MMU v3 page table types
  gpu: nova-core: mm: Add unified page table entry wrapper enums
  gpu: nova-core: mm: Add page table walker for MMU v2/v3
  gpu: nova-core: mm: Add Virtual Memory Manager
  gpu: nova-core: mm: Add virtual address range tracking to VMM
  gpu: nova-core: mm: Add multi-page mapping API to VMM
  gpu: nova-core: Add BAR1 aperture type and size constant
  gpu: nova-core: mm: Add BAR1 user interface
  gpu: nova-core: mm: Add BAR1 memory management self-tests
  gpu: nova-core: mm: Add PRAMIN aperture self-tests

Zhi Wang (1):
  gpu: nova-core: Use runtime BAR1 size instead of hardcoded 256MB

 Documentation/gpu/nova/core/pramin.rst     | 123 +++++
 Documentation/gpu/nova/index.rst           |   1 +
 drivers/gpu/nova-core/Kconfig              |  11 +
 drivers/gpu/nova-core/driver.rs            |   3 +
 drivers/gpu/nova-core/gpu.rs               |  94 +++-
 drivers/gpu/nova-core/gsp/boot.rs          |   9 +-
 drivers/gpu/nova-core/gsp/commands.rs      |  18 +-
 drivers/gpu/nova-core/gsp/fw/commands.rs   |  59 ++-
 drivers/gpu/nova-core/mm.rs                | 234 ++++++++++
 drivers/gpu/nova-core/mm/bar_user.rs       | 388 ++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable.rs      | 489 ++++++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 ++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 337 ++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 218 +++++++++
 drivers/gpu/nova-core/mm/pramin.rs         | 489 ++++++++++++++++++++
 drivers/gpu/nova-core/mm/tlb.rs            |  95 ++++
 drivers/gpu/nova-core/mm/vmm.rs            | 499 +++++++++++++++++++++
 drivers/gpu/nova-core/nova_core.rs         |   1 +
 drivers/gpu/nova-core/regs.rs              |  52 +++
 19 files changed, 3344 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/gpu/nova/core/pramin.rst
 create mode 100644 drivers/gpu/nova-core/mm.rs
 create mode 100644 drivers/gpu/nova-core/mm/bar_user.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs
 create mode 100644 drivers/gpu/nova-core/mm/pramin.rs
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs

base-commit: 76bce7ac51673640a4a46236ea723cf5543268d7
-- 
2.34.1

