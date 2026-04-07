Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBkHA84J1WnMzgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:42:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCC63AF583
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC9410E417;
	Tue,  7 Apr 2026 13:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ASGIpU8Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010044.outbound.protection.outlook.com
 [52.101.193.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E960910E04D;
 Tue,  7 Apr 2026 13:42:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q3G3m08jgbxj58IfuquesePOubkVb9YB5Q8/YoyI8f0X/Y6YKI9tejNYr+k5Pi0jj/zCGCTm17Rd3WZYzEPJc6sf0l1QIOXcDhI0NhL6Ykm1VbQHghYck0KvQnEP3kAq3C/0+kqyGeK6lr+7/HVrr59fwwx3KUHmVIrbuKXlA9KsXtX0zJaggr1yfb/wkZLCas70H60nCk8WdgdMe3PBZmH/mVi5C/dQwhlMs6DhjXGfc/KIb9UwvdrXyw20EqK1kUx9E/YHWLQGixIWzsWWy4ode/QfDLLqvRc+5dbDuOrOi65elXVaUg6DlEpzyTnPx/gEMX6Tvkpkr80+LErL2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=191XT4Za1tVv5q0Z0AsslL+hmR1PttqUiSVSlyCysu8=;
 b=J+Sz43B2oFyaFmTPIVMLKuvJHl7F26PbM/RCclLuJ8FRge52eQGNhcy44X1Yof3zlC7Z/wPluI9jfF6T19CT+PKODvSaTdnK7NkL+RNKo2kQOJxXEOvQLyADrlnBpgGuNsSE4zKc96/LG/RhS2SpC4sKbZr0z+peFf4b5lN2K6NBEliqQKLo/Gg0lzW5fSsuGBlozfSaqY1K4L1jInDqQM3Ye9Wz6IVhCBte8DCCyvM/XvBU8kKS/WOJ4ZC6U1hGFAKZEj/f0BdHEjY1lUgT5RtG2Yr6zcQauGPGZ8AduOk/rQWID8GPEcNl7nJpILW7SKnMUdSVoplVt4a5Kzj+xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=191XT4Za1tVv5q0Z0AsslL+hmR1PttqUiSVSlyCysu8=;
 b=ASGIpU8ZO1d3+i5m2vd1eWsr6tA3/euywuOKR2EOYqpzuVDtX3wUlpeZx7tkdOAoH+Kte+inySQb6e2MTBD1Sx/xCr9C3cZaqky6rKSXcp6dxu6bWezCgqAPaNFVlZTwo4XJbfuhzYO7Q/tExZkShWgVRRseq6Owdm5izaH4iGS9Vg8FZS6ZCN35yN4IYzDBuMB/ZKfs8yL3sppueSbe5TbVw+tseeaT5g7x6pNh80Cgn6+C4+vpAJVOnrL0OjfdVYQAoEOHFb+bvjUK3/wKEH8A0YcjJ+U/iXP5xe//G5cW/CklzAKkkyTrtQwOT0dkmA47//i788cHyXJ0aq1VCA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by CYXPR12MB9428.namprd12.prod.outlook.com (2603:10b6:930:d5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 13:42:24 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Tue, 7 Apr 2026
 13:42:24 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 07 Apr 2026 22:42:18 +0900
Message-Id: <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
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
 <alexeyi@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
In-Reply-To: <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
X-ClientProxiedBy: DUZPR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::9) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|CYXPR12MB9428:EE_
X-MS-Office365-Filtering-Correlation-Id: a437c496-13c8-45a9-88c0-08de94ab7fd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: Fa8yqMKCEz4MtiyfFj0Hg/TNAi4MYelYlUpGgrOuyqZD2WAo44p22zMmTyF9Vidiwhlx1XX1mcwyTiBxhccTz9Yu7eBt2RPbWE1aNLASccyFxTpxWrfReDhSS809Lam2SBzQC1gn7jUj6Ppp+EuONbpdvI4RzEVeZEuDmPeiVEbTFmkScvq+g2uXy1/ubsXulyLugdlon8MRN2EO+Ee/Vbq8Ej/QJQqJnmWgNrhstBACGTeufLFWP+M2fBY2ix5NgJ3nC5hSRQY2QJPLSAM20lv6FERiuoDzqg2l5lTsacfW/DfFEqlMvrjwRnPW4Rg6/Ic/zPf2TOPg2oiCcRBwsDokdedzeLFBMcjW5V4grhYGXNcKc0UW/+nHzLtAoN2JvMzUUdgwm54rytggwY98K7DjExcETzx7H2EL1H80++9prNoU9VxqcdNVUgVWb41FJ/+b6GO0TmSW9MXYEl4X3QDc2yvsh01qevcrqDai7UNjVV06iCrEz9kdO3XoFQvJ+OIumz1EFYvkFUt3CizOGdvM90lkS59Ua4Vw1bJGDZQo2/1g3+B7K91n7R5XTtfWNcHfZFEvlkgOMfoWg/N0O97tpAFeBO624W+bc67OEu8QqUm8NmHW9kWduwXKfendfR1WVcCuERKSsUcGIuSyJwu7/zT//ceEvhTohj0jZ4dDLDYb3j64OYgstOIOM4JiiPw4GCendEzD6xuv9BIUAh6uJYvp5DwJ/ieWL/eK2R0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXhJZHpldE9RblNqTXVDdWhYYmFVQnRIKzJGM3hRYlF2aEtBZ3VINFkxR3VC?=
 =?utf-8?B?SDhqWVRDcFpWTmE2VnNWalhjNW1JOUE2dG9jbCtXQ2FuSVlUd1FhM25VbzZH?=
 =?utf-8?B?VWRTWVVkVnFqUTNyUE9JV1h1R3BlWDY2T0ZXWStqUmJoVmNvaUJhcGtEalFL?=
 =?utf-8?B?MHc4Y1pld3EyS0lkbndUdXRaTXQxMVJtelJxS2FaYjVPTWkveEM3ZFA4MmE3?=
 =?utf-8?B?Y29udlE2cXhMalZwdWM3WFVYRzBIeFpWWDhoN2JMZi9pa3BqYWFMb1NCWGRH?=
 =?utf-8?B?TlhRMjhGQzBDSWRiajc0MWpyaDkzM1E2VnpxOGdGU0RMTmI2TWZDTnAzY0JI?=
 =?utf-8?B?MjgrMWdOcGlkREhWbml1TXJaMnc5aGt5a1BiWERwdHlJdGtpRndKRkJBa3ZX?=
 =?utf-8?B?WFZlaHhRSitMaHg0T2hLWUJyVjg0VFhXU2NhVHRpUEdoYUVaN04wRnVjUlVV?=
 =?utf-8?B?T2FpaWhpeThUYmVIMjdYczFBYWNuVjdJZFVDL0ErTDhJS1M5dldqVnlzZHNs?=
 =?utf-8?B?bzZKT3lzUmxiaHFBcEJVRlFjdGFoWFVaTis4Q2VSMlZnUGpZNGVQejdIc2FL?=
 =?utf-8?B?UXlmZXl3b3l4R0c0ZEpLd1BydE1kYzJ0a3A4bWtoUzFKN0xhakEzYVNvejlH?=
 =?utf-8?B?aFZOR25vdWsxblJWcXh2R0I3ekhUaVFLR0dpQlZMLzlmSU1HYjZBTzBiZGdD?=
 =?utf-8?B?eUpNdHJYaUFyenlyMHJBalFVbmplR2JOa1dFNFZSNUlEYTBFN0N0OFNNcVRV?=
 =?utf-8?B?ZS8xMEQxaHRaK3hmL3dkbXYySkxQQkNrbUM1NDlmMmJpT3pVL3BTR0Erellp?=
 =?utf-8?B?ZmVXYTJkTFkxSVFBOG1KQUxDUWt3WEJwUENUT0FkMGQ3aEVwWFZJR0pIWWt1?=
 =?utf-8?B?Z1Eyc3FwZHZkQzNxbFNkaGswYktwTDcvb3ZTWWg5RDNTamF0YnZkM0szOWYz?=
 =?utf-8?B?Yi9aVWlyWGc4eWlyU0g2NlMzMmFLYkZscmtlbjd4NjVPU3FZYnpLa2ZCa1lM?=
 =?utf-8?B?Tk9xNjJEUHhTTy9VWHFaT2dKUlI2ZHNCUU5ycjQyMFV6SkpKakZ5VjR3QUlV?=
 =?utf-8?B?Vyt5OHcvSFBocCtacFdTb3ZialgxRG5XdUJqRk9uelNNR2dDaWREbFR3SS8w?=
 =?utf-8?B?Z3lyK3RzcE9vQTU0cEtiV2VNaGlkVUxTZUx5L3lnR0lCaUlINlhEMVNZeWZI?=
 =?utf-8?B?bms4Yk5rSnI0WDhRbDIzdzNJSUFabDJxT2IzZVlxdmFlWk9ybU10MXpwM3NL?=
 =?utf-8?B?TDUwSXVIdjUzbkNIOFk4RXJSeGw0dm9KcW40ZTBNelVVSFl1V2ZURXg5Q1kw?=
 =?utf-8?B?VWJzZ1JQeHR6dVFGNTJxMURLcFd3WjlKOS9nVVQ5Qy9UdEd0L0hMc3lCams2?=
 =?utf-8?B?MHl4U01MeFlZaTZWVlZoOFFtazhOc29JVXZ4OUZDc0tNdGtQOXFyUEZWNDB0?=
 =?utf-8?B?Q3diYzhoZWlLSlN3YjhXRnp0VFI2bHBsL3JPQ0JZSjNCVGZ1MGJtdkJsMENq?=
 =?utf-8?B?M05HWnYzZThRK2dhZmhCSjF4MUFwRXg5ejhTQUFkZ3NtU0pMZEhZVUlxR0hP?=
 =?utf-8?B?b1UxcWpBV3ZPTHJnYXozQ1pVMW9CUWRldDE1SCtYUjAyK1JiSytIVDFaeVpw?=
 =?utf-8?B?K2R6Vnc0U1NLeWV0QmhGcGx0dVFwNDJPcXRSclFwRksvSnZnWHhLVUxrVXZx?=
 =?utf-8?B?QWx1SlIzclZtL2xvWEN1R3ZWS1creFcxTnBRSjdLNExEOXNLRE13VWxDalli?=
 =?utf-8?B?WTBLRUY1OCt5SmEwbExOd1hOSFZYOUJEK1hsUjhEMGNDelI4aEtHWGFIblJz?=
 =?utf-8?B?Qm9aMUp0R0tJUnNETzh2bDFlOUxPcGRqWEJralhIR2xORkxCQXlxYlU4RWhS?=
 =?utf-8?B?UHM1SEFKNy9MZzcxSTdhdW5ic2tOVGdNWWRmbDNVbjFUT0pPRUVCODFiT0Rz?=
 =?utf-8?B?YzEvanJSVFZuSkVZbDFhdVdDWjBya1gvT2xoR3hOMzBGUHpoWVV2OUU5SDBT?=
 =?utf-8?B?OGIxaHBsK1d6NFNaOFMyWW5vTTI0dTVUZGpSU1dYQ3N4cFdnRGs2dzR6VzFD?=
 =?utf-8?B?amdGM3ArM0tWVzVtNi9iMFBodXF1dEl5MWFmd2U4VHdNNEs2bVUzVUhMU3Mx?=
 =?utf-8?B?TVJ2ZGZibDExMHpXbHcvU1FUMm1tWTc2QUs4ZjloWHowTkNybjMyYXp6Ris2?=
 =?utf-8?B?N2dWSEZkbmF4Y2dBSzc2M3MwQTc0RnhBR0JLK2c2NXdPSUEvTnZVUzRZOWFw?=
 =?utf-8?B?TUE5RzRqTzF5d0xOTTBjaWJ5bWZYKy9pU1VjVmEwQi9tUnl5S2M5aVh6YmFr?=
 =?utf-8?B?VEJ6d1IwK1lRRUNLRzlTanFHRkxML01TMlN0eWRqVzJHbjM3ZDJ0K0haa3B3?=
 =?utf-8?Q?7fEfZCGWSqbefN0glugZeHkq2O3qZaIXsZbdjsT2Qu7o5?=
