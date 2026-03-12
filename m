Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMPNCrvtsmnAQwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 17:45:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F7275DC5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 17:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2DB10EA66;
	Thu, 12 Mar 2026 16:45:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="HMuo2+eS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010000.outbound.protection.outlook.com
 [52.101.193.0])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199F410E411;
 Thu, 12 Mar 2026 06:35:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EwdqW8NxCPG003i8NfyQg+maO/423hTgzUlKd0KLGiZM+L+eFscRsbf72wTAb96Zs/h9QnA2gjb+IkD0Alucx3otoBgt3w+6hP2182ZJT6FRoBZGw+SprFvIpLYNgQcpg34K+0xSxF0FSD7a/6nBAlABUPai2y+UKIYzyvKNTlaKkzJVVu+5+ihOjaBTxdkIwthGPMu9BQ1sq9DNQWpQpCOolhP55IYUs5izgiEYosEoIOpbsDFrANeCuKQiBvm9Sx2b6AeuE9MwmlNcne1pTZQDk5xDBDDg5cFDeSGj2DrEo3jVNFMXGCaiq2IFAAIFH9gojGB2eDDoWcaMSv108w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vudGGm24GwFiStmXc/QoOw8WbPpGG0Tj9KRDtTwmVU8=;
 b=r/HJz2a5K04IzsxZYcrWTRO3XyFYOYUvaMU9MRv7a96eWOcesz54mnL0oDKaAaARi1DokCDVwXMXyW4o9XN53IDRE0EVKrfHRVYKkzwvN298U+csO31IIJUPe9E51rHyfP0UUGcFRMMeeJDjrJcw31a4VsBXtAV9F7MG9cLNQWP0BVWX8efkUy9F9mNMoyAxBHishRkmhcvuZ9VetPteZcL/70a54GmcPk22JCgOgDjBt04LNPu3iCyIplvjCq/u4LveqXUDaGF6GUvymZreTFGXqiGA7W8eQ4ZIossphi/MKvx74Nj01tQn7kRqRQXwDa2fyhMCYYzmWn870oZixQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vudGGm24GwFiStmXc/QoOw8WbPpGG0Tj9KRDtTwmVU8=;
 b=HMuo2+eSrzXsYOcXZyHSLDSCGY4oYTwzq25x1n5L6XJW8abtvGkFA0M7t+kof+6txD1lKbxKQEPwZoKqmPcpB8VTGOYn9mDzt82kk11A0SdDiGT2tkU4j6nqAyZuKGxzagspk/CQMkvsECwy1utz7fHr4jG5Fodf5xNSNwhWntOx1zqJF5t3Ld6winyJhvDKttttwC0KB5x4Mi9PA34B2zM1hKFvqFq+GCrvEe983sUE18pPksgKbS5GFJksYef2CNdbnEGdcPqY2z3qAB/fQCtGz5xk7Xh470odQkrHo64dEJ1MOGyDeyTR18YcZioCn+XNe0F/gIXG8vOcTJWpEQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by IA1PR12MB6555.namprd12.prod.outlook.com (2603:10b6:208:3a1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 06:35:22 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 06:35:22 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Mar 2026 15:35:19 +0900
Message-Id: <DH0LFQ79MHXU.3LL1AQDO5Z561@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
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
 "Edwin Peer" <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>,
 "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>,
 "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp
 Stanner" <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>,
 "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
Subject: Re: [PATCH v9 02/23] gpu: nova-core: Kconfig: Sort select
 statements alphabetically
From: "Eliot Courtney" <ecourtney@nvidia.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-3-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-3-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCPR01CA0155.jpnprd01.prod.outlook.com
 (2603:1096:400:2b1::17) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|IA1PR12MB6555:EE_
X-MS-Office365-Filtering-Correlation-Id: 3693b8af-caf8-4557-d954-08de800189aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|7416014|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: NCw+XTzn7wM945VmxgjILEBIvrxavWo+Gpz74ApAAsclD+hO9d8x5yaK1YhWL4YohEWWcT1w8dvVKK1wNahk2aYX+NNgAu3SHzJijaXQe0TDfp4pnxBrXfbOXP7PJZY9psB7b8fGmqifdzy6qRJAa69Kh1R7moxkhdpsLT+lEJgjA4BTge0XU2rIrXnNdN7K9AhDZ13snZzi45RuanO/1bEqHmdT4Rk+bbN/91CGjuDbgnYf0Ll1o88Mkb8wh0g4GW7ioLLiLgEIpHsxzU+AkplIPulz9fOW7WSKjjNceRhshltJy9XBi/NGpSQr/IUpy05mW0vAXxPXpRdDONFygtyfmM1w3pLA4eL/KCge4OTdi71kQB3Bmc0qfWrN70d+DL1NXRZf5VfTgncxrOSUQ+gGSj1NQqaImF8qEh1aH2eVHgq7CsgGmn/WDg9xojlknwHvMzMkv6h5VlEGK9YpW+y6u+w7NKvYFvXO05I70qpRGw40hmmttRTirodYoXk1HCcIAIntYsV1ab8c4zpAAnsMJQ8bMn8YMf9THoj0/CD/KhNElbqd3Xfsp5Mzaznm5fc7tXvBSRt+BRQQdrtoz5ufBBKaq7MYENKM9IvKaFwVHpupduEUztd5KZTxGZRA/9aF1ZRyW3Oe/x8KH/6ZEHT9xcLhs+lA4X5GlXLd+ZuHER7sTYi1pSWchIi1SaGAjO1hXImfaNRFyyry2Qr6yXnCU4YW/ayBPUoyAnfSUZY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(7416014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0VtOWdvTU5abVg1NDNHUEtic2JxNzc3RDUyamFaaHVha3o1MmlXR1pQdU9t?=
 =?utf-8?B?aG1xVUczbnJndS9RL2xQU1RocVI0a2hiSEZSNEZBMFNaNmFYa3ZLNVlLWG5S?=
 =?utf-8?B?cWRNa3QrNzlEWFBDQUc3ejdBV0p6cnd1NGJQTzc1OWFzTWMrRTJ4c3RvTmNs?=
 =?utf-8?B?cUs1NkVibU56UXNDVVNiN25tdVhSUWRNKzZyVzhGc2tWQVZORDY1ZWdkRGZz?=
 =?utf-8?B?NDFZS1FPRk1jd041azArUGJjc3NLWk9MbzdVbUhzZnFRTUl3S2VHQjM5WktO?=
 =?utf-8?B?SmJDL1BaYnphL2hnd3p3SmFrRHNkT2dSWW9RQzNtWm84bk41QWgwa3E5WjZ0?=
 =?utf-8?B?cVRORXhKdVFlWGoxTWRCOHJnSnJ3eGtIcWttZE44bEhzRnJ0RVBKUVpYakh6?=
 =?utf-8?B?MWVMc2tqT1Z1Q2pqNWRieUdOOFpHK2xHRmhPYlp6UDFLRFVUK0YwVG1kc1Ir?=
 =?utf-8?B?S1psRWo5K3FOZUlTQXhkNTJGbE9zMWFTZjNBdWR1eklROXkxNW5lS0VtYlVm?=
 =?utf-8?B?bW9oeE8zdGZhQ3dZeFlmVGR5SnlTck84M1MrSC8ybW1RWTVVRHpHOVBGeXB1?=
 =?utf-8?B?bklnZzJISzMyUkFvTkpTejZmbjFIRDdXZi8vZy9DV2dwa3k0QkFLd1VENzlT?=
 =?utf-8?B?TERUMW9sbkFiaTdqNUdodGJYZjVqMk1kTXYxcTIzanJWOFNRd3p1Z1JqTXJM?=
 =?utf-8?B?YXZiRDl0eXZYczZEV2tmQklXL0krZVdyVlFZTDVtYUN4VXA2UnZiR0VyK3A2?=
 =?utf-8?B?Ylp2SEdNOHZudGxSdTFHNExRaVJ4OENTZENhSDNGYk5pTVE0azN6eFZLVFVZ?=
 =?utf-8?B?SVhMZHVyRy9HaEE5UzVrNXI3ZEdWeFJWQnh3VGpUNmZoTllsV3BWZUUyTTh5?=
 =?utf-8?B?OXo3ZGZDK1FjWXJPOGJQbU1iWktDclFqT3Z2RCtMcDdML0RjdG4wcGdtWnQv?=
 =?utf-8?B?RHcySkk1SEw4M0tJV1hVRWdnUVkyYmZTQVBaRm51b0Q4UFU4MGJ1NnV6OFBl?=
 =?utf-8?B?WXFGZXdybkptUmZoNDI5VGFhRXJiYjZDOU4rbGs5NlNDRHpXMmhXUlU2VUsx?=
 =?utf-8?B?SXg1SkRXS3ZnaWhkdFJDaWNMRGFGV3lzUFRNY1VKei9QT0psVU90WFFGN1FX?=
 =?utf-8?B?TWVKY2VibFpVQ3JWNkRERGNoV2JmamlGUC8yTlF2NUdOZjNwYnJBN0tscHFx?=
 =?utf-8?B?VFR6amVZNEpySEt6NEd5REZqUmZ3UGl0em1JSXI1T3UyWlZYUXB6WFB0U3Zx?=
 =?utf-8?B?dVM2c1dSd3ZLK1Q1ZUNRekE2czVPR096aTd3YjFDdDdRTGQ4eW1ueFpRMVI3?=
 =?utf-8?B?VzFYWjhDQ1NDc1U0U1FUMGtYTEIxaXdoWXh1NEdUaGYyQ0NPWHZaRXlxSE9C?=
 =?utf-8?B?dm0rZkdMMGdwcERXLzFGTGliWXJUOFhzS0VTNXNwSVlMV2Z5ZUgwaE1wOU5q?=
 =?utf-8?B?UWdDdlhxWi9oN3NLL1czM2JwMjZhdlU2dk51NEplS0plNzJGa2s0bDlsN0N0?=
 =?utf-8?B?OEFtUDhFQkxHWjR3V01zMXZ2UFFTeDRDUGkvRGRxKyt6VGZhSG5KdllKMi9E?=
 =?utf-8?B?SzVkeGtTK2p2ZEpueW8zZEpPVTl1dDZZSE9PTzZiVkJ6TjJIeXdKMXZJRkwx?=
 =?utf-8?B?Q0JCdXV6dkl3U3NRK1FZV0plc3owN291NTVPQVd4VjZycUppRGI3dnY4Wi83?=
 =?utf-8?B?MXp4U0ZBZkU5VFM1SHA0YzR6SkVCYjVKMU9XMXlFU051YkwzSXJ3ODBFUC9L?=
 =?utf-8?B?VVgrbXpiRFRiMGdYalh2Tmw0SE16UXk0a21OQWIraEh4U3FqM2NhTGZPMnl4?=
 =?utf-8?B?blIyRVJmejBIb3RNN01PU0xnOGZhRlFaamJreHJSK2hCckhaYW5OY3d5OFBD?=
 =?utf-8?B?eWxiM0tha0oxK2c1REdzdURmZWVoMmVPWGlQL3o4cnRSc1NpOStTTFhwdjhM?=
 =?utf-8?B?ck5lbkRPVksxZDUvNUphcG9Sc21RcnVzRUl6dmJMeVZRWjZMbkRRTmRjOFo1?=
 =?utf-8?B?NFVCa3hjK2lGSHBiS0EwS3dLR20za0o0Zm81Tm51YktoQUpvTUpEZXZob3lm?=
 =?utf-8?B?bnhpK093c3pTY1g2V0Y5N2sxRFZZK29yY28vVnAxUEhQdXdmQkpvVmFvWkZj?=
 =?utf-8?B?M0FGdTFkTG9CSU1QNVFSTUlWYVZYNTFZK3JKdWpJNzF0UGNiOTNiRGtoSjFy?=
 =?utf-8?B?YXNtZkpoODVwc3FrN1dSaVc4NzdHOEdzQ0V2NDFLNjBpN1FsL0JKL01HUm54?=
 =?utf-8?B?YlZjeHNrUjN4ZzZnL05aTVk2UzZ3cUE3TjJRbmhBTUJCSkZaM1BVQTlUU3Bl?=
 =?utf-8?B?VERINlZDRnp3eU5Yc3o4Ris1WityNXBaOWpJMWJZRmlJc3dBOEZZZUEwQUVi?=
 =?utf-8?Q?BHFrvGEdzCp0lWEKcqR9rSoRbrn1xs72B2CzDfU6WL3FW?=
X-MS-Exchange-AntiSpam-MessageData-1: x80xXMX3Wdffag==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3693b8af-caf8-4557-d954-08de800189aa
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 06:35:22.7592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SgY6BcvMBEmBSx1iuAvpIB4tZOaMmUY7H2gRSSZmyD7KL0qa54pRJ9tgDgyvaqHYGwnVmcaArDqZ9qLfHm6Ibg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6555
X-Mailman-Approved-At: Thu, 12 Mar 2026 16:45:40 +0000
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[58];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AE9F7275DC5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> Reorder the select statements in NOVA_CORE Kconfig to be in
> alphabetical order.
>
> Suggested-by: Danilo Krummrich <dakr@kernel.org>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---

Reviewed-by: Eliot Courtney <ecourtney@nvidia.com>
