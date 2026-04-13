Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HlgfJcpN3WmqcAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:10:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86503F3043
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B10610E52B;
	Mon, 13 Apr 2026 20:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="D1OfcZNR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011051.outbound.protection.outlook.com [52.101.62.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6117A10E528;
 Mon, 13 Apr 2026 20:10:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YxGbRbKkepptTzF8s51tl7/ts5RCI+9cq1jBnQAkjcrRjHfxHfHhvMwFFtRTT/L090pefbkFMk6bO5VHq9E/MHFL0JF7ID3fI0An/RBKmMFhFvMiLPLPOU5iA0XVIYldn5kn/T4c6eE0yCtzVMNG37HFaSP9eCsBQ8sWMX+SZexLApx0N0Pn4CQIjODGVaFpprJN9OHOSBeFOpo0V1oYiBmT1sR2QRsg7wV34nkgufwmq38BJdugHYZNYdtB9aFhqjRxgNeZXVT68uc0wXp+bSfXo7AEGwEW1c7teUe4kgalNbT7JKmYe8cKdrv6N+yUe340cWvMIFQ330dbV1Iepw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utXVvTSem4YqmwMMwudr5Zvbl/wHfjosBOX7tuCJ31s=;
 b=oweYNegmZZO/AEi08IV6/AuRBwupwuVy+SpxtNEu18XjbOrvEY+/epmF8tqwRaiH66nTXEM1kj+lCJ6K0F9zkuP09maSjdw3J/jIcBW7OOEjxJ0iKL52Q/3EaGU6YuYnos/iYkldFO1UrEwa4OW2bkleBY2nAzGZCviztkNMVOW+DSnrqaZa58kC61KoVnKzKJDM82DCVgt3qbMhgjqG1q79vBdoYdu4kblGzKxd+6V2K+/kg34iksYxDdaU5V9Q6Kewn/H1djjDhv7S2kb6THzM+trASNBz8lKeSv0rkcEJQOqfQcywaO8L16M0IG3SNfqchRxvVvrcC/QR5/2RHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utXVvTSem4YqmwMMwudr5Zvbl/wHfjosBOX7tuCJ31s=;
 b=D1OfcZNRdEYjMXQNXmqpS8wznFxyaLuWKHKK8iQd3pyZWprDks3PIx7B3SFR24sIxmxS6MUD0Sh4k5mp5q6ihB8ZUe64xcuKEAR0zWAyBeM/hrqZlV8e/OvWeU13MgCDJBrpGPNnLpq/4I3gR5bjGYyMF8PcC9czoN8FZn4hmmO0uN+nQLlCeARRMcIL4hJHZXAljjEEwAEuJ3VPscoUsFNSvqksUuV+ESGlE/L5PBC28CP0745bEcRVD//RQY2XtHNSt7yFmwm044IzKW0s3HVX/0r55/NpCMda6rTBmMPrZOvDjANIcukLZWk/6mBnWfzEUCXg71kNcDjDGiqEHg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DM4PR12MB6327.namprd12.prod.outlook.com (2603:10b6:8:a2::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Mon, 13 Apr 2026 20:10:38 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 13 Apr 2026
 20:10:38 +0000
Message-ID: <acd38f51-3acc-4dbf-9929-50187dccec82@nvidia.com>
Date: Mon, 13 Apr 2026 16:10:31 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Danilo Krummrich <dakr@kernel.org>
Cc: John Hubbard <jhubbard@nvidia.com>, Eliot Courtney
 <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
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
 Vivi Rodrigo <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Alexey Ivanov <alexeyi@nvidia.com>,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
 <1775730646.3752.4760@nvidia.com> <DHOKLTRRIX2Z.1YA9X0D0X21K@kernel.org>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHOKLTRRIX2Z.1YA9X0D0X21K@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR18CA0025.namprd18.prod.outlook.com
 (2603:10b6:208:23c::30) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DM4PR12MB6327:EE_
