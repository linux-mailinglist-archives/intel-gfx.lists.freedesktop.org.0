Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHnQFdUN1WlQzwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:59:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CFC3AF99E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 15:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876F710E04D;
	Tue,  7 Apr 2026 13:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="tZUwi2vy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012021.outbound.protection.outlook.com [40.107.209.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4188F10E097;
 Tue,  7 Apr 2026 13:59:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wgcD8aC2FUS/FCfxZnhL8byBX19xyN6Ja9VwQE6uAhsO22n9GsDDEP0sLv4gGzZ3irwdx0KHLI1cBzQFjfXLKsKX//fmPk6k/uWkoWV1K8Wfn3AMv67NDXrGBZ/CVXE64jogZjA7IqhYl4XR/aeoLRGmG0kXHtN02bxb6/6hVcyKdeEY5Mnh/+Uy4ej+vI3eo5vf3vLONADhf6XjEhYXpuUdt45wcvleRzeyU/MfaVF4YDUoaaz3r1piUAb1ZTTJFGKM0CbtYFxu6QB8wIKPyhd26E7SYUAImyQ8n6Ph6wTYrIZmyqmXX9S7vcqOOV0ie62xycdBXXn5QsxTBGYJrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3eH2JDB1JX6x28garGCS3KJ+I8MCzO4obhIxG9UYDm0=;
 b=mbmc84lRuyDs4Nsh2BYFS9pgD3HgAD7gKsgcvmxWJibWSCAN/2xGK7/MPXT+cOgPhz4z0BvLss9kUeiYTgKl+lJnEOUSWsur9rjbjEayg9Xz5BGj3NlKcVTrGFGLr6oW/V/GqX/JZqxGpQOVSYIx/FBQFhOrkB16jM/eK6HywMDUMF20qBD5Y0RnVb683LiM9djH7O1bIAjb+jxax8lQJlM+DOpxuKt/nonkB6v92nYUoZ4s7wHE/1p4JnOCAjNMIsH5mvsgeHebX2JGyqP1js7AQ5wcWuiThAbX2jOiOPakteoJDXT1a7VkqB3ORXZ8n+/LZtIKln6ibhoXyH0Cyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3eH2JDB1JX6x28garGCS3KJ+I8MCzO4obhIxG9UYDm0=;
 b=tZUwi2vyqDl24AqqCgOHKFryQs3tS38vyQSzeHquUvmZZTjpwL7r92pAXv/IjUF5MMQFmfpThZYRg6W9SsVSV4hevCSuMvC4Mk+VlTVD0spydYTTtzUyHvkbLl/siviZKf/hqO05dgZ3vpKARYtTixalxmk0WjeQwILtBWtzX94dd8dBP1+Uw7FPBjO4KaYxj/6SyTAK9VD+/JU6eAFCjCk02K4g9RSnvYwlNCG0GUVWMZk7ZMW6BqaygzfV+CNWB8HzLDpce82PihJKZITU4TFbvgKTTyiHv+PNgM2p9NoZKYjlqIKaJwHGvEWhtJTo+7yHNqro2qopxUWS4ivkYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH3PR12MB7524.namprd12.prod.outlook.com (2603:10b6:610:146::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Tue, 7 Apr
 2026 13:59:22 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 7 Apr 2026
 13:59:22 +0000
Message-ID: <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
Date: Tue, 7 Apr 2026 09:59:15 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
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
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CYZPR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:930:a3::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH3PR12MB7524:EE_
X-MS-Office365-Filtering-Correlation-Id: fc126b69-fb05-44dc-b8c7-08de94addec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: Ykyzn6StvSylvMFlzyvaccXJw1M0UZ6hwQO/kfMvIIOxrsv9Eyt2lSL464zIH2o39ajCnlqXOGx/57rGaX/xVAmTW8n2d1eVu5QGubTTZtGWGWITf9M6M/8uPHgLIuJpYQ01XqdDoi4I0DeUG4dIWk2FAfwQRGCR1fGB5C238Ul5aZwX3cam61AQ8XOkANYOt39O7JI2EquLJN/iTuG7vvNdJY1Gd2u5BhXwwHPEheIFJpkZcr4LDHyVN+ILez0JNc7+Gh4vvw8FuTIz5d19rO4067hcJWLBuSHufD+/nWxuXriIFp+2+wTJEc+fXEecrH9NOVash2rvzGn0+R7/S3cgcEwDXamm2Dg+m08FJhdYz0YRDNDEYW8nfo66jznuyJIsOVFjWwsoOgazqNf9z17I4+4mv25rIrLBxLIpcjO8ym+4GZUh5Ju/2BC+8sRAoTPl2m/ONYYSULXkhs0TSI6vFI3e3c8bHbaDcxVugVUI7tQg5SFaEyrIYWZxBjBm3AbBu8VDnPEgD4h9y0yJxiCrwe/ZvqHglWymL5C9gouxsk8piFrnyslmIbkm4bk11nzgnhnh9672EGeb6E/6AFcPa/JhNp2Et91e+jbbYmDJ2ZjgqF9J8Ke8txP0Fhh/hGmSSk7dPuWjetOwYhp0CJTCt3zgWgBDE5McaRVeJh3tXdMTVFW4dnQ8CKwVsIxp/xrTstyMBK/1Er/tqJRN0b+UaV48NmRvuPtr8y0+Q4Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1hyV1NOMnpsSjh1YnFUMXJ0L3Q1ODB0S2pFQ0pxaUV0bzhvaUV6bHhiZld0?=
 =?utf-8?B?eWR4enBkNXZDMFArL1RlSHNiSUxPdHlJc3g3NEozOXlTUVVra3lGQ1JVNGFX?=
 =?utf-8?B?ZGxrRmtiQVV4aUhMclpjaHBlMWRXSjZGbUxYZTA5eStOcFJpK1JEdW1zZ0kx?=
 =?utf-8?B?WHQxVmtyQkpsa0xnSU1VTHdWMExrS3k3YmcvSTA1ZWd1Wm9IWnVpVTlWdThO?=
 =?utf-8?B?R0NzUWZ6ZXJCRDFlYnVjTTFta3BWb1hZMThZL2FFWHp6bVpOTm1udEVXZWxP?=
 =?utf-8?B?QmRwTllEdzdjbjNFSlVFOGg1WmxmbVlaS1RVQTI1dElqa2dUTmNZM0VseU9I?=
 =?utf-8?B?TDE1VEZEbWFmRW8rN3RxakhjYXg4K3kzUUlCNCtiOGpBK3NweDUwTm83ODdK?=
 =?utf-8?B?VDdraytyMzdNbDJ1NjJGWFFLL2VRbFdyczduTlEvQzJnOUVTZ3pXTUtITkdp?=
 =?utf-8?B?bmtrYlYrZHp2ZXNaVG53ZndPVldISjB2OHJLT0xVT3hIWHBwMlk4RlNQM3Uv?=
 =?utf-8?B?S1pTaE1GT04yYnJtbWFKK1Nra25PeXFUNkZheWNGYXZiVC96cUpTSEZjWDR0?=
 =?utf-8?B?UCtoWTBia0RPbTU4OHFsL3ZYelBWak9MUVdKK01OZjV3aStublhPdWRqOWhX?=
 =?utf-8?B?UjVuQkExNXowQVo0Q0ZkQTg4S28xbE9JcFIzb3QycWlnWW9sL1FlQ1ZUdjZB?=
 =?utf-8?B?Z2VmVG5nV3RoTTNsOUQvcXpWTHNLUXNYeVI4Mmp1N3Flclc0TGprZWRaMVRJ?=
 =?utf-8?B?eTRIbHdGeGFMWXNaNmlUVEdqVDZBejdTejRkbm9lckpJb3ZIa0RiTTZJK2Zv?=
 =?utf-8?B?Lzk2YnlQN1llU2h5NzYxYzdveHZxY2RuZkZOREF2aCtvZko3VnBZNzMyd1Vj?=
 =?utf-8?B?SmlWVUw2YlJ1V3VaZ3VVYWVWYzJZRldLMVBYYkMrNzFnRWpZVUFjWHRlTmJs?=
 =?utf-8?B?ZzBaSHBZcGJsNE9PamRwa0ZKVWlQak1CMzJoYVdNZnljMzhZa0ZFRlVyMkxZ?=
 =?utf-8?B?djhoSjhOeTJuaG9hOEZ6cUpCMmRwenhWR3J0QithVmJVRzRvVWp4VGQybXFL?=
 =?utf-8?B?ZHg2M1kzbkRmdTZydURkQ0VxNW92VzZyQlo1aE8vQkRDOGdvZzJJQ3FrMjAr?=
 =?utf-8?B?ZS9TTFJHUDF5dDVpOWdPcEozMTlvU3pIeklicVA4c091eVpFVi8xT0VoU0RL?=
 =?utf-8?B?U21ra3p0eE9kSE9FV1RuS2NEald1UHpKNG9RNXBjZHNOU3RWMTFaT3hBWk5X?=
 =?utf-8?B?ZG11VHlzMmNwN2htMjY0Ky9xRjFTZXhGMFAyVU1xTjJvRlRvL1l5Uyt1Mi9T?=
 =?utf-8?B?aE8yblYzTHJQdHBtYllkWHM3am5qY0N0aW9meituOUV6alpIWUJkaHRpekJU?=
 =?utf-8?B?NWxRWjBhd3B4cEJkMzlZVzdhRS94TjBHZnFlZXNyL0pCWFJDRGQvUEExbVZa?=
 =?utf-8?B?ckpoT1hOamw4cHk5VHptdWdyaUpUREtQU2plRm5XMng3VXlkMGJaV3ZwbGd2?=
 =?utf-8?B?ZGFrV1E3VllMMUJkcUZMZVRrVjlGRytxS3RHL0E2OW1UMHVzMnI0bFdmOERX?=
 =?utf-8?B?WHBIMWp3a1B5dlU2TlhaVE8wRTBLRDdtZ05kamRmZnYvRFdJQXFXc3FtaUgy?=
 =?utf-8?B?d3dMTzdkSkRNSEJQMWdwTEFRZXRGS2pMaE92RHlwcHBGVitXT3YrL2ErVmdu?=
 =?utf-8?B?WFlnQnJ4d2xZeEttOGZyZXFYS0xneGdKUlBlUm5BYTUrVFlwVEJ2ZmQ2aFBJ?=
 =?utf-8?B?YW1MMUZTY0F4SmZFb1JQcFFFbzZWam10QkJlUlZBRkQ2bm9SMUUvVFFEaVNR?=
 =?utf-8?B?MFJWZTFGK1hERm9EQlNyUmJmc29xRkhHWFRiMEs3cnlFN3lDTi92UkRqQ2VG?=
 =?utf-8?B?d3ZLajVHY3MwUVE5TVl0RkprRkVQczhsclZvZnJBV3NMZ3I1UkZsdnZsdFJq?=
 =?utf-8?B?MDV5UDBHdjhZQWRlbUppSEtlSzFOUmVpWk1TQ3YxcEI1eG1NN25jWVJ0V3Bl?=
 =?utf-8?B?U0ZrUXdUeFJiTDVNMmtwUEcvSWs2SHY0TS9lTWVkczlpUkVEVUR5VmtKalZ3?=
 =?utf-8?B?VStoMHFTRmxyeXAxMVRMYmpKMWxDbHVocEZkWFdvdzhlRnBQOFR5ZWRnTHR3?=
 =?utf-8?B?UTdoR0FpL3NNV2lwUnB3YVNSTUgybjJ2ZkFGOXlqM1R3cDZMTFlWbk8wbHl5?=
 =?utf-8?B?L1ZHYndXd1lOY0QrZjBqenIrNXNpc0E4a1FvMXd0NUI0VHMycStVSEVrK25S?=
 =?utf-8?B?V21yZzlqQ2RrdTRBMXMvVTd6R1MwclVxUjZtVWZUZVBLRkR0UXJ3dmdyN3ZY?=
 =?utf-8?B?cG51WTc3bSs0SzRPbjQrRVZuS1F3bUV4dzVFVGgvK2pwWEV0c0RXQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc126b69-fb05-44dc-b8c7-08de94addec7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 13:59:22.3879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LBI7pWFN86Fx5T4xnmUmkB80PqqoQoEdl5iUorHFTvwVSOyClCVLO9ferefXqr586uYaIlpr1W3NMk94smplKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7524
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,Nvidia.com:dkim,pagetable.rs:url]
X-Rspamd-Queue-Id: 07CFC3AF99E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Eliot,

