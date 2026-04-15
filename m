Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGcVC/f932nUbQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464D2407FBF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B6910E7C2;
	Wed, 15 Apr 2026 21:07:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="qwiqijON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011013.outbound.protection.outlook.com [52.101.62.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F2110E7AD;
 Wed, 15 Apr 2026 21:06:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDlU991BMexVpARZBOMViLaoKAasS99HX0nQPTxcL6SVmJ0ZvAff7uSyXLhhe1CxgGEkVdVQJsi2D6cuUFtKmDM9EmcMUfeNVWgwpS3/akxyXuzLeviWZ9KF8QWMJGLLMBo6ywPHULLNNa//IJF8PKgSqQa0LB0RhQ4n3sibM4vwtu5HUiHgy5Vbjmn/49pN0G6dmYT6g4AtaK6FlbKAZ6e7puqODOOLpmYUH70WZZw8K2VaqOsd3/Vkcp4YlNccg8pNgVOiSIi2wawka3WJIE9PB4z4saSb3/QWQkgCqSPMJfXKcT5KDdI54rjnuJkJHPEBb1gKTzQeIk4DgHUnFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zyu6lynlKsGhZxT8D/ktJ0N64FfKEN/X2Vhw9vRrjOY=;
 b=coMaUn7hj2fau7eeAvBYui7mXsJXq4LTvo5y+FQFPh8pB22bCgB+APdeWVEVZ/HPlAojUqggsarkQhzLPkfv19nulR13Nb/FAfoE/PEGOACAiLSpmiFMNZx39SsMXyo6j1pRYlKqIFrcAhrLPVDox/Egd0PKwYgWm6qqXjGMw/X79N19GX7M4QP3UviJSnjUavYWDaMWoqKmjOeOJr2Jj0YYCuiPl3YuZSxjO5LoJqOMhqsvMtoCCdDbj6wZ/lFyzSvY2bEe24y6sRGi6a3Y95vXuaCOkEwEUoFyyzcrFmxVwljuDF9r1pCjcDgmy5ZS33mu2eW2otMX7nxumYLU5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zyu6lynlKsGhZxT8D/ktJ0N64FfKEN/X2Vhw9vRrjOY=;
 b=qwiqijONfWpBsoQvibYvBFD0b0VgvIwTArHBN/whDHfZxemFPcIYdbdY/idkLRdZto6GU/v7CAMWi9jHdMQ7+EQ+T5AH7fmYKnKKDPA3TFqNZx6oivmfyhmx0VHrYH6cMSXJI12RdMabWxXYTs0O8UTsgz/27KoWfR8jBNjOBVWjFf4d5OnChxzAqmS+9orASJLbq2/3v831hQyl3FuJWwyN9RW3c/cT/T4DOXd59JAvz7G+gBZ3ysu/wiI+iQAhB9YeEiyVdTKIwuIuh/Wd8ED7dCr7FUuiNzVSZT5tnEtcVJwURyUE7ataWN+Xu800GWpep/g14BMfjSJsUyhyog==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:45 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:45 +0000
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
Subject: [PATCH v11 00/21] gpu: nova-core: Add memory management support
Date: Wed, 15 Apr 2026 17:05:48 -0400
Message-Id: <20260415210548.3776595-21-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR13CA0096.namprd13.prod.outlook.com
 (2603:10b6:930:a::16) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: f72250e2-6630-425f-72a9-08de9b32e68f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: OF4yAE7dP8R5zxe+gjDPdpqQKjk8Zl5+UysU3TkpqUikcdOyQJ0psRAO2P3k3bar6bTuTyRftOIiWHbmL2H/fSR9ShccVjp9KlA+6I7qYBIIV2tfKspMA+yAhGwJyBLq8db5J6pJJsdO/eHC/96k12Syyo3NQP75VjjB8GGpenMfymvKo7U19JzbQmYWT4P/zeGTbXjfD0NPA/pWE6CTLgA2JFRPdmuaPrxiqO3HIGDsN26UZubXFXZM4vlG+eIJ8k7OLSLAnqP9EO76j2PGOmyRjqakFfzlEYuH/B+Kd0rjbuXrPJDYWUcCL4ILB9hdlpLZQ+5Eb3lpU9Ce6t470Vb2lvmPijZC3boyw2K0Qe9bq/8vHwq8QerjlI+9jatqL1eiTFi2UzHDF5lTgCy6RuGalRmyaq51UrKLHobkH0SWf/8Jq2Y4mxTcNj02MFcbkbW2nboYss5OiHVjDVaSKEodkShnnqPjfgXKD0eN4JxFMjLT2zWbTJ9o5iArvWBnDOBpr54fszZ/UQ0H+fp2EIVASnx8HqvL7GAjShPMbK3+6sMzuaw8vNoAyqoyNl2DvBCojaoj7em9udI60dFmGzICetNAV8rgSwFTG+RfkONIVFY5VsX2z2iBo65zHdlqa9s8bijsTcEsdaOkVNuCWiCN3v5b437DgjoLO4RVGtbKvqnPzAXIU8JC0OUr2iFZS0tCnJgbcVc5vNjjSFtKhlmf6zCbDvtw+1crTOkHQsQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?47Pz0xSBIp/tg66aqrP0Aa6jbjDIoiftDUuOAe982NBj0eh6ArZDWrfJgzli?=
 =?us-ascii?Q?I5lKI//EPx2CFTKUvU0t0gbE3IGk0Q7ER2ht9mP+1doIaj2wEQpwH///zYhr?=
 =?us-ascii?Q?ov+sVOO+oR0KX4BrqXj4LdfMpPGLBtHGOrIwggZJSKv5TWdD84IBLabDV9la?=
 =?us-ascii?Q?rpndF77eJnLEWKiOYinw/023nDfyp+k0iqvy8zppMJ3kYxLv9rm71jEFlQm9?=
 =?us-ascii?Q?CugcrSUNpdQPamjE7Wvlv3ZrI3Znb9Z2cVeg8JWKdZALRJd4YfRAbJlBNidP?=
 =?us-ascii?Q?7rKKOivHTT2lKZ4xOXjFwBLQsP3h8RfUb6wimUDLvpYsEiv0e8PEaUYRgXp0?=
 =?us-ascii?Q?xwB3CUbUmsmXuo8cQQa8afe0vsQ+h+9N+zJ9IDrDGzIdzfZotdiniXHCzl8q?=
 =?us-ascii?Q?O24512yuZ3FoGr5wxdBfcxK/oBmlCpymtxk9bWC7nee3NkIBhVICYcsDApT5?=
 =?us-ascii?Q?6DBwHkrTB3P0V5BJA9C4kglztp6iaJQDIOox5KUTrIK2uq3Msjip74vGssHl?=
 =?us-ascii?Q?GZbVLM9FiMsxXdGRNnvFYwGxNwiukWXDMUfAvn0PL3UdGIeybJmqb8DO9Psa?=
 =?us-ascii?Q?VSIMTzS7JYt5jPhvtp5Lfs/mp2K7/1Rhe3Sw2wk8GxCvJq9lqhpIbNedFnKR?=
 =?us-ascii?Q?xX4Q+w0YutDyJ4D6TJZ0rYZzHsoG7t62KJCn+2DlI5a6mKKAodr2xhlik8I4?=
 =?us-ascii?Q?gTxq92/aJTbujBkjNS1LrV9eP2vO1Olf7hVSu3HKfo8lDxelKocU1lJByvQm?=
 =?us-ascii?Q?pWNNcPCfWg/3/ceTheVfspDhEjIAFyQ2wyQs1xJXbYNOIkLop45wMBZpiXih?=
 =?us-ascii?Q?p32GsY8mqColuA8lZ0wVoe++WVKgxXetwuib9I7E9gTMjUgJW+9DSQoU6wTX?=
 =?us-ascii?Q?ZaCSeKpmyFR/U/qclxuwxiKATFxqfMq50DwB+TFpM7c6KizaHPtsGWV+kSZU?=
 =?us-ascii?Q?tAxJYylBy6k0AoQ+dUXl9T59p0Nb2+y2asfHGduepV/T428BDH0ed6dKAsPM?=
 =?us-ascii?Q?nDrojthJACK9T37u1Sp8529YbzBXEMJRIiPoHOVc23KUoPSGvhM4YZXjJtfz?=
 =?us-ascii?Q?qtKbZ2oMRdJluO57+NR8oDXhBKIQoenmvwYZ4aC2/5ry2OsE/mCb1lJMYDRr?=
 =?us-ascii?Q?EXiTrm3NQTugR9kfI75Xz0RdtRMZDOHThiDFAH5QstP3PNwNrvaNuNhOeRGz?=
 =?us-ascii?Q?uEN0HGNLfXo7zh33OgLq5qN6t+y2Wdcu93WLJE+W1MIKlK5nehHrpiSzre+S?=
 =?us-ascii?Q?jbOeAJarHOXV9KK2AWpeRczmOpeIhqlFWUnJB52Fh24DwGY2ZnxKqlH0QFlN?=
 =?us-ascii?Q?vmuzOMNjZ65bJrtsECUXr1aGGw8YtwAvVNcwyoyTTI2OKNwPWTAh+W78TtmD?=
 =?us-ascii?Q?1NMfRgyNamGFDoA+eNRO8YKoIYvRe1OipeMiuzRA/wKS6374kw5XEVjadps0?=
 =?us-ascii?Q?7tUQVdi2/1jS872Ahwigd2pRKdaTC+ILqp+cApKwS6m5uhnb48yIfrjDbBNY?=
 =?us-ascii?Q?8v9P7yMmsxJ7tDR+cxRkp6PdSFJwRXgDUhhGMJFEkljxNCdAHDCU+Z1/jKBA?=
 =?us-ascii?Q?6NkBZveN71t1SUrwO8297g+4hPlCSCP7vZXbUsqfBKrj8jF8CINBY9INM3Bx?=
 =?us-ascii?Q?oDH3dsvUAwqjZeDulcBwB/UfDaXae4dyKv0SgQQ3vFVxMbVqde8k+D6bgsCX?=
 =?us-ascii?Q?5Nj/vGaEbTJUNIZrInCzwwjnYHFsca+AB0lffTFNSPWCDSEYfebLgkFzl10A?=
 =?us-ascii?Q?rbc9OK58rA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f72250e2-6630-425f-72a9-08de9b32e68f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:45.3726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: le//FPm5/28WkwoevOz2dkuwnjbhegGAZG0KJxRx+3yCKu9YNpCJHruKEt/JJDmqGf0Yfx/l4Hw3mwLpGd2Www==
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
	NEURAL_HAM(-0.00)[-0.977];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 464D2407FBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

