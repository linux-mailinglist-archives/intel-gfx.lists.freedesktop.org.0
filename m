Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Ph+CF4Dzmk/kQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:49:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F620384233
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EAE210E2CF;
	Thu,  2 Apr 2026 05:49:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="nhiwkx0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012061.outbound.protection.outlook.com [52.101.43.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D5F10E2CF;
 Thu,  2 Apr 2026 05:49:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YnlpghtqwNG8G311j6JLiYjcqVr4BnzDdDG8VhulOE2Dpnp7OsvswfNPmguhTXz3ihBIlPC6o6c+0v/SdDH6XKsN2Ff1bVKAfKhjIFWCP7ZshNT4Yc6tYxJRVeRlqTMn01vaJyqVduAql4rGUZ4BxKNQOfPXgnWj8unjo4MaI9mvri9V0UxQUBi4GSjIUS+B7eSsFjJMs4xKSDWPtIR0ZVNSYrRXyxnDt/ut1EGNtHcQCXDzdJFA57BribNUC8b87dWP0ziwaFhevXr+5+lC6oDA6eiyOgpH2mIlAbZEvIl5ObUs2vLC8NFzIZ5eobX4SqszbbgWpmvEexR3Tf2fYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VdcaTsCymqLPvhHZEpkID9rndTXucwkDtAVin1AzcEA=;
 b=UKDboEVdo2k3xc4QfeuDozdFmZNSXEU/LyUBAI1cUKIlYYPos7Fko2ayOZ3RMsNdE/oy56i8iaHpXiD7yFVB7su6YL2c6H3KpLkSDkd3tYqjMCuzSqWC2gDTARNPU6gtQVREnQj3kNDpKsPGjffXD+u3cT+Nbn0DcfvtnsxqvZBvvorrdoxGAkUoFEfsfdaacGsBQmPc483fr1ubo4qEmres47UdkYiUW8kY2CP+QxBS49BUMiGtE7W+qLocMlmrtrw5ViofEnhFxoV8BblzI9OsHG/D47OHeG88cJN9J3SblEYc+2iKWT4QO5ktt/HknWJvaEyIkMlohOQxc6IiRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdcaTsCymqLPvhHZEpkID9rndTXucwkDtAVin1AzcEA=;
 b=nhiwkx0ybrGWkcDJXgg+io8K/S4JH9lNTHb8MLxPf0q9M3EmhnyxREPkI3WEaRu7XxgCaG4GefwwWKK5YgzEsnEqnv6eK6Y7L9x8c0JXNdCGNkGR5sPA72FByZsq8dQ0EvfdvCwYFBZaxsgsTqJNKOjh1y/QeVZ2VFA574NLBCQ41lOa/wVnVxSHzxaVeg4TCGQbY6audxKzcIzosmYophq1803PuC+D7aU3BtyoITXzxCI308D7s0jMflPi6vhL3g/S/ipHfSy9OFNgegOlh7tJKJzP7KAILiNqnWs9FQNlQ/UXXvK/6t84uZ+nQB9q9UIolf457pfXf2vYePeokQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by SJ5PPF1394451C7.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::98b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Thu, 2 Apr
 2026 05:49:09 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:49:09 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:49:05 +0900
Message-Id: <DHIFLRYSRR3Z.34IFDA1592HCW@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, "Bjorn Roy Baron"
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 "Christian Koenig" <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 "Thomas Hellstrom" <thomas.hellstrom@linux.intel.com>, "Helge Deller"
 <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng"
 <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>, "Alistair
 Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp Stanner"
 <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