On 4/7/2026 9:42 AM, Eliot Courtney wrote:
> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
>>>> +    /// Compute upper bound on page table pages needed for `num_virt_pages`.
>>>> +    ///
>>>> +    /// Walks from PTE level up through PDE levels, accumulating the tree.
>>>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> usize {
>>>> +        let mut total = 0;
>>>> +
>>>> +        // PTE pages at the leaf level.
>>>> +        let pte_epp = self.entries_per_page(self.pte_level());
>>>> +        let mut pages_at_level = num_virt_pages.div_ceil(pte_epp);
>>>> +        total += pages_at_level;
>>>> +
>>>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>>>> +        for &level in self.pde_levels().iter().rev() {
>>>> +            let epp = self.entries_per_page(level);
>>>> +
>>>> +            // How many pages at this level do we need to point to
>>>> +            // the previous pages_at_level?
>>>> +            pages_at_level = pages_at_level.div_ceil(epp);
>>>> +            total += pages_at_level;
>>>> +        }
>>>> +
>>>> +        total
>>>> +    }
>>>> +}
>>>> +
>>>
>>> We have a lot of matches on the MMU version here (and below in Pte, Pde,
>>> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
>>> associated types for Pte, Pde, DualPde which can implement traits
>>> defining their common operations too?
>>
>> I coded this up and it did not look pretty, there's not much LOC savings and the
>> code becomes harder to read because of parametrization of several functions. Also:
> 
> Thanks for looking into it. Sorry to be a bother, but would you have a
> branch around with the code? I'm curious what didn't look good about it.

Sorry but I already mentioned that above, the parameterizing of dozens of
function call sites, 3-4 new traits (because each struct like
Pte/Pde/DualPde etc each need their own trait which different MMU versions
implement) etc. The code because hard to read and readability is the top
critical criteria for me - I am personally strictly against "Lets use shiny
features in language at the cost of making code unreadable". Because that
translates into bugs and nightmare for maintainability.

I don't have the code at the moment, but if you still want to spend on time
on this direction, feel free to share a tree. I am happy to take a look.
>>> Then you can parameterise Vmm/PtWalk on this type.
>>
>> The match still to be done somewhere, so you end up matching on chipset to call
>> the correct parametrized functions versus just passing in the parameter or
>> chipset down, in some cases.
>>
>> For now I am inclined to leave it as is. Also there's a Rust pitfall we all
>> learnt during the turing and other patch reviews, sometimes doing a bunch of
>> matches is good especially if the number of variants are expected to be fixed
>> (in the mm case, version 2 and version 3). Traits have some disadvantages too,
>> example dyn traits have to heap-allocated, parametrizing can increase code size
>> (due to monomorphization) etc.
> 
> Yeah, it's just this is a lot of matches in a lot of places. And we have
> ver2 / ver3 specific code leaking into the general pagetable.rs file. So

That's not a leak, that's by design. pagetable.rs is where the matches are
centralized, most of the code changes here on out should happen outside of
this file.

31 out of 42 matches in the mm code are in pagetable.rs, so it is already
centralized.

> it would be really nice if we could find a way to improve this specific
> aspect. We can reduce the match to happening in just one file. 

Assuming we know what we're improving. ;-)

> You can> avoid heap allocation if you would like by making Vmm an enum,
> for example, and doing the match based dispatch there at the top of the
> API tree, rather than at the bottom where it fans out into a lot more
> locations.

heap allocation is not always free, this code sensitive to dynamic
allocations in the kernel, due to MM reclaim and locking. I would like to
keep it simple.

thanks,

--
Joel Fernandes

