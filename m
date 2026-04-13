Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMVjHmpM3WlYcAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:04:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958C3F2FF4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB35510E52A;
	Mon, 13 Apr 2026 20:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="RrlDPMZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013051.outbound.protection.outlook.com
 [40.107.201.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7871610E528;
 Mon, 13 Apr 2026 20:04:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cS0mo9SgCuUyosehFMbogi49ZMynWzhaeXG/1UFHplWqvdyruSCSGcqoa45bMC7b9tmrXOgfstgHHANGeE5R0wdcEoWBlbTQFck/4qiPKXcJItMub/WMrZ0v206/oIWRWOOWR89rd9ciQMaXhFOHlrA/HBQQGtRTBmwf48MS/i0g0kFGCir+ApDHY9reCvXnXRcS3GJs5n7V3F3xcGKcwloyS36M4j53bK+Nhg8hM+k+zobA7ptDX2FK774D7QrXNewCWOPuPuD4C191hYdI/Z5MLK67SyOiPzVNBM8Bhq7uS9QqqGBzMirNZiAMTnPxmIu3hOuG3az6HSlJVYjcfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uUMgseq8KDTfLRXR+B24PcoeYr/Jg8TkAMc8gBHyhoE=;
 b=jCo7PIyFffva/CQfxfrPyQ16tHOiYUWR6oZax537oBblW+mqX7Bt/gSL8RN5t1gESeXP0oQrXUxYjtFjTq6eBiIUybMwHV+jdqaPpRCnYwcVK+EfWDoJL0tdw5+1Yvvo4Aqtvfo/5K2FEPnsTpUT0/E1ZfIEgSOEUk4vn6mu2Um9u5C/1p5pAgoqLmJ/0c/mkQDroOx0ix9vXGwc0TYWOBL0R1TX0pYVShPcustktD2sE+8vPALIF5rsfMmgmKsvJtvyCT/kj82sA1QPGzZ1TrrYIWRWI6QPxYwaQ6yeTtwuW0VAjSXJ0MPMq0fLzqTQEc9RJtnFoYHkjpZ29b46Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUMgseq8KDTfLRXR+B24PcoeYr/Jg8TkAMc8gBHyhoE=;
 b=RrlDPMZMhOqEDzoUmH0gD8VwP2G7SNLSW/iG8eqhp73LCoo782UApRJhpoCruI3EQ5iTxXNjOi1MlVzlWP/sQcNiUqgEgENZWrZ6Lg9ZUM/39BtD0eTNfBHYAlomkrlQ8+1bmFWaV8uv3KQe7VfSthaeLmXmn9+GGyX4yyoOaj0vt9YEH2KUVhiAK71rvrnOCWa7Onyw9vgjFl1DVVlm1Ra8of9ydwZsZcxjmh/xS6tRsq1A4EI8lTSFcqf4YODC9kvBZtjOyVByeST2/gWe/eEI+bV08v1GYK9PrHTuXb9IA55rNQ7McSSOw7IfWVWNrBg2gecPQQ3RV3bixdBpoA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 PH0PR12MB7093.namprd12.prod.outlook.com (2603:10b6:510:21d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 20:04:45 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 13 Apr 2026
 20:04:45 +0000
Message-ID: <f3a00d39-cbf5-41e0-9c7e-8ef078328821@nvidia.com>
Date: Mon, 13 Apr 2026 16:04:38 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Alexandre Courbot <acourbot@nvidia.com>
Cc: Eliot Courtney <ecourtney@nvidia.com>, Danilo Krummrich
 <dakr@kernel.org>, linux-kernel@vger.kernel.org,
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 joel@joelfernandes.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
 <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
 <2f004511-61d1-4197-84b6-cddcdd275e55@nvidia.com>
 <DHOKJ3MJNO5P.SXKOAYKX13JL@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHOKJ3MJNO5P.SXKOAYKX13JL@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN0PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:408:e7::27) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|PH0PR12MB7093:EE_
X-MS-Office365-Filtering-Correlation-Id: c267056f-f409-492b-b33b-08de9997e830
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 3vBEb1bKBk/bsjCYpV2ugwbcix2QvxViMZCpMGnQLvG/X8vMidvA0qkM1rBL7z/S4NX5LrzTucJqWlpeYe6skV1itmmgnR3NUEzpdiksHCO96OV85wmseLpkqhd6xgs4mUMHlY0KESQ3NDclrvuAqmM5mhu1xNE4YDclTb8jYOiRynGg8pMwzBtRTc50Zib/B7TnDheAWPTK8QEryR8AP5yabfiKA/hGKMiJaMH6FfDzMRglg0T6qqQ3XJ58eWlJfLVd4EAXqQ/KLzGnSp+cPs6vg/vW+UenJ3toYknsVnjbehHJ5lxSlEaiC7flitL+E6V+gbiW1lVFQupYW8y03ZejMzJvsxnra7hjKy2+VGDEbVbsCGOgFaBTgWE0tkNVksvM6wCVMtZsP5cDU2bgUwF8d1PLay+qQW0rriPc8uiJDK0fmTAIMTtdayJYddEiyBbhDB7vWY8HpJKPAmrbESD9nFxHtndsbFA3Nau/ANshZ8q6S4LmFh5jJrdPuyo1M7cJT9d7uTRDUVaTmRPtRqV4uImM9ZO7voiFiQMx8kwmF8Nj6vZ7x07obXlRqHdFH/ANvcIbiOmMISXy5S2JWfRSo2VVJocTGWUfRHQOfUXmUjnkcnYf3gGEGK27e82LxaNOVuseKAyb74bc+wDPg2XoL5aJ0ocQUEfmncsqZYAe6pzu6RaVBFVXOL4gLouCBdvD9JsG0p3MtNWbY2zCJDfH9DmcDJSsABKflNedSlc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3hxSk5Lckhrbzg1N0ZJTU5VYitaMW54SzBSUytyWWVSMVlUazhsSTF4Y3NM?=
 =?utf-8?B?R3liakdyYWZRdjdJeVQ4aWdGZldWZ1NvZkc0T3c2anJiZFVpOW9QNXpIcjY1?=
 =?utf-8?B?SU45NWxrMjR4enRDRUFQTHpPVE5jU2h6QmdIcG9iS1l0cFdVZkRMZzBSMW05?=
 =?utf-8?B?VlgrUG9CRE9veVB6ZHpDc2VWSElpZGJvRFYyT3Z6NTcwMElXL3dNMi91cVZ3?=
 =?utf-8?B?MU5POHhQZ0Z5ZEhBT25ZaVByRGl3OHFFSVp0ZElsSEFmZU1Sb1IweXZrUVRn?=
 =?utf-8?B?ajFkVHFGdm5QMUZMcVgvTThuYSttSzdSaTY4ZHR4SHZvUzB6KzBxK3h4cXg1?=
 =?utf-8?B?V1Z5eldPbFRMQkV5aUlicTZKWmJZOFVJMzVDMGRSZDFPTnJSRE1acG9uRFdV?=
 =?utf-8?B?RTN1M01MNU5USWNDZ1pEQlRxcHgvcVdRNjBoUDZ5STIwVXNwbG5kUmFVajlv?=
 =?utf-8?B?OU1KWlRFT01GU01Da1BFdjBsQ2JZbFB1ZXM5LytHVFlWb0FNOTVUWHBWSWRu?=
 =?utf-8?B?WnZ3bkZNYXpvSFk3S0J0bm1nSVVMN2thRkFHMHBWM3U4OENrOHo3SlVtcjNO?=
 =?utf-8?B?aVJJem5GdzBvZlBwRHZUSmtPRE5oSjdETG0zdFZkRDZJWWJsbU1NMWxDMHpM?=
 =?utf-8?B?ZVlJTncrVU1QZmh3Vk5VUWpWckRRSEtCMmsvbXF3UUhwazArSjBYUTVRSy9M?=
 =?utf-8?B?WVhMcjBjOTdrSWM1T0l4RGEvL05MWUJQWmk5RzZPSzlMR3dDY1R2SFlrSlht?=
 =?utf-8?B?K2ZWL1FHc0syRzJhdER1MEFEYlh6ZVVmUDE1aEx4VCtvVUwrd3dNTnQ4MlVJ?=
 =?utf-8?B?VmVvSjc2UTBsQzRRdnJlSDgwU0N5RFc1SnFuVEJ2WlZmWVhBeE0yQlRPV0ZP?=
 =?utf-8?B?ME83dXAvM21aSlVoeXd0VDdzQkY1T2xSUit2TzNyQnFsNnJIQWlMSDd4blVW?=
 =?utf-8?B?VEtmVzNzRElkcEVhclNuSEsxTUtCKzZIUXZxUHIvK2FLZyt6dzNxTlJyb0Iy?=
 =?utf-8?B?elBHY0RMSm1yVnJVeitOL1VGYkMxVEpLdE9BYjlmcStGc3libkdTUzYwWUNz?=
 =?utf-8?B?YXdlYitId0loWWFZTzBzVFlNdUZXUi8wUmhuTWtNVGtya2w2NVlwK1UwVU1E?=
 =?utf-8?B?L3poMXRsNmJKVEsyWFdWVjZoSVdEVi8vdlg4Q3pMeEdYb2E1S2pmcWdNekVJ?=
 =?utf-8?B?RFBrT0MyRkFpSzhFMklGZ1JMZHhiK21wUHliK2NNMGxCalB6RXRMdFdFR1Nw?=
 =?utf-8?B?V1dOQ1JEVDVRWVhETHNVN2xzb05zUGkrTVNwNmFnRG1VTFc5RVRwTkpGS2RW?=
 =?utf-8?B?bS9OSS9KWHIyeTZld0FYS2FpS3M4VVNyMTFpZFNTcHlGdnlONGE1QnptSWxY?=
 =?utf-8?B?Rm1kTTU4bm1ZMDdHUER4SXN4TVgwMkFvVmxLK2k5YUk5Q29Kc1pDS0hRNWVS?=
 =?utf-8?B?ajBCSEVLNzNYUFZhQ3dyT3FCMHZoOVpjZ2pILzFZdGFSNytFeW15eC85bWNJ?=
 =?utf-8?B?VExTaVM4Z0MzQWZhZVg0REp4Qk5xZ1R6cHJFVTFkWVNQa1J0V1RFaTdpa0Vs?=
 =?utf-8?B?VUtLL3NBNnJkV3hlOGhJRmVVUFQzVFhUcDY4YkRPNEFsWkc4ZlN0dE03M0gw?=
 =?utf-8?B?UC85ZWZ5SnBCNExVR05kNVBQT0F0TkhFb2p5Q1pWU0hwN0FhVy9nVEF1Ukxn?=
 =?utf-8?B?NFFtV0E4L1VuVDRpTkpBY3p5WTVIVlJLNFY2am9CbVZTNVptQm03L0ExZzh6?=
 =?utf-8?B?akZvYTRKRElkZ01ZL0RZYlpnUktHb2oxRU1WWnl6QmR3OW9PRXlhdzBwMGN5?=
 =?utf-8?B?Z2xiREsyL3dncDhJdW91WE5jaUduNWFxd2ZIVlNsblJEbzJQQ3J5VG1pcnhM?=
 =?utf-8?B?OEcyUStTU0huMjhwVWZWUVg5dGpOQlZSUDFMR2NXcER0dTdOOG42K3JxZXFN?=
 =?utf-8?B?YXN2bWdpblUzcHVua0cwdy85c0ZvVVlpVlFqODJEZ0JjK3pVU0tnZ0ovNXNi?=
 =?utf-8?B?bXZSL2xjWVN1WTdpemF3MDlvR2pkanFSY1ozU0ZIcjVUQmlwb1NZS05LazhE?=
 =?utf-8?B?dkZDWGhMeGUzQmVZMEZTSXd6UXgyTE9NbmJSdEJhOVU5dDRLL2V3Q3RYVU5z?=
 =?utf-8?B?MTBueXV5MjljMXhrM1FkT25SYUxyYmtEK0FrY0NnckxNNzBZZk9iMXVIaDl2?=
 =?utf-8?B?ZUN2bjRvRnY0RU55Q0N1b3BhNXF2aUZCYS85QjZFT2VKZzFGaStlbVVOUllk?=
 =?utf-8?B?Z0tVV2U2YjBxRlJjQ0F0U2pLZkxUNk1nUnphT0FGK1FRSG5ic2FETXYxMDVl?=
 =?utf-8?B?d2pNU3llUjIrNmZVZWVvM0c0OXg0ZVRjTnA0TVFUMElsU1UyTnk2dz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c267056f-f409-492b-b33b-08de9997e830
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 20:04:45.4934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aQJmFPK4uQeu1/XgEYTrZ+A7yoFjnLhRVA3CYZjq9PSUTPrHrlwUhB0P/f9QOayhpsLmsE5751mDxH3//8Md7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7093
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
	FREEMAIL_CC(0.00)[nvidia.com,kernel.org,vger.kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,vmm.rs:url]
X-Rspamd-Queue-Id: 2958C3F2FF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alex,

On 4/9/2026 6:56 AM, Alexandre Courbot wrote:
> On Thu Apr 9, 2026 at 5:19 AM JST, Joel Fernandes wrote:
>> Hi Alex, Eliot, Danilo,
>>
>> Thanks for taking a look. Let me respond to the specific points below.
>>
>> On Wed, 08 Apr 2026, Alexandre Courbot wrote:
>>> After a quick look I'd say that having a trait here would actually be
>>> *good* for correctness and maintainability.
>>>
>>> The current design implies that every operation on a page table (most
>>> likely using the walker) goes through a branching point. Just looking at
>>> `PtWalk::read_pte_at_level`, there are already at least 6
>>> `if version == 2 { } else { }` branches that all resolve to the same
>>> result. Include walking down the PDEs and you have at least a dozen of
>>> these just to resolve a virtual address. I know CPUs are fast, but this
>>> is still wasted cycles for no good reason.
>>
>> I did some measurements and there is no notieceable difference in both
>> approaches. I ran perf and loaded nova with self-tests running. The extra
>> potential branching is lost in the noise. In both cases, loading nova and
>> running the self-tests has ~119.7M branch instructions on my Ampere. The total
>> instruction count is also identical (~615M).
> 
> That's expected - as I said, CPUs are fast - and that's also not my
> point. My issue is that we are doing countless tests that all resolve to
> the code path, a code path that is already known during probe time.
> That's a huge code smell.
> 
> When we create the GPU, we know whether we will be using v2 or v3 page
> tables. That we need to test that again 12 times per address resolution
> is a design issue, irrespective of performance. There are 24 version
> match sites in patch 12 alone.
> 
> And that's precisely a good justification for using monomorphization. v2
> and v3 are technically two different page table implementations (they
> even have their own distinct module in your series), we just use
> generics to factorize the (source) code a bit.

To repeat my point though, the extra tests don't complicate the code or change
performance. The bottleneck is here is MMIO, not CPU cycles (and arguably
testing shows no change in CPU cycles either). So I tend to prefer cleaner code
(which in my view is the few matches in pagetable.rs versus templatizing lots of
code). I do see your point of view though and I Ok with (trying out) the
alternative as well, and it seems to be what mostly everyone wants. It is a
little more boiler plate in higher layers which are not exposed to version
matching, but not the end of the world :).
>> I measured like this:
>> perf stat -e
>> branches,branch-misses,cache-references,cache-misses,instructions,cycles --
>> modprobe nova_core
>>
>> So I think the branching argument is not a strong one. I also did more
>> measurements and the dominant time taken is MMIO. During the map prep and
>> execute, page table walks are done. A TLB flush alone costs ~1.4 microseconds.
>> And PRAMIN BAR0 writes to write the PTE is also about 1 microsecond. Considering
>> this, I don't think the extra branching argument holds (even without branch
>> prediction and speculation).
>>
>> Also some branches cannot be eliminated even with parameterization:
>>
>>     if level == self.mmu_version.dual_pde_level() {
>>         // 128-bit dual PDE read
>>     } else {
>>         // Regular 64-bit PDE read
>>     }
>>
>> This isn't really a version branch -- it's a structural branch that
>> distinguishes between 64-bit PDE and 128-bit dual PDE entries. Any MMU
>> version with a dual PDE level would need this same distinction.
> 
> The dual PDE level should be an associated constant - you still need to
> do the test, but note that you would also do it if there was only a
> single page table version. It's orthogonal to whether we use a trait or
> not here.

