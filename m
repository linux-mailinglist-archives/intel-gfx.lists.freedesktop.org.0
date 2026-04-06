Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LfXH00v1Gl0sAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 00:10:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A313A7C06
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 00:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76AC10E2DB;
	Mon,  6 Apr 2026 22:10:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="hg/j+AVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010005.outbound.protection.outlook.com
 [52.101.193.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9187510E2DB;
 Mon,  6 Apr 2026 22:10:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r8IsN0B3HxbEBYnmb9fpWEUZFGqlZ4RnrVgfA5ly+hyhsFmiD+TzvK+xZ2lQwTxhmEkxklx0P1y3xqlKQkqMfYkQwloV7epgoqGfFfggPgitsCEWOSr/ES2GvdXeRJzE3GQr/nnjcDbcIAvUhhzHLJ19f8v496sm+/fS6t315tBm+wcVJ2A5F7kkagILSW79JLtz2CG3f0FMcgBLQqWUkxqlB4RNuRFULdrTUI34LmyRSe89NVkv/2zxAEFXbuSyGS2ZnjJEo92mypSch0bVUivM9He583xZw6jgMfs3N2F7QZ/hFrMBBQ+3d+wzfKEU3dd2N9H8ZJb3SXb/rxFzWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfUeiECHdEaw+ln9Bbv2ulLns0DvBALGyvBpptmTdIs=;
 b=fP5G8cO3AoocqjSEw3ZwS9Xa8zy2H3NVHx1U0jieeqn2MpZLAaCfHmd4nRkNgVvg3C/Lusb6kcfJzE1tHm24Em/3dP89XD2kUfl2VKOmWO9HlyKSoV0ioYlDTRh8xAYsMXwFpJYNPQgsaGwZt8PWvW+otYOvtqdF1hjm+fpIchXz7j/xoP+V5FiXxD2AemeWbdDTGJlEIzbRPceqaPrk2aOO1e0IJl5RZY7rLgLEBPnjLmhmw6y3vMA1042QWePSniwuhTjgptEMZQuI1Fe343lF96hZBtYPgt2MG64pqNXlR1aj+AZn8Tfb8uVzGyJU3nfWLDMKQo5TqnBxu0QF0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FfUeiECHdEaw+ln9Bbv2ulLns0DvBALGyvBpptmTdIs=;
 b=hg/j+AVJPX/FL0GvUjYUIrR5ADzHYP1kanAux6OKAwFBzxd4TBtibMJkIB3K4yeWfT71BDHmYtqa8r6tm9+72EE6fkLiezauRtFWCmmQusKuTl7tmBBbd+daq1EbTmW2JCaa7BeG6TMMNiFzY0gqnx1QmCK7haAZV85g0K4xMoe8D6ck1/u8pvTY3jiHXtgKLgBESiqTDipOdbMdRdR0eJvG1odvzNlGzj2ZaKRDfUSvFEOCsD4hs7S+eGfJifsQaY1i0Qu7yyxhZxU4zfarmNVLpdbU+QGlvPoTfwMnCv+JC44t5jOZeTRWJT6KlURGUgNBqcScfUz8/OGX7dP1+Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW6PR12MB7086.namprd12.prod.outlook.com (2603:10b6:303:238::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Mon, 6 Apr
 2026 22:10:12 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 22:10:11 +0000
Message-ID: <39a476f4-ecac-4313-a59f-e00e72d2b426@nvidia.com>
Date: Mon, 6 Apr 2026 18:10:07 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Matthew Brost <matthew.brost@intel.com>
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
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
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
 <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
 <0f5605c1-32e8-4a62-b852-b1db01e42817@nvidia.com>
Content-Language: en-US
In-Reply-To: <0f5605c1-32e8-4a62-b852-b1db01e42817@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0731.namprd03.prod.outlook.com
 (2603:10b6:408:110::16) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW6PR12MB7086:EE_
X-MS-Office365-Filtering-Correlation-Id: 49e0ad5b-ed23-49d4-2d18-08de9429459a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: c1hZCZNT6W5oc7RcsqywfIiWqYv5lyReyQNfDeXHYpof/Fg0EamniLQqr7ZI1dsP4Ex8/iYWDYBb6R8Pwl+Md+DK3LjOBO9zcOvAWHP70s5DmJkKJmzqnBjd1jx79QulkNy+GsOdyWXiRMYyJDN/qNUYSaXmslaX2u80K0JA9cOgRsm1VpStmBklh0lOcstB3Gbk9gr6kcAkjtBpjW29+QN5FQBaVgVzDWd1LqQJRiMBY5rgnH2hdgNYbalWKYsslfg6YKO9RszM/9APNzjBm7D5UFBv5RF/wBiNTC7i+Ex1MbE2CaUCBrkXffchtQhGqdmjB60PH1d5OHLL7YqeRydSCYcJZkuHeSpiYrHy//mL14A0J3XF9pTbgbzitCRf2Ud42+2xG+4J+eJXQtQ7RuosRODul5C54wrp2ndqDajW3ubIS57kHBvgYz6gnIpMkElNvr2MzZmU8i9Momej3ypRwLq1XdCLzq0nbB/I3U8RoUlA8+ODWyT6gxZj3OOs6A24tpd8DuH1tjgXK8t2dkQAuTAldyavsxu1x3AQTyY+6TjlIhDRURCjxd0Kpx9mqeHxUPU5BRm3GZIQUP/4nk+3VGCquS414zTf2l8BudSphfZTcMQkSkP+MPoj3aV1UHRPpo6hAPPwdZ8cDH5Swo/8SsRqRXCLLBj7Hb0h19MSnIliPq+hV1UwrEktr94B7qLo9Fqnb4VhfJApi09BlyzWyGBY2v0wkrC14NQTVA0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0ZrcDJjOVJheFZVUENZU1BPUDdSSUc0WmdxNFJlQXpxUFpxK2Y0YkxiZlZQ?=
 =?utf-8?B?ME4vQy9nNVFnY1FuT2VWcTFqTnJMM2NYWnNITG5RdHViUE91Ti9XV3EvUlF2?=
 =?utf-8?B?K05DdVpmbHNZbDhYNXh6akYwYWd1azJtQk94L1FLa0tDdkt5UjlPeUl6cDlo?=
 =?utf-8?B?dXZaK0JuQ3BJd0p6UXJ5dGIvNFYzQ2dRa3p2aHR2aUxYRHNwK3RnOTBsTnhJ?=
 =?utf-8?B?V3l2czJHTUxLMEczV0I4QnI4ZFo5anpFNHJyY0I1RGIrQWNvcnlWVmF1bUpq?=
 =?utf-8?B?RkE4dmVzamY5MzhNbGEwK1lZaTdEVGhOSSs1bGE1UyttSUNzQ2taN1hVVDh3?=
 =?utf-8?B?bzF4aDcrV1BNdWUxajl6YXkva1E4RnBMaFFvLzVUblM1SjUzL2tzcWZ0ZVlr?=
 =?utf-8?B?QjE4enRrdVFqWjJqd3NOeHZ4RFNieEoxRWk2eTRtK0N2ckNuOXEwcHJGNDF4?=
 =?utf-8?B?d0hld3JYa3FmYjFGdys2bFpJbmRuVHZkdjZtQUpiS0lYYVZndE1BU0ZnTEdU?=
 =?utf-8?B?b2VlK2JqVWUxN0VnOFFYS04wUEsvRmxzU0pqQW1ZNkpJeGMwMWc1THU0UlVQ?=
 =?utf-8?B?SUxnQktqY2NmcHlYWGt1ZjFKTmJiWHJxYkZCN2pqdWJWdGkvNkgzQnlIVThP?=
 =?utf-8?B?U0hCK3RXT2djeWtsSTF2Vy83azlGL0E3WFZXUEdFOFFiWW9DUE9mMkhOemtW?=
 =?utf-8?B?WDlESUNMZlFja1gwa0lOcXkvMWc3ZmFEZ3FpZnNlNm5VQnQxTjBrcnIwTC9U?=
 =?utf-8?B?OTJ2Z0I5dkswV3NSd3FQa0wvN3UrYkZTMFlRSXBmYjAycExtRDU3NkJzWll1?=
 =?utf-8?B?WlpEK3lRWHN3NEk3TlhhNGpONmpvOTdFYytxUEtpTGdtbDdUV0pNU3VPRzI5?=
 =?utf-8?B?SnBoYU9DWi80SkdoOVZSNUQyM0haMVU5SGcxeGdCM1UxSEppVW00MjE2Q3dW?=
 =?utf-8?B?S3UrQlVxZ2pYR0VJdFpwanAzUWVCZjRtaWdCRUlnMU1sRXFMeHhNRW1RSDJ3?=
 =?utf-8?B?dURLM25EWE5qVXJPNjBqaDdCLy90d0dKQW54UVdDWWpwelVBbGJ5bzZwRjZt?=
 =?utf-8?B?c0dydGdDRnpaUmpRdXRxTnc5U0NGUlNkbFFwQkhhUnNmditUTHlFZC9DaDd4?=
 =?utf-8?B?VHJXNHEvRTgwUy9WK0dvT3FXQVZiMkFMTnZuNzRjYXJoa3k1RXNDbmZCMy9M?=
 =?utf-8?B?c0tvalJZNlNiaFAva3Zqby96WThDcUlZa3RIZW9mYXN4dVZHMmhoZDNUNjdr?=
 =?utf-8?B?bXcrVEx1UXdOMGd2cTgyRGUwU3ZXZ2RaS01BS2Y3aGU1N2xlRDc3ZGNuRU5B?=
 =?utf-8?B?blc4TzljUWF6cWZnS3RqVW9haTdPKzFSSWZ2SkYvWlJkWEx2RDNGWWs4Ky9m?=
 =?utf-8?B?YTRLeWVpWS9VVmZjT0tsaU02cDI3M01BTXAwb0Vacy9wblJ5ZmJoMHhQVnhT?=
 =?utf-8?B?cFA2Uzl4SU81L3kwSTFQZml5S3BSTlZ2aUZGblo4WDZPYmJaN1BjUnpaNFp2?=
 =?utf-8?B?anhsUWkxVFFLZWpzNWdUUUhKT0t0Q1dTcFVJakFHS3BkcUJLSGw0VEY4bld3?=
 =?utf-8?B?eS96RndFeUd4aGtiL3IwMnE1SkovbmFCVFgvRVQwU3dRbUNmVzUxTExmZEtw?=
 =?utf-8?B?Z2VyTmhvVUozRXJJVkFTTGQxTHhoaUJvWTZHenFxRk1aQ1Rvcmd3SkNSVGNX?=
 =?utf-8?B?czR2ZzlJZEpPRWRMUmlwOUU3OHJBZTZqdG1XK3QwKytST1MyanpaVCtzdjl4?=
 =?utf-8?B?M3NXVytYT1hQeHJteXEvVUtiVW45Z2pNdktMVEdVR2E2cjRBdVUrNlViTVpK?=
 =?utf-8?B?MGdIcjdEWHdCYkg3YjVUT0xiTDRrZDVhVHE1MUZGOEFBazRGb2RmVzI3OXR5?=
 =?utf-8?B?ZFE3N0NvSVk1djV2R09iWGpBQ1p6UnVuR3Z4MmNCdG9DVmdQcXJyRElJMUNJ?=
 =?utf-8?B?T2M5SS9xZWRpeWYzaVBIcW14OXJVZkk5RHducDBCY1czSjFDd0FJa2pTZnlk?=
 =?utf-8?B?YTNLdjBOczdsUndGdGFQR05OT2NSd21YY0pPbXBVWUI4VzNzeXZXQlZ1WUdj?=
 =?utf-8?B?dUtYamlQTzYwOFU2QlNPOVYrdWNXMWRuWHlublFCc2tGS3VUUUFZZTVVbkEz?=
 =?utf-8?B?Rkw1MGFWV2JIdkt0QW9oamtGQjUzSnB5OEdGTHVZclo1dllMOVJTdHhUUVdn?=
 =?utf-8?B?SjFWNThhRTZQVys1RGRlcno0SFFqQ1B2VmpDOEsvYldqK1pBajF5a3p1QTk2?=
 =?utf-8?B?QSt5SVZqMlpIODZhYUJSYWNBOXAyZFRHTTFaT2JKOGtDdzFucDljektiSG5t?=
 =?utf-8?B?MVZSRDdwci9TN0xZOEFjQm5SWGRpSlZ4Z2grMU0rcW83My9NQkI4dz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49e0ad5b-ed23-49d4-2d18-08de9429459a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 22:10:11.7343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y8ZmXm2JrWFC+LTQTlPQfHrF10554uvdw8r1YqwwQfkexES+ZB9MVeP9YtSFMN8zQhhMim/H3eautcyMQeBKog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB7086
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
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D9A313A7C06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/6/2026 5:24 PM, Joel Fernandes wrote:
> 
> 
> On 4/2/2026 1:59 AM, Matthew Brost wrote:
>> On Tue, Mar 31, 2026 at 05:20:34PM -0400, Joel Fernandes wrote:
>>> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>>>
>>> After modifying page table entries, the GPU's TLB must be invalidated
>>> to ensure the new mappings take effect. The Tlb struct provides flush
>>> functionality through BAR0 registers.
>>>
>>> The flush operation writes the page directory base address and triggers
>>> an invalidation, polling for completion with a 2 second timeout matching
>>> the Nouveau driver.
>>>
>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>> ---
>>>  drivers/gpu/nova-core/mm.rs     |  1 +
>>>  drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
>>>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
>>>  3 files changed, 138 insertions(+)
>>>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
>>>
>>> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
>>> index 8f3089a5fa88..cfe9cbe11d57 100644
>>> --- a/drivers/gpu/nova-core/mm.rs
>>> +++ b/drivers/gpu/nova-core/mm.rs
>>> @@ -5,6 +5,7 @@
>>>  #![expect(dead_code)]
>>>  
>>>  pub(crate) mod pramin;
>>> +pub(crate) mod tlb;
>>>  
>>>  use kernel::sizes::SZ_4K;
>>>  
>>> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
>>> new file mode 100644
>>> index 000000000000..cd3cbcf4c739
>>> --- /dev/null
>>> +++ b/drivers/gpu/nova-core/mm/tlb.rs
>>> @@ -0,0 +1,95 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +
>>> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
>>> +//!
>>> +//! After modifying page table entries, the GPU's TLB must be flushed to
>>> +//! ensure the new mappings take effect. This module provides TLB flush
>>> +//! functionality for virtual memory managers.
>>> +//!
>>> +//! # Example
>>> +//!
>>> +//! ```ignore
>>> +//! use crate::mm::tlb::Tlb;
>>> +//!
>>> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
>>> +//!     // ... modify page tables ...
>>> +//!
>>> +//!     // Flush TLB to make changes visible (polls for completion).
>>> +//!     tlb.flush(pdb_addr)?;
>>> +//!
>>> +//!     Ok(())
>>> +//! }
>>> +//! ```
>>> +
>>> +use kernel::{
>>> +    devres::Devres,
>>> +    io::poll::read_poll_timeout,
>>> +    io::Io,
>>> +    new_mutex,
>>> +    prelude::*,
>>> +    sync::{
>>> +        Arc,
>>> +        Mutex, //
>>> +    },
>>> +    time::Delta, //
>>> +};
>>> +
>>> +use crate::{
>>> +    driver::Bar0,
>>> +    mm::VramAddress,
>>> +    regs, //
>>> +};
>>> +
>>> +/// TLB manager for GPU translation buffer operations.
>>> +#[pin_data]
>>> +pub(crate) struct Tlb {
>>> +    bar: Arc<Devres<Bar0>>,
>>> +    /// TLB flush serialization lock: This lock is acquired during the
>>> +    /// DMA fence signalling critical path. It must NEVER be held across any
>>> +    /// reclaimable CPU memory allocations because the memory reclaim path can
>>> +    /// call `dma_fence_wait()`, which would deadlock with this lock held.
>>> +    #[pin]
>>> +    lock: Mutex<()>,
>>> +}
>>> +
>>> +impl Tlb {
>>> +    /// Create a new TLB manager.
>>> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
>>> +        pin_init!(Self {
>>> +            bar,
>>> +            lock <- new_mutex!((), "tlb_flush"),
>>> +        })
>>> +    }
>>> +
>>> +    /// Flush the GPU TLB for a specific page directory base.
>>> +    ///
>>> +    /// This invalidates all TLB entries associated with the given PDB address.
>>> +    /// Must be called after modifying page table entries to ensure the GPU sees
>>> +    /// the updated mappings.
>>> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
>>
>> This landed on my list randomly, so I took a look.
>>
>> Wouldn’t you want to virtualize the invalidation based on your device?
>> For example, what if you need to register interface changes on future hardware?
> 
> Good point, for future hardware it indeed makes sense. I will do that.
Actually, at least in the future as far as I can see, the register definitions
are the same for TLB invalidation are the same, so we are good and I will not be
making any change in this regard.

But, thanks for raising the point and forcing me to double check!

--
Joel Fernandes

