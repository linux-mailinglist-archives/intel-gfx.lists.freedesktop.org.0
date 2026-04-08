Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHFfDizh1mnUJQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:13:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 985E03C4B76
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A51910E723;
	Wed,  8 Apr 2026 23:13:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="E3JqTaue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011016.outbound.protection.outlook.com [52.101.57.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C9810E723;
 Wed,  8 Apr 2026 23:13:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3lQ9XRinkR2qNbnrBKGz33cWOWGUpuzS6c+S8psPz8jwp0+sq316u39fp7zMg4Jgk//5dFt95udo5wBGCdou4EwoNF6M5ZeorMqFngiVUVMrXV8qu/HAkRxpRQ38PsM9SKVOZTnmhqQdZ44GcdBHl1k25aL4PcvrnF6X5Ut4YR1o4P/riFvuteH3eawZH0Fes5yuFunUdrzRmJjoyNZxuQH3K59/rCCBEgumfCRg78anP/MW7YfFftwNG8ly0DyLwpVXoniS4MB4EW2MtcUyK2/jpDOxbC0luIw2rG0VIGrjCRVCbCnaZeQAKeWgE7+QnB6L0qkNquELxal+2HIZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3pWKnk+SMkONg6V1V5C0yjzGnuI63EgGrA+sNBcSDA=;
 b=FYjSLQEeI0oxFzsUuWScy0oyVnlppLT1ZWUR5/YqZmPHyW/paJ3HMTkqJQ6Jkn8hFUTsmxhH02pa1SuE2BOwsVnVBicBKD2SyBG94pcXCG6zlpV2wqHnARsVnuQmLVEMA+jkKf1Bl8omi+5aAbC5HhCAoi6KsHs17dPLEI1ohQK7DNjE6FAJ71siOTocc7M3ERAodjmzGnNKYveuTdu6OukTJoybxJRijrKwj0lnA5aF8TmQ3TcMN1Yjq4iQiFnWk8gInx1c64ESZE2Iiy1ix/TE2h4UpEGHDZ8fChdD8pWb3nJaCcN4rSJuckmvK6h3jWZJ9dDUK7D5jSDwEW308g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W3pWKnk+SMkONg6V1V5C0yjzGnuI63EgGrA+sNBcSDA=;
 b=E3JqTaueGvqfyCBdNn1oYjZhh+/6AHg+vEGUyEHdff2OYr+23L3uNgryTqexNPn0bQDPJFbRWMFcS7oQr6W/TvvUEhRNmOTOuSWxGT8G8GCEOGgVERkLOAvJPJZ9iGiveUqqoEk9wyzCO9bvKL4trS2dL5RFKgic9Oy8gW0LaBQMC/kEOaqQcSKynKgvhLwCwoQf/Y5ammZiPSORWENMdTzdNSp0qk9HK5lAMyJovP1U+NdmxkpSYXJxLsBoLQVKf+Z3C9nrc33eqIraLFOiYed+e4eaWUjW7VXVioQISzpcNSrdHbjQeXpq7uzceCFY773L9/cbawig8j3geJe+Qg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 BL1PR12MB5897.namprd12.prod.outlook.com (2603:10b6:208:395::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 23:13:37 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 23:13:37 +0000
Message-ID: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
Date: Wed, 8 Apr 2026 16:13:33 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Joel Fernandes <joelagnelf@nvidia.com>,
 Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
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
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
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
 <DHNT32C2Q5HN.LLME0RV17Z8V@nvidia.com>
 <da8d03f8-0294-417b-b684-2c20d577f94a@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <da8d03f8-0294-417b-b684-2c20d577f94a@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0247.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::12) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|BL1PR12MB5897:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d5845e8-dc0c-47de-6fc2-08de95c4766c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: Le2aZmmwIIORLWqF5hNov6zyy1eicARxfPnPGgBzT6fJEJX/+xWYO43gqJfjsQkP+nx7NX/y9u/9wMewpK8ZhnSzjpg8A+/kRBiGleFXaWhmYoX+wrd9CvOmKAImRTP6FkwJgp3riKD7VrewxSG/D+zwsQi2zeJu4nNSRH1h0G0D2DvxqZ37Wac55uCPgIJoqHrKAG0iWo7uqzvuQjgJTbjUc+autO+vrjJWYkU4b2E54qNFqCaVqybRxKi8AJe9qv95UxCyXM9PYGXcHvBm1PlxTLswZWy58gcxdDoNhDmcl393DajiS/AxL6lHYvEcUZ0TeURSs8jIj9uvNl5fVv8aMWIPxSGRckDnf55QclJuThtpoIT36titAzBYEe70MOma62+6+91b8u+vX362j3T7fLWmrpfkH+e5HJpAXk9KdUm7Z2plNJnFeHDlp8GDSfOyZXEO/BjlyqUNH9JUMUnmzO0943ARHJS7WbOixsGTN4iQmw3H74RXpb+c7z8Cl9gAE+DP9sw9V5Ee8qIVTMkcsFChzjiEZ55QkfB2Hi6yO6a20VcN57Cp6cXejcGgbXZInFMTjWsXflWmo0+zCJcqsnsMfGLnlWkrE/TGhggYnO+9yuo/S67gXvBhejvZVgB2EtRrGf29KDYkWsWEuZHWn+k/JIosoQ6lh6hqq01ser99/QR+xNGwBAGoKQ7RtacQuBknYTklS570mLjE1BvOkWYVPREkKQ7bepHrTRE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3I2OEsvSjNpOEVpdVByYU1Rei9RWDRQL3E4VUF4bHRQWnpYaU8zRjM4Q2Ju?=
 =?utf-8?B?dVU3VEJlZ1FERU4rVXRLME0xMEVkTzB0a3AwVWJ0S2g0UDlpU250bklVelhY?=
 =?utf-8?B?QjgycFBRV3kzbmtvNWVGZmcvbEhURVhXN3hzZmZsOFBwMm9MOFJnTU1xbndo?=
 =?utf-8?B?QldUdXZieW1hRE0yLzVLdm9BZVVUUFF6SXhsWHFHZktaQk4wbUM0NiswRFZ2?=
 =?utf-8?B?Zm4yU01SRDdFUS92UDBOWUtqOGhXN0krZk51SDk5aXRoMm1hcWUrZ0x3ekhO?=
 =?utf-8?B?ejlDVWhkWlR3UVpMQ3c5UDVTQzJSYmw1T1BPajdobVI4VU80Njc1U0RsNVZ0?=
 =?utf-8?B?UVVLQVlqTE9jRzRzSGhpNzRaTXlkM0wyMU54SzhkbUlvSVl6c1NSQy81Vk1q?=
 =?utf-8?B?SDJXYkR0NmU1V3ZqWU8vbWtKdEszZnBhUEx5ZEZiZ0l1MlZrMmRIMlNKSGZF?=
 =?utf-8?B?OEV0Yi9ZRlVGTHhRL0VEMmpRdXVld0NhTTkwKzdpVy9PUWJjRi9NZ3d4ek50?=
 =?utf-8?B?K0RueExzOXh0ZFR2aEFUS3dGQ3RhbDFNQUR3c1lFRnlpckRnT2VaeWUxdWN4?=
 =?utf-8?B?WllFL2FHa09KbU1jRkdXSFFwTFFvYythblJtcXEzck5WdUdiWHlWbWpFY0pj?=
 =?utf-8?B?ZU9XTDJBQU43RW41Sy9vTFdWeUlOa0t6Z3pORzRyTG5OOTNhM0Z6T2VZWEls?=
 =?utf-8?B?Z3psQ09oV3RRZGdReUxzUXh2bnMyN2hTM0tsSjBGWUJhMDdxbGdpak1tNnJX?=
 =?utf-8?B?MHhheXVaSVFkQ2RzZGFONHRIaGJvQmlxeUQwZDQ5STFiMlMxV0xHdGxGZ2xJ?=
 =?utf-8?B?Q1lhYlhvczh0TUhIYXpVZ21KNHVwZ1c2RTIwTW5ZT21xM09RUkljK0d5NENi?=
 =?utf-8?B?cG1GNUVaOW9QQy8yK0dqaHcxODFEUEkyZ1EzNXJhcGdKVFJBUmpxYlhNWE9X?=
 =?utf-8?B?N29hYWRaVjhEY1dBVUdZRlZoSUlrMGRTbXlsdFI4OVJneHh3NDBycFZQTWxG?=
 =?utf-8?B?NkRWeC9xbVZMakc2RllFdTlTbFgySVdMdm5vVjd0NkEzVjBGYThZM2lqcUVj?=
 =?utf-8?B?TEVCVTlNQXRBOCtrMVljN3lXbUEyUW9RU2hydnN6UkJIUFpzalFCU0llWHAz?=
 =?utf-8?B?R1d6cWM4Z3A3eE5oSnpLUkpjblhLVlQ0YzdCZVRsQlZGMWxsdzBjNVU2VkVS?=
 =?utf-8?B?T0FweDdyajVGVGRoY3FiSkN5MERWeTVXckZmc042VU9hMUY0K3RiNmM4QWlV?=
 =?utf-8?B?MWI0NVRsZ2RXZTRZOWtMUUdaS0E1NExGZmtEcEVITFZYL2x6QVBrK1UxbXAw?=
 =?utf-8?B?SVJvSGxXd1VZY0hCQmdpaTExSnV6M1ZzbzR1aTZueW1WTFRld0RoMXR6Zk5t?=
 =?utf-8?B?UXYvbUxVRTJ3R2xwTERFMEJyR2ZacW1EWXkvTUdsQkJYWEtudCtzME93OXhP?=
 =?utf-8?B?TlMzc1k1eUxrRTd4Y29hSVZSbHZNV1RmWHBzenNlcmdsT1ZjcEdiajBlRFpo?=
 =?utf-8?B?bkdJQVBsZGlFMHBuTDErQ3NxYVViMUF5YXh5NVEwV2s5cm1jcGMyaHVGVWoy?=
 =?utf-8?B?MENMSTVVWTlmamFTZEdLRVRGSHVPeXRFWTZWNG9tQnFxQ0YrR3YrekpSL0hy?=
 =?utf-8?B?WVhXYU1DZHp0cVpMOFRHdjVHeUJFb09YOXdnQWdmNmxZOGI3QXBIOS9pTDJn?=
 =?utf-8?B?S2FScVpEMHgvRUJXOE1tL1lSb2psMmdzbmMzV25qNnhOZy83cDZFbm1rVWpV?=
 =?utf-8?B?ZnIzanhMWGlHWVFUekRQRnltbm1xcmptVGpkNFltYXphUDFwSDlIaWFJWlNt?=
 =?utf-8?B?aGgrTWpPbUwxZ2hIb04wdTBhK3AvbmhzeEpyYlhsdTJoaityUHVSK1JBWGF0?=
 =?utf-8?B?UmloNnJDaTIvMU91RzVORWdwODI3ZHhIQlNnNmpYaW45S3JVc0lxQTdsbzJ3?=
 =?utf-8?B?VUlRSDNSWlEyNFVHaGdQb3FiVUphb2hlazFDR0J4d092V1F1WXFjckF0MjBS?=
 =?utf-8?B?UzFkaDJHK2I5K0FqOUQ4dGZlTktCSmlpeFY2RDBUSlRJTjFRVUEzQUwxclVs?=
 =?utf-8?B?MWpNNTk4N1ZUc1lnUUcxOE1USFhoTEQwRGdyRDFZMHRUTXdpRHVucU9xKzE0?=
 =?utf-8?B?bWxHQzV0TnlQUi9xenQrR29OZGtCL0wxL1o1Mm4way9qZXZJbCt0MWtqcXFE?=
 =?utf-8?B?UGtXd2U2emZuSUlGYzN4dEpVZG9sRHJNZlpGeGR1SDd6N3Q2ZzdSVzZZUXRo?=
 =?utf-8?B?RVlON3VUbS82a1p6emNaMFRKRGVuRnBkbWlzYXdLT2UzQ1JtMDdLMVVmNEZC?=
 =?utf-8?B?WWpvNHdLdnhCR2x2ZEJLOVZDVWlNSHI2cUE0ZTRGa0xlZ01Pb3IvUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5845e8-dc0c-47de-6fc2-08de95c4766c
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 23:13:36.8798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1u///sgOWHEHKVUrD+UlVdLUKdMCTxobByQzk1dxNhf0AVXujA3esGPWH7eJ6LOHUKaQiywMkySlaJRHthne7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5897
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
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: 985E03C4B76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/26 9:58 AM, Joel Fernandes wrote:
> On 4/8/2026 9:26 AM, Eliot Courtney wrote:
>> On Tue Apr 7, 2026 at 10:59 PM JST, Joel Fernandes wrote:
>>> On 4/7/2026 9:42 AM, Eliot Courtney wrote:
>>>> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
...>> [1]: https://github.com/Edgeworth/linux/commits/review/nova-mm-v10/
> First, thanks for the effort. I looked through this, its pretty much what I
> had before when I used traits. I don't think it is better to be honest. In
> fact your version is worse, it adds many new types and things like the
> following which I did not need before.

