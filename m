Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAbeFNm2uWnJMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:17:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B186E2B21E8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4106E10E64A;
	Tue, 17 Mar 2026 20:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="slWFmpqI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012050.outbound.protection.outlook.com [52.101.48.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9928610E637;
 Tue, 17 Mar 2026 20:17:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dhrf7ZtS1Gqe7TYdI+RrSHBy/dh7lZo9Wz1vBZkFFZmCTDFba8RYxH9W6Cfx3+X7lj4GZjI3Uhjiq3nxcaLoIaQAQkTwV1WhT78KoDeeUBrG4a+CbnmLdOuI3iuuRm413Oszk1f50zMCNqEYVq5qG5jhJ1k/TmYqP9dDOCNoeBhtojpa9XIvJj4FoQRiravajXmKOwH4j/C/2gmAMGeWnNdMwEnNNLR51TRaIkKRMZfDZ+RsYC7vqh4+G5nG2uAwCliZqkLfvOUrzPsmEO1UEpIFIky995Y/BSnjsb5MsahRkvwYVHCvrwnqp9fZwj6IUJw7uDUTi4UdIq/rb8lY4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXs4cdPAGFt+2rPvM4Ze6Y9DeoQupSZ/8wVDeRmKDUQ=;
 b=O8kjr1lcunJRxTCRuakqCwfEut/UGCXfPUPligqijtecbr0i+o/lZX4XsjXE6+YXcunQQFbqO0injFygMTeZXDJiGya+nH1jQ/R7TRvdfDK39co5yxYxTh7iZyEoqrdmjPo+vautBKw+TZvaUGMiYXgw71NbtynEX8NFqGWCsz6MqwhRdgtGIc41WmASpPKcVQMOlqHydDMjg+hD3U+qfxZphSxp/fceFciG6oaIThUtwR7Byl8mzPkz7m5n2XaqFRTotmu7hrszCgNWbjk4BOyyHa0PjBsuyIRzAn2M0lzKiyr9nrgYr1sIQnFcaZNIKCvFI5tSYsDBBTFBeFbIyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXs4cdPAGFt+2rPvM4Ze6Y9DeoQupSZ/8wVDeRmKDUQ=;
 b=slWFmpqIZiDV65a/aCu0M3yxvzP3+9TOhK1Ot+2PD3Y+6BDf2oiZCBjbwkx1x7+M7jPdNY7nb8ZrzLQpCRLEkRCcWCHCGYshqBaZZb8K2IegPdwj50iPZ2Rl9y1vGYPIZNIvAzbT79pLthE4cKkJzo+RjejksYa9g6kIyq2RaQeth11iiYmdCr8zHcIukquIRmErjmOR67I6HHMsYfrde4emMVch5VsjpeBdrzhEH8ePH3KTrI7Df0RCR5S4Yga6FAibVGW8CAoZRMuvm/fkZEz3ZxYLu7oC4cciK9AHbhOlOiSY27XWVB57BKgJd0wVhY1snNWkaydHIMYPIPbnXg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MN0PR12MB6150.namprd12.prod.outlook.com (2603:10b6:208:3c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 20:17:19 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 20:17:19 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Alex Gaynor <alex.gaynor@gmail.com>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 Nikola Djukic <ndjukic@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
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
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v13 0/1] rust: interop: Add list module for C linked list
 interface
