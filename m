Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAFSH8sg1GkxrgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:08:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A953A76B1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A465A10E2EA;
	Mon,  6 Apr 2026 21:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="qE7rCWKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011051.outbound.protection.outlook.com [52.101.62.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CEB10E2DE;
 Mon,  6 Apr 2026 21:08:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RlgiTDSsDFUKSJkHRlEP/rysL14HLn6TsWpntPN1q7aab9vFKGbP0mpgtW9IHpWsTmY6kNJuuH9J4VPHPq03i4sBW/Stjcsi0u/vSA/j7XV1zaBFhkp5gKWpj3/RtPiy+bqckz49Fh3rpxbZX82rwlzDoS/vLwtFKEp1+4GlB6QjVm0YLOYIhUDd+r5ccatitf9A/uIFq/8QQrxCQG9yyO3N2C4ksTJ6jWiCGoUKfLpYdJHiT0pnKwTwgD8/6Qu/FQAhMZcjoFyHGjvxTmPVidBqhd4PFQuXJEkIVj6sYouJ1ickE3jcVqIDSkmJKyuyNWkSKQYhT0LIeZ8AJQ7/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDmB0+GpbUUtn3XKAWy7Rs8YdZ39c6dEvBuFMYWVobc=;
 b=uAp6jgfMi69oQqlwOydK/ujW8GFpbaoskSNx0NRvKPECkMt1BSg/m0Xk75+2Gydw8O/uXPrKYooAmJgB58vhPB7S8Uc1DItc/u8x4eXyJebrXtILAN5/dstiCfUUA2EYLTmp16Tz1qdm18MCXFbsOu++no/pGDthRBVfEDIU0Y4qpHYqtV6lFi97VHSU/ftodqKLEdP3D48uxibhhNa+2kIEW4EoYXBZbVnIvnKDoTYiiiyCOAZaOiA9cnf4cmCYb3zy8X21rjxUR3MpOqGo/05pPwjSWf3XiVKri+Q85BYYwI2WKd+xeHauNgBLhEBx0V9BwKCI++27MJo3ALPg2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDmB0+GpbUUtn3XKAWy7Rs8YdZ39c6dEvBuFMYWVobc=;
 b=qE7rCWKgzIbkGYI6dwYTkjHYSq9WgZS215mMZDVQCxrOnPwYqsBTuUSNhJdNAMQ0BOzeaRrJD8wA2MRTYH92Os4EBnHTFPmLlO4rEymeKbJTbLGycfky5edMovlIfelkZ7mcawidnoQX/9gFlP8Mw/2jj3UYOpM03DwftPOsnPEtL6v3xxtWinCI0AWPSZI+1AFH+scYNc/JTcR1P6hm/+fB6iS0Bzi7I4rYysPSqwdm3J2ck51GJUwUtcEO0ThfiigMKuGrs6JnD1nN5wC8YTEfq78eqB7OyE9ajjTI4IDwbnuu20gx7B0Z4B/OUCEpCLUxD0A4Wx0i3u6cnniYzA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA0PR12MB9010.namprd12.prod.outlook.com (2603:10b6:208:48e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.11; Mon, 6 Apr
 2026 21:08:16 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 6 Apr 2026
 21:08:16 +0000
Message-ID: <e9331c85-cf54-448e-bfe7-33cc0cc41288@nvidia.com>
Date: Mon, 6 Apr 2026 17:08:12 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 03/21] gpu: nova-core: gsp: Expose total physical VRAM
 end from FB region info
To: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org
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
 <20260331212048.2229260-4-joelagnelf@nvidia.com>
 <DHIFD6N7QSU1.1RGEN0APPDHD8@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHIFD6N7QSU1.1RGEN0APPDHD8@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0124.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA0PR12MB9010:EE_
