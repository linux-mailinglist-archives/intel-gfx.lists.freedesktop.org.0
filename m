Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJmiN1Rz3WkgeQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:51:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1453F40FE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F4610E554;
	Mon, 13 Apr 2026 22:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="so6zbIw2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010014.outbound.protection.outlook.com [52.101.201.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF2010E550;
 Mon, 13 Apr 2026 22:50:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRaMlx+CDnnE5cXqSVhpRlR/nNvLMQuAd4idpqXpLk4P2m/MbQsdSAqePPtg2Qh85fvHYK8+BayAFNmF0ywkF4KMtp/tOIUqP1I/S+pe6XEgwLeJZ5Y8xlr4Hlv97ZELXVfTKvfrw+wLh5znlLonlAOWVOQqggz0GmOMo6twszBFFjMfXEXK7ojqdTQ5EcAWZT2Yxatb1dW7knXk+KqF13PCUygAvV3+BndDb+4M6gR8nhfWdzHlC6Aut15PTzIIm4HaS1OEz1B6u/zVyh3jQgyd7mdMJVIl6hUVPShLnD8eKGC9DEHeQwvUXjfWvJWWURWIiisJehcKHxlmVHeSJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySp9Df2sjx4MlIH0GYDivwTNp2bWFuedA+IYky3W4ws=;
 b=ewxJ3iyJYXpYOgTcdSvBEfKo3MCURJKb6uHYnMmMrHRqS8NrIVsM5AAIhYfOJTB336R3AtjSKvjahhGORHmNMitXNMOdx7K+BsP2DDPlghAFlbtIxC16MBboRhwtn0kpQ7InBuvEsP8ZmS7gbpQKCCC3dt43ETi+JQoZfuFszKi+WHX+BL2h8joECBdOeWaDrPr3/eGMmVRp3tHMO3wgGgkUYeD66+G1LYUarMcRJ3HPS6XuVxkyoMWK3A3vN81IB7lO3x2SinDWW9JVOa6a6Lk4rv2fChhTQk40CgjI9rgGRQQT+mBr0oEthhG4N5PHDE5MXIfGWDrkcibFJj2qHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySp9Df2sjx4MlIH0GYDivwTNp2bWFuedA+IYky3W4ws=;
 b=so6zbIw2zubRqnbTW1hfUU8p7Em1AY/Q4kFaDjycniK5iOtQd+qCmOfg1Zs5zcaJZRCNfdzrp3x1SiD8jAAAd8qDGC64hKOYG4IsWRMIK6VW3XFGu9R0ioWjQeCjoybx/AOmmPkwn+alZx1IoU/jy/ra6EKYkUEXSJMgRauuoBbMuEMeZEZe77oZV5IkdGL+JeSZ0Ourm655KrUo/4ux0nsMgQsoPya0sW2hFfJtQJB/g1Vaw+ibnxl3WxUIWbfZ64rqj8e9wJwoAWauH/uWr2gL6n30LH1dSFdMtR9IGK7vX1MRaYytFB4ZjbfKVAYQoIXM1S4UJoWeRN0zUsc0hw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 PH7PR12MB6906.namprd12.prod.outlook.com (2603:10b6:510:1b8::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Mon, 13 Apr 2026 22:50:46 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9769.046; Mon, 13 Apr 2026
 22:50:46 +0000
Message-ID: <02211cad-71a9-4509-804f-39220eb63311@nvidia.com>
Date: Mon, 13 Apr 2026 15:50:42 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Joel Fernandes <joelagnelf@nvidia.com>, Danilo Krummrich <dakr@kernel.org>
Cc: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Vivi Rodrigo <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Alexey Ivanov <alexeyi@nvidia.com>,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
 <1775730646.3752.4760@nvidia.com> <DHOKLTRRIX2Z.1YA9X0D0X21K@kernel.org>
 <acd38f51-3acc-4dbf-9929-50187dccec82@nvidia.com>
 <56526b93-72a3-4b07-9aa7-7822bd561cd5@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <56526b93-72a3-4b07-9aa7-7822bd561cd5@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0008.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::21) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|PH7PR12MB6906:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d86338d-b258-4f47-72c0-08de99af1967
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|18002099003|22082099003|18096099003;
X-Microsoft-Antispam-Message-Info: m/5f0sbWQFkD/RoEFgpT+s31B++OD5wk3a2vqYqv4Y8VA55vyuKhvhl+mg44UK/aoLLNqTuC1Q73QxF/r3ItMGTpqAYFC8AvqQ+CwRm+x9mLEtQwtd3WjYIngTxDwGt/jzhgmL02WOaazfdkcqDc4Y7l0mbVFX2jxovWIAwPOUmFbDt7k4DyEedzQiDwlGJzEFRp2BahM8taxvTsEiXl3jvFlKnR2VbNzvBXFgZG45NLfGtgN1gyL4RzJANzvE82DjOlg9zb7KdSr/UoQyqVdcicb7VaKqC6oI20BG1UGoRVVnkHuqr6dswgWlxIv/AKMT6bK04k15kT54bfN5Yls8bYpj2r6oTYelev1VQbPpkXGXp8CgCYeHUKNlD+oD4MN/n9YwOjaMlCT1pNh5/jg6M6zwWjpI58U4PDyvwb/v7s28Ms7oOQEJ3Lx6B1jydpfDbM4M7Gh/AFlKhobpBYozkVJd87+au2ZWZfBB6WJuuWSy05mEMCKXy0qQJTtsQuvIo+LOk5KTdiOkoRKrgPztUT84dMaRsut6Ob6nt2HW/CgicAV8+BxbpBDjOadnE//SOfsP6GeZxmEeZUnr37MHEEGHNTarWn/35x1zsQC5p+P7cASGn//Y0U20M5zZqnqOY5adDbrwdUMN8ZXDJ/28HVmhEOAz6nNdV6DcvgXUSiSAxGHyzDtJogKXomX7d1VxJOs3RsHEluIKsK2wTym8B68HOqtYb93t7dEZcl+uA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(18096099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVFFNi9rVzRzcm92R0F1MzJ6QWpESGI5UXNrRGVLNDhYc2FkYitzSG5wZksy?=
 =?utf-8?B?ek9YSDFXWlhMWVNWL3hzcWswaEFRQjZmVldBK2h4ZDJ5WnF4eW5QQ2ZOVVNM?=
 =?utf-8?B?aUl1RXhIZkdOd2Q5ZHNrSTJqaDBqWVZhQ3VxcGZybE9RdlphTkhqd21yQ1RB?=
 =?utf-8?B?SFdhTG55NmNWaTlKTHNCWDZ3RVkwQjRjQkE4OHY0N28xNFdObWtKSDFMM05M?=
 =?utf-8?B?U0RWV3VXcFdqRmg2ZjJzd2VsRVFMUFlQUHNGTmVBZ3NuU1JCT0V0SXBWNlhR?=
 =?utf-8?B?THh1ZThCWmhVZWw5OTdtRWZGZGpxdDZET2kyQUFZQjBkZkdiaWJhWWl0Zktw?=
 =?utf-8?B?b0FuWEJ5bzVjTjR2bzR2SWJ6QmxvKzdvVjVJT0gxc3c2Wjc5RjREMEk3dnU3?=
 =?utf-8?B?TWZhMFBIdUhRN3d0VkJqbjFKcHhNbTJhQzBjY3hTbi9FZ3hZK3FXVEg5bnU5?=
 =?utf-8?B?NVNZT1RJRmRrRGMzVHpGZ0t6K3ZwOFUzRlBrRmlwYVVvUEZIajB3SkE3TTdQ?=
 =?utf-8?B?MWFDdnNmMW91R1g3bnZXbk9EMktxcUYyZC9RQUlZZGlPb3MzSFdKRFZXSVpC?=
 =?utf-8?B?MERtWGVDVVhSdmVQZ1IxdkxaWTRGNXVmck13Y0VNY2FKMjh6elJxOGxseUJx?=
 =?utf-8?B?RkdKRmZQT0kxV3ZDZzY4S2JOTGZWOW84SGFaY3A3Vko4UzFYdTVUWVhTZ0du?=
 =?utf-8?B?RW8wTVNOVmNDSk02UFhQcGxRdXFFRGdEck5YSGR0Q2dsMU1EOCtzelNVRmhy?=
 =?utf-8?B?MHJLbEJZSC9jOWp2QXdyNS84U2VkSzVtS2NNUGRvUkZ2WkVta0F5M3lwalhl?=
 =?utf-8?B?aWxRdzM3aDQydG51SkVsVkxZcXlXZUN2SUZRVWhHVW9GZ3ByVUY4K0xQRUlS?=
 =?utf-8?B?aXdxdTlWSFc4NXhFWXBpTlVCZ2J4U296TFhZVVNyOCtWTmpEdGN4S3J2d29q?=
 =?utf-8?B?M2dJMVRXQW8xTElsU3J3S0Qza3d0QUk5UDA5cEpvKzQ4dUJ2cFFNWjVwbi8w?=
 =?utf-8?B?Vnl3T2lTUlNPNUlHY3ZLcHQySHliOWlzRHcyTG91WDU5OVFYcFBSYXUrczlm?=
 =?utf-8?B?UE9NcFFRTEdIb2c5blJzemlEVzRpS3IxanlIYVBFN0o1RVhYaHlXdHR4c1Mv?=
 =?utf-8?B?MDBLekEvL0NnS2FMQ3FuQ3Y0RUFtS05tV2p5NjNyVVFVd3pibCtrd1FJSm5K?=
 =?utf-8?B?aFMwb2R2VFR0cVQvRjQvdTM5bzJoSmgxVTFVajVYNG1mejBHWFI5Sk1FVFB0?=
 =?utf-8?B?WGt5WXpUVjV3UEpHb05JSVJuQjRiWE5QM1IzQnRrM1BRVDB3UGwxdlBDY1ZV?=
 =?utf-8?B?cEx6VnJBdDhrMUdwNTNodlZDeTJ3L2lIZ1h6U3A5ekVEOUZBOFZOcEE3bFJT?=
 =?utf-8?B?ck5VOVVIUW45TDJZVm1Ydnh5NVFEc3hQSXM3SjJ3RktvZzBhdW9KcmFWeWFL?=
 =?utf-8?B?WWVKV2cxQ2h6S25KRlZnQ09WNFJsbCtNaFNBcE9qZFpLMVhNYkkzNWJ0VEdh?=
 =?utf-8?B?cWxyeEJkYlZ1OGc3Z1FZeVg4YzBWWlZrUWNIc1ZIY0trUnRjWDVWZ0FFM3Vo?=
 =?utf-8?B?YzZrUW5nRjJta1lIcGlRKzduVDBrZ2ZUQS84NU10Uy9xU09VSzNNNFIzek8w?=
 =?utf-8?B?bXBFQUhNaVlQLzNEa3FVaFIydnpyTFhvaG0vMmVNQzZRN3lNc0FPRFkzc3F2?=
 =?utf-8?B?VU96TkFBRFNnNnBaYllHUTZMcVpuQis5NkF5ZzhuUXNwYll0SG4wcFlKb0hZ?=
 =?utf-8?B?bnVGbFFoZjgxR3FobmlCa1VLaG5TRWl5anptbkJVTHRLdkdpckl6WFNwOHpH?=
 =?utf-8?B?aUNvM24ySGRuT2o2YmJjeHg2SXV5eUlFQnpyRjNkdDlOMjFaU2dLNUQzU080?=
 =?utf-8?B?dit3YjVCUjhqL1FabnRUY0FSSlJPSGpySTM1TzZHcnRRNkI1RC9WSGcrNkhU?=
 =?utf-8?B?TEFsQ21NVldLMWxXNDJKR3A5U0FyT1V0SVZJRzNUSzZjdThCVE1hYkhrTUZF?=
 =?utf-8?B?OUV0YmF2RFV0MTJ4cENIRHk2T0p4OExhWTJCdXVoUXJTaFdkTzlteUpWb1JB?=
 =?utf-8?B?cmxNRDFFaGNBb2xyb2JST1JCNmk5eWtoeVZXV1hsd0hwdDB4RFVISnF4UVdK?=
 =?utf-8?B?YUZGSEt0ZmI1VDRHUkc4T1RqSnIySExCcjJsN0t2TTNsUzQ4U00zRFNMWlUr?=
 =?utf-8?B?dm1MUzVHWkJvdld4ZkFodUUrWEdDVldxWjNLcUFZWldNRlNoVC9wdk96aWh3?=
 =?utf-8?B?Zk9BdFZ0Y1p4NjZ3OG1RYnFkaWZxN0tLRlVyT2ZhVnc2elpPRjBkVFRuVmdJ?=
 =?utf-8?B?NTRFY3BDbDBOZWNHaEhJcWtFdWJ1UDhLMnA4dC9IOEpTSVJ1emNIZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d86338d-b258-4f47-72c0-08de99af1967
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 22:50:46.0049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJFP4rwsAFoOIr2gm322ZrTeCsvvVoskmxhPwN2ZqhhfnKG51OBIRFV2TEyN1nFX3GwT2H8aeA7as7QaH0uASQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6906
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: 8D1453F40FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/26 3:27 PM, Joel Fernandes wrote:
> 
> 
> On 4/13/2026 4:10 PM, Joel Fernandes wrote:
>> Hi Danilo,
>>
>> On 4/9/2026 7:00 AM, Danilo Krummrich wrote:
>>> On Thu Apr 9, 2026 at 12:33 PM CEST, Joel Fernandes wrote:
>>>> Since it is 3 against 1 here, I rest my case :-).
>>>
>>> That's not how I'd view it. :)
>>>
>>> Anyways, in case I'm included in "3", that's not my position. My point was to
>>> ensure we keep discussing advantages and disadvantages on their merits, as I
>>> think you both have good points.
>>
>> Heh, yes I actually *did not* include you in the 3 since you sounded to be open
>> to both. ;-)
>>
>>>
>>>> I am still in disagreement since I do not see much benefit (that is why I said
>>>> pointless above).
>>>
>>> That is fair -- in this case please explain why the advantages pointed out by
>>> others are not worth it, propose something that picks up the best of both
>>> worlds, etc.
>>>
>>> You can also turn it around and ask people whether they can tweak their counter
>>> proposal to get rid of specific parts you dislike for a reason.
>>>
>>> IOW, keep the ball rolling, so we can come up with the best possible solution.
>>
>> Good advice, thanks! I will try to come up with something that is acceptable to
>> everyone and we can further debate pros/cons on v11.
>>
>> There are some merits on the alternative proposal from Eliot/Alex that I'd like
>> to explore while seeing if I can keep some of the merits in mine as well.
> I think I found a nice approach. IMO the MMU version dispatch does not belong in
> Vmm/BarUser layers. Those are version-independent code. However I agree that
> doing version dispatch at every low-level page table operation is a bit heavy on
> matches (if we put the MMIO overhead counter-argument aside).
> 
> So how about the following approach?
> 
> PtWalk, PtMap and everything below it are monomorphized. Vmm and BarUser are
> not. Version dispatch is handled on PtWalk and PtMap entry points.

Conceptually it sounds pretty good.

> 
> I think it makes it cleaner and splits the code up better too and the
> organizations makes sense because the version differences are related to page
> tables, not to generic concepts like Vmm and Bar.
> 
> Thoughts? Here is a preview:
> https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=pt-traits-v2&id=ff22ba64f729f9f73258777231763a7b9804123b
> 

Probably impractical to review that here, so let's do the review in
a v11 posting, I think.

thanks,
-- 
John Hubbard

