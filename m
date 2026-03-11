Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMuXHCu6sGlCmgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C162259FF7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ADDB10E7F3;
	Wed, 11 Mar 2026 00:41:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="S0bU8mch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011030.outbound.protection.outlook.com [52.101.62.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96ED810E801;
 Wed, 11 Mar 2026 00:41:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xRErSRhq4BisK9aYSWvC+0EUSsugPrHCenp5J6QcDiyZNjKzowWLFsOf8Fc6nh14EGWWiEr5y3ZeqHJaG6ownEH8ZVPkDmAyikqzVAgB/2DhTfJWT/pEC6KLkao9rFH1Ws/uPslST2yeUkfaSz97c1PdNUanOZbaoCscqjkcITXI5p90LKi8oP+ijmS+C3tYv36sACzCZA+w8aSNdg/NejRFjvY7PrWhVsNsICBwefmQhViQ/+3krBaMx2wMdEEPiuQ+gJZtxQ1cvHFVyg8LHoQsR5NAMN+6ORub0Z+R8heJu8ejbYuGlloN/w8I4DuLVGZ2uBT/HDP4P98vhKz4Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+p5wND4XzFYeDwkK1QNKfA3tojggvJOCP04AjuhGX1o=;
 b=RrPMvFmcjyNKq0bcRgjMlJY+j+xYS/9ZC919LKUlEttMnLHGoRWHqFK/L4WYf7peax0oe8ZpPAXMt+T6o6hxF3bi6jV0ay/vvAOraQurvJK0IRp6nEgHJ6uc/oP5b+1x5lWiJsBaWvliYQa2t5lB03ZKyZli6XwI6XgbtdP3IWoDja4f0z9NrmZQ1OUTGZR4g9Tw1aKCpCZBcB07s8o2r5eP62rgyWeEXk504tydKesXbtTsCtvXltYyZOH2JH3rjl7+8orC1HsX/mZIWIAMgTsgwP+NBXiu/Lt3kz08ghUOGPb10bx1nCgDkTz89p+0sokLmmB8OjO4ZliR0LhFmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+p5wND4XzFYeDwkK1QNKfA3tojggvJOCP04AjuhGX1o=;
 b=S0bU8mchVEmIZgyhV0xGZ85ISWHi4iUnnJupGDf0FqaWlHU6QXp1Kg+9rcwr+gyDPmStEPkXa4zRCdm3XVTA+e+Gr/mJQm+vg7P6t90Yvhcfl6RLNwjqnl/vnYh2HmdU5GB6QtqLH8q4C8ohUYDN4meuDaimYY8wxU7o01DI2zcQRsQktlhNYQnig1ik6CHUjiELNm50XaH+aETTDQPlG+5L5pfwgMRXqeS1xP0MbGIN1hzl/ELCKbJQx5xZaB+OKzkRWtT48jvRBUApi/wKeWs5CJy+cjPjhAs8WGsv6oaYKJUdXo6JSJUJnqGCVbuv83sj0mZi7PLyCyfWWUqNbA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPF62A0C9A68.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6d2)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 00:41:03 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:41:03 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v9 21/23] gpu: nova-core: mm: Add BAR1 memory management
 self-tests
