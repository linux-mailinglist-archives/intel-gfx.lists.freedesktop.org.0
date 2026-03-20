Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIwMMcA6vWkH8AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:17:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1B52DA058
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE49E10EAAF;
	Fri, 20 Mar 2026 12:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Fw5n+EGr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010008.outbound.protection.outlook.com
 [40.93.198.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA5D10EAAF;
 Fri, 20 Mar 2026 12:17:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mTbJJoXw6EL7dvE8mIA/NDDknx3zRIb8RGNrcfKm7u++xYdOKmu9bz2+rRdWO1laEcNS79OAqQypYh/9nnSPYc8pRIQULNlSMK+tt1M8dpRokHvV2xZ7ZeTy4tjpF6Iiuh1FyDIZU6pDzt4Q/4rHwkYN/vsZSgASOLj2BjsZCosfydyTrPnpa75ZOlSBQK0vEC9y9kqL79lwHTZ62WG9Y88wc2uspztczjHXGnUX43FAzETyFjndMZP1LTN+X/JywAejEMijuPrh3qGbS43AH8qQfOaq6ybrIgX/a0Ze/Y0x0tqGdtOnLcTtinCAri+pk5X8lCA/mhZLZDP+KD+cpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpeEamjMhEniw9BGa8oU2v0p2fY9mG7/UOayDdqjmAo=;
 b=HZ1fTVUaYnWakn4kHWPp659rF50D1IcRHcw4CtZ1IMRoc0K/o7Fr0CvzTVaxZcsVwa1IJmX/NITtn9O1QZnUkAUqNQOu6NKHqcS6f8hhTL5K2F4w9mWeQDCg7SQXXa3APQYYrdGkuevwK9D7C2wnJFyTPEsgVhQ3AQJYCv0UV1uY1Ozs7U4jXiZ29FB0+rzbj1XKJtfiJFfI1ZiKUCCJQlSeNmZfaF5uEV57cm33vNAUyIH0GxxUqJyAae8HiMtGkFZJDxR83aQDa14+/mILEqWZ918XC7ego4NE1snF4MJ0hHxaQlL9sSutofh5nCqZVOSXJ8kel/+uT42Gzc3gvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpeEamjMhEniw9BGa8oU2v0p2fY9mG7/UOayDdqjmAo=;
 b=Fw5n+EGro5xVSevNNgReyhdIcwD0jdZd7WWiszOS5Ut4R1uD6Zg7MLkj4f9mBv5qfpr6qpZf0lWZKmxQLO3c3PbqGOwKNDxMDvfAQeT1IGo0FCKTCyRoRuBBQsXf8jK4GveGqQ2Eb1Py4CD3MRvlDfVre1/+DLc+FjaykN9+16+GCOe2FMuReVkPGI3ZcUj7lHlbcafl2xpImmBhJwkRr4aBxtF58DlWChR2A+4sKNyVluerjhX2o++3bXFcO31KFACBexUKsVo7cdXvmQqO5CAlcaIIbdffAUxdBtEDScH8tBXJqC6vBuGUER+ExNyQSEEjdcMi9KRF2CD4OP06PQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by IA1PR12MB7519.namprd12.prod.outlook.com (2603:10b6:208:418::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 12:16:54 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 12:16:54 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Mar 2026 21:16:50 +0900
Message-Id: <DH7LPKVFG6XH.338J3U7PWPIF@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice
 Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
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
Subject: Re: [PATCH v14 1/2] rust: gpu: Add GPU buddy allocator bindings
From: "Alexandre Courbot" <acourbot@nvidia.com>
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
 <20260320045711.43494-2-joelagnelf@nvidia.com>
In-Reply-To: <20260320045711.43494-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYXPR01CA0051.jpnprd01.prod.outlook.com
 (2603:1096:403:a::21) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|IA1PR12MB7519:EE_
X-MS-Office365-Filtering-Correlation-Id: 738d125b-f0e9-4c62-6e8d-08de867a92e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|7416014|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: jERrEvFYcekyYyz6phtvANADGpb1t41jkN9nyHmHQxAhOKkLbru/MrRLuYHkeKDkGHE1ZpW25J4j0KtI0NmiLqO84n3za+Xs0g5QvlXYyZIQAW2Ag/nHf8WpZsGadmT/8gURl2cIhd2NkF7q99Ocm8ov2mP63wg3GKQT8HUAxtaeJ2MtpeamSX76GV9KB3jXoVXLnjv5hBwlxWED6mzmtMD+TOs9jb9hSch7AET0Bpe9Di8v4oovaEvbbKup+jrRI92NtS6bFzcCLAErdqcsKEnsRIbb7e3z1WgUALtr/fwQSNx5gBC0UkRpZmHhzDUv54t6QsCrV8jbFSqqyPYeCXfwEtII0fciyt6C53YPxeTG4NbOYdnaTxvZKgx6Uar8mjnlt6eNEmQx2UIRCk1zWsZdadRRtMeIsbpoUjuUPT27oajQoN+edBkoO3ztZo8JXy/d7oMdea4CuINflS/G3EjAkR1kmLbdSvnJQG0+/j9ZdAiOdPG6KtryoWPUB30bVZlxFk+qg/Q3UtNXywubOZtqhd+TBoIeIdvGlV02jpxJw0iuGVfxzlZpiQOVgzZhK7fS30KQ8hN2VU9QnWAhAftmUUZslOnJawJ30MdXNvh6tzBlRUac6jUzygdkcVcBdALJFy4zYlt4Wm3axrjZHLLhdvA5dSv5WMd/O0EO0FP8HUiJGXdTWeo2Ecwpa9gmFy+ZdKMPXNQLf8NwEF8bRBnRNu+pqOd3GsTWNZZD8tI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(7416014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0NIM1R3eFNaZjZIeEhodE50Q2kwM1ZKRU5reWIrbkFnaG0vV2phY2hMZE5I?=
 =?utf-8?B?eG1tTE5Ed1R2d08zcnBGSXQrM0UwdlQyZ2tHMFl0QVlIbW9qU1J3M2dtL1Bo?=
 =?utf-8?B?T09yQkpIUmJQZDFZQ1hoK0QzWU9tZ3RaSVUvR1dYOVhWQzdXZ2h4VDR2ZFEx?=
 =?utf-8?B?eU5kN0hjYllCelMrQlliNm0xWHA0RXRmWWxyRnNiSExyc2Nza3prTzFzUk5n?=
 =?utf-8?B?TzlEY2d5VDl1dlJCYlIrcWpWd0ZncTVja01zY2lmNkpXaWtXSmNGMUlSTTNH?=
 =?utf-8?B?bDV0V2x6OTkwcy9YNlp0SFN0aDdMeTFXdGtQVXg4SXBpYnEvOUZtL3RlaU1l?=
 =?utf-8?B?NDljUEVVODVJZERrS1YvZjFVVVNzL2kzT3dubFdkYjdJbEVKWmJkZXhUQVFW?=
 =?utf-8?B?K0VzbWt5ZlpsMHpBRE1xNXVkcHZvQnJ4aUNqQ2FzcWlsWjdzVXk3d21sNkl1?=
 =?utf-8?B?SE43U1dVL0RoeWIzakdHSUZVcU1kQWFtNStvOVhGVU5IdGpad3J3Vi9FZkpK?=
 =?utf-8?B?RlREQVdDQjhYL1o3TFpIcXBMQjV1TGhPREZRVnBlbnN1UmdlSElHODFoN29y?=
 =?utf-8?B?M0E5RWx2eU1ZQ2o1UmRZUVhCdTZSK2lFanc3NENvRys3VUVaK3JKcWNOT0I4?=
 =?utf-8?B?TUNRZHNlTk8vUmMyb0c3K3N6VFQybkR1dlBZZDE5eUN5emZlc2p1QVBoZVA5?=
 =?utf-8?B?ZE1DRldXTkpCUk1jV205SjVjcjhLS01TK0xLYXBmd3FOeGxWVjNFT0ZNc2V4?=
 =?utf-8?B?RTBiK29JYS9FRmd1K1Y2b01sbmQvdXR3ZTJscUtPZHBKUy9GSnZGNlc5RWRj?=
 =?utf-8?B?U2ZsOWg2dzhBbVBxeUR3dU5GTExCc2dZK20xWWZ4SWV2aUtaQWJvM3BzVXRw?=
 =?utf-8?B?dUdpM24wUGRiTnlTSTB0YUowbS9tNDB1RFdvWU8yU05qNDJQRTFsOHRjL2ZD?=
 =?utf-8?B?c1hPeElzWU1tQjZwWEpDeWx0dW1VakZIZDRJdVBRRnJPM1RRVktMRnY1aUZD?=
 =?utf-8?B?U3l3MHE0RHFJOUpoNkwrU25uNHE4QzVoeGtZWU5Kdmt2ZzJYU2pkd3NmWmJl?=
 =?utf-8?B?WnpZUFQxMWlIZUcvbjF1MTY1Z08xeXZya0oyVExjU0ZZcG5hMmhnUlJBdmdk?=
 =?utf-8?B?cWFLbEpaT0tIMm5TWktZdElsSnZ2VGY2ZzhhdTVRNWZKNW9DNkRiRlNBajFI?=
 =?utf-8?B?U25lZmxpblUxdGJtMmZqb0g3ZHZVdWozdGNwVHF3dkZtU3pLVTN5UFd3WENX?=
 =?utf-8?B?dDRZdHJiTEY0TlVvUUdNRHJTZHRiOFh0Q3o4TXZJY1lsMDIwcUJxK0pIZWVU?=
 =?utf-8?B?NXp0MDdObFR1UjNqenZSdHFTc2JLdU1iL1RBdkpZR0ZnUTlQa3pNNm42QmtI?=
 =?utf-8?B?U3QwUXF0Z2NWa1RWMmw5QXRDdksrODZDRVdoYkIrU0h6ODZLZ1pFOWthaDNM?=
 =?utf-8?B?c1Y2RndqaTR6YU8yUkJoRHVlUDhOQVRpbDRNSGdrZmtRNHBWVy9MaGlMdWNy?=
 =?utf-8?B?bnZjZWhRaDc0VTZXQkxCUjd4LzNQNnVXOFlPd2M3aEY0dklOeXYvRmIzdHRh?=
 =?utf-8?B?aC9kaVhMRytOczRlb25NaG5NZFc5NmNzQksvNnZhdENzSWMrMlhNNkxCVnd0?=
 =?utf-8?B?aWRVZzRGZ2xNZnZjaGFZWWNZaEdUWmM1N3RlRXhsQXZUVUJiTjhCQjVaWjgr?=
 =?utf-8?B?bFFDcVppQ2F5QU5QWmJhTGpRM2t1cGNoZGk0b2YxYjhFT0NjOWZHTWplcFJW?=
 =?utf-8?B?ZGZWRnk2MHFmODZKNDQ0OVJkYXJ2b2tyYnRSeEV6MHdhMkEwZjV4SDlLQmlS?=
 =?utf-8?B?M0dETkVoK3BmaGVBTTRLQWhCRFJ4U0hlc0lvcGJYWmJMWUZIZXdIb2JHSUM0?=
 =?utf-8?B?K3grZm1XZzZnRTRrR0ZuQ0Myd3NWY0hyWktFR1pQckVaU3QzMFREZnNvUm52?=
 =?utf-8?B?aXc0U0s5RlJmWkxYL2syRHplY2VadkxZY3JnYVEwclhNKzZoYW54TVNxRGZu?=
 =?utf-8?B?QmJrR0k5WlZPWjdHOFhzWkIwdWVEWFhiUytTbmxiditGOE5GYTY1ZER6dzkr?=
 =?utf-8?B?YTRaOFRxSnZqd3I0SzUrSlNHci8vSmhXSTdtMzhDakx3ZnRHOVZObXpEUlF5?=
 =?utf-8?B?WjN0T2FyV2NkaXFoT1BuY0lYOS8xamNKYzh1TjVjRXUxZ1VjSUM5eHE0ZE9T?=
 =?utf-8?B?ZjdURWw2MWVpSzAxcXA5WkZaY2owbkFCc2J0WVVvQkNpOHA2SnZXTkZDNHYx?=
 =?utf-8?B?ZEFxWktHNXRldDFBNExtN05QYVcxRlhmMm43ZTZLVExRcFBpT2g5OGJYOVZ1?=
 =?utf-8?B?QVlqbngzemJ3YmR1RHJrRWd6ODJwRjVVUmVCRkFITmRNNFRQd1lxbTRxT0x0?=
 =?utf-8?Q?DvaxJwzLUpMVdaYQYeLiZfxLaEV48KH/qEceYRekCuc4u?=
X-MS-Exchange-AntiSpam-MessageData-1: 8GIPFtxZUp9Pmw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 738d125b-f0e9-4c62-6e8d-08de867a92e8
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 12:16:54.3697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8xX9aaOklwxVVLzGaqTf6x79u8aH46J1+6egoHIn7DXUIKR6HZnVz+nK5WiakstpwJqE3VB6OhXv5/EQXeCt7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7519
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
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5F1B52DA058
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Mar 20, 2026 at 1:57 PM JST, Joel Fernandes wrote:
> Add safe Rust abstractions over the Linux kernel's GPU buddy
> allocator for physical memory management. The GPU buddy allocator
> implements a binary buddy system useful for GPU physical memory
> allocation. nova-core will use it for physical memory allocation.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
