Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JhREIwDzmk/kQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:50:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94EB384287
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1817D10F0B5;
	Thu,  2 Apr 2026 05:50:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BZME6/R4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010015.outbound.protection.outlook.com
 [52.101.193.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710D310F0A7;
 Thu,  2 Apr 2026 05:50:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RRfxGLI0+jXXmGZ79aqOTUTqaSb/jdr8kuFwfBPUHIpMyUmBTs4/rHNkdSAdavUPRQrj8FYR7YyysnffkASfc8bEBEjtpNQCktChyfKsch8pg0g83DfhHvDJEu9pW1OujyT0sExX9B7nhHc596r10H6PYMhC+Ea0tUQvb7OkD84NkuaO5ugRFuhUk0DsCWOCcq7B+lV2ucSlITuRCCurh4kpHKFnj5Nxdv46M6y10AAPOcFr0LC7aaSdIfm/f40JQxpap27jE0Z0hplsPbXzA8MiulhCshoYHPY+iCryYk1FbZL9E/mqGgsft51Vc3CvFeqRxsb/RBnB3PkQ/23gGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b90gY3739T5IsdSrqeAYbuM9KQipSa0Y9BtFFVISuCg=;
 b=NyBSyujUDIwbdTJJJxEIknNByrT6YjuIzhk2F4sQtxzIgka2OTGZCP6HqzEW7eMkYallcHmPkQOxmyd31Q3dAzfG9/Wxb1s8Jhlx1kydz5jDJVsqC0MTqh1YsFTGh3v5XjlYj9D6/wuE1Z9xMy7p1FAJzSaNnbpeLLDluZfXBORLlLjngFKCXlsB+gdjB7f4qomrBKkNaF58Ug9f8Ely5jHi+zPZUeR+I6ehOMgfCD/NGY5ck3OX1ruekUHYKibJ/KtaikQ/K04/RkCECr0VCk3rSkwHUD3nMh7Hy+dXxsJL3yhoh0S3fQShGK+Oo8VBZGxisWyzs7kDuYS7+9PiXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b90gY3739T5IsdSrqeAYbuM9KQipSa0Y9BtFFVISuCg=;
 b=BZME6/R4RRCxcWAHkDitOttVbO9t6PRrFmb1WOpmn/qxg1HdC1nqP+TX+XdceXHTowngPR5vir//jDXwS62QFXj2TDhnea25OkZClql6Hsy48/i3XietVFtUlaYAxcWNYxBvHgopH4YGh3x8Duv3w8paNATYFbFYqPhdUyVbBCRpyPq4jBv59XfxeKl4/YG525l88X1nYWMoxSjH9wjH8soMFe8AzEHonrhBm+C6v9oKsU0PHYuzXlbldcGNnTYca0wLms/VIYVtjg1G6JoABnVKNhdlmc9ygcXzbsw1KtchHNhyBB6gPmkNA27zaN2RLJu0P2Q8567UAt7a92wW1Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by SJ5PPF1394451C7.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::98b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Thu, 2 Apr
 2026 05:49:55 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:49:55 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:49:52 +0900
Message-Id: <DHIFMDLKTUSR.14QI5EHNMK18I@nvidia.com>
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
Subject: Re: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region
 from GSP
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-3-joelagnelf@nvidia.com>
 <DHHOCGNIYDW3.1P7YIMVLW93IY@nvidia.com>
 <d6fe3e40-0310-4b90-ac8c-8beeec886f90@nvidia.com>
In-Reply-To: <d6fe3e40-0310-4b90-ac8c-8beeec886f90@nvidia.com>
X-ClientProxiedBy: DM6PR21CA0019.namprd21.prod.outlook.com
 (2603:10b6:5:174::29) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|SJ5PPF1394451C7:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c7cf037-7053-4a03-8e0e-08de907baad4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|10070799003|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: i40Rx5cjUc7QGBOFCMObAVEeZjPgE4FK+J5c70+8r30w54xHK/q9Ehkjaso5PbWGLaw7Nu6TIrptEY1j2PsfA2oDGH8cFAQywTDZ1MwwiDgmx/Od6yxYOGmaPYNTce5jaNL4/lb7fcQUHmo4pFNVYOyWCgAnqZDOrWsEplxtDWnx1ywt9+R0DxC40ZB92dxSBG+EQRbRBk3ys2nlNNFwq3FPjywYre6RJ8fGJ1ZN1zyOw/7ul0GKeQy8F/lQcNbJ5YI1fz5vtFa90xeDaLlsWhMUhIASZaGH+6l0CjYaGqPvoRgbd7UjRu9pL0S1CcjpfabMZ0uwo2eVAKCCV7q07Rtc+zzPtWF3AgbnQBH4cCR8W5kF5/4GlJ6mb59scco+MDvuti9GNqK/hYafqmusRlzd+6REQMzzPIAymj7aM4+b7FZ7BVggBT3/FCvN8V88kSgeM8koFdWOYaaiiDGQvHsnCF9AFrt4Hz6FEeD0wEyTCkwKaTcCK9CNAo/md3qyIASmGsrt/gdAc9mQ9MhBCtJZkIj3CR39ZMFE3ivE7uIzUq64/gxjrOJ6GziMg1+DjPJURNgU6V4s8lt208W12uAcur1Jda6aX64O4/OUD9fsqhPhhJ9YGZ8PrA1053GzQyvM1pY1QdfO3u/Uba8CTC3u+FNXP9k/DSEHq2ap64LUcq2lbVNiFuidjy9niEDsHgTaKuTfV1W7n7b1IVYxVg3jDgOJlvRYhS/xkXc+cIU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(10070799003)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjFOUENHUlBKQ1dEd2JDUE9PaXRwTW1OSHUxR2JYdnhjbCsxemh6OGVTdm9v?=
 =?utf-8?B?QUFVV2RqWHRCUmhWNUlNS21GUzVSVU41VExZNTdxQUpEMTV3MEl1Qnl5TlNN?=
 =?utf-8?B?YzB5RUh6cDdoc2MzSDR3OGl1NmtDVVYzRE4xeWRldWw3dmN2Q3dCNG9PT281?=
 =?utf-8?B?NVNIRGNmbVhpYUxoaTBsUWw3aURTb0hpOS9TOXpnRHVqVW43Y0owc1k1eDhI?=
 =?utf-8?B?NlZtMTVlY0ZERTRiN1R5cEpvT1FIajdyWWdJZjBWTFpUMFpuY2IvNHFsVWhZ?=
 =?utf-8?B?N1NBNkFaNDIzTjNVNEl4NzZucXlGVTVkMUxzbWdKbXh4dDZtcHJzTFFteG9Q?=
 =?utf-8?B?aVYrYjBFYklneWJLYnJ5RDlJVzRUVDFjb25kamNOTStqYisyeWlaNGgrY0Fp?=
 =?utf-8?B?WE9lVWJsYzVrT2MzaVVDRXVVR1dBT213Y1Z2Q3pDamUyaXFZUGt3SXhBT2dm?=
 =?utf-8?B?SU80ZlJhWHFlTDhtNFMveDFGTjNzQVV6c1VkbGRqczZHdlY3MzN0dmJJVFNP?=
 =?utf-8?B?SUcrY3pqT3NWc3RhWWtGOHZlcnlvNVZteFBoTHdmR211ZVgvZ0ZRdmlyWHpX?=
 =?utf-8?B?aHI3UEx0QjhLYUpqUVg2QUsvcHVLQ3JrR2dKNG16bzRLNmJ0NDF0ZnpjZ2tI?=
 =?utf-8?B?VXRHMEwzczVtOS9ZNjRiM09LZGJUYkxNU2RQQkxHYkxOT1AxNVFLQTQwaFRj?=
 =?utf-8?B?VUVtRG9ESWlSNGpLSXNsTzhoak1nMW5ZSy9KYlF5R1A4ak5rZDdNSnAxcURW?=
 =?utf-8?B?NHh4UVJVVEdqRFdWMVdmaFMydlVtL2NXZTQvOFpwWmk0dno1d1NQODZHcFkv?=
 =?utf-8?B?ZFVIR0U2aHlFRjBnTUJJSEh2dndyL0RqMldNZWEzTE5kMkI0L3JaQkdwcDND?=
 =?utf-8?B?eC92L0h4bFRoTjNROFpJUWxDWU1YV1o3ZGV6RlpYZ3pMVEdpSjYrYXI2bFAy?=
 =?utf-8?B?ZTVvT1A0SDNsUDRzZkNmTndtM05yTTRyclJaQVQvazNLT3lHSzVld2MwQ3Y0?=
 =?utf-8?B?ZXpWYkk5K21UajdTcGVENEdKZVEra2RqTFp0QXlpY3BYbXlmckdyYTNRWlFv?=
 =?utf-8?B?OTc3NitxUEdZcmVUMUhDUVBnWVplc2dBaW93aWVqb3p3TVV4WktRVEk4QnJ3?=
 =?utf-8?B?ZHFxMFlJZmo2NVh2aGIya0lkVlFmTFNuUFV4dTRTZE9vM25OMjhOWHlwRzQv?=
 =?utf-8?B?M29nM2Q4b1JMM3NWUnZmOWpyNVRaL21SOXFtYVRoWFlNVFNJSHkwazMxbVlH?=
 =?utf-8?B?dGxyTC9XNmZmaUVJcmVRSHZyYnFuSVJRdk5EYjlQM21FVW1lU3VWcktFT2Ra?=
 =?utf-8?B?ZXloYUNreUFsSUpRblVlNHNEMEx4ODNDck1pNkJjSFBvRUpqZEdHeERwam9r?=
 =?utf-8?B?RG80LzZzMTdHKzJOWlhoL0ZUcWJjbXVpblVLcmFtSHBxN2JwRDNMR0dSMlJr?=
 =?utf-8?B?Wm1URG9ONnBMK3NSMWI4S01SUkZXKzJVL0VFVUp1YUp4U2FSZUlQZVNQaTE4?=
 =?utf-8?B?b1BZcmFwMWFlTmd5TUhRRis2akp1TGI1QUl0eHR0OXM2K3orMWVzSDMwY3NG?=
 =?utf-8?B?U25FOE9qYUN4Y3RYZkl4dDFERTl2cFd5SU1QU0tJUWc4RlZXc21sRmNDNzFy?=
 =?utf-8?B?ZDFhYm5PQzZjdWpsb1VlTXVsU2Q3emtNSExJdzd1UTBSM1BWdzRxN2hLbEMy?=
 =?utf-8?B?bTBIaC80Z3pUNDRlOHAxbDZVb3FQWUxxY09TV0NnZGlESG8zNlBQdkNPRHg3?=
 =?utf-8?B?VENTTEVsNU9tekJXY09NTmtoVGlxaTRaYVU4N2hHQndVOUZGUFJRekFER09F?=
 =?utf-8?B?Tk9tR01ZYkQ2ckV5dGk5MHVWd0pVdXVsQzZ6TDI1MmNrcmhEK0x4bHYyRlhD?=
 =?utf-8?B?bTl6VzdNWXR5VmZ6WTZ3Znc2MHlwWTFSMnhHbmR1dHlGN0dPRjRheVh2SjR4?=
 =?utf-8?B?UFBRR1dzd1VoN05FWXU2S1NRWmhyVXBqYUVVUy9HTXRVNksxZWwwVG8xM0pF?=
 =?utf-8?B?Tlpnc0JvOG1NcGg4V0JYNldmWmZqcVF6TmgrbmtqVnJoQSsyMU1FbWJpWUVN?=
 =?utf-8?B?SWJJaXpIUmZZODRBK2xkSGJDaWtLV2Q0SG5ZNG9jVERXUDNsa2lBN1VwNTlC?=
 =?utf-8?B?blhtN2lWc2JTU1dYSGtOSW5CN3ZGSXVpdjBKNCt3ZFJqRHB4aFBETnc3dCtR?=
 =?utf-8?B?a05kUUMzai9oU2xTVHIzbVFHU0I3RlZJRG45RGJhbW4yMWE1dVNxaFRCMjRS?=
 =?utf-8?B?LzYwV1p1V2VMT21BLzhjd2g0R2d2djBOeWNtdEpnd2NOR2ErSUVaM01YbGxF?=
 =?utf-8?B?dkZiL1ZhTzMwVyt6SEM4UGd0aXB4aFpqNXovU2dhUjR2Y042ek8yNHJ5TVdL?=
 =?utf-8?Q?B5kWdmMuVyCjhuIK0MpzTz21CktSd1VvyvHVZJa68wY7b?=
X-MS-Exchange-AntiSpam-MessageData-1: akO65B3YfZZvoA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c7cf037-7053-4a03-8e0e-08de907baad4
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:49:55.6630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6Zkjcyknnf9Vq8FyLq+0OeVszEFokgjU+8SvrWKggq1hj46cp/267IzqfwCq5dWtZB6lkediNsspPYU5ae6Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1394451C7
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
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B94EB384287
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Apr 2, 2026 at 8:24 AM JST, Joel Fernandes wrote:
>
>
> On 4/1/2026 4:27 AM, Eliot Courtney wrote:
>> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
>>> Add first_usable_fb_region() to GspStaticConfigInfo to extract the firs=
t
>>> usable FB region from GSP's fbRegionInfoParams. Usable regions are thos=
e
>>> that are not reserved or protected.
>>>
>>> The extracted region is stored in GetGspStaticInfoReply and exposed as
>>> usable_fb_region field for use by the memory subsystem.
>>>
>>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
>>> ---
>>=20
>> Please see my feedback from v9[1] which still applies.
>>=20
>> [1]: https://lore.kernel.org/all/DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com/
>
> Yeah, I am seeing it now. Amidst making the earlier 7.1 merge window for
> the DRM buddy and earlier patches in the series, I missed this. They seem
> to be simple nits and I will address them in the next revision. thanks,
>
> --
> Joel Fernandes

No worries. Sorry I have not gotten to more of the patches yet. Trying
to get through some more now. Thanks!