Date: Tue, 10 Mar 2026 20:40:06 -0400
Message-Id: <20260311004008.2208806-22-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260311004008.2208806-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BLAPR03CA0004.namprd03.prod.outlook.com
 (2603:10b6:208:32b::9) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPF62A0C9A68:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c4d878d-4db8-4209-702a-08de7f06dfb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 2/fHGl3B780mzDfEPm8hDk/LMEnkPsnw23FfcQ2+equwc0Ky8KtKhc7DPCPr+acZW86Y64qJWMJ7zhYwOJtPspYgyN59vrVV6LjRawYFkwvQUkQY9haHFPXikkdhnplEYbNzWEVFNiK+UMWDQt4rN7nZkw9MNBZLvJWfH6QWmvpMWc2zga7C+vnrZAr/vocqfLblqialoRUR56rKWJ2IGDKl7z6IYwgiFpF7zknK/ND2MeW2ZINND0R8ff9ajL98A5+3FgCB3AkKx0LZDP8bSvuTKAzySVoUNjngdLmpRl6LK74987Z7rvAqtj3tdDreODoNjl6ql2o7mbVSd/7KNRnNPIUlbEZ/ODrEodyNXv7zd0vImOXyXoDLSe3GphDA9Ufsr24kc2lbABXYVipv13xgX/Qpn9EvB3oV1S3o5obORNc+Hw37wVy+ElQOMIv+4vtBJGhSLlFwxI6cruHZruMSqmBP9+aBaAtVxwwVTakDLtimxXzMXn9si4wyJww4Yr39xACUZCzmIZCvFiIz8KZPgLAcwqJjZedBpxWVjsZk4MICRM3n+hft3izWiiEEHiRwHnoYM0FonplgdaQ/H99fS4oSW21A1F1hN8vZfH8unE28yTutFmQ+6DXmln1JkF+a9ObVIhiEdu1JJnAeV3t5alm7F2fJtHNImI1UrG7eka6MjQh99voJodrC7vbtLC3QHjsexL2S6jb6VikpEHD5UshPG/3JO0vhpqYC8Jk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUJ5SzRWUWpZMDdKeDlycTNJTXZJbHVPSER5M2pZSVIvTXhvWEc5TjhZOU1N?=
 =?utf-8?B?bnlNaTV4M1lkL09OQ2cwUW9XVVBrTkRFclV6cXRLd2RkK1RtV3lvejBGL01H?=
 =?utf-8?B?eFhtUytVMmxIbXJRMjRBMjBLaXBIZU5XaTJYQ2xVcEptRUdVVDJ3STNjMzdh?=
 =?utf-8?B?OENoREFValNiaVErUktQWkEzVmc5T3ZqY21YL2VJbjBWVmlldngvK1N3bXZF?=
 =?utf-8?B?OWNWTFZZNzEyd0xySUlNRGJnY3YxNGNxNDh3TnIzeFV1bk4zajZ2TSt6bDZx?=
 =?utf-8?B?Ym40YUs3bzFEVW9yUGZFYm1VZU1DMGgwZjlaRWpiRmZhbC9YdVdLa1NsTGhZ?=
 =?utf-8?B?cUtBZDEwaW1PaGw1NFJSV3RacytsQU00UFM5WVljKzNtN1VGTWRDWGlvZytm?=
 =?utf-8?B?L2lXQjQxK2pRZFNoVklBbjNYV3VSNHdpYks5UlpxVHUwTlQvNlFKUFJnSE9X?=
 =?utf-8?B?dDRoTDZmdkdDNjJSQjdQOXN1andLTmxrWEJTU2prZ1UycjZFNmsvdEpmSGNi?=
 =?utf-8?B?WG1YcGdXTkhHVzBnU3pIV0J3U21TQlJLbWxLMVZCNm5sSmZIVXd0eXZTY0Fw?=
 =?utf-8?B?c1hMRFZaL3JLWnV2d3lJSDFJYUdUSVR3dzdzVmtBUllmUkRTOElmZEw3WGQx?=
 =?utf-8?B?VzJUMklXcjJtekE0SElXeGhlR2lqakpLa0FuVUQyODhYSjFORW5wRmxpUVJm?=
 =?utf-8?B?MlZhemo3dGN0QUVIRU1tcGk3YVJkUXlKVStzTFA1anhScEg4MmcwbHFPSUtv?=
 =?utf-8?B?N1FiYnM0elovbGVzY1JyZlI5dmsvZ1YwZmszOE9weVhFZ3U0bEhjZ3Q4UXBt?=
 =?utf-8?B?Yzlpd3lIMlhLWGdLSmhRWnVkOFlCQ0Q3ZzQ2b2MzZGZaTjhRa2JRMzNxRDVI?=
 =?utf-8?B?U3J0Y1ZtNjR4MDZpM3FycFJoYU1DQUdqOEExUGRXdldJVzJ4a3lYbU54cVNs?=
 =?utf-8?B?S3FXWDlkMFh4dzVDenlhbFIrTDlVZ0tldERweURzZU1mYUZqbm1yMW1LQmQx?=
 =?utf-8?B?YzNMMStFejhBc2RZWWpRN0NWb1hWZHVoRzhLMXNIZ1pDNy9TaXZCbE9zY3ZT?=
 =?utf-8?B?djNIU0EveDd4bE13TE5EcUxoa0pRaFNSQ0JjejFwVE1TSjNoQitSU3RCZlZG?=
 =?utf-8?B?VTh4emRBNDVaN1pxNjdsZzg3WjRvNklEQWtBQlFoRWg3MWhKYkVYTXl2MjU2?=
 =?utf-8?B?VWxkUVBJMGNsRE16Y05XcFVZbzdFUTE1VzJIUlBEWlF0aGpjVTRuRnFqT2lY?=
 =?utf-8?B?VzkxbzZUcDQyeWlKZ0dlbEtON0UxenlNU21ZUTE2dXlOSi9LRThwRmZhWko5?=
 =?utf-8?B?UmhJbDZkZDMwSWt5Ni90K2I2clFUcGtaemM0a1JsdEFrQXd4d3Z6NHVnMFor?=
 =?utf-8?B?aUVqTUxYMkdOdVRyenRJdHNGbWdUNVlpNUdVZEgySUVpMk14NFcvQ1BBNzVr?=
 =?utf-8?B?ZURRYUFzRHNWNUtNMDNUOFgxdGQ3bTZ4MUs2Q2NRZXIwQWhacHpIRm5Id1ZE?=
 =?utf-8?B?NjVQZGxNaDFxeVpHaExrR2twZmZDSVN3a2NvbHdqVWNZYm84OVo1V3FLWlVu?=
 =?utf-8?B?U2tsS2NDaGlRK1A3UW5GWldaSXFxTDFkaTduWHRNUWVrOWxxV0xRK1Rnaldp?=
 =?utf-8?B?TEpUT1Y5Q0ZYcmtoY3JyeVZhekV4eHV6anZrVFlGb0pld0lJdXVFc1liTTJI?=
 =?utf-8?B?aWExdXRvTjdGUFB6azBPOUZUVTVwbTlRaUhjZHI0UjhDVGxuMjNkdjg3OGcz?=
 =?utf-8?B?T2pnQTlQZit6R3IvZ0RTK1MwM3BvQUYxdUcvRkY5SnBkRHdndSszMEEzWlor?=
 =?utf-8?B?NU9EeXJpVnRzNkh4N01kOHpUcEt1Sm15R1dvM29tWTRzMllQOTd0cDdlaHpp?=
 =?utf-8?B?TzVvRk1QOGl6OHBvRmRvYjJ1aEp2NjUwbFg0WW5mcXRsVnk2TGVTNEN0MVM0?=
 =?utf-8?B?ZEdnb041V3VwUjd5S0RVMWg3dHVmN1ovOFlTRHFUMFhjeXQ5WGVEa0UvTWtM?=
 =?utf-8?B?QlVvK0lHRnA1aTRXNVcwNWI5U3BIdGx3bFpSc1lLNDVld2sydGpCbzllcHVU?=
 =?utf-8?B?M1paN3ordjZEVU1jR002RzRPaXFEdVZadmMxRkZRV1h6algxU0pyNEhIWVJH?=
 =?utf-8?B?WTFiemdJVTBMY2c2WEZEZGFhNEp3QWxCZjIyM1U0SlFoMEZwd1UyeEw4c1J4?=
 =?utf-8?B?VlducGlXVFVjcTc0cEFOUCtnbnpWbDNtWDlPUUN3RHU5S2U3Y1V4d0VhV3Qr?=
 =?utf-8?B?aUhQU2VJaUlhQVF1TXZjUzA0K0YvdkdDVkFtK0lGUEZBeDR6Q2wySytTVXJM?=
 =?utf-8?B?RDY4TzB4dFI4bitzeG9RSWp6aTgrcEdmOENnZUNrTm5OLytVbDR5UT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c4d878d-4db8-4209-702a-08de7f06dfb7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:41:03.5247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1is6MPKzR02o4mZNRDE7wCEirg+7M1PigY211etcDG/q2DDcIKjZ5QT3/p7746/E83PnxWS196xXFGrpCProsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF62A0C9A68
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
X-Rspamd-Queue-Id: 1C162259FF7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[57];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,nvidia.com:mid,nvidia.com:email,Nvidia.com:dkim]
X-Rspamd-Action: no action