X-MS-Exchange-AntiSpam-MessageData-1: O3lTX3caJd37Rg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a437c496-13c8-45a9-88c0-08de94ab7fd9
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 13:42:24.0130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a1M93zIKIVWoCj/kwD44UMYODaBWPu03tPwGfVdHfWCOQYTLU8zyqFjDB7gHoRh7Z+34Lp6lM6FON25CepiR/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR12MB9428
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,Nvidia.com:dkim,pagetable.rs:url]
X-Rspamd-Queue-Id: 5FCC63AF583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
>>> +    /// Compute upper bound on page table pages needed for `num_virt_p=
ages`.
>>> +    ///
>>> +    /// Walks from PTE level up through PDE levels, accumulating the t=
ree.
>>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -=
> usize {
>>> +        let mut total =3D 0;
>>> +
>>> +        // PTE pages at the leaf level.
>>> +        let pte_epp =3D self.entries_per_page(self.pte_level());
>>> +        let mut pages_at_level =3D num_virt_pages.div_ceil(pte_epp);
>>> +        total +=3D pages_at_level;
>>> +
>>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>>> +        for &level in self.pde_levels().iter().rev() {
>>> +            let epp =3D self.entries_per_page(level);
>>> +
>>> +            // How many pages at this level do we need to point to
>>> +            // the previous pages_at_level?
>>> +            pages_at_level =3D pages_at_level.div_ceil(epp);
>>> +            total +=3D pages_at_level;
>>> +        }
>>> +
>>> +        total
>>> +    }
>>> +}
>>> +
>>=20
>> We have a lot of matches on the MMU version here (and below in Pte, Pde,
>> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
>> associated types for Pte, Pde, DualPde which can implement traits
>> defining their common operations too?
>
> I coded this up and it did not look pretty, there's not much LOC savings =
and the
> code becomes harder to read because of parametrization of several functio=
ns. Also:

Thanks for looking into it. Sorry to be a bother, but would you have a
branch around with the code? I'm curious what didn't look good about it.

>> Then you can parameterise Vmm/PtWalk on this type.
>
> The match still to be done somewhere, so you end up matching on chipset t=
o call
> the correct parametrized functions versus just passing in the parameter o=
r
> chipset down, in some cases.
>
> For now I am inclined to leave it as is. Also there's a Rust pitfall we a=
ll
> learnt during the turing and other patch reviews, sometimes doing a bunch=
 of
> matches is good especially if the number of variants are expected to be f=
ixed
> (in the mm case, version 2 and version 3). Traits have some disadvantages=
 too,
> example dyn traits have to heap-allocated, parametrizing can increase cod=
e size
> (due to monomorphization) etc.

Yeah, it's just this is a lot of matches in a lot of places. And we have
ver2 / ver3 specific code leaking into the general pagetable.rs file. So
it would be really nice if we could find a way to improve this specific
aspect. We can reduce the match to happening in just one file. You can
avoid heap allocation if you would like by making Vmm an enum,
for example, and doing the match based dispatch there at the top of the
API tree, rather than at the bottom where it fans out into a lot more
locations.

>
> thanks,
>
> --
> Joel Fernandes

