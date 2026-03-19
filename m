Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKK7Dz7lu2njpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:59:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E33312CAC78
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9275010E98E;
	Thu, 19 Mar 2026 11:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="L1Rf5Di6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013055.outbound.protection.outlook.com
 [40.93.196.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AC410E92D;
 Thu, 19 Mar 2026 11:59:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ok0eIQUZT2q9xoP+aAclF8rT/AMVkD5EL/DsrL9Qy2VzbnWMT8auw24CZ/0zlFwBio99dD8zUkq7j/uSdar67ikStEonfMhLRoZsvWNV4BjSQCmB4OhWz9AkO5+D/YkbFsmMYZb1UaEYKhG7G3K8o69oxi07SACDHrEYDE+aBaZgAVXlCHJzw2jRpzX7GovjtQgD0l6G+Si5lepz+2Kun+mlo8Lk2v67hA+2nva2Do1CVzSWen1WpGFQkkk+65x/vGJqyIEtA+1iFXL5D2/3mk/Rw8yddSvIFvqjiZWoUiqhkEDMlAy+ihV73ZflZ7P/e8i2nC7ZvlM4T10EmhZfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QG6tuoz0ahy0F4sVGkQEVcAAzpgIx/krmN0VRP0BQts=;
 b=b2wyY0nA/ZbdqsZCr9M3097Ua7ILeAidTYa2Bs9xpA1ywWua3oIbCSbO3l1pLgASyfCseXu5lmD4tGcaUAjD5ZZJRKfhhquTip6IlNoyPSI1DJU3HdEhRzFrOrR5XCjnja4T3qb1fn3zn+T5ffAi5DOHt8cG5bG2dDrD2ie0XyKvsDt6oYczoqNczTN6VOR89hXN1uZJTgOXOMKLbkVtP5w3pB7QqJTeExKN3LhsghnzBcv1JcC4VEC+/Ag3q/i2zhe/m/9cyzUMUgAILYg2sFHucrML+QIiMwJxFas7ahC/lam1XGqK/UrJel8uLTsJAn7bEqJNGCcvGcAQPp2QrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QG6tuoz0ahy0F4sVGkQEVcAAzpgIx/krmN0VRP0BQts=;
 b=L1Rf5Di6fqVog1IGGQQL/6YJusx44Kofu+bSdIgBjUfQ8rkCOgTxlNnfHFClTOdpB5tsUXn2l5iCXgYJWIQOHResXfRm0G3HPJIkimqDU8hYOzQIwu2TTMTA1KtKKLrFf5gOhstO9IO6G2RrEROU2LuUfR5RFOIIo7wtwZo/jWuY7bQb1H0b7Ng5Z1cueqRNZtHkxhkC8E6qL0152rTs9RF4zMislg+Ov3Xapsnxkmw0p2168t/ipkxJ5JyBSeBWIjhTZyQyrNzeMdOViABxIT2SKGz6lpVtqtHnuXLcc0Y707MtB6weoGXfPNG7wORBLZ0xXW9biWg29EQ40z08Zg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SA0PR12MB7092.namprd12.prod.outlook.com (2603:10b6:806:2d5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.10; Thu, 19 Mar
 2026 11:59:47 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 11:59:46 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 19 Mar 2026 20:59:42 +0900
Message-Id: <DH6QPWOTC3LG.F0RS2U7GDJDW@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: "Miguel Ojeda" <miguel.ojeda.sandonis@gmail.com>,
 =?utf-8?q?Alejandra_Gonz=C3=A1lez?= <blyxyas@gmail.com>, "Alice Ryhl"
 <aliceryhl@google.com>, <linux-kernel@vger.kernel.org>, "Miguel Ojeda"
 <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>, "Gary Guo"
 <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Trevor Gross" <tmgross@umich.edu>,
 "Alex Gaynor" <alex.gaynor@gmail.com>, "Danilo Krummrich"
 <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "David Airlie"
 <airlied@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona Vetter"
 <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>, "Koen
 Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, "Jonathan Corbet" <corbet@lwn.net>, "Alex
 Deucher" <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi"
 <rodrigo.vivi@intel.com>, "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang
 Rui" <ray.huang@amd.com>, "Matthew Auld" <matthew.auld@intel.com>, "Matthew
 Brost" <matthew.brost@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked
 list interface
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
 <abqdUBqchnVFo7Qk@google.com>
 <71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com>
 <CANiq72nZKx7pw_rZK2mHHvR=TaeGvMRvg5GTHOd58X17oyxieg@mail.gmail.com>
 <20260318192446.GA591541@joelbox2>
In-Reply-To: <20260318192446.GA591541@joelbox2>
X-ClientProxiedBy: TY4P286CA0084.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:36d::14) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SA0PR12MB7092:EE_
X-MS-Office365-Filtering-Correlation-Id: 4110cfb8-b422-45c5-761a-08de85af033a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|10070799003|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: jLbbplGzgvwdi3FEpwkcmQ32ydFhEOdVW/aUvA/dLj4xkI+aT3rJs1TKXtZT+QGuBt3din+SkfIF7cHIi+sjqN9rBTf86mGhytEEtoJo12aL6iBrB7gzBc/9Mz6Q1y2bs6r4A15cQbgYOA7AP8lf5eGJBKbMZCHWZ2X93dTGSJsV0jsSfJFMFD/j+A/0fb92kPybq+Tvs17dnCAJO+87VScFVX5stVh6kuyTbhAxw/fTVJH7zBL/Mgu4c/FItlAeebHuOBGCU/A1suDG+cCaGdieRQdxAjTIP2aL0IlCTx/FR8Kk/GOTYvYe2HA3uwaMrsSSDqU8xs/JhZx73FxMZEYWl8W7XWTIAmS/8iAMsVXaCEXt5CSHYWNoKW9Dt7VtTRAf5EAXeuESLc0zXQNKPXGZRoKGeLInHScza/ZNFjv4D00GWUOt26CiwaL6RBpmkU4gVvaTlKiH9j+gEeFxGruGLl2Y/5OvqbDMEdcdEOu07ld8MZkeaZjobuZ92LSNgwvJZj1cYmOzV0+FD5O0xb+6RnsqsCLGDMQ25/IjHF7jgISBljtMFYS4gJHSHXdbU5y/E+SYAFtQZCF77P+6YHl5HDT/m0qkENNMZRydHhFMT+2g5w86VvPwh4NizRtdRP1B7ZefPi7NYNd/js//qgfLqw4GP6PO0qqyCvwRcqfwOqHk3+157vzug2ylV5/kzJiIInsfv7Zu13fLSh4ozBJnh6o0iktCp2LMl9APteXRg/sxukvKv+o5jSqCGyTG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(10070799003)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1dzRzVPZGFwbWVtUk1jUXkxeEtqNGFSN2FNNjAxL2RVR01GTGlVNVRhK2Zj?=
 =?utf-8?B?RmJqL2x4Mlg4RFZNb2p4eENyYUZ4ZlFqOEZJZGQreGwwWFJoSTNmWkR0NTVH?=
 =?utf-8?B?ME9nR3VTTWVMeXJhQzljT3BkN0RUVnZQYWQya2JDVHRzSTVXL2hCTnRjMzVy?=
 =?utf-8?B?MjF3M2t5VnpjdW1qL2tWY01VenFSOE1TbVkyZUtuY0hUMnRRdklNZm5tZXJu?=
 =?utf-8?B?RG1RU3lDU2FqdEtBc0t3OERRd3AyZFh1eHUyMFEzajV6ejlEV08rMmxJWUF0?=
 =?utf-8?B?emNVcGM4cGpHNFdjRWRzZGVCQ3kreFpvcHpRRDBRbkhFWGcxU2JKektYMEMv?=
 =?utf-8?B?d09IL3RmQkh5RGdOSVI5M0dONHpxUUUycVAxYjlPeGg2KzQ4UE9xeDlzUGRQ?=
 =?utf-8?B?aTd0aW5SaXFxaGNIS2xiekVtcUZOQlZoUDBzcUFUV294aDVGVVJzakd4aFEx?=
 =?utf-8?B?R0p4QmRsdEVlVi9SejQ2MDNaZ1JpZXRqc29QY2hid1hHbHo1L3E3KzcrN3Jy?=
 =?utf-8?B?R3ZRbDlvM1FmMGl1K2hWNm1tVE9xKzBybnRZTjdxRDc2SS93bWIrbUorcDZs?=
 =?utf-8?B?YmN0TkdDTjJQbkx0VG1HTEtOV2t6dzV3SDZueXBTK1RPNjFIUmcrK0M3dVNj?=
 =?utf-8?B?YnNPOUh6ODZKT3AzZ29xeGoyNjhwK1QrZlpoT0VlVytwWGlWRmM5NEFuTTlE?=
 =?utf-8?B?MHZISXJaRFVva2FYc2VEdVZtNUpQVXE4MFdmLzQrNmdJekpweG0vNkZyTC85?=
 =?utf-8?B?QVNoaVVuT2ZXeEdMTENFNVF5cGpHMUpvUy80YTJHdkhBOHVTSkVoTkoyaUho?=
 =?utf-8?B?RGc0azNmaEZPRVN4TGpyOThPZlM3YUsxTlBaejBSbWtHaDNTMzdKM1VxdmxW?=
 =?utf-8?B?Um4xd2gxWVJTNEdmQjQ1R0lDc1JsRThCVUlNTitIWWtYL3F5NitwMG5xTEFy?=
 =?utf-8?B?L1JSZXlBQVkyOEdTbkoyQ2dLQnR6eDNDRXZOcjhHTFQ0eG50QUNFR3pHQUZm?=
 =?utf-8?B?U3J5SGpUeVdzMWREVWxGYTJvMlkvYU1ZZkNrQ0pTSEJyMmhrK0krM1pXYzBU?=
 =?utf-8?B?d3pHdjBWcEMvL2hpZ2QvdzB6WTdUL0lIOVgrM0ppa2s2Q0N1Yk50QkJaL0tE?=
 =?utf-8?B?SU4raWtqbWpERWxKbVlOQzVUYk9wOVpyU0RPL2FrdEZYWjNRa09naHVEVlhk?=
 =?utf-8?B?TjhYOFZzZGh3elBxU0RhMGRBb1Znc0pJTVBKUTBuVlRUcXVwTGs5ZWFHN1oy?=
 =?utf-8?B?OEdmMitVWnVtZERSdUVxYnU4UllxMURUaFRSMjRVdUViNytrMXNJWTFyNUdX?=
 =?utf-8?B?cDIxelBpUkdrdnl3Z2hrcUpZa0U5STJPS3YwQksrQUE5ZXVVbGphc1hEVXFx?=
 =?utf-8?B?UW5QZlN2dndYY3dYaS9oOTRubjVlc3VGaDluMCthRlhBWUNRRHZmSGg5RGFQ?=
 =?utf-8?B?d2tzOE02dnk2ek95N2NDNmRONy9RZjBoWW9seXIwdkdHL2NUZnN5L3dScHFW?=
 =?utf-8?B?UDNISUVWbEFNcE81VWlQZUlZckpleWFtRWJ6U21tenkvQWY1dDdjRmZPK0cv?=
 =?utf-8?B?N2VKQ1RZUmdpdjBzZXlLbkVhMGI3REdpVzFmaWN0K1haV1FvU0NFK1F1TGFD?=
 =?utf-8?B?SGFhMVk1Y01FUHc2OWcvUHQrWDZxM1RTUjlJMkkyZ0czOXpodlRJTUpNVFZi?=
 =?utf-8?B?TmxOTHVnL0xDeGFhWHlGcVdxa21EeHd4WWxVZ2pMRER5bndweTJ0NFlyRHM3?=
 =?utf-8?B?Umlkb0lPaWJOK1BlYVorckhDcjE5R2VtVnkvbEQ4dWE5R3FzWTNoZ1pBMG53?=
 =?utf-8?B?RnoyNVd6MlhtZDlQYWFCUTNNZjRQR2kyOStmc0MrdjFUYWR5WFpreEpzRG5r?=
 =?utf-8?B?OUJOYU1uTVY3M1BEbnk5U25NdHlXdlVmcUhFc3VOWU5ZTERJWERTVXhmQStP?=
 =?utf-8?B?Zm8zWDVhUFIrRkFTSmdYQVNydDUwYzE2dXZFMGhEZWh6aFZrdWhZczFJbkIz?=
 =?utf-8?B?Wi9qTDBzK005elk4T3lEa2ppUEViaGxzR1B3bmVqL1pFQVBLczN6UDNIWVc0?=
 =?utf-8?B?SFl3M256WnFyL1c5dGlCQ3FpM2dLOTJjR1k0dXRxNHlIdklialZuaFNqM0ZF?=
 =?utf-8?B?L0pZbEh3aU1hWkFDL2RaaWRDeENNWVdjSzgwZ0Y4TTVBSVlselhqVDM1VXN4?=
 =?utf-8?B?L3dWYzVNQ3pzOFpFcWJrSnRpUW9YSFM1VFJoVytVSGdFSGFVdDBBY2FtYVJ1?=
 =?utf-8?B?TFpDOXZrYmdLK1NIaTlmMGlBbVlmK2kvVUJLNW9XS2YwMURSSG9CT0JPUmpI?=
 =?utf-8?B?MkFPQmlTMkp5OHNqWGMxQVVSZW1Tdzh1VXhkbGY5UVJTQnQ5ZmhtRE0zd3ZO?=
 =?utf-8?Q?wTW2WYOd8RGf/4tYZ1Udvv8cLwonPYcN7HWq8yh0GxZAV?=
X-MS-Exchange-AntiSpam-MessageData-1: Rb4lM7ZcgLmdHA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4110cfb8-b422-45c5-761a-08de85af033a
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 11:59:46.6687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jZxamQZTSfyMsfE+SzUBvnJ0plnEuA0ASRIL8QJsYGjRB5jjZu7qB4QDg/+oRE4AZKHHKhGqQ8RFhQWZjO1A2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB7092
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
	FREEMAIL_CC(0.00)[gmail.com,google.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: E33312CAC78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Mar 19, 2026 at 4:24 AM JST, Joel Fernandes wrote:
> On Wed, Mar 18, 2026 at 07:57:14PM +0100, Miguel Ojeda wrote:
>> On Wed, Mar 18, 2026 at 7:31=E2=80=AFPM Joel Fernandes <joelagnelf@nvidi=
a.com> wrote:
>> >
>> > Anyway, the fix is simple, just need to do // SAFETY*: as Miguel sugge=
sts
>> > here, instead of // SAFETY:
>> > https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77d=
Pid89LExw@mail.gmail.com/
>>=20
>> So, to clarify, I suggested it as a temporary thing we could do if we
>> want to use that "fake `unsafe` block in macro matcher" pattern more
>> and more.
>>=20
>> i.e. if we plan to use the pattern more, then I am happy to ask
>> upstream if it would make sense for Clippy to recognize it (or perhaps
>> it is just a false negative instead of a false positive, given
>> `impl_device_context_deref`), so that we don't need a hacked safety
>> tag (Cc'ing Alejandra).
>>=20
>> But if we could put it outside, then we wouldn't need any of that.
>> Unsafe macros support could help perhaps here, which I have had it in
>> our wishlist too (https://github.com/Rust-for-Linux/linux/issues/354),
>> but I guess the fake block could still be useful to make only certain
>> macro arms unsafe? (Perhaps Rust could allow `unsafe` just at the
>> start of each arm for that...).
>
> Even if I reworked the macro to be outisde, it doesn't work as below, sti=
ll
> need the 'disabled' comment on the macro's generate unsafe { } block belo=
w.
>
> If we don't want the SAFETY*: hack, we could do the following.
>
> Perhaps, we can file the github bug and also do the below. Once the
> github bug is fixed, we could remove the 'disable lint' below.
>
> Thoughts?=20
>
> ---8<-----------------------
>
> diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
> index 495497f0405e..dfa2e1490202 100644
> --- a/rust/kernel/interop/list.rs
> +++ b/rust/kernel/interop/list.rs
> @@ -73,7 +73,7 @@
>  //!
>  //!
>  //! // Create typed [`CList`] from sentinel head.
> -//! // SAFETY*: `head` is valid and initialized, items are `SampleItemC`=
 with
> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` =
with
>  //! // embedded `link` field, and `Item` is `#[repr(transparent)]` over =
`SampleItemC`.
>  //! let list =3D clist_create!(unsafe { head, Item, SampleItemC, link })=
;
>  //!
> @@ -328,17 +328,19 @@ impl<'a, T, const OFFSET: usize> FusedIterator for =
CListIter<'a, T, OFFSET> {}
>  /// Refer to the examples in the [`crate::interop::list`] module documen=
tation.
>  #[macro_export]
>  macro_rules! clist_create {
> -    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) =
=3D> {{
> +    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) =
=3D> (
> +        // SAFETY: disable lint.
> +        unsafe { {{
>          // Compile-time check that field path is a `list_head`.
>          let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
=3D |p| {
>              // SAFETY: `p` is a valid pointer to `$c_type`.
> -            unsafe { &raw const (*p).$($field).+ }
> +            &raw const (*p).$($field).+
>          };
> =20
>          // Calculate offset and create `CList`.
>          const OFFSET: usize =3D ::core::mem::offset_of!($c_type, $($fiel=
d).+);
>          // SAFETY: The caller of this macro is responsible for ensuring =
safety.
> -        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::fro=
m_raw($head) }
> -    }};
> +        $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($he=
ad)
> +    } }});
>  }
>  pub use clist_create;

I think I like this, it preserves the expected use of `SAFETY:` without
that confusing `*`. The unsafe blocks is a bit larger that it should, be
we are in a controlled environment.

Even after using the `SAFETY*:` I was still getting errors because the
in-macro SAFETY comment wasn't at the right place:

    warning: unsafe block missing a safety comment
      --> ../rust/kernel/interop/list.rs:335:17
        |
    335 |               |p| unsafe { &raw const (*p).$($field).+ };
        |                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        |
      ::: ../rust/kernel/gpu/buddy.rs:527:21
        |
    527 |           let clist =3D clist_create!(unsafe {
        |  _____________________-
    528 | |             head,
    529 | |             Block,
    530 | |             bindings::gpu_buddy_block,
    531 | |             __bindgen_anon_1.link
    532 | |         });
        | |__________- in this macro invocation

The diff below fixes that, but I believe your proposal should as well on
top of letting callers use the expected SAFETY statement.

--- a/rust/kernel/interop/list.rs
+++ b/rust/kernel/interop/list.rs
@@ -330,8 +330,8 @@ impl<'a, T, const OFFSET: usize> FusedIterator for CLis=
tIter<'a, T, OFFSET> {}
 macro_rules! clist_create {
     (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) =
=3D> {{
         // Compile-time check that field path is a `list_head`.
-        // SAFETY: `p` is a valid pointer to `$c_type`.
         let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
=3D
+            // SAFETY: `p` is a valid pointer to `$c_type`.
             |p| unsafe { &raw const (*p).$($field).+ };

         // Calculate offset and create `CList`.

