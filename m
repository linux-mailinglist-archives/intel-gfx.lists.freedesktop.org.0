Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOksNjv8umlHeAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 20:25:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1658C2C1FD7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 20:25:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D322F10E47F;
	Wed, 18 Mar 2026 19:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ix0IYi6N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011003.outbound.protection.outlook.com
 [40.93.194.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D3D10E0C3;
 Wed, 18 Mar 2026 19:25:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NiJ01kfo3iSUyKqY+Qp9c0F82QMIKTDf7dRHdsDaAzl7IFS2/99GQOeVdbK70BvsdlCTQO8Eet/ylLpXjH8E/fPD+/KYoC8tByU5lu9+S/jQGRnSW6QWwLSl7u0IwR1NQralFXqhdgMMF3OvlDyKSmQ1MZSkx5TnZg2eM5n00buhb7aFaDN07hgj7oevg3wEZwwP8+o0bsNGJz/wsq55R0x0EOfLPvv9oLy0mn5scjFczTR1y0e65uYw2qUKiQ6939ThGBq3slBTMMxf6u3Uzrmyx88DFNzmMw2JUqrVmA0rvj1UYrwgpPH/gabm2K6k13/BWH9yYabN0Fe3R4Ncog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7jGp4zQCEShyB7n7DXLLrlmf6KDtIBM6svlQeqWjjA=;
 b=K+XThSZu1sqTAtTK92D9cVQAYYKdz7UqlAacmxzyaOsmh14i9MXZW3OATz8eRvG63agr1smZxMdcbgj49dMAb4tLPMPCDqjjBnKbW72T7tdxyfQVSop/makA5T6gl6yaFjA8532z20gfo2iQWIISwqhUYthi6Xmtqc+4/7KJt0iDuA+i3P+3ScfMDEgMwxQMFdw5mKPSX6VrpmfWKoJB7cXz3Mx0KYQQpn9FALWv42Ej4DWea+M2oTh9fkaGdph+ObD8FF+PlWqJQnKlHFkQg4TyphYJ5NLufd91CIfSp0LEbypryt7dZF8ykrl/lTAc+Ud7oY8pLKRL/daDEZyQVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J7jGp4zQCEShyB7n7DXLLrlmf6KDtIBM6svlQeqWjjA=;
 b=ix0IYi6N+ABlKRKclv8DXRPRDw1TjmX9vFVVC2Gxfvm7Uf1jTzG99UOznSwp9UcktRjuAVEQsYqHFm05sJOf23CD/HGzplFlYg5px5zuPubQSEtPN6L9iyrwvAQ2dawd1Wb8QP3aGZGTUH+dbqyR7Q+FvXw7KxxJGF57MW5qKNu8usw9RuqE8ERFQVvycvPJIkXnOt/HueUa6RRyaMI7WC4ORu9fc++WD1ifUcSSKOeLONyVL/pS9W+CDpOUNz/HHw54D+5ObnzlC/TTfx8K9eGZz5cuc1/MgD+Ar9zAJq/zQbJvs4cndcDChs1JaYWKzK6ZO7yYFTx42Ehxi99q1A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA0PR12MB7004.namprd12.prod.outlook.com (2603:10b6:806:2c0::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.9; Wed, 18 Mar 2026 19:25:35 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 19:25:35 +0000
Date: Wed, 18 Mar 2026 15:24:46 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Alejandra =?iso-8859-1?Q?Gonz=E1lez?= <blyxyas@gmail.com>,
 Alice Ryhl <aliceryhl@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>,
 Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 Nikola Djukic <ndjukic@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>,
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
Message-ID: <20260318192446.GA591541@joelbox2>
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <abqdUBqchnVFo7Qk@google.com>
 <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
 <CANiq72nZKx7pw_rZK2mHHvR=TaeGvMRvg5GTHOd58X17oyxieg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANiq72nZKx7pw_rZK2mHHvR=TaeGvMRvg5GTHOd58X17oyxieg@mail.gmail.com>
X-ClientProxiedBy: CYXP220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:930:ee::15) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA0PR12MB7004:EE_
X-MS-Office365-Filtering-Correlation-Id: c553bc01-f905-417b-34e8-08de852420ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: ELbnFvBRoVE6SBOEMNFsiozLMonXbQ6FIPX3UzNVdGc+H3qMIT9cFsrA/rjy4FxBfDhOt5KGzt026htOVjK+I5XdyZkWX8ZKwjb3wqAzgmekoGhApzkmSHOUB6aziBiddLchKRwYBAxIhbBhDQ+c4LJweRX1nGrvHL4BOdji71eMNkPsbklNe/8EhMi9VTpSYvgXRm1QWEYMuURTiu48PO1M69TesvvzrDqb++4G644y33G2UmXDuBA871qoXzDCtT1F+UXFjIOgWigiPnvWVBIraT72PPEGPbBtvrrZ9yQzcDAX3eRoZwmp4eng9P/2o7rakrn0M0IJ09hGtT28GXRmdt0OSQ6159v9KuZQr1gF9inSmCDQplaTBKtzCfjhwHzlf3aMPIkab8tPIEsIP0WOJvn56MGuIXn3CBy8FM1FZqwlp+5fq+Ia3lyvvNgzk8KAovPzvsCcUKEenEzy8WETq+5xTtFlr8fGzAAsdGfLbV04hdFM9o0frldpc8DxLLWDfKr5+Mv9yUJYu76ZlzQjRvVih4ZP69XyiyPWo/V5hrlyGu7CHJvYaKLxed/wCQGnSKW9mUU3/h1JDffweWOijfibDXm3bFlIdxeyrtNU7D0f9d+pFK2mtQ4Xr/2qBBCqhwPYdAR5tJHnGUZwPrhdXkBi7w8ik12Lx9gQ0IELizKOAlnaroB3TiomplgkRpVgFoDyA9DyCShK9aeD4saRAwotNchGK+Lmch6eIPIp5AXaYNNZALJy8uchdBdQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnF1Wmc1KzZvSnJGcytxeXZBUmcxRjB0dThEN0ZMaENDSTE0ZVE0cnJSbllm?=
 =?utf-8?B?VERGRGRFbUZnY1RYU3JCa1hyYVNlMmlZaldlNTJ1NGx5NXEvdnNlNTBwREJ5?=
 =?utf-8?B?dzhET0FaSWFXdWtwdXJEZlNxZEZicW4yeUhtcHdNVHFjL3l4T0ZrQ2F4eEVX?=
 =?utf-8?B?Uk9wN014dytTUFpXTFpvUDYwYzh1aTcwdEpOeEZYQUh2aEVXSHE3eitWWEY3?=
 =?utf-8?B?WDdzbVAvWWQwU0ZVUU5Ec2Yva1FRa1JwKzZaTS9qNjBBOXdMQlp1SytLeFFP?=
 =?utf-8?B?a2FiMGpOcklpODl4YnBodmd6NExGcUprWHdCdEdneE9naUFYYmJwckJhaW1Z?=
 =?utf-8?B?K2JsT0E1ZHRXelNyQzNPOXhYRmw2L3VFU2Zza05hOU1kUzdSMmpEVFNQU1RR?=
 =?utf-8?B?OThnTDJSL1NmN3BMQ2hRV2FNSzNQWDg3akllOXRXM2Q0THNwZloxR0tKekZx?=
 =?utf-8?B?NHR2Wm83YlI3UHU1OExKNkFiaUtNQi8rTkFkaWtYVkJ3UU1LWHoybGUzN0Vn?=
 =?utf-8?B?aldtcDNGQmZmZm1xelREcnJNd3lNbGtnUy9WYjNKcDBUUzJPV0kweWlMalJh?=
 =?utf-8?B?NjlPVDBpMmRwZGFEbG1Hc2J6MkExUW9nckhqVWxGS3FMVEZZOEpBL0RFUWQ3?=
 =?utf-8?B?NHdJbG1iZlNEdHBkUUM4TXlGaEZ3Yk1VZlRmRTlOWUttYldBbkV6aUhqK0kw?=
 =?utf-8?B?Vlozd3FtMnpVaXBrc1lQZnIwTHdKNS8zWDVRMFY1NlBHWmljcTh5VXl2RU9j?=
 =?utf-8?B?QkJBNzl4R0Y0VWZGYkE2WkRGdUFDYStWNkZuOHZEVGV0YjhDaGpzRmJZMHM1?=
 =?utf-8?B?WXV0V0ZsMjZHQytWeTUxZHUwV2srZWRPUktnTG44cnZGbE5nbHhUV2Zwbngz?=
 =?utf-8?B?c0JaMllNU096ck9hUUlGRVdSdDdReTVINnlmY01IWGxVRVJyWEZYNDZsZ2xn?=
 =?utf-8?B?cmtiMHBTcEk1SDNqcHVsZCsxUW0zVDZMUkFJK296K0c4Y1lUZXZrYmkyeHlO?=
 =?utf-8?B?VmtiYlU0MGZWMFZJVzdkd2RzcFdTakRHSER2QklST29ZMmdtbi9HZ2g4N1JZ?=
 =?utf-8?B?UTFqK2ZFUHUvVEcwcnI2eG1rT1ordzdSOGVyVFJoL0dTVHNWd05hbW9pVXhw?=
 =?utf-8?B?TDF0Z1ppaEpyY1Y0c2VKSUdEOVRZVC83cTB4SFBDSnZBQjBmZ1JFUVZWNDlR?=
 =?utf-8?B?Vnd6aGhRQ0R2UXZ0aytrb2NBZ0JPOGVhYmY5cHEyWnhab3E1MjJoeG85K3Fj?=
 =?utf-8?B?VkRZL1g0YjBrV2JvOGFabTZyckNIcUNpSThLTFB6ZjY3aEJicG0yU3prWlUw?=
 =?utf-8?B?SVk5TWxyK2xyUUJkWGpoTE40ajRoaDllZ3h5QmZET3RLQkY1bUk5U0Jlc3NF?=
 =?utf-8?B?aVkzMG5pN2UwQjUwbXZlN1hyajNsQXFHbHp3Y0RKdGZxcGpGTCtSMU02cWpk?=
 =?utf-8?B?cThzZmR3NzVCSE9HT0tPaXU3UFdNMGFaSkdzN1hTM0doR3dFQ3FQT0x5SjZV?=
 =?utf-8?B?a2lid0JpeFFxTVlPaFh0cTI3TkZpd0ZJenQ0NDU4dllaRDRNU1dHb3A2anhw?=
 =?utf-8?B?S2hLOXFMblpMazVrcytHQU5Zbi9Ic1VyUU1teTlNSUtvUTduYTNDYXBXNm1H?=
 =?utf-8?B?L1BiS3BseWZ4Z091NUhJa0E2cVZMZUFBWDBCT0ZqRWlwaTFIS3pjVHlINS9q?=
 =?utf-8?B?cU4vR1VvaFZjTVRBS1hWZDhrM0wxczYxOGJxUFcxVHkxTnVhQWwrdEt5WjNk?=
 =?utf-8?B?VVZFYmRIbGVQQ1FFMmRRb25OWEdiOWFQRUlKaGx3akJBdjJhQnE3ZXhVYTBT?=
 =?utf-8?B?NkFxRHlTSzhjMFBFbFA5TFVRQ0NDdUJxVTVIZitQV20wOWg2b042NUREOFVP?=
 =?utf-8?B?ck91RzBGZHNmckRJSm51R2JVTjU3Vk16K0JSTGVFZVJZTHU5YWlMUnJtNnlU?=
 =?utf-8?B?bzFCTUxaMExScE4xYVY3cFVuTjhET2tKRnFzTVpRazdlUXhJNVR4eElIYlFr?=
 =?utf-8?B?Tkp4U3RxWWJRdkJaM09rVG9rTDNnOWJERHZFVFM0ZTJEZS85UmgraXBiWE9z?=
 =?utf-8?B?WklmaXEwaEE5UUFCcVRtUkRhUGpHNXVYUmhuN0IvdEx1Uk1rekI1QUo5RitS?=
 =?utf-8?B?RGYyYVNDUmNaZDZQSHlGbllsdWc1c2thTlJrRmJQaHlTblBPanZpUmNzdXhl?=
 =?utf-8?B?clROVUxIQUNJMHd6VkRmcktCZTkrYWZhNmdOdGZ6bW1EemNJQVVFYzNGSytr?=
 =?utf-8?B?UmZMY1FGb25IM3BqYU9LcWtLd2tuVHBiWldJQTBGUVJlUDRJTzh1eDZSbmVa?=
 =?utf-8?B?MUR1eE1Lb2FMNnhzdWFwVXZQVWhSYTdQZ3ZmOThZd0tGTU1tVDlNZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c553bc01-f905-417b-34e8-08de852420ab
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 19:25:35.3161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZcoLzj2N92MM/mbf/ZpnycACD8Pif7fPHvDwit0E4TEgFQ2/r+U9FvH8h7lGAXABDBGOkZRfgQAWQ2VHWbfAAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB7004
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,google.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1658C2C1FD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 07:57:14PM +0100, Miguel Ojeda wrote:
> On Wed, Mar 18, 2026 at 7:31 PM Joel Fernandes <joelagnelf@nvidia.com> wrote:
> >
> > Anyway, the fix is simple, just need to do // SAFETY*: as Miguel suggests
> > here, instead of // SAFETY:
> > https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dPid89LExw@mail.gmail.com/
> 
> So, to clarify, I suggested it as a temporary thing we could do if we
> want to use that "fake `unsafe` block in macro matcher" pattern more
> and more.
> 
> i.e. if we plan to use the pattern more, then I am happy to ask
> upstream if it would make sense for Clippy to recognize it (or perhaps
> it is just a false negative instead of a false positive, given
> `impl_device_context_deref`), so that we don't need a hacked safety
> tag (Cc'ing Alejandra).
> 
> But if we could put it outside, then we wouldn't need any of that.
> Unsafe macros support could help perhaps here, which I have had it in
> our wishlist too (https://github.com/Rust-for-Linux/linux/issues/354),
> but I guess the fake block could still be useful to make only certain
> macro arms unsafe? (Perhaps Rust could allow `unsafe` just at the
> start of each arm for that...).

Even if I reworked the macro to be outisde, it doesn't work as below, still
need the 'disabled' comment on the macro's generate unsafe { } block below.

If we don't want the SAFETY*: hack, we could do the following.

Perhaps, we can file the github bug and also do the below. Once the
github bug is fixed, we could remove the 'disable lint' below.

Thoughts? 

---8<-----------------------

diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
index 495497f0405e..dfa2e1490202 100644
--- a/rust/kernel/interop/list.rs
+++ b/rust/kernel/interop/list.rs
@@ -73,7 +73,7 @@
 //!
 //!
 //! // Create typed [`CList`] from sentinel head.
-//! // SAFETY*: `head` is valid and initialized, items are `SampleItemC` with
+//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
 //! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
 //! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
 //!
@@ -328,17 +328,19 @@ impl<'a, T, const OFFSET: usize> FusedIterator for CListIter<'a, T, OFFSET> {}
 /// Refer to the examples in the [`crate::interop::list`] module documentation.
 #[macro_export]
 macro_rules! clist_create {
-    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => {{
+    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => (
+        // SAFETY: disable lint.
+        unsafe { {{
         // Compile-time check that field path is a `list_head`.
         let _: fn(*const $c_type) -> *const $crate::bindings::list_head = |p| {
             // SAFETY: `p` is a valid pointer to `$c_type`.
-            unsafe { &raw const (*p).$($field).+ }
+            &raw const (*p).$($field).+
         };
 
         // Calculate offset and create `CList`.
         const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
         // SAFETY: The caller of this macro is responsible for ensuring safety.
-        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head) }
-    }};
+        $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head)
+    } }});
 }
 pub use clist_create;
-- 
2.34.1