Sure, fair enough.

> 
>>
>> I also did code-generation size analysis (see diff of code used below):
>>
>> Code generation analysis:
>>
>>   Module .ko size:   Before: 511,792 bytes   After: 524,464 bytes  (+2.5%)
>>   .text section:     Before: 112,620 bytes   After: 116,628 bytes  (+4,008 bytes)
>>
>>   The +4K .text growth is the monomorphization cost: every generic function
>>   is compiled twice (once for MmuV2, once for MmuV3).
> 
> I would say this is working as intended then.

2.5% is not much for 1 feature but overtime IMO it can add up and become
significant, I think we should keep an eye on size.
>>> If you use a trait here, and make `PtWalk` generic against it, you can
>>> optimize this away. We had a similar situation when we introduced Turing
>>> support and the v2 ucode header, and tried both approaches: the
>>> trait-based one was slightly shorter, and arguably more readable.
>>
>> Actually I was the one who suggested traits for Falcon ucode descriptor if you
>> see this thread [1]. So basically you and Eliot are telling me to do what I
>> suggested in [1]. :-) However, I disagree that it is the right choice for this code.
>>
>> [1] https://lore.kernel.org/all/20251117231028.GA1095236@joelbox2/
>>
>> I think the two cases are quite different in complexity:
> 
> Exactly. The complexity is different (this one involves multiple traits
> and associated types) but the pattern is the same - and that's a pattern
> traits are designed to address. If we were supposed to stop applying it
> when things go beyond a certain level of complexity, the conceptors of
> Rust would not have bothered addings things like associated types.
> 
> These traits are nothing new, they simply formalize a reality that
> already exists in your code, which is that each version of the page
> table needs to implement a given set of methods. It's already there with
> the version doing dispatches, only it is not articulated clearly to the
> reader. So in that respect, having traits make the code *more* readable
> imho.

