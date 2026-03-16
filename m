Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDrcL/8CuGlpYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:17:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A13C29A2B8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1B510E134;
	Mon, 16 Mar 2026 13:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BVNj5wXy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011065.outbound.protection.outlook.com
 [40.93.194.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CB910E134;
 Mon, 16 Mar 2026 13:17:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P49E99hz5zoPuGosXixZgjHA4mAD2o1kjDbVYdn3KpxXanv8kwyyHGxBJr2iQBUzcW97onlQAH6Qs2NuHe3A70W8OUhVR1G1LsHNffcFoyNfeuOCVstz9CumP2qujhI4Iz1fAEx4bc0HdULTo83TCqABZohn2tT6L6VtbjVK6VsYtODfQvhYk+ZI4m2Q89ZrsO0km8FNWETBP9qwdkN7tPpvDaoxr45CF994unxRi+M33c9g0v/Bjgm9yLCpys+ohSv1C1bMaOlT1hlwgovBjPO8VYhaHy0f6fOZYs4N+FrxWhAOJLbR1ij0e72YxsmTlmog0qqV/SRRlYmV1M0HQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fs9LEo4h9xcFS3V0Zt2a7yQKgq/VVzteYJ1ePBE/EhM=;
 b=cRU0xhDjFJSWvmgjzLCkyyjFH/P5V9Hekq/NakmOUup3XsjMTNF5kvWZJg2mzXzZwFt+ljR+gUCn2HziR3iLGZQv7TJxGC0gtxWYNk9i9SDLT/oegAUa0uOXlCO0rQ8YqFB3draNRWHSYKW6900lqeyrmDLEa8wzniDy9bs1uis2BHtlMw1FQzB+KREaHP09VcAoKU2wSWY/sqDcD+qMCn+e1vGTT1AKalSW46YRPo7aCwOZCq0EBVeF/fkhM6DUEWIfSKCWpfxZomqI8LyTGLKxGRvNve00srBPbowARpHYuXYR2xYD5uehkCEQR+TOPEeyzRUIf+oXNkrD2xFVkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fs9LEo4h9xcFS3V0Zt2a7yQKgq/VVzteYJ1ePBE/EhM=;
 b=BVNj5wXyMM1mswFAwsS8ciRf4UzMMZOnWu7vnuoyKlablNvkVpe4kY9E+gciszsyujnxWtaN5AENoec2DUWK/EUhuVakN8vTBMv9k/URzCRCP4m6o2ShIm1E3YC7g9XgITZY3tkwURjcauWWAnhW5W1oGugRZsC3+CDSARS+D5/l1ym5mS5a1+JXEpMkmm0la6xxrfbeGh/SHHnCpqWAWXUGXBtsUFotpCo8hSmc/5ELTl05VAME6nt/IL2VDEJ6uW+q/HF4sK6s1FkxesRBoa/RfprnAels2hqYaRbxWI+udJXpd3x5uSjOoSqRBVg3BBlK3+IC6W5mRLEU+Qe6Tg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SN7PR12MB8060.namprd12.prod.outlook.com (2603:10b6:806:343::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Mon, 16 Mar
 2026 13:17:43 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 13:17:43 +0000
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 22:17:39 +0900
Message-Id: <DH48HYK3BB3G.2JZ3N4JG2HD5X@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice
 Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>, "Nikola
 Djukic" <ndjukic@nvidia.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan Corbet"
 <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Helge Deller" <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Boqun Feng" <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>,
 "Alistair Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>,
 "Edwin Peer" <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy
 Ritger" <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v9 02/23] gpu: nova-core: Kconfig: Sort select
 statements alphabetically
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-3-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-3-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4P286CA0076.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:36d::10) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SN7PR12MB8060:EE_
X-MS-Office365-Filtering-Correlation-Id: 56c397f1-84e9-4a0c-73fb-08de835e6835
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|10070799003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 8XzEoaQUmTwMe9SKL438XKu4fo1CcYKkL8r92Q7uejwaooMVlmH4zOfOd+SL//yjAix/8ImsXBHJA9MID8f0O+G77aEU+pYVI62UZbYnT7wAGL+9OKPdCBaNB7ktwKSIOPHtoJWJjI9yqh5W/bITb7BetY1d4nkKGbwP+lq6yrkHxr1elAin6IKYQympsz5VbARclbfxDW9f28M8eJXPANNgRn6wAS7ik11zYkGROIXd7verQVWm2t0NdL8icMN+AGLtEYTtDoMk5lKPmKA1W0IOg1bQG1mv9S/WdqfMNLpkgRmDXPOMgHttAUR36YV9k2elvMMtQc3PgMiKqP3rIg7YhJHcEF2ed/M2VYboQRjOpIzqD0LYpZHP47r6ejv8/pdGUZg0VjzVF9oAGerK8a5t090Qf57v5dN7Gd3jLfzKFAOfYkjeuhpJMZAqWti96SKjDqniiLtUPsBWbIEstuYxtbEk/3X7jltcWO0Jf4IrkblsrdhM7S+wd56z1c+qNhrUckHHjOGYOKpU7lspBiUxqX5iUEhnkb13uNCwzZe6L2jSbzKPazCPIOxYyCIwpOMM2tBIyL1X9elyK0zPcQ94G9WZcTqe35RCrxw5odIR1pBrz8X8Ar/zpDhuODgZPz5Y94aLl10+VU1Tjd9mAkP8UWMB1Cxxy8+Llo2cvh5s2me7WBc/+rW8GyxMk8mcFpgi6fDoMS9O5bo2VhloEet4gL4liKPNnxjwOTKmIRY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(10070799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmRvVk8zNU1XbTZhK2RQRnNzMGdYR0FYcHJTV2QzRVF6ZTNyS05wSmo4V081?=
 =?utf-8?B?M1I0STM0eW1nSkVOcURxNW5mbDRrcU1IdVBDVHRlaXhpY3VrSjl4SEQ2UmY4?=
 =?utf-8?B?T2tqUWVjcDlZcjFWZm0yWVdFNlJoTE5ncTNKR3QraHluVVZPODRlVWU0RmNR?=
 =?utf-8?B?Q00ra1kyWFJrQU1zeXg3ZGp5cm5xeExDL0FxWWpIUFVvMXhXQU1mam5tVlpo?=
 =?utf-8?B?MEVYWENNOXNhQzBCcDNMckhKVEJraU5BWGpHQ1lHdCtJVnZTU21IK0Q2QXoz?=
 =?utf-8?B?VzNCaE1TdGxaSWpzamxmT1FsdjdoYlVFRlh0aEVZNFE4a1J6RkI0ZkhrUUFZ?=
 =?utf-8?B?Z3dmRnJ5SEg0ODRUdHAxaXlzWHpzaVpzTkw0dk5TL3JsNzJQamVmczE1NjRi?=
 =?utf-8?B?c0ZyMTFQTTN3RUFUZEZ1REJQdHZCeWtGL1V4RW84WGEvSVF3V2pYSFlrdkhz?=
 =?utf-8?B?L1g5QmR1cHZUeEs3Mnl3WjFNdlpFR0ppeXptb2Y5V3hXNGxvWGE2Z0g1UnJR?=
 =?utf-8?B?Qlo4Ui80NFNsd1NOVkp1Y1Q5ZW5IbGV4cmd0bGkzMGk5YzFyR21nRnFQeXRY?=
 =?utf-8?B?VzFvNm5sMzlLU0EyWmlJQ1JSOW11b29acU1Va0JURFdmd3dsQTlLekdNcFZB?=
 =?utf-8?B?ZE1jeVRKdUxvbFpRUm5sWGVtZlE3VVhFa1h1Q0JjbHREaWt2OHZFb0JpbHJh?=
 =?utf-8?B?dmZXaXVwcDF2UjNwZDVzUDdaMHlhbldvYk5NYTJuL2dtVDhQc0dnOFA5WTY2?=
 =?utf-8?B?M1o5bjl3Mks0ZmJUMjN0M2JDWTBDQXdvU1FnbGdlR20raDdodDdzNU9XSzR6?=
 =?utf-8?B?WVpWQkF1VG5NcllGeUxEc09NQVdaMEU5eVc2Q2tPdjNUdE1Pd29TeTV3ZFBD?=
 =?utf-8?B?WG1LSGJXUSszZ0FyZFZJZnViSXFmT2E1YmhBVzF3emtBWTVEUlRNMi9oYkR2?=
 =?utf-8?B?a1NuZ1Y1amlUUFZrYTNNLzBIU2x2bVFobzk2eFZTNTNIeklYT29jWnRMUVBt?=
 =?utf-8?B?dkRMbU1GOHY5M2hhbURtTm0zdGJzZ3Uvd2xqRUozRFBwY1liQk4rUk9raEtr?=
 =?utf-8?B?WGlRZEJkYzZyUjRPdEpwOXpEVSt5c3NjZlkzNnZGaGZTaHhoYWkyRG1Ecmk0?=
 =?utf-8?B?MHN4cGZTc1h4MlpWK0FIbWJqUVcxeWQxTjZkc3A0Y1VEOVRpQmZNbHkvVzd0?=
 =?utf-8?B?TFRtczBrMFlMRm1tWTVYTWV6RmphWDBsQlRzTnJBdUV4WG1rOFdiM0ZUWWFZ?=
 =?utf-8?B?Y1A1M294QTljcTcrc3RPdkRUU28vN01aK2tlbWhocTViV3JDd29kQ0NhaVlW?=
 =?utf-8?B?anRoc3Irbm1jNUM3V3JPVTVLRGtYbHQ3SHIzTnhLK01nTzR6c1VIcUZVNTVE?=
 =?utf-8?B?ejVjODJNOGxsM01nZys2Sjd0aXVGR09zZkpFSXlLZG50UlFXZDNyQzZiWVQv?=
 =?utf-8?B?RVhGQkY0K28ySjVhbTFwZmsrVFh3aHNKQ205Y0RWSmFhV0plei9lSUE0b0F2?=
 =?utf-8?B?ajA1SUtGMTNTN0VzTDV0QWx1d0ZxUEZVSC9xRHhUMVpnMEFKSXRUay9WVUZU?=
 =?utf-8?B?NFZoUkJzRm5COTdSWGFyTTFlREFwWmw2cGtlQXgxT0E4eUxCZUpJNkZ1L2g3?=
 =?utf-8?B?NjlkYW1vM2tnd1JwMWtVMkJmUDdwcXVsTHF3bnJuTEpQVUlVQ2xoQ3hTRGxt?=
 =?utf-8?B?TDlmSzJsaXcxNzZmcStXYVIwY3M2MmR6bDVaa3V4RTZQS1dlcm55WlRiMG02?=
 =?utf-8?B?MUFqU1NTZ0pDVHozdXhVbVFVUm9jeG5jenNDcCtpOFA2YjVTckxjT2hrcjdH?=
 =?utf-8?B?QUFZZ3FZb1pWaHFyK3d2V3N4bTVxUWJteWx2YjQ5cEI2VTExbldyY3NSRERY?=
 =?utf-8?B?TE02NHVwMFI2UHROSkc3aHgxR1greERheVllTDZLbGxJWXVFQmFJYXVzNVl1?=
 =?utf-8?B?YTgyNDlkYlZoWis4clJrQnZtdGJPVE1zeUZLcUsrQU52cjQ1UzNGWWxZanNl?=
 =?utf-8?B?MnU3NWVyWDFpSm83YVRxQzNtbWdwTE1xTXNIcTQ0eDlRNFg1TE0wNHpOSnNj?=
 =?utf-8?B?KzRvQ1hXbTJuRC9BdjRaN1MvZklwS0NWeFhsc0NxNmVxN1JNVFB5UGN2dFRO?=
 =?utf-8?B?WUVvT0NsMFNYTGdHdkxFOUpiaXZyTFFlZTRvdkV0bUYzMXdwdUpHcHZtR3lS?=
 =?utf-8?B?cm8wYXR3eXVJVExwVVdxZWd1R3daZmVUZ3FKM0ZBL0syeWNqRXAyZk0wczht?=
 =?utf-8?B?UkRidysrYmxnczd1cjRvNEhsWFVISklJay9zTGdhdmdqWWZXWmFCZlprcWVB?=
 =?utf-8?B?ZkppZS9vUUYwbElpWG82MXI1c3B2VWdTUkx0QjJNcjlPdldXRkdXTEUyTWVp?=
 =?utf-8?Q?9bf/siVHMw1JbBSFjGXxlJyw60FsE/rGRvg7AzspGMP5+?=
X-MS-Exchange-AntiSpam-MessageData-1: aoSM7j1fgq+6iw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c397f1-84e9-4a0c-73fb-08de835e6835
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 13:17:43.4242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XTxPxzZOZtnUcsrXkt0giphwfKIP93J12dIzA47eA0inXCvqSL2+BV1DyrL8XxikXBYpMWzx6bvXP2kPocwScg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8060
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5A13C29A2B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> Reorder the select statements in NOVA_CORE Kconfig to be in
> alphabetical order.
>
> Suggested-by: Danilo Krummrich <dakr@kernel.org>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

This one is already in drm-rust-next.