Hi Joel and all,

I also looked through Eliot's above attempt carefully, and actually
liked it a lot (sorry! haha):

* It cleans up the code. The initial working version was readable, but
  also had lots of noise on the screen: match statements and pairs of
  v2/v3 statements.

  And interestingly, the mmu_version was, in effect, sporadically
  implementing a Trait-based approach. But because it is custom,
  readers don't benefit as much as they would with Traits, which
  tell you immediately how things are structured.

Joel, I am passionately in agreement with your principles: code must
be readable on the screen.

In this case, though, Traits make considerably more readable,
especially if one makes the very reasonable assumption that readers are
thoroughly accustomed to dealing with Rust traits.

> 
> To put it mildly, the following suggestion should not be anywhere near my code:
> 

lol I understand, believe me. But this is short and not too bad, really.

> /// Type-erased MMU-specific [`Vmm`] implementations.

Type erasure remains a semi-exotic thing, IMHO. As such, another
sentence to elaborate on this would be a nice touch.

> enum VmmInner {
>     /// `Vmm` implementation for MMU v2.
>     V2(VmmImpl<MmuV2>),
>     /// `Vmm` implementation for MMU v3.
>     V3(VmmImpl<MmuV3>),
> }
> 
> /// MMU-specific [`Vmm`] implementation.
> struct VmmImpl<M: Mmu> {
> 
> Seriously, I have to pass on this. :-)
> 
> And, you unfortunately seem to have ignored my point about requiring 4 NEW
> traits (Mmu, PteOps, PdeOps, DualPdeOps etc), which I did not need before.
> So you're making the code much much worse than before actually. We don't
> new traits and types pointlessly.

They are not pointless.

However! What I think would be nice is: do a new v11 with approximately
this approach, and then we can beat it into being as readable as 
possible.
 

thanks,
-- 
John Hubbard

