Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2N5KKwk+uGmpagEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 18:29:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253829E3E5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 18:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A20D10E203;
	Mon, 16 Mar 2026 17:29:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="JLJ0lxJH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010060.outbound.protection.outlook.com [52.101.46.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB63E10E1F5;
 Mon, 16 Mar 2026 17:29:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AhpnHe727OanRJdmHZ52kXVBsMj/WtKOIRib+I7foaZOIcB+blrNdR5u+5u43ho/rYS5QHRxF+FZWlYJ2s91w6MkekbXS3zfk34xtXHbUoptXi6oxfFerEZnEuxoOEcyCA7fwaNmModcd7VpBnEvNkPp6xhn0XhjdoJ6WrtekgkJY4+oqj3oqTFRfOrWqbnwSRQObdv9dsDCUYLQfIPw0N6XYcThWoD3yciC5pOEW0B0PO74VPwTgHNfWnwXp5DpmkbHqKL+mX+RKb/e9wMko4q2KP0Qxx9zJFO4ZfzQh/Gsm0bRYSpmasiYfxVdqH8AWYuVKhIuIdMc05ikBElyjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eu/Q9quxmQXB3HM4kN20P276xyr8I8Jq3TC8W6T/RhI=;
 b=Zb+Lln5YqGpFQGzKW0nE+FGM+uqheuq8qglj1ZALNqOj1hnnrYHl+Al/dd7SpytuX8YOmby24h1uRkV0VRXxoRLmyUNTBkTuiUT6ph/RyNoC/mPqWKjd3batXX1G7yS6gV0gwftolpodHj2Dvb3dc66DW6D2x9vxm2H+vG2+ngkn7x5kLPUKRG+iPeE1R0oQgIrFXjQZ2HvaGTrSXhFxDJr+BnlIhq9/W7HMzvE9OlqyFplhbwDbHoxWOt4l5lal43kvApBN0z8jWD1CZPHYMkTZ/tAwjc7EEUY+Q1V8za00eLbVN2/KNRws7IodJoqkywx8w5ektqcz10wezHpy1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eu/Q9quxmQXB3HM4kN20P276xyr8I8Jq3TC8W6T/RhI=;
 b=JLJ0lxJHvIuKuxUY1Ldp47H9Y7UzNR5evKM0oEo+g436RQKhQxScMSiE8RE9KIMj5ntJVXl7URtMLA5uGNQmfvGuuSfjIRZXKq68zmhIBZbryavx3wt5etPtUL1vVW/fWLe9Ni3X6d7/Cpd1DPfGmtRD5dsZ0O1WP9ACNvNfXSjN9HTl4fyoy0VdxC96RsyG8U0Hg+59X6RyhP5ovx3c8IXHiOWW6L4Dq70IRyzTB/vDPcegWh3sQPJU7KifwuzPNJzYr6fWApqETdubBQWl+fqCe/PG9nc0DMkxQkRlmYl8FUAWONbl6ofNiIXBt1LI3aNQ7Yk9H6gt2xTN5DivoQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA1PR12MB7544.namprd12.prod.outlook.com (2603:10b6:208:42c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Mon, 16 Mar 2026 17:29:36 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 17:29:35 +0000
Message-ID: <56c6e704-661f-420e-815e-8c43d48e18d3@nvidia.com>
Date: Mon, 16 Mar 2026 13:29:31 -0400
User-Agent: Mozilla Thunderbird
From: Joel Fernandes <joelagnelf@nvidia.com>
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
To: Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH0ZOYNAP1CN.1NL9E28UC2C95@kernel.org>
Content-Language: en-US
In-Reply-To: <DH0ZOYNAP1CN.1NL9E28UC2C95@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0022.namprd13.prod.outlook.com
 (2603:10b6:208:256::27) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA1PR12MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 95dff5bd-9a0d-40a7-4415-08de838197de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: aI4lJBGtPp3IXhNg44XSP/byoWz1ywRfZk/t06c8rpejjUHme3sWNWSEKESPcIot81TucF5C/fgEsuYj/1+c226yOfyIy4BA+MzXt2g9ao8WNnNdzv+ngRRRG3dvaTMxaXsy3QjlhUS0c/CsH7T8TMB+M39TWotld9Jyg27jF3yjXGl34geM7LgU3x1815fbIGYpN1ElhKfZcd3VK/3/HeeLIlWELncmfZJsC/JMxx+V6Wr55H83QlVfcU8iRfOeCZewlIcher1OFlU1AfLyctJ4qOav9dLftn8NinYLzmuY4yqRUy01n9vXGFAa30kp5wz5SaIID+fnQMZIn/G2+BK62cyXs4HUM81JdD1j+dDjMYFl1G62ZqDbVoKNdvW2/l1xeSZ0wYxQ0/7T2M7ydqzJIcfygZ+GugCaXRZoVoeplffftzxWU07p4argWmmQbhnXr4OyMda3a/x9jVKYhssYbzVlhNB5PnfYJbfFmgh/Pnb/rTQi3dRNcxALNufXCSL35eJ19F6EL/o7LEn99Z1haIwVYIolgknnU4UFdy8fqoJgQWNUBHbDwtMKTaUSVXcXDDJs7EHoAiHwhyNtwynISDwHHGWbdgGyhAIHTFxotN38XgHtSt8YTbW4DfhH/pjeoRfDl1oIJd/ZMwjOuXldH/92QneHZ7okHJZw/vRfV9MHjqQD8+Tta4uTFvwTQoe+AjyScKh7tEqmKGxJp8Dpq3piPkL5PliNaznsb/E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFZvd1hVbnFlbmt5MWdzSFJkdGNvRVI0ZWNHQ01oeTUwNDUzSnhMNThyNklX?=
 =?utf-8?B?SjNsWHgxbmw3WmEvNGEvUW55eWRETUlSN3R2SlRRNkhvU2tFSDNlL01VckRp?=
 =?utf-8?B?Y0VKMTJFMkhpd0hKcUtmQjJkaTM4N1ViRGtUYkZHU0diZGhLbE9OVUkyL2Rp?=
 =?utf-8?B?TDRzS29NeXhNQ1dhNm1Jb3gwcWYzbGlDNUFRVW5sdnEzRTc2ZkhibTF6c2ZZ?=
 =?utf-8?B?MWk2MUl2T1poVHJtSm5CTm1ldHd2aW9wQVpPaHNSNk96ajFiUmVBZVNpRVdJ?=
 =?utf-8?B?N3habVFJUFJ6Qm0zK3R3V1lJT3lpcmRMZWdrYUxSL1dLVlZBQ3l4STlUYUE0?=
 =?utf-8?B?V2l4VXlkL05pR09MbG5XQk54V1RHbnhkeGdoS0g1WFhrWVdEVG12ZHRWWTNk?=
 =?utf-8?B?WC91cHJIdGhFdnJlSXZZWTFxK29QVXRXTU1KaHl4Z01welNiOGNjMWIvb0Jo?=
 =?utf-8?B?YXlFM2k5Tnp1bHdTS2gwLzF0WVJZUVcxeTh3ZTBsS1VGYytVSWVKSmJ0TU5t?=
 =?utf-8?B?S3ZQOTJaeWVBeGZ4WXFIWTNHRndjd0pXUTF0WEQ4WFJxRGxHZU40aXZVNTlB?=
 =?utf-8?B?M3I0YzdLQTl2c0NoeXFoYUI5N2JuVVNYUWY0c0FxMmN3ejd0ZDVsMXcvSXAz?=
 =?utf-8?B?RVVjUjM3N1l2bnJxb2ZlM1BSdFlYcXpYY081R0xXSkNVOHd3RVM4U3dLaFds?=
 =?utf-8?B?M3ErVWNIQzR4OStMbnFqYWxGbWRHV3FPenZCY2YzZVliMFlxSGFhQ3R0ZHlu?=
 =?utf-8?B?aTBBRHlXZzBXZ04zRDFydmJOaXN5M1FscWErTlA0SUdIdmJzc1FJNHp4UHdO?=
 =?utf-8?B?MzRROVJ3cmgrYi9zQldWQVlhUTZkUzJmTmJyTnFBb3BqOFh2TlJTUG1MQkcx?=
 =?utf-8?B?elR3eEF4cFBvYXlIUS9TTVNSbVd6S2lPWmtUVThzL3RmeUpMVjVMeVpTM0N3?=
 =?utf-8?B?YXJ1ZEViWDRtN1JiU3hVaE5sL1JENDQza21DWDg5S3huZkw0Rktrd3hRdk1h?=
 =?utf-8?B?bTV1WHFxZGp0TGdYMDlzYjNQQ3Q5STgrQXY0T3pZbnhBSndXK3lUa0o5UjNW?=
 =?utf-8?B?WmYwSG5IWnh2Qk1UbUxLZkZkeDVOZWFFT0NOZ2FFWG5OK1RGK0E3VE9LbWZ5?=
 =?utf-8?B?Y3VDZkpoNkVYdE05MFo2VnRSbWZQNXhSM3ZnQzcvS2Q5Y1VkdmE4Z0FlSWNp?=
 =?utf-8?B?ckdTVUUxdUE5bkFVQ2tqTWd1czgrbjFHYUptTzVydzBGaE1PUjR3cDBsL3JP?=
 =?utf-8?B?dTlyUmtKcjJXbUxDaGdRSi9tRVovcTdqUzlWYkVTTENTWng3eG1lY2ZuajFZ?=
 =?utf-8?B?Qk4xeG9nRW1mTnNJYXpoc0JVT05DVzhBZ292bUMwcU9NMVd4R3BEaUYwRXV4?=
 =?utf-8?B?TmtnLzMvcW84NWVvR1dPemFsUnA3dU9nVk9NWmJXWldBWCtLK0dsUFVlRm1L?=
 =?utf-8?B?c2FoeG9uNmozcGdNSVQxVm5vTFFVajluKzM2NGRkSHIwNjJVVTRlbUZOWWV0?=
 =?utf-8?B?RDh2Z3hGYjNHblM3cDVlanBhNWFHb2dQeGRId1c2ekZYRDl6U1JNQUZqODFq?=
 =?utf-8?B?QWlXK1RIQXVMN3Q3WkV4OEpnSEs1RVhaaU5RSGVvWnpyd1hRTkx1UGp6WG1M?=
 =?utf-8?B?UU9hNnZVdDN1ekVTREdLakVKaHhDT3d4c0tGL2lZMzRBTVhlOTZIZ3ZQQ0hD?=
 =?utf-8?B?MENmNmdWYXZERjREYXVjR1JXdjBOeDB2UHVML0xtcEJlSHVMLzR4dmlVaHJk?=
 =?utf-8?B?Q2tVOU5MV01rbWZUaDFHQnEvRkdjeVdjRHhNY0dlUDlpYlVtcXJUWWhWaG5H?=
 =?utf-8?B?STk2T1U2N1FZWi83QWpxTUp0ZzZCVG1SZmFGQ1ZyUzZWdVJsTDJ2QjlEa0dr?=
 =?utf-8?B?Q1JUTHNLd3NUeUI2SXVyMytvWFp2eTNpV0VRZjV6N1RRZ3VQNVFZMWpBUlhW?=
 =?utf-8?B?R3k5TDZyYlY0dzdzeEVnbGNNVXQ0SWZRZmNiK0pjbGhETHBvN2NtYjZjVitV?=
 =?utf-8?B?SVlyTTRFMG52RXRjd0tvVC9URko4STJjTFZCMDdyUkd6M2lSSDVKSmN5NURm?=
 =?utf-8?B?MEVnREphVDY5WUxFczFwV054TCs1U3hFaEt0bDYvMkhWVlE2dDQxSklMVG9p?=
 =?utf-8?B?YnhGZVFSbHArNWJkYTFWRzBVNit4S0ZhNFEvODQ1SGJVK05LcUlTWnlTd0x2?=
 =?utf-8?B?RFNLY0NQUUwvU2VmQnc2VnROejBEaExjZ2lYSjNwbjNYQ2VoY3JiUTRYOG9k?=
 =?utf-8?B?QTdZMmNTc3VoYXg5RnRaK0FpVTJRL0l1T2R1SjNHckl6bCtRRnpVbjdoSGJy?=
 =?utf-8?B?TzNEUVBjdHN4RUNia1JiaGUwOUFnN1JRVWlkNEZTb3BXRnRhK0ladz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95dff5bd-9a0d-40a7-4415-08de838197de
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 17:29:35.6582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roIOa7WB+RpRqz2sGbzAgKmrrgdr2WNo97EVoYmPDnfQ7PsE5mjc+N50IhqfE1HPML6Zczn7MDVx0PrcCT1TAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7544
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
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1253829E3E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026, Danilo Krummrich wrote:

> -R:	Christian Koenig <christian.koenig@amd.com>
>
> This should really be a separate patch as it is unrelated to the addition of the
> Rust GPU buddy code.
>
> +R:	Joel Fernandes <joelagnelf@nvidia.com>

Agreed. I'll split the reviewer change into a separate MAINTAINERS patch.
The F: path additions will stay in the buddy bindings patch since those directly
track the new files being introduced.

Thanks for the review!

-- 
Joel Fernandes