Add self-tests for BAR1 access during driver probe when
CONFIG_NOVA_MM_SELFTESTS is enabled (default disabled). This results in
testing the Vmm, GPU buddy allocator and BAR1 region all of which should
function correctly for the tests to pass.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig        |  10 ++
 drivers/gpu/nova-core/driver.rs      |   2 +
 drivers/gpu/nova-core/gpu.rs         |  38 ++++
 drivers/gpu/nova-core/mm/bar_user.rs | 256 +++++++++++++++++++++++++++
 4 files changed, 306 insertions(+)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index 6513007bf66f..35de55aabcfc 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -15,3 +15,13 @@ config NOVA_CORE
 	  This driver is work in progress and may not be functional.
 
 	  If M is selected, the module will be called nova_core.
+
+config NOVA_MM_SELFTESTS
+	bool "Memory management self-tests"
+	depends on NOVA_CORE
+	help
+	  Enable self-tests for the memory management subsystem. When enabled,
+	  tests are run during GPU probe to verify PRAMIN aperture access,
+	  page table walking, and BAR1 virtual memory mapping functionality.
+
+	  This is a testing option and is default-disabled.
diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 3bc264a099de..b1aafaff0cee 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -101,6 +101,8 @@ fn probe(pdev: &pci::Device<Core>, _info: &Self::IdInfo) -> impl PinInit<Self, E
 
             Ok(try_pin_init!(Self {
                 gpu <- Gpu::new(pdev, bar.clone(), bar.access(pdev.as_ref())?),
+                // Run optional GPU selftests.
+                _: { gpu.run_selftests(pdev)? },
                 _reg <- auxiliary::Registration::new(
                     pdev.as_ref(),
                     c"nova-drm",
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index efff76313b89..022b156de0da 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -349,4 +349,42 @@ pub(crate) fn unbind(&self, dev: &device::Device<device::Core>) {
             .inspect(|bar| self.sysmem_flush.unregister(bar))
             .is_err());
     }
+
+    /// Run selftests on the constructed [`Gpu`].
+    pub(crate) fn run_selftests(
+        mut self: Pin<&mut Self>,
+        pdev: &pci::Device<device::Bound>,
+    ) -> Result {
+        self.as_mut().run_mm_selftests(pdev)?;
+        Ok(())
+    }
+
+    #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+    fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
+        use crate::driver::BAR1_SIZE;
+
+        let mmu_version = MmuVersion::from(self.spec.chipset.arch());
+
+        // BAR1 self-tests.
+        let bar1 = Arc::pin_init(
+            pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
+            GFP_KERNEL,
+        )?;
+        let bar1_access = bar1.access(pdev.as_ref())?;
+
+        crate::mm::bar_user::run_self_test(
+            pdev.as_ref(),
+            &self.mm,
+            bar1_access,
+            self.gsp_static_info.bar1_pde_base,
+            mmu_version,
+        )?;
+
+        Ok(())
+    }
+
+    #[cfg(not(CONFIG_NOVA_MM_SELFTESTS))]
+    fn run_mm_selftests(self: Pin<&mut Self>, _pdev: &pci::Device<device::Bound>) -> Result {
+        Ok(())
+    }
 }
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
index 0d083f3e72c2..d2a2e0ad097a 100644
--- a/drivers/gpu/nova-core/mm/bar_user.rs
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -154,3 +154,259 @@ fn drop(&mut self) {
         }
     }
 }