X-MS-Office365-Filtering-Correlation-Id: b6de47e5-e178-45a5-b29b-08de94209f1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: bR7EvU4zF5CFC+L3kuMefEP0zoKA8r5PvQMFjHR8kB97Q4UpGVIa0LkKZwfuCad//3LRufKx1nDNwl76r7Adcnlz+qvYRzJRKa95uUEAma2G+6XN+x2x5rqBygPZCYqDuUm8UPRDf4itDpY/lwC6p5z6jSHhyYmVQNBmO7wuKBxlYTj0ONmjL6nsbRpP3CvUo2eYU1b/iJilHY5+lwfqpR7Jih5lZRv5Zv6JhuxAtvSMCJaxPhzpU5cFMEIR6ne+YPcdKc3semE29GNJW6aZbyzvnicsLoON7ORjhHwihvwHfnTrh+VkGzwNrEkl0kgencgLb2Phh3BIbEFcozucm0ah4bJdRxgsG66UnS89pwELXjwnvBIyeoZzA52GojSliPfpWJxVUoRH/xZViHIqqQ7MrjAvRsqf5mRUNEeLzcF8MfBqHWdrTi4wDOmCB5ad4hWgFeWSXSf5B6fO13bsYZeAIoPLUOFQcpnFYChPn1XfAsQtg04HT2wqOXVm3PcYN8IlQUUW2FsPy3L+JFKzBSt2wTmTL6U1I7yX6s+zsAzbj1cvdAf3GmQRP1wTYbfW9bbRvvikmdKhcgd/Nd8oNzXS3WfQ6TvDd4ef2lBaeenIq66gQ4wCX1t3vNztprirSf2VcejqZA2xcwCpJXXK3ap0qhBWijrgEktovR7Otz60hogu725J4GBOQW0v6G9Ft9ELYaYMQH+H8Ce17ENMVGnFzungf9hcNScpbU7ERSU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHpnSmlWTE5VcmlHd1NsUWRFRVAvdWt5aFNxenVjWmJuUWd5S3FGeWxXaGNE?=
 =?utf-8?B?VUkwaE1oVGZFcGd1b2xJaWhGZHdWTGd0RjY5a0pnMG9WQUpnNk94TXRrOUc2?=
 =?utf-8?B?OTBJUHUxVUZVQ012ZW00WjlkRFdnZWpDM2RZRndqOEdjZmhiaGVqeEZ3Q1hD?=
 =?utf-8?B?L1hqSlp0MVg5SjZMMU1qdnF6eXVCUEVyMTRJTUhQU2o1TGYvU1Q3bFp1N2VH?=
 =?utf-8?B?MGpQOGdZUXVsbU1CT1R2REExZ0NyTTFid2ZqL1N4Vzg0OERQNnFMRnZJNW1a?=
 =?utf-8?B?all6R0NuUDQ2bTVQTVFYMGhYS1YyVkptY1YxNTZzRHdVNlJuTy9na0xCZmNi?=
 =?utf-8?B?ZTcwOGgrZ29VMTNKbzRQY05aTUJmS2lhT2tMVXlLSGpHclVaaFVYSFpvdXJR?=
 =?utf-8?B?dk4rOWJBMkFSRWlDL2xjNmlOSmVTTEsrc2tRaUFSRDJFMzljNzlMcFFmazRu?=
 =?utf-8?B?L0NBYUhkbnM5L2ViZHQrZkhXVEExa0xCOEtMZldySlFkakx1VzdORUc3ZzJN?=
 =?utf-8?B?U3ZLNjdxNWtlbzJmQVJiT2p0VEFpVXQveFlRRzIydUg1T1RlTHhJeHFmV0hH?=
 =?utf-8?B?NXZ2VmR6aS8rOEpOb3JZREdaaHlyd2V6dGlQL2dxbzB2aXFqSzBzLzAxclU4?=
 =?utf-8?B?bDlSMk50NmkzU3A5Z0RRRnBlSW5aNHU3WUR1Z1FnektDWlhOdy9iT3NCd1lO?=
 =?utf-8?B?WWF6YXF6SDQxNFZLL2tDUXI1Rll6d01vKzFpSjBFNEFXU1JXS3JlSExZWGhu?=
 =?utf-8?B?MUlteTdvV1FvMHg3S1A2RnhwcWkvaHIyOWFXWUFlczFURU0yMFhlVnlUKzNC?=
 =?utf-8?B?bU5HVVdxZ1MxSTdmTk1HY0xWV3dqcm9CMFFLaXpXYzkyNjY2T3lGYUo4NnVQ?=
 =?utf-8?B?TndxZ0lZdTcxbXpjUUdPZGVkRFArZGx0MmQyQ2trb2RibXJYVFZyUSsvTk5p?=
 =?utf-8?B?Nko2ZFJEWGNwUzlmLzFrWlFKalJ4QXpWWlZUVjJVM1JrM3J5NWEza2FtUUFF?=
 =?utf-8?B?Wm0vOFpzMlZWdXRWKzIvOXpNRHZsZWkyRnU5c3pjWUdtR1FCUGlwRENveFRB?=
 =?utf-8?B?b1YxdDdJM3ZTRVZrNVNleFdHT0pYc3UxM3V6bHM5bURhbHBPNWJDZ3hTR2JV?=
 =?utf-8?B?ck1BRGJaL3BSeHlwdmpUUEIwUm03VzlOUWtNdXFCMlU5WU9uZ25jVE11bGp5?=
 =?utf-8?B?T282dDdlclpkSUx6MnNVSjZKM2RQTTA0VFB0YmkzVXNkc2p3cWVCMU1iNXQ4?=
 =?utf-8?B?bGVuVXVicUFUTFVuSUJrQ2EzNHJyOWtnRGJUZTYrWG41VHRWOThFbmI5ZXo3?=
 =?utf-8?B?VElnOW9QYXBJQUU0MzJKNzhiMi9TTSt6UVExa3N5dDZsTk9MNkFSN3YrUTlM?=
 =?utf-8?B?aDNzaUpXZFNuU0RnbnJBRTJQL0pTWGN0a0tiTGZ5ZXd6ZURhYXlyVyt0VGNR?=
 =?utf-8?B?YlRIV3hQRFNyREVnWUtJUVBIbzhNN3dxbmxYNHR3N29naVZCRmNuc2ROdjh3?=
 =?utf-8?B?Nk8vODQvVWVtc3IyTDl4U25vN2RZWXBCZVRjbDBpMmtSMUJVaDRvV0FDUEVQ?=
 =?utf-8?B?aml1bzROWkkyM1BTQ08zd1RPcmdjdVRZaGl1SElLemNSTUxjbzFxYmJONUJm?=
 =?utf-8?B?QmpNdFBJQVRqVllaZXNwRCtIMHpyOE12LzUrdExDbklsVzJCazFCSW0zNjdK?=
 =?utf-8?B?Ry92aHpYSGlWSnFwVWwyL3hkVG1wNnI4YjUxVFZqbHpVTFlGdlFoODVYTFJJ?=
 =?utf-8?B?MC9SbkRobDZzRjNDN3daUFl5ZmFMQkFmTzM1aHQzd0FEd3FmeDZ4YXdWZFdr?=
 =?utf-8?B?ZTJaTUZLK0gzVVluQ3J6L2ZXbVRKYlUvT0Z2Y0haaC9SVmZ1bnBtOHVGODJT?=
 =?utf-8?B?NEJDWVRsWWxYSU9CaEhZMEZWZmFBcStuaTJOUHBFemEzRDFleWZHNnNJMkla?=
 =?utf-8?B?WFBZMVhVemZwUmZPZks0cnI2dWdOK09yVDl1d3pzMFJLWWVoZFRRd3JzejYr?=
 =?utf-8?B?WDFqaHNDbmoxZmM2UXc0Y0laNlYvNnpGZGR2a25LaU1abXdyRTM2SjdsM2wz?=
 =?utf-8?B?TU9JUFFUWXhQMkJsUEU5Y3hiRVpVbUF2ZzJhVEs3aTRlVzV3WjN6d0g4NFZT?=
 =?utf-8?B?bitjSXlxZXdYc0M4WFlnTUJyM0ZLOHBDZHRLZzZETTlxRXloTW5YbDdUZVgy?=
 =?utf-8?B?blVGR0NQa0dlL3kvM001eHY3ZU9rcUxmaHlnSmVwWmZmM0RYTGxpeVQ2Yk9j?=
 =?utf-8?B?eEdDSFpVOG9ZZVVlVjY1cFBGRFhpdm9oanBsZEh1NVdoN0hDTHRhMHRvWWNC?=
 =?utf-8?B?WHQ4T2F1emVuWURjYU5xd2RBaVJYemx0REtOTGloNUhJQkdGZjNMdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6de47e5-e178-45a5-b29b-08de94209f1e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 21:08:16.5236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 02oCKLLYjvzIboxoy4IZ+D+BpBzXEKu8DBi+zVQJ8PyY/BXFnVVIHL5G+AnDBBOhOIP8q7LJA4PJTuVR4DlQJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB9010
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
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 21A953A76B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 1:37 AM, Eliot Courtney wrote:
> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>> Add `total_fb_end()` to `GspStaticConfigInfo` that computes the
>> exclusive end address of the highest valid FB region covering both
>> usable and GSP-reserved areas.
>>
>> This allows callers to know the full physical VRAM extent, not just
>> the allocatable portion.
>>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>> ---
>>  drivers/gpu/nova-core/gsp/commands.rs    | 6 ++++++
>>  drivers/gpu/nova-core/gsp/fw/commands.rs | 7 +++++++
>>  2 files changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
>> index 41742c1633c8..5e0649024637 100644
>> --- a/drivers/gpu/nova-core/gsp/commands.rs
>> +++ b/drivers/gpu/nova-core/gsp/commands.rs
>> @@ -196,6 +196,9 @@ pub(crate) struct GetGspStaticInfoReply {
>>      /// Usable FB (VRAM) region for driver memory allocation.
>>      #[expect(dead_code)]
>>      pub(crate) usable_fb_region: Range<u64>,
>> +    /// End of VRAM.
>> +    #[expect(dead_code)]
>> +    pub(crate) total_fb_end: u64,
>>  }
>>  
>>  impl MessageFromGsp for GetGspStaticInfoReply {
>> @@ -209,9 +212,12 @@ fn read(
>>      ) -> Result<Self, Self::InitError> {
>>          let (base, size) = msg.first_usable_fb_region().ok_or(ENODEV)?;
>>  
>> +        let total_fb_end = msg.total_fb_end().ok_or(ENODEV)?;
>> +
>>          Ok(GetGspStaticInfoReply {
>>              gpu_name: msg.gpu_name_str(),
>>              usable_fb_region: base..base.saturating_add(size),
>> +            total_fb_end,
>>          })
>>      }
>>  }
>> diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
>> index 9fffa74d03f9..46932d5c8c1d 100644
>> --- a/drivers/gpu/nova-core/gsp/fw/commands.rs
>> +++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
>> @@ -163,6 +163,13 @@ pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
>>              }
>>          })
>>      }
>> +
>> +    /// Compute the end of physical VRAM from all FB regions.
>> +    pub(crate) fn total_fb_end(&self) -> Option<u64> {
>> +        self.fb_regions()
>> +            .map(|reg| reg.limit.saturating_add(1))
> 
> I think it would be better to used checked_add here.
> 

Done, thanks.

--
Joel Fernandes