X-MS-Office365-Filtering-Correlation-Id: ecc68130-b253-4cb6-c747-08de9998baa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 9MLqx2xC1V5T00zhkJKpbTS24Yf9uemzBq7E982QM9voOrxPt4AfwJzql86gCUt3CRH+v8Y17/NQfJeuhM2mTDgtSSwaBtoIB2GJYZ4F5OzoPm/AKDiOktfARxPlKsZ9KSIjR7fsMqPyKoUVjogK7fOzn88MkvFsDOHgFmtVvpZIvJj9H93CbRSsrtspRCJ5WhArlPPsxU9oSP8+GQTzjyglXZw1xsIUHS/sSStcX0sf8hOYghsufpTpQaS7H8C5+c2iV0AcRRoJlyAGRHPS6SIMFG9eZqVBO7E9Hh94mif2NXYdgyuL9TAacLq2uN9lIzljvQcjKaMkPdtfjQywdbQkenlT1q4fmnvmTG656hCD+GWUhFP+1NrpcL43mT3x1QaE6HRUe41vMSU6NWwXElJS2WD+ZCFPbZ1m/5IKdRaCt/5FulBfpvrAeCEEviK+eC7mYO2HiqvzyQmOh4S2oM/rHxYVBnkOZD4JEzvxaeA1Gy79JnURN4Hvp4R9bP2PZdjeW96AL1P6DhTPX3YFVYtGm1du7GbkBgKwFHHoVrvVDqzs5l8oQDSF4XANucBFebTUheBSr+qDH+5LE9du6YtPrApwqVyr6/ek7aFCVel0jSt//gXYkStKv0iBshapb548dGemNW4ZcJVW7YI+mqE8ykMYoERzrVM0/zFu2/IzZsmjruCq870QW8wouYoj/tpUx2MqYY1o239HR99pR39cv/Cm4nY3uQ+Q1WB1Pi4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWRzdm1QYWlDbkh4ZngwbHd3c1cvQ3NySGZpY2hRZnM5NzZvQkZBam9vRGRF?=
 =?utf-8?B?RzJRMlZZakRNaHZidkpMQk5VbSszMmplRTFrUlhWbFFaUWhQcFJERGIzVVEy?=
 =?utf-8?B?Zk1HUjBHdmNXYmhJM3MzUHF5OVJUZlJTNjVvQ1VuWlZiRWg4V2x1NTdkWHpr?=
 =?utf-8?B?ZjJWN1dFeFgzSyt0ekxVc3FBaVZkdmxHMGdYQUZwMWtWUGI0cHkyYjZsWE9C?=
 =?utf-8?B?by9VSkhaT1U5b1JaaXhEcE1qeWZoM2ZhMWpHS05RY0VpVEVnUkx0cTA1N2Ro?=
 =?utf-8?B?ajNvUThFVHNEVUJWYzJXNXVWT0dnWVlQZnJPajVjQUJJT05NQzIzeWtWdmdy?=
 =?utf-8?B?UGhVTndWNFhyNWtob0l5OThzc3JLR0htc3dGbzN2ZmdTTG1MUng3Zmt6ZTR5?=
 =?utf-8?B?VFBCdWZnTXdxd2NRQ3diWVE0QkFJV1d6NFJ3ak1rN1NkQm1qTDhEcm94dDEr?=
 =?utf-8?B?SC9SaHozaEtmVk1aWVA5UEdCWVhYNFROOGIxczk0ZUlyckxESDl6eGg1VWNN?=
 =?utf-8?B?QmJ1eUJ0VGw2YW5jRU5KWXcvSGxGQXN5NURvRkhwMTdJemd2MmlGOEpobjJ1?=
 =?utf-8?B?c1EyY2JkeFBQWG54dllpb0RuZzJWc0c1UkVLT0NpU3JEalhJeWNabzYzQVBi?=
 =?utf-8?B?R3pRbXVVVzZkUy9xVjdqb1djazM2bkluS3krQWJ6Y05Rd3JPY1lSV1QxN0FH?=
 =?utf-8?B?YVZ0NjFlek1DcGYzdGh6NTM1emNxcmVzSXl0d0hjeUVBK0dsalJteDVSeDRh?=
 =?utf-8?B?bDVXZTFRbFAxaXZVUDNCL2xNaEN3UGozb3BxOHBDT2poai9zTkRoWDRUNlJp?=
 =?utf-8?B?SVdGa1ZDRERlajNnNWhPQVJ2ZzZIZ0dHUUE4dUZUR2ZJamdEdTBHRkxDcytv?=
 =?utf-8?B?cTY0Zk03bWc5ZFVGZmxyNTVDeWljSFdYcXVXa3RDWTdsUE92R2lOVzgydXRx?=
 =?utf-8?B?azc2NFhXWU53MHB2S0NnTm5UTWIzb2Y0OWl3STF3SnB1SEF4aFpOYkVHNTY3?=
 =?utf-8?B?RG4zeURUbXdjTElrR0Q2WC9GV2NTenJXSndLYUlNOFZXV1ZqNUhzbTl4TUVs?=
 =?utf-8?B?SGxnNWIzRlhOYWhYOWtWa2xQb29yT3prUHJHYlBjT1AzOXZFcy8ydzIvdm0x?=
 =?utf-8?B?VjFFWGJwVEZtVks1dlpLMG5RRDBubHVpbjNOWjVsMjhucmZJTDJjZHhoYzFr?=
 =?utf-8?B?eWJGSDRWck5hMGtFNTJuL21nbUJNRmV2UWdSbFNJV1VKOVhvT0JuVEo1c3Rj?=
 =?utf-8?B?NnF1SHd2MFE3Y0tia0srNks0K0FjVlU5bWxRTEQ0aXRSSExpUTJmSUdHK1VK?=
 =?utf-8?B?clBRdkd5L0tFa2EyUHdQYloxejd1RnpkZnNwQzFRY3I1UW1kWXQ5czYyRVFO?=
 =?utf-8?B?ZFJZR0hvY1g0eTVxSVVZSkVjNmdYS0RCMDljMnl1NTdkVytzYzluVVlmMjZt?=
 =?utf-8?B?bElITE1hUk82R2paS1VsamtjbnFFYnIyb0N4Z3JOMXdrdkpBUjhtcDFyWndh?=
 =?utf-8?B?RU9aSnJrSU0wcDcxN2F0QXhHdGFxSzIrY1I5Z2tCRDA1bU0rMjEycG5aT2lZ?=
 =?utf-8?B?OTlIZ2FlQnJ6T05mTm9sMUljYkJaMThCMnE3aVVUclYyaTEyejZRWmxhTDhD?=
 =?utf-8?B?RDI3TU8vUnJ2eHBwTTVvamJuRW5mM1Y4VkNmK0tIN0xyeHU0a2JDSy9ZSk1G?=
 =?utf-8?B?b3BtOFU5V1FxdjFMajFxRHFublVOTDl6V2JyYmVhVElFcHBBb3h0cFRrNFNJ?=
 =?utf-8?B?WllPaVdGSEloL2FIc0hPNDE3ZkFTNUJOTGpEQjI5RjJtMXBVblNwSGJrbGZw?=
 =?utf-8?B?RkNCNVcvc0gwQVJGdU02TlgzZFZrek1ubHdPbE9oSWQvd0dqdklxT2lLdWxM?=
 =?utf-8?B?VlgrUU9TNEp2bnBSbk1KTUFTbXFSVFdXbVJtelVoWUc5bjJ4WXR4ZTdNZlZl?=
 =?utf-8?B?eEErVFpDQ2hseDdkSUpvNUlmRXlYUnVycTdRUSs3c3lZSXNGK2ZtQTRFWjBP?=
 =?utf-8?B?anhlYkU4OUt3V1Z1RWEweUs4OGsxUkliakJURStoQXJEbE94aVZtOWxvRzBG?=
 =?utf-8?B?NHBmYTluTUl3MUtiOTF6Vmt2NGppV2pmQmlsdDh2eXFrajJ6MUJPTHJQRmJo?=
 =?utf-8?B?NlU1L2J1Zm0yUHpJcm8yVmZLYTZ6eTJENTRjd0h6ckZaUm1MVE1udTNmQVI1?=
 =?utf-8?B?RmswN1Z6Q2dFZEZHaVNZVWtFVTBQRnFZYzNMN1E1UmwxZjNPQ1FiQ1d2enBj?=
 =?utf-8?B?Z0R5dFZIblM1Z0ZTbW9YVEdoOWIrMStKbENZQVZab1B1RjJPVlJoSlNtUHVr?=
 =?utf-8?B?b3FESjJiY1h3YTFvdlhsQndyRW9kMDVrRFoydDJTaEs3a0piSHBJUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc68130-b253-4cb6-c747-08de9998baa7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 20:10:38.1166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NzMqN5pQRKmJ83NUtlqmIA+D1RHhZqs3SX05KWh11VfvDSXoYlaPY0jVAvFnruwuOCbB43tADUMayCTgZJJIyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6327
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
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid]
X-Rspamd-Queue-Id: E86503F3043
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Danilo,

On 4/9/2026 7:00 AM, Danilo Krummrich wrote:
> On Thu Apr 9, 2026 at 12:33 PM CEST, Joel Fernandes wrote:
>> Since it is 3 against 1 here, I rest my case :-).
> 
> That's not how I'd view it. :)
> 
> Anyways, in case I'm included in "3", that's not my position. My point was to
> ensure we keep discussing advantages and disadvantages on their merits, as I
> think you both have good points.

Heh, yes I actually *did not* include you in the 3 since you sounded to be open
to both. ;-)

> 
>> I am still in disagreement since I do not see much benefit (that is why I said
>> pointless above).
> 
> That is fair -- in this case please explain why the advantages pointed out by
> others are not worth it, propose something that picks up the best of both
> worlds, etc.
> 
> You can also turn it around and ask people whether they can tweak their counter
> proposal to get rid of specific parts you dislike for a reason.
> 
> IOW, keep the ball rolling, so we can come up with the best possible solution.

Good advice, thanks! I will try to come up with something that is acceptable to
everyone and we can further debate pros/cons on v11.

There are some merits on the alternative proposal from Eliot/Alex that I'd like
to explore while seeing if I can keep some of the merits in mine as well.

thanks,

-- 
Joel Fernandes