Makes the lower layers more readable and the higher layers more complex. Me, I'd
have preferred to keep the version matching stuff to the lower layers /
centralized. Maybe there is still a way to do that, while still using traits.

>>
>> The falcon ucode descriptor is essentially a set of flat field accessors
>> and a few params (imem_sec_load_params, dmem_load_params).
>> The trait has ~10 simple getter methods. There's no multi-level hierarchy,
>> no walker, and no generic propagation.
>>
>> The MMU page table case is structurally different. Making PtWalk generic
>> over an Mmu trait would require:
>>
>>   - PtWalk<M: Mmu> (the walker)
>>   - Plus all the associated types: M::Pte, M::Pde, M::DualPde each
>>     needing their own trait bounds
>>
>> And we would also need:
>>   - Vmm<M: Mmu> (which creates PtWalk)
>>   - BarUser<M: Mmu> (which creates Vmm)
>>
>> I am also against making Vmm an enum as Eliot suggested:
>>        enum Vmm {
>>            V2(VmmInner<MmuV2>),
>>            V3(VmmInner<MmuV3>),
>>        }
>>
>> That moves the version complexity up to the reader. Code complexity IMO should
>> decrease as we go up abstractions, making it easier for users (Vmm/Bar).
>>
>> If you look at the the changes in vmm.rs to handle version dispatch there [2]:
>> Added: +109
>> Removed: -28
>>
>> [2]
>> https://github.com/Edgeworth/linux/commit/3627af550b61256184d589e7ec666c1108971f0e
>>
>> The main benefit of my approach is version-specific dispatch complexity is
>> completely isolated inside MmuVersion thus making the code outside of
>> pagetable.rs much more readable, without having to parametrize anything, and
>> without code size increase. I think that is worth considering.
>>
>>> But the main argument to use a trait here IMO is that it enables
>>> associated types and constants. That's particularly critical since some
>>> equivalent fields have different lengths between v2 and v3. An
>>> associated `Bounded` type for these would force the caller to validate
>>> the length of these fields before calling a non-fallible operation,
>>> which is exactly the level of caution that we want when dealing with
>>> page tables.
>>
>> I think Bounded validation is orthogonal to the dispatch model.
>> We can add Bounded to the current design without restructuring
>> into traits. For example:
>>
>>     // In ver2::Pte
>>     pub fn new_vram(pfn: Bounded<Pfn, 25>, writable: bool) -> Self { ... }
>>
>>     // In ver3::Pte
>>     pub fn new_vram(pfn: Bounded<Pfn, 40>, writable: bool) -> Self { ... }
>>
>> The unified Pte enum wrapper already dispatches to the correct
>> version-specific constructor, which would enforce the correct Bounded
>> constraint for that version.
> 
> But then what type does the `new_vram` dispatch method take? Generic
> code lets us expose the expected `Bounded` type to the caller, which can
> do the proper validation. This is a small example, but I expect this
> pattern to come up in other parts of the code as well.

Maybe I didn't follow your point, but the caller would do a version match and
pass the correct bounded number of bits, but granted that's uglier if/once we
switched to bounded types here.

>>
>>> In order to fully benefit from it, we will need the bitfield macro from
>>> the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
>>> make it available quickly in a patch that you can depend on.
>>
>> That would be great, and I'd be happy to integrate Bounded validation once
>> the macro is available. I just don't think we need to restructure the
>> dispatch model in order to benefit from it.
> 
> I'll finish the series and hopefully send it a bit later today. That's
> another significant rework for the series (sorry about that) but it
> should be worth the effort for the added correctness.

Sure!

thanks,

--
Joel Fernandes