gpu: nova-core: Add memory management support

The patches are based on drm-rust-next and work on Ampere, and should "just
work on Blackwell" once John's Blackwell patches are merged, however it does
not depend on those patches and can independently go in.

This series depends on Alex Courbot's bitfield series:
https://lore.kernel.org/all/20260409-bitfield-v2-0-23ac400071cb@nvidia.com/

The git tree with all patches can be found at:
git://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git (tag: nova-mm-v11-20260415)

Change log:

Changes from v10 to v11:
- Rebased on new bitfield! macro infrastructure.
- Squashed Zhi Wang's "Use runtime BAR1 size" fix with Co-develop tag (Eliot)
- Refactored page table walker to generics (PtWalkInner<M: MmuConfig>)  (Eliot, Alex)
- Changed first_usable_fb_region() to return Range<u64> with checked_add (Eliot)
- Tightened visibility from pub(crate) to pub(super) across mm submodules (Eliot)
- TLB flush: added ack_globally bit for global engine acknowledgment.

Changes from v9 to v10:
- Rebased and dropped patches already merged in to drm-rust-next.
- GPU_BUDDY select folded into GpuMm patch.
- updated code with new register macro API.
- Refactored fb_regions() to use iterator (Alex Courbot).
- Renamed Pramin::window() to get_window() to make it more clear it is
  'acquiring a resource'.