From: "Eliot Courtney" <ecourtney@nvidia.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-8-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4P286CA0090.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:369::17) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|SJ5PPF1394451C7:EE_
X-MS-Office365-Filtering-Correlation-Id: e319db6f-c4ac-4f2d-3b64-08de907b8f63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|10070799003|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CKb0EVyVRn80rTZsaAGEe/GHA9l9UXF7bJpRkUd4P1Hu/LnpFPqJZ0MvqssLfltr6SxEqot+3INLTBObjgkVCBiA0SckhzTjwR0W0/CEvxkIYEkTz26f4FQXlGaVFCC1cLSV1DgyF7MGZ4kPFGRVN2jGg/bJ6pDHTF5HaglrcXJnZrOhD6XSV1iy9rvOIRoMGX3Xsra7NsqUWaRe50vRUlNOHzaAnQOtJXn2niGjiU93fAUMUW1wM394BqjsOJY9vX9A285xF0PE2QkR7+iCjXFWw812A6zCrKXVq4NCso9N0XsdEVyLSANpPN+lysUfNZCmWJaGbA+79137SkD2vvrQyd68rogb9jYoq24aXAGKX+Kg/uuzOHK5KTVvkC4HKDxKwkiWiq5bbzm6pCLUP9zFjR/rSx5rx+fW7MkBridLj81Igwm/cxFuXYjmALKqLRlbsSVZ8WGRMN8LdJOH7CL+NzYfbEijPJerfG11R7WEXqvp3KOfx80R6uT0EJ+hQasOyas0Nof6cQN8v1ulmWdmAKamOOylzl3lSd9Y9HO5ICtxAFOQqQ4swsZx8h6wywePVsou9WLMR6hSxjulgUpNybebDDNvmZsaGAky7ElBkvqEvKYefXwq/flIdyLnwyVGfMGsaKdQJ7UAeAwhuk0uGPt9nI1jhZx9Dll3AIvm9P7G4xaxTt/4KJpHBuokzluAtf+TMBjyfWgQCH1RksOC5FS8pbGUAxsbuaSt4nM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(10070799003)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WndLb3RPdEFjV0d3dFlkSDN4TzlVVDU0M0g4dXVxZEpJamo1Snk5Y0lsTjhF?=
 =?utf-8?B?WW9BNnNRWkE0VGRoeVBzdVpKeU9QbDFuc2dZbCtMMmV6UTVpZE5YQ25hdTh1?=
 =?utf-8?B?QXozMHV5Qm9VMFRVcHFTSEdFaW93dmRzeVNqVHBsSGFMamxWZTluWVhHbml5?=
 =?utf-8?B?aWhYQldTVCtqdlNlaUlqN1doT3NFOGViS1RJWVE2UFluMWVYcmtwTWRvbm5y?=
 =?utf-8?B?UnM2cGllVjlMY1JJQ1BobS96M0JjcXRSaENsQ2NRdkR3VGtLd21lMFVJVTQ0?=
 =?utf-8?B?OVRpUW5ndmEvNXJ6cFpkV1AvcW9wb0hjM1ZQNzRHc2NQZ0RKd3BxK2RjeVNV?=
 =?utf-8?B?R3phQnIyOWZVNEZPNDlPRldIYTRmdWhwZmFQZlhPVDRmOW5nc1Z6S0x6MVJt?=
 =?utf-8?B?YUdrUEZqSGVqNHJrbkIxTmgyTFZhemxseHVuQnJmem55TGc0U2ZSRFozVUZL?=
 =?utf-8?B?SnhHSnB1dy9QcnphdHBSWDJYb0Rwdk1yYXZZdmhPTVU4TjBXdTltQjRaU3Ra?=
 =?utf-8?B?QlNkTmJLY3B4OXJTckZibGlWbzN1K2loTm9Fck80b0dsaEVpWFhoZXI4eVkx?=
 =?utf-8?B?cjdPaittNW9zQVZHcTNJQWxhYWhhdHFOc1lEOGdLS0FiREdtSWY1OGtLU0NF?=
 =?utf-8?B?eVgrOGJLamRxZ2RFQ2dqamQxa1paOTFkaTZUWFJRRG5jZ0ZORHAyQzM5bWtK?=
 =?utf-8?B?b1BLVHg1bnpYWmtBVk1rWXYvWHNSYTBmamQrSXNUbjZjdzBDTEFpdU5MSmdt?=
 =?utf-8?B?Ukk1WnltU041R2RYcHNZYjlXZ2x1dlhzTFVCWmlrMkZCTC9Tdjg5Y0hDc2h5?=
 =?utf-8?B?RkVaUEt2UTZUUktacVFlbGRyNThQWmhEck1TNmprSWMrZGhCaGJMSWl2SlFY?=
 =?utf-8?B?OVRxbnJ0RU91Qk80NVVxR2RFMDlSRDM4TCtlMEpBODgxWlozWklNR2ljSHF1?=
 =?utf-8?B?UExraDdHSXdKYVlybXY1RlRJYmc1Vm5RY1o1aHR0S011SXAzQUpBNVN4N1dY?=
 =?utf-8?B?cWJPbVdVWlJvVmlmbXkvU21TZ1AvTG1vZkRPaEpIT3Zqd3NvNFlkM3BvRFBQ?=
 =?utf-8?B?SGt5OHdtcmt6c2g4ZXRQZG1OQ1VCcUdtWkl3MW1iU082SGlEdEdJc3RFZjdz?=
 =?utf-8?B?eE5HdnpDczhrUUd5NG1rSjhCRFdPNUtIY01HbnZqWkJDc2VvRDk0NG4vRDVE?=
 =?utf-8?B?anBHQitwQy9mcnp4aXBtMmhHemEvUm85eUlHTzlvL0NYenZOcUpvTmV5bU80?=
 =?utf-8?B?ZXplYVVMcDhzY1EvMjIvNDRETmMvT0pGTElVTWVRVUtZNXZtT1ZiN20vRkRZ?=
 =?utf-8?B?ZGNlcDlOMlFPUm9EZjRFMnkyTUZYT1Z2dmdKK21yeEY5bHQrMytvcGx2M2xp?=
 =?utf-8?B?dC9RbEwvSUtiV0JrNzBpVEpXSkUrSk5FRWpXV3dHVDV0VkFrbFM2cEdWdSs2?=
 =?utf-8?B?UDk0azBhRjAwcTcyR2UrZHdlZXl5V3lnRS81SzB4R1JaM0gwUzRDc0pXNkRv?=
 =?utf-8?B?UCtRanhUQXNLbXZKSisrWVB0YWppOEwwMTFEYS9QMEVUTVFoVzdXaTFHNjRQ?=
 =?utf-8?B?TWQ3YnRkUnZiTUZVTEloQmY4YTBwOHJVVmVma3NQQVFYanR1MGtUcXhwL0s2?=
 =?utf-8?B?MFVEM2RuTGZnQk1nVUtkS2x5aHVFQWJESU1CZ3Z0Q2R0TmNuQTlJenk5aHZP?=
 =?utf-8?B?cjVYVXh3WXNCVGxSUFlxbVhSSlJJeVVac2dRaVNiNkZwOEsyY0U3Um1yVzhk?=
 =?utf-8?B?eFltOEZmWGJLT3ZORGYwai8xbFdWN256UDlWTGVrZ3JvaFhiSVpVaEVraXBk?=
 =?utf-8?B?SGNCYVhzaDBFR094SXpqMjRFNVBTY2FSY2xDRjlxYlU1c2tiTUN3S1NuK3U2?=
 =?utf-8?B?aE1NRkNBMHJHdHRDUFAvTHdZY3M2U2FFdU9UazYycG14c3g2T3NWdE1NVFJI?=
 =?utf-8?B?b2hoZkQ1RUpCcWU4M0REcjFHbHpwZjE0VUlJaFBxa0wwbFZsRmVVdmpHK1JE?=
 =?utf-8?B?VVZ5ZjNBa0lYT0EwMGV3Qy9jalczWExObytVTVZqbXlDYmw0Yjg2ejJjTlJ2?=
 =?utf-8?B?WGdWR3BNd3E3WEpkM0tSQjB4cUhQYTVhSmdOcEo0aEJTOFNrOUxqMEFteXZK?=
 =?utf-8?B?TnBKTG13enlXWWtvS1V3K2RmZ210ZzJicEhDUy9RRkNhOW9tbHJFVys3V2cx?=
 =?utf-8?B?OGF3ai8ySXRhY0U2cHBqTGVhZTZVK2JXQkFZWVYyTFpJYTRtVDNMQUpadjl2?=
 =?utf-8?B?bWc3MDRqODJpN2dzMEpQM0pRUlJ1VFljcXRra3RDYzlYOUJpNXA3VUtmSWtR?=
 =?utf-8?B?Wm9YTnIxSTJjakZyMnVpYkoxTXBoeHUrWFYxczhBWXdhd3J1aHEvRWRkRkNN?=
 =?utf-8?Q?6JJWs1NkgjPXKBsWj4CmJCiQMV+uwwYxiY51WIKOQh5Kn?=