+
+/// Check if the PDB has valid, VRAM-backed page tables.
+///
+/// Returns `Err(ENOENT)` if page tables are missing or not in VRAM.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn check_valid_page_tables(mm: &GpuMm, pdb_addr: VramAddress) -> Result {
+    use crate::mm::pagetable::{
+        ver2::Pde,
+        AperturePde, //
+    };
+
+    let mut window = mm.pramin().window()?;
+    let pdb_entry_raw = window.try_read64(pdb_addr.raw())?;
+    let pdb_entry = Pde::new(pdb_entry_raw);
+
+    if !pdb_entry.is_valid() {
+        return Err(ENOENT);
+    }
+
+    if pdb_entry.aperture() != AperturePde::VideoMemory {
+        return Err(ENOENT);
+    }
+
+    Ok(())
+}
+
+/// Run MM subsystem self-tests during probe.
+///
+/// Tests page table infrastructure and `BAR1` MMIO access using the `BAR1`
+/// address space. Uses the `GpuMm`'s buddy allocator to allocate page tables
+/// and test pages as needed.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    mm: &GpuMm,
+    bar1: &crate::driver::Bar1,
+    bar1_pdb: u64,
+    mmu_version: MmuVersion,
+) -> Result {
+    use crate::mm::{
+        vmm::Vmm,
+        PAGE_SIZE, //
+    };
+    use kernel::gpu::buddy::{GpuBuddyAllocFlags, GpuBuddyAllocMode};
+    use kernel::ptr::Alignment;
+    use kernel::sizes::{
+        SZ_16K,
+        SZ_32K,
+        SZ_4K,
+        SZ_64K, //
+    };
+
+    // Self-tests only support MMU v2 for now.
+    if mmu_version != MmuVersion::V2 {
+        dev_info!(
+            dev,
+            "MM: Skipping self-tests for MMU {:?} (only V2 supported)\n",
+            mmu_version
+        );
+        return Ok(());
+    }
+
+    // Test patterns.
+    const PATTERN_PRAMIN: u32 = 0xDEAD_BEEF;
+    const PATTERN_BAR1: u32 = 0xCAFE_BABE;
+
+    dev_info!(dev, "MM: Starting self-test...\n");
+
+    let pdb_addr = VramAddress::new(bar1_pdb);
+
+    // Check if initial page tables are in VRAM.
+    if check_valid_page_tables(mm, pdb_addr).is_err() {
+        dev_info!(dev, "MM: Self-test SKIPPED - no valid VRAM page tables\n");
+        return Ok(());
+    }
+
+    // Set up a test page from the buddy allocator.
+    let test_page_blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Simple,
+            SZ_4K,
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+    let test_vram_offset = test_page_blocks.iter().next().ok_or(ENOMEM)?.offset();
+    let test_vram = VramAddress::new(test_vram_offset);
+    let test_pfn = Pfn::from(test_vram);
+
+    // Create a VMM of size 64K to track virtual memory mappings.
+    let mut vmm = Vmm::new(pdb_addr, MmuVersion::V2, SZ_64K.into_safe_cast())?;
+
+    // Create a test mapping.
+    let mapped = vmm.map_pages(mm, &[test_pfn], None, true)?;
+    let test_vfn = mapped.vfn_start;
+
+    // Pre-compute test addresses for the PRAMIN to BAR1 read test.
+    let vfn_offset: usize = test_vfn.raw().into_safe_cast();
+    let bar1_base_offset = vfn_offset.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+    let bar1_read_offset: usize = bar1_base_offset + 0x100;
+    let vram_read_addr: usize = test_vram.raw() + 0x100;
+
+    // Test 1: Write via PRAMIN, read via BAR1.
+    {
+        let mut window = mm.pramin().window()?;
+        window.try_write32(vram_read_addr, PATTERN_PRAMIN)?;
+    }
+
+    // Read back via BAR1 aperture.
+    let bar1_value = bar1.try_read32(bar1_read_offset)?;
+
+    let test1_passed = if bar1_value == PATTERN_PRAMIN {
+        true
+    } else {
+        dev_err!(
+            dev,
+            "MM: Test 1 FAILED - Expected {:#010x}, got {:#010x}\n",
+            PATTERN_PRAMIN,
+            bar1_value
+        );
+        false
+    };
+
+    // Cleanup - invalidate PTE.
+    vmm.unmap_pages(mm, mapped)?;
+
+    // Test 2: Two-phase prepare/execute API.
+    let prepared = vmm.prepare_map(mm, 1, None)?;
+    let mapped2 = vmm.execute_map(mm, prepared, &[test_pfn], true)?;
+    let readback = vmm.read_mapping(mm, mapped2.vfn_start)?;
+    let test2_passed = if readback == Some(test_pfn) {
+        true
+    } else {
+        dev_err!(dev, "MM: Test 2 FAILED - Two-phase map readback mismatch\n");
+        false
+    };
+    vmm.unmap_pages(mm, mapped2)?;
+
+    // Test 3: Range-constrained allocation with a hole — exercises block.size()-driven
+    // BAR1 mapping. A 4K hole is punched at base+16K, then a single 32K allocation
+    // is requested within [base, base+36K). The buddy allocator must split around the
+    // hole, returning multiple blocks (expected: {16K, 4K, 8K, 4K} = 32K total).
+    // Each block is mapped into BAR1 and verified via PRAMIN read-back.
+    //
+    // Address layout (base = 0x10000):
+    //   [    16K    ] [HOLE 4K] [4K] [ 8K ] [4K]
+    //   0x10000       0x14000  0x15000 0x16000 0x18000 0x19000
+    let range_base: u64 = SZ_64K.into_safe_cast();
+    let sz_4k: u64 = SZ_4K.into_safe_cast();
+    let sz_16k: u64 = SZ_16K.into_safe_cast();
+    let sz_32k_4k: u64 = (SZ_32K + SZ_4K).into_safe_cast();
+
+    // Punch a 4K hole at base+16K so the subsequent 32K allocation must split.
+    let _hole = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range {
+                start: range_base + sz_16k,
+                end: range_base + sz_16k + sz_4k,
+            },
+            SZ_4K,
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    // Allocate 32K within [base, base+36K). The hole forces the allocator to return
+    // split blocks whose sizes are determined by buddy alignment.
+    let blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range {
+                start: range_base,
+                end: range_base + sz_32k_4k,
+            },
+            SZ_32K,
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    let mut test3_passed = true;
+    let mut total_size = 0usize;
+
+    for block in blocks.iter() {
+        total_size += block.size();
+
+        // Map all pages of this block.
+        let page_size: u64 = PAGE_SIZE.into_safe_cast();
+        let num_pages = block.size() / PAGE_SIZE;
+
+        let mut pfns = KVec::new();
+        for j in 0..num_pages {
+            let j_u64: u64 = j.into_safe_cast();
+            pfns.push(
+                Pfn::from(VramAddress::new(
+                    block.offset() + j_u64.checked_mul(page_size).ok_or(EOVERFLOW)?,
+                )),
+                GFP_KERNEL,
+            )?;
+        }
+
+        let mapped = vmm.map_pages(mm, &pfns, None, true)?;
+        let bar1_base_vfn: usize = mapped.vfn_start.raw().into_safe_cast();
+        let bar1_base = bar1_base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+
+        for j in 0..num_pages {
+            let page_bar1_off = bar1_base + j * PAGE_SIZE;
+            let j_u64: u64 = j.into_safe_cast();
+            let page_phys = block.offset()
+                + j_u64
+                    .checked_mul(PAGE_SIZE.into_safe_cast())
+                    .ok_or(EOVERFLOW)?;
+
+            bar1.try_write32(PATTERN_BAR1, page_bar1_off)?;
+
+            let pramin_val = {
+                let mut window = mm.pramin().window()?;
+                window.try_read32(page_phys.into_safe_cast())?
+            };
+
+            if pramin_val != PATTERN_BAR1 {
+                dev_err!(
+                    dev,
+                    "MM: Test 3 FAILED block offset {:#x} page {} (val={:#x})\n",
+                    block.offset(),
+                    j,
+                    pramin_val
+                );
+                test3_passed = false;
+            }
+        }
+
+        vmm.unmap_pages(mm, mapped)?;
+    }
+
+    // Verify aggregate: all returned block sizes must sum to allocation size.
+    if total_size != SZ_32K {
+        dev_err!(
+            dev,
+            "MM: Test 3 FAILED - total size {} != expected {}\n",
+            total_size,
+            SZ_32K
+        );
+        test3_passed = false;
+    }
+
+    if test1_passed && test2_passed && test3_passed {
+        dev_info!(dev, "MM: All self-tests PASSED\n");
+        Ok(())
+    } else {
+        dev_err!(dev, "MM: Self-tests FAILED\n");
+        Err(EIO)
+    }
+}
-- 
2.34.1