Date: Tue, 17 Mar 2026 16:17:09 -0400
Message-Id: <20260317201710.934932-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0185.namprd13.prod.outlook.com
 (2603:10b6:208:2be::10) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MN0PR12MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: fedaf7f7-983d-4032-c3bb-08de84623099
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: zZMt5jzVWfjBsO2dSXM04kvShIJLaJWtyYsRwww477WWZGC/Z8dAwYJJHvPV0oE+rujfLBuhggK0bj6yRtTncJ2ZpZuIPyBAwH8DLZKNhESgT8O7H5bCghk+y8RWQ65jS/ckKfa8HsyD/eUpiXf0Cv3siszPUp+7bm5LlzeemGTX3dQ846YHxWPNdf72e9pSBtrIHJRb+ZaXp3fh/nHXv3UIddMx8TbGrhG7XwqqQQC2kntYFKXpJ9ZbfAKl85WfwMBi+kXxk8m0fdntMC6C028BmtWlifHxOhm9FToZfqYicmE14RUFrr1bQ+ABiJe6JKCxwCIPdF8CFX/bmZR37vXxxk0yAOaw+4hO9tttYLKNlkzZlZnYgka/klzg+HId2K0Kkn8+nJMzXbahRVvXXz7RjxVDU9A5avwqMVwTPVGCn9BuLy81TMoRkdhCp82ZXetDAyIuky5o2nM7f6xKw0GtolMQbywlE9IuymkkdDajSWl25JPFdKscY1qbgVeuagknybS5V1VblD28qwOSPXvWNWTV95lGrD95VHKNNhJ18duniawITj6KZjNvKkioyz8Dn0DXAH19JKnDFOWGS9A7t4Yy+j6xOsCsrfBAW63uLNLrNOrLCPpGuEHxtrJ98rdf7DR+/yCmDmJI3A9UH7oxH8zkiwAAd7qx0bbuKIA7SS7tdiitUtHxOf3nYZ87FaYX88V4ciHD2LV46llfOUWNJI4aMf4pIszWaB7trAG+B8gHXY/Py+iCORT+5BCh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H6sMBesHMVL8z+VjwbGhkhZO0qP+45YE5cD+05NH57zwMWLqg1YUSps4X1q7?=
 =?us-ascii?Q?/Tn6g179+LHsvfbdGuE6j3j0+dHjfZCpC+7gFZTOJEWaH8+j6SI2Xvfyb/Pq?=
 =?us-ascii?Q?u52HU5YsmT3m3bTBulLL4G2MSjbltWTgy1dVl/ngO1BeRMOAiPvKVr6aVsgE?=
 =?us-ascii?Q?VQIMBso6QGGtEP1rhPMLzwpmYZIFMYvTe9rxjUXLZMeshvF6lGAHRwPM6uUW?=
 =?us-ascii?Q?4wmxM63NoTuOibufA4/4zepKccrG1gVtW19Wt5zzjHLRWU3VtngIciX/sExv?=
 =?us-ascii?Q?IOjvxXEXYu3FDMgHjl8via1aHiP59e+fAvQilAu53XBo7kZSjs266MiYR4bS?=
 =?us-ascii?Q?usnCVrPcuthxbFjnLgfKfO9H+/zY6Wx6SzXz06zQGnSnbyTCTNXfdOVLaFnE?=
 =?us-ascii?Q?60n92BkU00zErvt72pKKtRxOmTmM+uOJZEhgNXKXnO9rfBCxUCgZQYoUK06H?=
 =?us-ascii?Q?yWsubX8Es+56LJbC0t3c5xEMnVVyYIthGkp+uLspc3SHiFbB8KqdATZH899k?=
 =?us-ascii?Q?vS7Nbu7H10pxivPSd90tgM+yE1LgCG97ZLtm4h+cen3VH4cBZyDeSfYP5DE2?=
 =?us-ascii?Q?Jvu9H1+BKSWQTo+DgJ20rhuUiiqlVNPV8PhJA9dS0a0BgOu3tlBY7ByHd+W/?=
 =?us-ascii?Q?ohEgt0bgz7DPa4Pv6zKUuuGrEl8Wd+Iy3bDgM641ujB8Cq/ujzWCt9jLVmRC?=
 =?us-ascii?Q?nzU4Hh2m0ajPTFTlIZOhxxEXvRGrrw4Ks8Cji/14F3AHA0vHSG+bSajAS1gt?=
 =?us-ascii?Q?J7DaHKlE6gEnU/DnKotQai8uv1Qflq0vKuWBMmx0S2XaPit/fqoRSTjmplHl?=
 =?us-ascii?Q?n8Hs0QHee2gRtza7n2dei/MGchIM6mY39+szhAOZXCQd05uf/tU3kDY7tjjA?=
 =?us-ascii?Q?LRhYU8u0EyLvKtMexaiT15JmjdjtUbG8tAF9CFnSxpAdEWDZSLvAUhEPRR5z?=
 =?us-ascii?Q?2nMV49zugZKB+c8wG9YvytAMC4/j/PtZUHksf8mdKEwmSgTAYxKt6Rb16hXd?=
 =?us-ascii?Q?Fw+U2SCBlEfJvWpE77BXBAuGeYuHfb8rOpGmfxpIsEPPI3Y/ZXlCGgYr0NFn?=
 =?us-ascii?Q?PvvrcvIXKWlqojp7cPk4DiHq+T3kmrYrmBg6aNX7BuHZi2Nf0olQ7iWNV9th?=
 =?us-ascii?Q?ylpSEdVKwTqUc6+YP/2dguzozE1B2Wg2SZtncAKS8DpJtvu62jYB8atoMPUf?=
 =?us-ascii?Q?X6G8grKwjxvj/TagZtXaLconv0+kaCKQZde4CPfO5AsbndZe82bgUHS8GVUB?=
 =?us-ascii?Q?3TbTVtIVBfHjOpUgTvaEFh8yudVggNQVcjWNjMlPkdcw/XEunXBAS8IO4AKF?=
 =?us-ascii?Q?W2sM/TAUVAzBW68czaTivQkbNwfRkGwoiVj6d+q3IeOu17FkhdBY0tXhJRd/?=
 =?us-ascii?Q?s8UtHkgDnrMv8tN/eQ1OJJq9i8eL2N2NBXF02/S55gSj1vZOXSIOQ9avEcPb?=
 =?us-ascii?Q?tgD3JiXqQ/GQdhc5MZbv3OWezJhrRA2RND8w7nYtWqsOP2FDptqlAO0VOsZ/?=
 =?us-ascii?Q?85whTXu6TRaeHX3bQM6hbYXKViALKbQ3IoktUhy38kUa7H3h21uLAtWv3ofQ?=
 =?us-ascii?Q?pKZrnm3IQXVVWhwAYQIbGOpxMnFMSsls3KvFKpioz95LEGAIhyNgOL9Gmw+0?=
 =?us-ascii?Q?4cKs3uT+rlYKNlPlyFNtjyLYoMPoQcqgrI2SVXiN2PVNytjcOiAHEKgHlMzU?=
 =?us-ascii?Q?Q02u1Z89sASreRcoDTt2hMhik2CaFOvTTBstxdLweXz/LuO1aZ3lg0PDtfUI?=
 =?us-ascii?Q?BWsNYXjasw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fedaf7f7-983d-4032-c3bb-08de84623099
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 20:17:19.1586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3HST6u0Cmg0537ogBvSqHGur9We0c4unwROHCEwNya9lwhPxYEXLfGq4de76iNYLjcmbchEF9SO4DhPYFwGDwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6150
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	RCPT_COUNT_GT_50(0.00)[54];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: B186E2B21E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The interop/list module provides Rust abstractions for iterating over C
list_head-based linked lists. The primary use-case right now is iterating
over GPU buddy allocator blocks.

