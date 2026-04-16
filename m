Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJzjBkNg4WmysgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 00:18:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD79641533B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 00:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412B710E93F;
	Thu, 16 Apr 2026 22:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="XB1H0iqR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011021.outbound.protection.outlook.com [52.101.52.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D22010E02C;
 Thu, 16 Apr 2026 22:18:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kKHRuibBec5ihQ+f4hnJTQyQ6ZmZVTrV/Dt18axG7+HRfbBXovPCwG3zKcE788ELqcZRZyRebr+QMRq7ST6u95UGCBlXQ+LTtV/WRf+UK+ETCv6WBOxyyT0vBnVTFQZUMUGoowklfSUrd1Ra1rqa9UKyfoz6d2b6mbaUtQf3GB9vHlXrmwKOr6NuyYkA29d23HCv+WGxB8T4LsiXBuw8nYmzt8DrBTdr9Tt1u3EOtVmvio8vd8cdvo5cTXDXH+Fwy2FimpYxGSKEdvFGF4H0MegW3OR9+UKtGjiZcpGYrFB5kO0PpP95WbjAUKGOwqfGlYobUQk6uaQCqVcOb3q12Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1P1tQR9yZZWisKMGrQmCkUzuS4EOXOzhommPK/0CbY=;
 b=odjJE4rfoVSWwoWjBJWKp+1ubFvWh/R1+ReO/LDqm5SmuR+udE9d8zHflu+glrcEZeU/YOLCZgcxrsMyr/GqSmVAGbCxULSul6tkOBiFkLdqhp5RthPiBrWiLInhqmceRWszjfBtG4J/Xd2i9PZvYrEqx5W0vmJbBsggoQ/PxEup+q9r8GdRx0jir4vChs4UZIyi/jw12POHu+dIM9OnMT95zaAZiIsqmgieE+AA7B1jVnrWG+bPAe4/+Cw7Bd93VaUDBFJajE6gEhhZjFJafc18TK7NmW59jqJT/h9lNCu2XudTHJPBSSfJ5tpjkQBAD2HBkVDpkWtcUSW36qOFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c1P1tQR9yZZWisKMGrQmCkUzuS4EOXOzhommPK/0CbY=;
 b=XB1H0iqR4+2W99OoP6A8JS7lPZNX51ggQowdihuYITpRDhi1hUxECdjyn7Bv5xCpzO2rirNf0fobDaG8eahcBL7cmS3f2G/tFJ11N/UNDrxHTdU6JC6MfI4uC984o+huWYsVmlXKf8xKG/20zisgrFUVCwiy3PjJg6LZ4mOhLJWyIha/dd/n4vIiW1BrHEkkdjpXa8BoflrTySs74Zfaz4WjLTCX9EWjVFGTa8ZnMpHBiQIssXhkVuzlKtJ5o7G9IHH1mv3BFjXTz7n6Vs1X8AKEb6Fa5IFDttg5vfHsEvhdNtApqvbMrSN+23SWvWnXuoCcpNpYIiAdfxSGeS0FDg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DS0PR12MB7875.namprd12.prod.outlook.com (2603:10b6:8:14d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Thu, 16 Apr 2026 22:18:27 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 22:18:27 +0000
Message-ID: <1e3c423e-1cf5-48b1-b012-c4af0eb6b95f@nvidia.com>
Date: Thu, 16 Apr 2026 18:18:24 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
To: Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
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
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-7-joelagnelf@nvidia.com>
 <20260416212312.GA667928@joelbox2> <DHUWPQX14ZGZ.26BV7GQCJDZQI@kernel.org>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHUWPQX14ZGZ.26BV7GQCJDZQI@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BLAP220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:32c::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DS0PR12MB7875:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d1b84f-fd02-4f21-5cce-08de9c06152f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Z9gPoYCrnolufJuLkjHrmfiSazfG723fyrhE3ZiF9MPrOtirgVnsicdBjZEF0pKR4MIwKjpimnQKxEdlQFWiFmHyLNwtFLByxU3Cw+1FAc4GRDN0d5/t8DGqxR9zwnX8ugAlP8VQuEsECy2ZMgC+ZcWpML7PS8GeqjfYEojzjF23jRrcFs0E3D9cCuEL9Tw5XbrzKjhKUJg17ZvZI0zGRNRGTQ0KzgOiW0VXKojptxJXqFYlOr7v1TK+n8qzgunpdDh+8aO4cGFCdr6ubauCsaV5yaRp8eWTQUSMxSXJMwCA4JAyla4OgqwQOrlzcJoquRQjg/hgeRcCkWt8jUeuyNYcy+GstG5mXJVcc+Yv8iljucEW70yKCpM0+ejrOyI+9BwV5xnVkZjEYhsaNHPfcx54LPnoUf6GVG3Tyxy5V4G5coXRuzD2FsPESc9adVgAXCwLYPd1XtZPJ2igl6LIoC2AZuskMIaNO5GQE+3+R7xKN0bj315TXBP4WaYAy/MB9tl0NFyKcKkrHPbk2xqrxETNvjqKIp8As5JI8hgePuAUQ3sIBYbo5ZSHPqFI9W0kHyPHaVhW7Q8HQPgQlLF2IMSYFU7AmDnYzOaS/CYz6/rcgHPlM21qTYP1xFgDb3hBZT9uTszsCUyS5413qzPcsLo9+ZZKnsagDZjXl8amS8VVYe5hzXHb4KR/kZWPzwjUdoGJI3BRTVuBSr625QaxU3lOer8TsM56oi6jc4lpq4o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGZtWWZ3cjNKMlNPaXNuWlJSbFpGNFE1Z3ZRVDJ0UVJrZG1ONVlXYjY1eXhM?=
 =?utf-8?B?OXcxMzh1dEo2N2UrNDNNdCt4VWhZWHA5S1hNN0Eva1QzK1FBNy9EMG5VYmpv?=
 =?utf-8?B?eE9GZktSN3ExR1hUODhVK0owWVpOYWJnU1U3THc1N2QwZU13dXRadlZwWWgy?=
 =?utf-8?B?UWJNd3UxN2JYMFhoc3Z0VnZjRTdHUytWby8rMnMyMFFBbC9lZzVsa0VnY3d6?=
 =?utf-8?B?RGk5b3dUcDBzTHFYQ2RUQjJZbGlPeFY4bTJ0VUdJRDNxSmplNWIzVEVLUjJ2?=
 =?utf-8?B?dG1CZVdnTXN6eDdFM3d6NUpGZWJNb2xzOXFmTzRCMVRhaUhSZHdacmhUWXJn?=
 =?utf-8?B?UVZkcm5LYmdJdHhFMUVMdFZIM2dWalY4SUVZM0hueENuNzdEN25RU3RHRG9l?=
 =?utf-8?B?dG03ZUFSbldwSzNjakErN2UzaFN0WDJKZk9jei8zWE9ZaEFKZ2NRWGtyZ21k?=
 =?utf-8?B?bEF5cWdNZXRrNklUc0ZSMU5XMzBwelBHUFVjU29KQ3oyVHpjNW96akp5M2Y5?=
 =?utf-8?B?WnBUckU4RjNQRmRPTmxlc2E3Yy8wZWIwNWI4dHZoLzAvK0RqSWk1S0dEZzh4?=
 =?utf-8?B?M1diL1ZGaFYxR0Nld3FhOTczV1ZnenZLeVhNN1JUTjZTV3NhV2lKM0hadlov?=
 =?utf-8?B?MlQ3alhZRnNOcFgyZ1phd2lxeGw5NERFUFp1ZjM3WFB1bHpKK0tmRGNNSzRm?=
 =?utf-8?B?TC95ZVYxN3pVS3kwMjRseThYVkdudWJheGhCQW4wYXVYampKd2dIQW9BYnM1?=
 =?utf-8?B?cGJYWnFDamxteGFseHFhYmVMcnBMd2g0eldjOHpWaGhlREtUR3BMVFA0dHhz?=
 =?utf-8?B?VWNmL3B4bDEzVXJlT01uTlc0YXdjbGJKQUpvN0dweXdwajZGRmErUnJzY2g3?=
 =?utf-8?B?WHFPWUFrc3U0c0RZalc1TUFsWnFHOFM4QUFqTUFmZFJYalJUWnI4ZlJGUFhM?=
 =?utf-8?B?a21XYnZxb29CbldMQzJSc3A4S1NXTDlUdHRWTnJJUXd5UCtuZWVEUm52bjRE?=
 =?utf-8?B?NWZtM2JqNUVUM214NndDSFUrZVJBV29JWnRRRlF2TWtEeXVTUDEyT1JKZ2JD?=
 =?utf-8?B?TXMvY3ZqbWZSUGswT0JadlJFcjFyTlZ5dXFVNDVBWm5kQ0l4MmwrRWUxdDZw?=
 =?utf-8?B?bmpYWDh4K3ArdytmTzNqc0FnQnZkR0tOc3lrZXZ1TERtTjlqWGhSb3p5OVdX?=
 =?utf-8?B?UmlQTXpreWxUMkpSVVgwV3FqQTBhc211VVF2ZmhYQ3lrTWtoNGFpQ2djUXha?=
 =?utf-8?B?MS93czJiWTlqVG1mOEpPcFR1U1lrWmFHK01NNXJJc0FNT3BiUmZOZmRBNGRB?=
 =?utf-8?B?VW51d2NGODFody9vYmNYWXdNVHMzaGMwWFVKMXhtamRRYW9BaWcxdEJNY2ox?=
 =?utf-8?B?N0ZYbExET2pneGpubHlHcTB3RjBOZng2U0M0UXpTR2trVmRkN21PWVd4Tnk5?=
 =?utf-8?B?NXJFeGdwN2VEU2I3ajhhb3JxeXR3cHdxNW9VbWZGSXV0cG41by9PWXJ2WHBG?=
 =?utf-8?B?VlNKRTVIMEZKaDhPZWI5WmJ5TWxCZnBuT3p1dk1jYUVTRzRIc29UeWhYMjlY?=
 =?utf-8?B?dWkyZEJwODkxL0UzRFA4ZVA5WDdQVDdBMm1DendTWVdOMStSZE1TUXNtdmx6?=
 =?utf-8?B?U3FVWm9XeWpYQ3g5TnpJdlFwTTlKd09Sckoyei85cGdCdTdaUjdlTjJoZ0sy?=
 =?utf-8?B?VFBQNnJCRThlMm0rdXF0am53M1h5Skh3RzB0NkVHRTJVOWZKVjR2UTdpUDRZ?=
 =?utf-8?B?cExNbG51Q1ZyTVBTUElVcEFxZWRPdFR1ckV0QzVjWTk3ZUZjN3BPMkpuM3hW?=
 =?utf-8?B?SkFCbVY4S2hoenRXOTFHOTNQN3ArV04xRDl4WnNHVUNPa1E1enhtemN1UU9T?=
 =?utf-8?B?MFg0a1JkbFJCUEhPZkRGVzJMV29Bb1VjMGFtNncwWUE1TGtrU1pjUnE5dVJq?=
 =?utf-8?B?ZUpJbVdCRkZ3VlJHTHNUUEZzTlYwRXJFVlFuS3NOQkRIbWR1VDhSaS9QM1Na?=
 =?utf-8?B?eXBvekxxUDlWTVJLb0dhTXhpQmU1ekZxa3JzcXFra25mdUxsZGNla1ZoNVlH?=
 =?utf-8?B?azd2UjZRajkxajZLQ2o5L25USkpab3NycjNJWitRMThkbDRsOFVTK1J5SmdS?=
 =?utf-8?B?MFFSaFdKZzVzK25DOGQ5VFpMbHN1Rmx1NGNraHZFY24vanNQTzRCYTBBUXl0?=
 =?utf-8?B?elJQeTh3bUZZZ3RzNXNmeCtHck9YeW1oZHRQM2c5dWxpR204UlBKdldhSnlS?=
 =?utf-8?B?dENYSk0xMSt2MXdIZ3RBR1lrc1dhU0thdFMrdkZyUDV1SjNkZnQzYlc5Rk9s?=
 =?utf-8?B?SUVNdWlYc1JaL0o0L1ZLMUEwTXk1RHovTXpIM0xKN2ZNZTR3bWZPZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d1b84f-fd02-4f21-5cce-08de9c06152f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 22:18:27.5574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NVV4sENjNQ/k94ELk+Mo9Yv7BuDdIKwYT8yexHU4m6gK3x5qW2PGeSiGTmihKpS9azRkXsQLMnGXXWrZvt9rWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7875
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BD79641533B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/16/2026 5:45 PM, Danilo Krummrich wrote:
> On Thu Apr 16, 2026 at 11:23 PM CEST, Joel Fernandes wrote:
>> Btw, I changed this to doing it in 2 phases to avoid holding the RCU readlock
>> across read_poll_timeout, which can sleep. Will squash it in for v12.
> 
> Why do we need the try_access() dance in the first place? I assume this ends up
> being called from the BarAccess destructor?

BarAccess is different. The try_access() calls here are in tlb.rs and
pramin.rs for Bar0. BarAccess uses &'a Bar1 directly — its Drop impl just
calls self.vmm.unmap_pages(self.mm, mapped), without needing try_access().

> 
> If so, I think this is solvable. Gary and me are currently working on
> higher-ranked types and a chained Devres type.

Hmm, the issue here is we cannot hold revocable guard while sleeping, but
we have read the bar as a condition in the body of the poll. So I split the
try_access()'es. First phase for writing and second for reading (bar 0).

> 
> With that, such use-cases should be cleanly solvable without the need for
> try_access().
> 
> Besides that, I can't find where BarAccess is ever constructed.

BarUser::map() constructs it.
https://lore.kernel.org/all/20260415210548.3776595-18-joelagnelf@nvidia.com/

> 
> It already has a lifetime 'a for &'a Bar1, so I don't see why you can't do the
> same for Bar0.>
> But again, I don't see this being constructed and I'm not sure the whole
> construct works in the first place.

BarAccess uses &'a Bar1 because it's a short-lived scoped object. In long
lived objects I am trying to avoid this. I guess I would be Ok with
switching &'a Bar1 to Devres as well. But let me know your suggestions!

If it is easier to look at a git tree to get a complete picture, here is
the git tag of v11:
https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/tag/?h=nova-mm-v11-20260415

Thanks.



