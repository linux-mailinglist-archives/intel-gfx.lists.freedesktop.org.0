Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAYjI54c1GnHrAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:50:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17C93A7535
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8479710E2B8;
	Mon,  6 Apr 2026 20:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Sh/TMWXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011025.outbound.protection.outlook.com [52.101.52.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F15D10E2A6;
 Mon,  6 Apr 2026 20:50:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G5JH/4+OuXtcHbFStrTFT/g8J0KJs+ciWX4V6+0C33eQSRFe6KrBz1HQgj9x1Ab7A+ig/kYgWqBrL7TrjQQFGFTfOlLKmbNVTGHf7/qesN0p6xWl051fQXDNwfcEtQiGaxmPS75rurnXYuK+Yrgu32BwKoxux6NS6vhBqAFwHmO9VDwq5LDoLZs0JDGrLCxdNz5XKh/phfe8CzRCYepXgXjrurpCpAIYXRZ/6m4ioeX0Okvc6jT7ul/+fvtqbnBc3tp/wmP0MCZMoUqlVp0XLqE5kThIpx868Kha4mc8Z3VVyCYLPDVoeHHSjP15uIpTAvpH9ZkRPT4EDqJrP7zyHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QUfUYfDegwXgeSv1CjCrZdR9BTD+2glpiVXmuhesyjM=;
 b=OW9Jt/PU69cfR4NtIJFXLEQLlQ1mkhwbfEwkZdhZidYmhR4eLtCFtOVqTzPsM1+Yjg+9Si+w/ozn2Iu1AQljMMZTjdmS5tUrEKgV6glFtsyyz5nvWYx6QYRqVU2KnxjvfLaNKMRJ6wQcRhM5bvaOdMha6sV6qELlEgIvWARvneBZQe1rZGZQ1nOzSlbPdGWj8a+xTFOUF/EQFmaRamTdWECp29wqErknpM6EN99c4voZliwStSdqYA19P/IoCQX0BPajMTP4S9rIa+mX3XhpcMK1u0N9M622YSLmFcUaMHtMDrYAVB4yneeWDfjjN4NAQz8uwBF2xsIL9/7Aocc6NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QUfUYfDegwXgeSv1CjCrZdR9BTD+2glpiVXmuhesyjM=;
 b=Sh/TMWXi1/8Oph3orFkkWUNIrMeugRNl1X8PpWOi9Mh4BRDlxuCg68EIltqz3UD9gN2e+/lxMEeObk8A355Shs89GdXQ2nQyTxOIe2hB3PxiYmFXK164U/WTW9gDgedK67u0RETjbS4ha1wluglfDvHl52cAbh+Aup88mNTdytnhUdiTuPIm6NGXFE1qGmdJGjChL1ntJKF+SRUjn7p2GhByY9EBu2txeJHcwctwd/5jg4BjdRRsYbdU5B2F75gdNxpX+CIP1g4AnxOhAsZ6IYXYo7qqg/+XsEznC3PF9yK4S8ldwm71obGZjjd06dLwc9gPIX6RehH2fHD3AbDNiw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB7523.namprd12.prod.outlook.com (2603:10b6:610:148::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 20:50:20 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 20:50:20 +0000
Message-ID: <4665d787-bf4f-4ecb-8ba5-f4e1d3517537@nvidia.com>
Date: Mon, 6 Apr 2026 16:50:16 -0400
User-Agent: Mozilla Thunderbird
From: Joel Fernandes <joelagnelf@nvidia.com>
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
To: Eliot Courtney <ecourtney@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
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
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
 <DHIFLRYSRR3Z.34IFDA1592HCW@nvidia.com>
Content-Language: en-US
In-Reply-To: <DHIFLRYSRR3Z.34IFDA1592HCW@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR12CA0021.namprd12.prod.outlook.com
 (2603:10b6:208:a8::34) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: cd61fa0d-db67-4896-a396-08de941e1d73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: QscDxRyrwy9dVdfKKx4Gz/edEVXuuN1ArNMhvdrs+YcuEv0JiH3ZdZlkxQU/Hl8sYOi52+MPO8IX89uRt2f3r/Os+Ak8IJHGWMgtkCRw+ttna/BP647JNT6dMAWc8gfx5a8+ZqtOjtttxwpnqXn8P0KGoqKBY0iiowC7dl8XiI+LwfTFStPQx1goFMy8xqqtS2L2m9ZS5/njysCCqEVLgO9APworRUFz6hQ0vDDnd8sBOGs4DgmgAiJCwqeyvi+uLvATvy0AE7W2iOeWb1YasmbnoRvI1bdOy7SlZo/yTwtWNTZe7xnz0AoXb4KPEvBNzl7L5UQIbVR8Uu2Ac/y0k+wn6gliRlKsLxWd5CWU3se2R8o58ggtt9rqkanrBSfpNw2/m5uT4vqmt6kZVR4rkbiHmploXSR9HwBIo469BW3QvLejlcCQON4nm4lZmpQvptv/CFFUazJrfxHLW3guOLO1B2jPfiJfoaG0lF5FboAgOlNTQ9aQSdj4WiUL0wgK3ERRhgmSGKwW/MXxN0M3T8lQhCyU+0gNeWmLTmbGritaewCwMLdbNm90DE9AZ/sfrzNEThHOVdQSvFikkbel8ZAV94CkulfHXqS99sGcrpE0TA4W1wrzDR8pDrL1600PmNstn7abUYGcop3j25CGL3jJXCF/numO5JxyZXr4MRjeMPfa7xrMhhFRnGtXDSVGXPRNlbjOV//SlYf+aVWnSh+kgZwNX5tSQQBflfUOa5E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWY3Y0tWdVowb2plRjZnT2ZjWUowVG0ySXJzVldZZmlIU2FzT3NHMW1JTEph?=
 =?utf-8?B?K0J2QnljekducGltc1RHYXV3ci96MjFoZTlZNktzYjhtL3NzejhGWFFXZHUv?=
 =?utf-8?B?bktpa2ZRaitPRzdET0ZCNlpqSmVWU1RpRzExb2sxeHBaTFY3WXFVVHBoNXJl?=
 =?utf-8?B?VVQ4aTJjT0FJSVNmUjBxQTJwSFJSRTJ3NGNIYjVFN1oyMDB2NG5ySHNrZWE0?=
 =?utf-8?B?L2dSMWtOYzE4OWNpNXBjOEVoak1Ec2s5dFhUNVppUjNWYmNEbjQzdmI2SlhJ?=
 =?utf-8?B?T2p1TWhndHcvSUJ2R2hSVjlMVWU4S2duekROc0U1SnkxRXA1TVA3TzhVZ0RO?=
 =?utf-8?B?eUU1NHFpL1grc3JGQ25ST0dTOWVJbEc0OEVMM3UzWVhxS05USktxei8vWmtk?=
 =?utf-8?B?aXNNZ3lERVpoVjV4c0hGbVFWUWw2SmZ1c2k2d1pVMS80MmJjY0Q2WHNkUnBW?=
 =?utf-8?B?S1owRC8xY0lGOERGLzBIdCtMWnFIOHlFWCtVZkNsTDZNVkJFWHRhTnFpUVdr?=
 =?utf-8?B?WUJ1VWtBMFN1a0lwQlQxdkw5aEJxb3JOWldmc2dWMldqU3ZpWmJYakFRbXJF?=
 =?utf-8?B?U2FKU2ZQNGxGZUxkVUUwZld6QlBXeWdINGplall4YU9tUnRqOGVuU0N6anNa?=
 =?utf-8?B?dHpQUjZXU1dPWGhhd0NWZnp3dXVMNXF3Zmp2RklhVmlQK2YzQkhocEt3RUpu?=
 =?utf-8?B?SzBCUm9vYXhQcjFpQ1Z1ZEdGdFBrRWxoS085Wjk1eU5RVW5RRnBZUG9XYnNu?=
 =?utf-8?B?ZEExRlp6YzRpQmtVYVRGZmN1TVRQcytvVDl4TWFuZUpGQ3RWckRRejU4SDlK?=
 =?utf-8?B?eGlGcmovdHNPRFFrakVTeFdzNVo1YmY3YWJWQ0ZQWXYzSzdoZnZIa3dvK213?=
 =?utf-8?B?aWZUTUdJR0RwWjAvaEx3Y21OVk5Vc0IzaTU3YTV2NGN6YmFHVE04YTR5a3Jr?=
 =?utf-8?B?WnR0VVdFUGNyYzZlcHAxVEhvYkRMb2N0bWx5UTJEREsxUVZtZnRINCtoK284?=
 =?utf-8?B?ZTRhUWdPMnpLK2lBaUQ4cW1WZWJrZ3k4NWxjdzhsaGRhL0FXVC9lRU9OT3E4?=
 =?utf-8?B?NDVTVzF5amMyUUZpaU81dHlvN3MxMVV2Z0hpU29CZ1p3Y3oxNVR5YzF6SVJm?=
 =?utf-8?B?d1dPL0RQdjJlZkFPMTllNXZVcEtkbUFTajBkdVNaV09oTFA2QVp1QWt3MmFP?=
 =?utf-8?B?RERlalY1dldpcElMK09Qcm1hQ1dyWTJKY1duTWdmaE13cmhPcmlodHBiaTBG?=
 =?utf-8?B?aER6eXR1eEtQYmxNbk5DdlEyTitEYXR2ZHpNUjNwcG5qaDcyWUZsVFpNVWVT?=
 =?utf-8?B?RDkrbnBKL3puMUk0d2o0aWlIeHFacjNLUEFDOVdPaDlrV0F1VVNSdkt2L3I2?=
 =?utf-8?B?V1pJakl6d1A1VlpkRnd6UUN1S0FvY3BXaVFFc3lBb1lkTWNtSTdiYUk2R2FT?=
 =?utf-8?B?QWl2WHRicUlObkltbkl1S1ZBZWsrRUhCUkR4MnRyNXB3YjdFSWJKWVJOdldG?=
 =?utf-8?B?K28zdGw4SU0rOE42WkxLVE9VRGpvOEFOeFhrMS9qY0pzcnBTMm5ZN2c2bW16?=
 =?utf-8?B?cVoxS1hXakRScVpka1VDVytmSmdZWlJzWFRoWmpTZW1EbzRWVjd6a1JYWjdR?=
 =?utf-8?B?VCthNXJhaXN3M0E2RGF4Qy9jU1ZNZzk3cEZ4SWd3TEpFYXk0bE8wejZYREU2?=
 =?utf-8?B?c3FOc0E3OFJRTUFYTnR0eDZLaVR0azcvWjh0eFBNSk42WG44Y1RQMzh1ZWtH?=
 =?utf-8?B?RVN0KzIrYjNoLzdaZmhCemw4MTdteGpMa2NHcEtLRjljd29QelUzeE1PK0pW?=
 =?utf-8?B?UkVsbG5na2RXK0JMUTlGUlBDbWYrdHZUVS9UVWtISDdybjArRXNWK1N5M2ZL?=
 =?utf-8?B?ZzVGR2dkbzY0REFQNHA5ZS8xUlUyMHh6VkdqMWt4dHBtbkpCaHptbUJnRjdn?=
 =?utf-8?B?SWp2RFYwY2RiVEZuTCsvOUM2LzA5di9Jb0N3Zzl3eUZ4U1k2Unlta1VEY3Va?=
 =?utf-8?B?WXFaVUJrNlZnU2hmSzVxVEtoZW0zNWZBL2dIejZZQXllYjZZVDBQQW44NTZa?=
 =?utf-8?B?M2cvVitVaEdjRkhQbDY0YzQ1Q0JwRWdZOHhVTzhPWnlrRTk5SHloczhwU1Br?=
 =?utf-8?B?WmlnMHZBVDZ3ODc3bDZEOWV0dEY1aUp2YTF3SFBkTEpSTHlUSmtBQ1kxZXcw?=
 =?utf-8?B?Q0N4RHlabzVvSDAxOFpYMkQ5UkhqTktTOExzRFhGSDI3a2NXMTZoNUkzL2xB?=
 =?utf-8?B?aWhuL29tQmZ1KzFEZWlVbEFzQjB0LzVOZWRORDV0T2dMbFhOa0pCNnlDMlRC?=
 =?utf-8?B?ejR4SS9qU2JRQmtEdzNOdHMxOUV5T0tWOUhZOUgxMzZFYzJnRkdLUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd61fa0d-db67-4896-a396-08de941e1d73
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 20:50:19.9211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gAFbvCvTy8nwlN94v6nMomu4m9NZ53yYSFgUxt0gRsMlyoEcqhY5c1DebXXVYqaXSRL5VkZ3fitXyJ7mCygZ9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7523
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,vmm.rs:url]
X-Rspamd-Queue-Id: C17C93A7535
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 02 Apr 2026 14:49:05 +0900, Eliot Courtney wrote:

> > +    /// TLB flush serialization lock: This lock is acquired during the
> > +    /// DMA fence signalling critical path. It must NEVER be held across any
> > +    /// reclaimable CPU memory allocations because the memory reclaim path can
> > +    /// call `dma_fence_wait()`, which would deadlock with this lock held.
> > +    #[pin]
>
> This comment says that the lock is acquired during the DMA fence
> signalling critical path, but IIUC we don't have anything like that
> right now. Is this based on future yet to be done work? Can we reword
> this in a way so it makes sense in the current state?

Good point. Will reword. I'll still keep the references this design is
specifically for that, but will refine to avoid making it look like a fence
signalling usecase already exists. Thanks!

> > +    /// This invalidates all TLB entries associated with the given PDB address.
> > +    /// Must be called after modifying page table entries to ensure the GPU sees
> > +    /// the updated mappings.
>
> If this must be called after every operation like that, I wonder if we
> can change the design to require a guard like pattern something to
> ensure flush is called. WDYT?

That's a good thought. I looked into this -- currently there are only 2
call sites (execute_map and unmap_pages in vmm.rs), and both follow the
same pattern of dropping the PRAMIN window lock before flushing. A RAII
guard would need careful lifetime management to maintain this lock
ordering, and error propagation from drop is tricky. With just 2 call
sites, the explicit flush calls are clearer and easier to audit. If more
call sites emerge in the future, we can revisit adding a guard pattern
then.

> > +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
>
> Hopefully we don't need to be calling flush() from anywhere in the
> entire crate. Can you tighten the visibility here and in other places?
> Many things seem to be pub(crate) that don't need to be.

Agreed, will tighten flush() to pub(super) and do a broader visibility
audit across the series. Thanks!

> > +        read_poll_timeout(
> > +            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
> > +            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
> > +            Delta::ZERO,
> > +            Delta::from_secs(2),
> > +        )?;
>
> This has zero delay on the read_poll_timeout - what about adding a small
> delay of a microsecond or so?

I think Delta::ZERO is fine here -- it still calls cpu_relax() on each
iteration (not a pure busy-spin). This matches what other DRM drivers do
such polls, e.g. lima_mmu.c and panfrost_gpu.c both use read_poll_timeout
with sleep_us=0 in some places. I also measured it on GA102 and its about
~1-1.5us which I think is well within busy-loop territory. From my experience
with the scheduler, if we sleep, such short sleeps will be much longer than 1us
due to scheduling latency. I also checked OpenRM and even there it is a
sleepless spin-loop.

thanks,

-- 
Joel Fernandes