This series provides the interop/list module required for GPU buddy bindings,
which is inturn required for nova-core memory memory management. This patch is
being sent separately from the rest of the patches (DRM buddy movement, GPU
buddy bindings, etc.) as it can go in independently.

The git tree with the patch can be found at:
git://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git (tag: interop-v13-20260317)

Change log:

Changes from v12 to v13:
- Changed interop/mod.rs to interop.rs file name (Alex).
- Various lint and style corrections, corrected Miguel's Ack email address. (Miguel Ojeda).

Changes from v11 to v12:
- Renamed module from ffi/clist to interop/list, reflecting community feedback
  that 'interop' better describes the purpose than 'ffi' (credit to Boqun for
  starting this idea.)
- Updated MAINTAINERS entry from "RUST [FFI HELPER]" to "RUST [INTEROP]"
  and updated git tree reference.
- Added Acked-by from Miguel.

Changes from v10 to v11:
- Sending only the ffi/clist patches separately from the rest of the
  preparatory series, as these can go in independently.
- MAINTAINERS entry: Renamed from "RUST TO C LIST INTERFACES" to
  "RUST [FFI HELPER]" with (CLIST) scope annotations for maintainers,
  following Danilo's suggestion. Note: There is still an ongoing
  discussion about the MAINTAINER file entry naming between Miguel and
  Danilo: https://lore.kernel.org/all/DGJXYEXCYIII.Z6FOAA8YYMAZ@kernel.org/