X-MS-Exchange-AntiSpam-MessageData-1: VX0B/K/OWbs/vw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e319db6f-c4ac-4f2d-3b64-08de907b8f63
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:49:09.5574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gLo+58pZ3sPozsiz2byNFRa9C5CGVR+ziH7VtoQ1tqoqc8GJ8Fs6p+kXwNVftEBn+4PwLhUIQcHIXgAqDJOP9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1394451C7
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7F620384233
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>
> After modifying page table entries, the GPU's TLB must be invalidated
> to ensure the new mappings take effect. The Tlb struct provides flush
> functionality through BAR0 registers.
>
> The flush operation writes the page directory base address and triggers
> an invalidation, polling for completion with a 2 second timeout matching
> the Nouveau driver.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/mm.rs     |  1 +
>  drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
>  3 files changed, 138 insertions(+)
>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
>
> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
> index 8f3089a5fa88..cfe9cbe11d57 100644
> --- a/drivers/gpu/nova-core/mm.rs
> +++ b/drivers/gpu/nova-core/mm.rs
> @@ -5,6 +5,7 @@
>  #![expect(dead_code)]
> =20
>  pub(crate) mod pramin;
> +pub(crate) mod tlb;
> =20
>  use kernel::sizes::SZ_4K;
> =20
> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/t=
lb.rs
> new file mode 100644
> index 000000000000..cd3cbcf4c739
> --- /dev/null
> +++ b/drivers/gpu/nova-core/mm/tlb.rs
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> +//!
> +//! After modifying page table entries, the GPU's TLB must be flushed to
> +//! ensure the new mappings take effect. This module provides TLB flush
> +//! functionality for virtual memory managers.
> +//!
> +//! # Example
> +//!
> +//! ```ignore
> +//! use crate::mm::tlb::Tlb;
> +//!
> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()>=
 {
> +//!     // ... modify page tables ...
> +//!
> +//!     // Flush TLB to make changes visible (polls for completion).
> +//!     tlb.flush(pdb_addr)?;
> +//!
> +//!     Ok(())
> +//! }
> +//! ```
> +
> +use kernel::{
> +    devres::Devres,
> +    io::poll::read_poll_timeout,
> +    io::Io,
> +    new_mutex,
> +    prelude::*,
> +    sync::{
> +        Arc,
> +        Mutex, //
> +    },
> +    time::Delta, //
> +};
> +
> +use crate::{
> +    driver::Bar0,
> +    mm::VramAddress,
> +    regs, //
> +};
> +
> +/// TLB manager for GPU translation buffer operations.
> +#[pin_data]
> +pub(crate) struct Tlb {
> +    bar: Arc<Devres<Bar0>>,
> +    /// TLB flush serialization lock: This lock is acquired during the
> +    /// DMA fence signalling critical path. It must NEVER be held across=
 any
> +    /// reclaimable CPU memory allocations because the memory reclaim pa=
th can
> +    /// call `dma_fence_wait()`, which would deadlock with this lock hel=
d.
> +    #[pin]

This comment says that the lock is acquired during the DMA fence
signalling critical path, but IIUC we don't have anything like that
right now. Is this based on future yet to be done work? Can we reword
this in a way so it makes sense in the current state?

> +    lock: Mutex<()>,
> +}
> +
> +impl Tlb {
> +    /// Create a new TLB manager.
> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
> +        pin_init!(Self {
> +            bar,
> +            lock <- new_mutex!((), "tlb_flush"),
> +        })
> +    }
> +
> +    /// Flush the GPU TLB for a specific page directory base.
> +    ///
> +    /// This invalidates all TLB entries associated with the given PDB a=
ddress.
> +    /// Must be called after modifying page table entries to ensure the =
GPU sees
> +    /// the updated mappings.

If this must be called after every operation like that, I wonder if we
can change the design to require a guard like pattern something to
ensure flush is called. WDYT?

> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {

Hopefully we don't need to be calling flush() from anywhere in the
entire crate. Can you tighten the visibility here and in other places?
Many things seem to be pub(crate) that don't need to be.

> +        let _guard =3D self.lock.lock();
> +
> +        let bar =3D self.bar.try_access().ok_or(ENODEV)?;
> +
> +        // Write PDB address.
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.=
raw_u64()));
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.=
raw_u64()));
> +
> +        // Trigger flush: invalidate all pages and enable.
> +        bar.write_reg(
> +            regs::NV_TLB_FLUSH_CTRL::zeroed()
> +                .with_page_all(true)
> +                .with_enable(true),
> +        );
> +
> +        // Poll for completion - enable bit clears when flush is done.
> +        read_poll_timeout(
> +            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
> +            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
> +            Delta::ZERO,
> +            Delta::from_secs(2),
> +        )?;

This has zero delay on the read_poll_timeout - what about adding a small
delay of a microsecond or so?