- Converted Bar0WindowTarget to bounded_enum! macro, replacing TryFrom.
  Allows to use `with_*` instead of `try_with_*`.

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
- Updated BAR 1 test cases to include exercising the block size API
  (Eliot, Danilo).

Changes from v6 to v7:
- Addressed DMA fence signalling usecase per Danilo's feedback.

Pre v6:
- Simplified PRAMIN code (John Hubbard, Alex Courbot).
- Handled different MMU versions: ver2 versus ver3 (John Hubbard).
- Added BAR1 usecase so we have user of DRM Buddy / VMM (John Hubbard).
- Iterating over clist/buddy bindings.

Link to v10: https://lore.kernel.org/all/20260331212048.2229260-1-joelagnelf@nvidia.com/
Link to v9: https://lore.kernel.org/all/20260311004008.2208806-1-joelagnelf@nvidia.com/
Link to v8: https://lore.kernel.org/all/20260224225323.3312204-1-joelagnelf@nvidia.com/
Link to v7: https://lore.kernel.org/all/20260218212020.800836-1-joelagnelf@nvidia.com/

Alexandre Courbot (1):
  gpu: nova-core: switch to kernel bitfield macro

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

 Documentation/gpu/nova/core/pramin.rst     | 123 ++++++
 Documentation/gpu/nova/index.rst           |   1 +
 drivers/gpu/nova-core/Kconfig              |  11 +
 drivers/gpu/nova-core/bitfield.rs          | 330 --------------
 drivers/gpu/nova-core/driver.rs            |   3 +
 drivers/gpu/nova-core/gpu.rs               |  94 +++-
 drivers/gpu/nova-core/gsp/boot.rs          |   9 +-
 drivers/gpu/nova-core/gsp/commands.rs      |  18 +-
 drivers/gpu/nova-core/gsp/fw.rs            |  15 +-
 drivers/gpu/nova-core/gsp/fw/commands.rs   |  60 ++-
 drivers/gpu/nova-core/mm.rs                | 270 ++++++++++++
 drivers/gpu/nova-core/mm/bar_user.rs       | 366 +++++++++++++++
 drivers/gpu/nova-core/mm/pagetable.rs      | 413 +++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/map.rs  | 338 ++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 307 +++++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 431 ++++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 242 ++++++++++
 drivers/gpu/nova-core/mm/pramin.rs         | 489 +++++++++++++++++++++
 drivers/gpu/nova-core/mm/tlb.rs            |  97 ++++
 drivers/gpu/nova-core/mm/vmm.rs            | 317 +++++++++++++
 drivers/gpu/nova-core/nova_core.rs         |   4 +-
 drivers/gpu/nova-core/regs.rs              |  54 +++
 22 files changed, 3643 insertions(+), 349 deletions(-)
 create mode 100644 Documentation/gpu/nova/core/pramin.rst
 delete mode 100644 drivers/gpu/nova-core/bitfield.rs
 create mode 100644 drivers/gpu/nova-core/mm.rs
 create mode 100644 drivers/gpu/nova-core/mm/bar_user.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/map.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs
 create mode 100644 drivers/gpu/nova-core/mm/pramin.rs
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs


base-commit: 74a720e00dfbb3ab92934660b4692b90331623ac
-- 
2.34.1