- Updated clist.rs module documentation per Danilo's review: generalized
  the FFI usage description and added explicit note directing Rust-only
  users to kernel::list::List instead.
- Implemented suggestions from Alice related to safety of CList wrt
  concurrent modifications.
- Removed unnecessary trailing comment markers from example imports.
- Added feature guard for offset_of_nested (Eliot).

Changes from v9 to v10:
- Combined clist/ffi patches into the larger "Preparatory patches for
  nova-core memory management" series (8 patches total).
- Added new ffi module patch: Convert pub use to pub mod and create
  rust/kernel/ffi/mod.rs to host clist as a sub-module.
- Moved clist from rust/kernel/clist.rs to rust/kernel/ffi/clist.rs.
- Added Reviewed-by and Acked-by tags from Gary and Daniel.

Changes from v8 to v9:
- Added nova-core Kconfig change to select GPU_BUDDY.
- Minor fixups.

Changes from v7 to v8:
- Various changes suggested by Danilo, Gary, Daniel. Added tags.

Changes from v6 to v7:
- Extracted clist and GPU buddy patches from the larger RFC v6 nova-core
  memory management series into a standalone series.
- Changes based on suggestions by Gary and Dave.

Changes from v5 to v6:
- Part of the larger RFC v6 nova-core memory management series
  (26 patches).

Changes from v4 to v5:
- Part of the larger RFC v5 nova-core memory management series
  (6 patches).

Changes from v3 to v4:
- Combined the clist and DRM buddy series back together.
- Added Rust bindings for the GPU buddy allocator.
- Moved DRM buddy allocator one level up to drivers/gpu/ so it can be
  used by GPU drivers (e.g. nova-core) that have non-DRM usecases.

Changes from v2 to v3:
- Consolidated 3 patches into a single patch.

Changes from v1 to v2:
- Dropped the DRM buddy allocator patches. Series now focuses solely on
  the clist module.
- Dropped samples and added doctests.
- Added proper lifetime management similar to scatterlist.

Link to v12: https://lore.kernel.org/all/20260306203648.1136554-1-joelagnelf@nvidia.com/
Link to v11: https://lore.kernel.org/all/20260224222734.3153931-1-joelagnelf@nvidia.com/
Link to v10: https://lore.kernel.org/all/20260218205507.689429-1-joelagnelf@nvidia.com/
Link to v9: https://lore.kernel.org/all/20260210233204.790524-1-joelagnelf@nvidia.com/
Link to v8: https://lore.kernel.org/all/20260209214246.2783990-1-joelagnelf@nvidia.com/
Link to v7: https://lore.kernel.org/all/20260206004110.1914814-1-joelagnelf@nvidia.com/


Joel Fernandes (1):
  rust: interop: Add list module for C linked list interface

 MAINTAINERS                 |   8 +
 rust/helpers/helpers.c      |   1 +
 rust/helpers/list.c         |  17 ++
 rust/kernel/interop.rs      |   9 +
 rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs          |   2 +
 6 files changed, 379 insertions(+)
 create mode 100644 rust/helpers/list.c
 create mode 100644 rust/kernel/interop.rs
 create mode 100644 rust/kernel/interop/list.rs

-- 
2.34.1

